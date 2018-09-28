package com.yc.movie.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.movie.bean.Language;
import com.yc.movie.dao.LanguageMapper;
import com.yc.movie.service.LanguageService;

@Service
public class LanguageServiceImpl implements LanguageService{

	@Autowired
	LanguageMapper languageMapper;
	
	@Override
	public Language selectByLanguageId(Integer languageId) {
		return languageMapper.selectByPrimaryKey(languageId);
	}

}
