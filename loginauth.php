<?php
require_once "db.inc.php";

$error = '';

if (isset($_POST['login-submit'])){
        if ($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST['login-submit'])){

            if (empty($_POST['user'])){

                header("Location: login.php?error=emptyuser");
                exit();

            }

            $email = trim($_POST['email']);
            $password = trim($_POST['password']);
            $usertype = trim($_POST['user']);
            if (empty($email)){
                $error .= '<p class="error">Please enter password</p>';
                header("Location: login.php?error=emptyemail");
                exit();
            }
            if (empty($password)){
                header("Location: login.php?error=emptypassword");
                $error .= '<p class="error">Please enter password</p>';
                exit();
            }
            echo $error;
            if (empty($error)){
                if ($usertype == '1'){
                    $result = mysqli_query($conn,"SELECT id, name, password FROM users WHERE email = '$email'");
                    $row = mysqli_fetch_array($result);
                    if (empty($row)){
                        header("Location: login.php?error=invalidemail");
                    }
                    else{
                        if (password_verify($password, $row['password'])){
                            session_start();
                            $_SESSION["user"] = $row['name'];
                            $_SESSION['user_id'] = $row['id'];
                            echo 'in';
                            header("Location: index.php");
                        }
                        else{
                            header("Location: login.php?error=invalidpassword");
                        }
                    }
                }
                elseif ($usertype == '2') {
                    $result = mysqli_query($conn,"SELECT name, password FROM doctors WHERE email = '$email'");
                    $row = mysqli_fetch_array($result);
                    if (empty($row)){
                        header("Location: login.php?error=invalidemail");
                    }
                    else{
                        if (password_verify($password, $row['password'])){
                            session_start();
                            $_SESSION['doctor'] = $row['name'];
                            $_SESSION['doctor_id'] = $row['id'];
                            header("Location: index.php");
                        }
                        else{
                            header("Location: login.php?error=invalidpassword");
                        }
                    }
                }
                
            }
        }
}


?>