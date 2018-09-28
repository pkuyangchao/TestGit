<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<% pageContext.setAttribute("APP_PATH", request.getContextPath()); %>
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
<title>Insert title here</title>
</head>
<body>
	
	<!--/tv-movies-->
					 <div class="tv-movies" style="padding-left: 110px">
										
										<div class="wrap">
											<ul class=" site-piclist-180236 site-piclist-auto" style="left: 0px;">
											<c:forEach items="${pageInfo.list }" var="hotmovie">
												<li>
													<div class="main_img site-piclist_pic">
														<img width="200" height="236" src="static${hotmovie.movieImg}">
														 <div class="show">
															<span class="imgArea">
																<a class="movieInfo" title="观看视频" href="moviesingle?movieId=${hotmovie.movieId}" target="_blank">观看视频</a>
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
										                            <a title="${hotmovie.movieName}" href="moviesingle?movieId=${hotmovie.movieId}" target="_blank">${hotmovie.movieName}</a>      
										                        </p>      
										                    </div>
										                   	<div class="role_info">
										                   	 <em>主演:</em>
									                         <em>
									                   			${hotmovie.actorName}
									              			  </em>
                    </div>
										                </div>          
										        	</div>
												</li>
											</c:forEach>
											</ul>
										</div>
												<div class="clearfix"></div>
						</div>
			<!--//tv-movies-->
			
			
					<!-- 显示分页信息 -->
					  <div class="blog-pagenat-wthree">
								<ul>
					<li><a class="frist" href="${APP_PATH }/movieallpage?pn=1&typekey=${typekey}&languagekey=${languagekey}&timekey=${timekey }&countrykey=${countrykey }&actorkey=${actorkey}">首页</a></li>
					<c:if test="${pageInfo.hasPreviousPage }">
						<li><a  class="frist" href="${APP_PATH }/movieallpage?pn=${pageInfo.pageNum-1}&typekey=${typekey}&languagekey=${languagekey}&timekey=${timekey }&countrykey=${countrykey }&actorkey=${actorkey}"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						</a></li>
					</c:if>


					<c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
						<c:if test="${page_Num == pageInfo.pageNum }">
							<li class="active"><a href="#">${page_Num }</a></li>
						</c:if>
						<c:if test="${page_Num != pageInfo.pageNum }">
							<li><a href="${APP_PATH }/movieallpage?pn=${page_Num }&typekey=${typekey}&languagekey=${languagekey}&timekey=${timekey }&countrykey=${countrykey }&actorkey=${actorkey}">${page_Num }</a></li>
						</c:if>

					</c:forEach>
					<c:if test="${pageInfo.hasNextPage }">
						<li><a class="last" href="${APP_PATH }/movieallpage?pn=${pageInfo.pageNum+1 }&typekey=${typekey}&languagekey=${languagekey}&timekey=${timekey }&countrykey=${countrykey }&actorkey=${actorkey}"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span>
						</a></li> 
					</c:if>
					<li><a class="last" href="${APP_PATH }/movieallpage?pn=${pageInfo.pages}&typekey=${typekey}&languagekey=${languagekey}&timekey=${timekey }&countrykey=${countrykey }&actorkey=${actorkey}">末页</a></li>
				</ul>
								
								<!--//requested-movies-->
					</div>
</body>
</html>