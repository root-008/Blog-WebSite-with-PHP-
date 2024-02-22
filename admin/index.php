<?php
require_once("Database/connectdb.php");
require_once("Theme/index_theme.php");

$title = "Admin Panel";
$css1 = '<link rel="stylesheet" href="css/main.css">';

connect();

session_start();
if (!isset($_SESSION["loggedinadmin"]) || $_SESSION["loggedinadmin"] !== true) {
  header("Location: account/loginpage.php");
  exit;
}


func_head($title, $css1, "", "");
func_header($title);
func_nav();
func_article();
func_script_part();
