package com.yc.movie.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.movie.bean.Ratings;
import com.yc.movie.bean.RatingsExample;
import com.yc.movie.bean.RatingsExample.Criteria;
import com.yc.movie.dao.RatingsMapper;
import com.yc.movie.service.RatingsService;

@Service
public class RatingsServiceImpl implements RatingsService {

	@Autowired
	RatingsMapper ratingsMapper;
	
	@Override
	public List<Ratings> getAll() {
		return ratingsMapper.selectByExample(null);
	}

	@Override
	public void insertRatings(Ratings ratings) {
		ratingsMapper.insertSelective(ratings);
	}

	@Override
	public void deleteRatings(Integer ratingsId) {
		ratingsMapper.deleteByPrimaryKey(ratingsId);
	}

	@Override
	public void deleteBatchRatings(List<Integer> ids) {
		RatingsExample example = new RatingsExample();
		Criteria criteria = example.createCriteria();
		criteria.andRatingsIdIn(ids);
		ratingsMapper.deleteByExample(example);
	}

	@Override
	public List<Ratings> selectByUserId(Integer userId) {
		RatingsExample example = new RatingsExample();
		Criteria criteria = example.createCriteria();
		criteria.andUserIdEqualTo(userId);
		List<Ratings> ratings = ratingsMapper.selectByExample(example);
		if (ratings.size()>0) {
			return ratings;
		}
		return null;
	}

	@Override
	public Ratings selectByUserIdMovieId(Integer userId, Integer movieId) {
		RatingsExample example = new RatingsExample();
		Criteria criteria = example.createCriteria();
		criteria.andUserIdEqualTo(userId).andMovieIdEqualTo(movieId);
		List<Ratings> r = ratingsMapper.selectByExample(example);
		if (r.size()==0) {
			return ratingsMapper.selectByExample(example).get(0);
		}
		return null;
	}

	@Override
	public void updateRatings(Ratings r) {
		ratingsMapper.updateByPrimaryKeySelective(r);
	}

}
