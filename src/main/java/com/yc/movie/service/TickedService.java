package com.yc.movie.service;

import java.util.List;

import com.yc.movie.bean.Ticked;

public interface TickedService {

	void insertTicked(Ticked ticked);
	
	void deleteTicked(Integer tickedId);
	
	void deleteBatchTicked(List<Integer> ids);
	
	void updateTicked(Ticked ticked);
	
	Ticked selectByTickedId(Integer tickedId);
	
	List<Ticked> selectByUserId(Integer userId);

	List<Ticked> selectByTickedCode(String trade_no);

	List<Ticked> getAll();

	void deleteTickedByTrade(String trade_no);

}
