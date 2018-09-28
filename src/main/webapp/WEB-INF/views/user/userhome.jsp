<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>用户个人中心</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="" />
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
<link href="${APP_PATH }/static/css/font-awesome.css" rel="stylesheet"> 
<link type="text/css" rel="stylesheet" href="${APP_PATH }/static/css/carousel.css">
<link rel="stylesheet" href="${APP_PATH }/static/css/indexcss.css" />
<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/css/style-shop.css" />
<link rel="stylesheet" href="${APP_PATH }/static/css/iconfont.css" />
<script src="${APP_PATH }/static/js/jquery-1.11.1.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="${APP_PATH }/static/js/modernizr-2.6.2.min.js"></script>
<script type="text/javascript" src="${APP_PATH }/static/js/bootstrap.js" ></script>
 
<script type="text/javascript" src="${APP_PATH }/static/js/moviejs.js"></script>

<link href="${APP_PATH }/static/css/cropper.min.css" rel="stylesheet">
<link href="${APP_PATH }/static/css/sitelogo.css" rel="stylesheet">
<script src="${APP_PATH }/static/js/cropper.js"></script>
<script src="${APP_PATH }/static/js/sitelogo.js"></script>

<!--/web-fonts-->
<link href='http://fonts.googleapis.com/css?family=Tangerine:400,700' rel='stylesheet' type='text/css'>
<link href="http://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!--//web-fonts-->
</head>
<body>
		<%@ include file="/WEB-INF/views/common/header2.jsp"%>
	
		<div class="b-mytabnew">
		</div>
		<!--用户个人中心下半部分-->
		<div class="user-container">
			<div class="row">
				<div class="col-md-12  mod-mainWrap">
					<div class="tab" role="tabpanel">
						<div class="col-md-2 userleft-side">
							<!-- Nav tabs -->
							<ul class="nav nav-tabs mod-side_menu" role="tablist">
								<li role="presentation" class="userleft-li active">
									<a href="#Section1" class="userleft-link" aria-controls="home" role="tab" data-toggle="tab">
										<i class="ff-icon iconfont icon-shezhi"></i><span class="menu-text">账户设置</span></a>
								</li>
								<div class="user_line"></div>
								<li class="userleft-li" role="presentation">
									<a href="#Section2" class="userleft-link" aria-controls="profile" role="tab" data-toggle="tab"><i class="ff-icon iconfont icon-icon-"></i><span class="menu-text">浏览记录</span></a>
								</li>
								<div class="user_line"></div>
								<li class="userleft-li" role="presentation">
									<a href="#Section3" class="userleft-link" aria-controls="messages" role="tab" data-toggle="tab"><i class="ff-icon iconfont icon-shoucang"></i><span class="menu-text">我的评分</span></a>
								</li>
								<div class="user_line"></div>
								<li class="userleft-li" role="presentation">
									<a href="#Section4" class="userleft-link" aria-controls="messages" role="tab" data-toggle="tab"><i class="ff-icon iconfont icon-viphuiyuan"></i><span class="menu-text">我的推荐</span></a>
								</li>
								<div class="user_line"></div>
								<li class="userleft-li" role="presentation">
									<a href="#Section5" class="userleft-link" aria-controls="messages" role="tab" data-toggle="tab"><i class="ff-icon iconfont icon-cart_icon"></i><span class="menu-text">我的购物车</span></a>
								</li>
							</ul>
						</div>
						<div class="col-md-10 custom-main-inner">
							<!-- Tab panes -->
							<div class="tab-content tabs">
								<div role="tabpanel" class="tab-pane fade in active" id="Section1">
									<!--用户基本信息修改-->
									<div class="mod-mainRt-con">
										<!-- 昵称信息 开始 -->
										<div id="widget-logininfo">
											<div class="usrSetting-wrap clearfix">
												<form id="userexchangeTitle" action="userexchangeTitle" style="float: left;display: inline;" class="userSetting-head" enctype="multipart/form-data">
													<div>
													<div class="error-box"></div>
													<c:if test="${not empty sessionScope.userSession.userTitle }">
											   			<img id="userTitle" width="80" height="80" alt="" src="static${sessionScope.userSession.userTitle }">
											   		</c:if>
											   		<c:if test="${empty sessionScope.userSession.userTitle }">
											   			<img id="userTitle" width="80" height="80" src="${APP_PATH }/static/images/head.png">
											   		</c:if>
											   		<button type="button" class="renew-btn"  data-toggle="modal" data-target="#avatar-modal" style="margin: 10px;">修改头像</button>
													</div>
												</form>
												<div class="fl ml30">
													<div class="userSetting-item  userName" data-logininfo-elem="nicknameline">
														<span class="vl-inline">
                    <em class="mainColor">昵称：</em>
                    <em id="mod-mainRt-con-name" class="mainColor">${userSession.userAccount }</em>
                  </span>
					
													</div>
													<div class="userSetting-item">

														<span class="vl-inline">会员类型:
                                    <a class="qy-rank-vip qyrv5" href="" target="_blank" data-vipheader-elem="vipicon"></a>黄金VIP会员</span>
														<a class="renew-btn" href="">立即续费</a>

													</div>
													<div class="userSetting-item">
														<span class="vl-inline">UID：${userSession.userId }</span>
													</div>

												</div>
											</div>
											<div class="mainRt-safeSetting">
												<ul class="safeSettingList">
													<li>
														<div>
															<div class="safeSettingList-lf">
																<a href=""><i class="safeSettingFa fa fa-phone"></i></a>
															</div>
															<div class="safeSettingList-rt">
																<p class="type-text">+86 ${userSession.userPhone }
																	<a class="color-green ml15 changePhone" href="#" data-toggle="modal" data-target="#changePhone">修改手机号</a>
																</p>
																<p class="type-text">您可以享受手机相关的登录，安全及提醒服务</p>
															</div>
														</div>
													</li>
													<li>
														<div class="safeSettingList-lf">
															<a href=""><i class="safeSettingFa fa fa-key"></i></a>
														</div>
														<div class="safeSettingList-rt">
															<p class="type-text lockType-text">
																<a title="更改密码" class="color-green mobilePhone-state changePassword" href="#" data-toggle="modal" data-target="#changePassword">修改密码</a>
															</p>
															<p class="type-text">可以通过邮箱，手机修改密码</p>
														</div>
													</li>
													<li>

														<!-- 邮箱绑定且验证 -->
														<div>
															<div class="safeSettingList-lf">
																<a href=""><i class="safeSettingFa fa fa-envelope-o"></i></a>
															</div>
															<div class="safeSettingList-rt">
																<p class="type-text">${userSession.userEmail }
																		<a class="color-green ml15" href="">修改邮箱</a>
																</p>
																<p class="type-text">绑定后，可以使用邮箱登录及保证账号安全</p>
															</div>
														</div>
													</li>
													<li>
														<div class="safeSettingList-lf">
															<a href=""><i class="safeSettingFa fa fa-mail-reply-all"></i></a>
														</div>
														<div class="safeSettingList-rt">
															<p class="type-text lockType-text">
																<a title="找回密码" class="color-green mobilePhone-state" href="">找回密码</a>
															</p>
															<p class="type-text">可以通过邮箱，手机找回密码</p>
														</div>
													</li>
												</ul>
											</div>
										</div>			
										
										<div id="widget-otherinfo">
										
											<div class="userSetting-setWrap Safety">
											 <dl>
												  <dt>
											<div class="userSetting-setWrap-item even" data-otherinfo-line="blood">
													<span class="vl-inline item-title"><label for="">用户名：</label></span>

													<span>
              <span class="vl-inline">
                <em class="c666" id="widget-otherinfo-name">${userSession.userAccount}</em>
              </span>
													<span class="item-opt"><em class="em">设置</em></span>
													</span>
												</div>
												</dt>
													 <dd style="display: none">
										           <form action="#" method="get">
										            <table width="100%" class="safForm">
										             <tr>
										              <td width="35%" align="right">新用户名：</td>
										              <td><span></span><input id="newName" name="userName" type="text">
													 </td>
													 <td><input id="userexchangeAccount" type="submit" class="safSub1" value="修改" /></td>
										             </tr>
										              <tr>
										             </tr>
										            </table>
										           </form>
										           </dd>
												  <dt>
												<div class="userSetting-setWrap-item odd">
													<span class="vl-inline item-title"><label for="">性别：</label></span>
													<span>
										              <span class="vl-inline">
										                <em class="c666">${uesrSession.userSex==0?"男":"女" }</em>
										              </span>
													<span class="item-opt"><em class="em">设置</em></span>
													</span>
												</div>
												 </dt>
												  <dd style="display: none">
										           <form action="#" method="get">
										            <table width="100%" class="safForm">
										             <tr>
										              <td width="35%" align="right">用户性别：</td>
										              <td><input name="userSex" type="radio" value="0" id="sex-1">
															<label for="sex-1">男</label>
															<input name="userSex" type="radio" value="1" id="sex-1">
															<label for="sex-1">女</label>
													 </td>
													 <td><input id="userexchangeSex" type="submit" class="safSub1" value="修改" /></td>
										             </tr>
										              <tr>
										             </tr>
										            </table>
										           </form>
										           </dd>
												
												<div class="userSetting-setWrap-item even" >
													<span class="vl-inline item-title"><label for="">生日：</label></span>
													<span >
              <span class="vl-inline">
                <em class="c666" data-line-elem="display">1995年05月16日</em>
              </span>
													<span class="item-opt"><a href="javascript:;" data-line-elem="edit">修改</a></span>
													</span>
												</div>
												<div class="userSetting-setWrap-item odd" data-otherinfo-line="location">
													<span class="vl-inline item-title"><label for="">居住地：</label></span>

													<span data-line-elem="displayline">
              <span class="vl-inline">
                <em class="c666" data-line-elem="display"> 未设置</em>
              </span>
													<span class="item-opt"><a href="javascript:;" data-line-elem="edit">设置</a></span>
													</span>
												</div>
												<div class="userSetting-setWrap-item even" data-otherinfo-line="qq">
													<span class="vl-inline item-title"><label for="">QQ：</label></span>
													<span style="display:none;" data-line-elem="editline">
              <span class="vl-inline item-input"><input class="input-common" type="text" placeholder="请填写你的QQ号" data-line-elem="qqin"></span>

													</span>
													<span data-line-elem="displayline">
              <span class="vl-inline">
                <em class="c666" data-line-elem="display">未设置 </em>
              </span>
													<span class="item-opt"><a href="javascript:;" data-line-elem="edit">设置</a></span>
													</span>
												</div>
												</dl>
											</div>
											
										</div>
									</div>
									<!--//用户基本信息修改结束-->
								</div>
								<div role="tabpanel" class="tab-pane fade" id="Section2">
									<div class="custom-main-inner">
										<div class="custom-main-wrapper-cols">
											<div class="tab" role="tabpanel">
												<div class="mod-mainRt-title">
													<!-- Nav tabs -->
													<ul class="tab-title" role="tablist">
														<li role="presentation" class="active">
															<a href="#user-looked1" aria-controls="home" role="tab" data-toggle="tab">最近</a>
														</li>
														<li role="presentation">
															<a href="#user-looked2" aria-controls="profile" role="tab" data-toggle="tab">一个月内</a>
														</li>
														<li role="presentation">
															<a href="#user-looked3" aria-controls="messages" role="tab" data-toggle="tab">较早</a>
														</li>
													</ul>
												</div>
												<div class="mod-mainRt-con">
													<!-- Tab panes -->
													<div class="tab-content tabs">
														<div role="tabpanel" class="tab-pane fade in active" id="user-looked1">
															<div id="ucrecord-content">
																<div class="user_wrap_record">
																	<div>
																		<div class="pc_playList_title clearfix">
																			<span class="pc_btn_title mt20 today-list"><em>今天</em>
                                                                            </span>
																		</div>
																		<div class="subscribe-updateVideo">
																<ul class="site-piclist piclist-160164">
																	<c:forEach items="${browsingHistories }" var="browsing">
																		<li>
																		<div class="site-piclist_pic">
																			<a class="site-piclist_pic_link" href="moviesingle?movieId=${browsing.movie.movieId }" target="_blank">
																				<img style="width: 200px;height: 236px" title="${browsing.movie.movieName }" src="static${browsing.movie.movieImg }">
																				<div class="wrapper-listTitle">
																					<div class="mod-listTitle">
																									<span class="mod-listTitle_right" rseat="right_jr_1">剩余09:14</span>
																					</div>
																				</div>
																			</a>
																		</div>
																		<div class="site-piclist_info">
																			<p class="site-piclist_title">
																				<a title="${browsing.movie.movieName }" href="moviesingle?movieId=${browsing.movie.movieId }" >${browsing.movie.movieName }</a>
																			</p>
																			<div class="play-status">
																				<span class="fr"><i class="icon_video"></i>播放${browsing.movie.commentCount }次</span></div>
																		</div>
																	</li>
																	</c:forEach>
																</ul>
															</div>
																		
																	</div>
																	<a class="loading-btn loadingMore-btn dn" href="javascript:video(0);">
																		<em class="loaingMoreText">加载更多</em><i class="arrow-bottom"></i>
																	</a>
																</div>
															</div>
														</div>
														<div role="tabpanel" class="tab-pane fade" id="user-looked2">
															<h3>Section 2</h3>
															<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nec urna aliquam, ornare eros vel, malesuada lorem. Nullam faucibus lorem at eros consectetur lobortis. Maecenas nec nibh congue, placerat sem id, rutrum velit. Phasellus porta enim at facilisis condimentum. Maecenas pharetra dolor vel elit tempor pellentesque sed sed eros. Aenean vitae mauris tincidunt, imperdiet orci semper, rhoncus ligula. Vivamus scelerisque.</p>
														</div>
														<div role="tabpanel" class="tab-pane fade" id="user-looked3">
															<h3>Section 3</h3>
															<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nec urna aliquam, ornare eros vel, malesuada lorem. Nullam faucibus lorem at eros consectetur lobortis. Maecenas nec nibh congue, placerat sem id, rutrum velit. Phasellus porta enim at facilisis condimentum. Maecenas pharetra dolor vel elit tempor pellentesque sed sed eros. Aenean vitae mauris tincidunt, imperdiet orci semper, rhoncus ligula. Vivamus scelerisque.</p>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>

								</div>
								<div role="tabpanel" class="tab-pane fade" id="Section3">
									<div class="custom-main-inner">
										<div class="custom-main-wrapper-cols">
											<div class="tab" role="tabpanel">
												<div class="mod-mainRt-title">
													<!-- Nav tabs -->
													<ul class="tab-title" role="tablist">
														<li role="presentation" class="active">
															<a href="#user-shoucang1" aria-controls="home" role="tab" data-toggle="tab">最近</a>
														</li>
														<li role="presentation">
															<a href="#user-shoucang2" aria-controls="profile" role="tab" data-toggle="tab">一个月内</a>
														</li>
														<li role="presentation">
															<a href="#user-shoucang3" aria-controls="messages" role="tab" data-toggle="tab">较早</a>
														</li>
													</ul>
												</div>
												<div class="mod-mainRt-con">
													<!-- Tab panes -->
													<div class="tab-content tabs">
														<div role="tabpanel" class="tab-pane fade in active" id="user-shoucang1">
															<div class="subscribe-updateVideo">
																<p class="sub-title">最近<em class="line"></em></p>
																<ul class="site-piclist piclist-160164" data-sub-group="before">
																	<c:forEach items="${ratings }" var="rating">
																		<li>
																		<div class="site-piclist_pic">
																			<a class="site-piclist_pic_link" href="moviesingle?movieId=${rating.movie.movieId }" target="_blank">
																				<img style="width: 190px;height: 236px" title="${rating.movie.movieName }" src="static${rating.movie.movieImg }">
																				<div class="wrapper-listTitle">
																					<div class="mod-listTitle">
																						<span class="mod-listTitle_left">2018-03-06</span>
																						<span class="mod-listTitle_right">06:10</span>
																					</div>
																				</div>
																			</a>
																		</div>
																		<div class="site-piclist_info">
																			<p class="site-piclist_title">
																				<a title="${rating.movie.movieName }" href="moviesingle?movieId=${rating.movie.movieId }" >${rating.movie.movieName }</a>
																			</p>
																			<div class="play-status">
																				<a class="fl" href="" target="_blank">我的评分</a> <span class="fr"><i class="icon_video"></i>${rating.preference }</span></div>
																		</div>
																	</li>
																	</c:forEach>
																</ul>
															</div>

														</div>
														<div role="tabpanel" class="tab-pane fade" id="user-shoucang2">
															<h3>Section 2</h3>
															<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nec urna aliquam, ornare eros vel, malesuada lorem. Nullam faucibus lorem at eros consectetur lobortis. Maecenas nec nibh congue, placerat sem id, rutrum velit. Phasellus porta enim at facilisis condimentum. Maecenas pharetra dolor vel elit tempor pellentesque sed sed eros. Aenean vitae mauris tincidunt, imperdiet orci semper, rhoncus ligula. Vivamus scelerisque.</p>
														</div>
														<div role="tabpanel" class="tab-pane fade" id="user-shoucang3">
															<h3>Section 3</h3>
															<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nec urna aliquam, ornare eros vel, malesuada lorem. Nullam faucibus lorem at eros consectetur lobortis. Maecenas nec nibh congue, placerat sem id, rutrum velit. Phasellus porta enim at facilisis condimentum. Maecenas pharetra dolor vel elit tempor pellentesque sed sed eros. Aenean vitae mauris tincidunt, imperdiet orci semper, rhoncus ligula. Vivamus scelerisque.</p>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>

								</div>
								<div role="tabpanel" class="tab-pane fade" id="Section4">
									<div class="custom-main-inner">
										<div class="custom-main-wrapper-cols">
										    <iframe id="recommend" src="recommend" frameborder="no" style="display: inline-block;width: 1150px;height: 3000px"
											scrolling="no"></iframe>
											
										</div>
									</div>
								</div>
								<div role="tabpanel" class="tab-pane fade" id="Section5">
									<!--用户购物车-->
									<div class="main">
										<div class="container">
											<!-- BEGIN SIDEBAR & CONTENT -->
											<div class="row margin-bottom-20">
												<!-- BEGIN CONTENT -->
												<div class="col-md-12 col-sm-12">
													<!-- <h1>购买电影票</h1>-->
													<div class="goods-page">
														<div class="orders-container">
														<div class="info-content clearfix">
  <div class="mod-mainRt-title profile-title">我的订单</div>
    </div>
    <c:forEach items="${tickeds2 }" var="ticked">
	 <div class="order-box">
      <div class="order-header">
        <span class="order-date">${ticked.tickedTime }</span>
        <span class="order-id">订单号:${ticked.tickedCode}</span>
      </div>

      <div class="order-body">
        <div class="poster">
          <img src="static${ticked.hitmovie.movieImg}">
        </div>
        <div class="order-content">
          <div class="movie-name">${ticked.hitmovie.movieName}</input></div>
          <div class="cinema-name">${ticked.play.cinema.cinemaName}</div>
          <div class="hall-ticket">
            <span>${ticked.cinemaseat.seatRow}排${ticked.cinemaseat.seatColumn}座</span>
          </div>
          <div class="show-time">${ticked.play.playTime}</div>
        </div>
        <div class="order-price">￥${ticked.play.playPrice}</div>

        <div class="order-status">
          ${ticked.tickedFlag==0?"待支付":"已支付"}
        </div>

        <div class="actions">
          <div>
          	<c:if test="${empty ticked.tickedEndtime}">
          		<a class="buy-btn normal" href="userhomealipay?price=${ticked.play.playPrice}&tickedId=${ticked.tickedId}">付款</a>
          	</c:if>
             
             <a class="order-detail" href="">查看详情</a>
             <input name="tickedId" type="hidden" value="${ticked.tickedId}"> 
             <a><span class="del-order" data-toggle="modal" data-target="#del_ticked_modal"></span></a>
             <a href="#" id="del_ticked_a" data-toggle="modal" data-target="#del_ticked_modal"><span></span></a>
          </div>
        </div>
        
      </div>
    </div>
</c:forEach>
   	
  <div class="orders-pager">
    
  </div>
</div>
</div>
														<a href="hitmovie"><button class="btn btn-default" type="submit">继续购票 <i class="fa fa-shopping-cart"></i></button></a>
													</div>
												</div>
												<!-- END CONTENT -->
											</div>
											<!-- END SIDEBAR & CONTENT -->

											<!--//用户购物车结束-->
										</div>
										<div data-play-item-lastrecord="before"></div>

									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
				<div class="modal fade" id="changePhone" tabindex="-1" role="dialog" >
							<div class="modal-dialog">
							<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4>修改手机号</h4>
										<div class="login-form">
										<div class="error-box"> </div>
											<dd>
								           <ul class="Step">
								            <li class="stepCur"><span>1</span></li>
								            <li><span>2</span></li>
								            <li><span>3</span></li>
								            <div class="clearfix"></div>
								           </ul>
								           <form id="exchangePhoneform1" action="#" method="get" class="sjyz-one">
								            <table width="100%" class="safForm">
								             <tr>
								              <td>
								              <span  class="error-box"></span>
								              <input type="text" id="oldPhone" class="safinput1" name="oldPhone" placeholder="原手机号" required="" onblur="checkOldPhone()"/></td>
								             </tr>
								             <tr>
								              <td><input class="safSub sjyz-one-next" value="下一步"></td>
								             </tr>
								            </table>
								           </form>
								           <form id="exchangePhoneform2" action="#" method="get" class="sjyz-two">
								            <table width="100%" class="safForm">
								             <tr>
								              <td>
								              <span  class="error-box"></span>
								              <input type="text" id="newPhone" class="safinput2"  name="newPhone" placeholder="新手机号" required=""  onblur="checkNewPhone()"/></td>
								             </tr>
								             <tr><td><span id="smsCode-error-box" class="error-box"></span></td></tr>
								             <tr>
								              <td>
								              <input type="text" style="width: 50%" id="SmsCheckCode" name="SmsCheckCode" placeholder="短信验证码" onblur="checkCode()"/>
											  <span><input id="btnSendCode" name="inputSendCode" value="免费获取验证码" onclick="sendMessage()" /></span>
											</td>
								             </tr>
								             <tr>
								              <td><input class="safSub sjyz-two-next" value="下一步"></td>
								             </tr>
								            </table>
								           </form>
								           <div class="sjyz-ok"><span class="glyphicon glyphicon-ok"></span> 恭喜您,设置成功!</div>
								           </dd>
										</div>
									</div>
								</div>
							</div>
						</div>
		
		<div class="modal fade" id="changePassword" tabindex="-1" role="dialog" >

							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" id="closeButton" class="close" data-dismiss="modal">&times;</button>
										<h4>修改密码</h4>
										<div class="login-form">
											<dd>
								           <ul class="Step">
								            <li class="stepCur"><span>1</span></li>
								            <li><span>2</span></li>
								            <li><span>3</span></li>
								            <div class="clearfix"></div>
								           </ul>
								           <form id="exchangePassform1" action="#"  class="checkOldPassword-one">
								           <div>
								           	<span  class="error-box"></span>
								              <input type="password" id="oldPassword" name="oldPassword" placeholder="原密码" required="" onblur="checkOldPassword()">
								              <input class="safSub checkOldPassword-one-next" value="下一步">
								            </div>
								           </form>
								           <form id="exchangePassform2" action="#" class="checkOldPassword-two">
								             <div>
												<div>
												<span  class="error-box"></span>
												<input type="password" id="password1" name="userPassword" placeholder="密码" required="">
												</div>
												<span  class="error-box"></span>
												<input type="password" id="password2" name="conformPassword" placeholder="确认密码" required="" onblur="conformUserPassword()">
												<div class="tp">
													<input class="safSub checkOldPassword-two-next" value="下一步">
												</div>
								           </div>
								           </form>
								           <div class="checkOldPassword-ok"><span class="glyphicon glyphicon-ok"></span> 恭喜您,设置成功!</div>
								           </dd>
										</div>
									</div>
								</div>
							</div>
						</div>
		
	<div class="modal fade" id="avatar-modal" aria-hidden="true" aria-labelledby="avatar-modal-label" role="dialog" tabindex="-1">
	<div class="modal-dialog modal-lg" style="width: 900px;">
		<div class="modal-content">
			<form id="uploadForm" class="avatar-form">
				<div class="modal-header">
					<button class="close" data-dismiss="modal" type="button">&times;</button>
					<h4 class="modal-title" id="avatar-modal-label">上传图片</h4>
				</div>
				<div class="modal-body">
					<div class="avatar-body">
						<div class="avatar-upload">
							<input class="avatar-src" name="avatar_src" type="hidden">
							<input class="avatar-data" name="avatar_data" type="hidden">
							<label for="avatarInput" style="line-height: 35px;">图片上传</label>
							<button class="btn btn-danger"  type="button" style="height: 35px;" onClick="$('input[id=avatarInput]').click();">请选择图片</button>
							<span id="avatar-name"></span>
							<input class="avatar-input hide" id="avatarInput" name="avatar_file" type="file"></div>
						<div class="row">
							<div class="col-md-9">
								<div class="avatar-wrapper"></div>
							</div>
							<div class="col-md-3">
								<div class="avatar-preview preview-lg" id="imageHead"></div>
							</div>
						</div>
						<div class="row avatar-btns">
							<div class="col-md-4">
								<div class="btn-group">
									<button class="btn btn-danger fa fa-undo" data-method="rotate" data-option="-90" type="button" title="Rotate -90 degrees"> 向左旋转</button>
								</div>
								<div class="btn-group">
									<button class="btn  btn-danger fa fa-repeat" data-method="rotate" data-option="90" type="button" title="Rotate 90 degrees"> 向右旋转</button>
								</div>
							</div>
							<div class="col-md-5" style="text-align: right;">								
								<button class="btn btn-danger fa fa-arrows" data-method="setDragMode" data-option="move" type="button" title="移动">
								<span class="docs-tooltip" data-toggle="tooltip" title="" data-original-title="$().cropper(&quot;setDragMode&quot;, &quot;move&quot;)">
								</span>
							  </button>
							  <button type="button" class="btn btn-danger fa fa-search-plus" data-method="zoom" data-option="0.1" title="放大图片">
								<span class="docs-tooltip" data-toggle="tooltip" title="" data-original-title="$().cropper(&quot;zoom&quot;, 0.1)">
								  <!--<span class="fa fa-search-plus"></span>-->
								</span>
							  </button>
							  <button type="button" class="btn btn-danger fa fa-search-minus" data-method="zoom" data-option="-0.1" title="缩小图片">
								<span class="docs-tooltip" data-toggle="tooltip" title="" data-original-title="$().cropper(&quot;zoom&quot;, -0.1)">
								  <!--<span class="fa fa-search-minus"></span>-->
								</span>
							  </button>
							  <button type="button" class="btn btn-danger fa fa-refresh" data-method="reset" title="重置图片">
									<span class="docs-tooltip" data-toggle="tooltip" title="" data-original-title="$().cropper(&quot;reset&quot;)" aria-describedby="tooltip866214">
							   </button>
							</div>
							<div class="col-md-3">
								<button class="btn btn-danger btn-block avatar-save fa fa-save" type="button" data-dismiss="modal"> 保存修改</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>

<div class="modal fade" id="del_ticked_modal" tabindex="-1" role="dialog" >
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" id="closeButton" class="close" data-dismiss="modal">&times;</button>
										<div class="modal-container">
									      <span class="icon"></span>
									      <p class="tip">您确定要删除该订单嘛？删除后，不可恢复～</p>
										  <input name="tickedInput" type="hidden" value="">
										   <input name="orderId" type="hidden" value="">
									        <div id="delticked_btn" class="short btn ok-btn"><span>确定</span></div>
									        <div id="cancel_ticked_btn" class="short btn cancel-btn" data-dismiss="modal"><span>取消</span></div>
									</div>
									</div>
									
								</div>
							</div>
						</div>
<script src="${APP_PATH }/static/js/jquery-1.11.1.min.js"></script>
<script>
			$(document).ready(function() {
				$(".dropdown").hover(
					function() {
						$('.dropdown-menu', this).stop(true, true).slideDown("fast");
						$(this).toggleClass('open');
					},
					function() {
						$('.dropdown-menu', this).stop(true, true).slideUp("fast");
						$(this).toggleClass('open');
					}
				);
			});
		</script>
			<!-- search-jQuery -->
		<script src="${APP_PATH }/static/js/main.js"></script>
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
			$(document).ready(function() {
				$('#horizontalTab').easyResponsiveTabs({
					type: 'default', //Types: default, vertical, accordion           
					width: 'auto', //auto or any width like 600px
					fit: true, // 100% fit in a container
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
					autoPlay: true,
					navigation: true,

					items: 5,
					itemsDesktop: [640, 4],
					itemsDesktopSmall: [414, 3]

				});

			});
		</script>

		<!--/script-->
		<script type="text/javascript" src="${APP_PATH }/static/js/move-top.js"></script>
		<script type="text/javascript" src="${APP_PATH }/static/js/easing.js"></script>

		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event) {
					event.preventDefault();
					$('html,body').animate({ scrollTop: $(this.hash).offset().top }, 900);
				});
			});
		</script>
		<script type="text/javascript">
			$(document).ready(function() {
				$().UItoTop({ easingType: 'easeOutQuart' });

			});
		</script>
	
		<script src="${APP_PATH }/static/js/html2canvas.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
//做个下简易的验证  大小 格式 
	$('#avatarInput').on('change', function(e) {
		var filemaxsize = 1024 * 5;//5M
		var target = $(e.target);
		var Size = target[0].files[0].size / 1024;
		if(Size > filemaxsize) {
			alert('图片过大，请重新选择!');
			$(".avatar-wrapper").childre().remove;
			return false;
		}
		if(!this.files[0].type.match(/image.*/)) {
			alert('请选择正确的图片!')
		} else {
			var filename = document.querySelector("#avatar-name");
			var texts = document.querySelector("#avatarInput").value;
			var teststr = texts; //你这里的路径写错了
			testend = teststr.match(/[^\\]+\.[^\(]+/i); //直接完整文件名的
			filename.innerHTML = testend;
		}
	
	});

	$(".avatar-save").on("click", function() {
		var img_lg = document.getElementById('imageHead');
		// 截图小的显示框内的内容
		html2canvas(img_lg, {
			allowTaint: true,
			taintTest: false,
			onrendered: function(canvas) {
				canvas.id = "mycanvas";
				//生成base64图片数据
				var dataUrl = canvas.toDataURL("image/jpeg");
				
				$.ajax({
					url: "userexchangeTitle",
					data:"img="+dataUrl,
					dataType:"JSON",
					//cache : false,
			        //processData : false, // 不处理发送的数据，因为data值是Formdata对象，不需要对数据做处理
			        //contentType : false, // 不设置Content-type请求头
					type: "POST",
					success: function(re) {
						if(re.code==100){
							$('#userTitle').attr('src',dataUrl);
						}else{
							alert("修改失败");
						}
					}
				});
			}
		});
	})

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

$(".changePhone").click(function(){
		$(".sjyz-one").show();
		$(".sjyz-two").hide();
		$(".sjyz-ok").hide();
		$(".Step li:eq(0)").addClass("stepCur");
		$(".Step li:eq(1)").removeClass("stepCur");
		$(".Step li:eq(2)").removeClass("stepCur");
	});
$(".changePassword").click(function(){
	$(".checkOldPassword-one").show();
	$(".checkOldPassword-two").hide();
	$(".checkOldPassword-ok").hide();
	$(".Step li:eq(0)").addClass("stepCur");
	$(".Step li:eq(1)").removeClass("stepCur");
	$(".Step li:eq(2)").removeClass("stepCur");
});
	//校验用户电话是否正确
function checkOldPhone(){
	//发送ajax请求校验用户名是否可用
	var oldPhone = $("#oldPhone").val();
	if($.trim(oldPhone)==""){
		$("#oldPhone").prev().html("<font color='red'>原手机号不可为空</font>");
		$('.sjyz-one-next').addClass("oldPhoneCheckfalse");
		return false;
	}else{
	$.ajax({
		url:"${APP_PATH}/oldPhoneCheck",
		data:"oldPhone="+oldPhone,
		type:"POST",
		success:function(result){
			if(result.code==100){
				$(".sjyz-one-next").click(function(){
					$(".safinput1").prev().html("");
					$('.sjyz-one-next').removeClass("oldPhoneCheckfalse");
					//$("#exchangePhoneform2").next(".checkOldPassword-two").show();
					$("#exchangePhoneform2").show();
					$("#exchangePhoneform1").hide();
					$("#exchangePhoneform1").parents("dd").find(".Step li:eq(1)").addClass("stepCur");
					});	
			}else{
				$(".safinput1").prev().html("<font color='red'>"+result.extend.va_msg+"</font>");
				$('.checkOldPassword-one-next').addClass("oldPhoneCheckfalse");
				return false;
			}
		}
	});
	}
}
	
//校验用户旧密码是否正确
function checkOldPassword(){
	//发送ajax请求校验用户名是否可用
	var oldPassword = $("#oldPassword").val();
	if(null==oldPassword||$.trim(oldPassword)==""){
		$("#oldPassword").prev().html("<font color='red'>原密码不可为空</font>");
		$('.checkOldPassword-one-next').addClass("oldPasswordCheckfalse");
		return false;
	}else{
	$.ajax({
		url:"${APP_PATH}/oldPasswordCheck",
		data:"oldPassword="+oldPassword,
		type:"POST",
		success:function(result){
			if(result.code==100){
				$(".checkOldPassword-one-next").click(function(){
					$("#oldPassword").prev().html("");
					$('.checkOldPassword-one-next').removeClass("oldPasswordCheckfalse");
					$("#exchangePassform1").next(".checkOldPassword-two").show();
					$("#exchangePassform1").hide();
					$("#exchangePassform1").parents("dd").find(".Step li:eq(1)").addClass("stepCur");
					});	
			}else{
				$("#oldPassword").prev().html("<font color='red'>"+result.extend.va_msg+"</font>");
				$('.checkOldPassword-one-next').addClass("oldPasswordCheckfalse");
				return false;
			}
		}
	});
	}
}

	//校验新手机号是否正确
function checkNewPhone(){
	var jbPhone = $("#newPhone").val();
	var re= /^1[34578]\d{9}$/;
	if ($.trim(jbPhone)=="") {
		$("#newPhone").prev().html("<font color='red'>手机号码不能为空</font>");
		$(".sjyz-two-next").addClass("checkNewPhoneFalse");
		return false;
	} else {
		if(!re.test(jbPhone)){
			$("#newPhone").prev().html("<font color='red'>请输入有效的手机号码</font>");
			$(".sjyz-two-next").addClass("checkNewPhoneFalse");
			return false;
		}else{
			$(".sjyz-two-next").removeClass("checkNewPhoneFalse");
			$("#newPhone").prev().html("<font color='#339933'>手机号码输入正确</font>");
		}
	}
}

	//发送校验码
	function checkCode(){
					var SmsCheckCodeVal = $("#SmsCheckCode").val();
					if($.trim(SmsCheckCodeVal)== ""){
						$("#smsCode-error-box").html("<font color='red'>请输入短信验证码</font>");
						$(".sjyz-two-next").addClass("checkCodeFalse");
						return false;
					}
					// 向后台发送处理数据
					$.ajax({
								url : "smsServeCheck",// 目标地址
								data : {SmsCheckCodeVal : SmsCheckCodeVal}, // 目标参数
								type : "POST", // 用POST方式传输
								success : function(result) {
									if(result.code == 100){
										$("#smsCode-error-box").html("<font color='#339933'>短信验证码正确</font>");
										$(".sjyz-two-next").removeClass("checkCodeFalse");
									}else{
										$("#smsCode-error-box").html("<font color='red'>短信验证码有误，请核实后重新填写</font>");
										$(".sjyz-two-next").addClass("checkCodeFalse");
										return false;
									}
								}
							});
				}

				function sendMessage() {
					curCount = 120;//倒计时时间
					var jbPhone = $("#newPhone").val();
					var jbPhoneTip =$("#newPhone").prev().text();
					if (jbPhone != "") {
						if(jbPhoneTip == "该手机号码可以注册，输入正确" || jbPhoneTip == "短信验证码已发到您的手机,请查收" || jbPhoneTip =="手机号码输入正确"){
							// 设置button效果，开始计时
							$("#btnSendCode").attr("disabled", "true");
							$("#btnSendCode").val("请在" + curCount + "秒内输入验证码");
							InterValObj = window.setInterval(SetRemainTime, 1000); // 启动计时器，1秒执行一次
							// 向后台发送处理数据
							$.ajax({
								//url : "smsService",// 目标地址
								data : {jbPhone : jbPhone}, // 目标参数
								type : "POST", // 用POST方式传输
								success : function(result) {
									if(result.code == 100){
										$("#newPhone").prev().html("");
										$("#newPhone").prev().html("<font color='#339933'>短信验证码已发到您的手机,请查收</font>");
									
									}else{
										$("#newPhone").prev().html("");
										$("#newPhone").prev().html("<font color='red'>短信验证码发送失败，请重新发送</font>");
										$(".sjyz-two-next").addClass("checkCodeFalse");
										return false;
									}
								}
							});
							
						}
					}else{
						$("#newPhone").prev().html("<font color='red'>手机号码不能为空</font>");
						$(".sjyz-two-next").addClass("checkCodeFalse");
					}
				}

				//timer处理函数
				function SetRemainTime() {
					if (curCount == 0) {                
						window.clearInterval(InterValObj);// 停止计时器
						$("#btnSendCode").removeAttr("disabled");// 启用按钮
						$("#btnSendCode").val("重新发送验证码");
						$.ajax({
							url : "removeSmsCode",// 目标地址
							type : "POST", // 用POST方式传输
							success : function(result) {
							}
						});
					}else {
						curCount--;
						$("#btnSendCode").val("请在" + curCount + "秒内输入验证码");
					}
				}
				
	$(".sjyz-two-next").click(function(){
		if(null==$("#SmsCheckCode").val()||$.trim($("#SmsCheckCode").val())==""){
			$("#smsCode-error-box").html("<font color='red'>短信验证码不能为空</font>");
			return false;
		}
		if($(".sjyz-two-next").hasClass("checkCodeFalse")||$(".sjyz-two-next").hasClass("checkNewPhoneFalse")){
			return false;
		}else{
		var newPhone = $("#newPhone").val();
		$.ajax({
			url:"${APP_PATH}/userexchangePhone",
			data:"newPhone="+newPhone,
			type:"POST",
			success:function(result){
				if(result.code==100){
					$(".sjyz-two-next").click(function(){
						$(this).parents(".sjyz-two").hide();
						$(this).parents("form").prev(".sjyz-one").hide();
						$(this).parents("dd").find(".sjyz-ok").show();
						$(this).parents("dd").find(".Step li:eq(2)").addClass("stepCur");
						})	
				}else{
					$(".safinput2").prev().html("<font color='red'>"+result.extend.va_msg+"</font>");
					return false;
				}
			}
		});
		}
		
	});
	
	function conformUserPassword(){
			var pwd = $("#password1").val();
		    var pwd1 = $("#password2").val();
		    if(pwd!=pwd1)
		     {
		    	$("#password2").prev().html("<font color='red'>两次密码不相同</font>");
		    	 $("#checkOldPassword-two-next").addClass("conformUserPasswordFalse"); 
		     }else {
		    	 $("#password2").prev().html("");
		    	 $("#password1").prev().html("<font color='#339933'>密码可用</font>");
		    	 $("#checkOldPassword-two-next").removeClass("conformUserPasswordFalse");
		      }
	}
	
	$(".checkOldPassword-two-next").click(function(){
		conformUserPassword();
		var pwd = $("#password1").val();
	    var pwd1 = $("#password2").val();
	    if(null==pwd||$.trim(pwd)==""){
			$("#password1").prev().html("<font color='red'>新密码不能为空</font>");
			return false;
		}
	    if(null==pwd1||$.trim(pwd1)==""){
			$("#password2").prev().html("<font color='red'>确认密码不能为空</font>");
			return false;
		}
		if($("#checkOldPassword-two-next").hasClass("conformUserPasswordFalse")){
			return false;
		}else{
		$.ajax({
			url:"${APP_PATH}/userexchangePassword",
			data:"password="+pwd,
			type:"POST",
			success:function(result){
				if(result.code==100){
					$(".checkOldPassword-two-next").click(function(){
						$(this).parents(".checkOldPassword-two").hide();
						$(this).parents("form").prev(".checkOldPassword-one").hide();
						$(this).parents("dd").find(".checkOldPassword-ok").show();
						$(this).parents("dd").find(".Step li:eq(2)").addClass("stepCur");
						})	
				}else{
					$("#password1").prev().html("<font color='red'>"+result.extend.va_msg+"</font>");
					return false;
				}
			}
		});
		}
	});
	
	$("#userexchangeAccount").click(function(){
		var newName = $("#newName").val();
		if(null==newName||$.trim(newName)==""){
			$("#newName").prev().html("<font color='red'>新用户名不可为空</font>");
			return false;
		}
		$.ajax({
			url:"${APP_PATH}/userexchangeAccount",
			data:"newName="+newName,
			type:"POST",
			success:function(result){
				if(result.code==100){
					$("#newName").prev().html("<font color='#339933'>修改成功</font>");
					$("#mod-mainRt-con-name").text(newName);
					$("#widget-otherinfo-name").text(newName);
				}else{
					$("#newName").prev().html("<font color='red'>用户未登录</font>");
					return false;
				}
			}
		});
	});
	
	//删除订单
	$(".del-order").click(function(){
		var tickedId = $("input[name='tickedId']").val()
		var orderId =$(".del-order").index(this);
		$("input[name=tickedInput]").val(tickedId);
		$("input[name=orderId]").val(orderId);
	});
	
$("#delticked_btn span").click(function(){
		
		var tickedId = $("input[name=tickedInput]").val();
		var orderId = $("input[name=orderId]").val();
		$.ajax({
			url:"${APP_PATH}/delticked",
			data:"tickedId="+tickedId,
			type:"POST",
			success:function(result){
				if(result.code==100){
					alert("修改成功");
					$("#cancel_ticked_btn span").click();
					$(".order-box").eq(orderId).hide();
				}else{
					alert("删除失败");
				}
			}
		});
	});

	 </script>
</body>

</html>