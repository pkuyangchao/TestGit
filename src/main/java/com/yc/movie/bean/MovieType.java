package com.yc.movie.bean;

public class MovieType {
    private Integer movieTypeId;

    private String movieTypeName;

    public Integer getMovieTypeId() {
        return movieTypeId;
    }

    public void setMovieTypeId(Integer movieTypeId) {
        this.movieTypeId = movieTypeId;
    }

    public String getMovieTypeName() {
        return movieTypeName;
    }

    public void setMovieTypeName(String movieTypeName) {
        this.movieTypeName = movieTypeName == null ? null : movieTypeName.trim();
    }
}