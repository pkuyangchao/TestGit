package com.yc.movie.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.movie.bean.Play;
import com.yc.movie.bean.PlayExample;
import com.yc.movie.bean.PlayExample.Criteria;
import com.yc.movie.dao.PlayMapper;
import com.yc.movie.service.PlayService;

@Service
public class PlayServiceImpl implements PlayService {

	@Autowired
	PlayMapper playMapper;
	
	@Override
	public List<Play> selectByMovieIdAndCinemaId(Integer cinemaId, Integer movieId) {
		PlayExample example = new PlayExample();
		Criteria criteria = example.createCriteria();
		criteria.andCinemaIdEqualTo(cinemaId).andPlayMovieEqualTo(movieId);
		return playMapper.selectByExample(example);
	}

	@Override
	public Play selectByPlayId(Integer playId) {
		return playMapper.selectByPrimaryKey(playId);
	}

}
