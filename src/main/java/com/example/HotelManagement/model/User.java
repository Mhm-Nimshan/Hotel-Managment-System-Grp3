package com.example.HotelManagement.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "user")

@Getter
@Setter

public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private Integer id;

    @Column
    private String name;

    @Column
    private String email;

    @Column
    private String address;

    @Column
    private String phone;

    @Column
    private String role;

    @Column
    private String password;
}
