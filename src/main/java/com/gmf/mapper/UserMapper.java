package com.gmf.mapper;

import com.gmf.entity.User;

public interface UserMapper {
    public void saveUser(User user);
    public User selUserByusercode(String usercode);
}
