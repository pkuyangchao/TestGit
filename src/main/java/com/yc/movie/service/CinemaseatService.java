package com.yc.movie.service;

import java.util.List;

import com.yc.movie.bean.Cinemaseat;

public interface CinemaseatService {

	Cinemaseat selectByHallAndSeat(Integer seatRow,Integer seatColumn,Integer hallId);
	
	void updateCinemaseat(Cinemaseat cinemaseat);

	List<Cinemaseat> selectByHall(Integer hallId);
	
	Cinemaseat selectById(Integer seatId);
}
