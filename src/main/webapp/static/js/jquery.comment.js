(function($){
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
			var content = $(this).prev().val();
			var userName = $(this).parent().prev().val();
			if(content != ""){
				var parentEl = $(this).parent().parent().parent().parent();
				var obj = new Object();
				obj.replyName=userName;
				if(el.parent().parent().hasClass("reply")){
					console.log("1111");
					obj.beReplyName = el.parent().parent().find("a:first").text();
				}else{
					console.log("2222");
					obj.beReplyName=parentEl.find("h3").text();
				}
				obj.content=content;
				obj.time = getNowDateFormat();
				var replyString = createReplyComment(obj);
				$(".replybox").remove();
				parentEl.find(".reply-list").append(replyString).find(".reply-list-btn:last").click(function(){alert("不能回复自己");});
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
	
	
	
})(jQuery);