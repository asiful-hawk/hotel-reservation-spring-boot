/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rsrv.repository;

import com.rsrv.entity.Cottage;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author Asif
 */
public interface CottageRepository extends CrudRepository<Cottage, Integer>{
    Cottage findByCottageName(String name);
}
