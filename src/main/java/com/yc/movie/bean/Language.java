package com.yc.movie.bean;

public class Language {
    private Integer languageId;

    private String languageName;

    public Integer getLanguageId() {
        return languageId;
    }

    public void setLanguageId(Integer languageId) {
        this.languageId = languageId;
    }

    public String getLanguageName() {
        return languageName;
    }

    public void setLanguageName(String languageName) {
        this.languageName = languageName == null ? null : languageName.trim();
    }
}