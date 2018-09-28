package com.yc.movie.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.mahout.cf.taste.recommender.RecommendedItem;

import com.yc.movie.bean.Movie;

public interface MovieService {

	List<Movie> getAll();
	
	List<Movie> getTypeSearch(String key);
	
	List<Movie> getLanguageSearch(String key);
	
	List<Movie> getCountrySearch(String key);
	
	List<Movie> getActorSearch(String key);
	
	void insertMovie(Movie movie);
	
	void deleteMovie(Integer movieId);
	
	void deleteBatchMovies(List<Integer> ids);
	
	void movieSave(Movie movie);
	
	Movie selectByMovieId(Integer movieId);
	
	void updateMovie(Movie movie);
	
	List<Movie> sortByGrade();
	
	List<Movie> sortByHot();
	
	List<Movie> sortByTime();

	int selectByMovieTime(String i, String j,String movieType);

	List<Movie> getMoviesByMovieId(List<RecommendedItem> recommendation);

	List<Movie> selectByKeyword(String keyword);

	String findMoviesAjax(String name);
	
	List<Movie> orderBySelectKeyWord(String keyword,String clumn);

	List<Movie> selectMovieAllByKeywords(String typekey, String languagekey,String timekey, String countrykey, String actorkey,String order);
	
}
