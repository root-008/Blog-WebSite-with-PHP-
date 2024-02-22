<?php
require_once('Database/connectdb.php');
require_once('Theme/index_theme.php');
require_once('Theme/games_theme.php');

$baglan = connect();

$title = 'Admin Panel:Kategoriler:Games';
$css1 =  '<link rel="stylesheet" href="css/main.css">';
$css2 =  '<link rel="stylesheet" href="css/games.css">';

session_start();
if (!isset($_SESSION["loggedinadmin"]) || $_SESSION["loggedinadmin"] !== true) {
  header("Location: account/loginpage.php");
  exit;
}

func_head($title,$css1,$css2,"");
func_header($title);
func_nav();
func_games_article($baglan);
func_script_part();

?>