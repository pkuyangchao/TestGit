package com.yc.movie.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.movie.bean.Reply;
import com.yc.movie.bean.User;
import com.yc.movie.filter.SensitivewordFilter;
import com.yc.movie.service.ReplyService;
import com.yc.movie.utils.Constants;
import com.yc.movie.utils.Msg;

@Controller
public class ReplyController {

	@Autowired
	ReplyService replyService;
	
	@ResponseBody
	@RequestMapping("/addreply")
	public Msg addreply(@RequestParam("messageId")Integer messageId,@RequestParam("content")String content,HttpSession session) {
		User user = (User) session.getAttribute(Constants.USER_SESSION);
		if (null==user) {
			return Msg.fail();
		}else {
			
			SensitivewordFilter filter = new SensitivewordFilter();
			String newStr = filter.replaceSensitiveWord(content, 1, "*");
			
		Reply reply = new Reply();
		reply.setMessageId(messageId);
		reply.setReplyContent(newStr);
		reply.setUserId(user.getUserId());
		Date date = new Date();
		DateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		reply.setReplyTime(df.format(date));
		replyService.insertReply(reply);
		
		System.out.println("回复成功");
		return Msg.success().add("content", newStr);
		}
	}
	
	@ResponseBody
	@RequestMapping("/selectByMessageId")
	public List selectByMessageId(@RequestParam("messageId")Integer messageId,Model model) {
		return  replyService.selectByMessageId(messageId);
	}
}
