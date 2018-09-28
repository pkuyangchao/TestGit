package com.yc.movie.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.movie.bean.Message;
import com.yc.movie.bean.Movie;
import com.yc.movie.bean.User;
import com.yc.movie.filter.SensitivewordFilter;
import com.yc.movie.service.MessageService;
import com.yc.movie.service.MovieService;
import com.yc.movie.service.ReplyService;
import com.yc.movie.utils.Constants;
import com.yc.movie.utils.Msg;

@Controller
public class MessageController {

	@Autowired
	MessageService messageService;
	
	@Autowired
	MovieService movieService;
	
	@Autowired
	ReplyService replyService;
	
	@RequestMapping("/commentindex")
	public String commentindex(Integer movieId,Model model){
		List<Message> messages = messageService.selectByMovieId(movieId);
		model.addAttribute("messages", messages);
		Movie movie = movieService.selectByMovieId(movieId);
		model.addAttribute("movie", movie);
		
		return "movie/moviecomment";
	}
	
	@ResponseBody
	@RequestMapping("/addcomment")
	public Msg addcomment(@RequestParam("content")String content,@RequestParam("movieId")Integer movieId,
			HttpSession session) {
		User user = (User) session.getAttribute(Constants.USER_SESSION);
		if (null!=user) {
			
			SensitivewordFilter filter = new SensitivewordFilter();
			String newStr = filter.replaceSensitiveWord(content, 1, "*");
			
			Message message = new Message();
			Date date = new Date();
			DateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			message.setMessageTime(df.format(date));
			message.setMovieId(movieId);
			
			message.setMessageContent(newStr);
			message.setUserId(user.getUserId());
			messageService.insertMessage(message);
			return Msg.success().add("user", user).add("content", newStr);
		}
		return Msg.fail().add("va_msg", "请先登录");
	}
	
	@ResponseBody
	@RequestMapping("/goodcomment")
	public Msg goodcomment(@RequestParam("messageId")Integer messageId,HttpSession session) 
	{
		User user = (User) session.getAttribute(Constants.USER_SESSION);
		if (null!=user) {
			Message message = messageService.selectByMessageId(messageId);
			Integer nInteger = message.getMessageGood();
			if (null!=nInteger) {
				message.setMessageGood(nInteger+1);
			}else {
				message.setMessageGood(1);
			}
			messageService.updateMessage(message);
			return Msg.success().add("good", message.getMessageGood());
		}
		return Msg.fail();
	}
	
	@ResponseBody
	@RequestMapping("/badcomment")
	public Msg badcomment(@RequestParam("messageId")Integer messageId,HttpSession session) 
	{
		User user = (User) session.getAttribute(Constants.USER_SESSION);
		if (null!=user) {
			Message message = messageService.selectByMessageId(messageId);
			Integer nInteger = message.getMessageBad();
			if (null!=nInteger) {
				message.setMessageBad(nInteger+1);
			}else {
				message.setMessageBad(1);
			}
			messageService.updateMessage(message);
			return Msg.success().add("bad", message.getMessageBad());
		}
		return Msg.fail();
	}
	
	@RequestMapping("/messagelist")
	public String messagelist(Model model) {
		List<Message> messages = messageService.getAll();
		model.addAttribute("messagelist", messages);
		model.addAttribute("total", messages.size());
		return "admin/messagelist";
	}
	
	@ResponseBody
	@RequestMapping(value="/message/{ids}",method=RequestMethod.DELETE)
	public Msg deleteMessage(@PathVariable("ids")String ids){
		//批量删除
		if(ids.contains("-")){
			List<Integer> del_ids = new ArrayList<>();
			String[] str_ids = ids.split("-");
			//组装id的集合
			for (String string : str_ids) {
				del_ids.add(Integer.parseInt(string));
			}
			messageService.deleteBatchMessage(del_ids);
		}else{
			Integer id = Integer.parseInt(ids);
			messageService.deleteMessage(id);
		}
		return Msg.success().add("total", messageService.getAll().size());
	}
}
