<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>电脑网站支付return_url</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<link rel="stylesheet" href="${APP_PATH }/static/css/indexcss.css" />
<link href="${APP_PATH }/static/css/font-awesome.css" rel="stylesheet"> 
<script type="text/javascript" src="${APP_PATH }/static/js/modernizr-2.6.2.min.js"></script>
<!--/web-fonts-->
<link href='http://fonts.googleapis.com/css?family=Tangerine:400,700' rel='stylesheet' type='text/css'>
<link href="http://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!--//web-fonts-->
<style type="text/css">
.content {
    overflow: hidden;
    margin-top: 30px;
}
.main {
    padding: 0 18px;
}
.info-content {
    border: 1px solid #e1e1e1;
    position: relative;
}
.info-content .user-profile-nav {
    position: absolute;
    top: 0px;
    bottom: 0px;
    width: 200px;
    background-color: #f4f3f4;
    text-align: center;
    border-right: 1px solid #e1e1e1;
}
.info-content .user-profile-nav h1 {
    margin-top: 40px;
    margin-bottom: 30px;
    font-size: 22px;
    color: #222;
    font-weight: 400;
}
.info-content .user-profile-nav a.active {
    color: #fff;
    background-color: #ed3931;
}
.info-content .user-profile-nav a {
    display: block;
    font-weight: 400;
    color: #333;
    height: 40px;
    width: 202px;
    margin-left: -1px;
    line-height: 40px;
    font-size: 18px;
}
.info-content .orders-container, .info-content .profile-container {
    float: left;
    margin-left: 200px;
    padding-left: 40px;
    width: 922px;
    min-height: 900px;
}
.info-content .orders-container .profile-title, .info-content .profile-container .profile-title {
    padding: 26px 0;
    color: #ec443f;
    font-size: 18px;
    border-bottom: 1px solid #e1e1e1;
    margin-bottom: 30px;
}
.order-box {
    border: 1px solid #e5e5e5;
    margin: 0 40px 30px 0;
}
.order-box .order-header {
    background-color: #f7f7f7;
    font-size: 14px;
    padding: 16px 20px;
}
.order-box .order-header .order-date {
    color: #333;
    display: inline-block;
    margin-right: 30px;
}
.order-box .order-header .order-id {
    color: #999;
}
.order-box .order-header .del-order {
    width: 15px;
    height: 16px;
    background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA8AAAAQCAYAAADJViUEAAAAAXNSR0IArs4c6QAAAP5JREFUKBVjZMACZs2alfTv3z95kNT///9FOTg4qhITEz+gK2UEKlQDKhBEklAG8ksZGRk3QDWzAPmhLCws0UADWWDqBAUFz7MABVKAAvYwQaBCVnZ2drekpKTXMLEZM2Y8/fv37wwg/x9M7MuXLz4wNnk00NTkmTNnppGiG6jnCEg9E9BvMkCnSsM0T58+/T8+NlAtE1DeCqQGxCAbjGomMegoDrAvwLgzglmamZnJiI89Z84cdaB6sBpgemeZ9evXrx5g4rgLTDALgRqZYZrRaaA8858/f6qBdCZIDmwCMHmyAjNIDpDPz8TEBE9h6JqBNv4Fih3PyMjYC5IDACkobU1JvS12AAAAAElFTkSuQmCC) no-repeat;
    float: right;
}
.order-box .order-body {
    padding: 20px;
    padding-right: 0px;
}
.order-box .order-body .poster {
    border: 2px solid #fff;
    -webkit-box-shadow: 0 1px 2px 0 hsla(0,0%,53%,.5);
    box-shadow: 0px 1px 2px 0px hsla(0, 0%, 53%, 0.5);
    margin-right: 11px;
    font-size: 0px;
    width:80px;
    height:100px;
}
.order-box .order-body .poster img {
    width: 100%;
    height: 100%;
}
.order-box .order-body .order-content {
    width: 300px;
}
.order-box .order-body > div {
    display: inline-block;
    vertical-align: top;
}
.order-box .order-body .movie-name {
    font-size: 16px;
    font-weight: 700;
    color: #333;
    margin: 4px 0 7px 0px;
}
.order-box .order-body .cinema-name, .order-box .order-body .hall-ticket {
    font-size: 12px;
    color: #999;
    margin-bottom: 4px;
}
.order-box .order-body .hall-ticket span {
    display: inline-block;
    margin-right: 5px;
}
.order-box .order-body .show-time {
    font-size: 12px;
    color: #f03d37;
}
.order-box .order-body .actions, .order-box .order-body .order-price, .order-box .order-body .order-status {
    font-size: 14px;
    color: #333;
    width: 12%;
    line-height: 95px;
}
.order-box .order-body .order-status {
    width: 15%;
}
.order-box .order-body .actions {
    text-align: center;
}
.order-box .order-body .actions > div {
    line-height: 95px;
    display: inline-block;
    vertical-align: middle;
}
.order-box .order-body .actions .order-detail {
    color: #333;
}

</style>
</head>
<%@ page import="java.util.*"%>
<%@ page import="java.util.Map"%>
<%@ page import="com.yc.movie.alipay.config.*"%>
<%@ page import="com.alipay.api.*"%>
<%@ page import="com.alipay.api.internal.util.*"%>
<%
/* *
 * 功能：支付宝服务器同步通知页面
 * 日期：2017-03-30
 * 说明：
 * 以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 * 该代码仅供学习和研究支付宝接口使用，只是提供一个参考。


 *************************页面功能说明*************************
 * 该页面仅做页面展示，业务逻辑处理请勿在该页面执行
 */
 /*
	//获取支付宝GET过来反馈信息
	Map<String,String> params = new HashMap<String,String>();
	Map<String,String[]> requestParams = request.getParameterMap();
	for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();) {
		String name = (String) iter.next();
		String[] values = (String[]) requestParams.get(name);
		String valueStr = "";
		for (int i = 0; i < values.length; i++) {
			valueStr = (i == values.length - 1) ? valueStr + values[i]
					: valueStr + values[i] + ",";
		}
		//乱码解决，这段代码在出现乱码时使用
		valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
		params.put(name, valueStr);
	}
	
	boolean signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.alipay_public_key, AlipayConfig.charset, AlipayConfig.sign_type); //调用SDK验证签名

	//——请在这里编写您的程序（以下代码仅作参考）——
	if(signVerified) {
		//商户订单号
		String out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"),"UTF-8");
	
		//支付宝交易号
		String trade_no = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"),"UTF-8");
	
		//付款金额
		String total_amount = new String(request.getParameter("total_amount").getBytes("ISO-8859-1"),"UTF-8");
			
		//out.println("trade_no:"+trade_no+"<br/>out_trade_no:"+out_trade_no+"<br/>total_amount:"+total_amount);
		
		
	}else {
		out.println("验签失败");
	}
	//——请在这里编写您的程序（以上代码仅作参考）——
	*/
%>
<body>
<%@ include file="/WEB-INF/views/common/header2.jsp"%>

<div class="container" id="app">
<div class="content">
  <div class="main">
    <div class="info-content clearfix">
      <div class="user-profile-nav">
        <h1>个人中心</h1>
        <a class="orders active" href="/profile/orders">我的订单</a>
        <a class="profile " href="/profile">基本信息</a>
      </div>

<div class="orders-container">
  <div class="profile-title">我的订单</div>
<c:forEach items="${tickeds2 }" var="ticked">
	 <div class="order-box">
      <div class="order-header">
        <span class="order-date">${ticked.tickedTime }</span>
        <span class="order-id">订单号:${ticked.tickedCode}</span>
          <span class="del-order"></span>
      </div>

      <div class="order-body">
        <div class="poster">
          <img src="static${ticked.hitmovie.movieImg}">
        </div>
        <div class="order-content">
          <div class="movie-name">${ticked.hitmovie.movieName}</div>
          <div class="cinema-name">${ticked.play.cinema.cinemaName}</div>
          <div class="hall-ticket">
            <span>${ticked.cinemaseat.seatRow}排${ticked.cinemaseat.seatColumn}座</span>
          </div>
          <div class="show-time">${ticked.play.playTime}</div>
        </div>

        <div class="order-price">￥${ticked.play.playPrice}</div>

        <div class="order-status">
          ${ticked.tickedFlag==0?"待支付":"已支付"}
        </div>

        <div class="actions">
          <div>
             <a class="pay-btn" href="" data-act="orders-pay-click" data-bid="b_d2ll8ybm">付款</a>
            <a class="order-detail" href="" data-act="orders-detail-click" data-bid="b_y190atas">查看详情</a>
          </div>
        </div>
      </div>
    </div>
	
</c:forEach>
   
  <div class="orders-pager">
    
  </div>
</div>
    </div>
  </div>


</div>

<div class="mask3">
    <div class="modal-container" style="display:none">
    <div class="modal">
      <span class="icon"></span>

      <p class="tip">您确定要删除该订单嘛？删除后，不可恢复～</p>

        <div class="short btn ok-btn">确定</div>
        <div class="short btn cancel-btn">取消</div>
    </div>
  </div>

</div>

<div class="mask1">
    <div class="modal-container" style="display:none">
    <div class="modal">
      <span class="icon"></span>

      <p class="tip">请注意，注销账号会清空所有订单信息、影评、积分、<br>账户余额等信息且无法找回，是否继续？</p>

        <div class="short btn ok-btn">确定</div>
        <div class="short btn cancel-btn">取消</div>
    </div>
  </div>

</div>

<div class="mask2">
    <div class="modal-container" style="display:none">
    <div class="modal">
      <span class="icon"></span>

      <p class="tip">请联系客服10105335</p>

        <div class="ok-btn btn">我知道了</div>
    </div>
  </div>

</div>

    </div>


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


<script type="text/javascript" src="${APP_PATH }/static/js/jquery.zoomslider.min.js"></script>
		<!-- search-jQuery -->
				<script src="${APP_PATH }/static/js/main.js"></script>
			<script src="${APP_PATH }/static/js/simplePlayer.js"></script>
			<script>
				$("document").ready(function() {
					$("#video").simplePlayer();
				});
			</script>
			<script>
				$("document").ready(function() {
					$("#video1").simplePlayer();
				});
			</script>
			<script>
				$("document").ready(function() {
					$("#video2").simplePlayer();
				});
			</script>
				<script>
				$("document").ready(function() {
					$("#video3").simplePlayer();
				});
			</script>

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
<!--end-smooth-scrolling-->
	<script src="${APP_PATH }/static/js/bootstrap.js"></script>
	
	<script src="${APP_PATH }/static/js/jquery.carousel.js"></script>
	<script>
	Caroursel.init($('.caroursel'))
</script>

<script type="text/javascript" src="${APP_PATH }/static/js/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
    function tabs(tabTit,on,tabCon){
        $(tabTit).children().hover(function(){
            $(this).addClass(on).siblings().removeClass(on);
            var index = $(tabTit).children().index(this);
           	$(tabCon).children().eq(index).show().siblings().hide();
    	});
	};
    tabs(".tab-hd","active",".tab-bd");
});
</script>

</body>
</html>