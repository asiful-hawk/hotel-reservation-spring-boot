/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rsrv.controller;

import com.rsrv.entity.Room;
import com.rsrv.repository.RoomRepository;
import java.util.ArrayList;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author JEE
 */
@Controller
public class RoomController {
    @Autowired
    RoomRepository rr;
    
    @RequestMapping(method = RequestMethod.GET, value ="/home")
    public String homePage() {
        return "homePage";
    }
    @RequestMapping(method = RequestMethod.GET, value ="/list")
    public String listPage() {
        return "list";
    }
    @RequestMapping(method = RequestMethod.GET, value ="/showList")
    public String showList(@RequestParam ("loc") String location, Model m){
        ArrayList<Room> r = rr.findByLocation(location);
        System.out.println(location);
        m.addAttribute("room", r);
        return "list";
    }
    @RequestMapping(method = RequestMethod.GET, value ="/contact")
    public String contactPage() {
        return "contact";
    }
    @RequestMapping(method = RequestMethod.GET, value ="/deals")
    public String dealsPage() {
        return "deals";
    }
    @RequestMapping(method = RequestMethod.GET, value ="/room")
    public String roomPage(@RequestParam("roomId") int roomId, Model m) {
        Room r = rr.findById(roomId);
        m.addAttribute("roomInfo", r);
        return "room";
    }
}
