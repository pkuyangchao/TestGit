package com.yc.movie.service;

import java.util.List;

import com.yc.movie.bean.Hitmovie;

public interface HitmovieService {

	List<Hitmovie> getAll();
	
	void insertMovie(Hitmovie hitmovie);
	
	void updateMovie(Hitmovie hitmovie);
	
	Hitmovie selectByMovieId(Integer hitmovieId);
}
