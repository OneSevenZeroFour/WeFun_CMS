/*
	注册页面js
*/
require(['config'],function(){
	require(['jquery','location', 'cookie','headers','common'],function($,lct,cookie){
		$('header').load('html/header.html #hd .hdtopbg',()=>{
			if ($.cookie('location')) {
					$("#location")[0].innerText = $.cookie('location');
			} else {
					lct.getCityName($("#location")[0]);
			}
			lct.getProvinceFromMysql();
			lct.enterList($(".province"));
			lct.enterList($(".city"));
		});
		$('footer').load('html/footer.html #footer .tfc_footer');

		var phonenumber = $('#email');
		var password1 = $('#password1');

		var message = $('#message');
		var message2 = $('#message2');

		//手机号
		phonenumber.on('blur',function(){
			phonenumber.css('border-color','');

			var _phonenumber = phonenumber.val();
			//先判断输入的是否为电话号码正确的格式
			 var reg = /\b1[3578]\d{9}\b/g;

			if(!reg.test(_phonenumber)){

			 	$('#emailTip').addClass('onError').html(
			 		`
			 		<p class='noticeWrap noticeWrap-err'>
			 			<b class='ico-warning'></b>
			 			<span class='txt-err'>手机格式不对，请重新输入！</span>
			 		</p>
			 		`);
			 	//regin = false;
			 	return false;
			}

			 //发起ajax请求查询号码是否被注册
			$.ajax({
			 	url:'api/reg.php',
			 	data:{phoneNumber:_phonenumber},

				success:function(res){
					if(res==='fail'){
						$('#emailTip').addClass('onCorrect').html(
					 		`
					 		<p class='noticeWrap noticeWrap-suc'>
					 			<b class=' ico-succ'></b>
					 			<span class='txt-succ'>用户名正确</span>
					 		</p>
					 		`);

					}
					else{
						$('#emailTip').addClass('onError').html(
					 		`
					 		<p class='noticeWrap noticeWrap-err'>
					 			<b class='ico-warning'></b>
					 			<span class='txt-err'>该电话号码尚未注册。</span>
					 		</p>
					 		`);
						return false
					}
				}
			})

		}).on('focus',function(){
			phonenumber.css('border-color','red')
		});

		//密码验证
		password1.on('blur',function(){
			password1.css('border-color','');

			var _password1 = password1.val();
			//密码长度6-20
			var reg = /^\S{6,20}$/;
			if(!reg.test(_password1)){
				$('#password1Tip').addClass('onError').html(
					`
			 		<p class='noticeWrap noticeWrap-suc'>
			 			<b class='ico-warning'></b>
			 			<span class='txt-err'>密码长度限制为6-20字符！</span>
			 		</p>
			 		`
				)
				return false;
			}

			//发起ajax把账号密码传给后端进行核对
			$.ajax({
				url:'api/login.php',
			 	data:{phoneNumber:phonenumber.val(),password:password1.val()},
			 	success:function(res){
			 		console.log(res);
			 		//根据后台返回数据判断密码是否正确
			 		if(res==='yes'){
						$('#password1Tip').addClass('onCorrect').html(
							`
					 		<p class='noticeWrap noticeWrap-suc'>
					 			<b class='ico-succ'></b>
					 			<span class='txt-succ'>密码正确。</span>
					 		</p>
					 		`
						)
			 		}else{
			 			$('#password1Tip').addClass('onError').html(
							`
					 		<p class='noticeWrap noticeWrap-suc'>
					 			<b class='ico-warning'></b>
					 			<span class='txt-err'>密码错误，请重新输入！</span>
					 		</p>
					 		`
						)
			 		}
			 	}
			});
		}).on('focus',function(){
			password1.css('border-color','red')
		});

		//短信验证生成验证码
		var getmobilecode = $('#getmobilecode');
		var vcode = $('#message');
		var fcode = $('#message2');

		vcode.on('click',function(){
			//生成验证码
			vCode();

		}).on('input',function(){
			vCode();
		});
		function vCode(){
			//验证码
			var str ='123456789abcdefghijklmnopqrstuvwxyz';
			//获取随机索引
			var mcode='';
			for(var i=0; i<4; i++){
				var idx = randomNumber(0,str.length-1);
				mcode += str[idx];
			}
			vcode.val(mcode);
			console.log(phonenumber.val());
			console.log(password1.val());
		}

		fcode.on('blur',function(){
				var _fcode = fcode.val().toLowerCase();
				var _vcode = vcode.val().trim();
				console.log(_vcode);
				if(_vcode===''){
					$('#messageTip').addClass('onError').html(
							`
					 		<p class='noticeWrap <noticeWrap-err></noticeWrap-err>'>
					 			<b class='ico-warning'></b>
					 			<span class='txt-err'>请先获取验证码！</span>
					 		</p>
					 		`
					)
				}
				else if(_fcode!==_vcode && _vcode!==''){
					$('#messageTip').addClass('onError').html(
							`
					 		<p class='noticeWrap <noticeWrap-err></noticeWrap-err>'>
					 			<b class='ico-warning'></b>
					 			<span class='txt-err'>请输入正确的验证码！</span>
					 		</p>
					 		`
					)
				}else{
						$('#messageTip').addClass('onCorrect').html(
							`
					 		<p class='noticeWrap noticeWrap-suc'>
					 			<b class='ico-succ'></b>
					 			<span class='txt-succ'></span>
					 		</p>
					 		`
					 	)
					}
				}
		);

		//登录
		$('#reg_btn').on('click',function(){
				if(phonenumber.val()===''){
					$('#emailTip').addClass('onError').html(
							`
					 		<p class='noticeWrap <noticeWrap-err></noticeWrap-err>'>
					 			<b class='ico-warning'></b>
					 			<span class='txt-err'>电话号码不能为空！</span>
					 		</p>
					 		`
					)
					return false;
				}else if(password1.val()===''){
					$('#password1Tip').addClass('onError').html(
							`
					 		<p class='noticeWrap <noticeWrap-err></noticeWrap-err>'>
					 			<b class='ico-warning'></b>
					 			<span class='txt-err'>密码不能为空！</span>
					 		</p>
					 		`
					)
					return false;

				}else if(message.val()===''){
						$('#messageTip').addClass('onError').html(
							`
						 		<p class='noticeWrap <noticeWrap-err></noticeWrap-err>'>
						 			<b class='ico-warning'></b>
						 			<span class='txt-err'>请先获取验证码！</span>
						 		</p>
						 		`
						)
						return false;
				}else if(fcode.val()!==vcode.val()){
						$('#messageTip').addClass('onError').html(
							`
					 		<p class='noticeWrap <noticeWrap-err></noticeWrap-err>'>
					 			<b class='ico-warning'></b>
					 			<span class='txt-err'>请输入正确的验证码！</span>
					 		</p>
					 		`
						)
						return false;
				}else{
					location.href='index.html';

					//储存一个cookie存储账户
					// Cookie.set('user','phonenumber='+phonenumber.val());
					  document.cookie = 'user=' + JSON.stringify({'username':phonenumber.val(),'password':password1.val()}) +'; path=/';
				}

		})

		//忘记密码
		$('#forget').on('click',function(){
			//获取账号

		})
	})
})
