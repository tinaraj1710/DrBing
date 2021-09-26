<?php 
include 'app.php';
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
                <div class="card-header">Presciption</div>

                <div class="card-body">
                        <form method="POST" action="prescriptionHandler.php">

                            <div class="form-group row">
                                <label for="email" class="col-md-4 col-form-label text-md-right">Doctor Name</label>

                                <div class="col-md-6">
                                    <?php  

                                        if (isset($_GET['error']) && $_GET['error'] == "emptyemail"){
                                        
                                    ?>

                                    <input id="email" type="email" name="email" class="form-control @error('email') is-invalid @enderror" required autocomplete="email">
                                    <span class="invalid-feedback" role="alert">
                                        <strong>Enter doctor's name</strong>
                                    </span>    
                                    <?php
                                            
                                        }
                                        else{
                                    ?>
                                            <input id="dname" type="dname" name="dname" class="form-control">
                                    <?php
                                        }
                                        
                                    ?>
                                    
                                </div>
                        </div>
                        <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label text-md-right">Patient Name</label>

                            <div class="col-md-6">
                                <?php  
                                    if (isset($_GET['error']) && $_GET['error'] == "emptypassword"){
                                ?>
                                <input id="password" type="password" name="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">
                                <span class="invalid-feedback" role="alert">
                                        <strong>Enter patient's name</strong>
                                </span>
                            <?php
                                    }
                            
                                    else{
                                ?>
                                        <input id="pname" type="pname" name="pname" class="form-control">
                                <?php
                                    }
                                
                            ?>
                                
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">Prescription List</label>
                            <div class="col-md-6">
                                
                                <input id="prescription" type="text" name="prescription" class="form-control">

                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">Lab Test</label>
                            <div class="col-md-6">
                                
                                <input id="prescription" type="text" name="prescription" class="form-control">

                            </div>
                        </div>
                        <div class="form-group row mb-0">
                            <div class="col-md-8 offset-md-4">
                                <button type="submit" name="prescribe" class="btn btn-primary">
                                    Prescribe
                                </button>

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