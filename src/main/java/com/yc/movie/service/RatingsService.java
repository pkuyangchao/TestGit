package com.yc.movie.service;

import java.util.List;

import com.yc.movie.bean.Ratings;

public interface RatingsService {
	
	List<Ratings> getAll();
	
	void insertRatings(Ratings ratings);
	
	void deleteRatings(Integer ratingsId);
	
	void deleteBatchRatings(List<Integer> ids);
	
	List<Ratings> selectByUserId(Integer userId);

	Ratings selectByUserIdMovieId(Integer userId, Integer movieId);

	void updateRatings(Ratings r);
}
