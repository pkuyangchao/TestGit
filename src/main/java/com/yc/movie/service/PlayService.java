package com.yc.movie.service;

import java.util.List;

import com.yc.movie.bean.Play;

public interface PlayService {

	List<Play> selectByMovieIdAndCinemaId(Integer cinemaId,Integer movieId);

	Play selectByPlayId(Integer playId);
}
