package com.example.HotelManagement.controller;

import com.example.HotelManagement.model.User;
import com.example.HotelManagement.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class CustomerController {
    @Autowired
    private CustomerService customerService;

    @GetMapping("/read-customer")
    public String showReadCustomerPage(Model model) {
        model.addAttribute("customers", customerService.findAll());
        return "read_customer";
    }
    //Customer view for admin users
    @GetMapping("/admin-read-customer")
    public String showReadAdminCustomerPage(Model model) {
        model.addAttribute("customers", customerService.findAll());
        return "admin_read_customer";
    }

    @GetMapping("/create-customer")
    public String showCreateCustomerPage(Model model) {
        model.addAttribute("command", new User());
        return "create_customer";
    }

    @PostMapping("/create-customer")
    public String createCustomer(@ModelAttribute("customer") User user) {
        customerService.saveCustomer(user);
        return "redirect:/login";
    }

    @GetMapping("/delete-customer/{id}")
    public String deleteCustomer(@PathVariable int id) {
        customerService.deleteById(id);
        return "redirect:/read-customer";
    }

    @GetMapping("/update-customer/{id}")
    public String showUpdateCustomerPage(@PathVariable int id, Model model) {
        model.addAttribute("id", id);
        model.addAttribute("command", customerService.findUserById(id).orElse(null));
        return "update_customer";
    }


    @PostMapping("/update-customer/{id}")
    public String updateCustomer(@PathVariable int id, @ModelAttribute("customer") User user) {
        customerService.updateCustomer(id, user);
        return "redirect:/read-customer";
    }

}
