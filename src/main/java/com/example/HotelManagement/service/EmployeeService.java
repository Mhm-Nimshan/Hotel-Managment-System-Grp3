package com.example.HotelManagement.service;

import com.example.HotelManagement.model.Employee;
import com.example.HotelManagement.model.User;
import com.example.HotelManagement.repository.EmployeeRepository;
import com.example.HotelManagement.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class EmployeeService {

    @Autowired
    private UserRepository userRepository;

    public List<User> findAll(){
        return userRepository.findAll();
    }

    public Optional<User> findById(int id){
        return userRepository.findById(id);
    }

    public User saveEmplyee(User user){
        return userRepository.save(user);
    }

    public User updateEmployee(int id, User user){
        User updatedEmployee = userRepository.findById(id).orElse(null);
        updatedEmployee.setName(user.getName());
        updatedEmployee.setEmail(user.getEmail());
        updatedEmployee.setAddress(user.getAddress());
        updatedEmployee.setPhone(user.getPhone());
        updatedEmployee.setRole(user.getRole());
        updatedEmployee.setPassword(user.getPassword());
        return userRepository.save(updatedEmployee);
    }

    public void deleteById(int id){
        userRepository.deleteById(id);
    }

}
