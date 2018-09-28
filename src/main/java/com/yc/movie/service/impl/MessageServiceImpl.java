package com.yc.movie.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.movie.bean.Message;
import com.yc.movie.bean.MessageExample;
import com.yc.movie.bean.MessageExample.Criteria;
import com.yc.movie.dao.MessageMapper;
import com.yc.movie.service.MessageService;

@Service
public class MessageServiceImpl implements MessageService{

	@Autowired
	MessageMapper messageMapper;
	
	@Override
	public List<Message> getAll() {
		return messageMapper.selectByExample(null);
	}

	@Override
	public Message selectByMessageId(Integer messageId) {
		return messageMapper.selectByPrimaryKey(messageId);
	}

	@Override
	public void deleteBatchMessage(List<Integer> ids) {
		MessageExample example = new MessageExample();
		Criteria criteria = example.createCriteria();
		criteria.andMessageBadIn(ids);
		messageMapper.deleteByExample(example);
	}

	@Override
	public void deleteMessage(Integer id) {
		messageMapper.deleteByPrimaryKey(id);
	}

	@Override
	public List<Message> selectByMovieId(Integer movieId) {
		MessageExample example = new MessageExample();
		Criteria criteria = example.createCriteria();
		criteria.andMovieIdEqualTo(movieId);
		return messageMapper.selectByExample(example);
	}

	@Override
	public List<Message> selectByUserId(Integer userId) {
		MessageExample example = new MessageExample();
		Criteria criteria = example.createCriteria();
		criteria.andUserIdEqualTo(userId);
		return messageMapper.selectByExample(example);
	}

	@Override
	public void insertMessage(Message message) {
		messageMapper.insertSelective(message);
	}

	@Override
	public void updateMessage(Message message) {
		messageMapper.updateByPrimaryKeySelective(message);
	}

}
