/*
	首页js
 */
require(['config'],function(){
	require(['jquery','text!head','headers','jacklunbo','text!foot','location','common'],function($,head,headers,jacklunbo,foot,lct){
		$('header').html(head);
		lct.getCityName($("#location")[0])



		//轮播图
		$('.banner').JackCarousel({
				imgs:['img/banner01.jpg','img/banner02.jpg','img/banner03.jpg'],
				width:1090,
				height:350,
				page:true,
				autoPlay:true,
				buttons:false,
				type:'horizontal'
			})

		//special商品数据请求
		var sgoodlist = $('.sgoodlist');
		$.ajax({
			url:'./api/sgoods.php',

			// 设定返回数据类型
			dataType:'json',

			success:function(res){console.log(res);
				var html = res.map(function(item){
					return `
						<div class='sitem wrap' data-guid='${item.id}'>
							<div class='lt'>
								<a href="html/list.html"><img src="${item.imgurl}" alt="" /></a>
							</div>
							<div class='rt'>
								<h2 class='site-hot-row-two'>
									<a href="html/list.html">${item.title}</a>
								</h2>
								<div class='site-hot-row-three'>
									<span class='product-words'>${item.description}</span>
								</div>
								<div class='site-hot-row-four'>
									<div class='fl'>
										<div class='price'>
											<p><b>￥</b>${item.price} <b>起</b></p>
										</div>

									</div>
									<a href="html/list.html" class='viewbtn'>点击进入</a>
								</div>
							</div>
							<div class='border5'></div>
						</div>
					`
				}).join('');

				sgoodlist.html(html);
			}
		})

		var hgoodslist = $('.hgoodslist')
		//hotgoods商品数据请求
		$.ajax({
			url:'./api/hotgoods.php',

			// 设定返回数据类型
			dataType:'json',

			success:function(res){console.log(res);
				var html2 = res.map(function(item){
					return `
						<div class='sitem wrap' data-guid='${item.id}'>
							<div class='lt'>
								<a href="html/list.html"><img src="${item.imgurl}" alt="" /></a>
							</div>
							<div class='rt'>
								<h2 class='site-hot-row-two'>
									<a href="html/list.html">${item.title}</a>
								</h2>
								<div class='site-hot-row-three'>
									<span class='product-words'>${item.description}</span>
								</div>
								<div class='site-hot-row-four'>
									<div class='fl'>
										<div class='price'>
											<p><b>￥</b>${item.price} <b></b></p>
										</div>

									</div>
									<a href="html/list.html" class='viewbtn'>点击进入</a>
								</div>
							</div>
							<div class='border5'></div>
						</div>
					`
				}).join('');

				hgoodslist.html(html2);
			}
		})

		//尾部
		$('footer').html(foot);

		//页面固定定位的部分js
		//点击关闭按钮关闭广告
		$('.fixLeftAd_close').on('click',function(){
			$('.fixLeftAd').hide();
		});

		$(window).on('scroll',function(){console.log(scrollTop);
			var scrollTop = $(this).scrollTop();

			//吸顶菜单
			if(scrollTop>=550){
				$('.ui-fixed-top').show();
			}else{
				$('.ui-fixed-top').hide();
			}


			//左侧广告
			if(scrollTop>=200){
				$('.fixLeftImg').show();
			}else{
				$('.fixLeftImg').hide();
			}

		});
		console.log($('.navlist'));
		//菜单js
		$('.navlist').hover(function(){
			clearTimeout(this.timer);
			$('.ui-category').show();



		},function(){
			this.timer = setTimeout(function(){
				$('.ui-category').hide();
			},500) ;

		})

		//li hover
		$('.ui-category-list').each(function(index){
			$(this).mouseover(function(){
				var borderTop = 39*index;
				if(index>1){
					borderTop = 39*index+4;
				}
					$('.border').css('top',borderTop);

				$(this).find('.ui-category-third').show();
				$(this).siblings().find('.ui-category-third').hide();

			})

		});

		//右侧固定栏
		//返回顶部
		$('.top').on('click',function(){
			$('html,body').stop().animate({'scrollTop':0},'slow');console.log(777);
		});

		//先获取商品cookie
		var arr_goodlist = [];
		var cookies = Cookie.get('cartlist');

		//若cookie存在则写入arr_goodlist
		//不存在则赋值空数组
		if(cookies.length>0){
			 arr_goodlist= JSON.parse(cookies);
		}
		console.log(arr_goodlist.length);

		if(arr_goodlist.length===0){
			$('.shopping').html(
				`
					<div class='prompt'>
							<div class='nogoods'>
								<i class="sprite-icon icon-redcart"></i>
								<span class="NoProducts-words">您的购物车是空的,去挑选喜欢的商品吧!</span>
							</div>
						</div>
				`)
		}else{
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
			$('#cartSlideNum').text('（'+listqtys+'）');
			$('.totals').text(total);
		}

		//购物车
		$('.cart').hover(function(){
			$('.shopping').show();
		},function(){
			$('.shopping').hide ();
		})
	})
})
