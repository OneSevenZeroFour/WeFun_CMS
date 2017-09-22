/*
	登录注册页面JS
 */
require(['config'],function(){
	require(['jquery','text!head','headers','text!foot','common'],function($,head,foot){
			$('header').load('html/header.html #hd .hdtopbg');

			var phonenumber = $('#email');
			var password1 = $('#password1');
			var password2 = $('#password2');
			var message = $('#message');
			var message2 = $('#message2');

			var regin = true;

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
							$('#emailTip').addClass('onError').html(
						 		`
						 		<p class='noticeWrap noticeWrap-err'>
						 			<b class='ico-warning'></b>
						 			<span class='txt-err'>该电话号码已被注册！</span>
						 		</p>
						 		`);
				 			return false;
						}else{
							$('#emailTip').addClass('onCorrect').html(
						 		`
						 		<p class='noticeWrap noticeWrap-suc'>
						 			<b class='ico-succ'></b>
						 			<span class='txt-succ'>该电话号码尚未注册。</span>
						 		</p>
						 		`);
						}
					}
				})

			}).on('focus',function(){
				phonenumber.css('border-color','red')
			})

			//密码
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
				}else {
					$('#password1Tip').addClass('onCorrect').html(
						`
				 		<p class='noticeWrap noticeWrap-suc'>
				 			<b class='ico-succ'></b>
				 			<span class='txt-succ'>密码格式正确。</span>
				 		</p>
				 		`

					)
				}

			}).on('focus',function(){
				password1.css('border-color','red')
			})

			//重新输入密码
			password2.on('blur',function(){
					password2.css('border-color','');
					var _password2 = password2.val();
					var _password1 = password1.val();
					if(_password2===''){
						$('#password2Tip').addClass('onError').html(
							`
					 		<p class='noticeWrap <noticeWrap-err></noticeWrap-err>'>
					 			<b class='ico-warning'></b>
					 			<span class='txt-err'>重复密码不能为空！</span>
					 		</p>
					 		`	
						)
						return false;
					}
					 else if(_password2!==_password1){
						$('#password2Tip').addClass('onError').html(
							`
					 		<p class='noticeWrap <noticeWrap-err></noticeWrap-err>'>
					 			<b class='ico-warning'></b>
					 			<span class='txt-err'>两次密码不一致！</span>
					 		</p>
					 		`
						)
						return false;
					}else{
						$('#password2Tip').addClass('onCorrect').html(
						`
				 		<p class='noticeWrap noticeWrap-suc'>
				 			<b class='ico-succ'></b>
				 			<span class='txt-succ'></span>
				 		</p>
				 		`
				 	)
					}

			}).on('focus',function(){
				password2.css('border-color','red')
			}).on('click',function(){

			})

			//短信验证生成验证码
			var getmobilecode = $('#getmobilecode');
			var vcode = $('#message');
			var fcode = $('#message2');

			vcode.on('click',function(){
				//生成验证码
				vCode();
				
			}).on('input',function(){
				vCode();
			})
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
				var _fcode = fcode.val();
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
			)

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
				}else if(password2.val()===''){
					$('#password2Tip').addClass('onError').html(
							`
					 		<p class='noticeWrap <noticeWrap-err></noticeWrap-err>'>
					 			<b class='ico-warning'></b>
					 			<span class='txt-err'>重复密码不能为空！</span>
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

					//发起ajax把账号密码传入数据库
					$.ajax({
						url:'api/user.php',
						data:{phoneNumber:phonenumber.val(),password:password1.val()},
						success:function(res){
							console.log(res);
							location.href='html/login.html';
						}
					})

					

				}
				
				
			})
			$('footer').load('html/footer.html #footer .tfc_footer');
			
	})
})