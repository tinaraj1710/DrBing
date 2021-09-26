<?php

include 'app.php';

if (!isset($_SESSION['user']) && !isset($_SESSION['doctor']) ){

?>

<!DOCTYPE html>
<html lang="en">
<head>

    <!-- Page Title -->
    <title>Doctor Registration</title>
    
</head>
<body>
    <div class="container pt-4" style="height: 66vh">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Doctor Registration</div>

                <div class="card-body">
                        <form method="POST" action="DoctorRegController.php" id="DReg" name="DReg">

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
                                        else if (isset($_GET['error']) && $_GET['error'] == "invalidemail"){
                                        
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

                                        if ((isset($_GET['error']) && $_GET['error'] == "emptyphone") || (isset($_GET['phone']) && $_GET['phone'] == '')){
                                        
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
                                <button type="submit" name="dreg" id="dregb" class="btn btn-primary">
                                    Register
                                </button>

                                    <a class="btn btn-link" href="login.php">
                                        Already Registered?
                                    </a>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>

    <div id="footer"></div>
    </div>
    <script type="text/javascript" src="validdoctorreg.js"></script>
</body>
</html>

<?php
}
else if (isset($_SESSION['user'])){
?>
    <script type="text/javascript">
    window.location.href = 'newuser.php';
    </script>
<?php
}

else if (isset($_SESSION['doctor'])){
?>
    <script type="text/javascript">
    window.location.href = 'doctor.php';
    </script>
<?php
}

else if (isset($_SESSION['user'])){
?>
    <script type="text/javascript">
    window.location.href = '#';
    </script>
<?php
}
?>