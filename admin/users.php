<?php
    require_once("Database/connectdb.php");
    require_once("Theme/index_theme.php");
    require_once("Theme/users_theme.php");

    $title = "Admin Panel";
    $css1 = '<link rel="stylesheet" href="css/main.css">';
    $css2 = '<link rel="stylesheet" href="css/users.css">';

    $baglan = connect();

    session_start();
    if (!isset($_SESSION["loggedinadmin"]) || $_SESSION["loggedinadmin"] !== true) {
    header("Location: account/loginpage.php");
    exit;
    }

    func_head($title, $css1,$css2, "");
    func_header($title);
    func_nav();

    func_users_article($baglan);

    func_script_part();
