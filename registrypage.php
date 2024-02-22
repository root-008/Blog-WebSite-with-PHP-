<?php
    require_once("Theme/main_theme.php");
    require_once("Theme/Log_and_Reg_Page_container.php");

    $title = "Kayıt Ol...";
    $css = '<link rel="stylesheet" href="Css/registrypanel.css">';

    func_head($title,$css,"");
    func_Reg_Container();
?>