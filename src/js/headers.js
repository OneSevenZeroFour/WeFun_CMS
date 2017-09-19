

require(['config'],function(){
	require(['jquery','common'],function(){
		//首先获取cookie看是否登录
		var cookies =  Cookie.get('user');
		console.log(cookies);
		var user = [];
			if(cookies.length>0){
				 user= JSON.parse(cookies);
			}
		console.log(user.username,user.password);

			if(user.username!==undefined){
				//根据数据在页面显示用户	
				$('.ssn-login-info').html(
					`	
						<a href="#" class='userName'>${user.username}</a>
						<span>欢迎来到母婴之家！</span>
						<a href="javascript:;" class='exit'>[退出]</a>
						
					`
				);
			}else{
				$('.ssn-login-info').html(
					`	
					<span>欢迎来到母婴之家！</span>
					<a href="./html/login.html" id='loginBtn'>[登录]</a>
					<a href="./html/reg.html" id='regBtn'>[免费注册]</a>
						
					`
				);
			}

			$('.ssn-login-info').on('click','.exit',function(){
				//删除Cookie				
				Cookie.remove('user');
				console.log( Cookie.get('user'));
				location.reload();
				console.log(777);
			})
			
		
			
		


		//头部Js代码
		var phone = $('.phonebox').find('i');
		var phonehidediv = $('.phonehidediv');
		var phonediv = $('.phonediv');
		var border1 = $('.border1');
		var border2 = $('.border2');
		var border3 = $('.border3');
		$('.phonebox').hover(function(){
			
			
			phone.addClass('hover');
			border1.show();
			phonehidediv.show();
			phonediv.css({'background-color':'#fff'})
  			
			},
			function(){
				border1.hide();
				phone.removeClass('hover');
				phonehidediv.hide();
				phonediv.css({'border':'','background-color':''})	
		});

		var ssn_home = $('.ssn_home');
		var ssn_home2 = $('.ssn_home2');
		var ssn_hover_div = $('.ssn-hover-div');
		var Theader_down01 = $('.Theader_down01');
		var Theader_down02 = $('.Theader_down02');
		
		ssn_home.hover(function(){
			border2.css({'background-color':'#fff'});
			border2.show();
			Theader_down01.show();
		},function(){
			border2.css({'border':'','background-color':''});
			border2.hide();
			Theader_down01.hide();
		}) 

		ssn_home2.hover(function(){
			border3.css({'background-color':'#fff'});
			border3.show();
			Theader_down02.show();
		},function(){
			border3.css({'border':'','background-color':''});
			border3.hide();
			Theader_down02.hide();
		}) 

		//菜单js
			$('.navlist').hover(function(){console.log(666);
				// clearTimeout(this.timer);
				$('.ui-category').show();
			},function(){
				this.timer = setTimeout(function(){
					$('.ui-category').hide();
				},500) ;
				
			});
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
			})
	})
})

		


















