package com.yc.movie.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.movie.bean.Search;
import com.yc.movie.bean.SearchExample;
import com.yc.movie.bean.SearchExample.Criteria;
import com.yc.movie.dao.SearchMapper;
import com.yc.movie.service.SearchService;

@Service
public class SearchServiceImpl implements SearchService {

	@Autowired
	SearchMapper searchMapper;
	
	@Override
	public void insertSearch(Search search) {
		searchMapper.insertSelective(search);
	}

	@Override
	public void deleteSearchById(Integer searchId) {
		searchMapper.deleteByPrimaryKey(searchId);
	}

	@Override
	public void deleteBatchSearch(List<Integer> ids) {
		SearchExample example = new SearchExample();
		Criteria criteria = example.createCriteria();
		criteria.andSearchIdIn(ids);
		searchMapper.deleteByExample(example);
	}

	@Override
	public List<Search> getAll() {
		return searchMapper.selectByExample(null);
	}

	@Override
	public List<Search> sortByHot() {
		SearchExample example = new SearchExample();
		example.setOrderByClause("search_num DESC");
		return searchMapper.selectByExample(example);
	}

	@Override
	public Search selectByContent(String content) {
		SearchExample example = new SearchExample();
		Criteria criteria = example.createCriteria();
		criteria.andSearchContentEqualTo(content);
		List<Search> searchs = searchMapper.selectByExample(example);
		if (searchs.size()==0) {
			return null;
		}
		return searchs.get(0);
	}

	@Override
	public void updateSearch(Search s) {
		searchMapper.updateByPrimaryKeySelective(s);
	}

}
