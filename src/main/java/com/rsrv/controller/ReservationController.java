/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rsrv.controller;

import com.rsrv.entity.Room;
import com.rsrv.entity.User;
import com.rsrv.repository.ReservationRepository;
import com.rsrv.repository.RoomRepository;
import com.rsrv.repository.UserRepository;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Asif
 */
@Controller
public class ReservationController {

    @Autowired
    ReservationRepository rr;
    @Autowired
    RoomRepository rmr;
    @Autowired
    UserRepository ur;

    @RequestMapping(method = RequestMethod.GET, value = "/loginAsUser")
    public String reservationPage(@RequestParam("roomId") int roomId, @RequestParam("email") String email, @RequestParam("pass") String pass, Model m) {
        Room r = rmr.findById(roomId);
        User u = ur.findByEmailAndPassword(email, pass);
        String type = u.getType();
        if("user".equals(type)){
            String uemail = u.getEmail();
            String uname = u.getName();
            String nid  = u.getNid();
            Date rf = u.getReserveFrom();
            Date rt = u.getReserveTill();
            int rid = r.getRoomId();
            String roomImg = r.getImg();
            double roomPrice = r.getPrice();
            m.addAttribute("uemail", uemail);
            m.addAttribute("uname", uname);
            m.addAttribute("nid", nid);
            m.addAttribute("rf", rf);
            m.addAttribute("rt", rt);
            m.addAttribute("rid", rid);
            m.addAttribute("roomImg", roomImg);
            m.addAttribute("roomPrice", roomPrice);
            return "rsrvpmt";
        } else if(type == null){
            String message = "Enter valid user id and password";
            m.addAttribute("message", message);
            return "login";
        }else {
            return "";
        }
        
    }

    @RequestMapping(method = RequestMethod.GET, value = "/checkReserve")
    public String loginPage(@RequestParam("roomId") int roomId, Model m) {
        Room r = rmr.findById(roomId);
        
        String availability = r.getAvailability();

        if ("yes".equals(availability)) {
            m.addAttribute("roomId", roomId);
            return "login";
        } else {
            String message = "Sorry this room is currently booked";
            m.addAttribute("message", message);
            return "room";
        }
        
    }
    

}
