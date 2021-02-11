<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<form class="form-signin" action="/loginAsUser" method="GET">
    <img src="img/logo.png"  alt="brand image" class="img-fluid">
   
    <h1 class="h3 mb-3 font-weight-normal">This room is avaliable to rent, Please sign in to continue with the reservation process</h1>
    <hr>
    <label for="inputEmail" class="sr-only">Email address</label>
    <input type="email" name="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
    <label for="inputPassword" class="sr-only">Password</label>
    <input type="password" name="pass" id="inputPassword" class="form-control" placeholder="Password" required>
    <div class="checkbox mb-3">
        <label>
            <input type="checkbox" value="remember-me"> Remember me
        </label>
    </div>
    <input type="hidden" style="display: hidden" name="roomId" value="${roomId}"/>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
</form>


