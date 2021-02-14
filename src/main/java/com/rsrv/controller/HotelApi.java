/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rsrv.controller;

import com.rsrv.entity.HotelLog;
import com.rsrv.entity.Reservation;
import com.rsrv.entity.Room;
import com.rsrv.entity.User;
import com.rsrv.repository.HotelLogRepository;
import com.rsrv.repository.ReservationRepository;
import com.rsrv.repository.RoomRepository;
import com.rsrv.repository.UserRepository;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author JEE
 */
@RestController
public class HotelApi {
    
    @Autowired
    HotelLogRepository hr;
    @Autowired
    ReservationRepository rr;
    @Autowired
    RoomRepository rmr;
    @Autowired
    UserRepository ur;
    
    @GetMapping("api/hotelLog")
    public ResponseEntity<ArrayList<HotelLog>> hotelApi(){
         return new ResponseEntity<>(hr.findAll(), HttpStatus.OK);
    }
    @GetMapping("api/user")
    public ResponseEntity<Iterable<User>> userApi(){
        return new ResponseEntity<>(ur.findAll(), HttpStatus.OK);
    }
    @GetMapping("api/room")
    public ResponseEntity<Iterable<Room>> roomApi(){
        return new ResponseEntity<>(rmr.findAll(), HttpStatus.OK);
    }
    @GetMapping("api/reserve")
    public ResponseEntity<Iterable<Reservation>> reserveApi(){
        return new ResponseEntity<>(rr.findAll(), HttpStatus.OK);
    }
}
