package com.yc.movie.service;

import java.util.List;

import com.yc.movie.bean.Search;

public interface SearchService {

	void insertSearch(Search search);
	
	void deleteSearchById(Integer searchId);
	
	void deleteBatchSearch(List<Integer> ids);
	
	List<Search> getAll();
	
	List<Search> sortByHot();
	
	Search selectByContent(String content);

	void updateSearch(Search s);
}
