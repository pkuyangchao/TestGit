package com.yc.movie.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.movie.bean.Cinema;
import com.yc.movie.bean.CinemaExample;
import com.yc.movie.bean.Movie;
import com.yc.movie.bean.CinemaExample.Criteria;
import com.yc.movie.dao.CinemaMapper;
import com.yc.movie.service.CinemaService;

@Service
public class CinemaServiceImpl implements CinemaService{

	@Autowired
	CinemaMapper cinemaMapper;
	
	@Override
	public List<Cinema> getAll() {
		return cinemaMapper.selectByExample(null);
	}

	@Override
	public Cinema selectByCinemaId(Integer cinemaId) {
		return cinemaMapper.selectByPrimaryKey(cinemaId);
	}

	@Override
	public void deleteBatchCinema(List<Integer> ids) {
		CinemaExample example = new CinemaExample();
		Criteria criteria = example.createCriteria();
		criteria.andCinemaIdIn(ids);
		cinemaMapper.deleteByExample(example);
	}

	@Override
	public void deleteCinema(Integer id) {
		cinemaMapper.deleteByPrimaryKey(id);
	}

	@Override
	public List<Cinema> selectCinameAllByKeywords(String area, String name, String hall) {
		List<Cinema> cinemas = new ArrayList<Cinema>();
		if (area.equals("全部")) {
			area = "%";
		}
		if (name.equals("全部")) {
			name = "%";
		}
		if (hall.equals("全部")) {
			hall = "%";
		}
		cinemas = cinemaMapper.selectCinemaAllByKeywords("%"+area+"%","%"+name+"%","%"+hall+"%");
		return cinemas;
	}

}
