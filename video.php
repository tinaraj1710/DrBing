<?php 
include 'app.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Video Consultation</title>
  <!-- <link rel="stylesheet" href="vendor/bootstrap.min.css"> -->
  <link rel="stylesheet" href="index.css">
</head>
    <script src="https://static.opentok.com/v2/js/opentok.min.js"></script>
<script>
    $(document).ready(function(){
      $("#success-alert").hide();
      $("#appid").hide();
      $("#token").hide();
      $("#channel").hide();
      $('#insert').click(function() {
            $.ajax({
              type: "POST",
              url: "facialLandmarks.php",
              data: { name: "John" }
            });
    });
      $('#history').click(function() {
            $.get("response.php", function(data) {
              $("#med").html(data);
            });
    });
    });
</script>
<body>
<section id="services" class="services">
  <div class="container">
  	
      <div id="videos" class="row">
        <div id="subscriber" class="col-lg-6" style="width: 600px;
    height: 400px;"></div>
        <div id="publisher" class="col-lg-6" style="width: 600px;
    height: 400px;"></div>
    </div><br><br>
      <?php 
      if (isset($_SESSION['doctor'])){ ?>
      <button type="submit" class="btn btn-info btn-lg mr-10" name="Examine" value="Examine" id="insert">Examine</button>
      <!-- <button type="submit" class="btn btn-info btn-lg mr-10" name="history" value="history" id="history">View History</button> -->
      <a href="prescriptions.php"><button type="submit" class="btn btn-info btn-lg ml-10" name="prescribe" value="prescribe" id="prescribe">Prescribe</button></a>
    <?php } 
    else if (isset($_SESSION['user'])){ ?>
      <a href="payment.php"><button type="submit" class="btn btn-info btn-lg ml-10" name="prescribe" value="pay" id="pay">Pay</button></a>
    <?php }?>
    </div>
    <div id="med"></div>
  </section>
 <!--  <div class="container-fluid banner">
    <a style="color: rgb(255, 255, 255);fill: rgb(255, 255, 255);fill-rule: evenodd; position: absolute; right: 10px; top: 4px;"
      class="Header-link " href="https://github.com/AgoraIO-Community/AgoraWebSDK-NG/tree/master/Demo">
      <svg class="octicon octicon-mark-github v-align-middle" height="32" viewBox="0 0 16 16" version="1.1" width="32" aria-hidden="true"><path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z"></path></svg>
    </a>
  </div>

  <div id="success-alert" class="alert alert-success alert-dismissible fade show" role="alert">
    <strong>Congratulations!</strong><span> You can invite others join this channel by click </span><a href="" target="_blank">here</a>
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
    </button>
  </div> -->
  <!-- <div id="success-alert-with-token" class="alert alert-success alert-dismissible fade show" role="alert">
    <strong>Congratulations!</strong><span> Joined room successfully. </span>
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
    </button>
  </div>
  <div id="success-alert-with-token" class="alert alert-success alert-dismissible fade show" role="alert">
    <strong>Congratulations!</strong><span> Joined room successfully. </span>
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
    </button>
  </div> -->
  
   <!--  <section id="doctors" class="doctors">


  <div class="container">
    <div class="row">
      <div class="col-lg-6">
        <p id="local-player-name" class="player-name"><?php echo $_SESSION['user']; ?></p>
        <div id="local-player" class="player"></div>
      </div>
      <div class="w-100"></div>
      <div class="col-lg-6 mt-4 mt-lg-0">
        <div id="remote-playerlist"></div>
      </div>
    </div>
    <form id="join-form">
      <div class="row join-info-group">
          <div class="col-sm"> -->
            <!-- <p class="join-info-text">AppID</p> -->
            <!-- <input id="appid" type="text" placeholder="Enter App ID" required> -->
            <!-- <p class="tips">If you don`t know what is your appid, checkout <a href="https://docs.agora.io/en/Agora%20Platform/terms?platform=All%20Platforms#a-nameappidaapp-id">this</a></p> -->
          <!-- </div>
          <div class="col-sm"> --><!-- 
            <p class="join-info-text">Token(optional)</p> -->
            <!-- <input id="token" type="text" placeholder="Enter token"> -->
            <!-- <p class="tips">If you don`t know what is your token, checkout <a href="https://docs.agora.io/en/Agora%20Platform/terms?platform=All%20Platforms#a-namekeyadynamic-key">this</a></p> -->
          <!-- </div>
          <div class="col-sm"> -->
            <!-- <p class="join-info-text">Channel</p> -->
            <!-- <input id="channel" type="text" placeholder="Enter channel name" required> -->
            <!-- <p class="tips">If you don`t know what is your channel, checkout <a href="https://docs.agora.io/en/Agora%20Platform/terms?platform=All%20Platforms#channel">this</a></p> -->
          <!-- </div>
      </div>

      <div class="button-group">
        <button id="join" type="submit" class="btn btn-success btn">Join</button>
        <button id="leave" type="button" class="btn btn-primary btn" disabled onclick="Redirect();">Leave</button>
      </div>
    </form>
  </div> -->
  <!-- <input type="submit" class="button" name="insert" value="insert" /> -->
<!--   <form action="video.php" method="post">
    <input type="submit" name="someAction" value="GO" />
  </form> -->
  <script type="text/javascript" src="video.js"></script>
  <script src="vendor/jquery-3.4.1.min.js"></script>
  <script src="vendor/bootstrap.bundle.min.js"></script>
  <script type="text/javascript">
    function Redirect(){
      window.location.href = 'index.php';
    }
    
  </script>
</body>
</html>
