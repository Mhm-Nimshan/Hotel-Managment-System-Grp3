package com.example.HotelManagement.service;

import com.example.HotelManagement.model.User;
import com.example.HotelManagement.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MainService {
    @Autowired
    private UserRepository userRepository;

    public User findByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    //New
    public User findByPassword(String password) {
        return userRepository.findByPassword(password);
    }

}
