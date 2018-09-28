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
import com.yc.movie.bean.Cinema;
import com.yc.movie.bean.Hitmovie;
import com.yc.movie.bean.Movie;
import com.yc.movie.service.CinemaService;
import com.yc.movie.service.HitmovieService;
import com.yc.movie.utils.Msg;

@Controller
public class CinemaController {

	@Autowired
	CinemaService cinemaService;
	
	@Autowired
	HitmovieService hitmovieService;
	
	@RequestMapping("/cinemalist")
	public String userlist(@RequestParam(value = "pn", defaultValue = "1") Integer pn,
			Model model) {
		PageHelper.startPage(pn, 100);
		List<Cinema> users = cinemaService.getAll();
		PageInfo<Cinema> page = new PageInfo<Cinema>(users, 100);
		model.addAttribute("pageInfo", page);
		return "cinema/cinemalist";
	}
	
	@RequestMapping("/cinemaallpage")
	public String cinemaallpage(@RequestParam(value="area")String area,
			@RequestParam(value="name")String name,
			@RequestParam(value="hall")String hall,
			@RequestParam("hitmovieId")Integer hitmovieId,
			@RequestParam(value = "pn", defaultValue = "1") Integer pn,Model model) {
		PageHelper.startPage(pn, 7);
		List<Cinema> cinemas = cinemaService.selectCinameAllByKeywords(area,name,hall);
		Hitmovie hitmovie = hitmovieService.selectByMovieId(hitmovieId);
		System.out.println(cinemas.toString());
		PageInfo<Cinema> page = new PageInfo<Cinema>(cinemas, 7);	
		model.addAttribute("pageInfo", page);
		model.addAttribute("area", area);
		model.addAttribute("name", name);
		model.addAttribute("hall", hall);
		model.addAttribute("hitmovie",hitmovie);
		return "hitmovie/cinemaallpage";
	}
	
	@ResponseBody
	@RequestMapping(value="/cinema/{ids}",method=RequestMethod.DELETE)
	public Msg deleteUser(@PathVariable("ids")String ids){
		//批量删除
		if(ids.contains("-")){
			List<Integer> del_ids = new ArrayList<>();
			String[] str_ids = ids.split("-");
			//组装id的集合
			for (String string : str_ids) {
				del_ids.add(Integer.parseInt(string));
			}
			cinemaService.deleteBatchCinema(del_ids);
		}else{
			Integer id = Integer.parseInt(ids);
			cinemaService.deleteCinema(id);
		}
		return Msg.success();
	}
}
