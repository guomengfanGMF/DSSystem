package com.gmf.mapper;

import com.gmf.entity.*;

import java.util.List;

public interface UserMapper {
    public void saveUser(User user);
    public User selUserByusercode(String usercode);
    public String selUserByname(String name);
    public void updateOne(User user);
    public List<Address> selAddByunum(String unum);
    public void addAddbyunum(Address address);
    public void delAddByunum(int id);
    //城市
    public List<Province> findAllProvince();
    //省份
    public List<City> findAllCityByProvincename(String provincename);
    public void updateAddByunum(Address address);
    //根据编号查询地址
    public List<Address> selAddByuserNum(String userNum);

}
