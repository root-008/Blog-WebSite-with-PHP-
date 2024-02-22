<?php
date_default_timezone_set('Europe/Istanbul');    
$time = date('Y.m.d H:i:s');
    require_once("admin/Database/connectdb.php");
    $conn= connect(); 
    session_start();
    if (isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] === true){
        if(isset($_POST["comment-submit"])){
            
            $username = $_POST['username'];
            $comments = $_POST["comments"];

            $tur = $_SESSION["yorum-tur"];
            $id = $_SESSION["yorum-id"];
            $url = $_SESSION["url"];

            if($tur == "game"){
                $query = "INSERT INTO `comments`(`Games_ID`, `username`, `comments`, `time`,`url`) 
                    VALUES ('$id','$username','$comments','$time','$url')";
            }
            else if($tur == "science"){
                $query = "INSERT INTO `comments`(`Sicence_Tech_Id`, `username`, `comments`, `time`,`url`) 
                    VALUES ('$id','$username','$comments','$time','$url')";
            }
            else if($tur == "fun"){
                $query = "INSERT INTO `comments`(`Fun_Id` ,`username`, `comments`, `time`,`url`) 
                    VALUES ('$id','$username','$comments','$time','$url')";
            }
            else if($tur == "gallery"){
                $query = "INSERT INTO `comments`(`gallery_Id` ,`username`, `comments`, `time`,`url`) 
                    VALUES ('$id','$username','$comments','$time','$url')";
            }
            else{
                header ("Location: 404Page/404.html");
            }
            $result = mysqli_query($conn,$query);

            if($result){
                header ("Location: $url");
            }
        }
    }
?>