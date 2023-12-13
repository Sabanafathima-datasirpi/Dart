package com.example.demo.Controller;


import io.micrometer.core.instrument.Counter;
import io.micrometer.core.instrument.MeterRegistry;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/college")
public class HelloWorldController {

    private final Counter helloEndpointCounter;

    @Autowired
    public HelloWorldController(MeterRegistry meterRegistry) {
        this.helloEndpointCounter = meterRegistry.counter("college.hello.requests");
    }

    @GetMapping("/hello")
    public String sayHello() {
        helloEndpointCounter.increment();

        return "Hello World!";
    }
}
