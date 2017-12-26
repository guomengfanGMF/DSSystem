package com.gmf.entity;

import java.io.Serializable;

public class Product implements Serializable {
    private int id;
    private String username;
    private String proJianma;
    private int proTypeID;
    private int proSupperlierID;
    private String proPutawaydate;
    private String proPurl;
    private  String proSPurl;
    private String zengPing;
    private String change;
    private String regdate;

    public Product(){}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getProJianma() {
        return proJianma;
    }

    public void setProJianma(String proJianma) {
        this.proJianma = proJianma;
    }

    public int getProTypeID() {
        return proTypeID;
    }

    public void setProTypeID(int proTypeID) {
        this.proTypeID = proTypeID;
    }

    public int getProSupperlierID() {
        return proSupperlierID;
    }

    public void setProSupperlierID(int proSupperlierID) {
        this.proSupperlierID = proSupperlierID;
    }

    public String getProPutawaydate() {
        return proPutawaydate;
    }

    public void setProPutawaydate(String proPutawaydate) {
        this.proPutawaydate = proPutawaydate;
    }

    public String getProPurl() {
        return proPurl;
    }

    public void setProPurl(String proPurl) {
        this.proPurl = proPurl;
    }

    public String getProSPurl() {
        return proSPurl;
    }

    public void setProSPurl(String proSPurl) {
        this.proSPurl = proSPurl;
    }

    public String getZengPing() {
        return zengPing;
    }

    public void setZengPing(String zengPing) {
        this.zengPing = zengPing;
    }

    public String getChange() {
        return change;
    }

    public void setChange(String change) {
        this.change = change;
    }

    public String getRegdate() {
        return regdate;
    }

    public void setRegdate(String regdate) {
        this.regdate = regdate;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", proJianma='" + proJianma + '\'' +
                ", proTypeID=" + proTypeID +
                ", proSupperlierID=" + proSupperlierID +
                ", proPutawaydate='" + proPutawaydate + '\'' +
                ", proPurl='" + proPurl + '\'' +
                ", proSPurl='" + proSPurl + '\'' +
                ", zengPing='" + zengPing + '\'' +
                ", change='" + change + '\'' +
                ", regdate='" + regdate + '\'' +
                '}';
    }

    public Product(int id, String username, String proJianma, int proTypeID, int proSupperlierID, String proPutawaydate, String proPurl, String proSPurl, String zengPing, String change, String regdate) {
        this.id = id;
        this.username = username;
        this.proJianma = proJianma;
        this.proTypeID = proTypeID;
        this.proSupperlierID = proSupperlierID;
        this.proPutawaydate = proPutawaydate;
        this.proPurl = proPurl;
        this.proSPurl = proSPurl;
        this.zengPing = zengPing;
        this.change = change;
        this.regdate = regdate;
    }
}
