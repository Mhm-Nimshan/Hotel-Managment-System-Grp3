package com.example.HotelManagement.service;

import com.example.HotelManagement.model.Hotel;
import com.example.HotelManagement.repository.HotelRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class HotelService {

    @Autowired
    private HotelRepository hotelRepository;

    public List<Hotel> findAll(){
        return hotelRepository.findAll();
    }

    public Optional<Hotel> findById(int id){
        return hotelRepository.findById(id);
    }

    public Hotel saveHotel(Hotel hotel){
        return hotelRepository.save(hotel);
    }

    public Hotel updateHotel(int id, Hotel hotel){
        Hotel updatedHotel = hotelRepository.findById(id).orElse(null);
        updatedHotel.setHotel_name(hotel.getHotel_name());
        updatedHotel.setHotel_address(hotel.getHotel_address());
        updatedHotel.setHotline(hotel.getHotline());
        updatedHotel.setEmail(hotel.getEmail());
        return hotelRepository.save(updatedHotel);
    }

    public void deleteById(int id){
        hotelRepository.deleteById(id);
    }
}
