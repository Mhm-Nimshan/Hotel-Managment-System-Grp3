package com.example.HotelManagement.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Getter
@Setter
@Table(name = "hotel")

public class Hotel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private Integer id;

    @Column
    private String hotel_name;

    @Column
    private String hotel_address;

    @Column
    private String hotline;

    @Column
    private String email;

    @OneToMany(mappedBy = "hotel")
    private Set<Tour> Tour = new HashSet<>();
}


