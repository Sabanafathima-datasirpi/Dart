package com.example.demo_springboot.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
public class EmpDTO {
    @NotNull(message = "Id is required")
    private Integer id;

    @NotBlank(message = "Name is required")
    private String name;

    @NotNull(message = "Age is required")
    private Integer age;

    @NotNull(message = "Number is required")
    private Long phone;

    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }

    public long getPhone() {
        return phone;
    }

    // Getter methods (no need for custom getters, Lombok generates them)
}
