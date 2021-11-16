package com.example.HotelManagement.repository;

import com.example.HotelManagement.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Integer> {

    Optional<User> findByEmailAndPassword(String email, String password);
    User findByEmail(String email);
    //new
    User findByPassword(String password);
}
