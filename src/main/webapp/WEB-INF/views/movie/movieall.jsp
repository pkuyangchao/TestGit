<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>电影分类查询</title>
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
<!--分类导航-->
		<div class="site-main">
			<div class="mod_sear_menu mt20 mb30">

	<div class="mod_sear_list">
		<h3>频道：</h3>
		<ul class="mod_category_item">
			<li class="selected">
				<a href="">电影</a>
			</li>
			<li>
				<a href="">资讯</a>
			</li>
			<li>
				<a href="">片花</a>
			</li>
		</ul>
	</div>
	<div class="mod_sear_list">
		<h3>资费：</h3>
		<ul class="mod_category_item">
			<li class="selected">
				<a href="">全部</a>
			</li>
			<li>
				<a href="">免费</a>
			</li>
			<li>
				<a href="">付费</a>
			</li>
		</ul>
	</div>
	<div class="mod_sear_list  mod_sear_list_open">
		<h3>地区：</h3>
		<ul class="mod_category_item" id="countrykey_ul">
			<li class="selected">
				<a href="#">全部</a>
			</li>
			<li>
				<a href="#">中国</a>
			</li>
			<li>
				<a href="#">美国</a>
			</li>
			<li>
				<a href="#">韩国</a>
			</li>
			<li>
				<a href="#">英国</a>
			</li>
			<li>
				<a href="#">日本</a>
			</li>
			<li>
				<a href="#">泰国</a>
			</li>
			<li>
				<a href="#">印度</a>
			</li>
		</ul>
	</div>
	<div class="mod_sear_list  mod_sear_list_open">
		<h3>语言：</h3>
		<ul class="mod_category_item" id="languagekey_ul">
			<li class="selected">
				<a href="#">全部</a>
			</li>
			<li>
				<a href="#">汉语</a>
			</li>
			<li>
				<a href="#">粤语</a>
			</li>
			<li>
				<a href="#">英语</a>
			</li>
			<li>
				<a href="#">韩语</a>
			</li>
			<li>
				<a href="#">日语</a>
			</li>
			<li>
				<a href="#">泰语</a>
			</li>
			<li>
				<a href="#">瑞典语</a>
			</li>
			<li>
				<a href="#">俄语</a>
			</li>
		</ul>
	</div>
	<div class="mod_sear_list">
		<h3>类型：</h3>
		<ul class="mod_category_item" id="typekey_ul">
			<li class="selected">
				<a href="#">全部</a>
			</li>
			<li>
				<a href="#">喜剧</a>
			</li>
			<li>
				<a href="#">悲剧</a>
			</li>
			<li>
				<a href="#">爱情</a>
			</li>
			<li>
				<a href="#">动作</a>
			</li>
			<li>
				<a href="#">枪战</a>
			</li>
			<li>
				<a href="#">犯罪</a>
			</li>
			<li>
				<a href="#">惊悚</a>
			</li>
			<li>
				<a href="#">恐怖</a>
			</li>
			<li>
				<a href="#">悬疑</a>
			</li>
			<li>
				<a href="#">动画</a>
			</li>
			<li>
				<a href="#">家庭</a>
			</li>
			<li>
				<a href="#">奇幻</a>
			</li>
			<li>
				<a href="#">魔幻</a>
			</li>
			<li>
				<a href="#">科幻</a>
			</li>
			<li>
				<a href="#">战争</a>
			</li>
			<li>
				<a href="#">灾难</a>
			</li>
			<li class="close-mod_btn">
				<a><em class="vm-inline">收起</em><i class="site-icons ico-explain-t"></i></a>
			</li>
		</ul>
		<div class="openBtn">
			<a class="openBtn-txt" href="javascript:;" j-delegate="action"><em class="vm-inline">更多</em><i class="site-icons ico-explain-b"></i></a>
		</div>
	</div>
	<div class="mod_sear_list  mod_sear_list_open">
		<h3>规格：</h3>
		<ul class="mod_category_item">
			<li class="selected">
				<a href="#">全部</a>
			</li>
			<li>
				<a href="#">巨制</a>
			</li>
			<li>
				<a href="#">院线</a>
			</li>
			<li>
				<a href="#">独播</a>
			</li>
			<li>
				<a href="#">经典</a>
			</li>
			<li>
				<a href="#">口碑佳片</a>
			</li>
			<li>
				<a href="#">杜比</a>
			</li>
			<li>
				<a href="#">4K</a>
			</li>
			<li>
				<a href="#">原声</a>
			</li>
			<li>
				<a href="#">粤语</a>
			</li>
		</ul>
	</div>
	<div class="mod_sear_list ">
		<h3>我的年代：</h3>
		<ul class="mod_category_item" id="timekey_ul">
			<li class="selected">
				<a href="#">全部</a>
			</li>
			<li>
				<a href="#">2018</a>
			</li>
			<li>
				<a href="#">2017</a>
			</li>
			<li>
				<a href="#">2016</a>
			</li>
			<li>
				<a href="#">2015-2011</a>
			</li>
			<li>
				<a href="#">2010-2000</a>
			</li>
			<li>
				<a href="#">1990-2000</a>
			</li>
			<li>
				<a href="#">1980-1990</a>
			</li>
			<li>
				<a href="#">其他</a>
			</li>
		</ul>
	</div>
	<div class="mod_sear_list">
		<h3>类型：</h3>
		<ul class="mod_category_item" id="actorkey_ul">
			<li class="selected">
				<a href="#">全部</a>
			</li>
			<li>
				<a href="#">林正英</a>
			</li>
			<li>
				<a href="#">周星驰</a>
			</li>
			<li>
				<a href="#">李连杰</a>
			</li>
			<li>
				<a href="#">成龙</a>
			</li>
			<li>
				<a href="#" >周润发</a>
			</li>
			<li>
				<a href="#" >吴京</a>
			</li>
			<li>
				<a href="#">刘德华</a>
			</li>
			<li>
				<a href="#">洪金宝</a>
			</li>
			<li>
				<a href="#">王宝强</a>
			</li>
			<li>
				<a href="#">杰森斯坦森</a>
			</li>
			<li>
				<a href="#">任达华</a>
			</li>
			<li>
				<a href="#">陈小春</a>
			</li>
		</ul>
		
	</div>
</div>
</div>
<!--//分类导航结束-->
<!--特定分类排序-->
			<div class="mb15 clearfix">
	<div class="sort-result-container">
		<div class="sort-result-l">
			<div class="sort-result-l  border-n fl mt5" id="order">
				<em class="vm-inline c-999">排序：</em>
				<a id="comment_count" title="按热门排序" class="checkBox-item ml5 selected" select="selected" href="#">
					<span class="search-checkBox"><i class="search-checkBox-inner"></i></span>
					<em class="vm-inline">热门</em>
				</a>
				<a id="movie_showtime" title="按更新时间排序" class="checkBox-item  ml5" href="#">
					<span class="search-checkBox"><i class="search-checkBox-inner"></i></span>
					<em class="vm-inline">更新时间</em>
				</a>
				<a  id="movie_grade" title="按评分排序" class="checkBox-item ml5" href="#">
					<span class="search-checkBox"><i class="search-checkBox-inner"></i></span>
					<em class="vm-inline">评分</em>
				</a>
			</div>

		</div>
	</div>
</div>
<!--//特定分类排序结束-->

			<!--/content-inner-section-->
				<div class="w3_content_agilleinfo_inner">
					<div class="agile_featured_movies">
						
					<iframe id="tv_movies" src="movieallpage?typekey=${typekey }&languagekey=${languagekey }&timekey=全部&countrykey=${countrykey }&actorkey=${actorkey }" frameborder="no" style="width: 1500px;height:1300px" 
					scrolling="no"></iframe>
					
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
			<script type="text/javascript">
		jQuery(function(){
			
			$(".mod_category_item a").click(function(){
				
				$(this).parent().siblings('li').removeClass('selected');
				$(this).parent().siblings('li').find('a').removeClass('selected');
				$(this).parent().addClass("selected");
				var title = $(this).html();
				$(this).attr('title',title);
				$(this).addClass("selected");
				var type = $(this).parent().parent().attr("id");
				
				var typekey = $("#typekey_ul li[class=selected]").find('a').html();
				var languagekey = $("#languagekey_ul li[class=selected]").find("a").html();
				var timekey = $("#timekey_ul li[class=selected]").find("a").html();
				var actorkey = $("#actorkey_ul li[class=selected]").find("a").html();
				var countrykey = $("#countrykey_ul li[class=selected]").find("a").html();
				var order = $("#order a[select=selected]").attr("id");
				//alert(typekey+","+languagekey+","+actorkey+","+countrykey+","+order);
				
				$("#tv_movies").attr("src","movieallpage?typekey="+typekey+"&languagekey="+languagekey+"&timekey="+timekey+"&actorkey="+
						actorkey+"&countrykey="+countrykey+"&order="+order);
			});
			
			$("#order a").click(function(){
				$(this).siblings('a').removeClass('selected');
				$(this).siblings('a').attr('select','noselected');
				$(this).addClass("selected");
				$(this).attr('select','selected');
				var typekey = $("#typekey_ul li[class=selected]").find('a').html();
				var languagekey = $("#languagekey_ul li[class=selected]").find("a").html();
				var timekey = $("#timekey_ul li[class=selected]").find("a").html();
				var actorkey = $("#actorkey_ul li[class=selected]").find("a").html();
				var countrykey = $("#countrykey_ul li[class=selected]").find("a").html();
				var order = $("#order a[select=selected]").attr("id");
				//alert(typekey+","+languagekey+","+actorkey+","+countrykey+","+order);
				
				$("#tv_movies").attr("src","movieallpage?typekey="+typekey+"&languagekey="+languagekey+"&timekey="+timekey+"&actorkey="+
						actorkey+"&countrykey="+countrykey+"&order="+order);
			});
		})
	
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
<script src="js/easy-responsive-tabs.js"></script>
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
<!--end-smooth-scrolling-->
	<script src="${APP_PATH }/static/js/bootstrap.js"></script>
	
</body>
</html>