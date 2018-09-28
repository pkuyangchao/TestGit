<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
<title>用户查看</title>
</head>
<body>
<div class="cl pd-20" style=" background-color:#5bacb6">
	<c:if test="${empty user.userTitle }">
		<img class="avatar size-XL l" src="${APP_PATH }/static/manage/static/h-ui/images/ucnter/avatar-default.jpg">
	</c:if>
	<c:if test="${not empty user.userTitle }">
		<img class="avatar size-XL l" src="static${user.userTitle}">
	</c:if>
	<dl style="margin-left:80px; color:#fff">
		<dt>
			<span class="f-18">${user.userAccount }</span>
			<span class="pl-10 f-12">UID:${user.userId }</span>
		</dt>
		<dd class="pt-10 f-12" style="margin-left:0">这家伙很懒，什么也没有留下</dd>
	</dl>
</div>
<div class="pd-20">
	<table class="table">
		<tbody>
			<tr>
				<th class="text-r" width="80">性别：</th>
				<td>${user.userSex=="0"?"男":"女" }</td>
			</tr>
			<tr>
				<th class="text-r">手机：</th>
				<td>${user.userPhone }</td>
			</tr>
			<tr>
				<th class="text-r">邮箱：</th>
				<td>${user.userEmail }</td>
			</tr>
			<tr>
				<th class="text-r">注册时间：</th>
				<td>2014.12.20</td>
			</tr>
			<tr>
				<th class="text-r">积分：</th>
				<td>330</td>
			</tr>
		</tbody>
	</table>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${APP_PATH }/static/manage/static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="${APP_PATH }/static/manage/static/h-ui.admin/js/H-ui.admin.js"></script> 
<!--/_footer 作为公共模版分离出去-->
</body>
</html>