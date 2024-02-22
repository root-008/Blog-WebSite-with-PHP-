<?php

function func_head($title,$css1,$css2,$css3){
    echo '
    <!DOCTYPE html>
    <html lang="tr">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        '.$css1.$css2.$css3.'
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
        <script src="ckeditor/ckeditor.js" type="text/javascript"></script>
        
        <title>'.$title.'</title>
    </head>
    ';
}

function func_header($title){
    echo '
    <body>    
        <header>
        <div id="banner">
            <div id="logo"><a href="index.php"><img id="pic_logo" src="Pictures/logoblack.png"></a></div>
            <div id="slogan">
                <h2>'.$title.'</h2>
            </div>
            <div class="left-part">
                <!--<div id="searchbar">
                    <form action="">
                        <input type="text" placeholder="Search...">
                        <button type="submit"><i class="fa fa-search"></i></button>
                    </form>
                </div>-->
                <div id="loginpanel">
                    <form action="account/logout.php" name="logout" method="POST">
                        <a href="loginpage.php"><button type="submit">Çıkış Yap</button></a>
                    </form>
                </div>
                <div class="dark-mode-toggle" id="dark-mode-toggle">
                    <button id="icon"><i class="material-icons">brightness_7</i></button>
                </div>
            </div>
        </div>
        </header>
    ';
}

function func_nav(){
    echo '
        <nav>
        <div class="sidebar">
            <div class="category">
                <a href="categories.php" style="text-decoration: none;"><button class="categories"><i class="material-icons">chevron_right</i><span>Kategoriler</span></button></a>
                <div class="categories-links">
                    <a href="games.php">Oyunlar</a>
                    <a href="science_technology.php">Bilim/Teknoloji</a>
                    <a href="entertainment.php">Eğlence</a>
                    <a href="galery.php">Galeri</a>
                </div>
            </div>
            <div class="users">
                <a href="users.php?id=admin"><span>Kullanıcılar</span></a>
            </div>
        </div>
        </nav>
    ';
}

function func_article(){
    echo '      
        <article>
        <div class="container-article">
            <div class="container-categories1">
                <div class="container-categories2">
                    <a href="categories.php"><i class="material-icons">folder</i><span>Kategoriler</span></a>
                </div>
            </div>
            <div class="container-categories1">
                <div class="container-categories2">
                    <a href="users.php?id=admin"><i class="material-icons">group</i><span class="admin-pan-users">Admin Panel Kullanıcılar</span></a>
                </div>
            </div>
            <div class="container-categories1">
                <div class="container-categories2">
                    <a href="users.php?id=main"><i class="material-icons">group</i><span class="admin-pan-users">Main Panel Kullanıcılar</span></a>
                </div>
            </div>
            <div class="container-categories1">
                <div class="container-categories2">
                    <a href="comments-view.php"><i class="material-icons">chat</i><span class="admin-pan-users">Makaledeki Yorumlar</span></a>
                </div>
            </div>
        </div>
        </article>
    </body>
    ';
}

function func_script_part(){
    echo '    
        <script src="ckeditor/ckeditor.js"></script>
        <script src="script/dark_theme.js"></script>
        <script src="script/ckeditor.js"></script>
      
        </html>
    ';
}



?>