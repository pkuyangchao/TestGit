package com.yc.movie.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.movie.bean.News;
import com.yc.movie.bean.NewsExample;
import com.yc.movie.bean.NewsExample.Criteria;
import com.yc.movie.dao.NewsMapper;
import com.yc.movie.service.NewsService;

@Service
public class NewsServiceImpl implements NewsService {

	@Autowired
	NewsMapper newsMapper;
	
	@Override
	public List<News> getAll() {
		return newsMapper.selectByExampleWithBLOBs(null);
	}

	@Override
	public void insertNews(News news) {
		newsMapper.insertSelective(news);
	}

	@Override
	public void deleteNews(Integer newsId) {
		newsMapper.deleteByPrimaryKey(newsId);
	}

	@Override
	public void deleteBatchNews(List<Integer> ids) {
		NewsExample example = new NewsExample();
		Criteria criteria = example.createCriteria();
		criteria.andNewsIdIn(ids);
		newsMapper.deleteByExample(example);
	}

	@Override
	public News selectByNewsId(Integer newsId) {
		return newsMapper.selectByPrimaryKey(newsId);
	}

	@Override
	public void updateNews(News news) {
		newsMapper.updateByPrimaryKeySelective(news);
	}

	@Override
	public List<News> selectByKeyword(String keyword) {
		NewsExample example = new NewsExample();
		Criteria criteria = example.createCriteria();
		criteria.andNewsTitleLike("%"+keyword+"%");
		return newsMapper.selectByExampleWithBLOBs(example);
	}

}
