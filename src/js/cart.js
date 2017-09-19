/*
	购物车js
 */
require(['config'],function(){
	require(['jquery','headers','common','text!foot'],function($,foot){
		$('header').load('html/header.html #hd .hdtopbg');

		//先获取cookie看是否为空
		var arr_goodlist = [];
		var cookies = Cookie.get('cartlist');

		//若cookie存在则写入arr_goodlist
		//不存在则赋值空数组
		// var arr_goodlist = [];
		if(cookies.length>0){
			 arr_goodlist= JSON.parse(cookies);
		}
		
		//判断length
		
		var cart3_area_box = $('.cart3_area_box');

		//局部刷新事件驱动
		function refresh(){
			cart3_area_box.html('');
			if(arr_goodlist.length===0){
				//显示内容购物车为空
				var emptyCart = $('<div/>').addClass('emptyCart');
				var html = `
					<dl>
	                <dt><i></i></dt>
	                <dd>
	                    <p class="emptyText">您的购物车还是空的</p>
	                    <p class="btn"><a href="#" target="_self">去逛逛</a></p>
	                </dd>
	                <dd class="clear"></dd>                 
	            </dl>
				`
				emptyCart.html(html);
				//把内容显示在页面
				cart3_area_box.append(emptyCart);
			}else{
				//cookie不为空则将数据生成html
				
				var cart3_area = $('<div/>').addClass('cart3_area');
				var html1 = `
					<div class='cart3_tit'>
						<div class="cart3_tit_l">
	                            <input type="checkbox" class="cart3_checkbox fl" >
	                            <span class="inblock"><a class="fl label" href="/">母婴之家商城</a> </span>   
	                             <span class="inblock"><span class="ct-t " id="cartDesc_1">母婴之家商城购物车</span></span>                     
	                            <div class="clear"></div>
	                    </div>
	                    <span class="price">单价（元）</span>
	                    <span class="num">数量（件）</span>
	                    <span class="span_width_90">小计（元）</span>
	                    <span class="action">操作</span>
	                    <div class="clear"></div>
					</div>
					<ul class='cart3_list'></ul>
					<div class="cart_check">
	                        <span class="dist inblock">
	                            <strong>已优惠:</strong><strong class="red">0.00</strong>元
	                        </span>
	                        <span class="checktext inblock">
	                            小计：
	                        </span>
	                        <span class="totle_price inblock"></span>
	                </div>
				`
				cart3_area.html(html1);
				//把内容显示在页面
				cart3_area_box.append(cart3_area);

				//生成结算结构
				var  coupon_area= $('<div/>').addClass('coupon_area');
				var html3 = `
					<div class="coupon_box">
	                        <span class="inblock coupon-form">
	                            <input type="text" data-a="1======1" class="inblock" id="userCouponValue" value="请输入优惠码">
	                            <a class="use" id="userCoupon" data-info="">使用</a>
	                            
	                        </span>
	                        <span class="inblock yh">已优惠：</span>                
	                        <span class="inblock yhtot">￥0.00</span>
	                </div>
				`;
				coupon_area.html(html3);
				cart3_area_box.append(coupon_area);

				var cast = $('<div/>').addClass('cast').html(`
						<div id="cart3_bott_box">         
						<div id="cart3_bott" class="">
	        				<div class="cart3_bott">
				            <div class="tipsOrder hide" id="tipsOrder">
				                <div class="tipc"></div>
				                <i class="arrD"></i>
				                <span class="closeTip">关闭</span>
				            </div>
				            <div class="ac">
				                <label class="select_all"><input type="checkbox" name="cart3_area_input_all">全选</label>
				                <a  class="delete inblock" id="delete_All" d>清空购物车</a>
				            </div>
				            <div class="a-m">
				                <span class="inblock submit">
				                                
				                    <a href="javascript:;" id="submitOrder" class="submit_b" data-cart="0">确认订单</a>
				                    <a href="javascript:;" class="submit_b_disabled" id="submitOrderDisabled">确认订单</a>
				                </span>
				                <span class="inblock totCash" id="totCash"></span>
				                <span class="inblock det">共有<strong id="BuyTotalCount"></strong> 件商品，总计(不含运费)：</span>
				            </div>
				        	</div>
				            </div>
						</div>
					`);
				cart3_area_box.append(cast);

				var allqty=0;//总商品数量
				var totle_price=0;

				//利用数据生成li
				var cart3_list = $('.cart3_list');
				var html2 = arr_goodlist.map(function(item){
						allqty+=item.qty;
						 totle_price += item.qty*item.price;
					return `
						<li data-guid="${item.guid}" class="cart3_prod select item_group ">
							<a href="" class="pic inblock "><img src="${item.imgurl}" alt="" /></a>
							<span class='tit inblock'><a href="">${item.title}</a></span>
							<span class='price inblock'>
								<ins>￥${item.price}</ins><br/>
								<ins class="del grey">￥${Number(item.price)+80}.00</ins>
							</span>
							<span class="num inblock adre" > 
		                        <a class="minus" > <span></span> </a>
		                        <input type="text" maxlength="3" value="${item.qty}" > 
		                        <a rel="add" class="add" > <span></span><em></em> </a>
		                    </span>
		                    <span class="inblock count"> <strong>￥${item.qty*item.price}</strong> </span>
		                    <span class="action inblock"> <a class="btn_del" > 删除 </a></span>
		                    <em class="line"></em>
						</li>
					`
				}).join('');
				html2+=`
					<li class="event_info">
		                <span class="tit inblock"> <a class="more_link"> <span class="inblock">2017季末大清仓：2017季末大清仓<em class="koujian"></em>  </span></a></span>
		                <span class="price inblock"> <ins><em class="inblock"></em></ins> </span>
						<span class="num inblock">已参与</span>                                
		                <em class="line"></em>
		                <em class="ball"></em>
		                <span class="arr arr2"></span>
		                <em class="line line2"></em>
		            </li>
				`;
				$('.totle_price').text(totle_price);
				
				$('#totCash').text(totle_price+'.00');

				cart3_list.html(html2);

				$('#BuyTotalCount').text(allqty);
				var qtylist = 1;
				//点击按钮修改cookie
				$('.adre').on('click','.minus',function(){				
					qtylist--;
					

					//找到当前li商品数据
					var currentid = $(this).closest('li').attr('data-guid');
					var currenttotal = $(this).closest('li').find('strong');
					var Totalprice=0;
					var Allqty =0;
					for(var i=0; i<arr_goodlist.length; i++){
						
						if(arr_goodlist[i].guid===currentid){
							arr_goodlist[i].qty--;
							
							if(arr_goodlist[i].qty<=0){
								arr_goodlist[i].qty=1;
							}
							currenttotal.text('￥'+(arr_goodlist[i].qty*arr_goodlist[i].price));
							$(this).next().val(arr_goodlist[i].qty);
							
							//更新cookie
							var now = new Date();
							now.setDate(now.getDate()+8);
							Cookie.set('cartlist',JSON.stringify(arr_goodlist),now,'/');
						}
						Totalprice += arr_goodlist[i].qty*arr_goodlist[i].price;
						Allqty += arr_goodlist[i].qty;
						$('.totle_price').text(Totalprice);
						$('#BuyTotalCount').text(Allqty);
						$('#totCash').text(Totalprice+'.00');
					}
				}).on('click','.add',function(){
					//DOM节点改变
					qtylist++;
					var Allqty =0;
					var Totalprice=0;
					var currentid = $(this).closest('li').attr('data-guid');
					var currenttotal = $(this).closest('li').find('strong');
					for(var i=0; i<arr_goodlist.length; i++){
						if(arr_goodlist[i].guid===currentid){
							arr_goodlist[i].qty++;

							currenttotal.text('￥'+(arr_goodlist[i].qty*arr_goodlist[i].price));
							$(this).prev().val(arr_goodlist[i].qty);

							//更新cookie
							var now = new Date();
							now.setDate(now.getDate()+8);
							Cookie.set('cartlist',JSON.stringify(arr_goodlist),now,'/');
						}
						Totalprice += arr_goodlist[i].qty*arr_goodlist[i].price;
						$('.totle_price').text(Totalprice);
						Allqty += arr_goodlist[i].qty;
						$('#BuyTotalCount').text(Allqty);
						$('#totCash').text(Totalprice+'.00');
					}
					console.log(arr_goodlist);
				})

				//点击按钮删除
				$('.btn_del').on('click',function(){
					//找到当前li
					var currnetid = $(this).closest('li').attr('data-guid');
					$(this).closest('li').remove();

					//删除cookie
					//先遍历数据找出对应Licookie
					arr_goodlist.forEach(function(item,idx){
						if(item.guid===currnetid){
							arr_goodlist.splice(idx,1);
						}

					})
					//重写cookie
					var now = new Date();
					now.setDate(now.getDate()+8);
					Cookie.set('cartlist',JSON.stringify(arr_goodlist),now,'/');

					var arr_goodlist1 = [];
					var cookies = Cookie.get('cartlist');

					//若cookie存在则写入arr_goodlist
					//不存在则赋值空数组
					// var arr_goodlist = [];
					if(cookies.length>0){
						 arr_goodlist1= JSON.parse(cookies);
					}
					if(arr_goodlist1.length<=0){
						location.reload(true);
					}
					var Allqty =0;
					var Totalprice=0;
					var currentid = $(this).closest('li').attr('data-guid');
					var currenttotal = $(this).closest('li').find('strong');
					for(var i=0; i<arr_goodlist1.length; i++){
						if(arr_goodlist1[i].guid===currentid){
							arr_goodlist1[i].qty++;

							currenttotal.text('￥'+(arr_goodlis1t[i].qty*arr_goodlist1[i].price));
							$(this).prev().val(arr_goodlist1[i].qty);

							//更新cookie
							// var now = new Date();
							// now.setDate(now.getDate()+8);
							// Cookie.set('cartlist',JSON.stringify(arr_goodlist),now,'/');
						}
						Totalprice += arr_goodlist1[i].qty*arr_goodlist[i].price;
						$('.totle_price').text(Totalprice);
						Allqty += arr_goodlist1[i].qty;
						$('#BuyTotalCount').text(Allqty);
						$('#totCash').text(Totalprice+'.00');
					}
				})

				//清空购物车
				$('#delete_All').on('click',function(){
					var now = new Date();
					now.setDate(now.getDate()-1);

					Cookie.set('cartlist',JSON.stringify(arr_goodlist),now,'/');

					//删除DOM节点
					$('.cart3_area').html('');
					$('#totCash').text('0.00');

					//重新加载页面
					location.reload(true);
				})
			}
		}

		 refresh();


		 //热门商品
		 //加载数据
		var pageNo = 8;
		var qTy = 4;
		var length;

		creatgoods();
		function creatgoods(){

			//发起ajax请求
			$.ajax({
				url:'./api/list.php',
				data:{pageNo:pageNo,qty:qTy},
				// 设定返回数据类型
				dataType:'json',

				success:function(res){console.log(res);
					length = Math.ceil(res.total/qTy);

					var ul = $('<ul/>');
					var html = res.data.map(function(item){
						return `
								<li data-guid='${item.id}' class='lisT'>
									<div class='gds'>
										<div class='img'>
											<a href=""><img src="${item.imgurl}" alt="" /></a>
										</div>
										<div class='ctit'>
											<a href="">${item.title}</a>
										</div>
										<div class='mny'>
											<span class="promPrice">￥${item.price}</span>
											<strong class="markPrice">￥${Number(item.price)+80}.00</strong>
										</div>
										<a class="addcart">加入购物车</a>
									</div>
								</li>
						`
					}).join('');
					ul.html(html);
					$('.contlist').html('');
					$('.contlist').append(ul);

					$('.contlist li').on('mouseenter',function(){
						this.className = 'hover';
						$(this).siblings().removeClass('hover');
					});
						
					$('.addcart').on('click',function(){
						//获取cookie
						var arr_goodlist = [];
						var cookies = Cookie.get('cartlist');

						//若cookie存在则写入arr_goodlist
						//不存在则赋值空数组
						// var arr_goodlist = [];
						if(cookies.length>0){
							 arr_goodlist= JSON.parse(cookies);
						}

						//把当前数据添加到arr_goodlist
						var currnetid = $(this).closest('li').attr('data-guid');
						var guid = currnetid;//console.log(currnetid);
						var imgurl = $(this).closest('li').find('img')[0].src;//console.log(imgurl);
						var title = $(this).closest('li').find('.ctit')[0].children[0].innerText;
						//console.log(title);
						var price =  $(this).closest('li').find('.mny .promPrice')[0].innerText.slice(1);
						//console.log(price);

						for(var i=0;i<arr_goodlist.length;i++){
								if(arr_goodlist[i].guid === guid){
									arr_goodlist[i].qty++;
									break;
								}
						}
						if(i===arr_goodlist.length){
							//数据存入cookie
							var goods = {
				                    guid:guid,
				                    imgurl:imgurl,       
				                    title:title,       
				                    price:price,       
				                    qty:1
				            }
				            arr_goodlist.unshift(goods);
						}
						console.log(arr_goodlist);
	         			document.cookie = 'cartlist=' + JSON.stringify(arr_goodlist) +'; path=/';

	         			location.reload();
					})
					
					//点击左右上下页
					
				}

			});
		}

		//点击按钮
		$('.conprev ').on('click',function(){
			console.log(666);
			if(pageNo>length){
				return
			}else if(pageNo<1){
				return
			}
			pageNo--;
			creatgoods();
		});

		$('.connext').on('click',function(){
			console.log(777);
			if(pageNo>length){
				pageNo=1;
			}else if(pageNo<1){
				pageNo=length;
			}
			pageNo++;
			creatgoods();
		});

		$('footer').load('html/footer.html');
	})
})