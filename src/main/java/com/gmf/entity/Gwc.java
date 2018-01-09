package com.gmf.entity;

import java.io.Serializable;

public class Gwc implements Serializable {
    private int id;
    private String name;
    private String miaoshu;
    private String shuliang;
    private String danjia;
    private String userNum;


    public Gwc(){}

    public Gwc(int id, String name, String miaoshu, String shuliang, String danjia,String userNum) {
        this.id = id;
        this.name = name;
        this.miaoshu = miaoshu;
        this.shuliang = shuliang;
        this.danjia = danjia;
        this.userNum = userNum;
    }

    public String getUserNum() {
        return userNum;
    }

    public void setUserNum(String userNum) {
        this.userNum = userNum;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMiaoshu() {
        return miaoshu;
    }

    public void setMiaoshu(String miaoshu) {
        this.miaoshu = miaoshu;
    }

    public String getShuliang() {
        return shuliang;
    }

    public void setShuliang(String shuliang) {
        this.shuliang = shuliang;
    }

    public String getDanjia() {
        return danjia;
    }

    public void setDanjia(String danjia) {
        this.danjia = danjia;
    }

    @Override
    public String toString() {
        return "Gwc{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", miaoshu='" + miaoshu + '\'' +
                ", shuliang=" + shuliang +
                ", danjia='" + danjia + '\'' +
                ", userNum='" + userNum + '\'' +
                '}';
    }
}
