<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>院线电影</title>
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
<link href="${APP_PATH }/static/css/font-awesome.css" rel="stylesheet"> 
<link type="text/css" rel="stylesheet" href="${APP_PATH }/static/css/owl.carousel.css">
<link rel="stylesheet" href="${APP_PATH }/static/css/indexcss.css" />

<script type="text/javascript" src="${APP_PATH }/static/js/modernizr-2.6.2.min.js"></script>
<script type="text/javascript" src="${APP_PATH }/static/js/bootstrap.js" ></script>
<script type="text/javascript" src="${APP_PATH }/static/js/jquery.min.js" ></script>
<script type='text/javascript' src='${APP_PATH }/static/js/carousel1.js'></script>
</head>
<body>

<div id="carousel1" name="0">
		<%@ include file="/WEB-INF/views/common/header3.jsp"%>
	<div class="car_bigp">
		<img style="display:block;height: 600px;width: 1600px" src="${APP_PATH }/static/mymovie/hitmovieTitles/bg狂暴巨兽.jpg"/>
		<img style="height: 600px;width: 1600px" src="${APP_PATH }/static/mymovie/hitmovieTitles/bg头号玩家.jpg"/>
		<img style="height: 600px;width: 1600px" src="${APP_PATH }/static/mymovie/hitmovieTitles/bg西北风云.jpg"/>
		<img style="height: 600px;width: 1600px" src="${APP_PATH }/static/mymovie/hitmovieTitles/bg寻找罗麦.jpg"/>
		<img style="height: 600px;width: 1600px" src="${APP_PATH }/static/mymovie/hitmovieTitles/bg蒂姆连森.jpg"/>
	</div>
	<div class="car_click">
		<div class="car_c_title">
			<p></p>
		</div>
		<div class="car_c_smallpic">
			<input class="car_c_inpt1" type="button"/>
			<img style="border:solid 2px Darkorange;height: 50px;width: 65px" src="${APP_PATH }/static/mymovie/hitmovieTitles/bg狂暴巨兽.jpg"/>
			<img style="height: 50px;width: 65px" src="${APP_PATH }/static/mymovie/hitmovieTitles/bg头号玩家.jpg"/>
			<img style="height: 50px;width: 65px" src="${APP_PATH }/static/mymovie/hitmovieTitles/bg西北风云.jpg"/>
			<img style="height: 50px;width: 65px" src="${APP_PATH }/static/mymovie/hitmovieTitles/bg寻找罗麦.jpg"/>
			<img style="height: 50px;width: 65px" src="${APP_PATH }/static/mymovie/hitmovieTitles/bg蒂姆连森.jpg"/>
			<input class="car_c_inpt2" type="button"/>
		</div>
	</div>

</div>
<div class="w3_content_agilleinfo_inner" style="padding-left: 10px;padding-right: 10px">
					<div class="agile_featured_movies">

			
				<div class="wrapper-cols j_pingback_view">
	<div class="site-main-outer">
		<div class="site-main-inner site-main-inner-400">
			<div class="site-title2 site-subTitle">
				<div class="site-title_left">
					<h3>
	            <a style="cursor:default;">
	                	                    <span>正在热映</span>
	                	                    <span class="icon-more">更多&gt;</span>
	                                                    </a>
            </h3>
				</div>
			</div>
			<div class="site-main-outer" style="padding-left: 20px;">
				<div class="site-main-inner">
					 <div class="tab-content tabs">
				            <div role="tabpanel" class="tab-pane fade in active" id="Section1">
				            	<div id="slide-box">
									<b class="corner"></b>
									<div class="slide-content" id="temp4">
										<div class="wrap" style="height: 285px">
											<ul class="JQ-slide-content" style="left: 0px;">
											<c:forEach items="${hitmovie}" var="hitmovie" begin="0" end="4">
												<li class="list_item">
												<div class="main_img">
													<img width="330" height="450" src="static${hitmovie.movieImg }"/>
													<div class="show">
															<span class="imgArea">
																<a title="购票" href="ticked?hitmovieId=${hitmovie.movieId }">购票</a>
															</span>
														 </div>
													</div>
													<div class="site-piclist_info">
										        		
										        		<div class="site-title_score"> 
										        		    <span class="score">
										        		              <strong class="num">${hitmovie.movieGrade }</strong>
										        		    </span>  
										                    <div class="title">
										                        <p class="site-piclist_info_title">
										                            <a title="${hitmovie.movieName}" href="" target="_blank">${hitmovie.movieName}</a>      
										                        </p>      
										                    </div>
										                    <p class="site-piclist_info_describe">${hitmovie.lookCount}人想看</p>
										                </div>          
										        	</div>
												</li>
											</c:forEach>
											</ul>
										</div>
										
									</div>
									<b class="corner"></b>
								</div>
				            </div>
				           
				          </div>
						 <div class="tab-content tabs">
				            <div role="tabpanel" class="tab-pane fade in active" id="Section1">
				            	<div id="slide-box">
									<b class="corner"></b>
									<div class="slide-content" id="temp4">
										<div class="wrap" style="height: 285px">
											<ul class="JQ-slide-content" style="left: 0px;">
											<c:forEach items="${hitmovie}" var="hitmovie" begin="5" end="9">
												<li class="list_item">
												<div class="main_img">
													<img width="330" height="450" src="static${hitmovie.movieImg }"/>
													<div class="show">
															<span class="imgArea">
																<a title="购票" href="ticked?hitmovieId=${hitmovie.movieId }">购票</a>
															</span>
														 </div>
													</div>
													<div class="site-piclist_info">
										        		<div class="site-title_score"> 
										        		    <span class="score">
										        		              <strong class="num">${hitmovie.movieGrade }</strong>
										        		    </span>  
										                    <div class="title">
										                        <p class="site-piclist_info_title">
										                            <a title="${hitmovie.movieName}" href="" target="_blank">${hitmovie.movieName}</a>      
										                        </p>      
										                    </div>
										                    <p class="site-piclist_info_describe">${hitmovie.lookCount}人想看</p>
										                </div>          
										        	</div>
												</li>
											</c:forEach>
											</ul>
										</div>
										
									</div>
									<b class="corner"></b>
								</div>
				            </div>
				           
				          </div>
				</div>
			</div>
			
		</div>
	</div>
	<div class="site-main-side site-main-side-400 j_pingback_view">
		<div class="site-title2 site-subTitle">
			<div class="site-title_left">
				<h3>
	            <a style="cursor:default;">
	                	                    <span>历史票房 TOP10</span>
	                                                    </a>
            </h3>
			</div>
		</div>
		<div class="pr15">
			<div class="topList_nub-dy">
				<ul class="topList_dyUl">
						<c:forEach items="${hotmovie }" var="hitmovie" begin="1" end="10" varStatus="status">
							<li>
							<c:if test="${status.index le 3}">
							
								<i class="topList_dy_nub topList_dy_nubH">${status.index}</i>
								<a class="topList_dy_title" href="moviesingle?movieId=${hitmovie.movieId }" target="_blank">${hitmovie.movieName }</a>
								<span class="topList_playNub">${hitmovie.commentCount }</span>
							</c:if>
							<c:if test="${status.index ge 4}">
								<i class="topList_dy_nub">${status.index}</i>
								<a class="topList_dy_title" href="moviesingle?movieId=${hitmovie.movieId }" target="_blank">${hitmovie.movieName }</a>
								<span class="topList_playNub">${hitmovie.commentCount }</span>
							</c:if>
							</li>	
						</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</div>
				
				
				<div class="wrapper-cols j_pingback_view">
	<div class="site-main-outer">
		<div class="site-main-inner site-main-inner-400">
			<div class="site-title2 site-subTitle">
				<div class="site-title_left">
					<h3>
	            <a style="cursor:default;">
	                	                    <span>大片预热</span>
	                                                    </a>
            </h3>
				</div>
			</div>
			<div class="site-main-outer">
				<div class="site-main-inner">
					<div class="wrapper-piclist">
						<ul class="site-piclist site-piclist-180101-bigFont">
							<c:forEach items="${yugao }" begin="0" end="4" var="movie">
								<li>
								<div class="site-piclist_pic">
									<a title="《${movie.movieName }》爆正式预告" class="site-piclist_pic_link" href="" target="_blank">
										<img width="100%" height="100%" alt="《${movie.movieName }》爆正式预告" src="static${movie.movieImg }">
										<p class="play_coverWrap"><i class="site-icons icon-play5858"></i></p>
									</a>
								</div>
								<div class="site-piclist_info">
									<p class="site-piclist_info_title">
										<a title="《${movie.movieName }》爆正式预告" href="single?movieId=${movie.movieId }" target="_blank">
											《${movie.movieName }》爆正式预告
										</a>
									</p>
									<p class="site-piclist_info_describe">超燃预告炸裂全场</p>
								</div>
							</li>
							</c:forEach>
						</ul>
					</div>
					<div class="wrapper-piclist">
						<ul class="site-piclist site-piclist-180101-bigFont">
							<c:forEach items="${yugao }" begin="5" end="9" var="movie">
								<li>
								<div class="site-piclist_pic">
									<a title="《${movie.movieName }》爆正式预告" class="site-piclist_pic_link" href="" target="_blank">
										<img width="100%" height="100%" alt="《${movie.movieName }》爆正式预告" src="static${movie.movieImg }">
										<p class="play_coverWrap"><i class="site-icons icon-play5858"></i></p>
									</a>
								</div>
								<div class="site-piclist_info">
									<p class="site-piclist_info_title">
										<a title="《${movie.movieName }》爆正式预告" href="single?movieId=${movie.movieId }" target="_blank">
											《${movie.movieName }》爆正式预告
										</a>
									</p>
									<p class="site-piclist_info_describe">超燃预告炸裂全场</p>
								</div>
							</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
			
		</div>
	</div>
	<div class="site-main-side site-main-side-400 j_pingback_view">
		<div class="site-title2 site-subTitle">
			<div class="site-title_left">
				<h3>
	            <a style="cursor:default;">
	                	                    <span>昨日票房 TOP5</span>
	                                                    </a>
            </h3>
			</div>
		</div>
		<div class="pr15">
			<div class="topList_nub-dy">
				<ul class="topList_dyUl">
						<c:forEach items="${hitmovie }" var="hitmovie" begin="1" end="5" varStatus="status">
						<li>
						<i class="topList_dy_nub topList_dy_nubH">${status.index}</i>
						<a class="topList_dy_title" href="ticked?hitmovieId=${hitmovie.movieId }" target="_blank">${hitmovie.movieName }</a>
						<span class="topList_playNub">${hitmovie.lookCount }</span>
					  </li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</div>
			
				<!--最新上线-->					                    
				<div class="sy-paihang">
				    <div class="row">
				        <div class="tab" role="tabpanel">
				        <div class="site-title_left site-subTitle">
				        	<h3>
            				    <a class="j_movie_tab_header" href="" target="_blank" >
            				        <span>即将上线</span>
            				        <span class="icon-more">更多&gt;</span>
            				    </a>
        				    </h3>
				         
				          </div>
				          <div class="col-md-12">
				          <!-- Tab panes -->
				          <div class="tab-content tabs">
				            <div role="tabpanel" class="tab-pane fade in active" id="Section1">
				            	<div id="slide-box">
									<b class="corner"></b>
									<div class="slide-content" id="temp">
										<div class="wrap">
											<ul class="JQ-slide-content" style="left: 0px;">
											<c:forEach items="${hitmovie}" var="hitmovie">
												<li class="list_item">
												<div class="main_img">
													<img width="330" height="450" src="static${hitmovie.movieImg }"/>
													<div class="show">
															<span class="imgArea">
																<a title="预定" href="ticked?hitmovieId=${hitmovie.movieId }">预定</a>
															</span>
														 </div>
													</div>
													<div class="site-piclist_info">
										        		<div class="site-title_score"> 
										        		    <span class="score">
										        		              <strong class="num">${hitmovie.movieGrade }</strong>
										        		    </span>  
										                    <div class="title">
										                        <p class="site-piclist_info_title">
										                            <a title="${hitmovie.movieName}" href="" target="_blank">${hitmovie.movieName}</a>      
										                        </p>      
										                    </div>
										                    <p class="site-piclist_info_describe">${hitmovie.lookCount}人想看</p>
										                </div>          
										        	</div>
												</li>
											</c:forEach>
											</ul>
										</div>
										<div class="JQ-slide-nav">
											<a class="prev" href="#">
												<b class="corner"></b>
												<span>‹</span>
												<b class="corner"></b>
											</a>
											<a class="next" href="#">
												<b class="corner"></b>
												<span>›</span>
												<b class="corner"></b>
											</a>
										</div>
									</div>
									<b class="corner"></b>
								</div>
				            </div>
				       
				          </div>
				          </div>
				        </div>
				    </div>
				  </div>

				<!--//最新上线-->
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
<script type="text/javascript" src="${APP_PATH }/static/js/jq.Slide.js"></script>
<script type="text/javascript">
$(function(){
	$("#temp").Slide({
		effect : "scroolLoop",
		autoPlay:false,
    	speed : "normal",
		timer : 2000,
		steps:7
	});
});
</script>
</body>
</html>