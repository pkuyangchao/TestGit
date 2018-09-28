package com.yc.movie.bean;

public class Movie {
    private Integer movieId;

    private String movieName;

    private String movieDirector;

    private String movieScen;

    private String actorName;

    private String movieType;

    private String movieCountry;

    private String movieLanguage;

    private String movieShowtime;

    private String movieRuntime;

    private Float movieGrade;

    private Integer commentCount;

    private String movieImg;

    private String movieSummary;

    public Integer getMovieId() {
        return movieId;
    }

    public void setMovieId(Integer movieId) {
        this.movieId = movieId;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName == null ? null : movieName.trim();
    }

    public String getMovieDirector() {
        return movieDirector;
    }

    public void setMovieDirector(String movieDirector) {
        this.movieDirector = movieDirector == null ? null : movieDirector.trim();
    }

    public String getMovieScen() {
        return movieScen;
    }

    public void setMovieScen(String movieScen) {
        this.movieScen = movieScen == null ? null : movieScen.trim();
    }

    public String getActorName() {
        return actorName;
    }

    public void setActorName(String actorName) {
        this.actorName = actorName == null ? null : actorName.trim();
    }

    public String getMovieType() {
        return movieType;
    }

    public void setMovieType(String movieType) {
        this.movieType = movieType == null ? null : movieType.trim();
    }

    public String getMovieCountry() {
        return movieCountry;
    }

    public void setMovieCountry(String movieCountry) {
        this.movieCountry = movieCountry == null ? null : movieCountry.trim();
    }

    public String getMovieLanguage() {
        return movieLanguage;
    }

    public void setMovieLanguage(String movieLanguage) {
        this.movieLanguage = movieLanguage == null ? null : movieLanguage.trim();
    }

    public String getMovieShowtime() {
        return movieShowtime;
    }

    public void setMovieShowtime(String movieShowtime) {
        this.movieShowtime = movieShowtime == null ? null : movieShowtime.trim();
    }

    public String getMovieRuntime() {
        return movieRuntime;
    }

    public void setMovieRuntime(String movieRuntime) {
        this.movieRuntime = movieRuntime == null ? null : movieRuntime.trim();
    }

    public Float getMovieGrade() {
        return movieGrade;
    }

    public void setMovieGrade(Float movieGrade) {
        this.movieGrade = movieGrade;
    }

    public Integer getCommentCount() {
        return commentCount;
    }

    public void setCommentCount(Integer commentCount) {
        this.commentCount = commentCount;
    }

    public String getMovieImg() {
        return movieImg;
    }

    public void setMovieImg(String movieImg) {
        this.movieImg = movieImg == null ? null : movieImg.trim();
    }

    public String getMovieSummary() {
        return movieSummary;
    }

    public void setMovieSummary(String movieSummary) {
        this.movieSummary = movieSummary == null ? null : movieSummary.trim();
    }
}