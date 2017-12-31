package com.gmf.serviceImpl;

import com.gmf.entity.Address;
import com.gmf.entity.City;
import com.gmf.entity.Province;
import com.gmf.entity.User;
import com.gmf.mapper.UserMapper;
import com.gmf.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService{
    @Resource
    private UserMapper userMapper;

    public void saveUser(User user) {

       userMapper.saveUser(user);
    }

    public User selUserByusercode(String usercode) {
        System.out.println("--userServiceImpl:selUserByusercode--");

        return userMapper.selUserByusercode(usercode);

    }

    public String selUserByname(String name) {
        System.out.println("--userServiceImpl:selUserByname---"+userMapper.selUserByname(name));
        return userMapper.selUserByname(name);
    }

    public void updateOne(User user) {
        userMapper.updateOne(user);
    }

    public List<Address> selAddByunum(String unum) {
        return userMapper.selAddByunum(unum);
    }

    public void addAddbyunum(Address address) {
        userMapper.addAddbyunum(address);
    }

    public void delAddByunum(int id) {
        System.out.println("--seviceImpl:id---"+id);
        userMapper.delAddByunum(id);
    }

    public List<Province> findAllProvince() {
        return userMapper.findAllProvince();
    }

    public List<City> findAllCityByProvincename(String provincename) {
        return userMapper.findAllCityByProvincename(provincename);
    }


}
