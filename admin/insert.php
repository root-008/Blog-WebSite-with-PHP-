<?php
require_once("Database/connectdb.php");
$conn = connect();
date_default_timezone_set('Europe/Istanbul');

if (isset($_POST['add_content'])) {
    $type = $_POST['type'];
    $file_name = $_POST['filename'];

    $tmp_file = $_FILES['image']['tmp_name'];
    if($type == "Galeri/Oyun" || $type == "Galeri/Sinema" || $type == "Galeri/Teknoloji" || $type == "Galeri/Bilim"){
        $target_file = "../Pic/{$file_name}";
    }
    else{
        $target_file = "Pictures/{$file_name}";
    }
    move_uploaded_file($tmp_file,$target_file);

    $img = $target_file;
    
    $title = $_POST['title'];
    $editor = $_POST['editor'];
    $author = $_POST['author'];
    $time = date('Y.m.d H:i:s');

    if ($type == 'Oyun') {
        $query = "INSERT INTO `games`(`Games_img`, `Type`, `Title`, `Contents`, `Author`, `Time`) 
        VALUES ('$img','$type','$title','$editor','$author','$time')";
        $result1 = mysqli_query($conn, $query);

        $query = "SELECT * FROM `games` ORDER BY `Games_ID` DESC LIMIT 1";
        $result2 = mysqli_query($conn, $query);
        $satir = mysqli_fetch_assoc($result2);

        $games_Id = $satir["Games_ID"];

        $query = "INSERT INTO `mainpagelist`(`Games_ID`, `img`, `type`, `title`, `author`,`time`)
         VALUES ('$games_Id','$img','$type','$title','$author','$time')";
        $result3 = mysqli_query($conn,$query);

        //insert ettikten sonra gamesId select ile çek 
        //sonra mainlist'e gamesıd sütununa ekleme yap
        

        if ($result1 && $result2 && $result3) {
            header("Location: Games.php?msg=Kayit Basarili");
        } else {
            echo "Failed: " . mysqli_error($conn);
        }
    }

    else if($type == 'Bilim/Teknoloji'){
        $query = "INSERT INTO `sicence_tech`(`sicence_img`, `Type`, `Title`, `Contents`, `Author`, `Time`) 
        VALUES ('$img','$type','$title','$editor','$author','$time')";
        $result1 = mysqli_query($conn, $query);

        $query = "SELECT * FROM `sicence_tech` ORDER BY `Sicence_Tech_Id` DESC LIMIT 1";
        $result2 = mysqli_query($conn, $query);
        $satir = mysqli_fetch_assoc($result2);

        $science_Id = $satir["Sicence_Tech_Id"];

        $query = "INSERT INTO `mainpagelist`(`Sicence_Tech_Id`, `img`, `type`, `title`, `author`,`time`)
         VALUES ('$science_Id','$img','$type','$title','$author','$time')";
        $result3 = mysqli_query($conn,$query);

        if ($result1 && $result2 && $result3) {
            header("Location: science_technology.php?msg=Kayit Basarili");
        } else {
            echo "Failed: " . mysqli_error($conn);
        }
    }

    else if($type == 'Eglence'){
        $query = "INSERT INTO `fun`(`fun_img`, `Type`, `Title`, `Contents`, `Author`, `Time`)
         VALUES ('$img','$type','$title','$editor','$author','$time')";
        $result1 = mysqli_query($conn, $query);

        $query = "SELECT * FROM `fun` ORDER BY `Fun_Id` DESC LIMIT 1";
        $result2 = mysqli_query($conn, $query);
        $satir = mysqli_fetch_assoc($result2);

        $Fun_Id = $satir["Fun_Id"];

        $query = "INSERT INTO `mainpagelist`(`Fun_Id`, `img`, `type`, `title`, `author`,`time`)
         VALUES ('$Fun_Id','$img','$type','$title','$author','$time')";
        $result3 = mysqli_query($conn,$query);

        if ($result1 && $result2 && $result3) {
            header("Location: entertainment.php?msg=Kayit Basarili");
        } else {
            echo "Failed: " . mysqli_error($conn);
        }
    }
    else if($type == "Galeri/Oyun" || $type == "Galeri/Sinema" || $type == "Galeri/Teknoloji" || $type == "Galeri/Bilim"){
        $query = "INSERT INTO `gallery`(`category`, `img`, `Title`, `Contents`, `Author`, `time`) 
        VALUES ('$type','$img','$title','$editor','$author','$time')";
        $result1 = mysqli_query($conn,$query); 

        $query = "SELECT * FROM gallery ORDER BY `gallery_Id` DESC LIMIT 1";
        $result2 = mysqli_query($conn, $query);
        $satir = mysqli_fetch_assoc($result2);

        $gallery_Id = $satir["gallery_Id"];

        $query = "INSERT INTO `mainpagelist`(`gallery_Id`, `img`, `type`, `title`, `author`,`time`)
         VALUES ('$gallery_Id','$img','$type','$title','$author','$time')";
        $result3 = mysqli_query($conn,$query);

        if ($result1 && $result2 && $result3) {
            header("Location: galery.php?msg=Kayit Basarili");
        } else {
            echo "Failed: " . mysqli_error($conn);
        }
    }
}
