<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新闻咨询首页</title>
<!-- for-mobile-apps -->
<% pageContext.setAttribute("APP_PATH", request.getContextPath()); %>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="" />
		<script type="application/x-javascript">
			addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
			function hideURLbar() { window.scrollTo(0, 1); }
		</script>
		<!-- //for-mobile-apps -->
		<link href="${APP_PATH }/static/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
		<!-- pop-up -->
		<link href="${APP_PATH }/static/css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
		<!-- //pop-up -->
		<link href="${APP_PATH }/static/css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
		<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/css/zoomslider.css" />
		<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/css/style.css" />
		<link href="${APP_PATH }/static/css/font-awesome.css" rel="stylesheet">
		<link type="text/css" rel='stylesheet' href="${APP_PATH }/static/css/movieclasses.css" />
		<script type="text/javascript" src="${APP_PATH }/static/js/modernizr-2.6.2.min.js"></script>
		<!--/web-fonts-->
		<link href='http://fonts.googleapis.com/css?family=Tangerine:400,700' rel='stylesheet' type='text/css'>
		<link href="http://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900" rel="stylesheet">
		<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
		<!--//web-fonts-->
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header2.jsp"%>
		<!--/content-inner-section-->
		<div class="w3_content_agilleinfo_inner">
			<div class="agile_featured_movies">
				<!--热点咨询-->
				<div class="index-news-container clearfix">
					<div class="popular-container">
						<h4 class="popular-font">热门资讯</h4>
						<ul>
							<li class="top1-list">
								<div>
									<div class="top-info-thumb">
										<a href="/films/news/35184" target="_blank" data-act="news-click" data-val="{newsid:35184}">
											<img alt="" src="http://p1.meituan.net/movie/d9cd1a00c7103711e6ae6b52f3c1e934269363.jpg@120w_72h_1e_1c">
											<i class="ranking top-info-icon red-bg">1</i>
										</a>
									</div>
									<p class="top1-news-content">
										<a title="投票站队：《黑豹》真的有那么好看吗？" class="two-line" href="/films/news/35184" target="_blank" data-act="news-click" data-val="{newsid:35184}">
											投票站队：《黑豹》真的有那么好看吗？
										</a>
									</p>
								</div>
							</li>
							<li>
								<div>
									<div class="normal-link">
										<i class="ranking red">2</i>
										<p class="top10-news-content">
											<a href="/films/news/35186" target="_blank" data-act="news-click" data-val="{newsid:35186}">角色冬兵迎来101岁生日《黑豹》彩蛋中化身白狼，384粉今日献祝福</a>
										</p>
									</div>
								</div>
							</li>
							<li>
								<div>
									<div class="normal-link">
										<i class="ranking red">3</i>
										<p class="top10-news-content">
											<a href="/films/news/35183" target="_blank" data-act="news-click" data-val="{newsid:35183}">都说她不像地球人，可帅可美演技好是学霸，奇异博士里还狂虐卷福</a>
										</p>
									</div>
								</div>
							</li>
							<li>
								<div>
									<div class="normal-link">
										<i class="ranking ">4</i>
										<p class="top10-news-content">
											<a href="/films/news/35199" target="_blank" data-act="news-click" data-val="{newsid:35199}">《黑豹》确定拍续集，《复联3》新海报集结23位英雄，锤哥站C位</a>
										</p>
									</div>
								</div>
							</li>
							<li>
								<div>
									<div class="normal-link">
										<i class="ranking ">5</i>
										<p class="top10-news-content">
											<a href="/films/news/35187" target="_blank" data-act="news-click" data-val="{newsid:35187}">黑豹首日票房轻松破亿，国内口碑褒贬不一两极化，与北美反差大</a>
										</p>
									</div>
								</div>
							</li>
							<li>
								<div>
									<div class="normal-link">
										<i class="ranking ">6</i>
										<p class="top10-news-content">
											<a href="/films/news/35182" target="_blank" data-act="news-click" data-val="{newsid:35182}">当年的文艺少年，如今的卖座导演，看韩寒如何站着把钱挣了</a>
										</p>
									</div>
								</div>
							</li>
							<li>
								<div>
									<div class="normal-link">
										<i class="ranking ">7</i>
										<p class="top10-news-content">
											<a href="/films/news/35202" target="_blank" data-act="news-click" data-val="{newsid:35202}">《红海行动》口碑一路飘红持续增长，上映23天逆袭成为春节档冠军</a>
										</p>
									</div>
								</div>
							</li>
							<li>
								<div>
									<div class="normal-link">
										<i class="ranking ">8</i>
										<p class="top10-news-content">
											<a href="/films/news/35194" target="_blank" data-act="news-click" data-val="{newsid:35194}">《神奇女侠2》确定反派豹女，一样是美女兼才女，还有美腿</a>
										</p>
									</div>
								</div>
							</li>
							<li>
								<div>
									<div class="normal-link">
										<i class="ranking ">9</i>
										<p class="top10-news-content">
											<a href="/films/news/35195" target="_blank" data-act="news-click" data-val="{newsid:35195}">《虎皮萌企鹅》发布危难热血预告 虎企鹅保卫丛林</a>
										</p>
									</div>
								</div>
							</li>
							<li>
								<div>
									<div class="normal-link">
										<i class="ranking ">10</i>
										<p class="top10-news-content">
											<a href="/films/news/35176" target="_blank" data-act="news-click" data-val="{newsid:35176}">他是第一位黑人英雄，曾是要靠资助的穷学生，如今成漫威宇宙首富</a>
										</p>
									</div>
								</div>
							</li>
						</ul>
					</div>

					<div class="latest-container">
						<h4 class="latest-header popular-font">
    最新资讯
    <a class="all-latest" href="?showTab=2" data-act="all-news-click">
      全部
      <span class="arrow red-arrow"></span>
    </a>
  </h4>

						<div class="latest-content clearfix">
							<div class="latest-news-box">
								<a href="" target="_blank">
									<img alt="" src="http://p0.meituan.net/movie/bddebb1114f07501395e48066bd0619d46572.jpg@230w_129h_1e_1c">
								</a>
								<p class="latest-news-title">
									<a title="回忆杀！时隔20年，“新乌龙院”原班人马，强势回归" class="two-line" href="/films/news/35218" target="_blank" data-act="news-click" data-val="{newsid:35218}">
										回忆杀！时隔20年，“新乌龙院”原班人马，强势回归
									</a>
								</p>
								<div class="info-container">
									<span>中北电影</span>
									<span class="images-view-count view-count">1100</span>
								</div>
							</div>
							<div class="latest-news-box">
								<a href="/films/news/35217" target="_blank" data-act="news-click" data-val="{newsid:35217}">
									<img alt="" src="http://p0.meituan.net/movie/668489c242eedcf4ccaee3b213bd61cb123563.jpg@230w_129h_1e_1c">
								</a>
								<p class="latest-news-title">
									<a title="连姆·尼森陷入困境，《通勤营救》3月30日公映，备受关注" class="two-line" href="/films/news/35217" target="_blank" data-act="news-click" data-val="{newsid:35217}">
										连姆·尼森陷入困境，《通勤营救》3月30日公映，备受关注
									</a>
								</p>
								<div class="info-container">
									<span>中北电影</span>
									<span class="images-view-count view-count">1316</span>
								</div>
							</div>
							<div class="latest-news-box">
								<a href="/films/news/35216" target="_blank" data-act="news-click" data-val="{newsid:35216}">
									<img alt="" src="http://p0.meituan.net/movie/31d14a2c12413cedbee647f985c5fd7277207.jpg@230w_129h_1e_1c">
								</a>
								<p class="latest-news-title">
									<a title="非洲王国瓦坎达统治者，“土豪”英雄，漫威混合DC谁最有钱" class="two-line" href="/films/news/35216" target="_blank" data-act="news-click" data-val="{newsid:35216}">
										非洲王国瓦坎达统治者，“土豪”英雄，漫威混合DC谁最有钱
									</a>
								</p>
								<div class="info-container">
									<span>中北电影</span>
									<span class="images-view-count view-count">7936</span>
								</div>
							</div>
							<div class="latest-news-box">
								<a href="/films/news/35215" target="_blank" data-act="news-click" data-val="{newsid:35215}">
									<img alt="" src="http://p1.meituan.net/movie/9d46a01bb2a3370bbc6acbbd6d8f38d587854.jpg@230w_129h_1e_1c">
								</a>
								<p class="latest-news-title">
									<a title="《复联3》预热，提档、倒计时，颤抖吧！漫威粉" class="two-line" href="/films/news/35215" target="_blank" data-act="news-click" data-val="{newsid:35215}">
										《复联3》预热，提档、倒计时，颤抖吧！漫威粉
									</a>
								</p>
								<div class="info-container">
									<span>中北电影</span>
									<span class="images-view-count view-count">11586</span>
								</div>
							</div>
							<div class="latest-news-box">
								<a href="/films/news/35214" target="_blank" data-act="news-click" data-val="{newsid:35214}">
									<img alt="" src="http://p0.meituan.net/movie/90b0cbb3adde499d8b6449b302ff7adc341788.jpg@230w_129h_1e_1c">
								</a>
								<p class="latest-news-title">
									<a title="定位国际化的《妈妈咪鸭》，让国产动画成功输出海外" class="two-line" href="/films/news/35214" target="_blank" data-act="news-click" data-val="{newsid:35214}">
										定位国际化的《妈妈咪鸭》，让国产动画成功输出海外
									</a>
								</p>
								<div class="info-container">
									<span>中北电影</span>
									<span class="images-view-count view-count">13496</span>
								</div>
							</div>
							<div class="latest-news-box">
								<a href="/films/news/35213" target="_blank" data-act="news-click" data-val="{newsid:35213}">
									<img alt="" src="http://p0.meituan.net/movie/528c4061b545210c0de4a4fdf368527974717.jpg@230w_129h_1e_1c">
								</a>
								<p class="latest-news-title">
									<a title="张译黄景瑜“译鸣景人”，《红海行动》反超《唐探2》" class="two-line" href="/films/news/35213" target="_blank" data-act="news-click" data-val="{newsid:35213}">
										张译黄景瑜“译鸣景人”，《红海行动》反超《唐探2》
									</a>
								</p>
								<div class="info-container">
									<span>中北电影</span>
									<span class="images-view-count view-count">12494</span>
								</div>
							</div>
							<div class="latest-news-box">
								<a href="/films/news/35213" target="_blank" data-act="news-click" data-val="{newsid:35213}">
									<img alt="" src="http://p0.meituan.net/movie/528c4061b545210c0de4a4fdf368527974717.jpg@230w_129h_1e_1c">
								</a>
								<p class="latest-news-title">
									<a title="张译黄景瑜“译鸣景人”，《红海行动》反超《唐探2》" class="two-line" href="/films/news/35213" target="_blank" data-act="news-click" data-val="{newsid:35213}">
										张译黄景瑜“译鸣景人”，《红海行动》反超《唐探2》
									</a>
								</p>
								<div class="info-container">
									<span>中北电影</span>
									<span class="images-view-count view-count">12494</span>
								</div>
							</div>
							<div class="latest-news-box">
								<a href="/films/news/35213" target="_blank" data-act="news-click" data-val="{newsid:35213}">
									<img alt="" src="http://p0.meituan.net/movie/528c4061b545210c0de4a4fdf368527974717.jpg@230w_129h_1e_1c">
								</a>
								<p class="latest-news-title">
									<a title="张译黄景瑜“译鸣景人”，《红海行动》反超《唐探2》" class="two-line" href="/films/news/35213" target="_blank" data-act="news-click" data-val="{newsid:35213}">
										张译黄景瑜“译鸣景人”，《红海行动》反超《唐探2》
									</a>
								</p>
								<div class="info-container">
									<span>中北电影</span>
									<span class="images-view-count view-count">12494</span>
								</div>
							</div>
						</div>
					</div>

				</div>

				<!--//热点资讯结束-->

				<!--预告片速递-->
				<div class="index-videos-container clearfix">
        <div class="popular-container">
    <h4 class="videos-font">热门预告片</h4>
      <ul>
          <li class="top-list">
            <div>
              <div class="top-info-thumb">
                <a href="http://imovie.ewang.com/films/341138/preview?videoId=91568" target="_blank" data-act="video-click" data-val="{videoId:91568}">
                  <img alt="" src="http://p0.meituan.net/movie/879fafb77dc0b175515dad0f0004edb825688.jpg@120w_68h_1e_1c">
                  <i class="ranking top-info-icon orange-bg">1</i>
                  <i class="play-icon"></i>
                </a>
              </div>
              <div class="top5-video-info">
                <p class="one-line">
                  <a href="http://imovie.ewang.com/films/341138/preview?videoId=91568" target="_blank" data-act="video-click" data-val="{videoId:91568}">
                    《黑豹》中国独家预告片
                  </a>
                </p>
                <div class="video-view">
                  <span class="video-play-count">508.9万</span>
                </div>
              </div>
            </div>
          </li>
          <li class="top-list">
            <div>
              <div class="top-info-thumb">
                <a href="http://imovie.ewang.com/films/1217637/preview?videoId=91907" target="_blank" data-act="video-click" data-val="{videoId:91907}">
                  <img alt="" src="http://p0.meituan.net/movie/956f6a40ece65c2c0757f00b89f06f3328873.jpg@120w_68h_1e_1c">
                  <i class="ranking top-info-icon orange-bg">2</i>
                  <i class="play-icon"></i>
                </a>
              </div>
              <div class="top5-video-info">
                <p class="one-line">
                  <a href="http://imovie.ewang.com/films/1217637/preview?videoId=91907" target="_blank" data-act="video-click" data-val="{videoId:91907}">
                    《厉害了，我的国》预告片
                  </a>
                </p>
                <div class="video-view">
                  <span class="video-play-count">479.8万</span>
                </div>
              </div>
            </div>
          </li>
          <li class="top-list">
            <div>
              <div class="top-info-thumb">
                <a href="http://imovie.ewang.com/films/343136/preview?videoId=92007" target="_blank" data-act="video-click" data-val="{videoId:92007}">
                  <img alt="" src="http://p1.meituan.net/movie/140602986fc33e2dbf2bea8e4520d52b25914.jpg@120w_68h_1e_1c">
                  <i class="ranking top-info-icon orange-bg">3</i>
                  <i class="play-icon"></i>
                </a>
              </div>
              <div class="top5-video-info">
                <p class="one-line">
                  <a href="http://imovie.ewang.com/films/343136/preview?videoId=92007" target="_blank" data-act="video-click" data-val="{videoId:92007}">
                    《小萝莉的猴神大叔》公映版预告片
                  </a>
                </p>
                <div class="video-view">
                  <span class="video-play-count">240.6万</span>
                </div>
              </div>
            </div>
          </li>
          <li class="top-list">
            <div>
              <div class="top-info-thumb">
                <a href="http://imovie.ewang.com/films/343762/preview?videoId=92133" target="_blank" data-act="video-click" data-val="{videoId:92133}">
                  <img alt="" src="http://p0.meituan.net/movie/892f4f43d42041aefe5925f5a27d6a8745976.jpg@120w_68h_1e_1c">
                  <i class="ranking top-info-icon grey-bg">4</i>
                  <i class="play-icon"></i>
                </a>
              </div>
              <div class="top5-video-info">
                <p class="one-line">
                  <a href="http://imovie.ewang.com/films/343762/preview?videoId=92133" target="_blank" data-act="video-click" data-val="{videoId:92133}">
                    《比得兔》全民吸兔潮！唱跳全能优质萌兔等你pick
                  </a>
                </p>
                <div class="video-view">
                  <span class="video-play-count">60.2万</span>
                </div>
              </div>
            </div>
          </li>
          <li class="top-list">
            <div>
              <div class="top-info-thumb">
                <a href="http://imovie.ewang.com/films/1204720/preview?videoId=92050" target="_blank" data-act="video-click" data-val="{videoId:92050}">
                  <img alt="" src="http://p1.meituan.net/movie/814b296f2cd32f339429e87c02f351c530630.jpg@120w_68h_1e_1c">
                  <i class="ranking top-info-icon grey-bg">5</i>
                  <i class="play-icon"></i>
                </a>
              </div>
              <div class="top5-video-info">
                <p class="one-line">
                  <a href="http://imovie.ewang.com/films/1204720/preview?videoId=92050" target="_blank" data-act="video-click" data-val="{videoId:92050}">
                    《妈妈咪鸭》终极版预告片 “恐婚大鹏”变身“王牌奶爸”
                  </a>
                </p>
                <div class="video-view">
                  <span class="video-play-count">73.6万</span>
                </div>
              </div>
            </div>
          </li>
      </ul>
  </div>

        <div class="latest-container">
      <h4 class="latest-header videos-font">
    预告片速递
    <a class="all-latest" href="news-videos.html">
      全部
      <span class="arrow blue-arrow"></span>
    </a>
  </h4>


    <div class="latest-content clearfix">
            <div class="latest-video-box latest-video-big">
              <a href="http://imovie.ewang.com/films/1212413/preview?videoId=92164" target="_blank" data-act="video-click" data-val="{videoId:92164}">
                <img alt="" src="http://p1.meituan.net/movie/f3c5dce31b12aedc9ede7e1a7749b89b19608.jpg@480w_270h_1e_1c">

                <div class="latest-video-info">
                  <p class="one-line">
                    <span class="latest-video-title">《大坏狐狸的故事》《大坏狐狸的故事》短视频</span>
                  </p>
                  <p>
                    <span class="video-play-count">1590</span>
                  </p>
                </div>
                <i class="play-icon"></i>
              </a>
            </div>
            <div class="latest-video-box ">
              <a href="http://imovie.ewang.com/films/341178/preview?videoId=92163" target="_blank" data-act="video-click" data-val="{videoId:92163}">
                <img alt="" src="http://p0.meituan.net/movie/eb4d414b971c41dc1db241e9927cc53c13842.jpg@230w_125h_1e_1c">

                <div class="latest-video-info">
                  <p class="one-line">
                    <span class="latest-video-title">《头号玩家》“前所未见”版预告片</span>
                  </p>
                  <p>
                    <span class="video-play-count">1318</span>
                  </p>
                </div>
                <i class="play-icon"></i>
              </a>
            </div>
            <div class="latest-video-box ">
              <a href="http://imovie.ewang.com/films/78460/preview?videoId=92161" target="_blank" data-act="video-click" data-val="{videoId:92161}">
                <img alt="" src="http://p0.meituan.net/movie/1402d4d5991eef9eba8045033340547952603.jpg@230w_125h_1e_1c">

                <div class="latest-video-info">
                  <p class="one-line">
                    <span class="latest-video-title">《环太平洋：雷霆再起》机甲尬舞视频 超嗨！机甲魔性舞动欢乐满分</span>
                  </p>
                  <p>
                    <span class="video-play-count">84930</span>
                  </p>
                </div>
                <i class="play-icon"></i>
              </a>
            </div>
            <div class="latest-video-box ">
              <a href="http://imovie.ewang.com/films/881837/preview?videoId=92160" target="_blank" data-act="video-click" data-val="{videoId:92160}">
                <img alt="" src="http://p0.meituan.net/movie/8f1f6cd0205fe181b78ffddf7a84f00924256.jpg@230w_125h_1e_1c">

                <div class="latest-video-info">
                  <p class="one-line">
                    <span class="latest-video-title">《起跑线》电影不止于电影，印度电影自黑起来毫不手软</span>
                  </p>
                  <p>
                    <span class="video-play-count">200</span>
                  </p>
                </div>
                <i class="play-icon"></i>
              </a>
            </div>
            <div class="latest-video-box ">
              <a href="http://imovie.ewang.com/films/1204622/preview?videoId=92151" target="_blank" data-act="video-click" data-val="{videoId:92151}">
                <img alt="" src="http://p0.meituan.net/movie/53e816f901edfc74a4817d4e432abd2b16674.jpg@230w_125h_1e_1c">

                <div class="latest-video-info">
                  <p class="one-line">
                    <span class="latest-video-title">《水形物语》“浪漫传奇”版预告片 年度最美电影没有之一</span>
                  </p>
                  <p>
                    <span class="video-play-count">16.7万</span>
                  </p>
                </div>
                <i class="play-icon"></i>
              </a>
            </div>
            <div class="latest-video-box ">
              <a href="http://imovie.ewang.com/films/881837/preview?videoId=92149" target="_blank" data-act="video-click" data-val="{videoId:92149}">
                <img alt="" src="http://p0.meituan.net/movie/8f1f6cd0205fe181b78ffddf7a84f00924256.jpg@230w_125h_1e_1c">

                <div class="latest-video-info">
                  <p class="one-line">
                    <span class="latest-video-title">《起跑线》印度不止有“国宝级演员”阿米尔·汗 更有“国际演员”伊尔凡·可汗</span>
                  </p>
                  <p>
                    <span class="video-play-count">468</span>
                  </p>
                </div>
                <i class="play-icon"></i>
              </a>
            </div>
             <div class="latest-video-box ">
              <a href="http://imovie.ewang.com/films/881837/preview?videoId=92149" target="_blank" data-act="video-click" data-val="{videoId:92149}">
                <img alt="" src="http://p0.meituan.net/movie/8f1f6cd0205fe181b78ffddf7a84f00924256.jpg@230w_125h_1e_1c">

                <div class="latest-video-info">
                  <p class="one-line">
                    <span class="latest-video-title">《起跑线》印度不止有“国宝级演员”阿米尔·汗 更有“国际演员”伊尔凡·可汗</span>
                  </p>
                  <p>
                    <span class="video-play-count">468</span>
                  </p>
                </div>
                <i class="play-icon"></i>
              </a>
            </div>
             <div class="latest-video-box ">
              <a href="http://imovie.ewang.com/films/881837/preview?videoId=92149" target="_blank" data-act="video-click" data-val="{videoId:92149}">
                <img alt="" src="http://p0.meituan.net/movie/8f1f6cd0205fe181b78ffddf7a84f00924256.jpg@230w_125h_1e_1c">

                <div class="latest-video-info">
                  <p class="one-line">
                    <span class="latest-video-title">《起跑线》印度不止有“国宝级演员”阿米尔·汗 更有“国际演员”伊尔凡·可汗</span>
                  </p>
                  <p>
                    <span class="video-play-count">468</span>
                  </p>
                </div>
                <i class="play-icon"></i>
              </a>
            </div>
             <div class="latest-video-box ">
              <a href="http://imovie.ewang.com/films/881837/preview?videoId=92149" target="_blank" data-act="video-click" data-val="{videoId:92149}">
                <img alt="" src="http://p0.meituan.net/movie/8f1f6cd0205fe181b78ffddf7a84f00924256.jpg@230w_125h_1e_1c">

                <div class="latest-video-info">
                  <p class="one-line">
                    <span class="latest-video-title">《起跑线》印度不止有“国宝级演员”阿米尔·汗 更有“国际演员”伊尔凡·可汗</span>
                  </p>
                  <p>
                    <span class="video-play-count">468</span>
                  </p>
                </div>
                <i class="play-icon"></i>
              </a>
            </div>
    </div>
  </div>

    </div>
				<!--//预告片速递结束-->
			</div>
		</div>
		<!--//content-inner-section-->
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
	
	<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

		<script src="${APP_PATH }/static/js/jquery-1.11.1.min.js"></script>
		<!-- Dropdown-Menu-JavaScript -->
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
		<!-- //Dropdown-Menu-JavaScript -->
		<!-- search-jQuery -->
		<script src="${APP_PATH }/static/js/main.js"></script>

		<script src="${APP_PATH }/static/js/simplePlayer.js"></script>
		<script>
			$("document").ready(function() {
				$("#video").simplePlayer();
			});
		</script>
		<script>
			$("document").ready(function() {
				$("#video1").simplePlayer();
			});
		</script>
		<script>
			$("document").ready(function() {
				$("#video2").simplePlayer();
			});
		</script>
		<script>
			$("document").ready(function() {
				$("#video3").simplePlayer();
			});
		</script>
		<script>
			$("document").ready(function() {
				$("#video4").simplePlayer();
			});
		</script>
		<script>
			$("document").ready(function() {
				$("#video5").simplePlayer();
			});
		</script>
		<script>
			$("document").ready(function() {
				$("#video6").simplePlayer();
			});
		</script>

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
		<script src="${APP_PATH }/static/js/bootstrap.js"></script>
</body>
</html>