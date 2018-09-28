package com.yc.movie.service;

import java.util.List;

import com.yc.movie.bean.BrowsingHistory;

public interface BrowsingHistoryService {

	List<BrowsingHistory> getAll();
	
	void deleteBrowsingHistory(Integer browsingId);
	
	void deleteBatchBrowsingHistorys(List<Integer> ids);

	void insertBrowsingHistory(BrowsingHistory browsingHistory);

	List<BrowsingHistory> selectByUserId(Integer userId);

}
