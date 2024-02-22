<?php
    require_once("admin/Database/connectdb.php");
    require_once("Theme/main_theme.php");
    require_once("Theme/categoriespage_theme.php");
    $baglan = connect();
    $id = $_GET["id"];
    if($id == "game") $title = "Oyunlar Kategorisi";
    else if($id == "bilim") $title = "Bilim/Teklonoji Kategorisi";
    else if($id == "fun") $title = "Eğlence Kategorisi";
    else $title="";
    $css = '<link rel="stylesheet" href="Css/mainmenu.css">';
    $css2 = '<link rel="stylesheet" href="Css/categoriespage.css">';
    $icon = "fa fa-facebook";
    
    session_start();
if (!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true) {
    $avatar = '<i class="material-icons">person</i>';
    $link = 'loginpage.php';
    
}else{
    $avatar = '<img src="Pictures/avatar.svg" title="Çıkış Yap" alt="Çıkış Yap" width="30px" style="position: relative; bottom: 3px;">';
    $link = 'users_info/logout.php';
}

    $tur = $id;
    func_head($title, $css,$css2);
    func_header($avatar,$link);
    func_nav();
    func_categories_article($baglan,$tur);    
    func_aside($baglan);
    func_footer();
    func_script_part();
?>