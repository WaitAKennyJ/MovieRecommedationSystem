package com.wzj.model;

import java.io.Serializable;

public class User implements Serializable{
    private Integer userID;

    private String gender;

    private Integer age;

    private Integer occupationID;

    private String userName;

    private String passWord;

    public User() {
    }

    public User(Integer userID, String gender, Integer age, Integer occupationID, String userName, String passWord) {
        this.userID = userID;
        this.gender = gender;
        this.age = age;
        this.occupationID = occupationID;
        this.userName = userName;
        this.passWord = passWord;
    }

    public Integer getUserID() {
        return userID;
    }

    public void setUserID(Integer userID) {
        this.userID = userID;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender == null ? null : gender.trim();
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Integer getOccupationID() {
        return occupationID;
    }

    public void setOccupationID(Integer occupationID) {
        this.occupationID = occupationID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord == null ? null : passWord.trim();
    }

    @Override
    public String toString() {
        return "User{" +
                "userID=" + userID +
                ", gender='" + gender + '\'' +
                ", age=" + age +
                ", occupationID=" + occupationID +
                ", userName='" + userName + '\'' +
                ", passWord='" + passWord + '\'' +
                '}';
    }
}