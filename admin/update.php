<?php
    require_once('Database/connectdb.php');
    $conn = connect();
    date_default_timezone_set('Europe/Istanbul');

    if(isset($_POST['admin_main_go'])){
        header("Location: index.php");
    }
    
    if(isset($_POST['update_game_content'])){
        $file_name = $_POST['filename'];

        $tmp_file = $_FILES['image']['tmp_name'];
        $target_file = "Pictures/{$file_name}";
        

        $id = $_POST["id"];
        $img = $target_file;
        $type = $_POST['type'];
        $title = $_POST['title'];
        $editor = $_POST['editor'];
        $author = $_POST['author'];
        $time = date('Y.m.d H:i:s');

        $query = "UPDATE `games` SET `Games_img`='$file_name',`Type`='$type',
        `Title`='$title',`Contents`='$editor',`Author`='$author',`Time`='$time' WHERE Games_ID = $id";
        $result = mysqli_query($conn,$query);
        if($result){
            header("Location: Games.php?msg=DuzenlemeBasarili");
        }
        else{
            echo "Failed: " . mysqli_error($conn);
        }
    }

    if(isset($_POST['update_science_content'])){
        $file_name = $_POST['filename'];

        $tmp_file = $_FILES['image']['tmp_name'];
        $target_file = "Pictures/{$file_name}";
        

        $id = $_POST["id2"];
        $img = $target_file;
        $type = $_POST['type'];
        $title = $_POST['title'];
        $editor = $_POST['editor'];
        $author = $_POST['author'];
        $time = date('Y.m.d H:i:s');
        
        
        $query = "UPDATE sicence_tech SET `sicence_img`='$img',`Type`='$type',`Title`='$title',`Contents`='$editor',`Author`='$author',`Time`='$time' WHERE Sicence_Tech_Id = $id";

        $result = mysqli_query($conn,$query);
        if($result){
            header("Location: science_technology.php?msg=DuzenlemeBasarili");
        }
        else{
            echo "Failed: " . mysqli_error($conn);
        }
    }
    if(isset($_POST['update_fun_content'])){
        $file_name = $_POST['filename'];

        $tmp_file = $_FILES['image']['tmp_name'];
        $target_file = "Pictures/{$file_name}";
        
        $id = $_POST["id3"];
        $img = $target_file;
        $type = $_POST['type'];
        $title = $_POST['title'];
        $editor = $_POST['editor'];
        $author = $_POST['author'];
        $time = date('Y.m.d H:i:s');

        $query = "UPDATE `fun` SET `fun_img`='$img',
        `Type`='$type',`Title`='$title',`Contents`='$editor',`Author`='$author',`Time`='$time' WHERE Fun_Id = $id";

        $result = mysqli_query($conn,$query);
        if($result){
            header("Location: entertainment.php?msg=DuzenlemeBasarili");
        }
        else{
            echo "Failed: " . mysqli_error($conn);
        }
    }
    if(isset($_POST['update_Galeri_content'])){
        $file_name = $_POST['filename'];

        $tmp_file = $_FILES['image']['tmp_name'];
        $target_file = "../Pic/{$file_name}";
        
        $id = $_POST["id4"];
        $img = $target_file;
        $type = $_POST['type'];
        $title = $_POST['title'];
        $editor = $_POST['editor'];
        $author = $_POST['author'];
        $time = date('Y.m.d H:i:s');

        $query = "UPDATE `gallery` SET `category`='$type',`img`='$img',
        `Title`='$title',`Contents`='$editor',`Author`='$author',`time`='$time' WHERE gallery_Id = $id";
        
        $result = mysqli_query($conn,$query);
        if($result){
            header("Location: galery.php?msg=DuzenlemeBasarili");
        }
        else{
            echo "Failed: " . mysqli_error($conn);
        }
    }

?>