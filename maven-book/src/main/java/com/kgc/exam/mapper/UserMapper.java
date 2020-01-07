package com.kgc.exam.mapper;

import com.kgc.exam.entity.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    public User queryUser(@Param("name") String name,@Param("pwd") String password);
}
