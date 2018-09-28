<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>折线图</title>
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

</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 统计管理 <span class="c-gray en">&gt;</span> 折线图 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">

	<div id="container" style="min-width:700px;height:400px"></div>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${APP_PATH }/static/manage/static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="${APP_PATH }/static/manage/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/hcharts/Highcharts/5.0.6/js/highcharts.js"></script>
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/hcharts/Highcharts/5.0.6/js/modules/exporting.js"></script>
<script type="text/javascript">
$(function () {
    Highcharts.chart('container', {
        title: {
            text: '影片分类统计',
            x: -20 //center
        },
        subtitle: {
            text: '来源：本电影系统',
            x: -20
        },
        xAxis: {
            categories: ['前-1975', '1976-1980', '1981-1985', '1986-1990','1991-1995','1996-2000',
            	'2001-2005','2006-2010','2010-2015','2016-今']
        },
        yAxis: {
            title: {
                text: '影片数量（个）'
            },
            plotLines: [{
                value: 0,
                width: 1,
                color: '#808080'
            }]
        },
        tooltip: {
            valueSuffix: '个'
        },
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'middle',
            borderWidth: 0
        },
        series: [{
            name: '${movieTypeName1}',
            data: [${rate11}, ${rate12}, ${rate13}, ${rate14}, ${rate15}, ${rate16}, ${rate17}, ${rate18}, ${rate19}, ${rate110}]
        }, {
            name: '${movieTypeName2}',
            data: [${rate21}, ${rate22}, ${rate23}, ${rate24}, ${rate25}, ${rate26}, ${rate27}, ${rate28}, ${rate29}, ${rate210}]
        }, {
            name: '${movieTypeName3}',
            data: [${rate31}, ${rate32}, ${rate33}, ${rate34}, ${rate35}, ${rate36}, ${rate37}, ${rate38}, ${rate39}, ${rate310}]
        }, {
            name: '${movieTypeName4}',
            data: [${rate41}, ${rate42}, ${rate43}, ${rate44}, ${rate45}, ${rate46}, ${rate47}, ${rate48}, ${rate49}, ${rate410}]
        }, {
            name: '${movieTypeName5}',
            data: [${rate51}, ${rate52}, ${rate53}, ${rate54}, ${rate55}, ${rate56}, ${rate57}, ${rate58}, ${rate59}, ${rate510}]
        }, {
            name: '${movieTypeName6}',
            data: [${rate61}, ${rate62}, ${rate63}, ${rate64}, ${rate65}, ${rate66}, ${rate67}, ${rate68}, ${rate69}, ${rate610}]
        }, {
            name: '${movieTypeName7}',
            data: [${rate71}, ${rate72}, ${rate73}, ${rate74}, ${rate75}, ${rate76}, ${rate77}, ${rate78}, ${rate79}, ${rate710}]
        }, {
            name: '${movieTypeName8}',
            data: [${rate81}, ${rate82}, ${rate83}, ${rate84}, ${rate85}, ${rate86}, ${rate87}, ${rate88}, ${rate89}, ${rate810}]
        }, {
            name: '${movieTypeName9}',
            data: [${rate91}, ${rate92}, ${rate93}, ${rate94}, ${rate95}, ${rate96}, ${rate97}, ${rate98}, ${rate99}, ${rate910}]
        }, {
            name: '${movieTypeName10}',
            data: [${rate101}, ${rate22}, ${rate103}, ${rate104}, ${rate105}, ${rate106}, ${rate107}, ${rate108}, ${rate109}, ${rate1010}]
        }]
    });
});
</script>
</body>
</html>