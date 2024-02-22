<?php
    require_once "../admin/account/database.php";

    $username = $password = "";
    $username_err = $password_err = $login_err = "";

    if(isset($_POST["girisyap"])){
        if(empty(trim($_POST["username"]))){
            $username_err = "Please enter username.";
        } else{
            $username = trim($_POST["username"]);
        }
        
        // Check if password is empty
        if(empty(trim($_POST["password"]))){
            $password_err = "Please enter your password.";
        } else{
            $password = trim($_POST["password"]);
        }
        
        // Validate credentials
        if(empty($username_err) && empty($password_err)){
            // Prepare a select statement
            $sql = "SELECT users_id, username, password FROM users_account WHERE username = :username";
            
            if($stmt = $pdo->prepare($sql)){
                // Bind variables to the prepared statement as parameters
                $stmt->bindParam(":username", $param_username, PDO::PARAM_STR);
                
                // Set parameters
                $param_username = trim($_POST["username"]);
                
                // Attempt to execute the prepared statement
                if($stmt->execute()){
                    // Check if username exists, if yes then verify password
                    if($stmt->rowCount() == 1){
                        if($row = $stmt->fetch()){
                            $id = $row["users_id"];
                            $username = $row["username"];
                            $hashed_password = $row["password"];
                            
                            
                            if(password_verify($password, $hashed_password)){
                                // Password is correct, so start a new session
                                session_start();
                                
                                // Store data in session variables
                                $_SESSION["loggedin"] = true;
                                $_SESSION["username"] = $username; 
                                                           
                                
                                // Redirect user to welcome page
                                header("location: ../index.php");
                            } else{
                                // Password is not valid, display a generic error message
                                echo "Invalid username or password.";
                            }
                        }
                    } else{
                        // Username doesn't exist, display a generic error message
                        //echo  "Invalid username or password.";
                    }
                } else{
                    echo "Oops! Something went wrong. Please try again later.";
                }
    
                // Close statement
                unset($stmt);
            }
        }
        
        // Close connection
        unset($pdo);
    }
?>