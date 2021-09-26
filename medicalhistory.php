<?php
include 'app.php';
?>

<!DOCTYPE html>
<html>
  <head>
    <title>Medical History</title>
  </head>
  <body>
    <section id="services" class="services">
    <div class="container">
      <div class="row col-md-6 col-md-offset-3">
        <div class="panel panel-primary">
          <div class="panel-heading text-center">
            <h1>Previous History</h1>
          </div>
          <div class="panel-body">
            <form action="connect.php" method="post">
              <div class="form-group">
                <label for="Name">Name</label>
                <input
                  type="text"
                  class="form-control"
                  id="Name"
                  name="name"
                />
              
              <div class="form-group">
                <label for="Gender">Gender</label>
                <div>
                  <label for="male" class="radio-inline"
                    ><input
                      type="radio"
                      name="gender"
                      value="m"
                      id="male"
                    />Male</label
                  >
                  <label for="female" class="radio-inline"
                    ><input
                      type="radio"
                      name="gender"
                      value="f"
                      id="female"
                    />Female</label
                  >
                  <label for="others" class="radio-inline"
                    ><input
                      type="radio"
                      name="gender"
                      value="o"
                      id="others"
                    />Others</label
                  >
                </div>
              </div>
              <div class="form-group">
                <label for="Age">Age</label>
                <input
                  type="text"
                  class="form-control"
                  id="Age"
                  name="age"
                />
              </div>
              <div class="form-group">
                <label for="Medical History">Medical History</label>
                <input
                  type="text"
                  class="form-control"
                  id="Medical History"
                  name="medicalhistory"
                />

                <br>
                <div class="form-group"> 
                    <button type="submit" name="login-submit" class="btn btn-info">
                  Submit
                </button>
        
</div>
  </body>
</html>
