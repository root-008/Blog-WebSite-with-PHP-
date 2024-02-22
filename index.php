<?php
require_once("admin/Database/connectdb.php");
require_once("Theme/main_theme.php");
$baglan = connect();

$title = "Ana Sayfa";
$css = '<link rel="stylesheet" href="Css/mainmenu.css">';

session_start();
if (!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true) {
    $avatar = '<i class="material-icons">person</i>';
    $link = 'loginpage.php';
    
}else{
    $avatar = '<img src="Pictures/avatar.svg" title="Çıkış Yap" alt="Çıkış Yap" width="30px" style="position: relative; bottom: 3px;">';
    $link = 'users_info/logout.php';
}

func_head($title, $css, "");
func_header($avatar,$link);
func_nav();
func_section($baglan);
func_article($baglan);
func_aside($baglan);
func_footer();
func_script_part();
?>
