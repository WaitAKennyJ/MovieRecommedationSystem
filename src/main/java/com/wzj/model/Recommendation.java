package com.wzj.model;

import java.io.Serializable;

public class Recommendation implements Serializable{
    private Integer userID;

    private String selectMovie;

    private String recommendMovie;

    public Recommendation(Integer userID, String selectMovie, String recommendMovie) {
        this.userID = userID;
        this.selectMovie = selectMovie;
        this.recommendMovie = recommendMovie;
    }

    public Recommendation() {
    }

    public Integer getUserID() {
        return userID;
    }

    public void setUserID(Integer userID) {
        this.userID = userID;
    }

    public String getSelectMovie() {
        return selectMovie;
    }

    public void setSelectMovie(String selectMovie) {
        this.selectMovie = selectMovie == null ? null : selectMovie.trim();
    }

    public String getRecommendMovie() {
        return recommendMovie;
    }

    public void setRecommendMovie(String recommendMovie) {
        this.recommendMovie = recommendMovie == null ? null : recommendMovie.trim();
    }
}