<head>
    <!doctype html>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.79.0">
<title>Checkout example · Bootstrap v5.0</title>

<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/checkout/">



<!-- Bootstrap core CSS -->
<link href="/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

<!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.0/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.0/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.0/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">


<style>
    .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
    }

    @media (min-width: 768px) {
        .bd-placeholder-img-lg {
            font-size: 3.5rem;
        }
    }
</style>


<!-- Custom styles for this template -->
<link href="form-validation.css" rel="stylesheet">
</head>


<div class="" >
    <main>
        <div class="py-5 text-center" >

            <h2>Checkout form</h2>
            <p class="lead">Check your profile information. Edit if necessary</p>
        </div>
        <form class="needs-validation" method="GET" action="/cPage">
            <div class="row g-3">
                <div class="col-md-5 col-lg-4 order-md-last">
                    <h3 name="roomId" value="${rid}"> For room ${rid} </h3>
                    <input type="hidden" name="roomId" value="${rid}"/>
                    <div class="input-group">
                        <input type="text" class="form-control" name="promo" placeholder="Promo code">
                    </div>
                    <hr>
                    <div>
                        <p>caution: this is just a preview of your selected room</p>
                        <img src="${roomImg}" style="height: 300px; width: 300px" alt="alt"/>
                        <hr>
                        <h6>${roomPrice} TK</h6>
                        
                        <h6>Addition charges will apply upon selection</h6>
                    </div>
                        <hr>
                </div>
                <div class="col-md-7 col-lg-8">
                    <h4 class="mb-3">Billing Information <i class="fa fa-info-circle" aria-hidden="true"></i></h4>

                    <div class="row g-3">
                        <div class="col-sm-6">
                            <label for="firstName" class="form-label">Name</label>
                            <input type="text" class="form-control" id="firstName" name="name" placeholder="" value="${uname}" required>
                            <div class="invalid-feedback">
                                Edit if necessary.
                            </div>
                        </div>


                        <div class="col-sm-6">
                            <label for="email" class="form-label">Email <i class="fa fa-envelope" aria-hidden="true"></i><span class="text-muted">(Optional)</span></label>
                            <input type="email" class="form-control" name="email" id="email" value="${uemail}">
                            <div class="invalid-feedback">
                                Please enter a valid email address for shipping updates.
                            </div>
                        </div>
                        <div class="form-group tm-form-group tm-form-group-pad tm-form-group-3">
                            <label for="inputCheckIn">Check In Date <i class="fa fa-calendar" aria-hidden="true"></i></label>
                            <input type="date" class="form-control" id="inputCheckIn" name="checkin" placeholder="Check In">
                        </div>
                        <div class="form-group tm-form-group tm-form-group-pad tm-form-group-3">
                            <label for="inputCheckOut">Check Out Date <i class="fa fa-calendar" aria-hidden="true"></i></label>
                            <input type="date" class="form-control" name="checkout" id="inputCheckOut" placeholder="Check Out">
                        </div>
                    </div>
                    <br><br>
                    <hr>

                    <div>
                        <div>
                            <h4>Guest and Room Details <i class="fa fa-bed" aria-hidden="true"></i></h4>
                            <div class="form-check">
                                <input id="mainGuest" name="guest" value="mainGuest" type="radio" class="form-check-input">
                                <label class="form-check-label" for="mainGuest">I am the guest <i class="fa fa-male" aria-hidden="true"></i></label>
                            </div>
                            <div class="form-check">
                                <input id="someone" name="guest" value="someone" type="radio" class="form-check-input">
                                <label class="form-check-label" for="someone">Booking for someone else <i class="fa fa-user-plus" aria-hidden="true"></i></label>
                            </div>
                            <hr>
                            <h5>Smoking Zone </h5>
                            <div class="form-check">
                                <input id="somke"  name="somke" value="ysmoke" type="radio" class="form-check-input" >
                                <label class="form-check-label" for="somke">Smoking Zone <i class="fa fa-exclamation" aria-hidden="true"></i></label>
                            </div>
                            <div class="form-check">
                                <input id="nonSmoke" name="smoke" value="nonSmoke" type="radio" class="form-check-input" >
                                <label class="form-check-label" for="nonSmoke">Non-Smoking Zone <i class="fa fa-ban" aria-hidden="true"></i></label>
                            </div>
                            <hr>
                            <h5>Special Requests <i class="fa fa-spinner" aria-hidden="true"></i></h5>
                            <p>This is not guranteed</p>
                            <div class="form-check">
                                <input id="upper" name="upper" value="up" type="checkbox" class="form-check-input" >
                                <label class="form-check-label" for="upper">I would like an upper level room<i class="fa fa-caret-square-o-up" aria-hidden="true"></i></label>
                            </div>
                            <div class="form-check">
                                <input id="park" name="park" value="prk" type="checkbox" class="form-check-input">
                                <label class="form-check-label" for="park">I would like a parking area <i class="fa fa-car" aria-hidden="true"></i></label>
                            </div>
                        </div>
                        <hr>
                        <div>
                            <h5>Additional Services <i class="fa fa-cogs" aria-hidden="true"></i></i></h5>
                            <div class="form-check">
                                <input id="spark" name="as" value="100" type="checkbox" class="form-check-input">
                                <label class="form-check-label" for="spark">Special Parking Area (100tk)</label>
                            </div> 
                            <div class="form-check">
                                <input id="conf" name="as" value="1000" type="checkbox" class="form-check-input">
                                <label class="form-check-label" for="conf">Conference Rooms (1000tk)</label>
                            </div>                           
                            
                            <div class="form-check">
                                <input id="dry" name="as" value="150" type="checkbox" class="form-check-input" >
                                <label class="form-check-label" for="dry">Dry cleaning, laundry service (150tk)</label>
                            </div>
                            <div class="form-check">
                                <input id="gym" name="as" value="200" type="checkbox" class="form-check-input" >
                                <label class="form-check-label" for="gym">Gym (200tk)</label>
                            </div>
                            
                        </div>

                        <hr>

                        <div class="my-3">
                            <h4 class="mb-3"><i class="fa fa-credit-card-alt" aria-hidden="true"></i>Payment Information</h4>
                            <div class="form-check">
                                <input id="credit" name="paymentMethod" type="radio" class="form-check-input" checked >
                                <label class="form-check-label" for="credit">Credit card <i class="fa fa-credit-card" aria-hidden="true"></i></label>
                            </div>
                            <div class="form-check">
                                <input id="debit" name="paymentMethod" type="radio" class="form-check-input" >
                                <label class="form-check-label" for="debit">Debit card <i class="fa fa-cc-visa" aria-hidden="true"></i></label>
                            </div>
                            <div class="form-check">
                                <input id="paypal" name="paymentMethod" type="radio" class="form-check-input" >
                                <label class="form-check-label" for="paypal">PayPal <i class="fa fa-cc-paypal" aria-hidden="true"></i></label>
                            </div>
                        </div>

                        <div class="row gy-3">
                            <div class="col-md-6">
                                <label for="cc-name" class="form-label">Name on card</label>
                                <input type="text" value="${uname}" class="form-control" id="cc-name" placeholder="" required>
                                <small class="text-muted">Full name as displayed on card</small>
                                <div class="invalid-feedback">
                                    Name on card is required
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label for="cc-number" class="form-label">Credit card number</label>
                                <input name="payInfo" type="text" class="form-control" id="cc-number" placeholder="" required>
                                <div class="invalid-feedback">
                                    Credit card number is required
                                </div>
                            </div>

                            <div class="col-md-3">
                                <label for="cc-expiration" class="form-label">Expiration</label>
                                <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
                                <div class="invalid-feedback">
                                    Expiration date required
                                </div>
                            </div>

                            <div class="col-md-3">
                                <label for="cc-cvv" class="form-label">CVV</label>
                                <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
                                <div class="invalid-feedback">
                                    Security code required
                                </div>
                            </div>
                        </div>

                        <hr class="my-4">

                        <button class="w-100 btn btn-primary btn-lg" type="submit">Confirm Reservation</button>

                    </div>
                </div>
            </div>
        </form>
    </main>
</div>


<script src="/docs/5.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

<script src="form-validation.js"></script>