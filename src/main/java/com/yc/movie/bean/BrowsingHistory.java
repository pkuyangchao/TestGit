package com.yc.movie.bean;

public class BrowsingHistory {
    private Integer browsingId;

    private Integer userId;

    private Integer movieId;

    private String browsingTime;
    
    private Movie movie;
    
    private User user;
    
    public Movie getMovie() {
		return movie;
	}

	public void setMovie(Movie movie) {
		this.movie = movie;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Integer getBrowsingId() {
        return browsingId;
    }

    public void setBrowsingId(Integer browsingId) {
        this.browsingId = browsingId;
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

    public String getBrowsingTime() {
        return browsingTime;
    }

    public void setBrowsingTime(String browsingTime) {
        this.browsingTime = browsingTime == null ? null : browsingTime.trim();
    }
}