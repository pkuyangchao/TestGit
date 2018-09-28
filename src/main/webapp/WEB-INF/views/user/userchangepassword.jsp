<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<% pageContext.setAttribute("APP_PATH", request.getContextPath()); %>
<%@ include file="/WEB-INF/views/common/_meta.jsp"%>
<title>修改密码 - 会员管理 </title>
</head>
<body>
<article class="page-container">
	<form action="" method="post" class="form form-horizontal" id="form-change-password">
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>账户：</label>
			<div class="formControls col-xs-8 col-sm-9">${user.userAccount }
			<input type="hidden" name="userId" value="${user.userId }"/>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>原密码：</label>
			<div class="formControls col-xs-8 col-sm-9">${user.userPassword }</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>新密码：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="password" vlaue="${user.userPassword }" class="input-text" autocomplete="off" placeholder="不修改请留空" name="newpassword" id="newpassword">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>确认密码：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="password" class="input-text" autocomplete="off" placeholder="不修改请留空" name="newpassword2" id="new-password2">
			</div>
		</div>
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
				<input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;保存&nbsp;&nbsp;">
			</div>
		</div>
	</form>
</article>
<%@ include file="/WEB-INF/views/common/_footer.jsp"%>
<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/jquery.validation/1.14.0/messages_zh.js"></script> 
<script type="text/javascript">
$(function(){
	$("#form-change-password").validate({
		rules:{
			newpassword:{
				required:true,
				minlength:6,
				maxlength:16
			},
			newpassword2:{
				required:true,
				minlength:6,
				maxlength:16,
				equalTo: "#newpassword"
			},
		},
		onkeyup:false,
		focusCleanup:true,
		success:"valid",
		submitHandler:function(form){
			
					$(form).ajaxSubmit({
						type: 'post',
						url: "userpassword" ,
						success: function(data){
							      layer.msg('修改成功', {
							    	icon:1,
							        time: 2000 //20s后自动关闭
							        
							      });
							      var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
							      parent.location.reload(); // 父页面刷新
							      parent.layer.close(index);
						},
		                error: function(XmlHttpRequest, textStatus, errorThrown){
							layer.msg('error!',{icon:1,time:1000});
						}
					});	
		}
	});
});
</script>
</body>
</html>