<?php
    require_once("../../Theme/main_theme.php");
    require_once("theme/Log_and_Reg_Page_container.php");
    
    $title = "Giriş Yap";
    $css = '<link rel="stylesheet" href="css/loginpanel.css">';
    
    

    func_head($title,$css,"");
    func_Login_Body();

?>