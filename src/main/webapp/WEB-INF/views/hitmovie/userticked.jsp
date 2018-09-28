<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>支付成功</title>
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
<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/css/movieclasses.css" />
<link rel="stylesheet" href="${APP_PATH }/static/css/indexcss.css" />
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
	<div class="payment_main">
		<div class="w">
		
		<div class="order clearfix order-init order-init-oldUser-noQrcode">
		    <!-- 订单信息 -->
		    <div class="o-left"><h3 class="o-title">电影票购买成功，您的订单号：${tradeno }</h3>
		    </div>
		    <!-- 订单信息 end --><!-- 订单金额 -->
		    <div class="o-right">
		        <div class="o-price"><em>您已付金额</em><strong>${price }</strong><em>元</em></div>
		            </div>
		    <!-- 订单金额 end -->
		    <div class="o-list j_orderList" id="listPayOrderInfo"><!-- 单笔订单 -->
		        <!-- 多笔订单 end -->
		    </div>
		</div>
	 <!-- payment 支付方式选择 -->
        <div class="payment">
            <!-- 微信支付 -->
            <div class="pay-weixin">
                <div class="p-w-hd" style="overflow: hidden;"><div style="float: left;">您的订单信息 </div>   <div class="j_weixinInfo" style="float: left;margin-left:5px;margin-top:5px;font: 12px/150% Arial, Verdana, '\5b8b\4f53';">预祝您<span class="j_qrCodeCountdown font-bold font-red">观影愉快</span>！</div>
                    </div>
                <div class="p-w-bd" style="position:relative">
                   <div class="p-w-box">
                        <div class="pw-box-hd">
                            <img id="weixinImageURL" src="${APP_PATH }${tickedImg}" width="298" height="298">
                        </div>
                        <div class="pw-box-ft">
                            <p>请使用微信或支付宝扫一扫</p>
                            <p>查看订单信息</p>
                        </div>
                    </div>
                    <div class="p-w-sidebar" >
                    	<div class="user-address">
						<!--标题 -->
						<ul class="am-avg-sm-1 am-avg-md-3 am-thumbnails" style="margin-top: 30px">

							<li class="user-addresslist defaultAddr">
								<div style="overflow: hidden;">
									<div style="float: left;font-family:'Montserrat',sans-serif;font-size: 22px;font-weight: 600;color: #ff6699">Movie Pro</div>
									<div style="float: right;font-size:26px;font-family:微软雅黑;color: #ff6699;font-weight: 600;letter-spacing:2px">博纳国际影城</div>
								</div>
								<div>
									<span class="street">订单号：${tradeno }</span>
								</div>
								<div style="margin-top: 20px;">
									<div style="margin-top: 5px;overflow: hidden;">
										<input type="text" style="margin-top: 5px;"  class="ticked_input1" id="exampleInputPassword1" value="影厅 	${ticked.play.cinemahall.hallName } " readonly="readonly">
										
										<input type="text" style="margin-left: 9px;margin-top: 5px;" class="ticked_input1" id="exampleInputPassword1" value="观影时间		 ${ticked.play.playTime }" readonly="readonly">
									</div>
									<div style="padding-top: 5px">
										<input type="text" class="ticked_input2" id="exampleInputPassword1" value="电影名称	${ticked.hitmovie.movieName }" readonly="readonly">
									</div>
									<div style="margin-top: 5px">
										<input type="text" class="ticked_input2" id="exampleInputPassword1" value="座位号 		${seat }   对号入座" readonly="readonly">
									</div>
									<div style="margin-top: 5px">
										<input type="text" class="ticked_input3" id="exampleInputPassword1" value="座位类型	普通座" readonly="readonly">
										<input type="text" style="margin-left: 10px;" class="ticked_input3" id="exampleInputPassword1" value="票价类型		成人票" readonly="readonly">
										<input type="text" style="margin-left: 10px;" class="ticked_input3" id="exampleInputPassword1" value="票价	${price }￥" readonly="readonly">
									</div>
									</div>
								<p class="new-tit new-p-re">
									<span class="new-txt">${ticked.user.userAccount }</span>
									<span class="new-txt-rd2">${ticked.tickedEndtime }</span>
								</p>
								<div class="new-mu_l2a new-p-re">
									<p class="new-mu_l2cw">
										<span class="title">地址：</span>
										<span class="province">山西</span>省
										<span class="city">${ticked.play.cinema.cinemaCity}市</span>
										<span class="street">${ticked.play.cinema.cinemaArea}</span></p>
								</div>
								<div class="new-addr-btn">
									<div style="float: right;">
										<img id="weixinImageURL" src="${APP_PATH }${tickedImg}" width="50" height="50">
									</div>
									<div style="float: left;margin-top: 25px">
										<a href="#"><i class="am-icon-edit"></i>打印</a>
									</div>
								</div>
							</li>
						</ul>
						<div class="clear"></div>
					</div>
                    </div>
                </div>
            </div>
            <!-- 微信支付 end -->
            <!-- payment-change 变更支付方式 -->
            <div class="payment-change">
                <a class="pc-wrap" onclick="window.history.go(-1)">
                    <i class="pc-w-arrow-left">&lt;</i>
                    <strong>返回继续购票</strong>
                </a>
            </div>
            <!-- payment-change 变更支付方式 end -->
        </div>
        </div>
        </div>
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
			<script src="${APP_PATH }/static/js/simplePlayer.js"></script>
			
			<!-- pop-up-box -->  
		<script src="${APP_PATH }/static/js/jquery.magnific-popup.js" type="text/javascript"></script>
	<!--//pop-up-box -->

			<div id="small-dialog1" class="mfp-hide">
		<iframe src=""></iframe>
	</div>
	<div id="small-dialog2" class="mfp-hide">
		<iframe src=""></iframe>
	</div>
	<script>
		$(document).ready(function() {
		$('.w3_play_icon,.w3_play_icon1,.w3_play_icon2').magnificPopup({
			type: 'inline',
			fixedContentPos: false,
			fixedBgPos: true,
			overflowY: 'auto',
			closeBtnInside: true,
			preloader: false,
			midClick: true,
			removalDelay: 300,
			mainClass: 'my-mfp-zoom-in'
		});
																		
		});
	</script>
<script src="${APP_PATH }/static/js/easy-responsive-tabs.js"></script>
<script>
$(document).ready(function () {
$('#horizontalTab').easyResponsiveTabs({
type: 'default', //Types: default, vertical, accordion           
width: 'auto', //auto or any width like 600px
fit: true,   // 100% fit in a container
closed: 'accordion', // Start closed if in accordion view
activate: function(event) { // Callback function if tab is switched
var $tab = $(this);
var $info = $('#tabInfo');
var $name = $('span', $info);
$name.text($tab.text());
$info.show();
}
});
$('#verticalTab').easyResponsiveTabs({
type: 'vertical',
width: 'auto',
fit: true
});
});
</script>
<link href="${APP_PATH }/static/css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
<script src="${APP_PATH }/static/js/owl.carousel.js"></script>
<script>
	$(document).ready(function() { 
		$("#owl-demo").owlCarousel({
	 
		 autoPlay: 3000, //Set AutoPlay to 3 seconds
		  autoPlay : true,
		   navigation :true,

		  items : 5,
		  itemsDesktop : [640,4],
		  itemsDesktopSmall : [414,3]
	 
		});
	 
	}); 
</script> 

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
</body>
</html>