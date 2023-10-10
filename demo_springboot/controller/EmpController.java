package com.example.demo_springboot.controller;

import com.example.demo_springboot.dto.EmpDTO;
import com.example.demo_springboot.entity.EmpDetail;
import com.example.demo_springboot.service.EmpService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
public class EmpController {
    Logger logger = LoggerFactory.getLogger(EmpController.class);

    @Autowired
    private  EmpDetail empdetail;
    @Autowired
    private EmpService empService;



    @GetMapping("/details")
    public ResponseEntity<Object> getDetails(
            @RequestParam(name = "pageNo", required = false, defaultValue = "1") Integer pageNo,
          @RequestParam(name = "pageSize", required = false, defaultValue = "10") Integer pageSize)  {
        Page<EmpDetail> pagedResult = empService.getDetails(pageNo, pageSize);
        return ResponseEntity.ok(pagedResult);
    }


    @PostMapping
    public ResponseEntity<Object> newEmpDetail(@Validated @RequestBody EmpDTO empDTO) {
        EmpDetail savedEmpDetail = empService.newEmpDetail(empDTO);
        return ResponseEntity.status(HttpStatus.CREATED).body(savedEmpDetail);
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
