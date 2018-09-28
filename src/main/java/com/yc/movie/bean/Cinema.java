package com.yc.movie.bean;

public class Cinema {
    private Integer cinemaId;

    private String cinemaName;

    private String cinemaArea;

    private String cinemaImg;

    private String cinemaPhone;

    private String cinemaLongitude;

    private String cinemaLatitude;

    private String cinemaCity;

    public Integer getCinemaId() {
        return cinemaId;
    }

    public void setCinemaId(Integer cinemaId) {
        this.cinemaId = cinemaId;
    }

    public String getCinemaName() {
        return cinemaName;
    }

    public void setCinemaName(String cinemaName) {
        this.cinemaName = cinemaName == null ? null : cinemaName.trim();
    }

    public String getCinemaArea() {
        return cinemaArea;
    }

    public void setCinemaArea(String cinemaArea) {
        this.cinemaArea = cinemaArea == null ? null : cinemaArea.trim();
    }

    public String getCinemaImg() {
        return cinemaImg;
    }

    public void setCinemaImg(String cinemaImg) {
        this.cinemaImg = cinemaImg == null ? null : cinemaImg.trim();
    }

    public String getCinemaPhone() {
        return cinemaPhone;
    }

    public void setCinemaPhone(String cinemaPhone) {
        this.cinemaPhone = cinemaPhone == null ? null : cinemaPhone.trim();
    }

    public String getCinemaLongitude() {
        return cinemaLongitude;
    }

    public void setCinemaLongitude(String cinemaLongitude) {
        this.cinemaLongitude = cinemaLongitude == null ? null : cinemaLongitude.trim();
    }

    public String getCinemaLatitude() {
        return cinemaLatitude;
    }

    public void setCinemaLatitude(String cinemaLatitude) {
        this.cinemaLatitude = cinemaLatitude == null ? null : cinemaLatitude.trim();
    }

    public String getCinemaCity() {
        return cinemaCity;
    }

    public void setCinemaCity(String cinemaCity) {
        this.cinemaCity = cinemaCity == null ? null : cinemaCity.trim();
    }
}