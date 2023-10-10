package com.example.demo_springboot.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Data
public class EmpDTO {
    @NotNull(message = "Id is required")
    public int id;
    @NotBlank(message = "Name is required")
    public String name;
    @NotNull(message = "Age is required")
    public int age;
    @NotNull(message = "Number is required")
    public long phone;

    public String getName() {
        return name;

    }
    public int getAge() {
        return age;

    }
    public long getPhone() {
        return phone;

    }

}
