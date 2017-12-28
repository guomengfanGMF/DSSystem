package com.gmf.entity;

import java.io.Serializable;

public class Prodet implements Serializable {
    private int id;
    private String pnum;
    private String dnum;
    private String ddes;
    private String durl;
    private String dsurl;
    private String chengben;
    private String shoujia;
    private String use;
    private String regdate;

    public Prodet(){}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPnum() {
        return pnum;
    }

    public void setPnum(String pnum) {
        this.pnum = pnum;
    }

    public String getDnum() {
        return dnum;
    }

    public void setDnum(String dnum) {
        this.dnum = dnum;
    }

    public String getDdes() {
        return ddes;
    }

    public void setDdes(String ddes) {
        this.ddes = ddes;
    }

    public String getDurl() {
        return durl;
    }

    public void setDurl(String durl) {
        this.durl = durl;
    }

    public String getDsurl() {
        return dsurl;
    }

    public void setDsurl(String dsurl) {
        this.dsurl = dsurl;
    }

    public String getChengben() {
        return chengben;
    }

    public void setChengben(String chengben) {
        this.chengben = chengben;
    }

    public String getShoujia() {
        return shoujia;
    }

    public void setShoujia(String shoujia) {
        this.shoujia = shoujia;
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
        return "Prodet{" +
                "id=" + id +
                ", pnum='" + pnum + '\'' +
                ", dnum='" + dnum + '\'' +
                ", ddes='" + ddes + '\'' +
                ", durl='" + durl + '\'' +
                ", dsurl='" + dsurl + '\'' +
                ", chengben='" + chengben + '\'' +
                ", shoujia='" + shoujia + '\'' +
                ", use='" + use + '\'' +
                ", regdate='" + regdate + '\'' +
                '}';
    }

    public Prodet(int id, String pnum, String dnum, String ddes, String durl, String dsurl, String chengben, String shoujia, String use, String regdate) {
        this.id = id;
        this.pnum = pnum;
        this.dnum = dnum;
        this.ddes = ddes;
        this.durl = durl;
        this.dsurl = dsurl;
        this.chengben = chengben;
        this.shoujia = shoujia;
        this.use = use;
        this.regdate = regdate;
    }
}
