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
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 影片管理 <span class="c-gray en">&gt;</span> 影片列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>

<div class="page-container">

	<div class="text-c"> 
	 <span class="select-box inline">
		<select name="" class="select">
		<option value="0">全部分类</option>
			<c:forEach items="${movieTypes }" var="movieType">
				<option value="${movieType.movieTypeId }">${movieType.movieTypeName }</option>
			</c:forEach>
		</select>
		</span>
	日期范围：
		<input type="text" onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'datemax\')||\'%y-%M-%d\'}' })" id="datemin" class="input-text Wdate" style="width:120px;">
		-
		<input type="text" onfocus="WdatePicker({ minDate:'#F{$dp.$D(\'datemin\')}',maxDate:'%y-%M-%d' })" id="datemax" class="input-text Wdate" style="width:120px;">
		<input type="text" class="input-text" style="width:250px" placeholder="输入电影名称" id="" name="">
		<button type="submit" class="btn btn-success radius" id="" name=""><i class="Hui-iconfont">&#xe665;</i> 搜电影</button>
	</div>
	<div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"><a href="javascript:;" onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a> 
	<a class="btn btn-primary radius" data-title="添加电影" data-href="movieadd" onclick="Hui_admin_tab(this)" href="javascript:;"><i class="Hui-iconfont">&#xe600;</i> 添加电影</a>
	</span> <span class="r">共有数据：<strong>${pageInfo.total }</strong> 条</span> </div>
	<div class="mt-20">
	<table class="table table-border table-bordered table-hover table-bg table-sort">
		<thead>
			<tr class="text-c">
				<th width="25"><input type="checkbox" name="" value=""></th>
				<th width="50">ID</th>
				<th>电影名称</th>
				<th>导演</th>
				<th>编剧</th>
				<th>类型</th>
				<th width="">地区</th>
				<th>语言</th>
				<th width="">时长</th>
				<th width="">豆瓣评分</th>
				<th width="">点赞数量</th>
				<th width="70">状态</th>
				<th width="100">操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${pageInfo.list }" var="movie">
						<tr class="text-c">
							<td><input class="check_item" type="checkbox" value="1" name=""></td>
							<td><a href="javascript:;" onClick="picture_edit('图库编辑','pictureShow?movieId=${movie.movieId}','${movie.movieId}')">${movie.movieId }</a></td>
							<td><u style="cursor:pointer" class="text-primary" onclick="member_show('${movie.movieName }','movieshow?movieId=${movie.movieId }','${movie.movieId }','660','600')">${movie.movieName }</u></td>
							<td>${movie.movieDirector }</td>
							<td>${movie.movieScen }</td>
							<td class="text-l">${movie.movieType }</td>
							<td>${movie.movieCountry }</td>
							<td>${movie.movieLanguage }</td>
							<td>${movie.movieRuntime }</td>
							<td>${movie.movieGrade }</td>
							<td>${movie.commentCount }</td>
							<td class="td-status"><span class="label label-success radius">已启用</span></td>
							<td class="td-manage">
								<a style="text-decoration:none" onClick="member_stop(this,'10001')" href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe631;</i></a>
								<a title="编辑" href="javascript:;" onclick="member_edit('编辑','useradd','4','','510')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a>
								<a title="删除" href="javascript:;" onclick="member_del(this,'${movie.movieId }')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a>
							</td>
						</tr>
			</c:forEach>		
		</tbody>
	</table>
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
		  {"orderable":false,"aTargets":[0,2,3,4,6,7,10,11]}// 制定列不参与排序
		],
		"lengthMenu": [
			  [5, 10, 20, -1],
              [5, 10, 20, 100,"All"] // change per page values here
        ],
	});
	
	var type_arr = new Array(5);//定义一个数组，用于存放自定义条件。n根据自定义下拉菜单的个数确定  
	var type_str = new String(); 
	
	$.each($('.select-box .select'),function(){//遍历各下拉菜单  
	    $('option').on('click',function(){ 
	    	if($(this).text()=="全部分类"){
	    		$('.page-container').find('.dataTables_filter [type=search]').val("").keyup();
			}else{
		        type_arr.splice(1,1,$(this).text());//每列条件更新时，新值替换旧值  
		        type_str = type_arr.join(" ");//将数组转换为字符串，用空格连接  
		       	$('.page-container').find('.dataTables_filter [type=search]').val(type_str).keyup();//将字符串赋值给input，同时触发其keyup事件，实现数据的过滤筛选  
			}
		}); 
	} );

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
/*电影-删除*/
function member_del(obj,id){
	var movieName = $(obj).parents("tr").find("td:eq(2)").text();
	layer.confirm('确认要删除【'+movieName+'】吗？',function(index){
		$.ajax({
			type: 'DELETE',
			url: '${APP_PATH}/movie/'+id,
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
	var movieNames = "";
	var del_idstr = "";
	$.each($(".check_item:checked"),function(){
		movieNames += $(this).parents("tr").find("td:eq(2)").text()+",";
		del_idstr += $(this).parents("tr").find("td:eq(1)").text()+"-";
	});
	movieNames = movieNames.substring(0, movieNames.length-1);
	del_idstr = del_idstr.substring(0, del_idstr.length-1);
	layer.confirm('确认要删除【'+movieNames+'】吗？',function(index){
		$.ajax({
			type: 'DELETE',
			url: '${APP_PATH}/movie/'+del_idstr,
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

/*图片-编辑*/
function picture_edit(title,url,id){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}
</script> 

</body>
</html>