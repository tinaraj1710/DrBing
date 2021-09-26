<?php 

include 'app.php';

 ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- Page Title -->
    <title>Registration</title>

    <!-- Favicon -->
    <!-- <link href="img/dove.png" rel="icon" type="image/png"> -->

    <!-- Scripts -->
    <!-- <script src="js/app.js" defer></script> -->
    <!-- <script src="jquery/jquery-3.4.1.min.js"></script> -->

    <!-- Fonts -->
    <!-- <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
    <link href="css/all.min.css" rel="stylesheet"> -->

    <!-- Styles -->
    <!-- <link href="css/app.css" rel="stylesheet">
    <link href="css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script> -->


    <!-- <script> 
            $(function(){
              // $("#header").load("header.html"); 
              $("#footer").load("footer.php"); 
            });

            /*function sendOTP() {
                $(".error").html("").hide();
                var number = $("#phone").val();
                if (number.length == 10 && number != null) {
                    var input = {
                        "mobile_number" : number,
                        "action" : "send_otp"
                    };
                    $.ajax({
                        url : 'otp.php',
                        type : 'POST',
                        data : input,
                        success : function(response) {
                            $(".container").html(response);
                        }
                    });
                } else {
                    $(".error").html('Please enter a valid number!')
                    $(".error").show();
                }
            }

            function verifyOTP() {
                $(".error").html("").hide();
                $(".success").html("").hide();
                var otp = $("#mobileOtp").val();
                var input = {
                    "otp" : otp,
                    "action" : "verify_otp"
                };
                if (otp.length == 6 && otp != null) {
                    $.ajax({
                        url : 'otp.php',
                        type : 'POST',
                        dataType : "json",
                        data : input,
                        success : function(response) {
                            $("." + response.type).html(response.message)
                            $("." + response.type).show();
                        },
                        error : function() {
                            alert("ss");
                        }
                    });
                } else {
                    $(".error").html('You have entered wrong OTP.')
                    $(".error").show();
                }
            }*/


    </script> -->
</head>
<body>
    <div id="app">

        <div class="container pt-4" style="height: 66vh">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Register</div>

                <div class="card-body">
                        <form method="POST" action="UserRegController.php" id="user-reg" name="user-reg" >

                        <div class="form-group row">
                                <label for="name" class="col-md-4 col-form-label text-md-right">Name</label>

                                <div class="col-md-6">
                                    <?php  

                                        if ((isset($_GET['error']) && $_GET['error'] == "emptyname") || (isset($_GET['name']) && $_GET['name']=='')){
                                    ?>

                                    <input id="name" type="text" name="name" class="form-control @error('name') is-invalid @enderror" autocomplete="name">
                                    <span class="invalid-feedback" role="alert">
                                        <strong>Name cannot be empty</strong>
                                    </span>
                                    <?php 
                                        }
                                        else if (isset($_GET['error']) && $_GET['error'] == "invalidname"){
                                    ?>

                                    <input id="name" type="text" name="name" class="form-control @error('name') is-invalid @enderror" autocomplete="name">
                                    <span class="invalid-feedback" role="alert">
                                        <strong>Enter a valid name</strong>
                                    </span>     
                                    <?php
                                        }
                                        else{
                                    ?>
                                        <input id="name" type="text" name="name" class="form-control" value="<?php if(isset($_GET['name'])){ echo $_GET['name'];} ?>">
                                    <?php
                                        }
                                        
                                    ?>
                                    
                                </div>
                        </div>

                        <div class="form-group row">
                                <label for="email" class="col-md-4 col-form-label text-md-right">E-Mail Address</label>

                                <div class="col-md-6">
                                    <?php  

                                        if ((isset($_GET['error']) && $_GET['error'] == "emptyemail") || (isset($_GET['email']) &&$_GET['email']=='')){
                                    ?>

                                    <input id="email" type="email" name="email" class="form-control @error('email') is-invalid @enderror"autocomplete="email">
                                    <span class="invalid-feedback" role="alert">
                                        <strong>Enter an email address</strong>
                                    </span>
                                    <?php  
                                        }
                                        else if (isset($_GET['error']) && ($_GET['error'] == "invalidemail" || $_GET['error'] == "emailTaken") ){
                                        
                                    ?>

                                    <input id="email" type="email" name="email" class="form-control @error('email') is-invalid @enderror" autocomplete="email">
                                    <span class="invalid-feedback" role="alert">
                                        <strong>Email address already registered</strong>
                                    </span>     
                                    <?php
                                            
                                        }
                                        else{
                                    ?>
                                            <input id="email" type="email" name="email" class="form-control" value="<?php if(isset($_GET['email'])){ echo $_GET['email'];} ?>">
                                    <?php
                                        }
                                        
                                    ?>
                                    
                                </div>
                        </div>

                           <div class="form-group row">
                                <label for="phone" class="col-md-4 col-form-label text-md-right">Phone</label>

                                <div class="col-md-6">
                                    <?php  

                                        if ((isset($_GET['error']) && $_GET['error'] == "emptyphone") || (isset($_GET['phone']) &&$_GET['phone'] == '')){
                                        
                                    ?>

                                    <input id="phone" type="text" name="phone" class="form-control @error('phone') is-invalid @enderror" autocomplete="phone">
                                    <span class="invalid-feedback" role="alert">
                                        <strong>Enter your mobile number</strong>
                                    </span>
                                    <?php 
                                        }
                                        else if (isset($_GET['error']) && $_GET['error'] == "invalidphone"){
                                        
                                    ?>

                                    <input id="phone" type="text" name="phone" class="form-control @error('phone') is-invalid @enderror" autocomplete="phone">
                                    <span class="invalid-feedback" role="alert">
                                        <strong>Enter a valid phone number</strong>
                                    </span>     
                                    <?php
                                            
                                        }
                                        else{
                                    ?>
                                            <input id="phone" type="text" name="phone" class="form-control" value="<?php if(isset($_GET['phone'])){ echo $_GET['phone'];} ?>">
                                    <?php
                                        }
                                        
                                    ?>
                                    
                                </div>
                        </div>

                        <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label text-md-right">Password</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control" name="pwd"><!--  @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">
 -->
                                   <!--  <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
 -->                            </div>
                        </div>

                        <div class="form-group row">
                                <label for="conpassword" class="col-md-4 col-form-label text-md-right">Confirm Password</label>

                                <div class="col-md-6">
                                    <?php  

                                        if (isset($_GET['error']) && $_GET['error'] == "passwordCheck" ){
                                        
                                    ?>

                                    <input id="conpassword" type="password" name="cpwd" class="form-control @error('cpwd') is-invalid @enderror" autocomplete="">
                                    <span class="invalid-feedback" role="alert">
                                        <strong>Passwords do not match</strong>
                                    </span>    
                                    <?php
                                            
                                        }
                                        else{
                                    ?>
                                            <input id="cpwd" type="password" name="cpwd" class="form-control">
                                    <?php
                                        }
                                        
                                    ?>
                                    
                                </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-8 offset-md-4">
                                <button type="submit" name="registersub" id="registersub" class="btn btn-primary">
                                    Register
                                    
                                </div>

                        </div>

            

                        
                        <div class="form-group row mb-0">
                            <div class="col-md-8 offset-md-4">
                                <!-- <button type="submit" name="registersub" id="registersub" class="btn btn-primary">
                                    Get OTP!
                                </button> -->

                                    <a class="btn btn-link" href="login.php">
                                    Already Registered?
                                    </a>
                            </div>
                        </div>

                    </form>
                </div>
                <!-- <div class="error">hi</div>
                    <div class="success"></div>
                    <form id="frm-mobile-verification">
                        <div class="form-row">
                            <label>OTP is sent to Your Mobile Number</label>        
                        </div>

                        <div class="form-row">
                            <input type="number"  id="mobileOtp" class="form-input" placeholder="Enter the OTP">        
                        </div>

                        <div class="row">
                            <input id="verify" type="button" class="btnVerify" value="Verify" onClick="verifyOTP();">       
                        </div>
                    </form> -->
                    </form> 
            </div>
        </div>
    </div>

    <div id="footer"></div>
    </div>
</body>
</html>

