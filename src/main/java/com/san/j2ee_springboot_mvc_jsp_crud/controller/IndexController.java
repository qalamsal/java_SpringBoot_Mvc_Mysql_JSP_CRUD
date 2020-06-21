package com.san.j2ee_springboot_mvc_jsp_crud.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//all the apps folders must be in java->default package , here
//com.san.j2ee_Springboot_mvc_jsp_crud

@Controller
@RequestMapping("/")
public class IndexController {
    public String loginUserPassword(){
        System.out.println("User Login Controller");
        return "index";
    }
}
