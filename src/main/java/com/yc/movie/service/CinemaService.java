package com.yc.movie.service;

import java.util.List;

import com.yc.movie.bean.Cinema;

public interface CinemaService {

	List<Cinema> getAll();
	
	Cinema selectByCinemaId(Integer cinemaId);

	void deleteBatchCinema(List<Integer> ids);

	void deleteCinema(Integer id);

	List<Cinema> selectCinameAllByKeywords(String area, String name, String hall);

}
