<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<% pageContext.setAttribute("APP_PATH", request.getContextPath()); %>
<!-- 
<script type="text/javascript" src="${APP_PATH }/static/js/bootstrap.js" ></script> -->
<script src="${APP_PATH }/static/js/jquery-1.11.1.min.js"></script>

<div id="demo-1" data-zs-src='["${APP_PATH }/static/images/2.jpg", "${APP_PATH }/static/images/1.jpg", "${APP_PATH }/static/images/3.jpg","${APP_PATH }/static/images/4.jpg"]' data-zs-overlay="dots">
		<div class="demo-inner-content">
		<!--/header-w3l-->
			   <div class="header-w3-agileits" id="home">
			     <div class="inner-header-agile">	
				<nav class="navbar navbar-default">
					<div class="navbar-header">
						<h1><a  href="userindex"><span>N</span>uc  <span>M</span>ovies</a></h1>
					</div>
					<!-- 头部导航 -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
							<li class="active"><a href="userindex">主页</a></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">电影类型 <b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<li>
									<div class="col-sm-4">
										<ul class="multi-column-dropdown">
											<li><a href="movieall?typekey=动作">动作</a></li>
											<li><a href="movieall?typekey=2">传记</a></li>
											<li><a href="movieall?typekey=3">犯罪</a></li>
											<li><a href="movieall?typekey=4">灾难</a></li>
											<li><a href="movieall?typekey=5">恐怖</a></li>
											<li><a href="movieall?typekey=6">爱情</a></li>
											<li><a href="movieall?typekey=7">悲剧</a></li>
											<li><a href="movieall?typekey=8">战争</a></li>
										</ul>
									</div>
									<div class="col-sm-4">
										<ul class="multi-column-dropdown">
											<li><a href="movieall?typekey=9">冒险</a></li>
											<li><a href="movieall?typekey=10">喜剧</a></li>
											<li><a href="movieall?typekey=11">记录片</a></li>
											<li><a href="movieall?typekey=12">科幻</a></li>
											<li><a href="movieall?typekey=13">惊悚</a></li>
										</ul>
									</div>
									<div class="col-sm-4">
										<ul class="multi-column-dropdown">
											<li><a href="movieall?typekey=14">动画</a></li>
											<li><a href="movieall?typekey=15">家庭</a></li>
											<li><a href="movieall?typekey=16">戏剧</a></li>
											<li><a href="movieall?typekey=17">历史</a></li>
											<li><a href="movieall?typekey=18">音乐</a></li>
											<li><a href="movieall?typekey=18">心理</a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
									</li>
								</ul>
							</li>
							<li><a href="hitmovie" target="_blank">院线电影</a></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">热点 <b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<li>		
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a target="_blank" href="newshome">热点首页</a></li>
												
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a href="news">新闻咨询</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a href="news-videos.html">预告片</a></li>
											</ul>
										</div>
										<div class="clearfix"></div>
									</li>
								</ul>
							</li>
							
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">地区 <b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<li>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a href="movieall?countrykey=亚洲">亚洲</a></li>
												<li><a href="movieall?countrykey=法国">法国</a></li>
												<li><a href="movieall?countrykey=台湾">中国台湾</a></li>
												<li><a href="movieall?countrykey=美国">美国</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a href="movieall?countrykey=中国">中国</a></li>
												<li><a href="movieall?countrykey=香港">中国香港</a></li>
												<li><a href="movieall?countrykey=日本">日本</a></li>
												<li><a href="movieall?countrykey=泰国">泰国</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a href="movieall?countrykey=欧洲">欧洲</a></li>
												<li><a href="movieall?countrykey=意大利">意大利</a></li>
												<li><a href="movieall?countrykey=韩国">韩国</a></li>
												<li><a href="movieall">其他</a></li>
											</ul>
										</div>
										<div class="clearfix"></div>
									</li>
								</ul>
							</li>
							<li><a href="movietop" target="_blank">榜单</a></li>
							<li><a href="contact" target="_blank">联系</a></li>
							
							 <c:choose>  
							   <c:when test="${not empty sessionScope.userSession }">
									
								<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									<c:if test="${not empty sessionScope.userSession.userTitle }">
							   			<img style="width:20px;height: 20px;border-radius: 50%" alt="" src="static/${sessionScope.userSession.userTitle }">
							   		</c:if>
							   		<c:if test="${empty sessionScope.userSession.userTitle }">
							   			<img style="width:20px;height: 20px;border-radius: 50%" src="${APP_PATH }/static/images/head.png">
							   		</c:if>
									<span>${userSession.userAccount }</span>
									<b class="caret"></b>
								</a>
								<ul class="dropdown-menu multi-column columns-3">
									<li>
										<div class="col-sm-6">
											<ul class="eb-ucenter-layer-main">
												<li class="eb-ucenter-layer-item">
													<a class="item-icon" href="userhome" target="_blank">个人中心</a>
												</li>
												<li class="eb-ucenter-layer-item">
													<a class="item-icon" href="" target="_blank">我的收藏</a>
												</li>
												<li class="eb-ucenter-layer-item">
													<a class="item-icon" href="" target="_blank">账号设置</a>
												</li>
											
											</ul>
										</div>
										<div class="col-sm-6">
											<ul class="eb-ucenter-layer-main">
												<li class="eb-ucenter-layer-item">
													<a class="item-icon" href="order" target="_blank">购物车</a>
												</li>
													<li class="eb-ucenter-layer-item">
													<a class="item-icon" href="userlogout">退出</a>
												</li>
											</ul>
										</div>
										<div class="clearfix"></div>
									</li>
								</ul>
							</li>
							   </c:when>  
							     
							   <c:otherwise>
			                        <li><a href="#" class="login"  data-toggle="modal" data-target="#loginModal">登录</a></li>
									<li><a href="#" class="login reg"  data-toggle="modal" data-target="#myModal">注册</a></li>
							   </c:otherwise>  
							</c:choose>      

						</ul>

					</div>
					<a href="#" id="hiddenLogin"  data-toggle="modal" data-target="#loginModal"></a>
					<a href="#" id="hiddenTip"  data-toggle="modal" data-target="#op-tips-dialog"></a>
					<div class="clearfix"> </div>	
				</nav>
					<div class="w3ls_search">
									<div class="cd-main-header">
										<ul class="cd-header-buttons">
											<li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
										</ul> <!-- cd-header-buttons -->
									</div>
									<div id="cd-search" class="cd-search">
										<form action="moviesearch" method="post">
											<input autocomplete="off" id="text" name="keyword" type="search" placeholder="搜索..." style="display: inline-block;">
											
											<div id="context1" style="background-color:white; line-height: 35px; padding-left: 40px; display:none" ></div>
											<!-- <div style="background: rgb(255, 255, 255); line-height: 35px; padding-left: 40px;" id="word" ></div> -->
										</form>
									</div>
								</div>
	
			</div> 

			   </div>
		<!--//header-w3l-->
			<!--/banner-info-->
			   <div class="baner-info">
			      <h3>最新 <span>在</span>线 <span>电</span>影</h3>
			      <h5>Latest <span>on</span>line <span>mo</span>vie</h5>
				  <h4>In space no one can hear you scream.</h4>
				  <a class="w3_play_icon1" href="movieall" target="_blank" >
											在线观看
										</a>
			   </div>
			<!--/banner-ingo-->	
		
		</div>
			<div class="slider_mask">
                    <div class="slider_mask_inner"></div>
                </div>
		
		<div class="mod_channel_nav " id="nav" >
      
        <div class="channel_main_nav cf">
          
            
            <div class="main_nav main_nav_0">
              <a class="nav_link nav_link_has_sub" href="javascript:;">新热栏目</a>
                  <a class="nav_link" href="" target="_blank">最新上架</a>
                  <a class="nav_link" href="" target="_blank">最近热播</a>
                  <span>|</span>
            </div>
              <div class="main_nav main_nav_1">
                    <a class="nav_link" href="movieall?countrykey=中国" target="_blank" _stat="nav:index2">内地</a>
                    <a class="nav_link" href="movieall?countrykey=香港" target="_blank" _stat="nav:index2">香港</a>
                    <a class="nav_link" href="movieall?countrykey=美国" target="_blank" _stat="nav:index2">美国</a>
                    <a class="nav_link" href="movieall?countrykey=韩国" target="_blank" _stat="nav:index2">韩国</a>
                    <a class="nav_link" href="movieall?countrykey=欧洲" target="_blank" _stat="nav:index2">欧洲</a>
					<span>|</span>
              </div>
              <div class="main_nav main_nav_2">
                    <a class="nav_link" href="movieall?typekey=10" target="_blank" _stat="nav:index3">喜剧</a>
                    <a class="nav_link" href="movieall?typekey=13" target="_blank" _stat="nav:index3">惊悚</a>
                    <a class="nav_link" href="movieall?typekey=9" target="_blank" _stat="nav:index3">冒险</a>
                    <a class="nav_link" href="movieall?typekey=1" target="_blank" _stat="nav:index3">动作</a>
                    <a class="nav_link" href="movieall?typekey=3" target="_blank" _stat="nav:index3">犯罪</a>
					<span>|</span>
              </div>
              <div class="main_nav main_nav_3">
                    <a class="nav_link" href="movieall?actorkey=成龙" target="_blank" _stat="nav:index4">成龙</a>
                    <a class="nav_link" href="movieall?actorkey=吴京" target="_blank" _stat="nav:index4">吴京</a>
                    <a class="nav_link" href="movieall?actorkey=刘德华" target="_blank" _stat="nav:index4">刘德华</a>
                    <a class="nav_link" href="movieall?actorkey=黄渤" target="_blank" _stat="nav:index4">黄渤</a>
                  
              </div>
            
          
          
  <div class="main_nav_tvstore">
    <a class="nav_link" href="movieall" target="_blank" _stat="nav:more">
      <i class="icon icon_tvstore iconfont icon-dianying"></i>
      <span class="icon_text">电影片库</span>
    </a>
  </div>

        </div>
      <div class="channel_sub_nav">
        <div class="channel_sub_nav_inner">
                <a class="nav_link" href="" target="_blank" _stat="nav:index5">豆瓣高分</a>
                <a class="nav_link" href="" target="_blank" _stat="nav:index5">热搜电影</a>
                <a class="nav_link" href="" target="_blank" _stat="nav:index5">排行榜</a>
                <a class="nav_link" href="" target="_blank" _stat="nav:index5">会员专享</a>
                <a class="nav_link" href="" target="_blank" _stat="nav:index5">用户好评</a>
                <a class="nav_link" href="" target="_blank" _stat="nav:index5">精选独播</a>
                <a class="nav_link" href="" target="_blank" _stat="nav:index5">林正英鬼片</a>
                <a class="nav_link" href="" target="_blank" _stat="nav:index5">周星驰经典</a>
                <a class="nav_link" href="" target="_blank" _stat="nav:index5">亲子电影</a>
                <a class="nav_link" href="" target="_blank" _stat="nav:index5">漫威出品</a>
                <a class="nav_link" href="" target="_blank" _stat="nav:index5">周润发暴力美学</a>
                <a class="nav_link" href="" target="_blank" _stat="nav:index5">李连杰功夫巨制</a>
                <a class="nav_link" href="" target="_blank" _stat="nav:index5">诺兰影像迷宫</a>
                <a class="nav_link" href="" target="_blank" _stat="nav:index5">港式警匪</a>
        </div>
      </div>
      
  </div>
    </div>
    
        <!-- 登录框1 -->
					<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" >

							<div class="modal-dialog">
							<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button id="close_userlogin" type="button" class="close" data-dismiss="modal">&times;</button>
										<h4>登录</h4>
										<div class="login-form">
											<form>
												<input id="email_add_input" type="email" name="userEmail" placeholder="邮箱" required="">
												<input id="userPassword_input" type="password" name="userPassword" placeholder="密码" required="">
												<div class="tp">
													<input id="user_login_btn" type="submit" value="立即登录">
												</div>
												<div class="forgot-grid">
												       <div class="log-check">
														<label class="checkbox"><input type="checkbox" name="checkbox">记住密码</label>
														</div>
														<div class="forgot">
															<a href="userforgetpassword" data-toggle="modal" data-target="#myModal2">忘记密码?</a>
														</div>
														<div class="clearfix"></div>
													</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
				<!-- //Modal1 -->
				  <!-- 注册框 -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">

							<div class="modal-dialog modal-sm">
							<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" id="closeButton" class="close" data-dismiss="modal">&times;</button>
										<h4>注册</h4>
										<div class="login-form">
											<form method="post">
												<div>
											    <input type="text" id="userAccount" name="userAccount" placeholder="用户名" onblur="validate_add_form()" required>
											    <span  class="error-box"></span>
												</div>
												<div>
												<input type="email" id="userEmail" name="userEmail" placeholder="邮箱" required="" onblur="validate_email()">
												<span class="error-box"></span>
												</div>
												<div>
												<input type="text" id="userPhone" onblur="checkuserPhone()" name="userPhone" placeholder="电话号" required="">
												<span class="error-box"></span>
												</div>
												<div>
													<input type="text" style="width: 50%" id="SmsCheckCode" name="SmsCheckCode" placeholder="短信验证码" onblur="checkCode()"/>
													<span><input id="btnSendCode" name="btnSendCode" value="免费获取验证码" onclick="sendMessage()" /></span>
													<span id="smsCode-error-box" class="error-box"></span>
												</div>
												<div>
												<input type="password" id="registPassword" name="userPassword" placeholder="密码" required=""  onblur="validate_password()">
												<span  class="error-box"></span>
												</div>
												<input type="password" id="conformPassword" name="conformPassword" placeholder="确认密码" required=""  onblur="validate_confirmPassword()">
												<span  class="error-box"></span>
												<div class="signin-rit">
													<span class="agree-checkbox">
														<label class="checkbox"><input type="checkbox" name="checkbox">我同意该系统的 <a class="w3layouts-t" href="#" target="_blank">使用条款</a> 和 <a class="w3layouts-t" href="#" target="_blank">隐私政策</a></label>
													</span>
												</div>
												<div class="">
													<input id="user_save_btn" type="submit" value="立即注册">
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
				<!-- //Modal1 -->
				
				<!-- 提示框 -->
				<div class="modal fade" id="op-tips-dialog" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
			      <div class="modal-dialog modal-sm" role="document">
			        <div class="modal-content">
			        	<div class="modal-header">
			                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			                <h4 class="modal-title" >提示信息</h4>
			          </div>
			          <div class="modal-body" id="op-tips-content">
			        		  恭喜您，注册成功
			          </div>
			           <div class="modal-footer">
			           	<button type="button" class="btn btn-primary" id="afterLogin">去登录</button>
				        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				      </div>
							          
			        </div>
			      </div>
			    </div>
			    
				<script type="text/javascript">
				
				$("#afterLogin").click(function(){
					$("#hiddenLogin").click();
				});
				
				//校验表单数据
				function validate_add_form(){
					//1、拿到要校验的数据，使用正则表达式
					var userName = $("#userAccount").val();
					var regName = /(^[a-zA-Z0-9_-]{6,16}$)|(^[\u2E80-\u9FFF]{2,5})/;
					if(!regName.test(userName)){
						//alert("用户名可以是2-5位中文或者6-16位英文和数字的组合");
						show_validate_msg("#userAccount", "error", "用户名可以是2-5位中文或者6-16位英文和数字的组合");
						$("#user_save_btn").addClass("validate_add_form");
						return false;
					}else{
						$.ajax({
							url:"${APP_PATH}/userAccountCheck",
							data:{userAccount:userName},
							type:"POST",
							success:function(result){
								if(result.code==100){
									show_validate_msg("#userAccount","error","");
									$("#userAccount").next().html("<font color='#339933'>用户名输入正确</font>");
									if($("#user_save_btn").hasClass("validate_add_form")){
										$("#user_save_btn").removeClass("validate_add_form");
									}
								
								}else{
									show_validate_msg("#userAccount","error",result.extend.va_msg);
									$("#user_save_btn").addClass("validate_add_form");
									return false;
								}
							}
						});
						
					};
				
				}
				
				function validate_email(){
					//2、校验邮箱信息
					var email = $("#userEmail").val();
					var regEmail =  /\w+[@]{1}\w+[.]\w+/;
					if(!regEmail.test(email)){
						show_validate_msg("#userEmail", "error", "邮箱格式不正确");
						$("#user_save_btn").addClass("validate_email");
						return false;
					}else{
						show_validate_msg("#userEmail","error","");
						$("#userEmail").next().html("<font color='#339933'>邮箱格式输入正确</font>");
						if($("#user_save_btn").hasClass("validate_email")){
							$("#user_save_btn").removeClass("validate_email");
						}
					}
					
				}
				
				function validate_password(){
					//2、校验邮箱信息
					var userPassword = $("#registPassword").val();
					if($.trim(userPassword)==""){
						show_validate_msg("#registPassword", "error", "密码不可为空");
						$("#user_save_btn").addClass("validate_password");
						return false;
					}else{
						show_validate_msg("#registPassword","error","");
						$("#registPassword").next().html("<font color='#339933'>密码输入正确</font>");
						if($("#user_save_btn").hasClass("validate_password")){
							$("#user_save_btn").removeClass("validate_password");
						}
					}
					
				}
				
				function validate_confirmPassword(){
					//发送ajax请求校验用户名是否可用
					var conformPassword = $("#conformPassword").val();
					if(conformPassword!=""){
					var userPassword = $("#registPassword").val();
					$.ajax({
						url:"${APP_PATH}/conformPassword",
						data:{conformPassword:conformPassword,userPassword:userPassword},
						type:"POST",
						success:function(result){
							if(result.code==100){
								$("#conformPassword").next().html("<font color='#339933'>密码可用</font>");
								if($("#user_save_btn").hasClass("ajax-va")){
									$("#user_save_btn").removeClass("ajax-va");
								}
							}else{
								show_validate_msg("#conformPassword","error",result.extend.va_msg);
								$("#user_save_btn").addClass("ajax-va");
								return false;
							}
						}
					});
					}
					else{
						show_validate_msg("#conformPassword","error","确认密码不可为空");
						$("#user_save_btn").addClass("ajax-va");
						return false;
					}
				}
				
				
				//显示校验结果的提示信息
				function show_validate_msg(ele,status,msg){
					//清除当前元素的校验状态
					$(ele).removeClass("has-success has-error");
					$(ele).next("span").text("");
					if("success"==status){
						$(ele).addClass("has-success");
						$(ele).next("span").text(msg);
					}else if("error" == status){
						$(ele).addClass("has-error");
						$(ele).next("span").text(msg);
					}
				}			
				
				//点击注册
				$("#user_save_btn").click(function(){
					
					if(null==$("#userAccount").val()||$.trim($("#userAccount").val())==""){
						show_validate_msg("#userAccount", "error", "用户名不可为空");
						return false;
					}
					if(null==$("#userEmail").val()||$.trim($("#userEmail").val())==""){
						show_validate_msg("#userEmail", "error", "邮箱不可为空");
						return false;
					}
					if(null==$("#userPhone").val()||$.trim($("#userPhone").val())==""){
						show_validate_msg("#userPhone", "error", "电话号码不可为空");
						return false;
					}
					if(null==$("#SmsCheckCode").val()||$.trim($("#SmsCheckCode").val())==""){
						$("#smsCode-error-box").html("<font color='red'>短信验证码不能为空</font>");
						return false;
					}
					if(null==$("#registPassword").val()||$.trim($("#registPassword").val())==""){
						show_validate_msg("#registPassword", "error", "密码不可为空");
						return false;
					}
					if(null==$("#conformPassword").val()||$.trim($("#conformPassword").val())==""){
						show_validate_msg("#conformPassword", "error", "确认密码不可为空");
						return false;
					}
					
					
					//1、模态框中填写的表单数据提交给服务器进行保存
					if($(this).hasClass("ajax-va")||$(this).hasClass("validate_email")||$(this).hasClass("validate_add_form")||$(this).hasClass("checkuserPhone")
							||$(this).hasClass("validate_password")){
						return false;
					}else{
					//2、发送ajax请求保存员工
					$.ajax({
						url:"usersave",
						type:"POST",
						data:$("#myModal form").serialize(),
						success:function(result){
							if(result.code == 100){
								alert("注册成功");
								//弹出模态框
								$("#hiddenTip").click();
								
							}else{
							
								if(undefined != result.extend.errorFields.email){
									//显示邮箱错误信息
									show_validate_msg("#userEmail", "error", result.extend.errorFields.email);
								}
								if(undefined != result.extend.errorFields.empName){
									//显示员工名字的错误信息
									show_validate_msg("#userAccount", "error", result.extend.errorFields.empName);
								}
							}
						}
					});
					}
					
				});
				
				
				//点击登录。
				$("#user_login_btn").click(function(){
					//2、发送ajax请求登录
					$.ajax({
						url:"userlogin",
						type:"POST",
						data:$("#loginModal form").serialize(),
						success:function(result){
							if(result.code == 100){
								
								window.location.reload();
								$("#close_userlogin").click();
							}else{
									show_validate_msg("#email_add_input", "error", result.extend.va_msg);
							}
						}
					});
				});
				
		
				function checkuserPhone() {
					var jbPhone = $("#userPhone").val();
					var re= /^1[34578]\d{9}$/;
					if ($.trim(jbPhone)=="") {
						$("#userPhone").next().html("<font color='red'>手机号码不能为空</font>");
						$("#user_save_btn").addClass("checkuserPhone");
						return false;
					} else {
						if(!re.test(jbPhone)){
							$("#userPhone").next().html("<font color='red'>请输入有效的手机号码</font>");
							$("#user_save_btn").addClass("checkuserPhone");
							return false;
						}else{
							$("#userPhone").next().html("<font color='#339933'>手机号码输入正确</font>");
							if($("#user_save_btn").hasClass("checkuserPhone")){
								$("#user_save_btn").removeClass("checkuserPhone");
							}
							return true;
						}
					}
					
				}
				
				function checkCode(){
					var SmsCheckCodeVal = $("#SmsCheckCode").val();
					if($.trim(SmsCheckCodeVal)== ""){
						$("#btnSendCode").parent().next().html("<font color='red'>请输入短信验证码</font>");
						return false;
					}
					// 向后台发送处理数据
					$.ajax({
								url : "smsServeCheck",// 目标地址
								data : {SmsCheckCodeVal : SmsCheckCodeVal}, // 目标参数
								type : "POST", // 用POST方式传输
								success : function(result) {
									if(result.code == 100){
										$("#btnSendCode").parent().next().html("<font color='#339933'>短信验证码正确，请继续</font>");
									
									}else{
										$("#btnSendCode").parent().next().html("<font color='red'>短信验证码有误，请核实后重新填写</font>");
										return false;
									}
								}
							});
				}

				function sendMessage() {
					curCount = 120;//倒计时时间
					var jbPhone = $("#userPhone").val();
					var jbPhoneTip =$("#userPhone").next().text();
					if (jbPhone != "") {
						if(jbPhoneTip == "该手机号码可以注册，输入正确" || jbPhoneTip == "短信验证码已发到您的手机,请查收" || jbPhoneTip =="手机号码输入正确"){
							
							// 设置button效果，开始计时
							$("#btnSendCode").attr("disabled", "true");
							$("#btnSendCode").val("请在" + curCount + "秒内输入验证码");
							InterValObj = window.setInterval(SetRemainTime, 1000); // 启动计时器，1秒执行一次
							// 向后台发送处理数据
							$.ajax({
								url : "smsService",// 目标地址
								data : {jbPhone : jbPhone}, // 目标参数
								type : "POST", // 用POST方式传输
								success : function(result) {
									if(result.code == 100){
										$("#userPhone").next().html("");
										$("#userPhone").next().html("<font color='#339933'>短信验证码已发到您的手机,请查收</font>");
									
									}else{
										$("#userPhone").next().html("");
										$("#userPhone").next().html("<font color='red'>短信验证码发送失败，请重新发送</font>");
										
									}
								}
							});
							
						}
					}else{
						$("#userPhone").next().html("<font color='red'>手机号码不能为空</font>");
					}
				}

				//timer处理函数
				function SetRemainTime() {
					if (curCount == 0) {                
						window.clearInterval(InterValObj);// 停止计时器
						$("#btnSendCode").removeAttr("disabled");// 启用按钮
						$("#btnSendCode").val("重新发送验证码");
						$.ajax({
							url : "removeSmsCode",// 目标地址
							type : "POST", // 用POST方式传输
							success : function(result) {
							}
						});
					}else {
						curCount--;
						$("#btnSendCode").val("请在" + curCount + "秒内输入验证码");
					}
				}
				
				//ajax自动补全
				$("#text").keyup(function(){
					  var content=$(this).val();
					  //如果当前搜索内容为空，无须进行查询
					  if(content==""){
					   $("#context1").css("display","none");
					   return ;
					  }
					  //由于浏览器的缓存机制 所以我们每次传入一个时间
					  var time=new Date().getTime();
					  $.ajax({
					   type:"get",
					 
					   url:"findMoviesAjax",
					   data:{name:content,time:time},
					   success:function(data){
						   if(data.code == 100){
							   var result=data.extend.res;
							   var res = result.split(",");
							    var html="";
							    if(res.length<=10){
								    for(var i=0;i<res.length;i++){
								     //每一个div还有鼠标移出、移入点击事件
								     html+="<div onclick='setSearch_onclick(\""+res[i]+"\")' onmouseout='changeBackColor_out(this)' onmouseover='changeBackColor_over(this)'>"+res[i]+"</div>";
								    }
							    }else{
							    	for(var i=0;i<11;i++){
									     //每一个div还有鼠标移出、移入点击事件
									     html+="<div onclick='setSearch_onclick(\""+res[i]+"\")' onmouseout='changeBackColor_out(this)' onmouseover='changeBackColor_over(this)'>"+res[i]+"</div>";
									    }
							    }
							    $("#context1").html(html);
							    //显示为块级元素
							    $("#context1").css("display","block");
							}else{
								
							}
					    //拼接html
					   }
					  });
					 });
				
				//鼠标移动到内容上
				 function changeBackColor_over(div){
				  $(div).css("background-color","#CCCCCC");
				 }
				 //鼠标离开内容
				 function changeBackColor_out(div){
				  $(div).css("background-color","");
				 }
				 //将点击的内容放到搜索框
				 function setSearch_onclick(moviename){
				  $("#text").val(moviename);
				  $("#context1").css("display","none");
				  
				 }
				</script>
				