/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rsrv.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author JEE
 */
@Entity
@Table(name = "cottage")
public class Cottage {
    int cottageId;
    String cottageName;
    int totalRooms;
    Double paymentRecieved;
    String location;

    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cottageId")
    public int getCottageId() {
        return cottageId;
    }
    public void setCottageId(int cottageId) {
        this.cottageId = cottageId;
    }

    @Column(name = "cottageName")
    public String getCottageName() {
        return cottageName;
    }

    public void setCottageName(String cottageName) {
        this.cottageName = cottageName;
    }

    @Column(name = "totalRooms")
    public int getTotalRooms() {
        return totalRooms;
    }

    public void setTotalRooms(int totalRooms) {
        this.totalRooms = totalRooms;
    }

    @Column(name = "paymentRecieved")
    public Double getPaymentRecieved() {
        return paymentRecieved;
    }

    public void setPaymentRecieved(Double paymentRecieved) {
        this.paymentRecieved = paymentRecieved;
    }

    @Column(name = "location")
    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }
    
    
}
