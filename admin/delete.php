<?php
require_once("Database/connectdb.php");
$conn = connect();

if(isset($_POST['data_delete_games'])){
    $user_id = $_POST['data_delete_games'];
    
    $query = "DELETE FROM games WHERE Games_ID='$user_id'";
    $query_run = mysqli_query($conn,$query);

    $query = "DELETE FROM mainpagelist WHERE Games_ID='$user_id'";
    $query_run = mysqli_query($conn,$query);

    header('Location: Games.php');
}
if(isset($_POST['data_delete_science'])){
    $user_id = $_POST['data_delete_science'];
    
    $query = "DELETE FROM sicence_tech WHERE Sicence_Tech_Id='$user_id'";
    $query_run = mysqli_query($conn,$query);

    $query = "DELETE FROM mainpagelist WHERE Sicence_Tech_Id='$user_id'";
    $query_run = mysqli_query($conn,$query);

    header('Location: science_technology.php');
}

if(isset($_POST['data_delete_fun'])){
    $user_id = $_POST['data_delete_fun'];
    
    $query = "DELETE FROM fun WHERE Fun_Id='$user_id'";
    $query_run = mysqli_query($conn,$query);

    $query = "DELETE FROM mainpagelist WHERE Fun_Id='$user_id'";
    $query_run = mysqli_query($conn,$query);

    header('Location: entertainment.php');
}
if(isset($_POST['data_delete_gallery'])){
    $user_id = $_POST['data_delete_gallery'];

    $query = "DELETE FROM gallery WHERE gallery_Id='$user_id'";
    $query_run = mysqli_query($conn,$query);

    $query = "DELETE FROM mainpagelist WHERE gallery_Id='$user_id'";
    $query_run = mysqli_query($conn,$query);

    header("Location: galery.php");
}
if(isset($_POST['data_delete_comments'])){
    $id = $_POST['data_delete_comments'];

    $query = "DELETE FROM comments WHERE comments_id='$id'";
    $result = mysqli_query($conn,$query);
    
    header("Location: comments-view.php "); 
}


?>