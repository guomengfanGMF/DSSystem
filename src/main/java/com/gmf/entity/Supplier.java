package com.gmf.entity;

import java.io.Serializable;

public class Supplier implements Serializable {
    private int id;
    private String snum;
    private String sname;
    private String scommpany;
    private String saddress;
    private String regdate;

    public Supplier(){}

    public Supplier(int id, String snum, String sname, String scommpany, String saddress, String regdate) {
        this.id = id;
        this.snum = snum;
        this.sname = sname;
        this.scommpany = scommpany;
        this.saddress = saddress;
        this.regdate = regdate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSnum() {
        return snum;
    }

    public void setSnum(String snum) {
        this.snum = snum;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getScommpany() {
        return scommpany;
    }

    public void setScommpany(String scommpany) {
        this.scommpany = scommpany;
    }

    public String getSaddress() {
        return saddress;
    }

    public void setSaddress(String saddress) {
        this.saddress = saddress;
    }

    public String getRegdate() {
        return regdate;
    }

    public void setRegdate(String regdate) {
        this.regdate = regdate;
    }

    @Override
    public String toString() {
        return "Supplier{" +
                "id=" + id +
                ", snum='" + snum + '\'' +
                ", sname='" + sname + '\'' +
                ", scommpany='" + scommpany + '\'' +
                ", saddress='" + saddress + '\'' +
                ", regdate='" + regdate + '\'' +
                '}';
    }
}
