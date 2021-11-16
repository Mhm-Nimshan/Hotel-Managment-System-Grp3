package com.example.HotelManagement.controller;

import com.example.HotelManagement.model.Hotel;
import com.example.HotelManagement.model.User;
import com.example.HotelManagement.service.HotelService;
import lombok.Generated;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class HotelController {
    @Autowired
    private HotelService hotelService;

    @GetMapping("/read-hotel")
    public String showReadHotelPage(Model model) {
        model.addAttribute("hotels", hotelService.findAll());
        return "read_hotel";
    }

    @GetMapping("/create-hotel")
    public String showCreateHotelPage(Model model) {
        model.addAttribute("command", new Hotel());
        return "create_hotel";
    }

    @PostMapping("/create-hotel")
    public String createHotel(@ModelAttribute("hotel") Hotel hotel) {
        hotelService.saveHotel(hotel);
        return "redirect:/read-hotel";
    }

    @GetMapping("/delete-hotel/{id}")
    public String deleteHotel(@PathVariable int id) {
        hotelService.deleteById(id);
        return "redirect:/read-hotel";
    }

    @GetMapping("/update-hotel/{id}")
    public String showUpdateHotelPage(@PathVariable int id, Model model) {
        model.addAttribute("id", id);
        model.addAttribute("command", hotelService.findById(id).orElse(null));
        return "update_hotel";
    }

    @PostMapping("/update-hotel/{id}")
    public String updateHotel(@PathVariable int id, @ModelAttribute("hotel") Hotel hotel) {
        hotelService.updateHotel(id, hotel);
        return "redirect:/read-hotel";
    }

}
