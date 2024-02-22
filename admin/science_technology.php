<?php
require_once('Database/connectdb.php');
require_once('Theme/index_theme.php');
require_once('Theme/science_technology_theme.php');

$baglan = connect();

$title = 'Admin Panel:Kategoriler:Science/Technology';
$css1 = '<link rel="stylesheet" href="css/main.css">';
$css2 = '<link rel="stylesheet" href="css/games.css">';

session_start();
if (!isset($_SESSION["loggedinadmin"]) || $_SESSION["loggedinadmin"] !== true) {
  header("Location: account/loginpage.php");
  exit;
}

func_head($title,$css1,$css2,"");
func_header($title);
func_nav();
func_science_tech_article($baglan);
func_script_part();

?>

