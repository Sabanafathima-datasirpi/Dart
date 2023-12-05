package com.example.demo_springboot.repo;

import com.example.demo_springboot.entity.EmpDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface EmpRepo extends JpaRepository<EmpDetail,Integer> {
    EmpDetail findByName(String empName);

}
