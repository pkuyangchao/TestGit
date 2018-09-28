<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<% pageContext.setAttribute("APP_PATH", request.getContextPath()); %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/manage/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/manage/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/manage/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/manage/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/manage/static/h-ui.admin/css/style.css" />
<title>用户管理</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 管理员管理 <span class="c-gray en">&gt;</span> 角色管理 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
	<div class="text-c"> 日期范围：
		<input type="text" onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'datemax\')||\'%y-%M-%d\'}' })" id="datemin" class="input-text Wdate" style="width:120px;">
		-
		<input type="text" onfocus="WdatePicker({ minDate:'#F{$dp.$D(\'datemin\')}',maxDate:'%y-%M-%d' })" id="datemax" class="input-text Wdate" style="width:120px;">
		<input type="text" class="input-text" style="width:250px" placeholder="输入会员名称、电话、邮箱" id="" name="">
		<button type="submit" class="btn btn-success radius" id="" name=""><i class="Hui-iconfont">&#xe665;</i> 搜用户</button>
	</div>
	<div class="cl pd-5 bg-1 bk-gray mt-20"> 
	<span class="l"><a href="javascript:;" onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a>
	 <a href="javascript:;" onclick="member_add('添加角色','roleadd','','510')" class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 添加角色</a></span>
	 <span><button type="button" class="btn btn-default show-add-form" data-toggle="modal" data-target="#role-add-form">添加新角色</button></span>
	  <span class="r">共有数据：<strong>${total }</strong> 条</span> </div>
	<div class="mt-20">
	<table class="table table-border table-bordered table-hover table-bg table-sort user-list">
		<thead>
			<tr>
				<th scope="col" colspan="6">角色管理</th>
			</tr>
			<tr class="text-c">
				<th width="25"><input type="checkbox" value="" name=""></th>
				<th width="40">ID</th>
				<th width="200">角色名</th>
				<th width="300">权限</th>
				<th width="70">操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${roles }" var="role">
			<tr class="text-c">
				<td><input type="checkbox" value="" name=""></td>
				<td class="roleid">${role.roleId }</td>
				<td>${role.roleName }</td>
				<td><a href="javascript:void(0);" class="show-user-roles" ><i class="Hui-iconfont">&#xe725;</i>查看所有权限</a></td>
				<td class="f-14">
				<a class="show-userrole-form" aria-hidden="true" title="修改角色信息" href="javascript:void(0);" data-toggle="modal" data-target="#update-userrole-dialog"><i class="Hui-iconfont">&#xe63c;</i></a>
				<a title="编辑" href="javascript:;" onclick="admin_edit('角色编辑','roleupdate?roleId=${role.roleId }','${role.roleId }','800','500')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> 
				<a title="删除" href="javascript:;" onclick="member_del(this,'${role.roleId }')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a>
				 </td>			
			</tr>
		</c:forEach>
		</tbody>
	</table>
	</div>
</div>

	<!--修改角色权限表单-->
            <div class="modal fade " id="update-userrole-dialog" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
                  <div class="modal-dialog modal-sm" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" >修改角色权限</h4>
                      </div>
                      <div class="modal-body">
                      	<form class="update-userrole-form">
                        	<input name="roleId" type="hidden"/>
                        	<div class="permissions-div"></div>
                        </form>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary update-userrole-submit">提交 </button>
                      </div>
                    </div>
                  </div>
            </div>
            
        <!--添加新角色表单-->
                <div class="modal fade " id="role-add-form" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
                  <div class="modal-dialog modal-md" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="role-form-title" ></h4>
                      </div>
                      <div class="modal-body">
                      	<form class="role-form">
                          <input type="hidden" name="roleId" class="form-control" id="roleIdInput">
                          <div class="form-group">
                            <label for="roleNameInput">名称</label>
                            <input type="text" name="roleName" class="form-control" id="roleNameInput" placeholder="角色名">
                          </div>
                          <div class="form-group">
                            <label>设置权限</label>
                            <div class="perm-inputs"></div>
                          </div>
                        </form>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary role-submit"></button>
                      </div>
                    </div>
                  </div>
                </div>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${APP_PATH }/static/manage/static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="${APP_PATH }/static/manage/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/My97DatePicker/4.8/WdatePicker.js"></script> 
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
$(function(){
	$('.table-sort').dataTable({
		"aaSorting": [[ 1, "desc" ]],//默认第几个排序
		"bStateSave": true,//状态保存
		"aoColumnDefs": [
		  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
		  {"orderable":false,"aTargets":[0]}// 制定列不参与排序
		]
	});
	
});
/*用户-添加*/
function member_add(title,url,w,h){
	layer_show(title,url,w,h);
}
/*用户-查看*/
function member_show(title,url,id,w,h){
	layer_show(title,url,w,h);
}
/*用户-停用*/
function member_stop(obj,id){
	layer.confirm('确认要停用吗？',function(index){
		$.ajax({
			type: 'POST',
			url: '',
			dataType: 'json',
			success: function(data){
				$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="Hui-iconfont">&#xe6e1;</i></a>');
				$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已停用</span>');
				$(obj).remove();
				layer.msg('已停用!',{icon: 5,time:1000});
			},
			error:function(data) {
				console.log(data.msg);
			},
		});		
	});
}

/*用户-启用*/
function member_start(obj,id){
	layer.confirm('确认要启用吗？',function(index){
		$.ajax({
			type: 'POST',
			url: '',
			dataType: 'json',
			success: function(data){
				$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe631;</i></a>');
				$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
				$(obj).remove();
				layer.msg('已启用!',{icon: 6,time:1000});
			},
			error:function(data) {
				console.log(data.msg);
			},
		});
	});
}
/*用户-编辑*/
function member_edit(title,url,id,w,h){
	layer_show(title,url,w,h);
}
/*密码-修改*/
function change_password(title,url,id,w,h){
	layer_show(title,url,w,h);	
}
/*用户-删除*/
function member_del(obj,id){
	var userAccount = $(obj).parents("tr").find("td:eq(2)").text();
	layer.confirm('确认要删除【'+userAccount+'】吗？',function(index){
		$.ajax({
			type: 'DELETE',
			url: '${APP_PATH}/role/'+id,
			dataType: 'json',
			success: function(data){
				$(obj).parents("tr").remove();
				layer.msg('已删除!',{icon:1,time:1000});
				location.replace(location.href);
			},
			error:function(data) {
				console.log(data.msg);
			},
		});		
	});
}

/*管理员-批量删除*/
function datadel(){
	var userAccounts = "";
	var del_idstr = "";
	$.each($(".check_item:checked"),function(){
		userAccounts += $(this).parents("tr").find("td:eq(2)").text()+",";
		del_idstr += $(this).parents("tr").find("td:eq(1)").text()+"-";
	});
	userAccounts = userAccounts.substring(0, userAccounts.length-1);
	del_idstr = del_idstr.substring(0, del_idstr.length-1);
	layer.confirm('确认要删除【'+userAccounts+'】吗？',function(index){
		$.ajax({
			type: 'DELETE',
			url: '${APP_PATH}/role/'+del_idstr,
			dataType: 'json',
			success: function(data){
				layer.msg('已删除!',{icon:1,time:1000});
				location.replace(location.href);
			},
			error:function(data) {
				console.log(data.msg);
			},
		});		
	});
}

$(".user-list").on("click",".show-user-roles",function(){
	var username=$(this).parents("tr").find(".roleid").html();
	var urTd=$(this).parent();
	//请求查看用户角色
	getRolesByUserName(username,function(data){
		urTd.html("");
		for(var i in data){
			var role=data[i].roleName+":"+data[i].roleDesc+"<br/>";
			urTd.append(role);
		}
	});
});
function getRolesByUserName(username,doSuccess){
	$.ajax({
		url:"showroleperms",
		data:{userName:username},
		type:"POST",
		dataType:"json",
		success:function(data){
			doSuccess(data);
		}
	});
}


function getAllPermissions(obj){
	obj.html("");
	$.ajax({
		url:"listPermissions",
		type:"POST",
		dataType:"json",
		success:function(data){
			for(var i in data){
				obj.append("<input type='radio' name='permissionId' value='"+
						data[i].permissionId+"'/>"+data[i].permissionName);
				obj.append("<br/>");
			}
		}
	});
	}


$("#role-list").on("click",".show-roleinfo-form",function(){
	var roleId=$(this).parents("tr").find(".roleid").html();
	$(".update-userrole-form input[name='roleId']").val(roleId);
	//获取当前用户当前角色
	getAllPermissions($(".update-userrole-form .permissions-div"));
	getPermsByRoleId(roleId,function(data){
		for(var i in data){
			$('.update-userrole-form input[name="permissionId"][value="'+data[i].permissionId+'"]').prop("checked",true);
		}
	});
});
//确认修改权限
$(".update-userrole-submit").click(function(){
	$.ajax({
		url:"corelationPermission",
		data:$(".update-userrole-form").serialize(),
		type:"POST",
		success:function(){
			$("#role-form-div").modal("hide");
			layer.msg('更新成功!', {icon: 6,time:1000});
		}
	});
});

function resetRoleForm(title,button){
   	$(".role-form input[type='text']").val("");
	$(".role-form input[type='checkbox']").prop("checked",false);
		$(".role-form-title").html(title);
	$(".role-submit").html(button);
}
	
//添加、修改角色
$(".show-add-form").click(function(){
	resetRoleForm("添加新角色","添加");
	getAllPermissions($(".perm-inputs"));
});

$(".role-submit").click(function(){
	if($(this).html()==="添加"){
		//请求添加新角色
		$.ajax({
			url:"roleadd",
			type:"POST",
			data:$(".role-form").serialize(),
			dataType:"json",
			success:function(data){
				$("#role-add-form").modal("hide");
				showTips("添加成功！");
				
				var newTr=
					'<tr>'+
	                	'<td><input type="checkbox" name="roleIds" value="'+data.roleId+'"/></td>'+
	                    '<td class="roleId">'+data.roleId+'</td>'+
	                    '<td>'+data.roleName+'</td>'+
	                    '<td><a href="javascript:void(0);" class="show-role-perms" >查看所有权限</a></td>'+
	                    '<td><a class="show-roleinfo-form" aria-hidden="true" title="修改角色信息" href="javascript:void(0);" data-toggle="modal" data-target="#role-form-div"><i class="Hui-iconfont">&#xe63c;</i></a>' +
	    				'<a title="编辑" href="javascript:;" onclick="admin_edit('角色编辑','roleupdate?roleId=data.roleId','data.roleId','800','500')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a>'+
	    				'<a title="删除" href="javascript:;" onclick="member_del(this,'data.roleId')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a>'+
	    				 '</td>'+
                	'</tr>';
				$(".role-list tr").eq(0).after(newTr);
			}
		});
	}else{
		//更新角色信息
		$.ajax({
			url:"updaterole",
			data:$(".role-form").serialize(),
			type:"POST",
			success:function(){
				$("#role-add-form").modal("hide");
				showTips("更新成功！");
			}
		});
	}
});
</script> 

</body>
</html>