package com.yc.movie.service;

import java.util.List;

import com.yc.movie.bean.User;

public interface UserService {
	
	User userlogin(String userEmail,String userPassword);
	
	List<User> getAll(String keyword);
	
	User selectByUserId(Integer userId);
	
	void deleteUser(Integer userId);
	
	void deleteBatchUsers(List<Integer> ids);
	
	void updateUser(User user);
	
	void userSave(User user);

	boolean selectByUserAccount(String userAccount);
	
}
