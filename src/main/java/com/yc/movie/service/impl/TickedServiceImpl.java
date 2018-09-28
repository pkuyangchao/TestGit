package com.yc.movie.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.movie.bean.Ticked;
import com.yc.movie.bean.TickedExample;
import com.yc.movie.bean.TickedExample.Criteria;
import com.yc.movie.dao.TickedMapper;
import com.yc.movie.service.TickedService;

@Service
public class TickedServiceImpl implements TickedService {

	@Autowired
	TickedMapper tickedMapper;
	
	@Override
	public void insertTicked(Ticked ticked) {
		tickedMapper.insertSelective(ticked);
	}

	@Override
	public void deleteTicked(Integer tickedId) {
		tickedMapper.deleteByPrimaryKey(tickedId);
	}

	@Override
	public void deleteBatchTicked(List<Integer> ids) {
		TickedExample example = new TickedExample();
		Criteria criteria = example.createCriteria();
		criteria.andTickedIdIn(ids);
		tickedMapper.deleteByExample(example);
	}

	@Override
	public void updateTicked(Ticked ticked) {
		tickedMapper.updateByPrimaryKeySelective(ticked);
	}

	@Override
	public Ticked selectByTickedId(Integer tickedId) {
		return tickedMapper.selectByPrimaryKey(tickedId);
	}

	@Override
	public List<Ticked> selectByUserId(Integer userId) {
		TickedExample example = new TickedExample();
		Criteria criteria = example.createCriteria();
		criteria.andTickedUserEqualTo(userId);
		return tickedMapper.selectByExample(example);
	}

	@Override
	public List<Ticked> selectByTickedCode(String trade_no) {
		TickedExample example = new TickedExample();
		Criteria criteria = example.createCriteria();
		criteria.andTickedCodeEqualTo(trade_no);
		return tickedMapper.selectByExample(example);
	}

	@Override
	public List<Ticked> getAll() {
		return tickedMapper.selectByExample(null);
	}

	@Override
	public void deleteTickedByTrade(String trade_no) {
		TickedExample example = new TickedExample();
		Criteria criteria = example.createCriteria();
		criteria.andTickedCodeEqualTo(trade_no);
		tickedMapper.deleteByExample(example);
	}
	
}
