package com.gmf.service;

import com.gmf.entity.User;

public interface UserService {
    public void saveUser(User user);
    public User selUserByusercode(String usercode);
    public User selUserByusername(String username);
}
