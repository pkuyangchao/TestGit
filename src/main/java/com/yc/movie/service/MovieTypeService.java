package com.yc.movie.service;

import java.util.List;

import com.yc.movie.bean.MovieType;

public interface MovieTypeService {

	MovieType selectByMovieTypeId(Integer movieTypeId);
	
	List<MovieType> getAll();
}
