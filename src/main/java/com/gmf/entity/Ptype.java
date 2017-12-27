package com.gmf.entity;

import java.io.Serializable;

public class Ptype implements Serializable {
    private int id;
    private String typeNum;
    private String typeName;
    private String use;
    private String regDate;

    public Ptype(){}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTypeNum() {
        return typeNum;
    }

    public void setTypeNum(String typeNum) {
        this.typeNum = typeNum;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public String getUse() {
        return use;
    }

    public void setUse(String use) {
        this.use = use;
    }

    public String getRegDate() {
        return regDate;
    }

    public void setRegDate(String regDate) {
        this.regDate = regDate;
    }

    public Ptype(int id, String typeNum, String typeName, String use, String regDate) {
        this.id = id;
        this.typeNum = typeNum;
        this.typeName = typeName;
        this.use = use;
        this.regDate = regDate;
    }

    @Override
    public String toString() {
        return "Ptype{" +
                "id=" + id +
                ", typeNum='" + typeNum + '\'' +
                ", typeName='" + typeName + '\'' +
                ", use='" + use + '\'' +
                ", regDate='" + regDate + '\'' +
                '}';
    }
}
