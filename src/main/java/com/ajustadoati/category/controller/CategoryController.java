package com.ajustadoati.category.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/categories")
public class CategoryController {
    @Value("${hello}")
    String hello;

    @GetMapping("/info")
    public String getInfo(){
        return  "Hello "+hello;
    }
}
