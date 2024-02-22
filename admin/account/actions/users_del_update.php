<?php
    require_once("../../Database/connectdb.php");
    $conn = connect();

    if(isset($_POST["data_delete_users"])){
        $id = $_GET["id"];

        $account_Id = $_POST["data_delete_users"];

        if($id == "admin"){
            $query = "DELETE FROM accountinfo WHERE account_Id='$account_Id'";
        }
        else if($id == "main"){
            $query = "DELETE FROM users_account WHERE users_id='$account_Id'";
        }
        else{
            header("Location: ../../../404Page/404.html");
        }
        $result = $conn->query($query);

        header("Location: ../../users.php?id=$id");
    }
?>