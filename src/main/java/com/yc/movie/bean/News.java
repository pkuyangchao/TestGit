package com.yc.movie.bean;

public class News {
    private Integer newsId;

    private String newsTitle;

    private String newsTime;

    private Integer newsLookcount;

    private String newsPicture;

    private Integer newsMovie;

    private String newsState;

    private byte[] newsContent;

    public Integer getNewsId() {
        return newsId;
    }

    public void setNewsId(Integer newsId) {
        this.newsId = newsId;
    }

    public String getNewsTitle() {
        return newsTitle;
    }

    public void setNewsTitle(String newsTitle) {
        this.newsTitle = newsTitle == null ? null : newsTitle.trim();
    }

    public String getNewsTime() {
        return newsTime;
    }

    public void setNewsTime(String newsTime) {
        this.newsTime = newsTime == null ? null : newsTime.trim();
    }

    public Integer getNewsLookcount() {
        return newsLookcount;
    }

    public void setNewsLookcount(Integer newsLookcount) {
        this.newsLookcount = newsLookcount;
    }

    public String getNewsPicture() {
        return newsPicture;
    }

    public void setNewsPicture(String newsPicture) {
        this.newsPicture = newsPicture == null ? null : newsPicture.trim();
    }

    public Integer getNewsMovie() {
        return newsMovie;
    }

    public void setNewsMovie(Integer newsMovie) {
        this.newsMovie = newsMovie;
    }

    public String getNewsState() {
        return newsState;
    }

    public void setNewsState(String newsState) {
        this.newsState = newsState == null ? null : newsState.trim();
    }

    public byte[] getNewsContent() {
        return newsContent;
    }

    public void setNewsContent(byte[] newsContent) {
        this.newsContent = newsContent;
    }
}