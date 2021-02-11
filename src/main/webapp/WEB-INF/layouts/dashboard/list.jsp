<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<div>
    <hr>
    <div class="row">
        <div class="col-md-10">
            <input type="text" class="form-control" placeholder="Gazipur..">
        </div>
        <div class="col-md-2 text-center">
            <input type="submit" value="Search" class="btn btn-primary px-5">
        </div>
    </div>
    <hr>

    <!-- starting the 2 column here -->
    <div class="row">

        <!-- sidebar -->
        <div class="col-md-3">
            

            <h3>Popular Areas</h3>
            <ul>
                <li><a href="#">Gazipur</a></li>
                <li><a href="#">Cox's Bazar</a></li>
                <li><a href="#">Sylhet</a></li>
            </ul>
        </div>
        <!-- card top heading -->
        <div class="col-md-9">
            <h2>Find your location</h2>
            <p>here</p>

            <!-- card starts here -->
            <div class="card-body">
                <c:forEach var="roomList" items="${room}">
                    <div class="row">
                        <div class="col">
                            <div class="card-image">
                                <img src="${roomList.img}" class="img-fluid rounded">
                            </div>
                        </div>
                        <div class="col-md-7 d-flex justify-content-between">
                            <div class="card-details">
                                <h5 class="hotel-heading">${roomList.cottageName} <span class="text-danger" style="font-size: 12px;">4-5 star</span></h5>
                                <p class="hotel-location small text-muted">${roomList.location}, in the city</p>

                                <h6 class="city-name">${roomList.location}</h6>
                                <p class="distance-from-city text-muted small">0.1 km to city center</p>

                                <h5><span class="badge badge-success">8.8</span>Fabulous</h5>
                                <p class="text-muted small">1,555 reviewer</p>

                                <p class="tags badge badge-light">pool</p>
                                <p class="tags badge badge-light">free parking</p>
                                <p class="tags badge badge-light">restaurant</p>
                                <p class="tags badge badge-light">bar</p>
                            </div>
                            <div class="buy-detail text-right">
                                <form action="/room" method="GET">
                                    <input type="hidden" name="roomId" value="${roomList.roomId}"/>
                                    <h4>${roomList.price}</h4>
                                    <p class="text-muted small my-0">excluding taxes & fee</p>
                                    <p class="text-success small">&#x2713 Free cancellation</p>
                                    <button class="btn btn-outline-primary text-uppercase">Check Availability</button>
                                </form>
                            </div>
                        </div>
                    </div>
                                    <hr>
                </c:forEach>

            </div>
        </div>
    </div>
</div>
    <!-- card ends here -->