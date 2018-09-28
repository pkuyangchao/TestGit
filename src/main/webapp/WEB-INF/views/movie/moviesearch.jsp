<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>电影搜索页</title>
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
.clear {
    height: 0px;
    font-size: 0px;
    clear: both;
}

.wrapper {
    width: 1140px;
    margin: 20px auto;
    position: relative;
    overflow: hidden;
}
.wrapper_main {
    float: left;
    width: 800px;
}
.result_item_v {
    min-height: 204px;
}
.result_item .result_figure {
    position: absolute;
    left: -180px;
    top: 0px;
    width: 160px;
    height: 224px;
}
.result_item {
    position: relative;
    margin-left: 180px;
    margin-bottom: 30px;
    padding-bottom: 20px;
}
.result_item .result_figure {
    position: absolute;
    left: -180px;
    top: 0px;
    width: 160px;
    height: 224px;
}
.figure img {
    width: 100%;
    height: 100%;
}
.figure_collect {
    position: absolute;
    right: 4px;
    bottom: 0px;
    width: 32px;
    height: 32px;
    border-radius: 2px;
    color: #fff;
    opacity: 0;
    cursor: pointer;
    visibility: hidden;
    -webkit-transition: opacity .2s ease-in-out;
    transition: opacity .2s ease-in-out;
}
.result_title {
    font-size: 18px;
    font-weight: 400;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}
.result_title .sub {
    color: #828282;
    font-size: 14px;
}
.result_title .type {
    margin-left: 0px;
    color: #666;
    font-size: 12px;
}
.result_score {
    position: absolute;
    right: 0px;
    top: 0px;
    color: #ff6428;
    font-size: 20px;
}
.result_info {
    font-size: 0px;
    letter-spacing: -3px;
}
.result_info .info_item_odd {
    width: 230px;
}
.result_info .info_item {
    display: inline-block;
    *display:inline: ;
    *zoom:1: ;
    max-width: 100%;
    line-height: 22px;
    font-size: 12px;
    letter-spacing: normal;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    color: #828282;
    vertical-align: top;
    word-break: break-all;
}
.result_info .info_item .content {
    color: #2a2a2a;
}
.result_info .info_item_even {
    width: 390px;
}
.result_info .info_item_desc {
    max-width: 100%;
    white-space: normal;
    line-height: 18px;
}
.info_item_desc .desc_text {
    position: relative;
    display: inline-block;
    width: 565px;
    min-height: 20px;
    max-height: 120px;
    line-height: 20px;
    vertical-align: top;
    overflow: hidden;
}
.result_item .desc_text {
    font-size: 12px;
    line-height: 20px;
    letter-spacing: normal;
}
.result_item_v .desc_text, .result_item_vplus .desc_text, .result_people .desc_text {
    text-align: justify;
    text-justify: inter-ideograph;
}
.result_btn_line {
    position: relative;
    bottom: 0px;
    margin-top: 35px;
}
.btn_primary_lg {
    padding: 10px 30px;
    min-width: 98px;
    text-align: center;
    font-size: 14px;
    border-radius: 36px;
    margin-right: 6px;
}
.btn_primary {
    background-color: #ff6428;
    color: #fff;
}
.result_item_h {
    _height: 90px;
    min-height: 90px;
    padding-bottom: 0px;
}
.result_item {
    position: relative;
    margin-left: 180px;
    margin-bottom: 30px;
    padding-bottom: 20px;
}
.result_item_h .result_figure {
    height: 90px;
}
.result_item .result_figure {
    position: absolute;
    left: -180px;
    top: 0px;
    width: 160px;
    height: 224px;
}
.figure img {
    width: 100%;
    height: 100%;
}
.figure > img {
    transition: box-shadow 1s ease-out,transform .1s ease-in,-webkit-filter 1s ease-out;
}
.figure img {
    display: block;
    max-width: 100%;
    max-height: 100%;
    background-color: #ececec;
}
.figure_caption {
    padding-left: 8px;
    padding-bottom: 0px;
}
.figure_caption .figure_info {
    display: inline;
    font-size: 14px;
}
.result_title {
    font-size: 18px;
    font-weight: 400;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}
.result_info {
    font-size: 0px;
    letter-spacing: -3px;
}
.result_item_h .result_info .info_item_odd {
    width: 200px;
}
.wrapper_side {
    float: right;
    width: 260px;
}
.wrapper_side .mod_box {
    margin-bottom: 30px;
}
.mod_title {
    font-size: 18px;
    margin-bottom: 0px;
}
.mod_hd .mod_title .title {
    margin-bottom: 15px;
    font-size: 18px;
    color: #2a2a2a;
    font-weight: 400;
}
.mod_bd, .mod_hd {
    position: relative;
    *zoom:1: ;
}
.mod_people {
    font-size: 0px;
    letter-spacing: -3px;
    margin-bottom: -20px;
}
.mod_people .item_people {
    display: inline-block;
    width: 33.33%;
    *width:33.23%: ;
    margin-bottom: 20px;
    letter-spacing: normal;
    font-size: 12px;
    vertical-align: top;
    text-align: center;
}
.mod_people .people_avatar {
    display: block;
    width: 60px;
    height: 60px;
    border-radius: 50%;
    margin: 0 auto 5px;
}
.mod_people .people_name {
    display: block;
    max-width: 100%;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
}
.wrapper_side .mod_box {
    margin-bottom: 30px;
}
.mod_box_recommend .mod_figures .figures_list {
    margin: 0 -5px;
}
.mod_box_recommend .mod_figures .list_item {
    width: 80px;
    padding: 0;
}
.mod_box_recommend .mod_figures .figure {
    height: 112px;
}
.mod_figures .figure img {
    width: 100%;
}
.mod_figures .figure_title_two_row {
    white-space: normal;
    height: auto;
    max-height: 40px;
    line-height: 20px;
}
.mod_figures .figure_title_two_row a {
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
}
.mod_tools {
    position: absolute;
    right: 0px;
    top: 5px;
    font-size: 12px;
}
.mod_tools a {
    color: #666;
}
.arrow_right {
    display: inline-block;
    vertical-align: 1px;
}
.mod_hotlist .item {
    position: relative;
    display: block;
    margin-bottom: 15px;
    line-height: 22px;
}
.mod_hotlist .item_1 .num {
    background-color: #ff0d29;
}
.mod_hotlist .name {
    display: inline-block;
    vertical-align: top;
    max-width: 12em;
    text-overflow: ellipsis;
    overflow: hidden;
    white-space: nowrap;
    font-size: 14px;
}
.mod_hotlist .icon_hold {
    color: #ff6428;
}
.mod_hotlist .item {
    position: relative;
    display: block;
    margin-bottom: 15px;
    line-height: 22px;
}
.mod_hotlist .num {
    display: inline-block;
    width: 22px;
    height: 22px;
    margin-right: 4px;
    text-align: center;
    color: #fff;
    background-color: #cacaca;
    border-radius: 2px;
    vertical-align: top;
    font-family: PingFangSC-Regular,Microsoft Yahei;
}
.result_relative {
    margin-top: 40px;
}
.result_relative .mod_hd .mod_title .title {
    margin-bottom: 9px;
}
.mod_hd .mod_title .title {
    margin-bottom: 15px;
    font-size: 18px;
    color: #2a2a2a;
    font-weight: 400;
}
.relative_list .list_item {
    width: 23.8%;
    position: relative;
    float: left;
    font-size: 14px;
    line-height: 28px;
    padding-left: 9px;
}

.label {
    color: #828282;
}
.result_relative .mod_bd {
    padding: 15px 22px;
    background: #fbfbfb;
}
.relative_list .txt {
    display: inline-block;
    vertical-align: top;
    max-width: 93%;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}
.result_relative .mod_hd .mod_title .title {
    margin-bottom: 9px;
}
.relative_list .list_item {
    width: 23.8%;
    position: relative;
    float: left;
    font-size: 14px;
    line-height: 28px;
    padding-left: 9px;
}
.relative_list{
 display: inline-block;
}
</style>
</head>
<body>
<%@ include file="/WEB-INF/views/common/header2.jsp"%>

	<div class="wrapper">
			<div class="wrapper_main">
<c:forEach items="${movies }" var="movie">
	  <div class="&#10;result_item &#10; result_item_v &#10; &#10; ">
            <div class="_infos">
                <div>
	<a class="figure result_figure" href="" target="_blank">
		<img alt="${movie.movieName }" src="static${movie.movieImg }">
		<span title="加入看单" class="figure_collect">
  </span>
	</a>
	<h2 class="result_title"><a href="" target="_blank">${movie.movieName }<span class="sub">（英语/原版/1994）</span><span class="type">电影</span></a></h2>
	<span class="result_score">${movie.movieGrade }</span>

	<div class="result_info">
		<div class="info_item info_item_odd">
			<span class="label">导　演：</span>
			<span class="content"><a href="" target="_blank" >${movie.movieDirector }</a></span>
		</div>

		<div class="info_item info_item_even">
			<span class="label">主　演：</span>
			<span class="content"><a href="" target="_blank">${movie.actorName }</a></span>
		</div>

		<div class="info_item info_item_desc">
			<span class="label">简　介：</span>
			<span class="desc_text">${movie.movieSummary }</span>
		</div>
	
	</div>
</div>

            </div>
			<div class="_playlist">
				
<div class="result_btn_line">
	
		<a class="btn_primary btn_primary_lg" href="moviesingle?movieId=${movie.movieId}" target="_blank">
		<i class="fa fa-play-circle-o"></i>
		<span class="icon_text"> 免费试看</span>
		</a>

</div>
			</div>
        </div>
	
</c:forEach>
 <c:if test="${empty news }">
 	<div class="result_relative">
 		<div class="mod_hd">
			<div class="mod_title">
				<h3 class="title">相关咨询</h3>
			</div>
		</div>
		<div class="mod_bd">
			没有相关咨询
		</div>
 	</div>
 </c:if>     
 <c:if test="${not empty news }">
 <c:forEach items="${news }" var="news">
	<div class="result_item result_item_h _quickopen">
	<a class="figure result_figure" href="" target="_blank">
		<img alt="荐客解说：几分钟真正看懂 &#5;肖申克&#6;的救赎 ：为什么说男人必看" src="">
		
	<span class="figure_caption"><span class="figure_info">0:09:06</span></span>
	</a>
	<h2 class="result_title"><a href="" target="_blank">荐客解说：几分钟真正看懂 <em class="hl">肖申克</em>的救赎 ：为什么说男人必看</a></h2>
	<div class="result_info">
		<div class="info_line">
			
				<div class="info_item info_item_odd">
					<span class="label">时　间：</span>
					<span class="content">2018-03-02</span>
				</div>
			
				<div class="info_item info_item_odd">
					<span class="label">上传者：</span>
					<span class="content"><a href="" target="_blank">素德养生文化<i class="icon_vplus"></i></a></span>
				</div>
		</div>
                <div class="info_line">

                </div>
	</div>
</div>
</c:forEach>			
 </c:if>	

	<div class="result_relative">
		<div class="mod_hd">
			<div class="mod_title">
				<h3 class="title">相关搜索</h3>
			</div>
		</div>
		<div class="mod_bd">
			<ul class="relative_list cf">
				
					<li class="list_item"><a title="肖申克的救赎" class="txt" href="?q=%E8%82%96%E7%94%B3%E5%85%8B%E7%9A%84%E6%95%91%E8%B5%8E&amp;stag=9" _stat="titles:keyword_肖申克的救赎">肖申克的救赎</a></li>
				
					<li class="list_item"><a title="肖申克的救赎中文版" class="txt" href="?q=%E8%82%96%E7%94%B3%E5%85%8B%E7%9A%84%E6%95%91%E8%B5%8E%E4%B8%AD%E6%96%87%E7%89%88&amp;stag=9" _stat="titles:keyword_肖申克的救赎中文版">肖申克的救赎中文版</a></li>
				
					<li class="list_item"><a title="肖申克的救赎英文版" class="txt" href="?q=%E8%82%96%E7%94%B3%E5%85%8B%E7%9A%84%E6%95%91%E8%B5%8E%E8%8B%B1%E6%96%87%E7%89%88&amp;stag=9" _stat="titles:keyword_肖申克的救赎英文版">肖申克的救赎英文版</a></li>
				
					<li class="list_item"><a title="肖申克的救赎国语版" class="txt" href="?q=%E8%82%96%E7%94%B3%E5%85%8B%E7%9A%84%E6%95%91%E8%B5%8E%E5%9B%BD%E8%AF%AD%E7%89%88&amp;stag=9" _stat="titles:keyword_肖申克的救赎国语版">肖申克的救赎国语版</a></li>
				
					<li class="list_item"><a title="救赎" class="txt" href="?q=%E6%95%91%E8%B5%8E&amp;stag=9" _stat="titles:keyword_救赎">救赎</a></li>
				
					<li class="list_item"><a title="肖申克的救赎电影" class="txt" href="?q=%E8%82%96%E7%94%B3%E5%85%8B%E7%9A%84%E6%95%91%E8%B5%8E%E7%94%B5%E5%BD%B1&amp;stag=9" _stat="titles:keyword_肖申克的救赎电影">肖申克的救赎电影</a></li>
								
			</ul>
		</div>
	</div>

				
			</div>

			<div class="wrapper_side">
		<div class="mod_box mod_box_people" r-notemplate="true" rep-tpl="true" _oldstat="action=3&amp;qid=O00zLMMuL%5Fv3cGx45xqBTHryZcZ7RxFLQ2ZEMFakVWGwF6PiK97n8w&amp;platform=10201&amp;uin=0&amp;guid=bab67e3a%2D585a%2D46c5%2D9a37%2D450c0006ff89&amp;ival=1&amp;ival1=1&amp;ival2=1&amp;ival4=2&amp;ival5=6&amp;ival7=57&amp;ival8=11&amp;ival9=0&amp;sval=self&amp;sval2=%E8%82%96%E7%94%B3%E5%85%8B&amp;sval4=12999927068413211631&amp;sval5=1o29ui77e85grdr&amp;sval8=edit%3D0%26cur%3D0%26datasource%3D0%26data%5Ftype%3D2%26video%5Ftype%3D1%26pay%5Ftype%3D6%26&amp;sval7=smartbox%5Fabtest%3D1073741824%26hit%5Fcate%3D32%26hit%5Fintention%3D1%253D328094%252C1%253D415876%26hit%5Fintention%5Fwith%5Fdim%3Dintention%253D3%25261%253D328094%25261%253D415876%26abtest%5Ffrom%5Flogic%3D20%255F37%255F4%255F41%255F45%255F49%255F50%255F59%255F66%255F69%255F73%255F76%255F77%255F83%255F86%255F91%26query%5Ffrom%3D4%26">
			<div class="mod_hd">
				<div class="mod_title">
					<h3 class="title">相关明星</h3>
				</div>
			</div>
			<div class="mod_bd">
				
					<div class="mod_people cf">
							
								<a class="item_people" href="http://v.qq.com/x/star/78389" target="_blank" _stat="stars:list">
									<img class="people_avatar" alt="蒂姆·罗宾斯" src="//i.gtimg.cn/qqlive/images/namelib/v688/3/8/9/78389.jpg">
									<span class="people_name">蒂姆·罗宾斯</span>
								</a>
							
						
							
								<a class="item_people" href="http://v.qq.com/x/star/74778" target="_blank" _stat="stars:list">
									<img class="people_avatar" alt="摩根·弗里曼" src="//i.gtimg.cn/qqlive/images/namelib/v688/7/7/8/74778.jpg">
									<span class="people_name">摩根·弗里曼</span>
								</a>
							
						
							
								<a class="item_people" href="http://v.qq.com/x/star/80426" target="_blank" _stat="stars:list">
									<img class="people_avatar" alt="鲍勃·冈顿" src="//puui.qpic.cn/media_img/0/null1522141353/0">
									<span class="people_name">鲍勃·冈顿</span>
								</a>
							
						
							
								<a class="item_people" href="http://v.qq.com/x/star/73398" target="_blank" _stat="stars:list">
									<img class="people_avatar" alt="威廉姆·赛德勒" src="//i.gtimg.cn/qqlive/images/namelib/v688/3/9/8/73398.jpg">
									<span class="people_name">威廉姆·赛德勒</span>
								</a>
							
						
							
								<a class="item_people" href="http://v.qq.com/x/star/83621" target="_blank" _stat="stars:list">
									<img class="people_avatar" alt="克兰西·布朗" src="//i.gtimg.cn/qqlive/images/namelib/v688/6/2/1/83621.jpg">
									<span class="people_name">克兰西·布朗</span>
								</a>
							
						
					</div>
				
			</div>
		</div>

				<div class="mod_box mod_box_hotlist" id="hotlist" r-notemplate="true" _r-cid="14" _r-component="hot-board">
	<div class="mod_hd">
		<div class="mod_title">
			<h3 class="title">热搜榜单</h3>
			<div class="mod_tools">
				<a class="item_more" href="https://v.qq.com/x/hotlist/search/?channel=555&amp;source=search_hot" target="_blank" _stat="hot_board:more">更多<i class="iconfont arrow_right"></i></a>
			</div>
		</div>
	</div>
	<div class="mod_bd">
		<div class="mod_hotlist">
			<ol class="hotlist">
<li class="item item_1">
    <a href="//v.qq.com/x/search/?q=%E5%A5%94%E8%B7%91%E5%90%A7%20%E7%AC%AC2%E5%AD%A3&amp;stag=101" _stat="hot_board:item">
        <span class="num">1</span>
        <span class="name">奔跑吧 第2季</span>
        
        <i class="iconfont icon_hold"></i>
    </a>
</li>

<li class="item item_2">
    <a href="//v.qq.com/x/search/?q=%E6%96%97%E7%BD%97%E5%A4%A7%E9%99%86&amp;stag=101" _stat="hot_board:item">
        <span class="num">2</span>
        <span class="name">斗罗大陆</span>
        
        <i class="iconfont icon_rise"></i>
    </a>
</li>

<li class="item item_3">
    <a href="//v.qq.com/x/search/?q=%E7%8E%8B%E7%89%8C%E5%AF%B9%E7%8E%8B%E7%89%8C%20%E7%AC%AC3%E5%AD%A3&amp;stag=101" _stat="hot_board:item">
        <span class="num">3</span>
        <span class="name">王牌对王牌 第3季</span>
        
        <i class="iconfont icon_decline"></i>
    </a>
</li>

<li class="item item_4">
    <a href="//v.qq.com/x/search/?q=%E5%94%90%E4%BA%BA%E8%A1%97%E6%8E%A2%E6%A1%882&amp;stag=101" _stat="hot_board:item">
        <span class="num">4</span>
        <span class="name">唐人街探案2</span>
        
        <i class="iconfont icon_rise"></i>
    </a>
</li>

<li class="item item_5">
    <a href="//v.qq.com/x/search/?q=%E7%8B%AC%E5%AD%A4%E5%A4%A9%E4%B8%8B&amp;stag=101" _stat="hot_board:item">
        <span class="num">5</span>
        <span class="name">独孤天下</span>
        
        <i class="iconfont icon_decline"></i>
    </a>
</li>

<li class="item item_6">
    <a href="//v.qq.com/x/search/?q=%E5%B0%8F%E7%8C%AA%E4%BD%A9%E5%A5%87%E7%AC%AC4%E5%AD%A3&amp;stag=101" _stat="hot_board:item">
        <span class="num">6</span>
        <span class="name">小猪佩奇第4季</span>
        
        <i class="iconfont icon_decline"></i>
    </a>
</li>

<li class="item item_7">
    <a href="//v.qq.com/x/search/?q=%E6%96%97%E7%A0%B4%E8%8B%8D%E7%A9%B9%20%E7%AC%AC2%E5%AD%A3&amp;stag=101" _stat="hot_board:item">
        <span class="num">7</span>
        <span class="name">斗破苍穹 第2季</span>
        
        <i class="iconfont icon_rise"></i>
    </a>
</li>

<li class="item item_8">
    <a href="//v.qq.com/x/search/?q=%E5%88%9B%E9%80%A0101%20%E7%AC%AC1%E5%AD%A3&amp;stag=101" _stat="hot_board:item">
        <span class="num">8</span>
        <span class="name">创造101 第1季</span>
        
        <i class="iconfont icon_rise"></i>
    </a>
</li>

<li class="item item_9">
    <a href="//v.qq.com/x/search/?q=%E5%90%91%E5%BE%80%E7%9A%84%E7%94%9F%E6%B4%BB%20%E7%AC%AC2%E5%AD%A3&amp;stag=101" _stat="hot_board:item">
        <span class="num">9</span>
        <span class="name">向往的生活 第2季</span>
        
        <i class="iconfont icon_rise"></i>
    </a>
</li>

<li class="item item_10">
    <a href="//v.qq.com/x/search/?q=%E5%A5%BD%E4%B9%85%E4%B8%8D%E8%A7%81&amp;stag=101" _stat="hot_board:item">
        <span class="num">10</span>
        <span class="name">好久不见</span>
        
        <i class="iconfont icon_decline"></i>
    </a>
</li>

</ol>
		</div>
	</div>
</div>

			</div>
			<div class="clear"></div>
			<div id="ad_container" r-notemplate="true">
	<div class="mod_ad_search l_qq_com" id="QQlive_SP_QLL_Width" style="width: 960px; height: 90px; display: block; position: relative;" _stat="ad:search.guanggao" _hot="search.guanggao" adconfig_lview="l.qq.com" adconfig_charset="gbk" adconfig_lview_template="//l.qq.com/lview?c=www&amp;loc={loc}" oid="4068924" btoid="0" display="banner"><a style="display:block;cursor:pointer;width:960px;height:90px;background-image:url(//wa.gtimg.com/website/201804/q_D_20180418110423.jpg);background-size:960px 90px;filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='//wa.gtimg.com/website/201804/q_D_20180418110423.jpg',sizingMethod='scale');" href="https://c.l.qq.com/lclick?oid=4068924&amp;loc=QQlive_SP_QLL_Width&amp;soid=Aikf3gAAWtw3CgxPnQEiKpwfAbZP&amp;click_data=dXNlcl9pbmZvPXZCMy1uejBfRUJXX0ctT2VJem9VQzdzVl9aby0mYXhwaGVhZGVyPTEmcGFnZV90eXBlPTMmc3NwPTEmdXBfdmVyc2lvbj1TOTJ8TDU3MSZzaT0xODMwNzkyODMmbmxfY3M9MTAyNA==&amp;index=1&amp;chl=3881" target="_blank"></a><a class="absolute a_cover" style="position:absolute;width:960px;height:90px;left:0px;top:0px;cursor:pointer;z-index:10;background-color:#fff;filter:alpha(opacity=0);opacity:0;" href="https://c.l.qq.com/lclick?oid=4068924&amp;loc=QQlive_SP_QLL_Width&amp;soid=Aikf3gAAWtw3CgxPnQEiKpwfAbZP&amp;click_data=dXNlcl9pbmZvPXZCMy1uejBfRUJXX0ctT2VJem9VQzdzVl9aby0mYXhwaGVhZGVyPTEmcGFnZV90eXBlPTMmc3NwPTEmdXBfdmVyc2lvbj1TOTJ8TDU3MSZzaT0xODMwNzkyODMmbmxfY3M9MTAyNA==&amp;index=1&amp;chl=3881&amp;k=%E8%82%96%E7%94%B3%E5%85%8B&amp;t=%E8%82%96%E7%94%B3%E5%85%8B-%E8%85%BE%E8%AE%AF%E8%A7%86%E9%A2%91&amp;r=&amp;s=" target="_blank" rel="nofollow"></a><div style='background: url("//ra.gtimg.com/web/res/icon/leftbottom_new.png") no-repeat right top; left: 0px; width: 26px; height: 16px; bottom: 0px; position: absolute; z-index: 12;'></div></div> <!--广告-->
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
			<script>
				$("document").ready(function() {
					$("#video4").simplePlayer();
				});
			</script>
			<script>
				$("document").ready(function() {
					$("#video5").simplePlayer();
				});
			</script>
			<script>
				$("document").ready(function() {
					$("#video6").simplePlayer();
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