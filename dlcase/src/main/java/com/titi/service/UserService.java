package com.titi.service;

import com.titi.pojo.User;

import java.util.List;

public interface UserService {
    User login(String username, String password);
    boolean register(User user);
    List<User> SelectAllUser();
}
