package com.yc.movie.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.movie.bean.MovieType;
import com.yc.movie.dao.MovieTypeMapper;
import com.yc.movie.service.MovieTypeService;

@Service
public class MovieTypeServiceImpl implements MovieTypeService {

	@Autowired
	MovieTypeMapper movieTypeMapper;
	
	@Override
	public MovieType selectByMovieTypeId(Integer movieTypeId) {
		return movieTypeMapper.selectByPrimaryKey(movieTypeId);
	}

	@Override
	public List<MovieType> getAll() {
		return movieTypeMapper.selectByExample(null);
	}

}
