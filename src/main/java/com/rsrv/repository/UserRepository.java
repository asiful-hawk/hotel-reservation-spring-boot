/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rsrv.repository;

import com.rsrv.entity.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Asif
 */
@Repository
public interface UserRepository extends CrudRepository<User, Integer>{
    User findByEmailAndPassword(String email, String password);
    User findByEmail(String email);
}
