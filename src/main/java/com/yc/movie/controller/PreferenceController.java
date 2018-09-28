package com.yc.movie.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yc.movie.bean.Ratings;
import com.yc.movie.bean.User;
import com.yc.movie.service.RatingsService;
import com.yc.movie.utils.Msg;

@Controller
public class PreferenceController {
	
	@Autowired
	RatingsService ratingsService;

	@ResponseBody
	@RequestMapping("/preferences")
	public Msg preferences(@RequestParam("userId")Integer userId,@RequestParam("movieId")Integer movieId,
			@RequestParam("preference")Integer preference) {
		Ratings r= ratingsService.selectByUserIdMovieId(userId,movieId);
		if (null!=r) {
			r.setPreference(preference);
			ratingsService.updateRatings(r);
		}else {
		long time=System.currentTimeMillis()/1000;
	    String  ratingsTime=String.valueOf(time);
	    Ratings ratings = new Ratings();
	    ratings.setMovieId(movieId);
	    ratings.setUserId(userId);
	    ratings.setPreference(preference);
	    ratings.setRatingsTime(Integer.parseInt(ratingsTime));
	    ratingsService.insertRatings(ratings);
	    System.out.println(ratings.getMovieId()+","+ratings.getPreference()+","+ratings.getRatingsTime());
		}
		return Msg.success();
	}
	
	@ResponseBody
	@RequestMapping(value="/ratings/{ids}",method=RequestMethod.DELETE)
	public Msg deleteRatings(@PathVariable("ids")String ids){
		//批量删除
		if(ids.contains("-")){
			List<Integer> del_ids = new ArrayList<>();
			String[] str_ids = ids.split("-");
			//组装id的集合
			for (String string : str_ids) {
				del_ids.add(Integer.parseInt(string));
			}
			ratingsService.deleteBatchRatings(del_ids);
		}else{
			Integer id = Integer.parseInt(ids);
			ratingsService.deleteRatings(id);
		}
		return Msg.success();
	}
	
	@RequestMapping("/ratingslist")
	public String userlist(@RequestParam(value = "pn", defaultValue = "1") Integer pn,
			Model model) {
		PageHelper.startPage(pn, 100);
		List<Ratings> ratings = ratingsService.getAll();
		PageInfo<Ratings> page = new PageInfo<Ratings>(ratings, 100);
		model.addAttribute("pageInfo", page);
		return "ratings/ratingslist";
	}
	
	@RequestMapping("/userratings")
	public Msg selectByUserId(@RequestParam("userId")Integer userId) {
		return Msg.success();
	}
}
