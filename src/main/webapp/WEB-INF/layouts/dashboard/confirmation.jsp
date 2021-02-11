<%-- 
    Document   : confirmation
    Created on : Jan 19, 2021, 5:07:24 PM
    Author     : JEE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm your Reservation</title>
    </head>
    <body>
        <h3>Booking Confirmed</h3>
    <center>
        <div>
            <img src="https://i.ibb.co/M2sxdNz/ty.png" style="height: 72px; width: 72px" alt="alt"/>
        </div>
    </center>
    <div class="row">
        <blockquote class="blockquote text-center">
            <p class="mb-0">We are please to inform you that your booking has been confirmed.</p>
        </blockquote>

        <hr>
        <table class="table table-borderless">
            <tr>
                <th>Special Requests</th>
                <th>Details</th>
            </tr>
            <tr>
                <td>Initial Room Price</td>
                <td>Guest</td>
                <td>Smoking Zone</td>
                <td>Parking Area</td>
                <td>Additional Service Charge</td>

            </tr>
            <tr>
            <td>${payment}</td>
            <td>${guest}</td>
            <td>${smoke}</td>
            <td>${park}</td>
            <td>${as}</td>
          
            </tr>

        </table>

        <div class="col">
            <center>
                <table class="table table-borderless">
                    <thead class="thead-dark">
                        <tr>

                            <th>Name</th>
                            <th>Total Stay duration</th>
                            <th>Check-in Date</th>
                            <th>Check-out Date</th>
                            <th>Payment Info</th>
                            <th>Room id</th>
                            <th>Total Bill</th>

                        </tr>
                    </thead>
                    <tbody>
                        <tr>

                            <td>${name}</td>
                            <td>${time} Day(s)</td>
                            <td>${checkin}</td>
                            <td>${checkout}</td>
                            <td>${payInfo}</td>
                            <td>${roomId}</td>
                            <td>${paymentBeforeHotel} TK</td>

                        </tr>
                    </tbody>
                </table>
            </center>
        </div>

    </div>
</body>
</html>
