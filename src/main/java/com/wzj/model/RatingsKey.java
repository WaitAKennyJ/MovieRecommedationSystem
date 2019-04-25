package com.wzj.model;

public class RatingsKey {
    private Integer userID;

    private Integer movieID;

    public RatingsKey(Integer userID, Integer movieID) {
        this.userID = userID;
        this.movieID = movieID;
    }

    public RatingsKey() {
    }

    public Integer getUserID() {
        return userID;
    }

    public void setUserID(Integer userID) {
        this.userID = userID;
    }

    public Integer getMovieID() {
        return movieID;
    }

    public void setMovieID(Integer movieID) {
        this.movieID = movieID;
    }
}