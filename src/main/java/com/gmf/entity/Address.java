package com.gmf.entity;

import java.io.Serializable;

public class Address implements Serializable {
    private int id;
    private String userNum;
    private String province;
    private String city;
    private String detAddress;
    private String moren;
    private String use;
    private String regdate;

    public Address(){}

    public Address(int id, String userNum, String province, String city, String detAddress, String moren, String use, String regdate) {
        this.id = id;
        this.userNum = userNum;
        this.province = province;
        this.city = city;
        this.detAddress = detAddress;
        this.moren = moren;
        this.use = use;
        this.regdate = regdate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserNum() {
        return userNum;
    }

    public void setUserNum(String userNum) {
        this.userNum = userNum;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDetAddress() {
        return detAddress;
    }

    public void setDetAddress(String detAddress) {
        this.detAddress = detAddress;
    }

    public String getMoren() {
        return moren;
    }

    public void setMoren(String moren) {
        this.moren = moren;
    }

    public String getUse() {
        return use;
    }

    public void setUse(String use) {
        this.use = use;
    }

    public String getRegdate() {
        return regdate;
    }

    public void setRegdate(String regdate) {
        this.regdate = regdate;
    }

    @Override
    public String toString() {
        return "Address{" +
                "id=" + id +
                ", userNum='" + userNum + '\'' +
                ", province='" + province + '\'' +
                ", city='" + city + '\'' +
                ", detAddress='" + detAddress + '\'' +
                ", moren='" + moren + '\'' +
                ", use='" + use + '\'' +
                ", regdate='" + regdate + '\'' +
                '}';
    }
}
