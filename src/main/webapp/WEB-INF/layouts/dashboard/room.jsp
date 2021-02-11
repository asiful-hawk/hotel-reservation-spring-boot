<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- card starts here -->
<div class="card-body">

    <div class="row">
        <div class="col">
            <div class="card-image">
                <img src="${roomInfo.img}" class="img-fluid rounded">
            </div>
        </div>
        <div class="col-md-7 d-flex justify-content-between">
            <div class="card-details">
                <h5 class="hotel-heading">${roomInfo.cottageName} <span class="text-danger" style="font-size: 12px;">4-5 star</span></h5>
                <p class="hotel-location small text-muted">${roomInfo.location}, in the city</p>

                <h6 class="city-name">${roomInfo.location}</h6>
                <p class="distance-from-city text-muted small">0.1 km to city center</p>

                <h5><span class="badge badge-success">8.8</span>Fabulous</h5>
                <p class="text-muted small">1,555 reviewer</p>

                <p class="tags badge badge-light">pool</p>
                <p class="tags badge badge-light">free parking</p>
                <p class="tags badge badge-light">restaurant</p>
                <p class="tags badge badge-light">bar</p>
            </div>
            <form action="/checkReserve" method="GET">
                <input type="hidden" name="roomId" value="${roomInfo.roomId}"/>
                <h4>${roomList.price}</h4>
                <h4>${message}</h4>
                <p class="text-muted small my-0">excluding taxes & fee</p>
                <p class="text-success small">&#x2713 Free cancellation</p>
                <button class="btn btn-outline-primary text-uppercase">Check Availability</button>
            </form>
        </div>
    </div>
                <hr>
    <div>
        <h4>At a Glance</h4>
        <div class="row">
            
            <div class="col">
                <h4>Key facts</h4>
                <ul>
                    
                    <li>This hotel has 200 rooms</li>
                    <li>This hotel is arranged over 8 floors</li>
                </ul>
                
                <ul>
                    <h6>Arriving/leaving</h6>
                    <p>77% of customers were happy with check-in</p>
                    <li>Check-in time 2 PM-11:30 PM</li>
                    <li>Check-out time is noon</li>
                    <li>Express check-in/out</li>
                </ul>
                
                <ul>
                    <h6>Restrictions related to your trip</h6>
                    <li>Bangladesh may have travel restrictions in place, including self-quarantine, due to COVID-19.</li> 
                    <p>Front desk staff will greet guests on arrival.</p>
                </ul>
                
                <ul>
                    <h6>Required at check-in</h6>
                    <li>Credit card, debit card, or cash deposit required for incidental charges</li>
                    <li>Government-issued photo ID may be required</li>
                    <li>Minimum check-in age is 18</li>
                </ul>
            </div>
            <hr>
            <div class="col">
                <h4>Travelling with others</h4>
                <ul>
                    <h6>Children</h6>
                    <li>One child stays free when occupying the parent or guardian's room, using existing bedding</li>
                </ul>
                
                <ul>
                    <h6>Pets</h6>
                    <li>
                        No pets or service animals allowed
                    </li>
                </ul>
                
                <ul>
                    <h6>Internet</h6>
                    <li>Free WiFi in public areas</li>
                    <li>Free WiFi in rooms</li>
                </ul>
            </div>
            <hr>
            <div class="col">
                <h4>Transport</h4>
                <ul>
                    <h6>Transfers</h6>
                    <li>Airport shuttle (available 24 hours)*</li>
                </ul>
                <ul>
                    <h6>Parking</h6>
                    <li>Free onsite valet parking</li>
                </ul>
            </div>
        </div>
    </div>
    <hr>
</div>
<!-- card ends here -->