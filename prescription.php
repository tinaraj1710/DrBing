<?php 
include 'app.php';
 ?>

<!DOCTYPE html>
<html>
<head>
	<title>Priscription FORM</title>
</head>
<body bgcolor="Lightskyblue">
	<center>
	<form method="GET">
		<h2><u>Prescription</u></h2>
			<tr>
				<td>Doctor NAME:</td>
				<td><input type="text" name="dname" placeholder="Doctor Name"size="70"></td>
			</tr>
			<tr>
				<td>Patient NAME:</td>
				<td><input type="text" name="pname" placeholder="Paitent Name" size="70"></td>
			</tr>
			
			<tr>
				<td>Gender of paitent:</td>
				<td><input type="radio" name="gender" value="male">MALE
					<input type="radio" name="gender" value="Female">Female</td>

			<tr>
				<td>Medicines along with doses:</td>
				<td>
					<table border="1" bgcolor="white">
						<tr>
							<th>SL.NO</th>
							<th>Medicine Name</th>
							<th>Quantity</th>
                                                        <th>Daily Dose</th>
                                                 </tr>
						<tr>
							<td>1</td>
							<td><input type="text" name="Medicines along with doses"></td>
                                                        <td><input type="text" name="Medicines along with doses"></td>
                                                        <td><input type="text" name="Medicines along with doses"></td>
							
						</tr>
						<tr>
							<td>2</td>
							
							<td><input type="text" name="Medicines along with doses"></td>
                                                        <td><input type="text" name="Medicines along with doses"></td>
                                                        <td><input type="text" name="Medicines along with doses"></td>
							
						</tr>
						<tr>
							<td>3</td>
							
							<td><input type="text" name="Medicines along with doses"></td>
                                                        <td><input type="text" name="Medicines along with doses"></td>
                                                        <td><input type="text" name="Medicines along with doses"></td>
							
						</tr>
						<tr>
							<td>4</td>
							
							<td><input type="text" name="Medicines along with doses"></td>
                                                        <td><input type="text" name="Medicines along with doses"></td>
                                                        <td><input type="text" name="Medicines along with doses"></td>
							
						</tr>
						<tr>
							<td>5</td>
							
							<td><input type="text" name="Medicines along with doses"></td>
                                                        <td><input type="text" name="Medicines along with doses"></td>
                                                        <td><input type="text" name="Medicines along with doses"></td>
							
						</tr>
						<tr>
							<td>6</td>
							
							<td><input type="text" name="Medicines along with doses"></td>
                                                        <td><input type="text" name="Medicines along with doses"></td>
                                                        <td><input type="text" name="Medicines along with doses"></td>
							
						</tr>



			
					</table>
				</td>
			</tr>

		</table><br>
		<tr>
			<td>Discription:</td>
			<td><textarea cols="60" rows="7"></textarea></td>
		</tr>
		<div>
			<input type="submit" name="submit">
		
		</div>

	</form>

</body>
</html>