<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/views/common/_meta.jsp"%>
<link  type="text/css" href="${APP_PATH }/static/css/bootstrap.css"/>
<link  type="text/css" href="${APP_PATH }/static/css/bootstrap.min.css"/>
<link href="${APP_PATH }/static/css/layout.css" rel="stylesheet">
<title>管理员列表</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 管理员管理 <span class="c-gray en">&gt;</span> 管理员列表 
<a id="btn-refresh" class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
	
		<form action="adminlist">
		<div class="text-c"> 日期范围：
		<input type="text" onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'datemax\')||\'%y-%M-%d\'}' })" id="datemin" class="input-text Wdate" style="width:120px;">
		-
		<input type="text" onfocus="WdatePicker({ minDate:'#F{$dp.$D(\'datemin\')}',maxDate:'%y-%M-%d' })" id="datemax" class="input-text Wdate" style="width:120px;">
		
		<input type="text" class="input-text" style="width:250px" placeholder="输入管理员账号或ID" id="adminSearch" name="adminSearch">
		<button type="submit"  class="btn btn-success" id="search-btn" name=""><i class="Hui-iconfont">&#xe665;</i> 搜用户</button>
		</div> 
		</form>
	
	<div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l">
	<a href="javascript:;" onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a> 
	<a href="javascript:;" onclick="admin_add('添加管理员','adminadd','800','500')" class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 添加管理员</a>
	</span> <span class="r">共有数据：<strong>${pageInfo.total }</strong> 条</span> </div>
	<table class="table table-border table-bordered table-bg user-list">
		<thead>
			<tr>
				<th scope="col" colspan="12">员工列表</th>
			</tr>
			<tr class="text-c">
				<th width="25"><input type="checkbox" name="" value=""></th>
				<th width="40">ID</th>
				<th width="150">登录名</th>
				<th>姓名</th>
				<th width="90">手机</th>
				<th width="150">邮箱</th>
				<th>身份证</th>
				<th>角色</th>
				<th>性别</th>
				<th width="130">加入时间</th>
				<th width="100">是否已启用</th>
				<th width="100">操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${pageInfo.list }" var="admin">
						<tr class="text-c">
							<td><input class="check_item" type="checkbox" value="1" name=""></td>
							<td class="userid">${admin.adminId }</td>
							<td class="username" >${admin.adminAccount }</td>
							<td>${admin.adminName }</td>
							<td>${admin.adminPhone }</td>
							<td>${admin.adminEmail }</td>
							<td>${admin.adminIdcard }</td>
							<td><a href="javascript:void(0);" class="show-user-roles" ><i class="Hui-iconfont">&#xe725;</i>显示所有角色</a>
							</td>
							<td>${admin.adminSex=="0"?"男":"女" }</td>
							<td>2014-6-11 11:11:42</td>
							<td class="td-status"><span class="label label-success radius">已启用</span></td>
							<td class="td-manage">
							<a style="text-decoration:none" onClick="admin_stop(this,'10001')" href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe631;</i></a> 
							<shiro:hasRole name="superAdmin">
							<a class='show-userrole-form' aria-hidden='true' title='修改用户角色' href='javascript:void(0);' data-toggle='modal' data-target='#update-userrole-dialog'><i class="Hui-iconfont">&#xe63c;</i></a>
							<a title="编辑" href="javascript:;" onclick="admin_edit('管理员编辑','adminupdate?adminId=${admin.adminId }','${admin.adminId }','800','500')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> 
							<a title="删除" href="javascript:;" onclick="admin_del(this,'${admin.adminId }')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a>
							</shiro:hasRole>
							</td>
						</tr>
			</c:forEach>
			
		</tbody>
	</table>
	
	<!--修改用户角色表单-->
            <div class="modal fade " id="update-userrole-dialog" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
                  <div class="modal-dialog modal-sm" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" >修改用户角色</h4>
                      </div>
                      <div class="modal-body">
                      	<form class="update-userrole-form">
                        	<input name="userId" type="hidden"/>
                        	<div class="roles-div"></div>
                        </form>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary update-userrole-submit">提交 </button>
                      </div>
                    </div>
                  </div>
            </div>
	
	<!-- 显示分页信息 -->
		<div class="row">
			<!--分页文字信息  -->
			<div class="col-md-6">当前 ${pageInfo.pageNum }页,总${pageInfo.pages }
				页,总 ${pageInfo.total } 条记录</div>
			<!-- 分页条信息 -->
			<div class="col-md-6 dataTables_paginate paging_simple_numbers">
				<nav aria-label="Page navigation">
				<ul class="pagination">
					<li class="paginate_button"><a href="${APP_PATH }/adminlist?pn=1">首页</a></li>
					<c:if test="${pageInfo.hasPreviousPage }">
						<li class="paginate_button"><a href="${APP_PATH }/adminlist?pn=${pageInfo.pageNum-1}"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						</a></li>
					</c:if>


					<c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
						<c:if test="${page_Num == pageInfo.pageNum }">
							<li class="active paginate_button"><a href="#">${page_Num }</a></li>
						</c:if>
						<c:if test="${page_Num != pageInfo.pageNum }">
							<li class="paginate_button"><a href="${APP_PATH }/adminlist?pn=${page_Num }">${page_Num }</a></li>
						</c:if>

					</c:forEach>
					<c:if test="${pageInfo.hasNextPage }">
						<li class="paginate_button"><a href="${APP_PATH }/adminlist?pn=${pageInfo.pageNum+1 }"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span>
						</a></li>
					</c:if>
					<li class="paginate_button"><a href="${APP_PATH }/adminlist?pn=${pageInfo.pages}">末页</a></li>
				</ul>
				</nav>
			</div>
		</div>
</div>

<%@ include file="/WEB-INF/views/common/_footer.jsp"%>
<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/My97DatePicker/4.8/WdatePicker.js"></script> 
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
/*
	参数解释：
	title	标题
	url		请求的url
	id		需要操作的数据id
	w		弹出层宽度（缺省调默认值）
	h		弹出层高度（缺省调默认值）
*/

/*管理员-增加*/
function admin_add(title,url,w,h){
	layer_show(title,url,w,h);
}

/*管理员-删除*/
function admin_del(obj,id){
	var adminAccount = $(obj).parents("tr").find("td:eq(2)").text();
	layer.confirm('确认要删除【'+adminAccount+'】吗？',function(index){
		$.ajax({
			type: 'DELETE',
			url: '${APP_PATH}/admin/'+id,
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
	var adminAccounts = "";
	var del_idstr = "";
	$.each($(".check_item:checked"),function(){
		adminAccounts += $(this).parents("tr").find("td:eq(2)").text()+",";
		del_idstr += $(this).parents("tr").find("td:eq(1)").text()+"-";
	});
	adminAccounts = adminAccounts.substring(0, adminAccounts.length-1);
	del_idstr = del_idstr.substring(0, del_idstr.length-1);
	layer.confirm('确认要删除【'+adminAccounts+'】吗？',function(index){
		$.ajax({
			type: 'DELETE',
			url: '${APP_PATH}/admin/'+del_idstr,
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

/*管理员-编辑*/
function admin_edit(title,url,id,w,h){
	layer_show(title,url,w,h);
}
/*管理员-停用*/
function admin_stop(obj,id){
	layer.confirm('确认要停用吗？',function(index){
		//此处请求后台程序，下方是成功后的前台处理……
		
		$(obj).parents("tr").find(".td-manage").prepend('<a onClick="admin_start(this,id)" href="javascript:;" title="启用" style="text-decoration:none"><i class="Hui-iconfont">&#xe615;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-default radius">已禁用</span>');
		$(obj).remove();
		layer.msg('已停用!',{icon: 5,time:1000});
	});
}

/*管理员-启用*/
function admin_start(obj,id){
	layer.confirm('确认要启用吗？',function(index){
		//此处请求后台程序，下方是成功后的前台处理……
		
		
		$(obj).parents("tr").find(".td-manage").prepend('<a onClick="admin_stop(this,id)" href="javascript:;" title="停用" style="text-decoration:none"><i class="Hui-iconfont">&#xe631;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
		$(obj).remove();
		layer.msg('已启用!', {icon: 6,time:1000});
	});
}
/*
$("#search-btn").click(function(){
	var keyword = $("#adminSearch").val();
	alert($("#adminSearch").val());
	$.get("${APP_PATH}/adminlist?keyword="+keyword );
});
*/

function getRolesByUserName(username,doSuccess){
	$.ajax({
		url:"showroles",
		data:{userName:username},
		type:"POST",
		dataType:"json",
		success:function(data){
			doSuccess(data);
		}
	});
}
$(".user-list").on("click",".show-user-roles",function(){
	var username=$(this).parents("tr").find(".username").html();
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

function getAllRoles(obj){
	obj.html("");
	$.ajax({
		url:"listRoles",
		type:"POST",
		dataType:"json",
		success:function(data){
			for(var i in data){
				obj.append("<input type='radio' name='roleId' value='"+
						data[i].roleId+"'/>"+data[i].roleName+":"+data[i].roleDesc);
				obj.append("<br/>");
			}
		}
	});
	}

$(".select-all-btn").change(function(){
	if($(this).is(":checked")){//$(this).prop("checked")
		$(".user-list input[type='checkbox']:gt(0)").prop("checked",true);
	}else{
		$(".user-list input[type='checkbox']:gt(0)").prop("checked",false);
	}
});
$(".user-list").on("click",".show-userrole-form",function(){
	var userid=$(this).parents("tr").find(".userid").html();
	var username=$(this).parents("tr").find(".username").html();
	$(".update-userrole-form input[name='userId']").val(userid);
	//获取当前用户当前角色
	getAllRoles($(".update-userrole-form .roles-div"));
	getRolesByUserName(username,function(data){
		for(var i in data){
			$('.update-userrole-form input[name="roleId"][value="'+data[i].roleId+'"]').prop("checked",true);
		}
	});
});
//确认修改用户角色
$(".update-userrole-submit").click(function(){
	$.ajax({
		url:"corelationRole",
		data:$(".update-userrole-form").serialize(),
		type:"POST",
		success:function(){
			$("#update-userrole-dialog").modal("hide");
			layer.msg('更新成功!', {icon: 6,time:1000});
		}
	});
});
</script>
</body>
</html>