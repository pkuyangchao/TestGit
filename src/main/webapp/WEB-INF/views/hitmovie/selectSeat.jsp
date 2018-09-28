<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>座位选择</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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

<style type="text/css">
.demo{width:1000px; margin:40px auto 0 auto; min-height:450px;}
@media screen and (max-width: 360px) {.demo {width:340px}}

.front{width: 500px;margin: 5px 32px 45px 32px;background-color: #f0f0f0;	color: #666;text-align: center;padding: 3px;border-radius: 5px;}
.booking-details {float: right;position: relative;width:350px;height: 450px; }
.booking-details h3 {margin: 5px 5px 0 0;font-size: 16px;}
.booking-details p{line-height:26px; font-size:16px; color:#999}
.booking-details p span{color:#666}
.booking-details .movie-info .poster {
    width: 115px;
    height: 158px;
    border: 2px solid #fff;
    -webkit-box-shadow: 0 2px 7px 0 hsla(0,0%,53%,.5);
    box-shadow: 0px 2px 7px 0px hsla(0, 0%, 53%, 0.5);
    float: left;
}
.booking-details .movie-info .content {
    margin-left: 140px;
}
.booking-details .movie-info .content .name {
    font-size: 20px;
    font-weight: 700;
    color: #333;
    margin: 0 0 14px;
}
.text-ellipsis {
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
}
.booking-details .info-item {
    font-size: 12px;
    color: #999;
    margin-bottom: 4px;
}
.booking-details .info-item .value {
    color: #151515;
    margin-left: 2px;
}

div.seatCharts-cell {color: #182C4E;height: 40px;width: 40px;line-height: 40px;margin: 3px;float: left;text-align: center;outline: none;font-size: 13px;}
div.seatCharts-seat {color: #fff;cursor: pointer;-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;}
div.seatCharts-row {height: 50px;}
div.seatCharts-seat.available {background-color: #B9DEA0;}
div.seatCharts-seat.focused {background-color: #76B474;border: none;}
div.seatCharts-seat.selected {background-color: #E6CAC4;}
div.seatCharts-seat.unavailable {background-color: #472B34;cursor: not-allowed;}
div.seatCharts-container {border-right: 1px dotted #adadad;width: 600px;padding: 20px;float: left;}
div.seatCharts-legend {padding-left: 0px;bottom: 16px;}
ul.seatCharts-legendList {padding-left: 0px;}
.seatCharts-legendItem{float:left; width:100px;margin-top: 10px;line-height: 2;}
span.seatCharts-legendDescription {margin-left: 5px;line-height: 30px;}

.checkout-button {
display: block;width:80px; height:24px; line-height:20px;margin: 10px auto;border:1px solid #999;font-size: 14px; cursor:pointer
}

.checkout-button{
    margin: 10px auto;
    width: 80px;
    height: 30px;
    color: #fff;
    background-color: #f03d37;
    font-size: 14px;
    line-height: 30px;
    border-radius: 100px;
    text-align: center;
}

#selected-seats {max-height: 150px;overflow-y: auto;overflow-x: none;width: 200px;}
#selected-seats li{float:left; width:72px; height:26px; line-height:26px; border:1px solid #d3d3d3; background:#f7f7f7; margin:6px; font-size:14px; font-weight:bold; text-align:center}

#checkTicked .login-form input[type='text']{
    padding:0;
    font-size:inherit;
    margin:0;
    outline: none;
    color: inherit;
    border: inherit;
    letter-spacing: 1px;
    text-align: left;
}

</style>
</head>
<body>

<%@ include file="/WEB-INF/views/common/header2.jsp"%>

	<div class="w3_content_agilleinfo_inner">
		<div class="agile_featured_movies">
		
		<div id="main">
		   <div class="demo">
		   		<div id="seat-map">
					<div class="front">屏幕</div>					
				</div>
				<div class="booking-details">
					<div class="movie-info clearfix">
				          <div class="poster">
				            <img src="static${hitmovie.movieImg }">
				          </div>
				          <div class="content">
				            <p class="name text-ellipsis">${hitmovie.movieName }</p>
				            <div class="info-item">
				              <span>类型 :</span>
				              <span class="value">${hitmovie.movieType }</span>
				            </div>
				            <div class="info-item">
				              <span>时长 :</span>
				              <span class="value">${hitmovie.movieRuntime }</span>
				            </div>
				          </div>
				        </div>
					<p>影院：<span>${hitmovie.movieName }</span></p>
					<p>影厅：<span>${hitmovie.movieName }</span></p>
					<p>场次：<span>11月14日 ${play.playTime }</span></p>
					<p>座位：</p>
					<ul id="selected-seats"></ul>
					<p>票数：<span id="counter">0</span></p>
					<p>票价：<span id="counter">￥${play.playPrice }/张</span></p>
					<p>总计：<b>￥<span id="total">0</span></b></p>
							
					<button class="checkout-button">确定购买</button>
							
					<div id="legend"></div>
				</div>
				
				<div style="clear:both"></div>
		   </div>
			
		  <br/>
		</div>
		</div>
	</div>


<div class="modal fade" id="checkTicked" tabindex="-1" role="dialog" >

							<div class="modal-dialog" style="width: 620px;">
							<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4>检查订单</h4>
										<div class="error-box"></div>
										<div>
											<form id="checkTickedForm"  name="alipayment" action="alipayjsp"
											type="post" target="_blank">
											 <div id="body1" class="show" name="divcontent">
												<div class="user-address">
						<!--标题 -->
						<ul class="am-avg-sm-1 am-avg-md-3 am-thumbnails" style="margin-top: 30px">

							<li class="user-addresslist defaultAddr">
								<div style="overflow: hidden;">
									<div style="float: left;font-family:'Montserrat',sans-serif;font-size: 22px;font-weight: 600;color: #ff6699">Movie Pro</div>
									<div style="float: right;font-size:26px;font-family:微软雅黑;color: #ff6699;font-weight: 600;letter-spacing:2px" name="cinemaName" >博纳国际影城</div>
								</div>
								<div style="overflow: hidden;">
									<span style="float: left;width: 13%">订单号：</span><input id="WIDout_trade_no"  type="text" style="margin-top: 5px;width: 87%"  class="ticked_input2" name="WIDout_trade_no"  id="exampleInputPassword1" value="" readonly="readonly">
									<input type="hidden" id="WIDsubject" name="WIDsubject" />
									<input type="hidden" id="WIDbody" name="WIDbody" />
								</div>
								<div style="overflow: hidden;">
									<div style="margin-top: 5px;overflow: hidden;">
										<span style="float: left;width: 13%">影厅：</span><input type="text" style="margin-top: 5px;width: 36%"  class="ticked_input1" name="hallName"  id="exampleInputPassword1" value="" readonly="readonly">
										
										<span style="float: left;width: 13%;margin-left: 9px;">观影时间：</span><input type="text" style="margin-top: 5px;width: 36%" class="ticked_input1" name="playTime" id="exampleInputPassword1" value="" readonly="readonly">
									</div>
									<div style="padding-top: 5px;overflow: hidden;">
										<span  style="float: left;width: 13%">电影名称：</span><input type="text" style="width: 87%" class="ticked_input2"  name="hitmovieName" id="exampleInputPassword1" value="" readonly="readonly">
									</div>
									<div style="margin-top: 5px;overflow: hidden;">
										<span  style="float: left;width: 13%">座位号：</span><input type="text" style="width: 87%" class="ticked_input2" id="exampleInputPassword1"  name="seat" value="" readonly="readonly">
									</div>
									<div style="margin-top: 5px;overflow: hidden;">
										<span  style="float: left;width: 13%">座位类型：</span><input type="text" style="width: 19%" class="ticked_input3" id="exampleInputPassword1" value="普通座" readonly="readonly">
										<span  style="float: left;width: 13%;margin-left: 10px;">票价类型：</span><input type="text" style="width: 19%" class="ticked_input3" id="exampleInputPassword1" value="成人票" readonly="readonly">
										<span  style="float: left;width: 10%;margin-left: 10px;">票价：</span><input id="WIDtotal_amount" type="text" style="width: 22%" class="ticked_input3" id="exampleInputPassword1"  name="WIDtotal_amount" value="" readonly="readonly">
									</div>
									</div>
								<p class="new-tit new-p-re">
									<span class="new-txt"></span>
									<span class="new-txt-rd2"></span>
								</p>
								<div class="new-mu_l2a new-p-re">
									<p class="new-mu_l2cw">
										<span class="title">地址：</span>
										<span class="province">山西</span>省
										<span class="city">太原市</span>
										<span class="street"></span></p>
								</div>
							</li>
						</ul>
						<div class="clear"></div>
					</div>
					<div class="payment payment-new mt25" id="payMallPlatVm">
					<div class="payment-change">
					<div class="pc-wrap clearfix animate-enter animate-enter-active">
					<div class="pc-w-left">
					<div class="pay-wrap">
					<a class="weixin_form" style="cursor: pointer;" href="#">
					<i class="wechat-pay icon" style="width: 26px;height: 26px;">
					<img  style="width: 26px;height: 26px;" src="${APP_PATH }/static/images/PAY-WEIXIN.png"></i>微信支付
					</a>
					</div></div>
					<div class="pc-w-left"><span>|</span><div class="pay-wrap">
					<div class="alipay_form" style="cursor: pointer;">
					<i class="daifu-pay icon " style="width: 26px;height: 26px;">
					<img  style="width: 26px;height: 26px;" src="${APP_PATH }/static/images/alipay.jpg"></i><input style="color: #5e5e5e;border: none;font-size: 16px;background: #fff;font-family: 'Microsoft Yahei'" id="user_buy_btn" type="submit" value="立即购买">
					</div></div></div></div></div></div>
						<div class="signin-rit">
													<span class="agree-checkbox">
														<label>如不立即购买，将在<a class="w3layouts-t" href="#">15分钟</a>后<a class="w3layouts-t" href="#">取消订单</a></label>
													</span>
													<div class="forgot">
															<a class="delticked">取消订单？</a>
													</div>
												</div>					 <!--
											 <div id="body1" class="show" name="divcontent">
											 	<dl class="content">

												<dt>电影名称：</dt><dd><input type="text" name="hitmovieName" value=""></dd>
												<dt>影院：</dt><dd><input type="text" name="cinemaName" value=""></dd>
												<dt>影厅：</dt><dd><input type="text" name="hallName" value=""></dd>
												<dt>开始时间：</dt><dd><input type="text" name="playTime" value=""></dd>
												<dt>片长：</dt><dd><input type="text" name="movieRuntime" value=""></dd>
												<dt>座位号：</dt><dd><input type="text" name="seat" value=""></dd>
												<dt>价格：</dt><dd><input id="WIDtotal_amount" type="text" name="WIDtotal_amount" value=""></dd>
												<dt></dt><dd><input type="hidden" name="tickeds" value=""></dd>
												<dt>商户订单号 ：</dt>
												<dd>
													<input id="WIDout_trade_no" name="WIDout_trade_no" />
												</dd>
												<dt>订单名称 ：</dt>
												<dd>
													<input id="WIDsubject" name="WIDsubject" />
												</dd>
												<dt></dt>
													<dd>
														<input id="WIDbody" name="WIDbody" />
													</dd>
												<div class="tp">
													<input id="user_buy_btn" type="submit" value="立即购买">
												</div>
												<div class="signin-rit">
													<span class="agree-checkbox">
														<label>如不立即购买，将在<a class="w3layouts-t" href="#">15分钟</a>后<a class="w3layouts-t" href="#">取消订单</a></label>
													</span>
													<div class="forgot">
															<a class="delticked">取消订单？</a>
													</div>
												</div>
												
												</dl>
												</div>
												  -->
												  </div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
	<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

	<a href="#" data-toggle="modal" data-target="#checkTicked"><span id="checkTickedA"></span></a>
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

<script type="text/javascript" src="${APP_PATH }/static/js/jquery.min.js"></script>
<script type="text/javascript" src="${APP_PATH }/static/js/jquery.seat-charts.min.js"></script>
<script type="text/javascript">
var price = ${play.playPrice }; //票价
$(document).ready(function() {
	var $cart = $('#selected-seats'), //座位区
	$counter = $('#counter'), //票数
	$total = $('#total'); //总计金额

	
	var x = ${play.cinemahall.hallRows};
	var y = ${play.cinemahall.hallColumns};
	

	var map = new Array();
	map = [];
	var nouse = [];
	var m=0;
	var n=1;
	var a = ${cinemaseats};
	 for(var i=0;i<x;i++){
	        map[i]="";
	        
	        for(var j=0;j<y;j++){
	        	if(a[m].seatState=="过道"){
	        		 map[i]+="_";
	        	}else{
	            map[i]+="a";
	        	}
	        	if(a[m].seatState=="不可用"){
	        		nouse[n]="";
	        		nouse[n]+=(i+1)+"_"+(j+1);
	        		n=n+1;
	        	}
	        	m=m+1;
	        }
	    }
	
	var sc = $('#seat-map').seatCharts({
		map: map,
		naming : {
			top : false,
			getLabel : function (character, row, column) {
				return column;
			}
		},
		legend : { //定义图例
			node : $('#legend'),
			items : [
				[ 'a', 'available',   '可选座' ],
				[ 'a', 'unavailable', '已售出']
			]					
		},
		click: function () { //点击事件
			if (this.status() == 'available') { //可选座
				$('<li>'+(this.settings.row+1)+'排'+this.settings.label+'座</li>')
					.attr('id', 'cart-item-'+this.settings.id)
					.data('seatId', this.settings.id)
					.appendTo($cart);

				$counter.text(sc.find('selected').length+1);
				$total.text(recalculateTotal(sc)+price);
							
				return 'selected';
			} else if (this.status() == 'selected') { //已选中
					//更新数量
					$counter.text(sc.find('selected').length-1);
					//更新总计
					$total.text(recalculateTotal(sc)-price);
						
					//删除已预订座位
					$('#cart-item-'+this.settings.id).remove();
					//可选座
					return 'available';
			} else if (this.status() == 'unavailable') { //已售出
				return 'unavailable';
			} else {
				return this.style();
			}
		}
	});
	//已售出的座位
	sc.get(nouse).status('unavailable');
	
		
});
//计算总金额
function recalculateTotal(sc) {
	var total = 0;
	sc.find('selected').each(function () {
		total += price;
	});
			
	return total;
}


$(".checkout-button").click(function(){
	var price=$("#total").text();
	var idstr = "";
	$.each($("#selected-seats li"),function(){
		idstr += $(this).attr("id").split("cart-item-")[1]+"-";
	});
	idstr = idstr.substring(0, idstr.length-1);
	var play=${play.playId};
	var trade_no = $("#WIDout_trade_no").val();
	$.ajax({
		url:"alipay",
		type:"POST",
		data:{price:price,tickedSeats:idstr,play:play,tradeno:trade_no},
		success:function(result){
			if(result.code==100){
				$("#checkTickedA").click();
				var play = result.extend.play;
				$("#checkTickedForm input[name=hitmovieName]").val(play.hitmovie.movieName);
				$("#checkTickedForm input[name=cinemaName]").val(play.cinema.cinemaName);
				$("#checkTickedForm input[name=hallName]").val(play.cinemahall.hallName);
				$("#checkTickedForm input[name=playTime]").val(play.playTime);
				$("#checkTickedForm input[name=movieRuntime]").val(play.hitmovie.movieRuntime);
				var price = result.extend.price;
				var seat = result.extend.seat;
				$("#checkTickedForm input[name=WIDtotal_amount]").val(price);
				$("#checkTickedForm input[name=seat]").val(seat);
				
				var tickeds = result.extend.tickeds;
				$("#checkTickedForm input[tickeds]").val(tickeds);
			}else{
				alert("请先登录");
				$("#loginLi").click();
			}
		}
	});
	
});

function GetDateNow() {
	var vNow = new Date();
	var sNow = "";
	sNow += String(vNow.getFullYear());
	sNow += String(vNow.getMonth() + 1);
	sNow += String(vNow.getDate());
	sNow += String(vNow.getHours());
	sNow += String(vNow.getMinutes());
	sNow += String(vNow.getSeconds());
	sNow += String(vNow.getMilliseconds());
	document.getElementById("WIDout_trade_no").value =  sNow;
	document.getElementById("WIDsubject").value = "测试";
}
GetDateNow();


$(".delticked").click(function(){
	var trade_no = $("#WIDout_trade_no").val();
	$.ajax({
		url:"deletetickeds?trade_no="+trade_no,
		type:"POST",
		success:function(result){
			if(result.code==100){
				$(".close").click();
			}else{
				
			}
		}
	});
});
/*
$(".alipay_form").click(function(){
	var WIDsubject = $("#WIDsubject").val();
	var WIDout_trade_no = $("#WIDout_trade_no").val();
	var WIDbody = $("#WIDbody").val();
	var WIDtotal_amount = $("#WIDtotal_amount").val();
	$.ajax({
		url:"${APP_PATH}alipayjsp",
		type:"POST",
		data:$("#checkTickedForm").serialize(),
		//data:{WIDout_trade_no:WIDout_trade_no,WIDsubject:WIDsubject,WIDbody:WIDbody,WIDtotal_amount:WIDtotal_amount},
		success:function(result){
		}
	});
});
*/
</script>



</body>
</html>