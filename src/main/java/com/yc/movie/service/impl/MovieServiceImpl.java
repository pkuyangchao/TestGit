package com.yc.movie.service.impl;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.movie.bean.Movie;
import com.yc.movie.bean.MovieExample;
import com.yc.movie.bean.MovieExample.Criteria;
import com.yc.movie.dao.MovieMapper;
import com.yc.movie.service.MovieService;

@Service
public class MovieServiceImpl implements MovieService {

	@Autowired
	MovieMapper movieMapper;
	
	@Override
	public List<Movie> getAll() {
		return movieMapper.selectByExampleWithBLOBs(null);
	}

	@Override
	public void insertMovie(Movie movie) {
		movieMapper.insertSelective(movie);
	}

	@Override
	public void deleteMovie(Integer movieId) {
		movieMapper.deleteByPrimaryKey(movieId);
	}

	@Override
	public void deleteBatchMovies(List<Integer> ids) {
		MovieExample example = new MovieExample();
		Criteria criteria = example.createCriteria();
		criteria.andMovieIdIn(ids);
		movieMapper.deleteByExample(example);
	}

	@Override
	public void movieSave(Movie movie) {
		movieMapper.insertSelective(movie);
	}

	@Override
	public Movie selectByMovieId(Integer movieId) {
		return movieMapper.selectByPrimaryKey(movieId);
	}

	@Override
	public void updateMovie(Movie movie) {
		movieMapper.updateByPrimaryKeyWithBLOBs(movie);
	}

	@Override
	public List<Movie> sortByGrade() {
		MovieExample example = new MovieExample();
		example.setOrderByClause("movie_grade DESC");
		List<Movie> movies = movieMapper.selectByExampleWithBLOBs(example);
		if (movies.size()==0) {
			return null;
		}else {
			return movies;
		}
	}

	@Override
	public List<Movie> sortByHot() {
		MovieExample example = new MovieExample();
		example.setOrderByClause("comment_count DESC");
		List<Movie> movies = movieMapper.selectByExampleWithBLOBs(example);
		if (movies.size()==0) {
			return null;
		}else {
			return movies;
		}
	}

	@Override
	public List<Movie> sortByTime() {
		MovieExample example = new MovieExample();
		example.setOrderByClause("movie_showtime DESC");
		List<Movie> movies = movieMapper.selectByExampleWithBLOBs(example);
		if (movies.size()==0) {
			return null;
		}else {
			return movies;
		}
	}

	@Override
	public List<Movie> getTypeSearch(String key) {
		MovieExample example = new MovieExample();
		Criteria criteria = example.createCriteria();
		criteria.andMovieTypeLike("%"+key+"%");
		List<Movie> movies = movieMapper.selectByExampleWithBLOBs(example);
		return movies;
	}

	@Override
	public List<Movie> getLanguageSearch(String key) {
		MovieExample example = new MovieExample();
		Criteria criteria = example.createCriteria();
		criteria.andMovieLanguageLike("%"+key+"%");
		List<Movie> movies = movieMapper.selectByExampleWithBLOBs(example);
		return movies;
	}

	@Override
	public List<Movie> getCountrySearch(String key) {
		MovieExample example = new MovieExample();
		Criteria criteria = example.createCriteria();
		criteria.andMovieCountryLike("%"+key+"%");
		List<Movie> movies = movieMapper.selectByExampleWithBLOBs(example);
		return movies;
	}

	@Override
	public List<Movie> getActorSearch(String key) {
		MovieExample example = new MovieExample();
		Criteria criteria = example.createCriteria();
		criteria.andActorNameLike("%"+key+"%");
		List<Movie> movies = movieMapper.selectByExampleWithBLOBs(example);
		if (movies.size()==0) {
			return null;
		}else {
			return movies;
		}
	}

	@Override
	public int selectByMovieTime(String i, String j,String movieType) {
		MovieExample example = new MovieExample();
		Criteria criteria = example.createCriteria();
		criteria.andMovieShowtimeBetween(i, j).andMovieTypeLike("%"+movieType+"%");
		List<Movie> movies = movieMapper.selectByExample(example);
		return movies.size();
	}

	@Override
	public List<Movie> getMoviesByMovieId(List<RecommendedItem> recommendation) {
		if (null==recommendation) {
			return null;
		}
		List<Movie> movies = new ArrayList<Movie>();
		for(int i=0;i<recommendation.size();i++){
			Movie movie  = movieMapper.selectByPrimaryKey(Integer.parseInt(String.valueOf(recommendation.get(i).getItemID())));
			movies.add(movie);
		}
		return movies;
	}

	@Override
	public List<Movie> selectByKeyword(String keyword) {
		List<Movie> movies = movieMapper.selectByKeyWordWithBLOBs("%"+keyword+"%");
		if (movies.size()==0) {
			return null;
		}else {
			return movies;
		}
	}

	@Override
	public String findMoviesAjax(String name) {
		//List<Movie> movies = movieMapper.selectByKeyWordWithBLOBs("%"+name+"%");
		MovieExample example = new MovieExample();
		Criteria criteria = example.createCriteria();
		criteria.andMovieNameLike("%"+name+"%");
		List<Movie> movies = movieMapper.selectByExampleWithBLOBs(example);
		String res="";
		  for (int i=0;i<movies.size();i++) {
		   if(i>0){
		    res+=movies.get(i).getMovieName()+",";
		   }else{
		    res+=movies.get(i).getMovieName();
		   }
		  }
		return res;
	}

	@Override
	public List<Movie> orderBySelectKeyWord(String keyword, String column) {
		List<Movie> movies = new ArrayList<Movie>();
		if (keyword.equals("其他")) {
			MovieExample example = new MovieExample();
			example.setOrderByClause(column+" DESC");
			movies = movieMapper.selectByExampleWithBLOBs(example);
		}else {
			if (column.equals("movie_showtime")) {
				movies = movieMapper.orderShowtimeBySelectKeyWord("%"+keyword+"%");
			}else if (column.equals("movie_grade")) {
				movies = movieMapper.orderGradeBySelectKeyWord("%"+keyword+"%");
			}else {
				movies = movieMapper.orderCommentBySelectKeyWord("%"+keyword+"%");
			}
		}
		if (movies.size()==0) {
			return null;
		}else {
			return movies;
		}
	}

	@Override
	public List<Movie> selectMovieAllByKeywords(String typekey, String languagekey, String timekey,String countrykey,
			String actorkey,String order) {
		List<Movie> movies = new ArrayList<Movie>();
		String time1 = "";
		String time2 = "";
		if (typekey.equals("全部")) {
			typekey = "%";
		}
		if (languagekey.equals("全部")) {
			languagekey = "%";
		}
		if (countrykey.equals("全部")) {
			countrykey = "%";
		}
		if (actorkey.equals("全部")) {
			actorkey = "%";
		}
		if(timekey.contains("-")){
			String[] str_ids = timekey.split("-");
			time1 = str_ids[0];
			time2 = str_ids[1];
			System.out.println("时间参数"+time1+","+time2);
		}else if (timekey.equals("全部")) {
			time1 = "1900";
			time2 = "2019";
		}else if (timekey.equals("其他")) {
			time1 = "1900";
			time2 = "1971";
		}else{
			time1 = timekey;
			Integer integer = Integer.parseInt(timekey);
			integer = integer+1;
			time2 = Integer.toString(integer);
		}
		if (null!=order) {
			if (order.equals("movie_showtime")) {
				movies = movieMapper.selectMovieAllByKeywordsOrderShowtime("%"+typekey+"%", "%"+languagekey+"%",time1,time2, "%"+countrykey+"%", "%"+actorkey+"%");
			}else if (order.equals("movie_grade")) {
				movies = movieMapper.selectMovieAllByKeywordsOrderGrade("%"+typekey+"%", "%"+languagekey+"%", time1,time2,"%"+countrykey+"%", "%"+actorkey+"%");	
			}else if (order.equals("comment_count")) {
				movies = movieMapper.selectMovieAllByKeywordsOrderComment("%"+typekey+"%", "%"+languagekey+"%",time1,time2, "%"+countrykey+"%", "%"+actorkey+"%");
			}else {
				movies = movieMapper.selectMovieAllByKeywords("%"+typekey+"%","%"+languagekey+"%",time1,time2,"%"+countrykey+"%","%"+actorkey+"%");
			}
		}else {
		movies = movieMapper.selectMovieAllByKeywords("%"+typekey+"%","%"+languagekey+"%",time1,time2,"%"+countrykey+"%","%"+actorkey+"%");
		}
		return movies;
	}
	
}
