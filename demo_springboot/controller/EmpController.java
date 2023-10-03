package com.example.demo_springboot.controller;

import com.example.demo_springboot.entity.EmpDetail;
import com.example.demo_springboot.service.EmpService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
public class EmpController {
    Logger logger = LoggerFactory.getLogger(EmpController.class);
    @Autowired
    private EmpService empService;

    @GetMapping("/details")
    public List<EmpDetail> getDetails() {
        logger.info("Fetch employee details");
        logger.warn("Details fetched");
        return empService.getDetails();
    }

    @PostMapping("/details")
    public EmpDetail newEmpDetail(@RequestBody EmpDetail empDetail) {
        return empService.newEmpDetail(empDetail);
    }

    @GetMapping("/details/{id}")
    public Optional<Optional<EmpDetail>> getEmpDetailById(@PathVariable("id") Integer empId) {
        return empService.getEmpDetailById(empId);
    }
@RequestMapping(value = "/details/findByName",method = RequestMethod.GET)
    public EmpDetail getEmpDetailByName(String empName) {
        return empService.getEmpDetailByName(empName);
    }

    @PutMapping("/details")
    public EmpDetail updateEmpDetail(@RequestBody EmpDetail changeEmpDetail){
        return empService.updateEmpDetail(changeEmpDetail);
    }
    @DeleteMapping("/details/{empId}")
    public String deleteById(@PathVariable Integer empId){

        return empService.deleteById(empId);
    }
}
