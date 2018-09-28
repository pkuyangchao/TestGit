<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<% pageContext.setAttribute("APP_PATH", request.getContextPath()); %>

<script src="${APP_PATH }/static/js/jquery-1.11.1.min.js"></script>

		<div id="demo-2" class="banner-inner">
			<div class="banner-inner-dott3">
				<!--/header-w3l-->
				<div class="header-w3-agileits" id="home">
					<div class="inner-header-agile part2">
						<nav class="navbar navbar-default">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
								<h1><a  href="userindex"><span>M</span>ovies <span>P</span>ro</a></h1>
							</div>
							<!-- navbar-header -->
							<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
								<ul class="nav navbar-nav">
									<li>
										<a href="userindex">主页</a>
									</li>
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">电影类型 <b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<li>
												<div class="col-sm-4">
													<ul class="multi-column-dropdown">
														<li>
															<a href="active.html">动作</a>
														</li>
														<li>
															<a href="biography.html">传记</a>
														</li>
														<li>
															<a href="crime.html">犯罪</a>
														</li>
														<li>
															<a href="disaster.html">灾难</a>
														</li>
														<li>
															<a href="horror.html">恐怖</a>
														</li>
														<li>
															<a href="romance.html">爱情</a>
														</li>
														<li>
															<a href="tragedy.html">悲剧</a>
														</li>
														<li>
															<a href="war.html">战争</a>
														</li>
													</ul>
												</div>
												<div class="col-sm-4">
													<ul class="multi-column-dropdown">
														<li>
															<a href="adventure.html">冒险</a>
														</li>
														<li>
															<a href="comedy.html">喜剧</a>
														</li>
														<li>
															<a href="documentary.html">记录片</a>
														</li>
														<li>
															<a href="fantasy.html">科幻</a>
														</li>
														<li>
															<a href="thriller.html">惊悚</a>
														</li>
													</ul>
												</div>
												<div class="col-sm-4">
													<ul class="multi-column-dropdown">
														<li>
															<a href="animation.html">动画</a>
														</li>
														<li>
															<a href="family.html">家庭</a>
														</li>
														<li>
															<a href="drama.html">戏剧</a>
														</li>
														<li>
															<a href="history.html">历史</a>
														</li>
														<li>
															<a href="musical.html">音乐</a>
														</li>
														<li>
															<a href="psychological.html">心理</a>
														</li>
													</ul>
												</div>
												<div class="clearfix"></div>
											</li>
										</ul>
									</li>
									<li class="active">
										<a href="series.html">院线电影</a>
									</li>
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">热点 <b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<li>
												<div class="col-sm-4">
													<ul class="multi-column-dropdown">
														<li>
															<a href="news-home.html">热点首页</a>
														</li>

													</ul>
												</div>
												<div class="col-sm-4">
													<ul class="multi-column-dropdown">
														<li>
															<a href="news.html">新闻咨询</a>
														</li>
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
														<li>
															<a href="genre.html">亚洲</a>
														</li>
														<li>
															<a href="genre.html">法国</a>
														</li>
														<li>
															<a href="genre.html">中国台湾</a>
														</li>
														<li>
															<a href="genre.html">美国</a>
														</li>
													</ul>
												</div>
												<div class="col-sm-4">
													<ul class="multi-column-dropdown">
														<li>
															<a href="genre.html">中国</a>
														</li>
														<li>
															<a href="genre.html">中国香港</a>
														</li>
														<li>
															<a href="genre.html">日本</a>
														</li>
														<li>
															<a href="genre.html">泰国</a>
														</li>
													</ul>
												</div>
												<div class="col-sm-4">
													<ul class="multi-column-dropdown">
														<li>
															<a href="genre.html">欧洲</a>
														</li>
														<li>
															<a href="genre.html">意大利</a>
														</li>
														<li>
															<a href="genre.html">韩国</a>
														</li>
														<li>
															<a href="genre.html">其他</a>
														</li>
													</ul>
												</div>
												<div class="clearfix"></div>
											</li>
										</ul>
									</li>
									<li>
										<a href="movietop">榜单</a>
									</li>
									<li>
										<a href="contact">联系</a>
									</li>
								
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
							<div class="clearfix"> </div>
						</nav>
						<div class="w3ls_search">
							<div class="cd-main-header">
								<ul class="cd-header-buttons">
									<li>
										<a class="cd-search-trigger" href="#cd-search"> <span></span></a>
									</li>
								</ul>
								<!-- cd-header-buttons -->
							</div>
							<div id="cd-search" class="cd-search">
								<form action="#" method="post">
									<input name="Search" type="search" placeholder="Search...">
								</form>
							</div>
						</div>

					</div>

				</div>
				<!--//header-w3l-->
			</div>
		</div>
		<!--/banner-section-->
		<!--//main-header-->
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
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog" >

							<div class="modal-dialog">
							<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" id="closeButton" class="close" data-dismiss="modal">&times;</button>
										<h4>注册</h4>
										<div class="login-form">
											<form method="post">
												<div>
											    <input type="text" id="userAccount" name="userAccount" placeholder="用户名" required="">
											    <span  class="error-box"></span>
												</div>
												<div>
												<input type="email" id="userEmail" name="userEmail" placeholder="邮箱" required="">
												<span class="error-box"></span>
												</div>
												<div>
												<input type="password" id="registPassword" name="userPassword" placeholder="密码" required="">
												<span  class="error-box"></span>
												</div>
												<input type="password" id="conformPassword" name="conformPassword" placeholder="确认密码" required="">
												<span  class="error-box"></span>
												<div class="signin-rit">
													<span class="agree-checkbox">
														<label class="checkbox"><input type="checkbox" name="checkbox">I agree to your <a class="w3layouts-t" href="#" target="_blank">Terms of Use</a> and <a class="w3layouts-t" href="#" target="_blank">Privacy Policy</a></label>
													</span>
												</div>
												<div class="tp">
													<input id="user_save_btn" type="submit" value="立即注册">
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
				<!-- //Modal1 -->
				
				<script type="text/javascript">
				
				//校验表单数据
				function validate_add_form(){
					//1、拿到要校验的数据，使用正则表达式
					var userName = $("#userAccount").val();
					var regName = /(^[a-zA-Z0-9_-]{6,16}$)|(^[\u2E80-\u9FFF]{2,5})/;
					if(!regName.test(userName)){
						//alert("用户名可以是2-5位中文或者6-16位英文和数字的组合");
						show_validate_msg("#userAccount", "error", "用户名可以是2-5位中文或者6-16位英文和数字的组合");
						return false;
					}else{
						show_validate_msg("#userAccount", "success", "");
					};
					
					//2、校验邮箱信息
					var email = $("#userEmail").val();
					var regEmail = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
					if(!regEmail.test(email)){
						show_validate_msg("#userEmail", "error", "邮箱格式不正确");
						return false;
					}else{
						show_validate_msg("#userEmail", "success", "");
					}
					return true;
				}
				
				$("#conformPassword").change(function(){
					//发送ajax请求校验用户名是否可用
					var conformPassword = this.value;
					if(conformPassword!=""){
					var userPassword = $("#registPassword").val();
					$.ajax({
						url:"${APP_PATH}/conformPassword",
						data:{conformPassword:conformPassword,userPassword:userPassword},
						type:"POST",
						success:function(result){
							if(result.code==100){
								show_validate_msg("#conformPassword","success","密码可用");
								if($("#user_save_btn").hasClass("ajax-va")){
									$("#user_save_btn").removeClass("ajax-va");
								}
								
							}else{
								alert(result.extend.va_msg);
								show_validate_msg("#conformPassword","error",result.extend.va_msg);
								$("#user_save_btn").addClass("ajax-va");
							}
						}
					});
					}
					else{
						show_validate_msg("#conformPassword","error","确认密码不可为空");
						$("#user_save_btn").addClass("ajax-va");
					}
				});
				
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
				
				$("#user_save_btn").click(function(){
					//1、模态框中填写的表单数据提交给服务器进行保存
					//1、先对要提交给服务器的数据进行校验
					if(!validate_add_form()){
						return false;
					};
					if($(this).hasClass("ajax-va")){
						return false;
					}
					//2、发送ajax请求保存员工
					$.ajax({
						url:"usersave",
						type:"POST",
						data:$("#myModal form").serialize(),
						success:function(result){
							if(result.code == 100){
								//员工保存成功；
								//1、关闭模态框
								$("#closeButton").click();
								
								//弹出模态框
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
					$("#loginModalA").click();
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
		</script>
