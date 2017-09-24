	/*
		详情页js
	 */
	require(['config'],function(){
		require(['jquery','headers','gdszoom','common','text!foot'],function($,gdszoom,foot){
			$('header').load('html/header.html #hd .hdtopbg');
			$('.nav').load('html/header.html #hd .navbox');
		
			
				//确认加载完成
				require(['headers'],function(){
					console.log(document.querySelector('.navlist'));
				})
				
			$('footer').load('html/footer.html');
			//通过url获取商品id
			var params=location.search.slice(1).split('&');
			var goodsid;
				params.forEach(function(item){
					var arr=item.split('=');
					if(arr[0]=='id'){
						goodsid=arr[1];
					}
				});
				//console.log(goodsid);
				var totalqty=0;
				//获取history Cookie
				var cookies = Cookie.get('history');
				//若cookie存在则写入cartList
				//不存在则赋值空数组
				var historyList = [];
				if(cookies.length>0){
					 historyList= JSON.parse(cookies);
				}

				var arr_goodlist = [];
				var cookies = Cookie.get('cartlist');

				//若cookie存在则写入arr_goodlist
				//不存在则赋值空数组
				// var arr_goodlist = [];
				if(cookies.length>0){
					 arr_goodlist= JSON.parse(cookies);
				}

				var data;
				//向后端请求数据
				$.ajax({
					url:'./api/details.php',
					data:{goodsId:goodsid},
					dataType:'json',

					success:function(res){//console.log(res);
						data=res;//console.log(data);
						$('.goodsname').text(res[0].title);
						
						var img1 = document.querySelector('#imgzoom');
						img1.src=res[0].imgurl;
						$(img1).attr('data-big',res[0].imgurl);
						

						$('.listImg li').hover(function(){
							$(this).addClass('chosed').siblings().removeClass('chosed');

							//更换图片
							img1.src=this.children[0].src;
							$(img1).attr('data-big',img1.src);
							// $('.gds-bigzoom').children[0].src=this.children[0].src;
							var gdsbigzoom = document.querySelector('.gds-bigzoom');
							gdsbigzoom.children[0].src=img1.src;
						})

						
						//img1.data-big="img/car.jpg"
						$('.jqzoom').append($(img1));
						//放大镜效果
						$('.jqzoom').gdsZoom();

						$('#name').children('h1').text(res[0].title);
						$('.p_price').html('￥'+res[0].price);

						//把数据存入cookie

						var list1 = document.querySelector('.list1');
						// //获取history Cookie
						// var cookies = Cookie.get('history');
						// //若cookie存在则写入cartList
						// //不存在则赋值空数组
						// var historyList = [];
						// if(cookies.length>0){
						// 	 historyList= JSON.parse(cookies);
						// }
						//console.log(historyList);
						list1.innerHTML = historyList.map(function(item){
							return `
								<li data-guid='${item.guid}'>
									<a href=""><img src="${item.imgurl}" alt="" /></a>
									<div class='descript'>
										<p><a href="">${item.title}</a></p>
										<p class='price'>￥${item.price}</p>
									</div>
								</li>
							`
						}).join('');
						

						$('.historys').append($(list1));
					}
				})

				var qty = 1;
				//点击按钮数量加减
				$('.computing_act').on('click','input',function(){
					if($(this).hasClass('add')){
						
						qty++;
						
						console.log(qty)
					}
					if($(this).hasClass('reduce')){
							qty--;
						if(qty<=0){
							qty=1;
						}	

					}
					$('#txtqyt').val(qty);
				})
				var closeff = $('.closeff');//console.log(closeff);
				//点击按钮添加至购物车
				$('#jCarbtn1').on('click',function(){
					$('#easyDialogBox').show();

					//把当前商品存入cookie
					var curentId = data[0].id;
					var imgurl = data[0].imgurl;
					var title = data[0].title;
					var description = data[0].description;
					var price = data[0].price;
					var goodsqty = qty;


					for(var i=0;i<arr_goodlist.length;i++){
						if(arr_goodlist[i].guid === curentId){
							arr_goodlist[i].qty+=goodsqty;
							break;
						}
						var totalqty = arr_goodlist[i].qty;
						
					}
					if(i===arr_goodlist.length){
						//数据存入cookie
						var goods = {
			                    guid:curentId,
			                    imgurl:imgurl,       
			                    title:title,       
			                    price:price,
			                    description:description,       
			                    qty:goodsqty
			            }
			            arr_goodlist.unshift(goods);
			           
					}
					
		         
		         console.log(arr_goodlist);
		         document.cookie = 'cartlist=' + JSON.stringify(arr_goodlist) +'; path=/'; 	
				})

				//操作弹出框
				//点击关闭按钮
				$('#goshopping').on('click',function(){
					$('#easyDialogBox').hide();
				});
				closeff.on('click',function(){
					$('#easyDialogBox').hide();
				})
				
				//购物车生成结构

				//先判断购物车是否为空
				console.log(arr_goodlist);
				if(arr_goodlist.length===0){
						$('#shoppingCarcontainer').html(
							`
							<div class='prompt'>
								<div class='nogoods'>
									<i class="sprite-icon icon-redcart"></i>
									<span class="NoProducts-words">您的购物车是空的,去挑选喜欢的商品吧!</span>
								</div>
							</div>
							`
						)
				}else {
						var listqtys = 0;
						var total = 0;
						var html=arr_goodlist.map(function(item){
									listqtys +=item.qty;
									total += item.qty*item.price;
							return `                                                                                                              
	                                <ul>                                                            
	                                       <li class="clearfix">    
	                                        <div class="mcart-p-box clearfix">  
	                                            <div class="mcart-p-img"><a href="3"  class="stats" ><img src="${item.imgurl}" ></a></div>
	                                            <div class="mcart-p-name"><a href="#"  class="stats" >${item.title}</a></div>
	                                            <div class="mcart-p-detail">          
	                                                <span class="mcart-p-price"><strong>￥${item.price}</strong>×${item.qty}</span><br>
	                                                <a class="delete" href="javascript:;" target="_self" id="deleteItem_35363878_154623_1"></a>
	                                            </div> 
	                                        </div>  
	                                    </li>
	                                                  
	                                </ul>                                                                                             
							`
						}).join('');
						$('.smc').html(html);	
						$('.listqtys').text(listqtys);
						$('#cartListCount').text(listqtys);
						$('.totals').text(total);
				};
				
				$('.shopcart').hover(function(){
						$('#shoppingCarcontainer').show();
				},function(){
					$('#shoppingCarcontainer').hide();
				});
				console.log(333);
				//商品详细介绍页面
				// $('.maijia').on('click',function(){
				// 	// console.log(222)
				// 	console.log(2323)
				// 	var p=window.location.search.slice(1).split('&');
				// 	var xianid;
				// 	p.forEach(function(item){
				// 		var arr=item.split('=');
				// 		if(arr[0]='id'){
				// 			xianid=arr[1];
				// 		}
				// 	})
				// 	console.log(xianid)
				// 	window.location.href="../src/ueditor-1.4.3.3/_examples/completeDemo.html?id="+xianid;
				// })
				var p=window.location.search.slice(1).split('&');
					var xianid;
					p.forEach(function(item){
						var arr=item.split('=');
						if(arr[0]='id'){
							xianid=arr[1];
						}
					})
					console.log($('.conTopConBox'))

					
				//修改商品价格和图片
				$.ajax({
					url: 'http://localhost:1111/jia',
					type: 'post',
					data: {id:xianid},
					success:function(data){
						var a=JSON.parse(data).results;
						// console.log(a)
						$('.jqzoom').find('img').html(a.map(function(item){
							return `<img src="${item.imgurl}"></img>`
						}).join(''))
						$('.conTopConBox').html(a.map(function(item){
							// console.log(item.title)
							return  `<div id='name'>
						<h1>${item.title}</h1>
					</div>
					<div class='fahuo-cang'>
						<i></i>母婴之家发货
					</div>
					<div class='clearfix'>
						<ul id='summary' class='clearfix'>
							<li class='summary_price'>
								<div class='sx_dt pdt5'>促 销 价</div>
								<span class='p_price'>${item.price}</span>
							</li>
							<li class='bdbtm clearfix'></li>
							<li class='choose clearfix'>
								<div class='sx_dt'>规&nbsp;&nbsp;&nbsp;&nbsp;格</div>
								<div class='sx_dd'>
									<ul class='size_num'>
										<li class='select'><a href="">3条装</a></li>
									</ul>
								</div>
							</li>
							<li class='choose clearfix and'>
								<div class="sx_dt">颜&nbsp;&nbsp;&nbsp;&nbsp;色</div>
								<div class="sx_dd">
	                                    <ul class="size_num" id="color_choose"><li class="select"><a data-type="color" href="javascript:;" target="_self">随机</a></li></ul>
	                                </div>
							</li>

							<li id="choose-amount" class="i_buy_div clearfix">
	                            <div class="sx_dt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
	                            <div class="sx_dd pdt10 clearfix">
	                                <div class="choose_num_ul">
	                                    <div class="computing_num">

	                                        <input type="text" value="1" maxlength="2" id="txtqyt">
	                                    </div>
	                                    <div class="computing_act">

	                                        <input type="button" class="add" id="plus">
	                                        <input type="button" class="reduce" id="minus">
	                                    </div>
	                                </div>
	                                <div class="shopping_div clearfix">
	                                        <a class="shopping_car" data-position="item_Cart" id="jCarbtn1"></a>
	                                </div>
	                                <div class="phonebuydiv">
	                                    <div id="phonebuy"></div>
	                                    <div id="m-qrcode" class="hide">
	                                            <img src="http://img.muyingzhijia.com/img/201701/20170109174050_9_xqy-160x200.png" alt="二维码" style="display:block;">
	                                    </div>
	                                </div>
	                            </div>
	                        </li>

							<li class='notice'>
	                            说明：
	                             <span >
	                                        <img src="http://static.boodoll.cn/app/v1/icons/g_success.png" style="width:14px; height:14px; display:inline-block; margin-right:3px; vertical-align: -2px;">出库15天内可退货
	                             </span>       
	                        </li>
						</ul>
					</div>`
					
						}).join(''))
					}
				})
				//修改商品详情
				$.ajax({
						url: 'http://localhost:1111/jia',
						type: 'post',
						data: {id:xianid},
						success:function(data){
							var a=JSON.parse(data).results;
							// console.log(a)
							$('.picshow').html(a.map(function(item){
								if(item.xianqin){
									return `<div>${item.xianqin}</div>`
								}else if(item.xianqin<0){
									return `<p><img src="./img/img01.jpg" alt=""></p>
											<p><img src="./img/img02.jpg" alt=""></p>
											<p><img src="./img/img03.jpg" alt=""></p>`
								}else if(data===[]){
									return `<p><img src="./img/img01.jpg" alt=""></p>
											<p><img src="./img/img02.jpg" alt=""></p>
											<p><img src="./img/img03.jpg" alt=""></p>`
								}
								
							}).join(''))
								// $('.picshow').html(data)
						}
					})
		})
	})