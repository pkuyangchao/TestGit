<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<title>电影详情页</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- //for-mobile-apps -->
<link href="${APP_PATH }/static/css/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />
<!-- pop-up -->
<link href="${APP_PATH }/static/css/popuo-box.css" rel="stylesheet"
	type="text/css" media="all" />
<!-- //pop-up -->
<link href="${APP_PATH }/static/css/easy-responsive-tabs.css"
	rel='stylesheet' type='text/css' />
<link rel="stylesheet" type="text/css"
	href="${APP_PATH }/static/css/zoomslider.css" />
<link rel="stylesheet" type="text/css"
	href="${APP_PATH }/static/css/style.css" />
<link href="${APP_PATH }/static/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="${APP_PATH }/static/css/singlecss.css" />
<link rel="stylesheet" href="${APP_PATH }/static/css/iconfont.css" />
<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/manage/lib/Hui-iconfont/1.0.8/iconfont.css" />

<script type="text/javascript"
	src="${APP_PATH }/static/js/modernizr-2.6.2.min.js"></script>
<!--/web-fonts-->
<link href='http://fonts.googleapis.com/css?family=Tangerine:400,700'
	rel='stylesheet' type='text/css'>
<link
	href="http://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900"
	rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<!--//web-fonts-->
<style type="text/css">
.tab {
	width: 100%;
}

.tab-hd {
	/*background:#F93;*/
	overflow: hidden;
	zoom: 1;
	position: relative;
	width: 100%;
	overflow: hidden;
}

.tab-hd li {
	float: left;
	width: 150px;
	color: #fff;
	text-align: center;
	cursor: pointer;
}

.tab-hd li.active {
	border-bottom: 3px solid #ff6428;
	margin-bottom: 0px;
}

.tab-bd li {
	display: none;
	border-top: 0 none;
	font-size: 24px;
}

.tab-bd li.thisclass {
	display: list-item;
}

.tab-hd.item {
	position: relative;
	display: inline-block;
	*display: inline:;
	*zoom: 1:;
	width: 145px;
	height: 90px;
	padding-left: 100px;
	font-size: 13px;
	cursor: default;
	padding-bottom: 8px;
	margin-bottom: 3px;
	letter-spacing: normal;
	vertical-align: top;
}

.tab-hd .item {
	position: relative;
	display: inline-block;
	*display: inline:;
	*zoom: 1:;
	width: 145px;
	height: 90px;
	padding-left: 100px;
	font-size: 13px;
	cursor: default;
	padding-bottom: 8px;
	margin-bottom: 3px;
	letter-spacing: normal;
	vertical-align: top;
}

.tab-hd .item {
	width: 162px;
	height: 60px;
	padding-left: 70px;
}

.tab-hd .img img {
	border-radius: 50%;
	width: 100%;
	height: 100%;
}

.tab-hd .img {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 60px;
	height: 60px;
	overflow: hidden;
	background-color: #fff;
	border-radius: 100%;
	opacity: 0.6;
}

.tab-hd li.active .img {
	opacity: 1;
}

.tab-hd .name {
	display: block;
	margin-right: 5px;
	margin-top: 24px;
	line-height: 20px;
	font-size: 16px;
	color: #202020;
	font-weight: 400;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

.tab-bd {
	position: relative;
	zoom: 1;
	margin-top: 10px;
}

.figure_scroll .mod_critics_list, .figure_scroll .mod_figure,
	.figure_scroll .mod_friend_list {
	position: relative;
	width: 100%;
	overflow: hidden;
	zoom: 1;
}

.mod_figure_h_default {
	margin-right: 0px;
}

#slide-box {
	width: 100%;
	position: relative;
	height: 100%;
}

#slide-box .corner {
	clear: both;
	display: block;
	overflow: hidden;
	height: 0;
	margin: 0 1px;
}

#slide-box .JQ-slide-content {
	position: absolute;
}

#slide-box .JQ-slide-nav a {
	display: block;
	z-index: 99;
	width: 36px;
	color: #b4b4b4;
	position: absolute;
	top: 35%;
	height: 36px;
	text-decoration: none;
}

#slide-box .JQ-slide-nav span {
	display: block;
	font: 700 53px arial;
	width: 37px;
	cursor: pointer;
	height: 63px;
	text-align: center;
}

#slide-box .JQ-slide-nav .prev {
	left: -10px;
}

#slide-box .JQ-slide-nav .next {
	right: -10px;
}

#slide-box .wrap {
	overflow: hidden;
	width: 100%;
	height: 239px;
	position: relative;
}

#slide-box ul {
	width: 10000px;
}

#slide-box li {
	float: left;
	width: 162px;
	height: 194px;
	display: inline-block;
	margin: 0px 18px 0 0;
}

#slide-box li img {
	width: 162px;
	height: 194px;
}

#slide-box .JQ-slide-nav a:hover, #slide-box .JQ-slide-nav a:hover span
	{
	color: #f43d1e;
}
.block{ width:100%;margin-top:-25px;padding-left:50px; line-height:21px;}
.block .star_score{ float:left;}
.star_list{height:21px;margin:50px; line-height:21px;}
.block p,.block .attitude{ padding-left:20px; line-height:21px; display:inline-block;}
.block p span{ color:#C00; font-size:16px; font-family:Georgia, "Times New Roman", Times, serif;}
.star_score { background:url(${APP_PATH }/static/images/starky.png); width:160px; height:21px;  position:relative; }
.star_score a{ height:21px; display:block; text-indent:-999em; position:absolute;left:0;}
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
<body class="single-page">
	<div>
		<!--/content-inner-section-->
		<div class="w3_content_agilleinfo_inner" style="padding: 0;">

			<div class="agile_featured_movies" style="padding: 0;">

				<div class="show-info" style="width: 100%;">
						<%@ include file="/WEB-INF/views/common/header2.jsp"%>
			
				
					<div class="show-info-container">
						<div style="width: 100%; height: 70%;margin-top: 50px" >
							<div class="col-md-9 latest-news-agile-left-content">
								<div class="single video_agile_player">

									<div class="video-grid-single-page-agileits">
										<div id="video">
											<video width="1025" height="542" controls="controls">
											
											  <source src="${APP_PATH }/static/video/5076187-1-hd.mp4" type="video/mp4">
											</video>
																					</div>
									</div>
									<div class="single-agile-shar-buttons">

										<div class="action_wrap cf">
											<div class="action_item action_count">
												<a class="action_title" href=""> <i
													class="icon_sm icon_play_sm"></i><span class="icon_text"><em
														class="num" id="mod_cover_playnum">${movie.commentCount }万</em>次专辑播放</span>
												</a>
											</div>
											<style>
												.action_count .icon_down, .action_count .triangle_up {
													display: none;
												}
												
												.action_count .action_title:hover {
													color: #999;
													cursor: default;
												}
												</style>
											<div class="action_item action_share">
												<a class="action_title" href=""><i
													class="icon_sm icon_share_sm iconfont icon-msnui-sns"></i><span
													class="icon_text">分享</span><i class="triangle_up"></i></a>
											</div>

											<div class="action_item action_download">
												<a title="下载本视频" class="action_title"
													href=""> <i
													class="icon_sm icon_dl_sm iconfont icon-xiazai"></i><span
													class="icon_text">下载</span><i class="triangle_up"></i>
												</a>

											</div>
											<div class="action_item action_gift">
												<a class="action_title" href=""><i
													class="icon_sm icon_gift_sm"></i><span class="icon_text">赠片</span><i
													class="triangle_up"></i></a>
											</div>


										</div>
									</div>

								</div>
							</div>
							<div class="col-md-3">
								<div class="pre-scrollable" style="height: 100%;">

									<div class="mod_player_side">

										<div class="player_side_bd">
											<div class="panel_body panel_body_1">
												<div class="scroll_top vip_show">
													<div class="player_header player_header_simple">
														<h2 class="player_title">
															<i class="mark_vip_text">VIP</i><a href="single?movieId=${movie.movieId }"
																target="_blank">${movie.movieName }</a>
														</h2>
														<a title="加入收藏" class="btn_collect" href="javascript:">
															<i class="icon icon_collect iconfont icon-attend"> </i>
														</a>
													</div>
												</div>

												<div class="scroll_wrap" id="video_scroll_wrap">
													<div class="mod_side_vip" id="_vip_player_sec">
														<div class="vertical_center_box">
															<a class="btn_vip_normal vip_minipay_click"href=""> <i
																class="icon icon_vip_star"></i> <span class="icon_text">
																	开通VIP会员 </span> <span class="tips_promotion"> <span
																	class="inner" style="max-width: 103px">VIP仅18元/月</span>
															</span>
															</a>
														</div>
														
													</div>
													<div style="margin-top: 30px">
														<div class="mod_episode_filter _page_list"></div>
														<div class="mod_figure mod_figure_list mod_figure_list_sm">
															<ul class="figure_list" id="_pic_title_list_ul">

																<li class="list_item current" id="m00263hnfo0"
																	data-title="${movie.movieName }"><a class="figure"
																	href=""> <img class="figure_pic" alt="${movie.movieName }"
																		src="static${movie.movieImg }">
																		<div class="figure_count">
																			<span class="num">${movie.movieRuntime }</span>
																		</div>
																</a> <a title="${movie.movieName }" class="figure_detail" href=""
																	target="_blank">
																		<div class="figure_detail_three_row">
																			<strong class="figure_title"> ${movie.movieName } </strong>

																			<div class="figure_desc">${movie.movieShowtime } ${movie.movieCountry }</div>

																		</div>
																		<div class="figure_num">
																			<i class="icon_xs triangle_next_xs"><i
																				class="icon_xs triangle_next_xs"></i></i><span
																				class="num">${movie.commentCount }人次</span>
																		</div>
																</a></li>
															</ul>

														</div>
														<div class="mod_title">${movie.movieName }的精彩周边（6）</div>
														<div class="mod_figure mod_figure_list mod_figure_list_sm">
															<ul class="figure_list">
															   <c:forEach items="${hotmovie }" begin="0" end="5" var="hotmovie">
															   	   <li class="list_item" id="j0518pikblf"><a
																	class="figure"
																	href="moviesingle?movieId=${hotmovie.movieId }"
																	target="_blank"> <img
																		class="figure_pic"
																		alt="${movie.movieName }另类彩蛋 休·格兰特上演狱中舞蹈秀"
																		src="static${hotmovie.movieImg }">
																		<div class="figure_count">
																			<span class="num">01:11</span>
																		</div>
																</a> <a title="${movie.movieName }另类彩蛋 休·格兰特上演狱中舞蹈秀"
																	class="figure_detail" href="moviesingle?movieId=${hotmovie.movieId }"
																	target="_blank"> <span
																		class="figure_detail_two_row"> <strong
																			class="figure_title"> 《${movie.movieName }》另类彩蛋
																				休·格兰特上演狱中舞蹈秀 </strong>
																	</span>

																		<div class="figure_num">
																			<i class="icon_xs triangle_next_xs"><i
																				class="icon_xs triangle_next_xs"></i></i><span
																				class="num">${hitmovie.commentCount}</span>
																		</div>
																</a></li>
																
															   </c:forEach>
																
															</ul>
														</div>

													</div>

												</div>
											</div>
											<div class="panel_body panel_body_2" id="mod_active_content"
												style="display: none;"></div>

										</div>
										<div class="mod_barrage_list none" id="barrage_container"></div>
									</div>
								</div>

							</div>
						</div>
						<!--影片标题-->
						<div class="mod-breadcrumb" id="block-C">
							<div class="wrapper wrapper-dianying">
								<div class="clearfix">
									<div class="wrapper-left">
										<div class="mod-breadcrumb_left">
											<div class="mod-play-tits clearfix">

												<h1 class="mod-play-tit play-tit-width">
													<span>${movie.movieName }</span>
												</h1>

												<div class="mod-score-show J-movieScore" style="float: left">
													<span class="score-new" style="float: left" id="playerAreaScore">
													<span class="num" >${movie.movieGrade }</span></span> 
													<span class="score-user-num" style="float: left">189.5万人评分</span> <i
														class="score-split-line" style="float: left;margin-top: 10px" ></i>
													<div class="score-my" style="float: left">
														<em class="score-my-tit" data-my-score="tit">我要评分</em>
														<div id="startone"  class="block clearfix" style="float: left">
													          <div class="star_score"></div>
													          <p><span class="fenshu" style="float: left"></span> 分</p>
													        
													    </div>
														 
													</div>
												</div>

											</div>
											<div class="mod-crumb_ft clearfix">
												<div class="mod-crumb_bar">
													<div class="mod-source-v1">
														<!-- 展开时添加类名playNums-hover -->
														<div class="playNums fl" id="playcountWrapper" rseat="播放"
															>
															<a class="mod-play-source" id="chartTrigger"
																href="javascript:void(0);"> <i
																class="site-icons-play source-play-ico"
																></i> <span id="widget-playcount"
																>1.1亿</span><b></b>
															</a>
														</div>
														<div class="progInfo_msg fl">
															
														</div>
													</div>

													<span class="mod-tags_item" id="datainfo-taglist"> <a
														title="华语" id="thirdPartyTagList"
														href=""
														target="_blank" rseat="bread3_1">华语</a> <a title="爱情"
														href=""
														target="_blank" rseat="bread3_2">爱情</a> <a title="喜剧"
														href=""
														target="_blank" rseat="bread3_3">喜剧</a>

													</span>

												</div>

											</div>
										</div>
									</div>

									<!-- pc -->
									<div class="wrapper-right rightPCAdv j_pca_pb" id="j_pca_pc">
										<a title="广告"
											class="mod-appDownload mod-appDownload-link"
											href="#"
											>
											<img class="rightPCAdv-img j_pca_img" alt=""
											src="static/mymovie/adTitles/ad5.jpg"
											>
										</a>
									</div>

								</div>

								
							</div>
						</div>
						<!--//影片标题-->
						<div class="clear2"></div>
					</div>
				</div>

				<!--播放页下半部分-->
				<div class="site_container container_main">
					<div class="container_inner">
						<div class="wrapper">
							<div class="wrapper_main" id="leftdown_content">

								<div class="mod_row_box">
									<div class="mod_hd">
										<div class="mod_title">
											<h2 class="title">${movie.movieName } 简介</h2>
										</div>
									</div>
									<div class="mod_bd">
										<ul class="intro_content">
											<li class="mod_summary intro_item">


												<div class="director">
													导演: <a href="" target="_blank">${movie.movieDirector }</a>&nbsp;&nbsp;&nbsp;
													演员: <a href="" target="_blank">本·威士肖</a>/<a
														href="" target="_blank">休·格兰特</a>/<a
														href="" target="_blank">莎莉·霍金斯</a>/<a
														href="" target="_blank">休·博内威利</a>/<a
														href="" target="_blank">布莱丹·格里森</a>
												</div>

												<div class="video_summary">
													<p class="summary">${movie.movieSummary }</p>
													<span id="moreHref" class="expend_more more">详情<i class="Hui-iconfont">&#xe6d5;</i></span>
													<span id="lessHref" style="display: none" class="expend_more more">收起<i class="Hui-iconfont">&#xe6d6;</i></span>
												</div>
											</li>
										</ul>
									</div>
								</div>
								<script type="text/javascript">
								$("#moreHref").click(function(){
									$(this).parent().css('max-height', 'none');
									$(this).css('display','none');
									$("#lessHref").css('display','block');
										
								});
								$("#lessHref").click(function(){
									$(this).parent().css('max-height', '48px');
									$(this).css('display','none');
									$("#moreHref").css('display','block');
								});
																
								</script>

								<div class="mod_row_box mod_row_box_casts">
									<div class="mod_hd">
										<div class="mod_title">
											<h2 class="title">
												<span>${movie.movieName } 主演</span>
											</h2>
										</div>
									</div>
									<div class="mod_bd">

										<div class="tab">
											<ul class="tab-hd">
												<li class="active">
													<div class="item" id="_a_84861">
														<a class="img" href="" target="_blank"><img
															src="${APP_PATH }/static/mymovie/actorTitle/胡歌.jpg"></a>
														<a title="本·威士肖" class="name" href="" target="_blank">
															本·威士肖 </a>
													</div>
												</li>
												<li>
													<div class="item" id="_a_71559">
														<a class="img" href="" target="_blank"><img
															src="${APP_PATH }/static/mymovie/actorTitle/安吉丽娜.jpg"></a>
														<a title="休·格兰特" class="name" href="" target="_blank"
															> 休·格兰特 </a>
													</div>
												</li>
												<li>
													<div class="item" id="_a_81848">
														<a class="img" href=""
															target="_blank" _stat="star:click"><img
															src="${APP_PATH }/static/mymovie/actorTitle/小李子.jpg"></a>
														<a title="莎莉·霍金斯" class="name"
															href="" target="_blank"
															> 莎莉·霍金斯 </a>
													</div>
												</li>
											</ul>
											<ul class="tab-bd">
												<li class="thisclass">
													<div id="slide-box">
														<b class="corner"></b>
														<div class="slide-content" id="temp4">
															<div class="wrap">
																<ul class="JQ-slide-content">
																	<c:forEach items="${hotmovie }" var="movie" begin="0" end="14">
																		<li class="list_item"><a href="#" target="_blank"><img
																			src="static${movie.movieImg }" width="330" height="450" /></a>
																		<div
																			class="figure_detail figure_detail_genius figure_detail_two_row">
																			<strong class="figure_title figure_title_two_row">
																				<a title="${movie.movieName }" href="" target="_blank">${movie.movieName }</a>
																			</strong>
																			<div class="figure_desc">锤哥对战海洋巨怪</div>
																		</div></li>
																	</c:forEach>
																</ul>
															</div>
															<div class="JQ-slide-nav">
																<a class="prev" href="#"> <b class="corner"></b> <span>&#8249;</span>
																	<B class="corner"></B>
																</a> <a class="next" href="#"> <b class="corner"></b> <span>&#8250;</span>
																	<B class="corner"></B>
																</a>
															</div>
														</div>
														<b class="corner"></b>
													</div>
													<!--slide-box end-->
												</li>
												<li><div id="slide-box">
														<b class="corner"></b>
														<div class="slide-content" id="temp4">
															<div class="wrap">
																<ul class="JQ-slide-content">
																	<c:forEach items="${typemovie }" var="movie" begin="0" end="14">
																		<li class="list_item"><a href="#" target="_blank"><img
																			src="static${movie.movieImg }" width="330" height="450" /></a>
																		<div
																			class="figure_detail figure_detail_genius figure_detail_two_row">
																			<strong class="figure_title figure_title_two_row">
																				<a title="${movie.movieName }" href="" target="_blank">${movie.movieName }</a>
																			</strong>
																			<div class="figure_desc">锤哥对战海洋巨怪</div>
																		</div></li>
																	</c:forEach>
																</ul>
															</div>
															<div class="JQ-slide-nav">
																<a class="prev" href="#"> <b class="corner"></b> <span>&#8249;</span>
																	<B class="corner"></B>
																</a> <a class="next" href="#"> <b class="corner"></b> <span>&#8250;</span>
																	<B class="corner"></B>
																</a>
															</div>
														</div>
														<b class="corner"></b>
													</div></li>
												<li><div id="slide-box">
														<b class="corner"></b>
														<div class="slide-content" id="temp4">
															<div class="wrap">
																<ul class="JQ-slide-content">
																	<c:forEach items="${typemovie }" var="movie" begin="0" end="14">
																		<li class="list_item"><a href="#" target="_blank"><img
																			src="static${movie.movieImg }" width="330" height="450" /></a>
																		<div
																			class="figure_detail figure_detail_genius figure_detail_two_row">
																			<strong class="figure_title figure_title_two_row">
																				<a title="${movie.movieName }" href="" target="_blank">${movie.movieName }</a>
																			</strong>
																			<div class="figure_desc">锤哥对战海洋巨怪</div>
																		</div></li>
																	</c:forEach>
																</ul>
															</div>
															<div class="JQ-slide-nav">
																<a class="prev" href="#"> <b class="corner"></b> <span>&#8249;</span>
																	<B class="corner"></B>
																</a> <a class="next" href="#"> <b class="corner"></b> <span>&#8250;</span>
																	<B class="corner"></B>
																</a>
															</div>
														</div>
														<b class="corner"></b>
													</div></li>
											</ul>
										</div>
									</div>
								</div>

								<div class="mod_row_box">
									<div class="mod_hd">
										<div class="mod_title">
											<h2 class="title">2018年所有值得期待的电影</h2>
										</div>
									</div>
									<div class="mod_bd">
										<div class="figure_scroll figure_scroll_v_default">
											<div class="mod_figure mod_figure_v mod_figure_v_default">
												<ul class="figure_list _l">
												<c:forEach items="${hotmovie }" var="hotmovie" begin="0" end="5">
													<li class="list_item"><a tabindex="-1" class="figure"
														href="ticked?hitmovieId=${hotmovie.movieId }"
														target="_blank"> <img class="figure_pic" alt="${hotmovie.movieName }"
															src="static${hotmovie.movieImg }">
															<div class="figure_score">
																<em class="score_l">${hotmovie.movieGrade }</em><em class="score_s"></em>
															</div>
															<div class="figure_count">
																<span class="num">${hotmovie.movieRuntime }</span>
															</div>
													</a> <strong class="figure_title "><a title="${hotmovie.movieName }"
															href="ticked?hitmovieId=${hotmovie.movieId }"
															target="_blank">${hitmovie.movieName }</a></strong>
														<div title="${hotmovie.movieDirector }精心巨制" class="figure_desc">${hotmovie.movieDirector }精心巨制</div></li>
												</c:forEach>
													
												</ul>
											</div>
										</div>
									</div>
								</div>

								<div class="mod_row_box">
									<div class="mod_hd">
										<div class="mod_title">
											<h2 class="title">为你推荐</h2>
											<div class="title_action">
												<a class="btn_refresh" href="javascript:;"> <i class="icon icon_refresh"></i>
														<span class="btn_inner">换一批</span>
												</a>
											</div>
										</div>
									</div>
									<div class="mod_bd">
										<div
											class="mod_figure mod_figure_v mod_figure_v_default _recommend-list">
											<ul class="figure_list">

												<li class="list_item" ><a
													tabindex="-1" class="figure"
													href="/x/cover/fhe2h7sop52qzza.html" target="_blank"
													_stat="cover-recommend:picclick"
													data-float="fhe2h7sop52qzza"> <img class="figure_pic"
														onerror="picerr(this,'v')" alt="疯狂动物城"
														src="//i.gtimg.cn/qqlive/img/jpgcache/files/qqvideo/f/fhe2h7sop52qzza_y.jpg">
														<i class="mark_v"><img alt="VIP"
															src="//i.gtimg.cn/qqlive/images/mark/mark_5.png"></i>
												</a> <strong class="figure_title"><a title="疯狂动物城"
														href="/x/cover/fhe2h7sop52qzza.html" target="_blank"
														_stat="cover-recommend:click">疯狂动物城</a></strong>
													<div title="2016年度动漫电影口碑神作" class="figure_desc">2016年度动漫电影口碑神作</div>
												</li>

												<li class="list_item" data-cid="q8xwiu8yyxahzz8"><a
													tabindex="-1" class="figure"
													href="/x/cover/q8xwiu8yyxahzz8.html" target="_blank"
													_stat="cover-recommend:picclick"
													data-float="q8xwiu8yyxahzz8"> <img class="figure_pic"
														onerror="picerr(this,'v')" alt="功夫熊猫3"
														src="//i.gtimg.cn/qqlive/img/jpgcache/files/qqvideo/q/q8xwiu8yyxahzz8_y.jpg">

												</a> <strong class="figure_title"><a title="功夫熊猫3"
														href="/x/cover/q8xwiu8yyxahzz8.html" target="_blank"
														_stat="cover-recommend:click">功夫熊猫3</a></strong>
													<div title="阿宝变神龙！要上天惹~" class="figure_desc">阿宝变神龙！要上天惹~</div>
												</li>

												<li class="list_item" data-cid="4e62aswdyxgxfzw"><a
													tabindex="-1" class="figure"
													href="/x/cover/4e62aswdyxgxfzw.html" target="_blank"
													_stat="cover-recommend:picclick"
													data-float="4e62aswdyxgxfzw"> <img class="figure_pic"
														onerror="picerr(this,'v')" alt="小羊肖恩"
														src="//i.gtimg.cn/qqlive/img/jpgcache/files/qqvideo/4/4e62aswdyxgxfzw_y.jpg">

												</a> <strong class="figure_title"><a title="小羊肖恩"
														href="/x/cover/4e62aswdyxgxfzw.html" target="_blank"
														_stat="cover-recommend:click">小羊肖恩</a></strong>
													<div title="羊咩咩爆笑城市大冒险" class="figure_desc">羊咩咩爆笑城市大冒险</div>
												</li>

												<li class="list_item" data-cid="llcj2tlwn1jn8y7"><a
													tabindex="-1" class="figure"
													href="/x/cover/llcj2tlwn1jn8y7.html" target="_blank"
													_stat="cover-recommend:picclick"
													data-float="llcj2tlwn1jn8y7" data-floatid="3"> <img
														class="figure_pic" onerror="picerr(this,'v')"
														alt="哆啦A梦：伴我同行"
														src="//i.gtimg.cn/qqlive/img/jpgcache/files/qqvideo/l/llcj2tlwn1jn8y7_y.jpg">

												</a> <strong class="figure_title"><a title="哆啦A梦：伴我同行"
														href="/x/cover/llcj2tlwn1jn8y7.html" target="_blank"
														_stat="cover-recommend:click">哆啦A梦：伴我同行</a></strong>
													<div title="童年经典 催泪告白大雄" class="figure_desc">童年经典
														催泪告白大雄</div></li>

												<li class="list_item" data-cid="m4ry5h1naszjlzh"><a
													tabindex="-1" class="figure"
													href="/x/cover/m4ry5h1naszjlzh.html" target="_blank"
													_stat="cover-recommend:picclick"
													data-float="m4ry5h1naszjlzh"> <img class="figure_pic"
														onerror="picerr(this,'v')" alt="疯狂原始人"
														src="//i.gtimg.cn/qqlive/img/jpgcache/files/qqvideo/m/m4ry5h1naszjlzh_y.jpg">

												</a> <strong class="figure_title"><a title="疯狂原始人"
														href="/x/cover/m4ry5h1naszjlzh.html" target="_blank"
														_stat="cover-recommend:click">疯狂原始人</a></strong>
													<div title="第86届奥斯卡最佳动画提名" class="figure_desc">第86届奥斯卡最佳动画提名</div>
												</li>

												<li class="list_item" data-cid="kupi0fnxf08erac"><a
													tabindex="-1" class="figure"
													href="/x/cover/kupi0fnxf08erac.html" target="_blank"
													_stat="cover-recommend:picclick"
													data-float="kupi0fnxf08erac"> <img class="figure_pic"
														onerror="picerr(this,'v')" alt="奥兹国的桃乐西"
														src="//i.gtimg.cn/qqlive/img/jpgcache/files/qqvideo/k/kupi0fnxf08erac_y.jpg">

												</a> <strong class="figure_title"><a title="奥兹国的桃乐西"
														href="/x/cover/kupi0fnxf08erac.html" target="_blank"
														_stat="cover-recommend:click">奥兹国的桃乐西</a></strong>
													<div title="桃乐洗历险记" class="figure_desc">桃乐洗历险记</div></li>

												<li class="list_item" data-cid="rgsjoz12dwbq2g3"><a
													tabindex="-1" class="figure"
													href="/x/cover/rgsjoz12dwbq2g3.html" target="_blank"
													_stat="cover-recommend:picclick"
													data-float="rgsjoz12dwbq2g3"> <img class="figure_pic"
														onerror="picerr(this,'v')" alt="克里蒂,童话的小屋"
														src="//i.gtimg.cn/qqlive/img/jpgcache/files/qqvideo/r/rgsjoz12dwbq2g3_y.jpg">

												</a> <strong class="figure_title"><a title="克里蒂,童话的小屋"
														href="/x/cover/rgsjoz12dwbq2g3.html" target="_blank"
														_stat="cover-recommend:click">克里蒂,童话的小屋</a></strong>
													<div title="童话故事的重新诠释" class="figure_desc">童话故事的重新诠释</div>
												</li>

											</ul>

											<ul class="figure_list">

												<li class="list_item" data-cid="bvvwiu9indncrbm"><a
													tabindex="-1" class="figure"
													href="/x/cover/bvvwiu9indncrbm.html" target="_blank"
													_stat="cover-recommend:picclick"
													data-float="bvvwiu9indncrbm"> <img class="figure_pic"
														onerror="picerr(this,'v')" alt="金钻鼠王"
														src="//i.gtimg.cn/qqlive/img/jpgcache/files/qqvideo/b/bvvwiu9indncrbm_y.jpg">

												</a> <strong class="figure_title"><a title="金钻鼠王"
														href="/x/cover/bvvwiu9indncrbm.html" target="_blank"
														_stat="cover-recommend:click">金钻鼠王</a></strong>
													<div title="小老鼠牙齿磨成珍珠" class="figure_desc">小老鼠牙齿磨成珍珠</div>
												</li>

												<li class="list_item" data-cid="0py2pytt6n8l0ci"><a
													tabindex="-1" class="figure"
													href="/x/cover/0py2pytt6n8l0ci.html" target="_blank"
													_stat="cover-recommend:picclick"
													data-float="0py2pytt6n8l0ci"> <img class="figure_pic"
														onerror="picerr(this,'v')" alt="蜡笔小新：梦境世界大突击"
														src="//i.gtimg.cn/qqlive/img/jpgcache/files/qqvideo/0/0py2pytt6n8l0ci_y.jpg">

												</a> <strong class="figure_title"><a
														title="蜡笔小新：梦境世界大突击" href="/x/cover/0py2pytt6n8l0ci.html"
														target="_blank" _stat="cover-recommend:click">蜡笔小新：梦境世界大突击</a></strong>
													<div title="小新耍宝撒娇笑料十足" class="figure_desc">小新耍宝撒娇笑料十足</div>
												</li>

												<li class="list_item" data-cid="qurw47j879g1uz5"><a
													tabindex="-1" class="figure"
													href="/x/cover/qurw47j879g1uz5.html" target="_blank"
													_stat="cover-recommend:picclick"
													data-float="qurw47j879g1uz5"> <img class="figure_pic"
														onerror="picerr(this,'v')" alt="没有浪漫"
														src="//i.gtimg.cn/qqlive/img/jpgcache/files/qqvideo/q/qurw47j879g1uz5_y.jpg">

												</a> <strong class="figure_title"><a title="没有浪漫"
														href="/x/cover/qurw47j879g1uz5.html" target="_blank"
														_stat="cover-recommend:click">没有浪漫</a></strong>
													<div title="简单的幸福琐碎的小事" class="figure_desc">简单的幸福琐碎的小事</div>
												</li>

												<li class="list_item" data-cid="fxth4h1ghmfvsfs"><a
													tabindex="-1" class="figure"
													href="/x/cover/fxth4h1ghmfvsfs.html" target="_blank"
													_stat="cover-recommend:picclick"
													data-float="fxth4h1ghmfvsfs"> <img class="figure_pic"
														onerror="picerr(this,'v')" alt="冰雪奇缘:生日惊喜"
														src="//i.gtimg.cn/qqlive/img/jpgcache/files/qqvideo/f/fxth4h1ghmfvsfs_y.jpg">

												</a> <strong class="figure_title"><a title="冰雪奇缘:生日惊喜"
														href="/x/cover/fxth4h1ghmfvsfs.html" target="_blank"
														_stat="cover-recommend:click">冰雪奇缘:生日惊喜</a></strong>
													<div title="女王生日派对意外频出" class="figure_desc">女王生日派对意外频出</div>
												</li>

												<li class="list_item" data-cid="dotm4nwjghjycwk"><a
													tabindex="-1" class="figure"
													href="/x/cover/dotm4nwjghjycwk.html" target="_blank"
													_stat="cover-recommend:picclick"
													data-float="dotm4nwjghjycwk"> <img class="figure_pic"
														onerror="picerr(this,'v')" alt="汤姆与魔镜"
														src="//i.gtimg.cn/qqlive/img/jpgcache/files/qqvideo/d/dotm4nwjghjycwk_y.jpg">

												</a> <strong class="figure_title"><a title="汤姆与魔镜"
														href="/x/cover/dotm4nwjghjycwk.html" target="_blank"
														_stat="cover-recommend:click">汤姆与魔镜</a></strong>
													<div title="个性鲜明的童话" class="figure_desc">个性鲜明的童话</div></li>

												<li class="list_item" data-cid="ndvahl88ql5yowm"><a
													tabindex="-1" class="figure"
													href="/x/cover/ndvahl88ql5yowm.html" target="_blank"
													_stat="cover-recommend:picclick"
													data-float="ndvahl88ql5yowm"> <img class="figure_pic"
														onerror="picerr(this,'v')" alt="马达加斯加的企鹅"
														src="//i.gtimg.cn/qqlive/img/jpgcache/files/qqvideo/n/ndvahl88ql5yowm_y.jpg">

												</a> <strong class="figure_title"><a title="马达加斯加的企鹅"
														href="/x/cover/ndvahl88ql5yowm.html" target="_blank"
														_stat="cover-recommend:click">马达加斯加的企鹅</a></strong>
													<div title="企鹅四贱客化身萌宠特工队" class="figure_desc">企鹅四贱客化身萌宠特工队</div>
												</li>

												<li class="list_item" data-cid="gpcfwzyrfzyalj7"><a
													tabindex="-1" class="figure"
													href="/x/cover/gpcfwzyrfzyalj7.html" target="_blank"
													_stat="cover-recommend:picclick"
													data-float="gpcfwzyrfzyalj7"> <img class="figure_pic"
														onerror="picerr(this,'v')" alt="名侦探柯南：纯黑的噩梦"
														src="//i.gtimg.cn/qqlive/img/jpgcache/files/qqvideo/g/gpcfwzyrfzyalj7_y.jpg">

												</a> <strong class="figure_title"><a
														title="名侦探柯南：纯黑的噩梦" href="/x/cover/gpcfwzyrfzyalj7.html"
														target="_blank" _stat="cover-recommend:click">名侦探柯南：纯黑的噩梦</a></strong>
													<div title="柯南对战双面间谍" class="figure_desc">柯南对战双面间谍</div></li>

											</ul>

										</div>
									</div>
								</div>
								<!--1-可评 0-不可评-->
								<div class="mod_row_box">
									<div class="mod_comments mod_bd" id="_mod_comments" _r-cid="25"
										_r-component="c-comments">
										<div class="mod_title" r-content-category="true">
											<h2 class="title">${movie.movieName }的影评</h2>
										</div>
										<iframe id="commentIframe" src="commentindex?movieId=${movie.movieId }" frameborder="no"
											scrolling="no" style="height: 858px;"
											></iframe>
									</div>
								</div>


							</div>
							<div class="wrapper_side">


								<div class="mod_box">
									<div class="mod_hd">
										<div class="mod_title">
											<h2 class="title">
												<a href="">电影热播榜</a>
											</h2>
											<div class="title_action">
												<a class="link" href="" target="_blank" >
													<span>更多</span> <i class="icon_xs arrow_next_xs">
														
												</i>
												</a>
											</div>
										</div>
									</div>
									<div class="mod_bd">
										<div class="mod_figure mod_figure_list mod_figure_list_sm">
											<ul class="figure_list">
												<c:forEach items="${hotmovie }" var="movie" begin="0" end="9" varStatus="status">
													<li class="list_item"><a title="${movie.movieName }" class="figure"
													href="moviesingle?movieId=${movie.movieId }" target="_blank">
													 <img class="figure_pic"
														src="static${movie.movieImg }">
														<span>//puui.qpic.cn/vcover_hz_pic/0/2noumdi5db9ytrk1520215713/226</span>
														<span></span>
														<div class="figure_count">
															<span class="rank_num rank_num1"> ${status.index+1}</span>

														</div>
												</a> <a class="figure_detail"
													href="moviesingle?movieId=${movie.movieId }" target="_blank">
														<div class="figure_detail_two_row">
															<strong class="figure_title2">${movie.movieName }</strong>
															<div class="figure_desc">${movie.actorName }</div>
														</div>
														<div class="figure_num">
															<i class="icon_xs triangle_next_xs">
															</i><span class="num">${movie.commentCount } </span>
														</div>
												</a></li>
												</c:forEach>
											</ul>
										</div>
									</div>
								</div>

								<div class="mod_box">
									<div class="mod_hd">
										<div class="mod_title" style="display: none;">
											<h2 class="title">相关资讯</h2>
										</div>
									</div>
									<div class="mod_bd">
										<div class="mod_figure mod_figure_list mod_figure_list_sm">
											<ul class="figure_list"></ul>
										</div>
									</div>
								</div>

								<div class="mod_box" >
									<div class="mod_hd">
										<div class="mod_title">
											<h2 class="title">VIP专属福利</h2>
										</div>
									</div>
									<div class="mod_bd">
										<div class="mod_figure mod_figure_list mod_figure_list_sm">
											<ul class="figure_list">
												<li class="list_item">
												 <a title="会员仅18元/月，开会员最高再送1年VIP" class="figure" href="" target="_blank;">
												 <img class="figure_pic" alt="会员仅18元/月，开会员最高再送1年VIP"
														src="static/mymovie/adTitles/ad1.jpg">
												 </a>
													<div class="figure_detail">
														<div class="figure_detail_two_row">
															<strong class="figure_title"> <a
																title="会员仅18元/月，开会员最高再送1年VIP" href=""
																target="_blank;">会员仅18元/月，开会员最高再送1年VIP</a>
															</strong>
														</div>
													</div></li>
												<li class="list_item">
												 <a title="开通连续包月送5天会员，天天抽大奖！" class="figure" href="" target="_blank;">
												 <img class="figure_pic" alt="开通连续包月送5天会员，天天抽大奖！"
														src="static/mymovie/adTitles/ad2.jpg">
												 </a>
													<div class="figure_detail">
														<div class="figure_detail_two_row">
															<strong class="figure_title"> <a
																title="开通连续包月送5天会员，天天抽大奖！" href=""
																target="_blank;">开通连续包月送5天会员，天天抽大奖！</a>
															</strong>
														</div>
													</div></li>
										    	<li class="list_item">
												 <a title="开连续包月会员，赢《雄兵连》限量周边" class="figure" href="" target="_blank;">
												 <img class="figure_pic" alt="开连续包月会员，赢《雄兵连》限量周边"
														src="static/mymovie/adTitles/ad3.jpg">
												 </a>
													<div class="figure_detail">
														<div class="figure_detail_two_row">
															<strong class="figure_title"> <a
																title="开连续包月会员，赢《雄兵连》限量周边" href=""
																target="_blank;">开连续包月会员，赢《雄兵连》限量周边</a>
															</strong>
														</div>
													</div></li>
										    	<li class="list_item">
												 <a title="视频音乐双会员低至26元！" class="figure" href="" target="_blank;">
												 <img class="figure_pic" alt="视频音乐双会员低至26元！"
														src="static/mymovie/adTitles/ad4.jpg">
												 </a>
													<div class="figure_detail">
														<div class="figure_detail_two_row">
															<strong class="figure_title"> <a
																title="视频音乐双会员低至26元！" href=""
																target="_blank;">视频音乐双会员低至26元！</a>
															</strong>
														</div>
													</div></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--//播放页下半部分-->
			</div>
		</div>
		<!--//content-inner-section-->

	</div>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
	<a href="#home" id="toTop" class="scroll" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>

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

	<script src="${APP_PATH }/static/js/simplePlayer.js"></script>

	<!-- pop-up-box -->
	<script src="${APP_PATH }/static/js/jquery.magnific-popup.js"
		type="text/javascript"></script>
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
	<link href="${APP_PATH }/static/css/owl.carousel.css" rel="stylesheet"
		type="text/css" media="all">
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

	<script type="text/javascript"
		src="${APP_PATH }/static/js/jquery.min.js"></script>
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
		timer : 3000,
		steps:2
	});

});
</script>
 <script type="text/javascript" src="${APP_PATH }/static/js/startScore.js"></script>
    <script> 
     scoreFun($("#startone"),{
           fen_d:22,//每一个a的宽度
           ScoreGrade:5//a的个数 10或者
         })
     
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
   		if(null!=userId){
  			$.ajax({
          		type: 'POST',
          		url: '${APP_PATH}/preferences?userId=${userSession.userId}&movieId=${movie.movieId}&preference='+preference,
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