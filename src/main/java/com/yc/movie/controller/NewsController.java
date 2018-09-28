package com.yc.movie.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.movie.bean.News;
import com.yc.movie.service.NewsService;
import com.yc.movie.utils.Msg;

@Controller
public class NewsController {
	
	@Autowired
	NewsService newsService;
	
	@RequestMapping("/newslist")
	public String newslist(Model model) {
		List<News> list = newsService.getAll();
		model.addAttribute("newlist", list);
		return "news/newslist";
	}
	
	@RequestMapping("/newsadd")
	public String newsadd() {
		return "news/newsadd";
	}
	
	@ResponseBody
	@RequestMapping("/newssave")
	public Msg newssave(News news){
		System.out.println("........");
		news.setNewsState("0");
		Date date = new Date();
		DateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		news.setNewsTime(df.format(date));
		newsService.insertNews(news);
		System.out.println("........");
		return Msg.success();
	}
	
	@ResponseBody
	@RequestMapping(value="/news",method=RequestMethod.PUT)
	public Msg updateNews(News news,HttpServletRequest request){
		newsService.updateNews(news);
		return Msg.success();
	}
	
	@ResponseBody
	@RequestMapping(value="/news/{ids}",method=RequestMethod.DELETE)
	public Msg deleteNews(@PathVariable("ids")String ids){
		//批量删除
		if(ids.contains("-")){
			List<Integer> del_ids = new ArrayList<>();
			String[] str_ids = ids.split("-");
			//组装id的集合
			for (String string : str_ids) {
				del_ids.add(Integer.parseInt(string));
			}
			newsService.deleteBatchNews(del_ids);
		}else{
			Integer id = Integer.parseInt(ids);
			newsService.deleteNews(id);
		}
		return Msg.success();
	}
	
	@RequestMapping("/newshome")
	public String newshome() {
		return "news/newshome";
	}
	
}
