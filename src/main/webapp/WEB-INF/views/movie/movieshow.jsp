<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<% pageContext.setAttribute("APP_PATH", request.getContextPath()); %>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />

<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/manage/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/manage/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/manage/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/manage/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/manage/static/h-ui.admin/css/style.css" />
<title>电影详情</title>
</head>
<body>
<div class="cl pd-20" style=" background-color:#5bacb6">
	<img class="avatar size-XL l" src="static${movie.movieImg }">
	<dl style="margin-left:80px; color:#fff">
		<dt>
			<span class="f-18">${movie.movieName }</span>
			<span class="pl-10 f-12">点赞人数：${movie.commentCount }</span>
		</dt>
		<dd class="pt-10 f-12" style="margin-left:0">这家伙很懒，什么也没有留下</dd>
	</dl>
</div>
<div class="pd-20">
	<table class="table">
		<tbody>
			<tr>
				<th class="text-r" width="80">导演：</th>
				<td>${movie.movieDirector }</td>
			</tr>
			<tr>
				<th class="text-r">编剧：</th>
				<td>${movie.movieScen }</td>
			</tr>
			<tr>
				<th class="text-r">演员：</th>
				<td>${movie.actorName }</td>
			</tr>
			<tr>
				<th class="text-r">地区：</th>
				<td>${movie.movieCountry }</td>
			</tr>
			<tr>
				<th class="text-r">类型：</th>
				<td>${movie.movieType }</td>
			</tr>
			<tr>
				<th class="text-r">上映时间：</th>
				<td>${movie.movieShowtime }</td>
			</tr>
			<tr>
				<th class="text-r">语言：</th>
				<td>${movie.movieLanguage }</td>
			</tr>
			<tr>
				<th class="text-r">时长：</th>
				<td>${movie.movieRuntime }</td>
			</tr>
			<tr>
				<th class="text-r">豆瓣评分：</th>
				<td>${movie.movieGrade }</td>
			</tr>
			
			<tr>
				<th class="text-r">简介：</th>
				<td>${movie.movieSummary }</td>
			</tr>
		</tbody>
	</table>
</div>
<!--_footer 作为公共模版分离出去--> 
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${APP_PATH }/static/manage/static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="${APP_PATH }/static/manage/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

</body>
</html>