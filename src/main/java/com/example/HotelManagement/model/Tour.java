package com.example.HotelManagement.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;


@Entity
@Setter
@Getter
@Table(name = "tour")

public class Tour {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private Integer id;

    @Column
    private String pkg_name;

    @Column
    private String status;

    @Column
    private String price;

    @Column
    private String pkg_description;

    @Column
    private String feedback;


    @ManyToOne
    @JoinColumn(name = "hotel_id")
    private Hotel hotel;



}