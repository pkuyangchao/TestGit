<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>场次选择</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<% pageContext.setAttribute("APP_PATH", request.getContextPath()); %>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="${APP_PATH }/static/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- pop-up -->
<link href="${APP_PATH }/static/css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<!-- //pop-up -->
<link href="${APP_PATH }/static/css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/css/zoomslider.css" />
<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/css/style.css" />
<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/css/movieclasses.css" />
<link rel="stylesheet" href="${APP_PATH }/static/css/indexcss.css" />
<link href="${APP_PATH }/static/css/font-awesome.css" rel="stylesheet"> 
<script type="text/javascript" src="${APP_PATH }/static/js/modernizr-2.6.2.min.js"></script>
<!--/web-fonts-->
<link href='http://fonts.googleapis.com/css?family=Tangerine:400,700' rel='stylesheet' type='text/css'>
<link href="http://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!--//web-fonts-->
<link rel="stylesheet" href="http://cache.amap.com/lbs/static/main1119.css"/>
<script language="javascript" src="http://webapi.amap.com/maps?v=1.4.6&key=5c9856187e4b4db079483fb54e8ff207&plugin=AMap.ControlBar&plugin=AMap.Autocomplete&plugin=AMap.PlaceSearch,AMap.AdvancedInfoWindow&plugin=AMap.CitySearch"></script>
<script type="text/javascript" src="http://cache.amap.com/lbs/static/addToolbar.js"></script>

<!-- UI组件库 1.0 -->
<script src="http://webapi.amap.com/ui/1.0/main.js?v=1.0.11"></script>
 <style>
 #map-container{
    height: 100%;
    float: left;
    font:12px/16px Verdana,Helvetica,Arial,sans-serif;
}
        .tipinput {
            height: 25px;
            outline: none;
            border: 0;
            border: 1px solid #CCCCCC;
            padding: 0 4px;
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
</head>
<body>
<%@ include file="/WEB-INF/views/common/header2.jsp"%>
				<!-- breadcrumb -->
				<div class="w3_breadcrumb">
					<div class="breadcrumb-inner">	
						<ul>
							<li><a href="index">首页</a><i>//</i></li>
							<li>影院选择<i>//</i></li>
							<li>场次选择</li>
						</ul>
					</div>
				</div>
			<!-- //breadcrumb -->
			
	<div class="banner cinema-banner">
  <div class="wrapper clearfix">
    <div class="cinema-left">
      <div class="avatar-shadow">
        <img class="avatar" src="static${cinema.cinemaImg }">
      </div>
    </div>

    <div class="cinema-main clearfix">
      <div class="cinema-brief-container">
        <h3 class="name text-ellipsis">${cinema.cinemaName }</h3>
        <div class="address text-ellipsis">地址：${cinema.cinemaArea }</div>
        <div class="telphone">电话：${cinema.cinemaPhone }</div>
        
        <div class="features-group">
          <div class="group-title">影院服务</div>

          <div class="feature">
            <span class="tag ">3D眼镜</span>
            <p title="免押金" class="desc text-ellipsis">免押金</p>
          </div>
          <div class="feature">
            <span class="tag ">儿童优惠</span>
            <p title="2D影片身高1.3m以下儿童免票，3D影片身高1.1m以下儿童免票，一名成人限带一名免票儿童。" class="desc text-ellipsis">2D影片身高1.3m以下儿童免票，3D影片身高1.1m以下儿童免票，一名成人限带一名免票儿童。</p>
          </div>
          <div class="feature">
            <span class="tag park-tag">可停车</span>
            <p title="开化寺街边200车位，贵都楼西开化寺街右侧车场可容100，贵都楼南侧麦当劳巷口左拐进临时停车场20" class="desc text-ellipsis">开化寺街边200车位，贵都楼西开化寺街右侧车场可容100，贵都楼南侧麦当劳巷口左拐进临时停车场20</p>
          </div>
        </div>
      </div>
    </div>

 <div id="map-container" style="width:705px; height:389px;resize:both"></div>

<div class="button-group" style="font:12px Verdana,Helvetica,Arial,sans-serif; padding-right: 80px;bottom: 2px">
    <input id="cityName" class="inputtext" placeholder="请输入城市的名称" type="text"/>
    <input id="query" class="button" value="到指定的城市" type="button"/>
    
    <input type="button" class="button" value="显示当前城市" onClick="javascript:showCityInfo()"/>
    <input type="button" class="button" value="开始定位" onClick="javascript:toolBar.doLocation()"/>
</div>
<div id="tip" style="right: 380px;font:12px Verdana,Helvetica,Arial,sans-serif;">可以移动地图，得到城市的信息哦！<br><span id="info"></span></div>
<div id="tip2" style="font:12px Verdana,Helvetica,Arial,sans-serif;"></div>

<div id="myPageTop" style="right:190px;font:12px Verdana,Helvetica,Arial,sans-serif;">
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

var map2 = new Array();

var a = ${cinema.cinemaLongitude };
var b = ${cinema.cinemaLatitude };

map2[0]=a;
map2[1]=b;

function mapInit(){
  map = new AMap.Map('map-container', {
    resizeEnable: true,
    rotateEnable:true,
    pitchEnable:true,
    zoom: 17,
    pitch:80,
    rotation:-15,
    viewMode:'3D',//开启3D视图,默认为关闭
    buildingAnimation:true,//楼块出现是否带动画
    
    expandZoomRange:true,
    zooms:[3,20],
   // center:[116.333926,39.997245]
    center:map2
  });
  
  map.addControl(new AMap.ControlBar({
    showZoomBar:false,
    showControlButton:true,
    position:{
      right:'10px',
      top:'10px'
    }
  })
  )
}
mapInit()
  //设置城市
    AMap.event.addDomListener(document.getElementById('query'), 'click', function() {
        var cityName = document.getElementById('cityName').value;
        if (!cityName) {
            cityName = '北京市';
        }
        map.setCity(cityName);
    });
      
    map.on('moveend', getCity);
function getCity() {
    map.getCity(function(data) {
        if (data['province'] && typeof data['province'] === 'string') {
            document.getElementById('info').innerHTML = '城市：' + (data['city'] || data['province']);
        }
    });
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

//获取用户所在城市信息
function showCityInfo() {
    //实例化城市查询类
    var citysearch = new AMap.CitySearch();
    //自动获取用户IP，返回当前城市
    citysearch.getLocalCity(function(status, result) {
        if (status === 'complete' && result.info === 'OK') {
            if (result && result.city && result.bounds) {
                var cityinfo = result.city;
                var citybounds = result.bounds;
                document.getElementById('tip2').innerHTML = '您当前所在城市：'+cityinfo;
                //地图显示当前城市
                map.setBounds(citybounds);
            }
        } else {
            document.getElementById('tip2').innerHTML = result.info;
        }
    });
}
var customMarker = new AMap.Marker({
    offset: new AMap.Pixel(-14, -34),//相对于基点的位置
    icon: new AMap.Icon({  //复杂图标
        size: new AMap.Size(27, 36),//图标大小
        image: "http://webapi.amap.com/images/custom_a_j.png", //大图地址
        imageOffset: new AMap.Pixel(-28, 0)//相对于大图的取图位置
    })
});
//自定义定位标记

var toolBar;
map.plugin(["AMap.ToolBar"], function() {
    toolBar = new AMap.ToolBar({locationMarker: customMarker}); //设置地位标记为自定义标记
    map.addControl(toolBar);
});

AMapUI.loadUI(['overlay/SvgMarker'], function(SvgMarker) {

    if (!SvgMarker.supportSvg) {
        //当前环境并不支持SVG，此时SvgMarker会回退到父类，即SimpleMarker
        alert('当前环境不支持SVG');
    }

    var marker = new SvgMarker(
        null, {
            map: map,
            position: map.getCenter(),
            showPositionPoint: true
        });

    function ParamsCls() {

        this.shape = 'IconFont';

        this.width = 120;

        this.height = 100;

        this.keepAspectRatio = true;

        this.fillColor = 'rgb(255,105,0)';

        this.strokeColor = '#000000';

        this.strokeWidth = 0;
    };

    var controlParams = new ParamsCls();

    function getSvgShape() {

        return new SvgMarker.Shape[controlParams.shape]({
            width: controlParams.width,
            height: controlParams.keepAspectRatio ? false : controlParams.height,
            fillColor: controlParams.fillColor,
            strokeColor: controlParams.strokeColor,
            strokeWidth: controlParams.strokeWidth
        });
    }

});
</script>
  </div>
</div>

			<!--/content-inner-section-->
					<div class="agile_featured_movies"  style="padding-left: 20px;padding-right: 20px">
					
					<div class="show-list  active" data-index="1">
        <div class="movie-info">
  <div>
    <h3 class="movie-name">${hitmovie.movieName }</h3>

        <span class="score sc">${hitmovie.movieGrade }</span>

  </div>

  <div class="movie-desc">
    <div>
      <span class="key">时长 :</span>
      <span class="value">${hitmovie.movieRuntime }</span>
    </div>
    <div>
      <span class="key">类型 :</span>
      <span class="value"> ${hitmovie.movieType } </span>
    </div>
    <div>
      <span class="key">主演 :</span>
      <span class="value"> ${hitmovie.actorName }</span>
    </div>
  </div>
</div>

<div class="show-date">
  <span>观影时间 :</span>
    <span class="date-item active" data-index="0">今天 4月16</span>
    <span class="date-item" data-index="1">明天 4月17</span>
</div>

  <div class="plist-container active">
      
<table class="plist">
  <thead>
    <tr>
      <th>放映时间</th>
      <th>语言版本</th>
      <th>放映厅</th>
      <th>售价（元）</th>
      <th>选座购票</th>
    </tr>
  </thead>

  <tbody>
  <c:if test="${empty plays }">
  	<tr>
  	<td>抱歉，当前影院没有安排场次播放该电影</td>
  	
  	</tr>
  </c:if>
  <c:forEach items="${plays }" var="play" varStatus="status">
  <c:if test="${status.index%2!=0}">
  	<tr style="background-color: #f9f9f9;">
      <td>
        <span class="begin-time">${play.playTime }</span>
        <br>
        <span class="end-time">${play.playEndtime }散场</span>
      </td>
      <td>
        <span class="lang">${play.hitmovie.movieLanguage }</span>
      </td>
      <td>
        <span class="hall">${play.cinemahall.hallName }</span>
      </td>
      <td>
        <span class="sell-price"><span class="stonefont">￥${play.playPrice }</span></span>
      </td>
      <td>
        <a class="buy-btn" href="seat?movieId=${play.hitmovie.movieId }&palyId=${play.playId }">选座购票</a>
      </td>
    </tr>
  </c:if>
  <c:if test="${status.index%2==0}">
  	<tr>
      <td>
        <span class="begin-time">${play.playTime }</span>
        <br>
        <span class="end-time">${play.playEndtime }散场</span>
      </td>
      <td>
        <span class="lang">${play.hitmovie.movieLanguage }</span>
      </td>
      <td>
        <span class="hall">${play.cinemahall.hallName }</span>
      </td>
      <td>
        <span class="sell-price"><span class="stonefont">￥${play.playPrice }</span></span>
      </td>
      <td>
        <a class="buy-btn" href="seat?movieId=${play.hitmovie.movieId }&palyId=${play.playId }">选座购票</a>
      </td>
    </tr>
    </c:if>
  </c:forEach>
  </tbody>
</table>

  </div>

      </div>
				</div>
				
			<!--//content-inner-section-->
		
		<%@ include file="/WEB-INF/views/common/footer.jsp"%>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

<script src="${APP_PATH }/static/js/jquery-1.11.1.min.js"></script>
	<!-- Dropdown-Menu-JavaScript -->
			<script>
				$(document).ready(function(){
					$(".dropdown").hover(            
						function() {
							$('.dropdown-menu', this).stop( true, true ).slideDown("fast");
							$(this).toggleClass('open');        
						},
						function() {
							$('.dropdown-menu', this).stop( true, true ).slideUp("fast");
							$(this).toggleClass('open');       
						}
					);
				});
			</script>
		<!-- //Dropdown-Menu-JavaScript -->
		<!-- search-jQuery -->
				<script src="${APP_PATH }/static/js/main.js"></script>
			<!-- //search-jQuery -->
			<script src="${APP_PATH }/static/js/simplePlayer.js"></script>
			
			<!-- pop-up-box -->  
		<script src="${APP_PATH }/static/js/jquery.magnific-popup.js" type="text/javascript"></script>
	<!--//pop-up-box -->

			<div id="small-dialog1" class="mfp-hide">
		<iframe src=""></iframe>
	</div>
	<div id="small-dialog2" class="mfp-hide">
		<iframe src=""></iframe>
	</div>
	<script>
		$(document).ready(function() {
		$('.w3_play_icon,.w3_play_icon1,.w3_play_icon2').magnificPopup({
			type: 'inline',
			fixedContentPos: false,
			fixedBgPos: true,
			overflowY: 'auto',
			closeBtnInside: true,
			preloader: false,
			midClick: true,
			removalDelay: 300,
			mainClass: 'my-mfp-zoom-in'
		});
																		
		});
	</script>
<script src="${APP_PATH }/static/js/easy-responsive-tabs.js"></script>
<script>
$(document).ready(function () {
$('#horizontalTab').easyResponsiveTabs({
type: 'default', //Types: default, vertical, accordion           
width: 'auto', //auto or any width like 600px
fit: true,   // 100% fit in a container
closed: 'accordion', // Start closed if in accordion view
activate: function(event) { // Callback function if tab is switched
var $tab = $(this);
var $info = $('#tabInfo');
var $name = $('span', $info);
$name.text($tab.text());
$info.show();
}
});
$('#verticalTab').easyResponsiveTabs({
type: 'vertical',
width: 'auto',
fit: true
});
});
</script>
<link href="${APP_PATH }/static/css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
<script src="${APP_PATH }/static/js/owl.carousel.js"></script>
<script>
	$(document).ready(function() { 
		$("#owl-demo").owlCarousel({
	 
		 autoPlay: 3000, //Set AutoPlay to 3 seconds
		  autoPlay : true,
		   navigation :true,

		  items : 5,
		  itemsDesktop : [640,4],
		  itemsDesktopSmall : [414,3]
	 
		});
	 
	}); 
</script> 

<!--/script-->
<script type="text/javascript" src="${APP_PATH }/static/js/move-top.js"></script>
<script type="text/javascript" src="${APP_PATH }/static/js/easing.js"></script>

<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>
 <script type="text/javascript">
						$(document).ready(function() {
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
<!--end-smooth-scrolling-->
	<script src="${APP_PATH }/static/js/bootstrap.js"></script>

 

</body>
</html>