package com.yc.movie.bean;

public class Message {
    private Integer messageId;

    private Integer userId;

    private Integer movieId;

    private String messageContent;

    private String messageTime;

    private Integer messageGood;

    private Integer messageBad;
    
    private User user;
    
    private Movie movie;
    
    public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Movie getMovie() {
		return movie;
	}

	public void setMovie(Movie movie) {
		this.movie = movie;
	}

	public Integer getMessageId() {
        return messageId;
    }

    public void setMessageId(Integer messageId) {
        this.messageId = messageId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getMovieId() {
        return movieId;
    }

    public void setMovieId(Integer movieId) {
        this.movieId = movieId;
    }

    public String getMessageContent() {
        return messageContent;
    }

    public void setMessageContent(String messageContent) {
        this.messageContent = messageContent == null ? null : messageContent.trim();
    }

    public String getMessageTime() {
        return messageTime;
    }

    public void setMessageTime(String messageTime) {
        this.messageTime = messageTime == null ? null : messageTime.trim();
    }

    public Integer getMessageGood() {
        return messageGood;
    }

    public void setMessageGood(Integer messageGood) {
        this.messageGood = messageGood;
    }

    public Integer getMessageBad() {
        return messageBad;
    }

    public void setMessageBad(Integer messageBad) {
        this.messageBad = messageBad;
    }
}