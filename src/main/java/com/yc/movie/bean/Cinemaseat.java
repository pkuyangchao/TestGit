package com.yc.movie.bean;

public class Cinemaseat {
    private Integer seatId;

    private Integer hallId;

    private String seatState;

    private Integer seatRow;

    private Integer seatColumn;
    
    private Cinemahall cinemahall;

    
    public Cinemaseat(Integer seatId, Integer hallId, String seatState, Integer seatRow, Integer seatColumn) {
		super();
		this.seatId = seatId;
		this.hallId = hallId;
		this.seatState = seatState;
		this.seatRow = seatRow;
		this.seatColumn = seatColumn;
	}

	public Cinemahall getCinemahall() {
		return cinemahall;
	}

	public void setCinemahall(Cinemahall cinemahall) {
		this.cinemahall = cinemahall;
	}

	public Integer getSeatId() {
        return seatId;
    }

    public void setSeatId(Integer seatId) {
        this.seatId = seatId;
    }

    public Integer getHallId() {
        return hallId;
    }

    public void setHallId(Integer hallId) {
        this.hallId = hallId;
    }

    public String getSeatState() {
        return seatState;
    }

    public void setSeatState(String seatState) {
        this.seatState = seatState == null ? null : seatState.trim();
    }

    public Integer getSeatRow() {
        return seatRow;
    }

    public void setSeatRow(Integer seatRow) {
        this.seatRow = seatRow;
    }

    public Integer getSeatColumn() {
        return seatColumn;
    }

    public void setSeatColumn(Integer seatColumn) {
        this.seatColumn = seatColumn;
    }
}