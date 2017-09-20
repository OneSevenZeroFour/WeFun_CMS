/*
	列表页JS
 */
require(['config'],function(){
	require(['jquery','text!head','text!foot','location','common'],function($,head,foot,lct){
		$('header').html(head);
		lct.getCityName($("#location")[0]);

		require(['headers'],function(){

		//加载数据
		var pageNo = 1;
		var qty = 12;
		var pageLast;
		var length;
		var goodslist = $('.goodsList');

		function creatgoods(){
			$.ajax({
				url:'./api/list.php',
				data:{pageNo:pageNo,qty:qty},

				// 设定返回数据类型
				dataType:'json',

				success:function(res){//console.log(pageNo);
					length = Math.ceil(res.total/qty);
					//利用数据生成html
					var ul = $('<ul/>');

					var html = res.data.map(function(item){
						return `
							<li data-guid='${item.id}'>
								<div class='list-con'>
									<div class='goods-box'>
										<div class='goods-pic'>
											<a href="./html/details.html?id=${item.id}">
												<img src="${item.imgurl}" alt="" class='onloadingBg lazy'/>
											</a>
										</div>
										<div class='goods-info'>
											<p>${item.title}</p>
											<p><a href="">${item.description}</a></p>
										</div>
									</div>
									<div class='price-box clearfix'>
										<span class='price fl'>
											<i>￥</i>
											<em>${item.price}</em>
										</span>
										<span class='buyBtn'><a href=""></a></span>

									</div>
								</div>
							</li>
						`
					})

					ul.html(html);

					//ul写入页面
					goodslist.append(ul);
					pageNo++;
				}
			})
		}
		creatgoods();

		//实现懒加载
		$(window).on('scroll',function(){

			var scrollTop = $(this).scrollTop();

			if(pageNo>length){
				return
			}


			// console.log(scrollTop,document.documentElement.scrollHeight-window.innerHeight)
			if(scrollTop==document.documentElement.scrollHeight-window.innerHeight&& pageNo!=pageLast){

				creatgoods();

				pageLast = pageNo;
			}
		})

		$('footer').html(foot);


		var arr_historys = [];
		var cookies = Cookie.get('history');

		//若cookie存在则写入arr_historys
		//不存在则赋值空数组
		// var cartList = [];
		if(cookies.length>0){
			 arr_historys= JSON.parse(cookies);
		}

		//点击商品传入商品id
		$('.goodsList').on('click','li',function(){
			//获取当前li的id
			var currentId = this.dataset.guid;//console.log($(this).find('.goods-info')[0].children[0].innerText);
			location.href='./html/details.html?id='+currentId;
			var guid = this.getAttribute('data-guid');
			var imgurl = $(this).find('img')[0].src;
			var title = $(this).find('.goods-info')[0].children[0].innerText;
			var price = $(this).find('em')[0].innerText;
			console.log(price,title);
			for(var i=0;i<arr_historys.length;i++){
					if(arr_historys[i].guid === guid){
						arr_historys[i].qty++;
						break;
					}
			}
			if(i===arr_historys.length){
				//数据存入cookie
				var history = {
	                    guid:guid,
	                    imgurl:imgurl,
	                    title:title,
	                    price:price,
	                    qty:1
	            }
	            arr_historys.unshift(history);
			}


         console.log(arr_historys);
         document.cookie = 'history=' + JSON.stringify(arr_historys) +'; path=/';
		})
		})




	})
})
