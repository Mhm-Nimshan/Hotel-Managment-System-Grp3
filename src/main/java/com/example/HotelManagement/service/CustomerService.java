package com.example.HotelManagement.service;

import com.example.HotelManagement.model.Customer;
import com.example.HotelManagement.model.User;
import com.example.HotelManagement.repository.CustomerRepository;
import com.example.HotelManagement.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CustomerService {

    @Autowired
    private UserRepository userRepository;

    public List<User> findAllUsers() {
        return userRepository.findAll();
    }

    public Optional<User> findUserById(int id) {
        return userRepository.findById(id);
    }
    public List<User> findAll() {
        return userRepository.findAll();
    }

    public Optional<User> findById(int id) {
        return userRepository.findById(id);
    }

    public User saveCustomer(User user) {
        user.setRole("Customer");
        return userRepository.save(user);
    }


    public User updateCustomer(int id, User user) {
        User updatedCustomer = userRepository.findById(id).orElse(null);
        updatedCustomer.setName(user.getName());
//        updatedCustomer.setName("Harsha");
        updatedCustomer.setRole("Customer");
        updatedCustomer.setEmail(user.getEmail());
        updatedCustomer.setPassword(user.getPassword());
        updatedCustomer.setPhone(user.getPhone());



        return userRepository.save(updatedCustomer);
    }

    public void deleteById(int id) {
        userRepository.deleteById(id);
    }

    public User findByEmailAndPassword(String email, String password){
        return userRepository.findByEmailAndPassword(email, password).orElse(null);
    }

}
