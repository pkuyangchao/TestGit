<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>中北影院</title>
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
	<link href="${APP_PATH }/static/css/owl.carousel.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/css/movieclasses.css" />
	<link href="${APP_PATH }/static/css/font-awesome.css" rel="stylesheet"> 
	<link rel="stylesheet" href="${APP_PATH }/static/css/indexcss.css" />
	<link rel="stylesheet" href="${APP_PATH }/static/css/singlecss.css" />
	<link rel="stylesheet" href="${APP_PATH }/static/css/iconfont.css" />
	<script type="text/javascript" src="${APP_PATH }/static/js/startScore.js"></script>
	
	<script type="text/javascript" src="${APP_PATH }/static/js/modernizr-2.6.2.min.js"></script>
	<!-- <script type="text/javascript" src="${APP_PATH }/static/js/bootstrap.js" ></script>
	 -->
	<!--/web-fonts-->
	<link href='http://fonts.googleapis.com/css?family=Tangerine:400,700' rel='stylesheet' type='text/css'>
	<link href="http://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	<!--//web-fonts-->
	
	<style type="text/css">
.block{ width:100%;float:left;}
.block .star_score{ float:left;}
.star_list{height:15px;margin:50px; line-height:16px;}
.block p,.block .attitude{ padding-left:20px; line-height:21px; display:inline-block;}
.block p span{ color:#C00; font-size:12px; font-family:Georgia, "Times New Roman", Times, serif;}
.star_score { background:url(${APP_PATH }/static/images/starky.png); width:110px; height:21px;  position:relative; }
.star_score a{ height:21px; display:block; position:absolute;left:0;}
.star_score a:hover{ background:url(${APP_PATH }/static/images/starsy.png);left:0;}
.star_score a.clibg{ background:url(${APP_PATH }/static/images/starsy.png);left:0;}
/*星星样式*/
.show_number{ padding-left:50px; padding-top:20px;}
.show_number li{ width:240px; border:1px solid #ccc; padding:10px; margin-right:5px; margin-bottom:20px;}
.atar_Show{background:url(${APP_PATH }/static/images/starky.png); width:160px; height:21px;  position:relative; float:left; }
.atar_Show p{ background:url(${APP_PATH }/static/images/starsy.png);left:0; height:21px; width:134px;}
.show_number li span{ display:inline-block; line-height:21px;}
	
	</style>
</head>
<body style="padding: 0;width: 100%;height: 100%">
<!--/main-header-->
  <!--/banner-section-->
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
			<!--/content-inner-section-->
				<div class="w3_content_agilleinfo_inner">
					<div class="agile_featured_movies">

				<!--首页电影排行-->					                    
				<div class="sy-paihang">
				    <div class="row">
				        <div class="tab" role="tabpanel">
				        <div class="site-title_left site-subTitle">
				        	<h3>
            				    <a class="j_movie_tab_header" href="" target="_blank" >
            				        <span>电影排行榜</span>
            				        <span class="icon-more">更多&gt;</span>
            				    </a>
        				    </h3>
				          <!-- Nav tabs -->
				          <ul class="nav title-subLinks dy_phb_subtab" role="tablist">
				            <li role="presentation" class="active"><a href="#Section1" aria-controls="home" role="tab" data-toggle="tab">热播榜</a></li>
				            <li role="presentation"><a href="#Section2" aria-controls="profile" role="tab" data-toggle="tab">高分榜</a></li>
				          </ul>
				          </div>
				          <div class="col-md-12">
				          <!-- Tab panes -->
				          <div class="tab-content tabs">
				            <div role="tabpanel" class="tab-pane fade in active" id="Section1">
				            	<div id="slide-box">
									<b class="corner"></b>
									<div class="slide-content" id="temp4">
										<div class="wrap">
											<ul class="JQ-slide-content blocks" style="left: 0px;top: 35px">
											<c:forEach items="${hotMovie14 }" var="hotmovie" begin="0" end="13">
												<li>
													<div class=""> <!-- class="main_img" -->
														<img width="330" height="450" src="static${hotmovie.movieImg}">
														 <div class="show">
															 <!--<span>      class="imgArea"
																<a class="movieInfo" rel="movieInfo?movieId=${hotmovie.movieId}" onclick="browsing( ${hotmovie.movieId})"
																 title="${hotmovie.movieName }" href="moviesingle?movieId=${hotmovie.movieId}">观看视频</a>
															</span> -->
														 </div>
													</div>
												
													<div class="site-piclist_info">
										        		<div class="site-title_score"> 
										        		    <span class="score">
										        		              <strong class="num">${hotmovie.movieGrade}</strong>
										        		    </span>  
										                    <div class="title">
										                        <p class="site-piclist_info_title">
										                            <a title="${hotmovie.movieName}" href="moviesingle?movieId=${hotmovie.movieId}" target="_blank">${hotmovie.movieName}</a>      
										                        </p>      
										                    </div>
										                    <p class="site-piclist_info_describe">郭富城喋血暗战</p>
										                </div>          
										        	</div>
										        	<div class="popup qy-video-info-tips j_hover_detail">
	<div class="movie_tipHd">
		<div class="movie_tipImg">
			<a href="moviesingle?movieId=${hotmovie.movieId}" target="_blank" onclick="browsing( ${hotmovie.movieId})"><img src="">
				<video class="movie_tipVideo j_movie_hover_video" style="left: 0px; top: 0px; width: 100%; height: 100%; display: block;" autoplay="" loop="" muted="" poster="static${hotmovie.movieImg}">
					<source src="static/video/5076187-1-hd.mp4" type="video/mp4">
				</video><span class="icon_hover"></span></a>
		</div>
	</div>
	<div class="movie_tipCon">
		<div class="movie_tipTitle">
			<p class="movie_tipScore">${hotmovie.movieGrade}</p>
			<a class="movie_tipName j_movie_hover_detail_play" href="moviesingle?movieId=${hotmovie.movieId}" target="_blank">${hotmovie.movieName}</a>
		</div>
		<div class="tipLableBox">
			<p class="tipLable_inner">
				<a class="tipLable" href="#">${hotmovie.movieLanguage}</a>
			</p>
			<p class="movie_tipTime" style="font-size: 12px">${hotmovie.movieRuntime}</p>
		</div>
		<div class="tip_starring">主演：
			<a class="starring_link" href="#">${hotmovie.actorName}</a>
		</div>
		<div class="tip_des">${hotmovie.movieSummary}
			<a class="tipDes_link" href="moviesingle?movieId=${hotmovie.movieId}" target="_blank" pos="3">详情&gt;</a>
		</div>
	</div>
	<div class="movie_tipBd">
		<div class="tipScore_box">
			<div class="tipScore_wrap" style="padding-left: 5px;">
			<span class="tipScore_com"></span>
					<em class="score-my-tit" style="font-size: 12px;float:left;color: #333;">我要评分:</em>
					
					<div class="startone" movieId="${hotmovie.movieId}" class="block clearfix" style="margin-top: 20px;">
					 <div class="star_score" style="float: left;"></div>
						<p style="float: left;left: 20px;font-size: 12px"><span class="fenshu"></span> 分</p>
					    <div class="attitude" style="font-size: 12px"></div>
					</div>
			</div>
		</div>
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
				            <div role="tabpanel" class="tab-pane fade" id="Section2">
				            	<div id="slide-box">
									<b class="corner"></b>
									<div class="slide-content" id="temp42">
										<div class="wrap">
											<ul class="JQ-slide-content blocks" style="left: 0px;top: 35px">
											<c:forEach items="${gradeMovie14 }" var="hotmovie" begin="0" end="13">
												<li>
													<div>
														<img width="330" height="450" src="static${hotmovie.movieImg}">
														 <div class="show">
															<!-- 
															<span class="imgArea">
																<a class="movieInfo" onclick="browsing( ${hotmovie.movieId})" title="观看视频" href="moviesingle?movieId=${hotmovie.movieId}">观看视频</a>
															</span>-->
														 </div>
													</div>
												
													<div class="site-piclist_info">
										        		<div class="site-title_score"> 
										        		    <span class="score">
										        		              <strong class="num">${hotmovie.movieGrade}</strong>
										        		    </span>  
										                    <div class="title">
										                        <p class="site-piclist_info_title">
										                            <a title="${hotmovie.movieName}" href="" target="_blank">${hotmovie.movieName}</a>      
										                        </p>      
										                    </div>
										                    <p class="site-piclist_info_describe">郭富城喋血暗战</p>
										                </div>          
										        	</div>
										        	 <div class="popup qy-video-info-tips j_hover_detail">
	<div class="movie_tipHd">
		<div class="movie_tipImg">
			<a href="moviesingle?movieId=${hotmovie.movieId}" target="_blank" onclick="browsing( ${hotmovie.movieId})"><img src="">
				<video class="movie_tipVideo j_movie_hover_video" style="left: 0px; top: 0px; width: 100%; height: 100%; display: block;" autoplay="" loop="" muted="" poster="static${hotmovie.movieImg}">
					<source src="static/video/5076187-1-hd.mp4" type="video/mp4">
				</video><span class="icon_hover"></span></a>
		</div>
	</div>
	<div class="movie_tipCon">
		<div class="movie_tipTitle">
			<p class="movie_tipScore">${hotmovie.movieGrade}</p>
			<a class="movie_tipName j_movie_hover_detail_play" href="moviesingle?movieId=${hotmovie.movieId}" target="_blank">${hotmovie.movieName}</a>
		</div>
		<div class="tipLableBox">
			<p class="tipLable_inner">
				<a class="tipLable" href="#">${hotmovie.movieLanguage}</a>
			</p>
			<p class="movie_tipTime" style="font-size: 12px">${hotmovie.movieRuntime}</p>
		</div>
		<div class="tip_starring">主演：
			<a class="starring_link" href="#">${hotmovie.actorName}</a>
		</div>
		<div class="tip_des">${hotmovie.movieSummary}
			<a class="tipDes_link" href="moviesingle?movieId=${hotmovie.movieId}" target="_blank" pos="3">详情&gt;</a>
		</div>
	</div>
	<div class="movie_tipBd">
		<div class="tipScore_box">
			<div class="tipScore_wrap" style="padding-left: 5px;">
			<span class="tipScore_com"></span>
					<em class="score-my-tit" style="font-size: 12px;float:left;color: #333;">我要评分:</em>
					
					<div class="startone" movieId="${hotmovie.movieId}" class="block clearfix" style="margin-top: 20px;">
					 <div class="star_score" style="float: left;"></div>
						<p style="float: left;left: 20px;font-size: 12px"><span class="fenshu"></span> 分</p>
					    <div class="attitude" style="font-size: 12px"></div>
					</div>
			</div>
		</div>
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
				
				<!--//首页电影排行-->
				
				<!--最新上线-->					                    
				<div class="sy-paihang">
				    <div class="row">
				        <div class="tab" role="tabpanel">
				        <div class="site-title_left site-subTitle">
				        	<h3>
            				    <a class="j_movie_tab_header" href="" target="_blank" >
            				        <span>最新上线</span>
            				        <span class="icon-more">更多&gt;</span>
            				    </a>
        				    </h3>
				          <!-- Nav tabs -->
				          <ul class="title-subLinks dy_phb_subtab2">
				            <li class="second_dy_phb_subtab"><a href="" aria-controls="home">战争片票房排行</a><span style="color: #999999;"> / </span></li>
				            <li class="second_dy_phb_subtab"><a href="">最新品质文艺片</a><span style="color: #999999;"> / </span></li>
				            <li class="second_dy_phb_subtab"><a href="">最新魔幻大片</a></li>
				          </ul>
				          </div>
				          <div class="col-md-12">
				          <!-- Tab panes -->
				          <div class="tab-content tabs">
				            <div role="tabpanel" class="tab-pane fade in active" id="Section1">
				            	<div id="slide-box">
									<b class="corner"></b>
									<div class="slide-content" id="temp5">
										<div class="wrap">
											<ul class="JQ-slide-content blocks" style="left: 0px;top:35px">
											<c:forEach items="${timeMovie14 }" var="hotmovie" begin="0" end="13">
												<li>
													<div>
														<img width="330" height="450" src="static/${hotmovie.movieImg}">
														 <div class="show">
															<!-- 
															<span class="imgArea">
																<a class="movieInfo" rel="movieInfo?movieId=${hotmovie.movieId }" title="观看视频" href="moviesingle?movieId=${hotmovie.movieId }">观看视频</a>
															</span>
															 -->
														 </div>
													</div>
												
													<div class="site-piclist_info">
										        		<div class="site-title_score"> 
										        		    <span class="score">
										        		              <strong class="num">${hotmovie.movieGrade}</strong>
										        		    </span>  
										                    <div class="title">
										                        <p class="site-piclist_info_title">
										                            <a title="${hotmovie.movieName}" href="" target="_blank">${hotmovie.movieName}</a>      
										                        </p>      
										                    </div>
										                    <p class="site-piclist_info_describe">郭富城喋血暗战</p>
										                </div>          
										        	</div>
										        	 <div class="popup qy-video-info-tips j_hover_detail">
	<div class="movie_tipHd">
		<div class="movie_tipImg">
			<a href="moviesingle?movieId=${hotmovie.movieId}" target="_blank" onclick="browsing( ${hotmovie.movieId})"><img src="">
				<video class="movie_tipVideo j_movie_hover_video" style="left: 0px; top: 0px; width: 100%; height: 100%; display: block;" autoplay="" loop="" muted="" poster="static${hotmovie.movieImg}">
					<source src="static/video/5076187-1-hd.mp4" type="video/mp4">
				</video><span class="icon_hover"></span></a>
		</div>
	</div>
	<div class="movie_tipCon">
		<div class="movie_tipTitle">
			<p class="movie_tipScore">${hotmovie.movieGrade}</p>
			<a class="movie_tipName j_movie_hover_detail_play" href="moviesingle?movieId=${hotmovie.movieId}" target="_blank">${hotmovie.movieName}</a>
		</div>
		<div class="tipLableBox">
			<p class="tipLable_inner">
				<a class="tipLable" href="#">${hotmovie.movieLanguage}</a>
			</p>
			<p class="movie_tipTime" style="font-size: 12px">${hotmovie.movieRuntime}</p>
		</div>
		<div class="tip_starring">主演：
			<a class="starring_link" href="#">${hotmovie.actorName}</a>
		</div>
		<div class="tip_des">${hotmovie.movieSummary}
			<a class="tipDes_link" href="moviesingle?movieId=${hotmovie.movieId}" target="_blank" pos="3">详情&gt;</a>
		</div>
	</div>
	<div class="movie_tipBd">
		<div class="tipScore_box">
			<div class="tipScore_wrap" style="padding-left: 5px;">
			<span class="tipScore_com"></span>
					<em class="score-my-tit" style="font-size: 12px;float:left;color: #333;">我要评分:</em>
					
					<div class="startone" movieId="${hotmovie.movieId}" class="block clearfix" style="margin-top: 20px;">
					 <div class="star_score" style="float: left;"></div>
						<p style="float: left;left: 20px;font-size: 12px"><span class="fenshu"></span> 分</p>
					    <div class="attitude" style="font-size: 12px"></div>
					</div>
			</div>
		</div>
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
				
				<!--首页图片旋转轮播-->
				<div class="poster-background poster-background-blur"></div>
				<div class="poster_title">影院推荐</div>
				
				<div class = "caroursel poster-main" data-setting = '{
					"width":1300,
					"height":270,
					"posterWidth":640,
					"posterHeight":270,
					"scale":0.8,
					"dealy":"2000",
					"algin":"middle"
				}'>
				
					<ul class = "poster-list">
						<li class = "poster-item"><a href="hitmovie"><img src="${APP_PATH }/static/mymovie/hitmovieTitles/big红海行动.jpg" width = "100%" height="100%"></a></li>
						<li class = "poster-item"><a href="hitmovie"><img src="${APP_PATH }/static/mymovie/hitmovieTitles/big后来的我们.jpg" width = "100%" height="100%"></a></li>
						<li class = "poster-item"><a href="hitmovie"><img src="${APP_PATH }/static/mymovie/hitmovieTitles/big狂暴巨兽.jpg" width = "100%" height="100%"></a></li>
						<li class = "poster-item"><a href="hitmovie"><img src="${APP_PATH }/static/mymovie/hitmovieTitles/big猫与桃花源.jpg" width = "100%" height="100%"></a></li>
						<li class = "poster-item"><a href="hitmovie"><img src="${APP_PATH }/static/mymovie/hitmovieTitles/bit唐人街探案.jpg" width = "100%" height="100%"></a></li>
						<li class = "poster-item"><a href="hitmovie"><img src="${APP_PATH }/static/mymovie/hitmovieTitles/big厉害了我的国.jpg"  width = "100%" height="100%"></a></li>
						<li class = "poster-item"><a href="hitmovie"><img src="${APP_PATH }/static/mymovie/hitmovieTitles/big头号玩家.jpg"  width = "100%" height="100%"></a></li>
					</ul>
					<div class = "poster-btn poster-prev-btn"></div>
					<div class = "poster-btn poster-next-btn"></div>
				</div>
			
				<!--//首页图片旋转轮播-->
				
				
				<!-- 即将上线 -->
				<div class="qy-mod-wrap  j_pingback_view">    
				  <div class="tab" role="tabpanel">                         
                     <div class="site-title_left site-subTitle">
				        	<h3>
            				    <a class="j_movie_tab_header" href="" target="_blank" >
            				        <span>即将上线</span>
            				    </a>
        				    </h3>
				          </div>
				   <div class="col-md-12">
				      <!-- Tab panes -->
				          <div class="tab-content tabs">
			 <div role="tabpanel" class="tab-pane fade in active" id="Section1">
				            	<div id="slide-box">
									<b class="corner"></b>
									<div class="slide-content" id="temp6">
										<div class="wrap">	          
        <div class="qy-mod-list qy-mod-list-time j_slider">
            <div class="qy-mod-img-scroll">
                <i class="qy-common-icon qy-common-pageleft42 j_slider_left" style="display: none;"></i> 
            </div> 
            <div class="line-top"></div>    
            <ul class="JQ-slide-content qy-mod-ul j_slider_list" style="width: 4200px; margin-left: 0">
			  <c:forEach items="${timeMovie14 }" var="hotmovie" begin="16" end="29" varStatus="status">
			   <li class="qy-mod-li"> 			    			                    			        			            			            			        		                                			                            <li class="qy-mod-li" data-index="" data-left="0">
                <div class="time-wrapper">
                <p class="time-label">6月${status.index }日</p> <i class="qy-common-icon qy-common-timecircle"></i>
            </div>
             <div class="qy-mod-img qy-mod-img-time vertical" >
            <div class="qy-mod-link-wrap">
                <a title="${hotmovie.movieName}" class="qy-mod-link" href="moviesingle?movieId=${hotmovie.movieId}" target="_blank">
                    <img class="qy-mod-cover" style="animation-delay: 0.668725s;width: 190px;height: 236px" src="static/${hotmovie.movieImg}">
                  </a>
            </div> 
            <div class="title-wrap">
                                                <p class="main ">
                                        <a title="" class="link-txt" href="moviesingle?movieId=${hotmovie.movieId}" target="_blank">${hotmovie.movieName}</a>
                </p> 
                            </div>
        </div>
    </li>
			</c:forEach>
			                </ul>
			                </div>
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
				
				<!-- //即将上线 -->
				
				<!--网络大电影-->
				<div class="sy-paihang">
				    <div class="row">
				        <div class="tab" role="tabpanel">
				        <div class="site-title_left site-subTitle">
				        	<h3>
            				    <a class="j_movie_tab_header" href="" target="_blank" >
            				        <span>网络大电影</span>
            				        <span class="icon-more">更多&gt;</span>
            				    </a>
        				    </h3>
				         
				          </div>
				          <div class="col-md-12">
				          <!-- Tab panes -->
				          <div class="tab-content tabs">
				            <div role="tabpanel" class="tab-pane fade in active">
				            	<div id="slide-box">
									<b class="corner"></b>
									<div class="slide-content" id="temp8">
										<div class="wrap">
											<ul class="JQ-slide-content" style="left: 0px;top:35px">
											<c:forEach items="${timeMovie14 }" var="hotmovie" begin="0" end="13">
												<li>
													<div class="main_img">
														<img width="330" height="450" src="static/${hotmovie.movieImg}">
														 <div class="show">
															<span class="imgArea">
																<a class="movieInfo" title="观看视频" href="">观看视频</a>
															</span>
														 </div>
													</div>
												
													<div class="site-piclist_info">
										        		<div class="site-title_score"> 
										        		    <span class="score">
										        		              <strong class="num">${hotmovie.movieGrade}</strong>
										        		    </span>  
										                    <div class="title">
										                        <p class="site-piclist_info_title">
										                            <a title="${hotmovie.movieName}" href="" target="_blank">${hotmovie.movieName}</a>      
										                        </p>      
										                    </div>
										                    <p class="site-piclist_info_describe">郭富城喋血暗战</p>
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

				<!--//网络大电影-->
				
				<!--周末影院-->
				<div class="sy-paihang" style="margin-top: 20px">
				    <div class="row">
				        <div class="tab" role="tabpanel">
				        <div class="site-title_left site-subTitle">
				        	<h3>
            				    <a class="j_movie_tab_header" href="" target="_blank" >
            				        <span>周末影院</span>
            				        <span class="icon-more">更多&gt;</span>
            				    </a>
        				    </h3>
				          <!-- Nav tabs -->
				          <ul class="title-subLinks dy_phb_subtab2">
				            <li class="second_dy_phb_subtab"><a href="" aria-controls="home">战争片票房排行</a><span style="color: #999999;"> / </span></li>
				            <li class="second_dy_phb_subtab"><a href="">最新品质文艺片</a><span style="color: #999999;"> / </span></li>
				            <li class="second_dy_phb_subtab"><a href="">最新魔幻大片</a></li>
				          </ul>
				          </div>
				          <div class="col-md-12">
				          <!-- Tab panes -->
				          <div class="tab-content tabs">
				            <div role="tabpanel" class="tab-pane fade in active">
				            	<div id="slide-box2">
									<div class="slide-content2" id="temp7">
										<div class="wrap">
											<ul class="JQ-slide-content" style="left: 0px;">
											<c:forEach items="${zhoumo }" begin="0" end="8" var="movie">
												<li>
												<div class="site-piclist_pic2"> 
                                                <a title="${movie.movieName }" class="site-piclist_pic_link" href="moviesingle?movieId=${movie.movieId }" target="_blank"> 
                                                   <img width="100%" height="100%" title="${movie.movieName }" alt="${movie.movieName }" src="static${movie.movieImg }">
            									   <div class="piclist_bot"> 
            									        <span class="piclist_day">周五</span>
            									     	<p title="${movie.movieName }" class="piclist_title" alt="${movie.movieName }">
            									     	  ${movie.movieName }
            									     	</p>
            										    <p title="${movie.movieDirector } 导演作品" class="piclist_tinfo" alt="${movie.movieDirector } 导演作品">${movie.movieDirector } 导演作品</p>
            									    </div>
            									    <p class="play_coverWrap"><i class="site-icons icon-play5858"></i></p>
            									</a> 
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

				<!--//专题推荐-->
				<!--大片预热-->
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
						<ul class="site-piclist site-piclist-180101-bigFont" style="height: 100%">
							<c:forEach items="${yugao }" begin="0" end="9" var="movie">
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
				<!--//大片预热-->
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


<script type="text/javascript" src="${APP_PATH }/static/js/jquery.zoomslider.min.js"></script>
		<!-- search-jQuery -->
				<script src="${APP_PATH }/static/js/main.js"></script>
			<script src="${APP_PATH }/static/js/simplePlayer.js"></script>

			<!-- pop-up-box -->  
		<script src="${APP_PATH }/static/js/jquery.magnific-popup.js" type="text/javascript"></script>
	<!--//pop-up-box 
	
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
		
	</script>-->
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
<!-- 
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>
 -->
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
	$("#temp4").Slide({
		effect : "scroolLoop",
		autoPlay:false,
    	speed : "normal",
		timer : 2000,
		steps:7
	});
	$("#temp42").Slide({
		effect : "scroolLoop",
		autoPlay:false,
    	speed : "normal",
		timer : 2000,
		steps:7
	});
	$("#temp5").Slide({
		effect : "scroolLoop",
		autoPlay:false,
    	speed : "normal",
		timer : 2000,
		steps:7
	});
	$("#temp6").Slide({
		effect : "scroolLoop",
		autoPlay:false,
    	speed : "normal",
		timer : 2000,
		steps:7
	});
	$("#temp7").Slide({
		effect : "scroolLoop",
		autoPlay:false,
    	speed : "normal",
		timer : 2000,
		steps:7
	});
	$("#temp8").Slide({
		effect : "scroolLoop",
		autoPlay:false,
    	speed : "normal",
		timer : 2000,
		steps:7
	});
	
});

function browsing(movieId){
	$.ajax({
		type: 'POST',
		url: '${APP_PATH}/browsingsave?userId=${userSession.userId}&movieId='+movieId,
		success: function(data){
		},
	});		
}

</script>

  <script> 
  		$(".tipScore_wrap").each(function(index, element) {
  			scoreFun($(this).find(".startone"),{
  	            fen_d:22,
  	            ScoreGrade:5
  	          });
  		});
  		$(".poster-item").each(function(index, element) {
  			if($(this).css('opacity') == 1){
  				var url = $(this).find("img").attr("src");
  				$(".poster-background").css('background',url);
  			}
  		});

    </script>
				
    <script>
    //显示分数
      $(".show_number li p").each(function(index, element) {
    	
        var num=$(this).attr("tip");
        var www=num*2*16;//
        $(this).css("width",www);
        $(this).parent(".atar_Show").siblings("span").text(num+"分");
    });
    
      $(".star_score a").click(function(){
  		var userId = <%=session.getAttribute("userId")%>;
  		var preference = $(".fenshu").text();
  		var movieId = $(this).parent().attr("movieId");
   		if(null!=userId){
  			$.ajax({
          		type: 'POST',
          		url: '${APP_PATH}/preferences?userId=${userSession.userId}&movieId='+movieId+'&preference='+preference,
          		success: function(data){
          			alert("评分成功，您对该电影给出的分数是："+preference);
          		},
          	});
  		}else{
  			alert("登录后，您才可以评价");
  		}
  });  
      
    </script>

</body>

</html>