package com.yc.movie.bean;

public class Cinemahall {
    private Integer hallId;

    private Integer cinemaId;

    private String hallName;

    private Integer hallRows;

    private Integer hallColumns;

    private String hallType;
    
    private Cinema cinema;

    public Cinema getCinema() {
		return cinema;
	}

	public void setCinema(Cinema cinema) {
		this.cinema = cinema;
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

    public String getHallName() {
        return hallName;
    }

    public void setHallName(String hallName) {
        this.hallName = hallName == null ? null : hallName.trim();
    }

    public Integer getHallRows() {
        return hallRows;
    }

    public void setHallRows(Integer hallRows) {
        this.hallRows = hallRows;
    }

    public Integer getHallColumns() {
        return hallColumns;
    }

    public void setHallColumns(Integer hallColumns) {
        this.hallColumns = hallColumns;
    }

    public String getHallType() {
        return hallType;
    }

    public void setHallType(String hallType) {
        this.hallType = hallType == null ? null : hallType.trim();
    }
}