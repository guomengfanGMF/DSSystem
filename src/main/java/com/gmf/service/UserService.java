package com.gmf.service;

import com.gmf.entity.Address;
import com.gmf.entity.City;
import com.gmf.entity.Province;
import com.gmf.entity.User;

import java.util.List;

public interface UserService {
    public void saveUser(User user);
    public User selUserByusercode(String usercode);
    public String selUserByname(String name);
    public void updateOne(User user);
    public List<Address> selAddByunum(String unum);
    public void addAddbyunum(Address address);
    public void delAddByunum(int id);
    public List<Province> findAllProvince();
    public List<City> findAllCityByProvincename(String provincename);
    public void updateAddByunum(Address address);
    public List<Address> selAddByuserNum(String userNum);

}
