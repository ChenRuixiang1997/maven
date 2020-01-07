package com.kgc.exam.controller;

import com.kgc.exam.entity.User;
import com.kgc.exam.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("UserController")
@ResponseBody
public class UserController {
    @Autowired
    private UserService userService;
    @RequestMapping("login")
    public Boolean queryUser(String name,String password){
        User user = userService.queryUser(name,password);
        Boolean flag = user==null?false:true;
        return flag;
    }
}
