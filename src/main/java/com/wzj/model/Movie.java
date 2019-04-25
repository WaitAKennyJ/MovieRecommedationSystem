package com.wzj.model;

import java.io.Serializable;

public class Movie implements Serializable{
    private Integer movieID;

    private String title;

    private String publishYear;

    private String genres;

    public Movie(Integer movieID, String title, String publishYear, String genres) {
        this.movieID = movieID;
        this.title = title;
        this.publishYear = publishYear;
        this.genres = genres;
    }

    public Movie() {
    }

    public Integer getMovieID() {
        return movieID;
    }

    public void setMovieID(Integer movieID) {
        this.movieID = movieID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getPublishYear() {
        return publishYear;
    }

    public void setPublishYear(String publishYear) {
        this.publishYear = publishYear == null ? null : publishYear.trim();
    }

    public String getGenres() {
        return genres;
    }

    public void setGenres(String genres) {
        this.genres = genres == null ? null : genres.trim();
    }

    @Override
    public String toString() {
        return "Movie{" +
                "movieID=" + movieID +
                ", title='" + title + '\'' +
                ", publishYear='" + publishYear + '\'' +
                ", genres='" + genres + '\'' +
                '}';
    }
}