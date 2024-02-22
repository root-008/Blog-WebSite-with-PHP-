<?php
    require_once("Theme/main_theme.php");
    require_once("admin/Database/connectdb.php");
    require_once("Theme/gallery_contentpage_theme.php");
    $title = "Galeri İçerik Sayfası";
    $css = '<link rel="stylesheet" href="Css/mainmenu.css">';
    $css2 = '<link rel="stylesheet" href="Css/contentpage.css">';
    $baglan = connect();

    $id = $_GET["id"];

    session_start();
    if (!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true) {
        $avatar = '<i class="material-icons">person</i>';
        $link = 'loginpage.php';
        $hesapacikmi = false;
        
    }else{
        $avatar = '<img src="Pictures/avatar.svg" title="Çıkış Yap" alt="Çıkış Yap" width="30px" style="position: relative; bottom: 3px;">';
        $link = 'users_info/logout.php';
        $hesapacikmi = true;
    }

    func_head($title,$css,$css2);
    func_header($avatar,$link);
    func_nav();
    func_gallery_content_article($baglan,$id);
    func_aside($baglan);

    $_SESSION["yorum-tur"] = "gallery";
    if($hesapacikmi)
        func_comment_section($baglan);
    
    func_footer();
    func_script_part();
?>