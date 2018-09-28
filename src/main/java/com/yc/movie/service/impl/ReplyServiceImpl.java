package com.yc.movie.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.movie.bean.Reply;
import com.yc.movie.bean.ReplyExample;
import com.yc.movie.bean.ReplyExample.Criteria;
import com.yc.movie.dao.ReplyMapper;
import com.yc.movie.service.ReplyService;

@Service
public class ReplyServiceImpl implements ReplyService{

	@Autowired
	ReplyMapper replyMapper;
	
	@Override
	public List<Reply> getAll() {
		return replyMapper.selectByExample(null);
	}

	@Override
	public Reply selectByReplyId(Integer replyId) {
		return replyMapper.selectByPrimaryKey(replyId);
	}

	@Override
	public void deleteBatchReply(List<Integer> ids) {
		ReplyExample example = new ReplyExample();
		Criteria criteria = example.createCriteria();
		criteria.andReplyIdIn(ids);
		replyMapper.deleteByExample(example);
	}

	@Override
	public void deleteReply(Integer id) {
		replyMapper.deleteByPrimaryKey(id);
	}

	@Override
	public List<Reply> selectByMessageId(Integer messageId) {
		ReplyExample example = new ReplyExample();
		Criteria criteria = example.createCriteria();
		criteria.andMessageIdEqualTo(messageId);
		return replyMapper.selectByExample(example);
	}

	@Override
	public List<Reply> selectByUserId(Integer userId) {
		ReplyExample example = new ReplyExample();
		Criteria criteria = example.createCriteria();
		criteria.andUserIdEqualTo(userId);
		return replyMapper.selectByExample(example);
	}

	@Override
	public void insertReply(Reply reply) {
		replyMapper.insertSelective(reply);
	}

	@Override
	public void updateReply(Reply reply) {
		replyMapper.updateByPrimaryKeySelective(reply);
	}

}
