package com.kgc.exam.service;

import com.kgc.exam.entity.User;

public interface UserService {
    public User queryUser(String name,String password);
}
