package com.kgc.exam.service.Impl;

import com.kgc.exam.entity.User;
import com.kgc.exam.mapper.UserMapper;
import com.kgc.exam.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public User queryUser(String name, String password) {
        return userMapper.queryUser(name,password);
    }
}
