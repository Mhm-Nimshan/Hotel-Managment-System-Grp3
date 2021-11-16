package com.example.HotelManagement.controller;

import com.example.HotelManagement.model.Tour;
import com.example.HotelManagement.service.HotelService;
import com.example.HotelManagement.service.TourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class TourController {
    @Autowired
    private TourService tourService;

@Autowired
private HotelService hotelService;

    @GetMapping("/read-tour")
    public String showAdminReadTourPage(Model model){
        model.addAttribute("tours", tourService.findAll());

        return "admin_read_tour";
    }

//    @GetMapping("/tour")
//    public String showReadTourPage(Model model){
//        model.addAttribute("tours", tourService.findAll());
//        return "read_tour";
//    }

    //Customer home page tour details
    @GetMapping("/home")
    public String showReadHomeTourPage(Model model){
        model.addAttribute("tours", tourService.findAll());
        return "home";
    }

    @GetMapping("/create-tour")
    public String showCreateTourPage(Model model){
        model.addAttribute("command", new Tour());

        model.addAttribute("hotels", hotelService.findAll());

        return "admin_create_tour";
    }

    @PostMapping("/create-tour")
    public String createTour(@ModelAttribute("tour")Tour tour){
        tourService.saveTour(tour);
        return "redirect:/read-tour";
    }

    @GetMapping("/delete-tour/{id}")
    public String deleteTour(@PathVariable int id){
        tourService.deleteById(id);
        return "redirect:/read-tour";
    }
    @GetMapping("/update-tour/{id}")
    public String showUpdateTourPage(@PathVariable int id, Model model){
        model.addAttribute("id", id);
        model.addAttribute("command", tourService.findById(id).orElse(null));
        //***
        model.addAttribute("hotels", hotelService.findAll());
        return "admin_update_tour";
    }

    // Find tour by ID(new)
//    @GetMapping("/my-tour/{id}")
//    public String showReadTourPage(@PathVariable int id, Model model){
//        model.addAttribute("id", id);
//        model.addAttribute("command", tourService.findById(id).orElse(null));
//
//        return "read_tour";
//    }

    @PostMapping("/update-tour/{id}")
    public String updateTour(@PathVariable int id, @ModelAttribute("tour")Tour tour){
        tourService.updateTour(id, tour);
        return "redirect:/read-tour";
    }

    // Update feedback
//    @PostMapping("/my-tour/{id}")
//    public String updateMyTour(@PathVariable int id, @ModelAttribute("tour") Tour tour){
//        tourService.updateTour(id, tour);
//        return  "redirect:/home";
//    }




    //Booking function
//    @PostMapping("/my-tour/{id}")
//    public String book(@PathVariable int id, @ModelAttribute("tour")Tour tour){
//        tourService.updateTour(id, tour);
//        return "redirect:/read-tour";
//    }
}



