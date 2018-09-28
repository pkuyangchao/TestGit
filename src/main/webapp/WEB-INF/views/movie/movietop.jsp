<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<% pageContext.setAttribute("APP_PATH", request.getContextPath()); %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Language" content="zh-CN">
<title>电影排行</title>
<link href="${APP_PATH }/static/css/movieclasses.css" rel="stylesheet" />
<link rel="stylesheet" href="${APP_PATH }/static/css/bootstrap.css" />
<link href="${APP_PATH }/static/css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/css/zoomslider.css" />
<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/css/style.css" />

<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/css/movieclasses.css" />
<link href="${APP_PATH }/static/css/font-awesome.css" rel="stylesheet"> 
<link href="${APP_PATH }/static/css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<link href="${APP_PATH }/static/css/font-awesome.css" rel="stylesheet"> 
<script type="text/javascript" src="${APP_PATH }/static/js/modernizr-2.6.2.min.js"></script>
<script type="text/javascript" src="${APP_PATH }/static/js/bootstrap.js" ></script>
<script src="${APP_PATH }/static/js/jquery.carousel.js"></script>
<link rel="stylesheet" href="${APP_PATH }/static/css/indexcss.css" />

<style type="text/css">
.demo { padding: 2em 0; background: #fff; }
a:hover, a:focus { outline: none; text-decoration: none; }
.tab .nav-tabs { border-bottom: none; position: relative;}
.tab .nav-tabs li {display:inline; list-style:none;margin-right: 60px; z-index: 1;float: left; }
.tab .nav-tabs li:after { content: ""; width: 100%; position: absolute; top: 50%; right: -60%; z-index: -1; }
.tab .nav-tabs li:last-child:after { border: none; }
.tab .nav-tabs li a { display: block; padding: 15px 20px; background: #fff; font-size: 28px; font-weight: 600; color: #FE423F; text-transform: uppercase; border-radius: 0; margin-right: 0; border: 2px solid #FE423F; position: relative; overflow: hidden; z-index: 1; transition: all 0.3s ease 0s; }
.tab .nav-tabs li.active a, .tab .nav-tabs li a:hover { color: #fff; border: 2px solid #FE423F; }
.tab .nav-tabs li a:after { content: ""; display: block; width: 100%; height: 0; position: absolute; top: 0; left: 0; z-index: -1; transition: all 0.3s ease 0s; }
.tab .nav-tabs li.active a:after, .tab .nav-tabs li a:hover:after { height: 100%; background: #FE423F; }
.tab .tab-content { padding: 20px 10px; margin-top: 0; font-size: 14px; color: #999; line-height: 26px; }
.tab .tab-content h3 { font-size: 24px; margin-top: 0; }

@media only screen and (max-width: 767px) {
.tab .nav-tabs li { margin: 0 25px 0 0; }
}

@media only screen and (max-width: 479px) {
.tab .nav-tabs li { width: 100%; text-align: center; margin: 0 0 10px 0; }
.tab .nav-tabs li:after { width: 0; height: 100%; top: auto; bottom: -60%; right: 50%; }
}


.evenflow * {
  margin:0; padding:0; border:0;
  font-size: 100%; font: inherit;
  vertical-align: baseline; outline: none;
  -webkit-font-smoothing: antialiased;
  -webkit-text-size-adjust: 100%;
  -ms-text-size-adjust: 100%;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box; }
  
.evenflow { display: inline-block; }
.evenflow:after { content: "."; display: block; clear: both; visibility: hidden; line-height: 0; height: 0; }

.evenflow li {
  display:block;
  float:left;
  width:30%;
  max-width:400px;
  line-height:0;
  margin-left:10px;
  margin-right:10px;
  margin-bottom:20px; 
  transition:all 0.25s ease;}

.evenflow li a {
  display:block;
  padding:8px;
  background:#424242;
  border-radius:2px;
  box-shadow: 1px 2px 2px rgba(0,0,0,0.25); }
  
.evenflow li img { width:100%; }  

/* LIGHTBOX TITLE */
.mfp-title {
  font-size:1.2em;
  color:#ddd !important;
  margin-top:10px;
  font-weight:200; }
  
/* LIGHTBOX COUNTER */
.mfp-counter {
  font-size:1.2em;
  color:#ddd!important;
  margin-top:10px;
  font-weight:200;}



/* FULL WIDTH MODE */
.evenflow_full_width li {
	margin:0;
	width:33%;
}

.evenflow_full_width li a {
	border-radius:0;
	padding:0;
}


/* HOVER EFFECTS */
.evenflow_rotate { transition:transform 0.25s ease;	}
.evenflow_rotate:hover { transform:rotate(45deg); }
.evenflow_shiftX { transition:transform 1s ease;	}
.evenflow_shiftX:hover { transform:translateX(20px); }
.evenflow_shiftY { transition:transform 1s ease;	}
.evenflow_shiftY:hover { transform:translateY(-20px); }
.evenflow_scale { transition:transform 0.25s ease;	}
.evenflow_scale:hover { transform:scale(1.25,1.25); }
.evenflow_spin {transition:transform 0.25s ease; }
.evenflow_spin:hover {transform:rotate(360deg); }

@keyframes evenflow_shake {
	0% { transform: scale(1); }
	50% { transform: scale(1.1); }
	100% { transform: scale(1); } }

.evenflow_shake {transform:scale(1); }
.evenflow_shake:hover{
	animation-name: evenflow_shake;
	animation-duration:500ms;
	transform-origin:50% 50%;
	animation-iteration-count:infinite;
	animation-direction:alternate;
	animation-timing-function:ease; }
	
	
	
	

@media screen and (max-width: 780px) {
  .evenflow li { width: 45%; }
}

@media screen and (max-width: 550px) {
  .evenflow { text-align: center; }
  .evenflow li {
    float: none;
    display: inline-block;
    width: 80%;
    margin-bottom: 30px; }
}
.site-piclist_pic .num {
    position: absolute;
    bottom: 0px;
    left: 0px;
    display: inline-block;
    width: 40px;
    height: 40px;
    text-indent: 11px;
    line-height: 50px;
    color: #fff;
    font-size: 20px;
    font-style: italic;
    font-family: PingFangSC-Light;
    background: #ff6428;
    border-radius: 0 100% 0 0;
    z-index: 1;
}

</style>
</head>
<body>
<%@ include file="/WEB-INF/views/common/header2.jsp"%>
<div class="w3_breadcrumb">
			<div class="breadcrumb-inner">
				<ul>
					<li>
						<a href="index.html">主页</a><i>//</i></li>
					<li>榜单</li>
				</ul>
			</div>
</div>
		<div class="m-slide">
	
	<ul class="img" style="position: relative; width: 100%; height: 422px;">
		<li style="position: relative; width: 100%; left: 0px; top: 0px; display: list-item;">
		<a href="" target="_blank"><img src="${APP_PATH }/static/images/topmovies1.jpg"></a></li>
		<li style="position: relative; width: 100%; left: 0px; top: 0px; display: none;">
		<a href="" target="_blank"><img src="${APP_PATH }/static/images/topmovies2.jpg"></a></li>
		<li style="position: relative; width: 100%; left: 0px; top: 0px; display: none;">
		<a href="" target="_blank"><img src="${APP_PATH }/static/images/topmovies3.jpg"></a></li>
		<li style="position: relative; width: 100%; left: 0px; top: 0px; display: none;">
		<a href="" target="_blank"><img src="${APP_PATH }/static/images/topmovies4.jpg"></a></li>
		<li style="position: relative; width: 100%; left: 0px; top: 0px; display: none;">
		<a href="" target="_blank"><img src="${APP_PATH }/static/images/topmovies5.jpg"></a></li>
		<li style="position: relative; width: 100%; left: 0px; top: 0px; display: none;">
		<a href="" target="_blank"><img src="${APP_PATH }/static/images/4.jpg"></a></li>
		<li style="position: relative; width: 100%; left: 0px; top: 0px;">
		<a href="" target="_blank"><img src="${APP_PATH }/static/images/topmovies1.jpg"></a></li>
	</ul>
	<ul class="tab" style="width: 200px">
		<li class="evenflow_scale  on"><a href="#topmovies-hot"><b></b>
		<span class="title">热映排行榜 </span></a>
		</li>
		<li class="evenflow_scale "><a href="#topmovies-hope"><b></b><span class="title">
		最受期待榜</span></a></li>
		<li class="evenflow_scale "><a href="#topmovies-money"><b></b><span class="title">
		票房榜</span></a></li>
		<li class="evenflow_scale"><a href="#topmovies-good"><b></b><span class="title">好评榜
		</span></a></li>
		<li class="evenflow_scale "><a href="#topmovies-kt"><b></b><span class="title">
		动漫电影排行榜</span></a></li>
		<li class="evenflow_scale "><a href="#topmovies-child"><b></b><span class="title">
		少儿电影排行榜</span></a></li>
		<li class="evenflow_scale "><a href="#topmovies-100"><b></b><span class="title">
		top100 </span></a></li>
		
	</ul>
</div>

	<div class="topmovies-inner">
	<!--选项卡-->
	   <div class="tab" role="tabpanel"> 
          <!-- Nav tabs -->
          <ul class="nav nav-tabs" role="tablist" style="text-align: center;margin-left: 460px;">
            <li role="presentation" class="active"><a href="#Section1" aria-controls="home" role="tab" data-toggle="tab">热播榜</a></li>
            <li role="presentation"><a href="#Section2" aria-controls="profile" role="tab" data-toggle="tab">热搜榜</a></li>
            <li role="presentation"><a href="#Section3" aria-controls="messages" role="tab" data-toggle="tab">Top 100</a></li>
          </ul>
          <!-- Tab panes -->
          <div class="tab-content tabs">
            <div role="tabpanel" class="tab-pane fade in active" id="Section1">
            	
            	<!--热映排行榜-->
            	<div class="mod_row mod_row_movie" id="topmovies-hot">
  <div class="mod_hd">
    <div class="mod_title">
      <h2 class="title">热映排行榜</h2>
    </div>
  </div>

  <div class="mod_bd">
    <div class="mod_rank_wrap">

      
      <div class="mod_rank_figure">
        <div class="mod_rank_title">
          <h3 class="title">
            <a href="" target="_blank" _stat="rank_title">内地</a>
          </h3>
        </div>

        <div class="mod_rank_list">   
        
        <c:forEach items="${movies1 }" var="movie" begin="0" end="0">
        	<div class="mod_hot_first">
            <a class="figure_pic" href="" target="_blank">
              <img alt="视频标题" src="static${movie.movieImg }">
              <span class="num">1</span>
            </a>
            <strong class="figure_title"><a title="${movie.movieName }" href="moviesingle?movieId=${movie.movieId }" target="_blank">${movie.movieName }</a></strong>
            
              <div class="figure_info figure_info_two_row">
                <span class="label">主演:</span>
                <span class="content">${movie.actorName }</span>
              </div>
     
              <div class="figure_info">
                <span class="label">导演:</span>
                <span class="content"><a title="${movie.movieDirector }" href="" target="_blank" >${movie.movieDirector }</a></span>
              </div>
            
            <div title="${movie.movieSummary }" class="figure_desc figure_desc_line6">${movie.movieSummary }</div>
          </div>
        </c:forEach>
          <div class="mod_hotlist">
            <ol class="hotlist">
          	 <c:forEach items="${movies1 }" var="movie" begin="1" end="9" varStatus="status">
          	 	<li class="item item_2">
                <a title="${movie.movieName }" href="moviesingle?movieId=${movie.movieId}" target="_blank">
                  <span class="num">${status.index+1 }</span>
                  <span class="name">${movie.movieName }</span>
                      <i class="icon_xs icon_hold_xs">
                      </i>     
                </a>
              </li>
             </c:forEach>
          </ol>
          </div>
        </div>
      </div>
      
      <div class="mod_rank_figure">
        <div class="mod_rank_title">
          <h3 class="title">
            <a href="" target="_blank">美国</a>
          </h3>
        </div>
        <div class="mod_rank_list">
          <c:forEach items="${movies2 }" var="movie" begin="0" end="0">
        	<div class="mod_hot_first">
            <a class="figure_pic" href="" target="_blank">
              <img alt="视频标题" src="static${movie.movieImg }">
              <span class="num">1</span>
            </a>
            <strong class="figure_title"><a title="${movie.movieName }" href="moviesingle?movieId=${movie.movieId }" target="_blank">${movie.movieName }</a></strong>
            
              <div class="figure_info figure_info_two_row">
                <span class="label">主演:</span>
                <span class="content">${movie.actorName }</span>
              </div>
     
              <div class="figure_info">
                <span class="label">导演:</span>
                <span class="content"><a title="${movie.movieDirector }" href="" target="_blank" >${movie.movieDirector }</a></span>
              </div>
            
            <div title="${movie.movieSummary }" class="figure_desc figure_desc_line6">${movie.movieSummary }</div>
          </div>
        </c:forEach>
          <div class="mod_hotlist">
            <ol class="hotlist">
          	 <c:forEach items="${movies2 }" var="movie" begin="1" end="9" varStatus="status">
          	 	<li class="item item_2">
                <a title="${movie.movieName }" href="moviesingle?movieId=${movie.movieId}" target="_blank">
                  <span class="num">${status.index+1 }</span>
                  <span class="name">${movie.movieName }</span>
                      <i class="icon_xs icon_hold_xs">
                      </i>     
                </a>
              </li>
             </c:forEach>
          </ol>
          </div>
        </div>
      </div>
      
      <div class="mod_rank_figure">
        <div class="mod_rank_title">
          <h3 class="title">
            <a href="" target="_blank" _stat="rank_title">港台</a>
          </h3>
        </div>
        <div class="mod_rank_list">

            <c:forEach items="${movies3 }" var="movie" begin="0" end="0">
        	<div class="mod_hot_first">
            <a class="figure_pic" href="" target="_blank">
              <img alt="视频标题" src="static${movie.movieImg }">
              <span class="num">1</span>
            </a>
            <strong class="figure_title"><a title="${movie.movieName }" href="moviesingle?movieId=${movie.movieId }" target="_blank">${movie.movieName }</a></strong>
            
              <div class="figure_info figure_info_two_row">
                <span class="label">主演:</span>
                <span class="content">${movie.actorName }</span>
              </div>
              <div class="figure_info">
                <span class="label">导演:</span>
                <span class="content"><a title="${movie.movieDirector }" href="" target="_blank" >${movie.movieDirector }</a></span>
              </div>
        
            <div title="${movie.movieSummary }" class="figure_desc figure_desc_line6">${movie.movieSummary }</div>
          </div>
        </c:forEach>
          <div class="mod_hotlist">
            <ol class="hotlist">
          	 <c:forEach items="${movies3 }" var="movie" begin="1" end="9" varStatus="status">
          	 	<li class="item item_2">
                <a title="${movie.movieName }" href="moviesingle?movieId=${movie.movieId}" target="_blank">
                  <span class="num">${status.index+1 }</span>
                  <span class="name">${movie.movieName }</span>
                      <i class="icon_xs icon_hold_xs">
                      </i>     
                </a>
              </li>
             </c:forEach>
          </ol>
          </div>
        </div>
      </div>
      
      <div class="mod_rank_figure">
        <div class="mod_rank_title">
          <h3 class="title">
            <a href="" target="_blank">其他地区</a>
          </h3>
        </div>

        <div class="mod_rank_list">
          <c:forEach items="${movies4 }" var="movie" begin="0" end="0">
        	<div class="mod_hot_first">
            <a class="figure_pic" href="" target="_blank">
              <img alt="视频标题" src="static${movie.movieImg }">
              <span class="num">1</span>
            </a>
            <strong class="figure_title"><a title="${movie.movieName }" href="moviesingle?movieId=${movie.movieId }" target="_blank">${movie.movieName }</a></strong>
            
              <div class="figure_info figure_info_two_row">
                <span class="label">主演:</span>
                <span class="content">${movie.actorName }</span>
              </div>
              <div class="figure_info">
                <span class="label">导演:</span>
                <span class="content"><a title="${movie.movieDirector }" href="" target="_blank" >${movie.movieDirector }</a></span>
              </div>
        
            <div title="${movie.movieSummary }" class="figure_desc figure_desc_line6">${movie.movieSummary }</div>
          </div>
        </c:forEach>
          <div class="mod_hotlist">
            <ol class="hotlist">
          	 <c:forEach items="${movies4 }" var="movie" begin="1" end="9" varStatus="status">
          	 	<li class="item item_2">
                <a title="${movie.movieName }" href="moviesingle?movieId=${movie.movieId}" target="_blank">
                  <span class="num">${status.index+1 }</span>
                  <span class="name">${movie.movieName }</span>
                      <i class="icon_xs icon_hold_xs">
                      </i>     
                </a>
              </li>
             </c:forEach>
          </ol>
          </div>
        </div>
      </div>

    </div>
  </div>
</div>


			<!--最受期待榜-->
				   	<div class="mod_row mod_row_movie" id="topmovies-hope">
  <div class="mod_hd">
    <div class="mod_title">
      <h2 class="title">最受期待榜</h2>
    </div>
  </div>

  <div class="mod_bd">
    <div class="mod_rank_wrap">

      <div class="mod_rank_figure">
        <div class="mod_rank_title">
          <h3 class="title">
            <a href="" target="_blank">内地</a>
          </h3>
        </div>

        <div class="mod_rank_list">     
         <c:forEach items="${movies5 }" var="movie" begin="0" end="0">
        	<div class="mod_hot_first">
            <a class="figure_pic" href="" target="_blank">
              <img alt="视频标题" src="static${movie.movieImg }">
              <span class="num">1</span>
            </a>
            <strong class="figure_title"><a title="${movie.movieName }" href="moviesingle?movieId=${movie.movieId }" target="_blank">${movie.movieName }</a></strong>
            
              <div class="figure_info figure_info_two_row">
                <span class="label">主演:</span>
                <span class="content">${movie.actorName }</span>
              </div>
              <div class="figure_info">
                <span class="label">导演:</span>
                <span class="content"><a title="${movie.movieDirector }" href="" target="_blank" >${movie.movieDirector }</a></span>
              </div>
        
            <div title="${movie.movieSummary }" class="figure_desc figure_desc_line6">${movie.movieSummary }</div>
          </div>
        </c:forEach>
          <div class="mod_hotlist">
            <ol class="hotlist">
          	 <c:forEach items="${movies5 }" var="movie" begin="1" end="9" varStatus="status">
          	 	<li class="item item_2">
                <a title="${movie.movieName }" href="moviesingle?movieId=${movie.movieId}" target="_blank">
                  <span class="num">${status.index+1 }</span>
                  <span class="name">${movie.movieName }</span>
                      <i class="icon_xs icon_hold_xs">
                      </i>     
                </a>
              </li>
             </c:forEach>
          </ol>
          </div>
        </div>
      </div>
      
      <div class="mod_rank_figure">
        <div class="mod_rank_title">
          <h3 class="title">
            <a href="" target="_blank">美国</a>
          </h3>
        </div>

        <div class="mod_rank_list">
         <c:forEach items="${movies6 }" var="movie" begin="0" end="0">
        	<div class="mod_hot_first">
            <a class="figure_pic" href="" target="_blank">
              <img alt="视频标题" src="static${movie.movieImg }">
              <span class="num">1</span>
            </a>
            <strong class="figure_title"><a title="${movie.movieName }" href="moviesingle?movieId=${movie.movieId }" target="_blank">${movie.movieName }</a></strong>
            
              <div class="figure_info figure_info_two_row">
                <span class="label">主演:</span>
                <span class="content">${movie.actorName }</span>
              </div>
              <div class="figure_info">
                <span class="label">导演:</span>
                <span class="content"><a title="${movie.movieDirector }" href="" target="_blank" >${movie.movieDirector }</a></span>
              </div>
        
            <div title="${movie.movieSummary }" class="figure_desc figure_desc_line6">${movie.movieSummary }</div>
          </div>
        </c:forEach>
          <div class="mod_hotlist">
            <ol class="hotlist">
          	 <c:forEach items="${movies6 }" var="movie" begin="1" end="9" varStatus="status">
          	 	<li class="item item_2">
                <a title="${movie.movieName }" href="moviesingle?movieId=${movie.movieId}" target="_blank">
                  <span class="num">${status.index+1 }</span>
                  <span class="name">${movie.movieName }</span>
                      <i class="icon_xs icon_hold_xs">
                      </i>     
                </a>
              </li>
             </c:forEach>
          </ol>
          </div>
        </div>
      </div>
      
      <div class="mod_rank_figure">
        <div class="mod_rank_title">
          <h3 class="title">
            <a href="" target="_blank">港台</a>
          </h3>
        </div>

        <div class="mod_rank_list">
          <c:forEach items="${movies7 }" var="movie" begin="0" end="0">
        	<div class="mod_hot_first">
            <a class="figure_pic" href="" target="_blank">
              <img alt="视频标题" src="static${movie.movieImg }">
              <span class="num">1</span>
            </a>
            <strong class="figure_title"><a title="${movie.movieName }" href="moviesingle?movieId=${movie.movieId }" target="_blank">${movie.movieName }</a></strong>
            
              <div class="figure_info figure_info_two_row">
                <span class="label">主演:</span>
                <span class="content">${movie.actorName }</span>
              </div>
              <div class="figure_info">
                <span class="label">导演:</span>
                <span class="content"><a title="${movie.movieDirector }" href="" target="_blank" >${movie.movieDirector }</a></span>
              </div>
        
            <div title="${movie.movieSummary }" class="figure_desc figure_desc_line6">${movie.movieSummary }</div>
          </div>
        </c:forEach>
          <div class="mod_hotlist">
            <ol class="hotlist">
          	 <c:forEach items="${movies7 }" var="movie" begin="1" end="9" varStatus="status">
          	 	<li class="item item_2">
                <a title="${movie.movieName }" href="moviesingle?movieId=${movie.movieId}" target="_blank">
                  <span class="num">${status.index+1 }</span>
                  <span class="name">${movie.movieName }</span>
                      <i class="icon_xs icon_hold_xs">
                      </i>     
                </a>
              </li>
             </c:forEach>
          </ol>
          </div>
        </div>
      </div>
      
      <div class="mod_rank_figure">
        <div class="mod_rank_title">
          <h3 class="title">
            <a href="" target="_blank" _stat="rank_title">其他地区</a>
          </h3>
        </div>

        <div class="mod_rank_list">
        <c:forEach items="${movies8 }" var="movie" begin="0" end="0">
        	<div class="mod_hot_first">
            <a class="figure_pic" href="" target="_blank">
              <img alt="视频标题" src="static${movie.movieImg }">
              <span class="num">1</span>
            </a>
            <strong class="figure_title"><a title="${movie.movieName }" href="moviesingle?movieId=${movie.movieId }" target="_blank">${movie.movieName }</a></strong>
            
              <div class="figure_info figure_info_two_row">
                <span class="label">主演:</span>
                <span class="content">${movie.actorName }</span>
              </div>
              <div class="figure_info">
                <span class="label">导演:</span>
                <span class="content"><a title="${movie.movieDirector }" href="" target="_blank" >${movie.movieDirector }</a></span>
              </div>
        
            <div title="${movie.movieSummary }" class="figure_desc figure_desc_line6">${movie.movieSummary }</div>
          </div>
        </c:forEach>
          <div class="mod_hotlist">
            <ol class="hotlist">
          	 <c:forEach items="${movies8 }" var="movie" begin="1" end="9" varStatus="status">
          	 	<li class="item item_2">
                <a title="${movie.movieName }" href="moviesingle?movieId=${movie.movieId}" target="_blank">
                  <span class="num">${status.index+1 }</span>
                  <span class="name">${movie.movieName }</span>
                      <i class="icon_xs icon_hold_xs">
                      </i>     
                </a>
              </li>
             </c:forEach>
          </ol>
          </div>
        </div>
      </div>

    </div>
  </div>
</div>

            </div>
            
            <!--热搜榜-->
            <div role="tabpanel" class="tab-pane fade" id="Section2">
            	
            	<div class="mod_rank_table" r-notemplate="true">
	<ul class="table_list _cont">
		<li class="item_list item_title">
			<span class="item item_a">关键词</span>
			<span class="item item_b">地区/类型</span>
			<span class="item item_c">搜索热度</span>
			<span class="item item_d">评分</span>
		</li>
		<c:forEach items="${movies8 }" var="movie" begin="0" end="49" varStatus="status">
			<li class="item_list item_odd item_1">
			<div class="item item_a">
				<span class="num">${status.index+1 }</span>
				<a title="${movie.movieName }" class="name" href="moviesingle?movieId=${movie.movieId }" target="_blank">${movie.movieName }</a>
			</div>
			<div class="item item_b ">
					<a title="${movie.movieCountry }" class="label" href="" target="_blank">${movie.movieCountry }</a>
					<div class="label">${movie.movieType }</div>
			</div>
			<div class="item item_c">
				<div class="bar">
					<span class="bar_inner" style="width: 92%;"></span>
				</div>
			</div>
			<div class="item item_d">
				${movie.movieGrade }
			</div>
		</li>
		</c:forEach>
	</ul>
</div>
            	
            </div>

			<!--top100榜-->
			<div role="tabpanel" class="tab-pane fade" id="Section3">
			 <div class="top100-content" id="topmovies-100">
				<div class="mod_rank_table">
					<div class="wthree_agile-requested-movies tv-movies">
										
										<div class="wrap">
											<ul class=" site-piclist-180236 site-piclist-auto" style="left: 0px;">
											<c:forEach items="${pageInfo.list }" var="hotmovie" varStatus="status">
												<li style="margin-right: 29px">
													<div class="main_img site-piclist_pic">
														<img width="200px" height="240px" src="static${hotmovie.movieImg}">
														<span class="num">${status.index+1 }</span>
														 <div class="show">
															<span class="imgArea">
																<a title="观看视频" href="">观看视频</a>
															</span>
														 </div>
													</div>
												
													<div class="site-piclist_info">
										        		<div class="site-title_score"> 
										        		    <span class="score">
										        		              <strong class="num">${hotmovie.movieGrade}</strong>
										        		    </span>  
										                    <div class="title2">
										                        <p class="site-piclist_info_title movie-tit ">
										                            <a title="${hotmovie.movieName}" href="" target="_blank">${hotmovie.movieName}</a>      
										                        </p>      
										                    </div>
										                   	<div class="role_info"> <em>主演:</em><em>${hotmovie.actorName}</em>
                    </div>
										                </div>          
										        	</div>
												</li>
											</c:forEach>
											</ul>
										</div>
												<div class="clearfix"></div>
						</div>
				</div>
           	
			 </div>
			</div>
			
			
          </div>
        </div>
     </div>
<script src="${APP_PATH }/static/js/jquery-1.11.1.min.js"></script>
		<!-- Dropdown-Menu-JavaScript -->
		<script>
			$(document).ready(function() {
				$(".dropdown").hover(
					function() {
						$('.dropdown-menu', this).stop(true, true).slideDown("fast");
						$(this).toggleClass('open');
					},
					function() {
						$('.dropdown-menu', this).stop(true, true).slideUp("fast");
						$(this).toggleClass('open');
					}
				);
			});
		</script>
		<!-- //Dropdown-Menu-JavaScript -->
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
			$(document).ready(function() {
				$('#horizontalTab').easyResponsiveTabs({
					type: 'default', //Types: default, vertical, accordion           
					width: 'auto', //auto or any width like 600px
					fit: true, // 100% fit in a container
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
					autoPlay: true,
					navigation: true,

					items: 5,
					itemsDesktop: [640, 4],
					itemsDesktopSmall: [414, 3]

				});

			});
		</script>

		<!--/script-->
		<script type="text/javascript" src="${APP_PATH }/static/js/move-top.js"></script>
		<script type="text/javascript" src="${APP_PATH }/static/js/easing.js"></script>

		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event) {
					event.preventDefault();
					$('html,body').animate({ scrollTop: $(this.hash).offset().top }, 900);
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
		
		<script type="text/javascript" src="${APP_PATH }/static/js/jquery.SuperSlide.js" ></script>
		<script type="text/javascript">jQuery(".m-slide").slide({ titCell:".tab li", mainCell:".img",effect:"fold", autoPlay:true});</script>

</body>
</html>