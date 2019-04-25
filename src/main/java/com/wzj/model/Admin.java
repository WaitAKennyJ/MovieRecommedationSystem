package com.wzj.model;

import java.io.Serializable;

public class Admin implements Serializable {
    private String adminName;

    private String passWord;

    public Admin(String adminName, String passWord) {
        this.adminName = adminName;
        this.passWord = passWord;
    }

    public Admin() {
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName == null ? null : adminName.trim();
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord == null ? null : passWord.trim();
    }

    @Override
    public String toString() {
        return "Admin{" +
                "adminName='" + adminName + '\'' +
                ", passWord='" + passWord + '\'' +
                '}';
    }
}