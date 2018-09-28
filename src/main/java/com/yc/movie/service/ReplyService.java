package com.yc.movie.service;

import java.util.List;

import com.yc.movie.bean.Reply;

public interface ReplyService {

	   List<Reply> getAll();
		
	    Reply selectByReplyId(Integer replyId);

		void deleteBatchReply(List<Integer> ids);

		void deleteReply(Integer id);
		
		List<Reply> selectByMessageId(Integer messageId);
		
		List<Reply> selectByUserId(Integer userId);
		
		void insertReply(Reply reply);

		void updateReply(Reply reply);
}
