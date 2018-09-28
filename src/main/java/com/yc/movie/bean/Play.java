package com.yc.movie.bean;

public class Play {
    private Integer playId;

    private Integer playMovie;

    private String playTime;

    private Float playPrice;

    private String playEndtime;

    private Integer hallId;

    private Integer cinemaId;

    private Cinema cinema;
    
    private Cinemahall cinemahall;
    
    private Hitmovie hitmovie;
    
    public Hitmovie getHitmovie() {
		return hitmovie;
	}

	public void setHitmovie(Hitmovie hitmovie) {
		this.hitmovie = hitmovie;
	}

	public Cinemahall getCinemahall() {
		return cinemahall;
	}

	public void setCinemahall(Cinemahall cinemahall) {
		this.cinemahall = cinemahall;
	}

	public Cinema getCinema() {
		return cinema;
	}

	public void setCinema(Cinema cinema) {
		this.cinema = cinema;
	}

	public Integer getPlayId() {
        return playId;
    }

    public void setPlayId(Integer playId) {
        this.playId = playId;
    }

    public Integer getPlayMovie() {
        return playMovie;
    }

    public void setPlayMovie(Integer playMovie) {
        this.playMovie = playMovie;
    }

    public String getPlayTime() {
        return playTime;
    }

    public void setPlayTime(String playTime) {
        this.playTime = playTime == null ? null : playTime.trim();
    }

    public Float getPlayPrice() {
        return playPrice;
    }

    public void setPlayPrice(Float playPrice) {
        this.playPrice = playPrice;
    }

    public String getPlayEndtime() {
        return playEndtime;
    }

    public void setPlayEndtime(String playEndtime) {
        this.playEndtime = playEndtime == null ? null : playEndtime.trim();
    }

    public Integer getHallId() {
        return hallId;
    }

    public void setHallId(Integer hallId) {
        this.hallId = hallId;
    }

    public Integer getCinemaId() {
        return cinemaId;
    }

    public void setCinemaId(Integer cinemaId) {
        this.cinemaId = cinemaId;
    }
}