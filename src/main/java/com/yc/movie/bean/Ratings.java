package com.yc.movie.bean;

public class Ratings {
    private Integer ratingsId;

    private Integer userId;

    private Integer movieId;

    private Integer preference;

    private Integer ratingsTime;

    private Movie movie;
    
    
    public Movie getMovie() {
		return movie;
	}

	public void setMovie(Movie movie) {
		this.movie = movie;
	}

	public Integer getRatingsId() {
        return ratingsId;
    }

    public void setRatingsId(Integer ratingsId) {
        this.ratingsId = ratingsId;
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

    public Integer getPreference() {
        return preference;
    }

    public void setPreference(Integer preference) {
        this.preference = preference;
    }

    public Integer getRatingsTime() {
        return ratingsTime;
    }

    public void setRatingsTime(Integer ratingsTime) {
        this.ratingsTime = ratingsTime;
    }
}