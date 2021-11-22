package com.example.HotelManagement.controller;

import com.example.HotelManagement.model.Customer;
import com.example.HotelManagement.model.User;
import com.example.HotelManagement.service.CustomerService;
import com.example.HotelManagement.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class MainController {

    @Autowired
    private CustomerService customerService;

    @Autowired
    private MainService mainService;

    @GetMapping("/login")
    public String main(Model model, @RequestParam(value = "name", defaultValue = "System") String name) {
        model.addAttribute("name", name);
        return "login";
    }

    @PostMapping("/login")
    public String loginUser(@ModelAttribute("user") User user){
        final String email = user.getEmail();
        final String password = user.getPassword();

        User userObj = mainService.findByEmail(email);
        //new
        User userObj2 = mainService.findByPassword(password);

        if(userObj == null && userObj2 == null){
            return "redirect:/login";
        }else if (userObj == null || userObj2 == null){
            return "redirect:/login";
        }

        if(password.equals(userObj.getPassword()) && email.equals(userObj.getEmail()) && userObj.getRole() == "Customer") {
            return "redirect:/home";
        }else if (password.equals(userObj.getPassword()) && email.equals(userObj.getEmail())){
            return "redirect:/read-employee";
        }else{
            return "redirect:/login";
        }

    }

}
