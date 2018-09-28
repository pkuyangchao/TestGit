<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
<link type="text/css" rel="stylesheet" href="${APP_PATH }/static/css/carousel.css">
<link rel="stylesheet" href="${APP_PATH }/static/css/indexcss.css" />
<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/css/style-shop.css" />
<link rel="stylesheet" href="${APP_PATH }/static/css/iconfont.css" />
<script src="${APP_PATH }/static/js/jquery-1.11.1.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="${APP_PATH }/static/js/modernizr-2.6.2.min.js"></script>
<script type="text/javascript" src="${APP_PATH }/static/js/bootstrap.js" ></script>
<script type="text/javascript" src="${APP_PATH }/static/js/moviejs.js"></script>

<link href="${APP_PATH }/static/css/cropper.min.css" rel="stylesheet">
<link href="${APP_PATH }/static/css/sitelogo.css" rel="stylesheet">
<script src="${APP_PATH }/static/js/cropper.js"></script>
<script src="${APP_PATH }/static/js/sitelogo.js"></script>

<!--/web-fonts-->
<link href='http://fonts.googleapis.com/css?family=Tangerine:400,700' rel='stylesheet' type='text/css'>
<link href="http://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!--//web-fonts-->
</head>
<body>
<div class="custom-main-inner">
										<div class="custom-main-wrapper-cols">
<div class="tab" role="tabpanel">
												<div class="mod-mainRt-title">
													<!-- Nav tabs -->
													<ul class="tab-title" role="tablist">
														<li role="presentation" class="active">
															<a href="#tuijian1" aria-controls="home" role="tab" data-toggle="tab">基于用户的推荐</a>
														</li>
														<li role="presentation">
															<a href="#tuijian2" aria-controls="profile" role="tab" data-toggle="tab">基于内容的推荐</a>
														</li>
														<li role="presentation">
															<a href="#tuijian3" aria-controls="profile" role="tab" data-toggle="tab">冷推荐</a>
														</li>
													</ul>
												</div>
												<div class="mod-mainRt-con">
													<!-- Tab panes -->
													<div class="tab-content tabs">
														<div role="tabpanel" class="tab-pane fade in active" id="tuijian1">
															<div class="subscribe-updateVideo">
																<p class="sub-title">基于用户的推荐<em class="line"></em></p>
																<ul class="site-piclist piclist-160164" data-sub-group="before">
																	<c:forEach items="${recommendMovieInfo }" var="movie">
																		<li>
																		<div class="site-piclist_pic">
																			<a class="site-piclist_pic_link" href="moviesingle?movieId=${movie.movieId }" target="_blank">
																				<img style="width: 200px;height: 236px" title="${movie.movieName }" src="static${movie.movieImg }">
																				<div class="wrapper-listTitle">
																					<div class="mod-listTitle">
																						<span class="mod-listTitle_left">2018-03-06</span>
																						<span class="mod-listTitle_right">06:10</span>
																					</div>
																				</div>
																			</a>
																		</div>
																		<div class="site-piclist_info">
																			<p class="site-piclist_title">
																				<a title="${movie.movieName }" href="moviesingle?movieId=${movie.movieId }" >${movie.movieName }</a>
																			</p>
																			<div class="play-status">
																				<a class="fl" href="" target="_blank">演员</a> <span class="fr"><i class="icon_video"></i>${movie.movieType }</span></div>
																		</div>
																	</li>
																	</c:forEach>
																</ul>
															</div>

														</div>
														<div role="tabpanel" class="tab-pane fade" id="tuijian2">
															<div class="subscribe-updateVideo">
																<p class="sub-title">基于内容的推荐<em class="line"></em></p>
																<ul class="site-piclist piclist-160164" data-sub-group="before">
																	<c:forEach items="${recommendMovieInfo2 }" var="movie">
																		<li>
																		<div class="site-piclist_pic">
																			<a class="site-piclist_pic_link" href="moviesingle?movieId=${movie.movieId }" target="_blank">
																				<img style="width: 200px;height: 236px" title="${movie.movieName }" src="static${movie.movieImg }">
																				<div class="wrapper-listTitle">
																					<div class="mod-listTitle">
																						<span class="mod-listTitle_left">2018-03-06</span>
																						<span class="mod-listTitle_right">06:10</span>
																					</div>
																				</div>
																			</a>
																		</div>
																		<div class="site-piclist_info">
																			<p class="site-piclist_title">
																				<a title="${movie.movieName }" href="moviesingle?movieId=${movie.movieId }" >${movie.movieName }</a>
																			</p>
																			<div class="play-status">
																				<a class="fl" href="" target="_blank">类型</a> <span class="fr">${movie.movieType }</span></div>
																		</div>
																	</li>
																	</c:forEach>
																</ul>
															</div>
														</div>
														<div role="tabpanel" class="tab-pane fade" id="tuijian3">
															<div class="subscribe-updateVideo">
																<p class="sub-title">冷推荐<em class="line"></em></p>
																<ul class="site-piclist piclist-160164" data-sub-group="before">
																	<c:forEach items="${recommendMovieInfo3 }" var="movie" begin="0" end="24">
																		<li>
																		<div class="site-piclist_pic">
																			<a class="site-piclist_pic_link" href="moviesingle?movieId=${movie.movieId }" target="_blank">
																				<img style="width: 200px;height: 236px" title="${movie.movieName }" src="static${movie.movieImg }">
																				<div class="wrapper-listTitle">
																					<div class="mod-listTitle">
																						<span class="mod-listTitle_left">2018-03-06</span>
																						<span class="mod-listTitle_right">06:10</span>
																					</div>
																				</div>
																			</a>
																		</div>
																		<div class="site-piclist_info">
																			<p class="site-piclist_title">
																				<a title="${movie.movieName }" href="moviesingle?movieId=${movie.movieId }" >${movie.movieName }</a>
																			</p>
																			<div class="play-status">
																				<a class="fl" href="" target="_blank">类型</a> <span class="fr">${movie.movieType }</span></div>
																		</div>
																	</li>
																	</c:forEach>
																</ul>
															</div>
														</div>
														
													</div>
												</div>
											</div>
											</div>
											</div>
</body>
</html>