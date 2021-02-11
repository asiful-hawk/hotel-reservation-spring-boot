<%-- 
    Document   : admin
    Created on : Jan 28, 2021, 11:05:47 AM
    Author     : Asif
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <img src="https://i.ibb.co/g6SfwYR/admin.png"  style="height: 72px; width: 72px" alt="alt"/>
        <table class="table">

            <thead class="thead-dark">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Hotel Name</th>
                    <th scope="col">Room ID</th>
                    <th scope="col">Customer ID</th>
                    <th scope="col">Payment for Hotel</th>
                    <th scope="col">Payment for Admin</th>
                    <th scope="col">Reserved From</th>
                    <th scope="col">Reserved Till</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${hotelLog}" var="hl"> 
                <tr>
                    
                        <td>${hl.id}</td>
                        <td>${hl.hotelName}</td>
                        <td>${hl.roomId}</td>
                        <td>${hl.customerId}</td>
                        <td>${hl.paymentForHotel}</td>
                        <td>${hl.paymentForAdmin}</td>
                        <td>${hl.reserveFrom}</td>
                        <td>${hl.reserveTill}</td>   
                    
                </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
