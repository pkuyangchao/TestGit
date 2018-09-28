<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Contact</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="" />
<% pageContext.setAttribute("APP_PATH", request.getContextPath()); %>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="${APP_PATH }/static/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- pop-up -->
<link href="${APP_PATH }/static/css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<!-- //pop-up -->
<link href="${APP_PATH }/static/css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/css/zoomslider.css" />
<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/css/style.css" />
<link href="${APP_PATH }/static/css/font-awesome.css" rel="stylesheet"> 
<script type="text/javascript" src="${APP_PATH }/static/js/modernizr-2.6.2.min.js"></script>
<!--/web-fonts-->
<link href='http://fonts.googleapis.com/css?family=Tangerine:400,700' rel='stylesheet' type='text/css'>
<link href="http://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!--//web-fonts-->
</head>
<body>
<%@ include file="/WEB-INF/views/common/header2.jsp"%>
	<div class="w3_breadcrumb">
		<div class="breadcrumb-inner">	
			<ul>
				<li><a href="index.html">主页</a><i>//</i></li>
				<li>联系</li>
			</ul>
		</div>
	</div>
			<!--/content-inner-section-->
				<div class="w3_content_agilleinfo_inner">
					<div class="agile_featured_movies">
							<div class="inner-agile-w3l-part-head">
					            <h3 class="w3l-inner-h-title">联系我们</h3>
								<p class="w3ls_head_para">请您填入简短的描述</p>
							</div>
						<div class="w3_mail_grids">
								<form action="#" method="post">
									<div class="col-md-6 w3_agile_mail_grid" style="width: 50%">
										<span class="input input--ichiro">
											<input class="input__field input__field--ichiro" type="text" id="input-25" placeholder=" " required="">
											<label class="input__label input__label--ichiro" for="input-25">
												<span class="input__label-content input__label-content--ichiro">您的 姓名</span>
											</label>
										</span>
										<span class="input input--ichiro">
											<input class="input__field input__field--ichiro" type="email" id="input-26" placeholder=" " required="">
											<label class="input__label input__label--ichiro" for="input-26">
												<span class="input__label-content input__label-content--ichiro">您当前的 邮箱</span>
											</label>
										</span>
										<span class="input input--ichiro">
											<input class="input__field input__field--ichiro" type="text" id="input-27" placeholder=" " required="">
											<label class="input__label input__label--ichiro" for="input-27">
												<span class="input__label-content input__label-content--ichiro">您当前的 电话号</span>
											</label>
										</span>
										<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=1003374326&site=qq&menu=yes"><img border="0" style="height: 55px;width: 150px" src="http://wpa.qq.com/pa?p=2:1003374326:41" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
									</div>
									<div class="col-md-6 w3_agile_mail_grid two" style="width: 50%">
										<textarea name="Message" placeholder="您的意见..." required=""></textarea>
										<input type="submit" value="提交">
									</div>
									<div class="clearfix"> </div>
								</form>
								<div class="agileits-get-us">
									<ul>
										<li><i class="fa fa-map-marker" aria-hidden="true"></i>中国 山西省太原市 中北大学</li>
										<li><i class="fa fa-phone" aria-hidden="true"></i>  +033 111 222 4567</li>
										<li><i class="fa fa-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">nuc_yangchao@163.com</a></li>
									</ul>
								
							</div>
					
					</div>
					</div>
							<div class=" map">
								<iframe src="NewFile.jsp"></iframe>
							</div>
				</div>
			<!--//content-inner-section-->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>

		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

<script src="${APP_PATH }/static/js/jquery-1.11.1.min.js"></script>
	<!-- Dropdown-Menu-JavaScript -->
			<script>
				$(document).ready(function(){
					$(".dropdown").hover(            
						function() {
							$('.dropdown-menu', this).stop( true, true ).slideDown("fast");
							$(this).toggleClass('open');        
						},
						function() {
							$('.dropdown-menu', this).stop( true, true ).slideUp("fast");
							$(this).toggleClass('open');       
						}
					);
				});
			</script>
		<!-- //Dropdown-Menu-JavaScript -->
		<!-- search-jQuery -->
				<script src="${APP_PATH }/static/js/main.js"></script>
			<!-- //search-jQuery -->
			

<!--/script-->
<script type="text/javascript" src="${APP_PATH }/static/js/move-top.js"></script>
<script type="text/javascript" src="${APP_PATH }/static/js/easing.js"></script>

<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>
 <script type="text/javascript">
						$(document).ready(function() {
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
<!--end-smooth-scrolling-->
	<script src="${APP_PATH }/static/js/bootstrap.js"></script>


</body>
</html>