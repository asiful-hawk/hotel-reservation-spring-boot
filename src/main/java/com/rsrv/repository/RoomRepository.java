/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rsrv.repository;

import com.rsrv.entity.Room;
import java.util.ArrayList;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author JEE
 */
@Repository
public interface RoomRepository extends CrudRepository<Room, Integer>{
    ArrayList<Room> findByLocation(String Location);
    Room findById(int id);
    
    
}
