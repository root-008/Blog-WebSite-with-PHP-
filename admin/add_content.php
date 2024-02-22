<?php
require_once("Database/connectdb.php");
require_once("Theme/index_theme.php");
require_once("Theme/add_content_theme.php");

connect();
date_default_timezone_set('Europe/Istanbul');
$time = date('d.m.Y H:i:s');

$title = 'Admin Panel:Add';
$css1 =  '<link rel="stylesheet" href="css/main.css">';
$css2 =  '<link rel="stylesheet" href="css/add_content.css">';

session_start();
if (!isset($_SESSION["loggedinadmin"]) || $_SESSION["loggedinadmin"] !== true) {
  header("Location: account/loginpage.php");
  exit;
}

func_head($title,$css1,$css2,"","");
func_header($title);
func_nav();
func_addContent_article();
func_script_part();
?>
