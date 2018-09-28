<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>系统登录</title>
<% pageContext.setAttribute("APP_PATH", request.getContextPath()); %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/manage/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/manage/static/h-ui/css/H-ui.min.css" />
<link href="${APP_PATH }/static/manage/css/login.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all" />
<link href="${APP_PATH }/static/manage/css/demo.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="${APP_PATH }/static/js/jquery.min.js"></script>
<script>
$(function(){

$(".i-text").focus(function(){
$(this).addClass('h-light');
});

$(".i-text").focusout(function(){
$(this).removeClass('h-light');
});
});

</script>
<style type="text/css">
.form-label {
    display: block;
    float: left;
    height: auto;
    line-height: 12px;
    text-align: left;
    width: auto;
    font-size: 14px;
    color: #fff;
    font-weight: bold;
    text-shadow: 1px 1px 1px #4e6877;
    -o-text-shadow: 1px 1px 1px #4e6877;
    -o-moz-shadow: 1px 1px 1px #4e6877;
    -o-mis-shadow: 1px 1px 1px #4e6877;
    -o-webkit-shadow: 1px 1px 1px #4e6877;
    margin-top: 16px;
    margin-bottom: 16px;
}

</style>
</head>
<body>
	
<div class="header" style="width: 1200px">
  	<div class="navbar-header">
		<h1><a  href="userindex" style="color: #000;font-family:'Montserrat', sans-serif;font-weight: 600"><span style="color: #02a388">N</span>uc  <span style="color: #02a388">M</span>ovies</a></h1>
	</div>
	<div class="headerNav">
		<a target="_blank" href="">系统官网</a>
		<a target="_blank" href="">关于系统</a>
		<a target="_blank" href="">开发团队</a>
		<a target="_blank" href="">意见反馈</a>
		<a target="_blank" href="">帮助</a>	
	</div>
</div>

<div class="banner">

<div class="login-aside">
  <div id="o-box-up"></div>
  <div id="o-box-down"  style="table-layout:fixed;padding: 30px 0px 0px 20px">
   <div class="error-box">
   ${va_msg }
   </div>
   
   <form class="registerform" type="post" action="adminLogin">
   <div class="fm-item">
	   <label for="logonId" class="form-label">电影系统后台登陆：</label>
	   <i style="color: #fff;font-size: 20px" class="Hui-iconfont">&#xe60d;</i><input type="text" id="adminAccount" value="" class="i-text" name="adminAccount" required autofocus>    
       <div class="ui-form-explain"></div>
  </div>
  
  <div class="fm-item">
	   <label for="logonId" class="form-label">登陆密码：</label>
	   <i style="color: #fff;font-size: 20px" class="Hui-iconfont">&#xe63f;</i><input type="password" value=""  id="adminPassword" class="i-text" name="adminPassword" required>    
       <div class="ui-form-explain"></div>
  </div>
  
  <div class="fm-item pos-r">
	   <label for="logonId" class="form-label">验证码</label>
       <div class="ui-form-explain" style="overflow: hidden;"> 
        <i style="color: #fff;font-size: 20px;float: left" class="Hui-iconfont">&#xe605;</i><input class="i-text" style="width: 120px;float: left" type="text" name="vcode" id="vcode" required/>
       <img id="getYzm" alt="" src="" style="width: 115px; height: 40px; line-height: 37px;padding-left: 5px;">
       </div>
      </div>
  
  <div style="overflow: hidden;padding-top: 10px">
  
   <div class="checkbox" style="float: left;padding-left: 40px;padding-top: 10px">
       <label style="overflow: hidden;">
           <span class="form-label">记住我：</span><input type="checkbox" name="rememberMe" style="float: left;margin-top: 15px">
      </label>
   </div>
   
  <div class="fm-item" style="float: left;padding-left: 30px">
	   <label for="logonId" class="form-label"></label>
	   <input type="submit" value="登录" class="btn btn-success-outline radius"> 
       <div class="ui-form-explain"></div>
  </div>
 
  </div>
  </form>
  
  </div>

</div>

	<div class="bd">
		<ul>
			<li style="background:url(${APP_PATH }/static/images/adminLoginbg.jpg) #CCE1F3 center 0 no-repeat;width: 1560px;height: 478px;"><a target="_blank" href=""></a></li>
		</ul>
	</div>

	<div class="hd"><ul></ul></div>
</div>

<div class="banner-shadow"></div>

<div class="footer">
   <p>Copyright &copy; 2018.中北大学软件学院.<a target="_blank" href="">杨超</a></p>
</div>


<script type="text/javascript">


//校验表单数据
function validate_add_form(){
	//1、拿到要校验的数据，使用正则表达式
	var adminAccount = $("#adminAccount").val();
	var regName = /(^[a-zA-Z0-9_-]{6,16}$)|(^[\u2E80-\u9FFF]{2,5})/;
	if(!regName.test(adminAccount)){
		//alert("用户名可以是2-5位中文或者6-16位英文和数字的组合");
		show_validate_msg("#adminAccount", "error", "用户名应是6-16位数字和字母的组合或2-5位中文");
		return false;
	}else{
		show_validate_msg("#adminAccount", "success", "");
	}
	return true;
}

//显示校验结果的提示信息
function show_validate_msg(ele,status,msg){
	//清除当前元素的校验状态
	$(ele).removeClass("has-success has-error");
	$(".error-box").text("");
	if("success"==status){
		$(ele).addClass("has-success");
		$(".error-box").text(msg);
	}else if("error" == status){
		$(ele).addClass("has-error");
		$(".error-box").text(msg);
	}
}
//校验用户名是否可用
$("#adminAccount").change(function(){
	//发送ajax请求校验用户名是否可用
	var adminAccount = this.value;
	$.ajax({
		url:"${APP_PATH}/adminAccountCheck",
		data:"adminAccount="+adminAccount,
		type:"POST",
		success:function(result){
			if(result.code==100){
				show_validate_msg("#adminAccount","success","用户名可用");
				$("#send-btn").attr("disabled","true");
			}else{
				show_validate_msg("#adminAccount","error",result.extend.va_msg);
				$("#send-btn").attr("disabled","false");
			}
		}
	});
});

$("#getYzm").click(function(){
	var url = "getGifCode?t=" + Math.random();
	this.src = url;
}).click().show();
</script>
</body>
</html>