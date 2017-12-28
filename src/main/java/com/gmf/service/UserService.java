package com.gmf.service;

import com.gmf.entity.User;

import java.util.List;

public interface UserService {
    public void saveUser(User user);
    public User selUserByusercode(String usercode);
    public String selUserByname(String name);
    public List<User> selone(String name);

}
