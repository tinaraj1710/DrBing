<?php
require_once "db.inc.php";

$error = '';

if (isset($_POST['prescribe'])){
        if ($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST['prescribe'])){

            $dname = trim($_POST['dname']);
            $pname = trim($_POST['pname']);
            $prescription = trim($_POST['prescription']);
            if (empty($dname)){
                $error .= '<p class="error">Please enter password</p>';
                header("Location: login.php?error=emptyemail");
                exit();
            }
            if (empty($pname)){
                header("Location: login.php?error=emptypassword");
                $error .= '<p class="error">Please enter password</p>';
                exit();
            }
            if (empty($error)){
                $insert = "INSERT INTO prescriptions(dname, pname, prescription) VALUES ('$dname', '$pname', '$prescription')";

                if(mysqli_query($conn, $insert)){
                    header("Location: index.php"); 
                }
                else{
                    echo mysqli_error($conn);
                }
                
            }
            else{
                echo $error;
            }
        }
}


?>