package com.example.SpringBootProject;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SampleProgram {
    @GetMapping("/hello")
    public String sample(){
        return "Hello world";
    }
}
