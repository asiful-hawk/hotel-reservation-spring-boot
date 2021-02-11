/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rsrv.repository;

import com.rsrv.entity.Discounts;
import java.util.Date;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Asif
 */
@Repository
public interface DiscountController {
    Discounts findByDiscountDate(Date date);
}
