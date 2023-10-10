package com.example.demo_springboot.entity;

import jakarta.persistence.*;
import lombok.*;




@Table(name = "emp_detail")
@Entity
public class EmpDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;
    @Column(name = "name")
    private String name;
    @Column(name = "age")
    private int age;
    @Column(name = "phone")
    private long phone;


    public void setName(String name) {
        this.name = name;
    }
    public void setAge(int age) {
        this.age = age;
    }
    public void setPhone(long phone) {
        this.phone = phone;
    }


}