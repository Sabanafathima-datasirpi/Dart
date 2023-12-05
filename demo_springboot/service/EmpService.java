package com.example.demo_springboot.service;

import com.example.demo_springboot.dto.EmpDTO;
import com.example.demo_springboot.entity.EmpDetail;
import com.example.demo_springboot.repo.EmpRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class EmpService {
    @Autowired
    public EmpRepo empRepo;
    public Page<EmpDetail> getDetails(Integer pageNo, Integer pageSize) {
        Page<EmpDetail> pages = empRepo.findAll(PageRequest.of(pageNo, pageSize));
        return pages;
    }

    public EmpDetail newEmpDetail(EmpDTO empDTO) {
        EmpDetail empDetail = mapEmpDTOToEmpDetail(empDTO);
        return empRepo.save(empDetail);
    }

    // Other service methods...

    private EmpDetail mapEmpDTOToEmpDetail(EmpDTO empDTO) {
        EmpDetail empDetail = new EmpDetail();
        empDetail.setName(empDTO.getName());
        empDetail.setAge(empDTO.getAge());
        empDetail.setPhone(empDTO.getPhone());
        return empDetail;
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
