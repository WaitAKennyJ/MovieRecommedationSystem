package com.wzj.model;

import java.io.Serializable;

public class Ratings implements Serializable {
    private Integer userID;

    private Integer movieID;

    private Integer rating;

    private Integer timestamp;


    public Ratings(Integer userID, Integer movieID, Integer rating, Integer timestamp) {
        this.userID = userID;
        this.movieID = movieID;
        this.rating = rating;
        this.timestamp = timestamp;
    }

    public Ratings() {
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

    public Integer getRating() {
        return rating;
    }

    public void setRating(Integer rating) {
        this.rating = rating;
    }

    public Integer getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Integer timestamp) {
        this.timestamp = timestamp;
    }

    @Override
    public String toString() {
        return "Ratings{" +
                "userID=" + userID +
                ", movieID=" + movieID +
                ", rating=" + rating +
                ", timestamp=" + timestamp +
                '}';
    }
}