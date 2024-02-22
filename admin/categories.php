<?php
require_once("Database/connectdb.php");
require_once("Theme/index_theme.php");
require_once("Theme/categories_theme.php");

connect();

$title = "Admin Panel:Kategoriler";
$css1 =  '<link rel="stylesheet" href="css/main.css">';

session_start();
if (!isset($_SESSION["loggedinadmin"]) || $_SESSION["loggedinadmin"] !== true) {
  header("Location: account/loginpage.php");
  exit;
}

func_head($title,$css1,"","");
func_header($title);
func_nav();
func_categories_article();
func_script_part();
?>
