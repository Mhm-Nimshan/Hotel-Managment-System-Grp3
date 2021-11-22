package com.example.HotelManagement.service;

import com.example.HotelManagement.model.User;
import com.example.HotelManagement.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.junit.jupiter.api.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.persistence.EntityNotFoundException;

import java.util.List;
import java.util.Optional;

@SpringBootTest
@TestInstance(TestInstance.Lifecycle.PER_CLASS)

public class EmployeeServiceTest {
    @Autowired
private EmployeeService employeeService;

    @BeforeAll
    void setUp() {
        User employee = new User();
        employee.setName("John");
        employee.setEmail("Deer");
        employee.setAddress("70(115), Maxwell Rd, London");
        employee.setPhone("0769944669");
        employee.setRole("Admin");
        employee.setPassword("John@123");

        employeeService.saveEmplyee(employee);
    }

    @Test
    void testFindAll() {
        Assertions.assertFalse(employeeService.findAll().isEmpty());
    }

    @Test
    void testFindById() {
        User employee = employeeService.findById(1).orElseThrow(EntityNotFoundException::new);
        Assertions.assertEquals("John", employee.getName());
    }

    @Test
    void testUpdateEmployee() {
        User employee = employeeService.findById(1).orElseThrow(EntityNotFoundException::new);
        employee.setPhone("0769944669");
        User updatedEmployee = employeeService.updateEmployee(1, employee);
        Assertions.assertEquals("0769944669", updatedEmployee.getPhone());
    }

    @AfterAll
    void tearDown() {
        employeeService.deleteById(1);
    }
}
