package com.yc.movie.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.movie.bean.Cinemaseat;
import com.yc.movie.bean.CinemaseatExample;
import com.yc.movie.bean.CinemaseatExample.Criteria;
import com.yc.movie.dao.CinemaMapper;
import com.yc.movie.dao.CinemaseatMapper;
import com.yc.movie.service.CinemaseatService;

@Service
public class CinemaseatServiceImpl implements CinemaseatService {

	@Autowired
	CinemaseatMapper cinemaseatMapper;
	
	@Override
	public Cinemaseat selectByHallAndSeat(Integer seatRow, Integer seatColumn, Integer hallId) {
		CinemaseatExample example = new CinemaseatExample();
		Criteria criteria = example.createCriteria();
		criteria.andSeatRowEqualTo(seatRow).andSeatColumnEqualTo(seatColumn).andHallIdEqualTo(hallId);
		Cinemaseat cinemaseat = cinemaseatMapper.selectByExample(example).get(0);
		if (null!=cinemaseat) {
			return cinemaseat;
		}
		return null;
	}

	@Override
	public void updateCinemaseat(Cinemaseat cinemaseat) {
		cinemaseatMapper.updateByPrimaryKeySelective(cinemaseat);
	}

	@Override
	public List<Cinemaseat> selectByHall(Integer hallId) {
		CinemaseatExample example = new CinemaseatExample();
		Criteria criteria = example.createCriteria();
		criteria.andHallIdEqualTo(hallId);
		List<Cinemaseat> cinemaseats = cinemaseatMapper.selectByExample(example);
		if (null!=cinemaseats) {
			return cinemaseats;
		}
		return null;
	}

	@Override
	public Cinemaseat selectById(Integer seatId) {
		return cinemaseatMapper.selectByPrimaryKey(seatId);
	}

}
