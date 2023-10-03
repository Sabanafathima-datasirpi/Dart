package com.example.demo_springboot.service;

import com.example.demo_springboot.entity.EmpDetail;
import com.example.demo_springboot.repo.EmpRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class EmpService {
    @Autowired
    public EmpRepo empRepo;
    public List<EmpDetail> getDetails(){
        List <EmpDetail> empList = new ArrayList<>();
        empRepo.findAll().forEach(emp_detail -> empList.add(emp_detail));
        return empList;
    }
    public EmpDetail newEmpDetail(EmpDetail empDetail){
        return  empRepo.save(empDetail);
    }

    public Optional<Optional<EmpDetail>> getEmpDetailById(Integer empId) {
        return Optional.of(empRepo.findById(empId));
    }

    public EmpDetail updateEmpDetail(EmpDetail changeEmpDetail) {
       return empRepo.save(changeEmpDetail);
    }

    public String deleteById(Integer empId) {
        empRepo.deleteById(empId);
        return "Deleted successfully";
    }

    public EmpDetail getEmpDetailByName(String empName) {
        return empRepo.findByName(empName);
    }

//    public Optional<EmpDetail> getEmpDetailByName(String empName) {
//        return Optional.of(empRepo.findByName(empName));
//    }
}
