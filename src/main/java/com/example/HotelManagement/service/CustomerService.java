package com.example.HotelManagement.service;

import com.example.HotelManagement.model.Customer;
import com.example.HotelManagement.repository.CustomerRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CustomerService {

    @Autowired
    private CustomerRepository customerRepository;

    public Customer saveCustomer(Customer customer) {
        return customerRepository.save(customer);
    }


    public void deleteById(int id) {
        customerRepository.deleteById(id);
    }

}
