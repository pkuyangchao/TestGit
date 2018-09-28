<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>3D饼状图</title>
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
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 统计管理 <span class="c-gray en">&gt;</span> 3D饼状图 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
	<div id="container" style="min-width:700px;height:400px"></div>
	<div id="sliders">
	<table>
	   <tr><td>Alpha图表视图旋转角度</td><td><input id="R0" type="range" min="0" max="45" value="15"/> <span id="R0-value" class="value"></span></td></tr>
	   <tr><td>Beta图表视图旋转角度</td><td><input id="R1" type="range" min="0" max="45" value="15"/> <span id="R1-value" class="value"></span></td></tr>
	</table>
	</div>
</div>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${APP_PATH }/static/manage/static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="${APP_PATH }/static/manage/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/hcharts/Highcharts/5.0.6/js/highcharts.js"></script>
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/hcharts/Highcharts/5.0.6/js/modules/exporting.js"></script>
<script type="text/javascript" src="${APP_PATH }/static/manage/lib/hcharts/Highcharts/5.0.6/js/highcharts-3d.js"></script>
<script type="text/javascript">
﻿﻿$(function () {
    $('#container').highcharts({
        chart: {
            type: 'pie',
            options3d: {
                enabled: true,
                alpha: 45,
                beta: 0
            }
        },
        title: {
            text: '影片数量分类统计饼状图'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                depth: 35,
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                    style: {
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                    }
                },
                slicedOffset: 20,
                point: {                  // 每个扇区是数据点对象，所以事件应该写在 point 下面
                    events: {
                        // 鼠标滑过是，突出当前扇区
                        mouseOver: function() {
                            this.slice();
                        },
                        // 鼠标移出时，收回突出显示
                        mouseOut: function() {
                            this.slice();
                        },
                        // 默认是点击突出，这里屏蔽掉
                        click: function() {
                            return false;
                        }
                    }
            }
            }
        },
        
        series: [{
            type: 'pie',
            name: '占总数比例',
            data: [
                ['${movieTypeName1}',   ${movieType1}],
                ['${movieTypeName2}',   ${movieType2}],
                {
                    name: '${movieTypeName3}',
                    y: ${movieType3},
                    sliced: true,
                    selected: true
                },
                ['${movieTypeName4}',   ${movieType4}],
                ['${movieTypeName5}',   ${movieType5}],
                ['${movieTypeName6}',   ${movieType6}],
                ['${movieTypeName7}',   ${movieType7}],
                ['${movieTypeName8}',   ${movieType8}],
                ['${movieTypeName9}',   ${movieType9}],
                ['${movieTypeName10}',   ${movieType10}],
                ['${movieTypeName11}',   ${movieType11}],
                ['${movieTypeName12}',   ${movieType12}],
                ['${movieTypeName13}',   ${movieType13}],
                ['${movieTypeName14}',   ${movieType14}],
                ['${movieTypeName15}',   ${movieType15}],
                ['${movieTypeName16}',   ${movieType16}],
                ['${movieTypeName17}',   ${movieType17}],
                ['${movieTypeName18}',   ${movieType18}],
                ['${movieTypeName19}',   ${movieType19}],
                ['${movieTypeName20}',   ${movieType20}]
            ]
        }]
    });
});
</script>
</body>
</html>