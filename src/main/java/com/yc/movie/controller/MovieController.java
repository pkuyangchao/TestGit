  package com.yc.movie.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
import com.yc.movie.bean.Language;
import com.yc.movie.bean.Movie;
import com.yc.movie.bean.MovieType;
import com.yc.movie.bean.News;
import com.yc.movie.bean.Search;
import com.yc.movie.service.LanguageService;
import com.yc.movie.service.MessageService;
import com.yc.movie.service.MovieService;
import com.yc.movie.service.MovieTypeService;
import com.yc.movie.service.NewsService;
import com.yc.movie.service.SearchService;
import com.yc.movie.utils.Msg;

@Controller
public class MovieController {

	@Autowired
	MovieService movieService;
	
	@Autowired
	MovieTypeService movieTypeService;
	
	@Autowired
	LanguageService languageService;
	
	@Autowired
	NewsService newsService;
	
	@Autowired
	SearchService searchService;
	
	
	@RequestMapping("/movielist")
	public String movielist(@RequestParam(value = "pn", defaultValue = "1") Integer pn,
			Model model) {
		PageHelper.startPage(pn, 1000);
		List<Movie> movies = movieService.getAll();
		PageInfo<Movie> page = new PageInfo<Movie>(movies, 1000);
		model.addAttribute("pageInfo", page);
		List<MovieType> movieTypes = movieTypeService.getAll();
		model.addAttribute("movieTypes", movieTypes);
		return "movie/movielist";
	}
	
	@RequestMapping("/movieadd")
	public String movieadd() {
		return "movie/movieadd";
	}
	
	@ResponseBody
	@RequestMapping("/moviesave")
	public Msg moviesave(Movie movie){
		movieService.movieSave(movie);
		return Msg.success();
	}
	
	@ResponseBody
	@RequestMapping(value="/movie/{ids}",method=RequestMethod.DELETE)
	public Msg deleteAdmin(@PathVariable("ids")String ids){
		//批量删除
		if(ids.contains("-")){
			List<Integer> del_ids = new ArrayList<>();
			String[] str_ids = ids.split("-");
			//组装id的集合
			for (String string : str_ids) {
				del_ids.add(Integer.parseInt(string));
			}
			movieService.deleteBatchMovies(del_ids);
		}else{
			Integer id = Integer.parseInt(ids);
			movieService.deleteMovie(id);
		}
		return Msg.success();
	}
	
	@RequestMapping("/movieupdate")
	public String movieupdate(@RequestParam("movieId")Integer movieId,Model model) {
		Movie movie = movieService.selectByMovieId(movieId);
		model.addAttribute("movie",movie);
		return "movie/movieupdate";
	}
	
	@ResponseBody
	@RequestMapping(value="/movie",method=RequestMethod.PUT)
	public Msg updateMovie(Movie movie,HttpServletRequest request){
		movieService.updateMovie(movie);
		return Msg.success();
	}
	
	@RequestMapping("/movieshow")
	public String movieShow(@RequestParam("movieId")Integer movieId,Model model) {
		Movie movie  = movieService.selectByMovieId(movieId);
		model.addAttribute("movie", movie);
		return "movie/movieshow";
	}
	
	@RequestMapping("/moviesingle")
	public String moviesingle(@RequestParam("movieId")Integer movieId,Model model) {
		Movie movie = movieService.selectByMovieId(movieId);
		model.addAttribute("movie", movie);
		List<Movie> movies = movieService.sortByHot();
		model.addAttribute("hotmovie", movies);
		List<Movie> movies2 = movieService.getTypeSearch(movie.getMovieType());
		model.addAttribute("typemovie", movies2);
		return "movie/moviesingle";
	}
	
	@RequestMapping("/movieall")
	public String movieall(
			@RequestParam(value="typekey",required=false)Integer typekey,
			@RequestParam(value="languagekey",required=false)Integer languagekey,
			@RequestParam(value="countrykey",required=false)String countrykey,
			@RequestParam(value="actorkey",required=false)String actorkey,
			@RequestParam(value = "pn", defaultValue = "1") Integer pn,Model model) {	
		
		if (null!=typekey) {
			MovieType movieType = movieTypeService.selectByMovieTypeId(typekey);
			model.addAttribute("typekey", movieType.getMovieTypeName());
		}else {
			model.addAttribute("typekey", "全部");
		}
		if (null!=languagekey) {
			model.addAttribute("languagekey", languagekey);
		}else {
			model.addAttribute("languagekey", "全部");
		}
		if (null!=countrykey) {
			model.addAttribute("countrykey", countrykey);
		}else {
			model.addAttribute("countrykey", "全部");
		}
		if (null!=actorkey) {
			model.addAttribute("actorkey", actorkey);
		}else {
			model.addAttribute("actorkey", "全部");
		}
		return "movie/movieall";
	}
	
	@RequestMapping("/movieallpage")
	public String movieallpage(@RequestParam(value="typekey")String typekey,
			@RequestParam(value="languagekey")String languagekey,
			@RequestParam(value="countrykey")String countrykey,
			@RequestParam(value="actorkey")String actorkey,
			@RequestParam(value="timekey")String timekey,
			@RequestParam(value="order",required=false)String order,
			@RequestParam(value = "pn", defaultValue = "1") Integer pn,Model model) {
		System.out.println(typekey+","+languagekey+","+timekey+","+countrykey+","+actorkey+","+order);
		if (null!=order) {
			PageHelper.startPage(pn, 24);
			List<Movie> movies = movieService.selectMovieAllByKeywords(typekey,languagekey,timekey,countrykey,actorkey,order);
			PageInfo<Movie> page = new PageInfo<Movie>(movies, 5);	
			model.addAttribute("pageInfo", page);
			model.addAttribute("typekey", typekey);
			model.addAttribute("languagekey", languagekey);
			model.addAttribute("countrykey", countrykey);
			model.addAttribute("actorkey", actorkey);
			model.addAttribute("timekey", timekey);
		}else {
			PageHelper.startPage(pn, 24);
			List<Movie> movies = movieService.selectMovieAllByKeywords(typekey,languagekey,timekey,countrykey,actorkey,null);
			PageInfo<Movie> page = new PageInfo<Movie>(movies, 5);	
			model.addAttribute("pageInfo", page);
			model.addAttribute("typekey", typekey);
			model.addAttribute("languagekey", languagekey);
			model.addAttribute("countrykey", countrykey);
			model.addAttribute("timekey", timekey);
			model.addAttribute("actorkey", actorkey);
		}
	
		return "movie/movieallpage";
	}
	
	@RequestMapping("/pictureShow")
	public String pictureShow(@RequestParam("movieId")Integer movieId,Model model) {
		Movie movie = movieService.selectByMovieId(movieId);
		model.addAttribute("movie", movie);
		return "movie/pictureshow";
	}
	
	@RequestMapping("/movietop")
	public String movietop(@RequestParam(value = "pn", defaultValue = "1") Integer pn,Model model) {
		PageHelper.startPage(pn, 100);
		List<Movie> topmovies = movieService.sortByGrade();
		List<Movie> hotmovies = movieService.sortByHot();
		PageInfo<Movie> page = new PageInfo<Movie>(topmovies, 5);
		model.addAttribute("pageInfo", page);
		model.addAttribute("hotmovies", hotmovies);
		List<Movie> movies1 = movieService.orderBySelectKeyWord("大陆", "movie_showtime");
		List<Movie> movies2 = movieService.orderBySelectKeyWord("美国", "movie_showtime");
		List<Movie> movies3 = movieService.orderBySelectKeyWord("香港", "movie_showtime");
		List<Movie> movies4 = movieService.orderBySelectKeyWord("其他", "movie_showtime");
		
		model.addAttribute("movies1", movies1);
		model.addAttribute("movies2", movies2);
		model.addAttribute("movies3", movies3);
		model.addAttribute("movies4", movies4);
		
		List<Movie> movies5 = movieService.orderBySelectKeyWord("大陆", "comment_count");
		List<Movie> movies6 = movieService.orderBySelectKeyWord("美国", "comment_count");
		List<Movie> movies7 = movieService.orderBySelectKeyWord("台湾", "comment_count");
		List<Movie> movies8 = movieService.orderBySelectKeyWord("其他", "comment_count");
		
		model.addAttribute("movies5", movies5);
		model.addAttribute("movies6", movies6);
		model.addAttribute("movies7", movies7);
		model.addAttribute("movies8", movies8);
		
		return "movie/movietop";
	}
	
	@RequestMapping("/moviesearch")
	public String movieSearch(@RequestParam("keyword")String keyword,Model model) {
		List<Movie> movies = movieService.selectByKeyword(keyword);
		List<News> news = newsService.selectByKeyword(keyword);
		Search s = searchService.selectByContent(keyword);
		if (null!=s) {
			Integer integer = s.getSearchNum();
			s.setSearchNum(integer+1);
			searchService.updateSearch(s);
		}else {
			Search search = new Search();
			search.setSearchNum(1);
			search.setSearchContent(keyword);
			searchService.insertSearch(search);
		}
		model.addAttribute("movies", movies);
		model.addAttribute("news", news);
		return "movie/moviesearch";
	}
	
	@ResponseBody
	@RequestMapping("/findMoviesAjax")
	public Msg findMoviesAjax(@RequestParam("name")String name) {
		String res = movieService.findMoviesAjax(name);
		return Msg.success().add("res", res);
	}
	
}
