package com.san.j2ee_springboot_mvc_jsp_crud.controller;

import com.san.j2ee_springboot_mvc_jsp_crud.Implmentation.EmployeeImpl;
import com.san.j2ee_springboot_mvc_jsp_crud.Models.Employee;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.SQLException;

//all the apps folders must be in java->default package , here
//com.san.j2ee_Springboot_mvc_jsp_crud

@Controller
@RequestMapping("/")
public class EditController {

    @GetMapping("edit")
    public String test(){
        //System.out.println("Add Controller called");
        return "frmEdit";
    }

    @PostMapping("edit")
    public String doEdit(@RequestParam("id") int id, @RequestParam("name") String name, @RequestParam("address") String address,
                         @RequestParam("email") String email){
        //System.out.println("Add Controller called");

        Employee newEmployee=new Employee(id,name,address,email);
        try {
            new EmployeeImpl().editEmployee(newEmployee);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return "index";
    }
}
