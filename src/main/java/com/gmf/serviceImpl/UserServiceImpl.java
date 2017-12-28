package com.gmf.serviceImpl;

import com.gmf.entity.User;
import com.gmf.mapper.UserMapper;
import com.gmf.service.UserService;
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

    public List<User> selone(String name) {
        return userMapper.selone(name);
    }

}
