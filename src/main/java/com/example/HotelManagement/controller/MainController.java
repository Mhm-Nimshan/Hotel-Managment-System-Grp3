package com.example.HotelManagement.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

public class MainController {
    @GetMapping("/")
    public String main(Model model, @RequestParam(value = "name", defaultValue = "World") String name) {
        model.addAttribute("name", name);
        return "main";
    }
}
