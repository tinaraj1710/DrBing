<?php
include 'app.php';
?>

  <section class="colored-section" id="title">

    <div class="container-fluid background" >
      
      <!-- Nav Bar -->

      <nav class="navbar navbar-expand-lg navbar-dark">

        <a class="navbar-brand" href="">Dr Bing</a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">

          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="#footer">Contact</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="services.html">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="book.html">Book Appointments</a>
            </li>
          </ul>

        </div>
      </nav>


      <!-- Title -->

      <div class="row">
          <img src="images/doc.jpg" alt="" style="margin: 50px 50px 50px 50px;">

        <div class="col-lg-6" style="text-align: left;">
          <h3 class="big-heading" style="text-align: inherit;">Consult the doc!</h3>
        
          <form action="/action_page.php">
            <label for="w3review">Tell us your symptom</label>
            <textarea id="w3review" name="w3review" rows="4" cols="50">
              
              </textarea>
              <br><br>
              <label for="fname">Mobile Number:</label><br>
              <input type="text" id="fname" name="fname"><br> <br>
              <button type="button" onclick="location.href='book.html'" class="btn btn-outline-light btn-lg download-button"> Book My Appointment</button>
            </form>
        </div>
     </div>
    </div>
  </section>

<div id="footer"></div>
