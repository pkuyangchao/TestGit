package com.yc.movie.service;

import java.util.List;

import com.yc.movie.bean.Message;

public interface MessageService {

    List<Message> getAll();
	
    Message selectByMessageId(Integer messageId);

	void deleteBatchMessage(List<Integer> ids);

	void deleteMessage(Integer id);
	
	List<Message> selectByMovieId(Integer movieId);
	
	List<Message> selectByUserId(Integer userId);
	
	void insertMessage(Message message);

	void updateMessage(Message message);
}
