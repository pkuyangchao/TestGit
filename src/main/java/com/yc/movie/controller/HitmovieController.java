package com.yc.movie.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.movie.bean.Hitmovie;
import com.yc.movie.bean.Movie;
import com.yc.movie.service.HitmovieService;
import com.yc.movie.service.MovieService;

@Controller
public class HitmovieController {

	@Autowired 
	HitmovieService hitmovieService;
	
	@Autowired
	MovieService movieService;
	
	@RequestMapping("/hitmovie")
	public String hitmovie(Model model) {
		List<Hitmovie> hitmovies = hitmovieService.getAll();
		List<Movie> movies = movieService.selectByKeyword("动作");
		List<Movie> movies2 = movieService.sortByGrade();
		model.addAttribute("hitmovie", hitmovies);
		model.addAttribute("yugao", movies);
		model.addAttribute("hotmovie", movies2);
		return "hitmovie/hitmovie";
	}
	
}
