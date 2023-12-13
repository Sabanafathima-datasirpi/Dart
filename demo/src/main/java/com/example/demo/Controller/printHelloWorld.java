package com.example.demo.Controller;

import org.springframework.web.bind.annotation.*;

@CrossOrigin(origins = "*", maxAge = 3600)
@RequestMapping(value = "/college")
@RestController
public class printHelloWorld {
    @GetMapping("/college")
    public String createCollege() {
        String success="hellow world!";
        return success;
    }
}