package com.example.demo_springboot.service;

import com.example.demo_springboot.entity.EmpDetail;
import com.example.demo_springboot.repo.EmpRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
public class EmpService {
    @Autowired
    public EmpRepo empRepo;
    public List<EmpDetail> getDetails(){
        List <EmpDetail> empList = new ArrayList<>();
        empRepo.findAll().forEach(emp_detail -> empList.add(emp_detail));
        return empList;
    }
}
