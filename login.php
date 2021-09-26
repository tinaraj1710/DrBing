<?php

include 'app.php';

if (!isset($_SESSION['user']) && !isset($_SESSION['doctor'])){

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login</title>
</head>
<body>
    <section id="appointment" class="appointment section-bg">
    <div class="container pt-4" style="height: 66vh">
    <div class="row align-items-center justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Login</div>

                <div class="card-body">
                        <form method="POST" action="loginauth.php">

                            <div class="form-group row">
                                <div class="col-md-4 col-form-label text-md-right">
                                    <label class="form-check-label" for="radio">
                                            Are you
                                        </label>
                                </div>
                                <div class="col-md-4 offset-md-0">
                                    <?php  

                                        if (isset($_GET['error']) && $_GET['error'] == "emptyuser"){
                                        
                                    ?>
                                    <div class="form-check">
                                        
                                    <input class="form-check-input @error('user') is-invalid @enderror" required autocomplete="" type="radio" name="user" id="customer" value="1">
                                    <label class="form-check-label" for="remember">
                                        A Doctor
                                    </label>
                                    <br>
                                    <input class="form-check-input" type="radio" name="user" id="owner" value="2">
                                    <label class="form-check-label" for="remember">
                                        A User
                                    </label>
                                    <br>

                                    <span class="invalid-feedback" role="alert">
                                        <strong>Select a user type</strong>
                                    </span>
                                        
                                    <?php  
                                        }
                                        else{
                                    ?>
                                            <div class="form-check">
                                        
                                            <input class="form-check-input" type="radio" name="user" id="customer" value="1">
                                            <label class="form-check-label" for="remember">
                                                A User
                                            </label>
                                            
                                          
                                            <br>
                                            <input class="form-check-input" type="radio" name="user" id="driver" value="2">
                                            <label class="form-check-label" for="remember">
                                                A Doctor
                                            </label>
                                            <br>
                                    <?php
                                        }

                                    ?>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="email" class="col-md-4 col-form-label text-md-right">E-Mail Address</label>

                                <div class="col-md-6">
                                    <?php  

                                        if (isset($_GET['error']) && $_GET['error'] == "emptyemail"){
                                        
                                    ?>

                                    <input id="email" type="email" name="email" class="form-control @error('email') is-invalid @enderror" required autocomplete="email">
                                    <span class="invalid-feedback" role="alert">
                                        <strong>Enter an email address</strong>
                                    </span>
                                    <?php  
                                        }
                                        else if (isset($_GET['error']) && $_GET['error'] == "invalidemail"){
                                        
                                    ?>

                                    <input id="email" type="email" name="email" class="form-control @error('email') is-invalid @enderror" required autocomplete="email">
                                    <span class="invalid-feedback" role="alert">
                                        <strong>Email address not registered</strong>
                                    </span>     
                                    <?php
                                            
                                        }
                                        else{
                                    ?>
                                            <input id="email" type="email" name="email" class="form-control">
                                    <?php
                                        }
                                        
                                    ?>
                                    
                                </div>
                        </div>
                        <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label text-md-right">Password</label>

                            <div class="col-md-6">
                                <?php  
                                    if (isset($_GET['error']) && $_GET['error'] == "emptypassword"){
                                ?>
                                <input id="password" type="password" name="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">
                                <span class="invalid-feedback" role="alert">
                                        <strong>Enter a password</strong>
                                </span>
                                <?php 
                                } 
                                    else if (isset($_GET['error']) && $_GET['error'] == "invalidpassword"){
                                ?>
                                <input id="password" type="password" name="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">
                                <span class="invalid-feedback" role="alert">
                                        <strong>Incorrect password!</strong>
                                </span>
                            <?php
                                    }
                            
                                    else{
                                ?>
                                        <input id="password" type="password" name="password" class="form-control">
                                <?php
                                    }
                                
                            ?>
                                
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-md-6 offset-md-4">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="remember" id="remember">

                                    <label class="form-check-label" for="remember">
                                        Remember Me
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-8 offset-md-4">
                                <button type="submit" name="login-submit" class="btn btn-primary">
                                    Login
                                </button>

                                    <a class="btn btn-link" href="#">
                                        Forgot Your Password?
                                    </a>
                                    <br>
                                    <a class="btn btn-link" href="user.register.php">
                                        Don't have an account?
                                    </a>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>

</div>
<div id="footer"></div>
    </body>
</html>

<?php

}

else if (isset($_SESSION['user'])){
?>
    <script type="text/javascript">
    window.location.href = 'index.php';
    </script>
<?php
}

?>
