package com.yc.movie.bean;

public class Ticked {
    private Integer tickedId;

    private Integer tickedPlay;

    private Integer tickedUser;

    private Integer tickedSeat;

    private Float tickedPrice;

    private String tickedTime;

    private Integer tickedFlag;

    private String tickedCode;

    private String tickedEndtime;

    private Integer movieId;

    private String tickedImg;

    private Hitmovie hitmovie;
    
    private Cinemaseat cinemaseat;
    
    private Play play;
    
    private User user;
    
    public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Hitmovie getHitmovie() {
		return hitmovie;
	}

	public void setHitmovie(Hitmovie hitmovie) {
		this.hitmovie = hitmovie;
	}

	public Cinemaseat getCinemaseat() {
		return cinemaseat;
	}

	public void setCinemaseat(Cinemaseat cinemaseat) {
		this.cinemaseat = cinemaseat;
	}

	public Play getPlay() {
		return play;
	}

	public void setPlay(Play play) {
		this.play = play;
	}

	public Integer getTickedId() {
        return tickedId;
    }

    public void setTickedId(Integer tickedId) {
        this.tickedId = tickedId;
    }

    public Integer getTickedPlay() {
        return tickedPlay;
    }

    public void setTickedPlay(Integer tickedPlay) {
        this.tickedPlay = tickedPlay;
    }

    public Integer getTickedUser() {
        return tickedUser;
    }

    public void setTickedUser(Integer tickedUser) {
        this.tickedUser = tickedUser;
    }

    public Integer getTickedSeat() {
        return tickedSeat;
    }

    public void setTickedSeat(Integer tickedSeat) {
        this.tickedSeat = tickedSeat;
    }

    public Float getTickedPrice() {
        return tickedPrice;
    }

    public void setTickedPrice(Float tickedPrice) {
        this.tickedPrice = tickedPrice;
    }

    public String getTickedTime() {
        return tickedTime;
    }

    public void setTickedTime(String tickedTime) {
        this.tickedTime = tickedTime == null ? null : tickedTime.trim();
    }

    public Integer getTickedFlag() {
        return tickedFlag;
    }

    public void setTickedFlag(Integer tickedFlag) {
        this.tickedFlag = tickedFlag;
    }

    public String getTickedCode() {
        return tickedCode;
    }

    public void setTickedCode(String tickedCode) {
        this.tickedCode = tickedCode == null ? null : tickedCode.trim();
    }

    public String getTickedEndtime() {
        return tickedEndtime;
    }

    public void setTickedEndtime(String tickedEndtime) {
        this.tickedEndtime = tickedEndtime == null ? null : tickedEndtime.trim();
    }

    public Integer getMovieId() {
        return movieId;
    }

    public void setMovieId(Integer movieId) {
        this.movieId = movieId;
    }

    public String getTickedImg() {
        return tickedImg;
    }

    public void setTickedImg(String tickedImg) {
        this.tickedImg = tickedImg == null ? null : tickedImg.trim();
    }
}