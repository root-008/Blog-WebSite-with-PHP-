<?php
    require_once('Database/connectdb.php');
    require_once('Theme/index_theme.php');
    require_once('Theme/edit_theme.php');

    $title = "Düzenle";
    $css1 =  '<link rel="stylesheet" href="css/main.css">';
    $css2 =  '<link rel="stylesheet" href="css/add_content.css">';

    $conn = connect();

    func_head($title,$css1,$css2,"","");
    func_header($title);
    func_nav();

    if(isset( $_POST['data_update_games'])){
        $user_id = $_POST['data_update_games'];

        $query = "SELECT * FROM games WHERE Games_ID = $user_id";
        $result = mysqli_query($conn,$query);
        if($result){
            $satir = mysqli_fetch_assoc($result);
        }
        func_edit_article($satir,"game","Games_img","Type","Title","Contents","Author");
    }
    
    if(isset($_GET['data_update_science'])){
        
        $user_id = $_GET['data_update_science'];

        $query = "SELECT * FROM sicence_tech WHERE Sicence_Tech_Id = $user_id";
        $result = mysqli_query($conn,$query);

        if($result){
            $satir = mysqli_fetch_assoc($result);
        }
        func_edit_article($satir,"science","sicence_img","Type","Title","Contents","Author");
    }

    if(isset($_GET['data_update_fun'])){

        
       $user_id = $_GET['data_update_fun'];

        $query = "SELECT * FROM fun WHERE Fun_Id = $user_id";
        $result = mysqli_query($conn,$query);
        
        if($result){
            $satir = mysqli_fetch_assoc($result);
        }
        func_edit_article($satir,"fun","fun_img","Type","Title","Contents","Author");
    }
    if(isset($_POST['data_update_gallery'])){
        $user_id = $_POST['data_update_gallery'];

        $query = "SELECT * FROM gallery WHERE gallery_Id = $user_id";
        $result = mysqli_query($conn,$query);

        if($result){
            $satir = mysqli_fetch_assoc($result);
        }
        func_edit_article($satir,"Galeri","img","category","Title","Contents","Author");
    }


    
    
    func_script_part();
