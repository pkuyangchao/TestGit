<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<link rel="stylesheet" href="http://cache.amap.com/lbs/static/main1119.css"/>
<script language="javascript" src="http://webapi.amap.com/maps?v=1.4.6&key=5c9856187e4b4db079483fb54e8ff207&plugin=AMap.ControlBar&plugin=AMap.Autocomplete&plugin=AMap.PlaceSearch,AMap.AdvancedInfoWindow&plugin=AMap.CitySearch"></script>
<script type="text/javascript" src="http://cache.amap.com/lbs/static/addToolbar.js"></script>
<!-- UI组件库 1.0 -->
<script src="http://webapi.amap.com/ui/1.0/main.js?v=1.0.11"></script>
<style>
body,html{ margin:0;padding:0;font:12px/16px Verdana,Helvetica,Arial,sans-serif;width: 100%;height: 100%}
.container{
  height: 100%
}
 .info-title{
            color: white;
            font-size: 14px;
            background-color: blue;
            line-height: 26px;
            padding: 0px 0 0 6px;
            font-weight: lighter;
            letter-spacing: 1px
        }
        .info-content{
            padding: 4px;
            color: #666666;
            line-height: 23px;
            font: 12px Helvetica, 'Hiragino Sans GB', 'Microsoft Yahei', '微软雅黑', Arial;
        }
        .info-content img{
            float: left;
            margin: 3px;
        }
        .tipinput {
            height: 25px;
            outline: none;
            border: 0;
            border: 1px solid #CCCCCC;
            padding: 0 4px;
        }
        #panel {
            position: fixed;
            background-color: white;
            max-height: 90%;
            overflow-y: auto;
            top: 10px;
            right: 10px;
            width: 280px;
        }
</style>
<body>
	
	<div id="container" style="width:90%; height:100%;resize:both;margin-left: 80px;margin-top: 50px;"></div>
	
	
<div id="myPageTop" style="right: 200px;top: 50px">
    <table>
        <tr>
            <td>
                <label>按关键字搜索：</label>
            </td>
        </tr>
        <tr>
            <td>
                <input class="tipinput" type="text" placeholder="请输入关键字进行搜索" id="tipinput">
            </td>
        </tr>
    </table>
</div>

<div id="panel" style="font:12px Verdana,Helvetica,Arial,sans-serif;"></div>
	
<script language="javascript">
var map;
function mapInit(){
  map = new AMap.Map('container', {
    resizeEnable: true,
    rotateEnable:true,
    pitchEnable:true,
    zoom: 17,
    pitch:0,
    rotation:-15,
    viewMode:'3D',//开启3D视图,默认为关闭
    buildingAnimation:true,//楼块出现是否带动画
    
    expandZoomRange:true,
    zooms:[3,20],
    center:[116.333926,39.997245]
  });
  
  map.addControl(new AMap.ControlBar({
    showZoomBar:false,
    showControlButton:true,
    position:{
      right:'10px',
      top:'10px'
    }
  }))
}
mapInit();

//自定义定位标记
var toolBar;
var customMarker = new AMap.Marker({
    offset: new AMap.Pixel(-14, -34),//相对于基点的位置
    icon: new AMap.Icon({  //复杂图标
        size: new AMap.Size(27, 36),//图标大小
        image: "http://webapi.amap.com/images/custom_a_j.png", //大图地址
        imageOffset: new AMap.Pixel(-28, 0)//相对于大图的取图位置
    })
});

//地图中添加地图操作ToolBar插件
map.plugin(["AMap.ToolBar"], function() {
    toolBar = new AMap.ToolBar({locationMarker: customMarker}); //设置地位标记为自定义标记
    map.addControl(toolBar);
});

toolBar.doLocation();

var placeSearch = new AMap.PlaceSearch();  //构造地点查询类
var infoWindow=new AMap.AdvancedInfoWindow({});
map.on('hotspotclick', function(result) {
    placeSearch.getDetails(result.id, function(status, result) {
        if (status === 'complete' && result.info === 'OK') {
            placeSearch_CallBack(result);
        }
    });
});
//回调函数
function placeSearch_CallBack(data) { //infoWindow.open(map, result.lnglat);
    var poiArr = data.poiList.pois;
    var location = poiArr[0].location;
    infoWindow.setContent(createContent(poiArr[0]));
    infoWindow.open(map,location);
}
function createContent(poi) {  //信息窗体内容
    var s = [];
    s.push('<div class="info-title">'+poi.name+'</div><div class="info-content">'+"地址：" + poi.address);
    s.push("电话：" + poi.tel);
    s.push("类型：" + poi.type);
    s.push('<div>');
    return s.join("<br>");
}

var auto = new AMap.Autocomplete({
    input: "tipinput"
});
AMap.event.addListener(auto, "select", select);//注册监听，当选中某条记录时会触发
function select(e) {
    if (e.poi && e.poi.location) {
        map.setZoom(15);
        map.setCenter(e.poi.location);
    }
}
</script>
</body>

</html>