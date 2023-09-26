package com.example.demo_springboot.controller;

import com.example.demo_springboot.entity.EmpDetail;
import com.example.demo_springboot.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

@RestController
public class EmpController {
    @Autowired
    private EmpService empService;
    @GetMapping("/details")
    public List<EmpDetail> getDetails(){
        return empService.getDetails();
    }

}
