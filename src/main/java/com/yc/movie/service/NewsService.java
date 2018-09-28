package com.yc.movie.service;

import java.util.List;

import com.yc.movie.bean.News;

public interface NewsService {

	List<News> getAll();
	
	void insertNews(News news);
	
	void deleteNews(Integer newsId);
	
	void deleteBatchNews(List<Integer> ids);
	
	News selectByNewsId(Integer newsId);
	
	void updateNews(News news);

	List<News> selectByKeyword(String keyword);
}
