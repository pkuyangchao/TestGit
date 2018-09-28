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

<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/css/bootstrap.min.css">
<link href="${APP_PATH }/static/css/cropper.min.css" rel="stylesheet">
<link href="${APP_PATH }/static/css/sitelogo.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/css/font-awesome.css">
<script src="${APP_PATH }/static/js/jquery.min.js"></script>
<script src="${APP_PATH }/static/js/bootstrap.min.js"></script>
<script src="${APP_PATH }/static/js/cropper.js"></script>
<script src="${APP_PATH }/static/js/sitelogo.js"></script>


<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/manage/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/manage/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/manage/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/manage/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/manage/static/h-ui.admin/css/style.css" />
<title>修改个人信息 </title>
</head>
<body>
<article class="page-container">
	
	<h1 class="page-header" style="text-align: center;">出错啦</h1>
		
		<hr>
	
          <div class="row placeholders">
            	<h3 style="text-align: center;">
                	很抱歉，您没有相关权限！
                </h3>
          </div>  	
</article>


<!--_footer 作为公共模版分离出去--> 
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${APP_PATH }/static/manage/static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="${APP_PATH }/static/manage/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

</body>
</html>