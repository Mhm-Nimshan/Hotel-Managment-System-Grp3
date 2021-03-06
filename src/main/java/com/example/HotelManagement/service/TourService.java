package com.example.HotelManagement.service;

import com.example.HotelManagement.model.Tour;
import com.example.HotelManagement.model.User;
import com.example.HotelManagement.repository.HotelRepository;
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
        return tourRepository.save(tour);
    }

    public void deleteById(int id){
        tourRepository.deleteById(id);
    }


    //Update feedback
    public Tour updateMyTour(int id, Tour tour){

        System.out.println(tour);

        return tourRepository.save(tour);
    }

    public Tour booking(int id, Tour tour) {
        Tour bookedTour = tourRepository.findById(id).orElse(null);
        bookedTour.setStatus("Unavailable");

        return tourRepository.save(bookedTour);
    }
}
