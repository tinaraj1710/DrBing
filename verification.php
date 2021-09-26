<?php 
include 'app.php';
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1"/>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
	</head>
<body>
	<center>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
		</div>
	</nav>
	<div class="col-md-3"></div>
	<div class="col-md-6 well">
		<h3 class="text-primary">Payment Details</h3>
		<hr style="border-top:1px dotted #ccc;"/>
		<div class="col-md-3"></div>
		<div class="col-md-6">	
			<?php
				if(ISSET($_REQUEST['firstname']) && ISSET($_REQUEST['lastname']) && ISSET($_REQUEST['email'])){
			?>
				<h3><strong>You're ready to go!</strong></h3>
				<br />
				<h5>Hi, <?php echo $_REQUEST['firstname']." ".$_REQUEST['lastname']?><h5>
				<h5>Kindly confirm your payment from the mail sent<h5>
				<h5>Your payment will proceed after the confirmation<h5>
				<a class="btn btn-primary" href="https://<?php echo $_REQUEST['email']?>" target="_blank">Confirm Email</a>
			<?php
				}
			?>
		</div>
	</div>
	</center>
</body>
</html>