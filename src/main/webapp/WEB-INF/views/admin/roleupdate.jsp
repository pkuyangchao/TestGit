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

<title>角色管理</title>
</head>
<body>
<article class="page-container">
	<form class="form form-horizontal" id="form-admin-add">
	<input type="hidden"  value="${role.roleId }" placeholder="" id="roleId" name="roleId">
	
	<div class="row cl">
		<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>角色名称：</label>
		<div class="formControls col-xs-8 col-sm-9">
			<input type="text" class="input-text" value="${role.roleName }" placeholder="" id="roleName" name="roleName">
		</div>
	</div>
	<div class="row cl">
		<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>角色描述：</label>
		<div class="formControls col-xs-8 col-sm-9">
			<input type="text" class="input-text" value="${role.roleDesc }" placeholder="" id="roleDesc" name="roleDesc">
		</div>
	</div>
	
	<div class="row cl">
		<label class="form-label col-xs-4 col-sm-3">权限：</label>
		<div class="formControls col-xs-8 col-sm-9"> <span class="select-box" style="width:150px;">
			<select class="select" name="rolepermission" size="1">
						
			</select>
			</span> </div>
	</div>
	
	<div class="row cl">
		<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
			<input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
		</div>
	</div>
	</form>
</article>


<div class="loading" aria-label="Loading" role="img" tabindex="-1"></div>

<!--_footer 作为公共模版分离出去--> 
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${APP_PATH }/static/manage/static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="${APP_PATH }/static/manage/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/jquery.validation/1.14.0/messages_zh.js"></script> 
<script type="text/javascript">

$(function(){
	
	function getAllPermissions(obj){
    	obj.html("");
		$.ajax({
			url:"listPermissions",
			type:"POST",
			dataType:"json",
			success:function(data){
				for(var i in data){
					var optionEle = $("<option></option>").append(data[i].permissionName).attr("value",data[i].permissionId);
					optionEle.appendTo(ele);
				}
			}
		});
   	}
	function getPermissionsByRoleId(roleId,doSuccess){
		$.ajax({
			url:"getPermissionsByRoleId",
			data:{roleId:roleId},
			type:"POST",
			dataType:"json",
			success:function(data){
				doSuccess(data);
			}
		});
	}
	var userid=$("#roleId").val();
	getAllPermissions($("#form-admin-add .select"));
	getPermissionsByRoleId(userid,function(data){
		for(var i in data){
			$(".select option[value='"+data[i].permissionId+"']").attr("selected","selected");
		}
	});
	

	$('.skin-minimal input').iCheck({
		checkboxClass: 'icheckbox-blue',
		radioClass: 'iradio-blue',
		increaseArea: '20%'
	});
	
	$("#form-admin-add").validate({
		rules:{
			adminRole:{
				required:true,
			},
		},
		onkeyup:false,
		focusCleanup:true,
		success:"valid",
		submitHandler:function(form){
			$(form).ajaxSubmit({
				type: 'PUT',
				url: "role" ,
				data:{roleId:roleId,roleName:roleName,roleDesc:roleDesc,rolepermission:rolepermission}
				success: function(data){
					//layer.msg('添加成功!',{icon:1,time:1000, btn:['继续添加', '关闭']});					
					      //配置一个透明的询问框
					      layer.msg('修改成功', {
					    	icon:1,
					        time: 20000, //20s后自动关闭
					        btn: ['继续修改', '关闭'],
					        yes: function(){
					            location.replace(location.href);
					          }
					          ,btn2: function(){
					        	  var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
						          parent.layer.close(index);
					        	  parent.location.reload(); // 父页面刷新
					          }

					      });
				},
                error: function(XmlHttpRequest, textStatus, errorThrown){
					layer.msg('error!',{icon:1,time:1000});
				}
			});
			parent.$('.btn-refresh').click();
		}
	});
});
</script> 

</body>
</html>