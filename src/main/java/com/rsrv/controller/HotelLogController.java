/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rsrv.controller;

import com.rsrv.entity.Cottage;
import com.rsrv.entity.HotelLog;
import com.rsrv.entity.Reservation;
import com.rsrv.entity.Room;
import com.rsrv.entity.User;
import com.rsrv.repository.CottageRepository;
import com.rsrv.repository.HotelLogRepository;
import com.rsrv.repository.ReservationRepository;
import com.rsrv.repository.RoomRepository;
import com.rsrv.repository.UserRepository;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
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
public class HotelLogController {

    @Autowired
    HotelLogRepository hr;
    @Autowired
    UserRepository ur;
    @Autowired
    ReservationRepository rr;
    @Autowired
    RoomRepository rmr;
    @Autowired
    CottageRepository cr;

    @RequestMapping(method = RequestMethod.GET, value = "/cPage")
    public String loginPage(@RequestParam("roomId") int roomId,
            @RequestParam("checkin") String checkDate, @RequestParam("checkout") String outDate,
            @RequestParam("payInfo") String payInfo,
            @RequestParam("email") String email,
            @RequestParam(name ="promo", required = false) String promo,
            @RequestParam(name ="guest", required = false) String guest,
            @RequestParam(name ="smoke", required = false) String smoke,
            @RequestParam(name ="upper", required = false) String upper,
            @RequestParam(name ="park", required = false) String park,
            @RequestParam(name ="as", required = false) Double as,
//            @RequestParam(name ="spark", required = true) Double spark,
//            @RequestParam(name ="conf", required = true) Double conf,
//            @RequestParam(name ="dry", required = true) Double dry,
//            @RequestParam(name ="gym", required = true) Double gym,
            Model m) throws ParseException {
        User u = ur.findByEmail(email);
        String name = u.getName();
        u.setPayInfo(payInfo);
        
        
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-DD");
        Date checkin = format.parse(checkDate);
        Date checkout = format.parse(outDate);
        u.setReserveFrom(checkin);
        u.setReserveTill(checkout);
        
        Room r = rmr.findById(roomId);
        
        r.setAvailability("no");
        rmr.save(r);
        HotelLog hl = new HotelLog();
        hl.setCustomerId(u.getId());
        hl.setHotelName(r.getCottageName());       
        hl.setReserveFrom(checkin);
        hl.setReserveTill(checkout);
        
        int checkinday = checkin.getDay();
        int checkoutday = checkout.getDay();
        int time = (checkoutday - checkinday);
        
        double additionalPayment = 0;
        if(as != null){
            additionalPayment += as;
        } 
        
        double payment = r.getPrice();
        double paymentBeforeHotel = payment + additionalPayment;
        System.out.println(payment + ".... "+ as);
        double paymentForAdmin = (paymentBeforeHotel * 0.20);
        System.out.println("admin " + paymentForAdmin);
        double paymentForHotel = paymentBeforeHotel - paymentForAdmin;
        System.out.println("hotel "+ paymentForHotel);
//        double paymentBeforeHotel = (payment + spark + conf + dry + gym);
//        
//        double paymentForHotel = paymentBeforeHotel - (paymentBeforeHotel * 0.20);
//        double paymentForAdmin = (paymentBeforeHotel * 0.20);
//        
        hl.setPaymentForAdmin(paymentForAdmin);
        hl.setPaymentForHotel(paymentForHotel);
        hl.setRoomId(roomId);
        
        u.setPayment(paymentBeforeHotel);
        u.setRoomId(roomId);
        
        String cname = r.getCottageName();
        Cottage c = cr.findByCottageName(cname);
        c.setPaymentRecieved(paymentForHotel);
        
        Reservation rsrv = new Reservation();
        rsrv.setRoomId(roomId);
        rsrv.setArrivalDate(checkin);
        rsrv.setDepartureDate(checkout);
        rsrv.setCustomerId(u.getId());
        
        rr.save(rsrv);
        ur.save(u);
        hr.save(hl);
        
        
            guest = "This room is booked by you for your guest!";
            smoke = "You have no need of a smoking zone!";
            upper = "Nothing specified!";
            park = "Nothing specified!";
          
        

        
        
        m.addAttribute("guest", guest);
        m.addAttribute("smoke", smoke);
        m.addAttribute("park", park);
        m.addAttribute("upper", upper);
        m.addAttribute("as", as);
//        m.addAttribute("spark", spark);
//        m.addAttribute("conf", conf);
//        m.addAttribute("dry", dry);
//        m.addAttribute("gym", gym);
        m.addAttribute("roomId", roomId);
        m.addAttribute("checkin", checkin);
        m.addAttribute("checkout", checkout);
        m.addAttribute("payInfo", payInfo);
        m.addAttribute("name", name);
        m.addAttribute("time", time);
        m.addAttribute("paymentBeforeHotel", paymentBeforeHotel);
        m.addAttribute("payment", payment);
        return "confirmationPage";
    }
    
    
    @RequestMapping(method = RequestMethod.GET, value = "/loginAsAdmin")
    public String loginAsAdmin(@RequestParam("email") String email, 
            Model m){
        User u = ur.findByEmail(email);
        String type = u.getType();
        if(type.equals("admin")){
            String name = u.getName();
            String payInfo = u.getPayInfo();
            double payment = u.getPayment();
            int id = u.getId();
            ArrayList<HotelLog> hl = hr.findAll();
           
            m.addAttribute("hotelLog", hl);
            return "adminPage";
        }
        return "adminPage";
    }
    @RequestMapping(method = RequestMethod.GET, value = "/loginAttempt")
    public String adminLogin(){
        return "loginAttempt";
    }
}
