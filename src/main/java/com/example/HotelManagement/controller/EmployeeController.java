package com.example.HotelManagement.controller;

import com.example.HotelManagement.model.Employee;
import com.example.HotelManagement.model.User;
import com.example.HotelManagement.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class EmployeeController {
    @Autowired
    private EmployeeService employeeService;

    @GetMapping("/read-employee")
    public String showReadEmployeePage(Model model){
        model.addAttribute("employees", employeeService.findAll());
        return "read_employee";
    }
    @GetMapping("/create-employee")
    public String showCreateEmployeePage(Model model){
        model.addAttribute("command", new User());
        return "create_employee";
    }
    @PostMapping("/create-employee")
    public String createEmployee(@ModelAttribute("employee") User user){
        employeeService.saveEmplyee(user);
        return "redirect:/read-employee";
    }
    @GetMapping("/delete-employee/{id}")
    public String deleteEmployee(@PathVariable int id){
        employeeService.deleteById(id);
        return "redirect:/read-employee";
    }
    @GetMapping("/update-employee/{id}")
    public String showUpdateEmployeePage(@PathVariable int id, Model model){
        model.addAttribute("id", id);
        model.addAttribute("command", employeeService.findById(id).orElse(null));
        return "update_employee";
    }
    @PostMapping("/update-employee/{id}")
    public String updateEmployee(@PathVariable int id, @ModelAttribute("employee")User user){
        employeeService.updateEmployee(id, user);
        return "redirect:/read-employee";
    }


}
