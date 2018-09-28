<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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

<div id="cinemas-list" class="cinemas-list">
    <h2 class="cinemas-list-header">影院列表</h2>
    <c:forEach items="${pageInfo.list }" var="cinema">
    	 <div class="cinema-cell">
        <div class="cinema-info">
          <a class="cinema-name" href="">${cinema.cinemaName }</a>
          <p class="cinema-address">地址：${cinema.cinemaArea }</p>
        </div>

        <div class="buy-btn">
          <a target="_blank"  href="play?cinemaId=${cinema.cinemaId }&hitmoviveId=${hitmovie.movieId }">选座购票</a>
        </div>
        
        <div class="price">
            <span class="rmb red">￥</span>
            <span class="price-num red"><span class="stonefont">43</span></span>
            <span>起</span>
        </div>
      </div>
    </c:forEach>
    
  </div>
  
  <!-- 显示分页信息 -->
					  <div class="blog-pagenat-wthree">
								<ul>
					<li><a class="frist" href="${APP_PATH }/cinemaallpage?pn=1&area=${area}&name=${name}&hall=${hall }&hitmovieId=${hitmovie.movieId }">首页</a></li>
					<c:if test="${pageInfo.hasPreviousPage }">
						<li><a  class="frist" href="${APP_PATH }/cinemaallpage?pn=${pageInfo.pageNum-1}&area=${area}&name=${name}&hall=${hall }&hitmovieId=${hitmovie.movieId }"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						</a></li>
					</c:if>


					<c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
						<c:if test="${page_Num == pageInfo.pageNum }">
							<li class="active"><a href="#">${page_Num }</a></li>
						</c:if>
						<c:if test="${page_Num != pageInfo.pageNum }">
							<li><a href="${APP_PATH }/cinemaallpage?pn=${page_Num }&area=${area}&name=${name}&hall=${hall }&hitmovieId=${hitmovie.movieId }">${page_Num }</a></li>
						</c:if>

					</c:forEach>
					<c:if test="${pageInfo.hasNextPage }">
						<li><a class="last" href="${APP_PATH }/cinemaallpage?pn=${pageInfo.pageNum+1 }&area=${area}&name=${name}&hall=${hall }&hitmovieId=${hitmovie.movieId }"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span>
						</a></li> 
					</c:if>
					<li><a class="last" href="${APP_PATH }/cinemaallpage?pn=${pageInfo.pages}&area=${area}&name=${name}&hall=${hall }&hitmovieId=${hitmovie.movieId }">末页</a></li>
				</ul>
								
								<!--//requested-movies-->
					</div>
</body>
</html>