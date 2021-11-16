package com.example.HotelManagement.service;

import com.example.HotelManagement.model.Tour;
import com.example.HotelManagement.model.User;
//import com.example.HotelManagement.repository.HotelRepository;
import com.example.HotelManagement.repository.TourRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class TourService {

    @Autowired
    private TourRepository tourRepository;

    public List<Tour> findAll(){

        List<Tour> test = tourRepository.findAll();
        return test;
    }

    public Optional<Tour> findById(int id){
        return tourRepository.findById(id);
    }

    public Tour saveTour(Tour tour){
        return tourRepository.save(tour);
    }

    public Tour updateTour(int id, Tour tour){

        System.out.println(tour);
//        updatedTour.setHotel_name(tour.getHotel_name());
//        updatedTour.setHotel_address(tour.getHotel_address());
//        updatedTour.setHotline(tour.getHotline());
        return tourRepository.save(tour);
    }

    public void deleteById(int id){
        tourRepository.deleteById(id);
    }

//    public Tour updateTour(int id, Tour tour) {
//        Tour bookedTour = tourRepository.findById(id).orElse(null);
//        tourRepository.setStatus("Inactive");
//
//        return tourRepository.save(bookedTour);
//    }
}
