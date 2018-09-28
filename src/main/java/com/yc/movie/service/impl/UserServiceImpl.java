package com.yc.movie.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.movie.bean.User;
import com.yc.movie.bean.UserExample;
import com.yc.movie.bean.UserExample.Criteria;
import com.yc.movie.dao.UserMapper;
import com.yc.movie.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserMapper userMapper;

	@Override
	public User userlogin(String userEmail, String userPassword) {
		UserExample example = new UserExample();
		Criteria criteria = example.createCriteria();
		criteria.andUserEmailEqualTo(userEmail).andUserPasswordEqualTo(userPassword);
		List<User> users = userMapper.selectByExample(example);
		if (users.size()!=0) {
			return users.get(0);
		}
		return null;
	}

	@Override
	public List<User> getAll(String keyword) {
		UserExample example = new UserExample();
		Criteria criteria = example.createCriteria();
		if (keyword==null||keyword=="") {
			return userMapper.selectByExample(null);
		}
		criteria.andUserAccountLike(keyword);
		return userMapper.selectByExample(example);
	}

	@Override
	public User selectByUserId(Integer userId) {
		return userMapper.selectByPrimaryKey(userId);
	}

	@Override
	public void deleteUser(Integer userId) {
		userMapper.deleteByPrimaryKey(userId);
	}

	@Override
	public void deleteBatchUsers(List<Integer> ids) {
		UserExample example = new UserExample();
		Criteria criteria = example.createCriteria();
		criteria.andUserIdIn(ids);
		userMapper.deleteByExample(example);
	}

	@Override
	public void updateUser(User user) {
		userMapper.updateByPrimaryKeySelective(user);
	}

	@Override
	public void userSave(User user) {
		userMapper.insertSelective(user);
	}

	@Override
	public boolean selectByUserAccount(String userAccount) {
		UserExample example = new UserExample();
		Criteria criteria = example.createCriteria();
		criteria.andUserAccountEqualTo(userAccount);
		List<User> users = userMapper.selectByExample(example);
		if (0!=users.size()) {
			return true;
		}
		return false;
	}


}
