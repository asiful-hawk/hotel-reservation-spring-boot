/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rsrv.entity;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author Asif
 */
@Entity
@Table
public class HotelLog {
    @Id
    @Column
    int id;
    @Column
    String hotelName;
    @Column
    int roomId;
    @Column
    int customerId;
    @Column
    double paymentForHotel;
    @Column
    @Temporal(TemporalType.DATE)        
    Date reserveFrom;
    @Column
    @Temporal(TemporalType.DATE)  
    Date reserveTill;
    @Column
    Double paymentForAdmin;

    public Double getPaymentForAdmin() {
        return paymentForAdmin;
    }

    public void setPaymentForAdmin(Double paymentForAdmin) {
        this.paymentForAdmin = paymentForAdmin;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getHotelName() {
        return hotelName;
    }

    public void setHotelName(String hotelName) {
        this.hotelName = hotelName;
    }

    public int getRoomId() {
        return roomId;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public double getPaymentForHotel() {
        return paymentForHotel;
    }

    public void setPaymentForHotel(double paymentForHotel) {
        this.paymentForHotel = paymentForHotel;
    }

    public Date getReserveFrom() {
        return reserveFrom;
    }

    public void setReserveFrom(Date reserveFrom) {
        this.reserveFrom = reserveFrom;
    }

    public Date getReserveTill() {
        return reserveTill;
    }

    public void setReserveTill(Date reserveTill) {
        this.reserveTill = reserveTill;
    }
    
    
    
}
