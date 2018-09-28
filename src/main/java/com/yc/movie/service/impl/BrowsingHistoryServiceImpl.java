package com.yc.movie.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.movie.bean.BrowsingHistory;
import com.yc.movie.bean.BrowsingHistoryExample;
import com.yc.movie.bean.BrowsingHistoryExample.Criteria;
import com.yc.movie.dao.BrowsingHistoryMapper;
import com.yc.movie.service.BrowsingHistoryService;

@Service
public class BrowsingHistoryServiceImpl implements BrowsingHistoryService{

	@Autowired
	BrowsingHistoryMapper browsingHistoryMapper;
	
	@Override
	public List<BrowsingHistory> getAll() {
		return browsingHistoryMapper.selectByExample(null);
	}

	@Override
	public void deleteBrowsingHistory(Integer browsingId) {
		browsingHistoryMapper.deleteByPrimaryKey(browsingId);
	}

	@Override
	public void deleteBatchBrowsingHistorys(List<Integer> ids) {
		BrowsingHistoryExample example = new BrowsingHistoryExample();
		Criteria criteria = example.createCriteria();
		criteria.andBrowsingIdIn(ids);
		browsingHistoryMapper.deleteByExample(example);
	}

	@Override
	public void insertBrowsingHistory(BrowsingHistory browsingHistory) {
		browsingHistoryMapper.insertSelective(browsingHistory);
	}

	@Override
	public List<BrowsingHistory> selectByUserId(Integer userId) {
		BrowsingHistoryExample example = new BrowsingHistoryExample();
		Criteria criteria = example.createCriteria();
		criteria.andUserIdEqualTo(userId);
		return browsingHistoryMapper.selectByExample(example);
	}

}
