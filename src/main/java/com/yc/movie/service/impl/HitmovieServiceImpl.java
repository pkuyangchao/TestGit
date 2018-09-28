package com.yc.movie.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.movie.bean.Hitmovie;
import com.yc.movie.bean.HitmovieExample;
import com.yc.movie.bean.HitmovieExample.Criteria;
import com.yc.movie.dao.HitmovieMapper;
import com.yc.movie.service.HitmovieService;

@Service
public class HitmovieServiceImpl implements HitmovieService {

	@Autowired
	HitmovieMapper hitmovieMapper;
	
	@Override
	public List<Hitmovie> getAll() {
		return hitmovieMapper.selectByExampleWithBLOBs(null);
	}

	@Override
	public void insertMovie(Hitmovie hitmovie) {
		hitmovieMapper.insertSelective(hitmovie);
	}

	@Override
	public void updateMovie(Hitmovie hitmovie) {
		hitmovieMapper.updateByPrimaryKeySelective(hitmovie);
	}

	@Override
	public Hitmovie selectByMovieId(Integer hitmovieId) {
		HitmovieExample example = new HitmovieExample();
		Criteria criteria = example.createCriteria();
		criteria.andMovieIdEqualTo(hitmovieId);
		return hitmovieMapper.selectByExampleWithBLOBs(example).get(0);
	}

}
