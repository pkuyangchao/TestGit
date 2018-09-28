<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/manage/lib/Hui-iconfont/1.0.8/iconfont.css" />
<style>
body {
    padding-bottom: 30px;
    font-family: PingFangSC-Regular,Tahoma,Microsoft Yahei,sans-serif;
}
	.container{
		width: 1000px;
		font-size: 14px;
	}
	.commentbox{
		  position: relative;
   	      padding-left: 68px;
	}
	.mytextarea {
	   height: 100%;
	    width: 100%;
	    display: block;
	    border: none;
	    font-size: 14px;
	    line-height: 20px;
	    color: #4b4b4b;
	}
	.replybox {
    border: 3px solid #f0f0f0;
    position: relative;
    margin-top: 8px;
    height: 58px;
    padding: 8px 93px 8px 16px;
    background-color: #fff;
}

	.comment-list{
		width: 900px;
		margin: 20px auto;
		clear: both;
		padding-top: 20px;
	}
	.comment-list .comment-info{
		position: relative;
		margin-bottom: 20px;
		margin-bottom: 20px;
		border-bottom: 1px solid #ccc;
	}
	.comment-list .comment-info header{
		width: 10%;
		position: absolute;
	}
	.comment-list .comment-info header img{
		width: 100%;
		border-radius: 50%;
		padding: 5px;
	}
	.comment-list .comment-info .comment-right{
		padding:5px 0px 5px 11%; 
	}
	.comment-list .comment-info .comment-right h3{
		margin: 5px 0px;
	}
	.comment-list .comment-info .comment-right .comment-content-header{
		height: 25px;
	}
	.comment-list .comment-info .comment-right .comment-content-header span,.comment-list .comment-info .comment-right .comment-content-footer span{
		padding-right: 2em;
		color: #aaa;
	}
	.comment-list .comment-info .comment-right .comment-content-header span,.comment-list .comment-info .comment-right .comment-content-footer span.reply-btn,.send,.reply-list-btn{
		cursor: pointer;
	}
	.comment-list .comment-info .comment-right .reply-list {
		border-left: 3px solid #ccc;
		padding-left: 7px;
	}
	.comment-list .comment-info .comment-right .reply-list .reply{
		border-bottom: 1px dashed #ccc;
	}
	.comment-list .comment-info .comment-right .reply-list .reply div span{
		padding-left: 10px;
	}
	.comment-list .comment-info .comment-right .reply-list .reply p span{
		padding-right: 2em;
		color: #aaa;
	}
	.header {
    height: 28px;
    padding: 22px 0;
    overflow: hidden;
}
	.header-title {
    font-size: 26px;
    color: #2a2a2a;
    width: 68px;
    float: left;
    height: 100%;
}
	.header-number {
    float: left;
    height: 100%;
    color: #adadad;
    line-height: 32px;
    font-size: 14px;
}
.header-link {
    float: right;
    font-size: 14px;
    display: block;
    height: 100%;
    line-height: 32px;
}
	.common-link {
    color: #ff7900;
    cursor: pointer;
}
.header-number a, .header-number a:visited {
    color: #adadad;
}

.common-avatar {
    display: block;
    position: absolute;
    left: 0px;
    top: 0px;
    z-index: 1;
    width: 50px;
    height: 50px;
    font-size: 0px;
    border-radius: 50%;
    background: url(//mat1.gtimg.com/v/comment/images/avatar_default.9d95c455.jpg) 0 0 no-repeat;
    overflow: hidden;
}
.box-logout.box-content {
    height: 84px;
    padding-bottom: 10px;
}
a, b, body, button, dd, div, dl, dt, em, form, h1, h2, h3, h4, header, input, li, p, span, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    vertical-align: baseline;
}
a {
    text-decoration: none;
    color: #4b4b4b;
    font-weight: 700;
}
.box-content {
    border: 3px solid #f0f0f0;
    position: relative;
}
.box-logout .box-textarea-block {
    margin-right: 110px;
    height: 72px;
}
.box-textarea-block {
    margin-left: 12px;
    margin-top: 12px;
    margin-bottom: 12px;
}
.box-loginBtn {
    position: absolute;
    right: -3px;
    top: -3px;
    z-index: 1;
    width: 100px;
    height: 100px;
    background-color: #ff7900;
    font-size: 16px;
    line-height: 100px;
    text-align: center;
    color: #fff;
    cursor: pointer;
}
.content{
	font-size: 14px;
}
.comment-operate {
    margin-top: 18px;
    font-size: 12px;
    display: inline-block;
}
.comment-operate-up, .comment-operate.disable .comment-operate-up:hover {
    background-position: 0 0;
    color: #adadad;
}
.comment-operate-item {
    float: left;
    position: relative;
    width: 72px;
    padding-left: 16px;
    height: 14px;
    line-height: 14px;
    background-repeat: no-repeat;
    color: #adadad;
    cursor: pointer;
}
i{
    font-style: normal;
}
.send {
    position: absolute;
    right: -3px;
    top: -3px;
    z-index: 1;
    width: 80px;
    height: 80px;
    background-color: #ff7900;
    font-size: 16px;
    line-height: 80px;
    text-align: center;
    color: #fff;
    cursor: pointer;
}
.comment-operate-item:hover{
    color: #ff7900;
}

</style>
</head>
<body>

<div class="container">
  <div class="header" id="J_Header">
			<h1 class="header-title">影评</h1>
			<p class="header-number"> (
				<a id="J_CommentTotal" href="">2052</a>)</p>
			<a class="header-link common-link" href="" target="_blank">影评广场</a>
		</div>
	<div class="commentbox">
		<div class="common-avatar"></div>
		<div class="box-content box-logout">
			<form action="">
			<div class="box-textarea-block">
			<textarea cols="80" rows="50" placeholder="来说几句吧......" class="mytextarea" id="content"></textarea>
			</div>
			
			<span id="comment" class="box-loginBtn J_PostBtn">评论</span>
			</form>
		</div>

	</div>
	<div class="comment-list">

		<c:forEach items="${messages }" var="message" varStatus="status">
		
		<div class="comment-info" >
			<header><img src="static${message.user.userTitle }"></header>
			<div class="comment-right">
				<h3>${message.user.userName }</h3>
				<div class="comment-content-header"><span><i class="glyphicon glyphicon-time"></i> ${message.messageTime }</span></div>
				<p class="content">${message.messageContent }
				</p>
				<div class="comment-content-footer">
				 
				 <div class="comment-operate J_CommentOperate clearfix"  id="${message.messageId }">
			
					 <div class="J_Vote comment-operate-item comment-operate-up"><i class="Hui-iconfont">&#xe656;</i>赞 <i class="messagegood">${message.messageGood }</i></div> 
					 <div class="J_Vote comment-operate-item comment-operate-poke"><i class="Hui-iconfont">&#xe688;</i>踩 <i class="messagebad">${message.messageBad }</i></div>
					 <div class="J_Reply comment-operate-item comment-operate-reply comment-operate-reply--hover reply-btn"><i class="Hui-iconfont">&#xe6b3;</i>回复 </div>
					 <div class="J_Reply comment-operate-item comment-operate-reply comment-operate-reply--hover reply-all-btn"><i class="Hui-iconfont">&#xe686;</i>全部回复 </div> 
					
				  </div>
				  <input  class="userName" type="hidden" value="${userSession.userName }">
				 </div>
				
				<div class="reply-list"></div>
				
				</div>
			</div>
	
		
		</c:forEach>
		
	</div>
</div>

<script type="text/javascript" src="${APP_PATH }/static/js/jquery.min.js"></script>

<script type="text/javascript" src="${APP_PATH }/static/js/bootstrap.min.js"></script>
<script type="text/javascript">
	//初始化数据
	var arr = [];
	

$(function(){
	
	
function crateCommentInfo(obj){
		
		if(typeof(obj.time) == "undefined" || obj.time == ""){
			obj.time = getNowDateFormat();
		}
		
		var el = "<div class='comment-info'><header><img src='"+obj.img+"'></header><div class='comment-right'><h3>"+obj.replyName+"</h3>"
				+"<div class='comment-content-header'><span><i class='glyphicon glyphicon-time'></i>"+obj.time+"</span>";
		
		el = el+"</div><p class='content'>"+obj.content+"</p><div class='comment-content-footer'>";
		
		el = el + "<div class='comment-operate J_CommentOperate clearfix'><span class='J_Vote comment-operate-item comment-operate-up'>赞<i></i></span><span class='J_Vote comment-operate-item comment-operate-poke'>踩<i></i></span><span class='J_Reply comment-operate-item comment-operate-reply comment-operate-reply--hover reply-btn'> 回复 </span> </div><div class='reply-list'>";
		
		if(obj.replyBody != "" && obj.replyBody.length > 0){
			var arr = obj.replyBody;
			for(var j=0;j<arr.length;j++){
				var replyObj = arr[j];
				el = el+createReplyComment(replyObj);
			}
		}
		el = el+"</div></div></div>";
		return el;
	}
	
	//返回每个回复体内容
	function createReplyComment(reply){
		var replyEl = "<div class='reply'><div><a href='javascript:void(0)' class='replyname'>"+reply.replyName+"</a>:<a href='javascript:void(0)'>@"+reply.beReplyName+"</a><span>"+reply.content+"</span></div>"
						+ "<p><span>"+reply.time+"</span> <span class='reply-list-btn'>回复</span></p></div>";
		return replyEl;
	}
	
	function getNowDateFormat(){
		var nowDate = new Date();
		var year = nowDate.getFullYear();
		var month = filterNum(nowDate.getMonth()+1);
		var day = filterNum(nowDate.getDate());
		var hours = filterNum(nowDate.getHours());
		var min = filterNum(nowDate.getMinutes());
		var seconds = filterNum(nowDate.getSeconds());
		return year+"-"+month+"-"+day+" "+hours+":"+min+":"+seconds;
	}
	function filterNum(num){
		if(num < 10){
			return "0"+num;
		}else{
			return num;
		}
	}
	function replyClick(el){
		el.parent().parent().append("<div class='replybox'><textarea cols='80' rows='50' placeholder='来说几句吧......' class='mytextarea' ></textarea><div class='send'>发送</div></div>")
		.find(".send").click(function(){
			var parentEl = $(this).parent().parent().parent().parent();
			
			var content = $(this).prev().val();
			var userName = $(this).parent().prev().val();
			var messageId = $(this).parent().prev().prev().attr('id');
			if(content != ""){
				$.ajax({
					url:"${APP_PATH}/addreply",
					data:{messageId:messageId,content:content},
					type:"POST",
					success:function(result){
						if(result.code==100){
							var obj = new Object();
							obj.replyName=userName;
							if(el.parent().parent().hasClass("reply")){
								obj.beReplyName = el.parent().parent().find("a:first").text();
							}else{
								obj.beReplyName=parentEl.find("h3").text();
							}
							obj.content=result.extend.content;
							obj.time = getNowDateFormat();
							var replyString = createReplyComment(obj);
							
							$(".replybox").remove();
							
							parentEl.find(".reply-list").append(replyString).find(".reply-list-btn:last").click(function(){alert("不能回复自己");});
						}else{
							alert("评论失败"+result.extend.va_msg);
							return false;
						}
					}
				});
				
				}else{
				alert("空内容");
			}
		});
	}
	
	$.fn.addCommentList=function(options){
		var defaults = {
			data:[],
			add:""
		}
		var option = $.extend(defaults, options);
		//加载数据
		//if(option.data.length > 0){
			var dataList = option.data;
			var totalString = "";
			for(var i=0;i<dataList.length;i++){
				var obj = dataList[i];
				var objString = crateCommentInfo(obj);
				totalString = totalString+objString;
			}
			$(this).append(totalString).find(".reply-btn").click(function(){
				if($(this).parent().parent().find(".replybox").length > 0){
					$(".replybox").remove();
				}else{
					$(".replybox").remove();
					replyClick($(this));
				}
			});
			$(".reply-list-btn").click(function(){
				if($(this).parent().parent().find(".replybox").length > 0){
					$(".replybox").remove();
				}else{
					
					$(".replybox").remove();
					replyClick($(this));
				}
			})
		//}
		
		//添加新数据
		if(option.add != ""){
			obj = option.add;
			var str = crateCommentInfo(obj);
			$(this).prepend(str).find(".reply-btn").click(function(){
				replyClick($(this));
			});
		}
	}
	
	
	 $(".comment-list").addCommentList({data:arr,add:""});
	 
	 $("#comment").click(function(){
		    var content = $("#content").val();
		    var movieId=${movie.movieId};
			$.ajax({
				url:"${APP_PATH}/addcomment",
				data:{content:content,movieId:movieId},
				type:"POST",
				success:function(result){
					if(result.code==100){
						var obj = new Object();
						obj.img="static"+result.extend.user.userTitle;
						obj.replyName=result.extend.user.userName;
						obj.content=result.extend.content;
						obj.replyBody="";
						$(".comment-list").addCommentList({data:[],add:obj});
					}else{
						alert("评论失败"+result.extend.va_msg);
					}
				}
			});
	  });
})

$(".comment-operate-up").click(function(){
	  var messageId = $(this).parent().attr('id');
	  var n = $(this).children(".messagegood").text();
	  var p = $(this).children(".messagegood");
		$.ajax({
			url:"${APP_PATH}/goodcomment",
			data:{messageId:messageId},
			type:"POST",
			success:function(result){
				if(result.code==100){
					if("undefined"==n){
						p.text(1);
					}else{
						p.text(result.extend.good);
					}
				}else{
					alert("点赞失败"+result.extend.va_msg);
				}
			}
		});
});

$(".comment-operate-poke").click(function(){
	  var messageId = $(this).parent().attr('id');
	  var n = $(this).children(".messagebad").text();
	  var p = $(this).children(".messagebad");
		$.ajax({
			url:"${APP_PATH}/badcomment",
			data:{messageId:messageId},
			type:"POST",
			success:function(result){
				if(result.code==100){
					if("undefined"==n){
						p.text(1);
					}else{
						p.text(result.extend.bad);
					}
				}else{
					alert("操作失败"+result.extend.va_msg);
				}
			}
		});
});
	
$(".reply-all-btn").click(function(){
	var messageId = $(this).parent().attr('id');
	var parentEl = $(this).parent().parent().parent().parent();
	parentEl.find(".reply-list").html("");
	$.ajax({
		url:"${APP_PATH}/selectByMessageId",
		data:{messageId:messageId},
		type:"POST",
		success:function(data){
			
				for(var i in data){
					var p = parentEl;
					var obj = new Object();
					var userName = data[i].user.userName;
					obj.replyName=userName;
					
					obj.beReplyName = data[i].message.user.userName;
					
					obj.content=data[i].replyContent;
					obj.time = data[i].replyTime;
					
					p.find(".reply-list").append("<div class='reply'><div><a href='javascript:void(0)' class='replyname'>"+obj.replyName+"</a>:<a href='javascript:void(0)'>@"+obj.beReplyName+"</a><span>"+obj.content+"</span></div>"
							+ "<p><span>"+obj.time+"</span> <span class='reply-list-btn'>回复</span></p></div>");
				}
			
		}
	});
});	
</script>

</body>
</html>