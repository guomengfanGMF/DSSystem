package com.gmf.entity;

import java.io.Serializable;

public class User implements Serializable {
    private int id;
    private String username;
    private String password;
    private String userNum;
    private int userType;
    private String userCardnum;
    private String userBirth;
    private String userRealname;
    private String userRegdate;
    private int userCredits;
    private int userBalance;
    private String userEmail;
    private int mainAddressID;
    private int userTotalmoney;
    private String userPhone;
    private String salt;

    public User(){}
    public int getMainAddressID() {
        return mainAddressID;
    }

    public void setMainAddressID(int mainAddressID) {
        this.mainAddressID = mainAddressID;
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    public User(int id, String username, String password, String userNum, int userType, String userCardnum, String userBirth, String userRealname, String userRegdate, int userCredits, int userBalance, String userEmail, String userAddress, int userTotalmoney, String userPhone,int mainAddressID,String salt) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.userNum = userNum;
        this.userType = userType;
        this.userCardnum = userCardnum;
        this.userBirth = userBirth;
        this.userRealname = userRealname;
        this.userRegdate = userRegdate;
        this.userCredits = userCredits;
        this.userBalance = userBalance;
        this.userEmail = userEmail;
        this.userTotalmoney = userTotalmoney;
        this.userPhone = userPhone;
        this.mainAddressID = mainAddressID;
        this.salt = salt;
    }

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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserNum() {
        return userNum;
    }

    public void setUserNum(String userNum) {
        this.userNum = userNum;
    }

    public String getUserCardnum() {
        return userCardnum;
    }

    public void setUserCardnum(String userCardnum) {
        this.userCardnum = userCardnum;
    }

    public String getUserBirth() {
        return userBirth;
    }

    public void setUserBirth(String userBirth) {
        this.userBirth = userBirth;
    }

    public String getUserRealname() {
        return userRealname;
    }

    public void setUserRealname(String userRealname) {
        this.userRealname = userRealname;
    }

    public String getUserRegdate() {
        return userRegdate;
    }

    public void setUserRegdate(String userRegdate) {
        this.userRegdate = userRegdate;
    }

    public int getUserType() {
        return userType;
    }

    public void setUserType(int userType) {
        this.userType = userType;
    }

    public int getUserCredits() {
        return userCredits;
    }

    public void setUserCredits(int userCredits) {
        this.userCredits = userCredits;
    }

    public int getUserBalance() {
        return userBalance;
    }

    public void setUserBalance(int userBalance) {
        this.userBalance = userBalance;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public int getUserTotalmoney() {
        return userTotalmoney;
    }

    public void setUserTotalmoney(int userTotalmoney) {
        this.userTotalmoney = userTotalmoney;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", userNum='" + userNum + '\'' +
                ", userType='" + userType + '\'' +
                ", userCardnum='" + userCardnum + '\'' +
                ", userBirth='" + userBirth + '\'' +
                ", userRealname='" + userRealname + '\'' +
                ", userRegdate='" + userRegdate + '\'' +
                ", userCredits='" + userCredits + '\'' +
                ", userBalance='" + userBalance + '\'' +
                ", userEmail='" + userEmail + '\'' +
                ", userTotalmoney='" + userTotalmoney + '\'' +
                ", userPhone='" + userPhone + '\'' +
                ", mainAddressID='" + mainAddressID + '\'' +
                ", salt='" + salt + '\'' +
                '}';
    }
}
