package com.gmf.entity;

import java.io.Serializable;

public class Dingdan implements Serializable {
    private int id;
    private String mingcheng;
    private String danjia;
    private String jine;
    private String shuliang;
    private String miaoshu;

    public Dingdan(){}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMingcheng() {
        return mingcheng;
    }

    public void setMingcheng(String mingcheng) {
        this.mingcheng = mingcheng;
    }

    public String getDanjia() {
        return danjia;
    }

    public void setDanjia(String danjia) {
        this.danjia = danjia;
    }

    public String getJine() {
        return jine;
    }

    public void setJine(String jine) {
        this.jine = jine;
    }

    public String getShuliang() {
        return shuliang;
    }

    public void setShuliang(String shuliang) {
        this.shuliang = shuliang;
    }

    public String getMiaoshu() {
        return miaoshu;
    }

    public void setMiaoshu(String miaoshu) {
        this.miaoshu = miaoshu;
    }

    @Override
    public String toString() {
        return "Dingdan{" +
                "id=" + id +
                ", mingcheng='" + mingcheng + '\'' +
                ", danjia='" + danjia + '\'' +
                ", jine='" + jine + '\'' +
                ", shuliang=" + shuliang +
                ", miaoshu=" + miaoshu +
                '}';
    }

    public Dingdan(int id, String mingcheng, String danjia, String jine, String shuliang,String miaoshu) {
        this.id = id;
        this.mingcheng = mingcheng;
        this.danjia = danjia;
        this.jine = jine;
        this.shuliang = shuliang;
        this.miaoshu = miaoshu;
    }
}
