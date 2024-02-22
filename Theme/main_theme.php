<?php
function func_head($title, $css, $css2)
{
    echo '
        <!DOCTYPE html>
        <html lang="tr">
        
        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>' . $title . '</title>
            ' . $css . '
            ' . $css2 . '
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">   
            <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
            <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
            <script src="https://cdn.lordicon.com/fudrjiwc.js"></script>
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond&family=Eczar&family=Gentium+Plus&family=Libre+Baskerville&family=Libre+Franklin&family=Proza+Libre&family=Roboto+Slab&family=Rubik&family=Taviraj&family=Trirong&family=Work+Sans&display=swap" rel="stylesheet">
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=Source+Code+Pro:ital,wght@1,300&display=swap" rel="stylesheet">
            <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
        </head>';
}

function func_header($avatar, $link)
{
    echo '
            <body>
            <div id="sayfa">
                <header>
                    <div class="banner" id="banner">
                        <div id="logo">
                            <a href="index.php">
                                <img class="logo" id="pic_logo" src="Pictures/logoblack.png">
                            </a>
                        </div>
                        <div class="leftpart">
                            <div class="dark-mode-toggle" id="dark-mode-toggle">
                                <button id="darkicon">
                                    <span class="material-symbols-outlined">sunny</span>
                                </button>
                            </div>
                            <div id="searchbar">
                                <form action="search_show.php" method="GET">
                                    <input type="text" name="search" placeholder="Search...">
                                    <button type="submit"><i class="fa fa-search"></i></button>
                                </form>
                            </div>
                            <div id="loginpanel">
                                <a href="' . $link . '"><button type="submit">' . $avatar . '</button></a>
                            </div>
                        </div>
                    </div>
                    <div class="row"></div>
                </header>';
}

function func_nav()
{
    echo '
        <nav>
            <div class="navbar"  id="mynavbar">
                <div id="categories">
                    <a href="../index.php" class="active">Ana Sayfa</a>
                    <a href="../categoriespage.php?id=game">Oyun</a>
                    <a href="../categoriespage.php?id=bilim">Bilim/Teklonoji</a>
                    <a href="../categoriespage.php?id=fun">Eğlence</a>
                    <div class="dropdown">
                        <button class="dropbtn">Galeri <i class="fa fa-caret-down"></i></button>
                        <div class="morecategories">
                            <a href="../gallerypage.php?category=Oyun">Oyun</a>
                            <a href="../gallerypage.php?category=Sinema">Sinema</a>
                            <a href="../gallerypage.php?category=Teknoloji">Teknoloji</a>
                            <a href="../gallerypage.php?category=Bilim">Bilim</a>
                        </div>
                    </div>
                    <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                    <i class="fa fa-bars"></i>
                    </a>
                </div>
                <div class="socialicons">
                    <a href="#" target="_blank" class="fa fa-facebook"></a>
                    <a href="#" target="_blank" class="fa fa-instagram"></a>
                    <a href="#" target="_blank" class="fa fa-twitter"></a>
                    <a href="#" target="_blank" class="fa fa-youtube"></a>
                </div>
            </div>
            <hr class="row2">
        </nav>';
}

function func_section($baglan)
{
    $sorgu = "SELECT mainpagelist_ID,Games_ID,Fun_Id,Sicence_Tech_Id,img,title,click_count FROM mainpagelist ORDER BY click_count DESC LIMIT 4";
    $sonuc = mysqli_query($baglan, $sorgu);
    echo '
        <section>
        <div class="section_container">';
    $sayac = 1;
    while ($satir = mysqli_fetch_assoc($sonuc)) {
        echo '
                    <div class="lastest-content1">
                        <div class="lastest-content2">
                            <a href="contentpage.php?mainpagelist_ID=' . $satir["mainpagelist_ID"] . '&Games_ID=' . $satir["Games_ID"] . '&Fun_Id=' . $satir["Fun_Id"] . '&Sicence_Tech_Id=' . $satir["Sicence_Tech_Id"] . '">
                                <figure>
                                <img class="lastest-content-img' . $sayac++ . '" src="admin/' . $satir["img"] . '" title="' . $satir["title"] . '" <!--style="width:100%; height:350px;-->">
                                <figcaption class="sec-fig">' . $satir["title"] . '</figcaption>
                                </figure>
                                
                                <!--<h3 class="lastest-content-head' . $sayac++ . '">' . $satir["title"] . '</h3> -->
                            </a>
                        </div>
                    </div>
                ';
    }
    echo '
            </div>
        </section>';
}

function func_article($baglan)
{
    $sorgu = "SELECT * FROM mainpagelist ORDER BY mainpagelist_ID DESC LIMIT 10 ";
    $sonuc = mysqli_query($baglan, $sorgu);
    echo '
        <article>
        <div class="article_container" id="article">
            <div class="content_tab">
                <h2>Son İçerikler</h2>
            </div>
            <div class="content-list">';
    while ($satir = mysqli_fetch_assoc($sonuc)) {
        if ($satir["gallery_Id"] != 0) {
            $link = 'gallery_contentpage.php?id=' . $satir["gallery_Id"] . '';
        } else {
            $link = 'contentpage.php?mainpagelist_ID=' . $satir["mainpagelist_ID"] . '&Games_ID=' . $satir["Games_ID"] . '&Fun_Id=' . $satir["Fun_Id"] . '&Sicence_Tech_Id=' . $satir["Sicence_Tech_Id"] . '';
        }
        echo '
                <div class="content-item 1">
                    <div class="news-pic">
                        <a href="' . $link . '"><img src="admin/' . $satir["img"] . '"></a>
                    </div>
                    <div class="news-category 1">
                        <p>' . $satir["type"] . '</p>
                    </div>
                    <div class="news-title 1">
                        <a href="' . $link . '"><p>' . $satir["title"] . '</p></a>
                    </div>
                    <div class="news-author 1">
                        <p>' . $satir["author"] . '</p>
                    </div>
                </div>
                ';
    }
    echo '    
            </div>
        </div>
        </article>';
}
function func_comment_section($baglan)
{

    $tur = $_SESSION["yorum-tur"];
    $id = $_SESSION["yorum-id"];
    if ($tur == "game") {
        $query = "SELECT * FROM comments WHERE Games_ID=$id";
        echo "1";
    } else if ($tur == "science") {
        $query = "SELECT * FROM comments WHERE Sicence_Tech_Id=$id";
    } else if ($tur == "fun") {
        $query = "SELECT * FROM comments WHERE Fun_Id=$id";
    } else if ($tur == "gallery") {
        $query = "SELECT * FROM comments WHERE gallery_Id=$id";
    } else {
    }

    $result = mysqli_query($baglan, $query);

    echo '
            <section>
                <div class="comment-container">
                     <div class="comments-form">
                        <form action="comment_action.php" method="POST">
                            <input type="text" name="username" value="' . $_SESSION["username"] . '" readonly  ><br>
                            <textarea name="comments" placeholder="Mesajınız" rows="5" cols="80" maxlength="500" required></textarea><br>
                            <input type="submit" name="comment-submit" value="gönder">
                        </form>
                    </div>';
    while ($row = mysqli_fetch_assoc($result)) {
        echo '
                <div class="comments-list">
                    <ul>
                        <li>
                            <img class="user-avatar" src="../Pictures/avatar.svg" width="40px">
                            <h3 class="username">' . $row['username'] . '</h3>
                            <p class="user-comment">' . $row["comments"] . '</p>
                            <p class="time">' . $row["time"] . '</p>
                        </li>
                    </ul>
                </div>
                ';
    }
    echo '
                </div>
             </section>';
}



function func_aside($baglan)
{
    $sorgu = "SELECT mainpagelist_ID,Games_ID,Fun_Id,Sicence_Tech_Id,img,title,click_count FROM mainpagelist ORDER BY click_count DESC LIMIT 3";
    $sonuc = mysqli_query($baglan, $sorgu);
    echo '
        <aside>
            <div class="sidebar" id="sidebar">
                <div class="sidebar_tab">
                    <h2>Trend İçerikler</h2>
                </div>';
    while ($satir = mysqli_fetch_assoc($sonuc)) {
        echo '
                        <div class="sidebar-content">
                            <div class="pop-pic">
                                <a href="contentpage.php?mainpagelist_ID=' . $satir["mainpagelist_ID"] . '&Games_ID=' . $satir["Games_ID"] . '&Fun_Id=' . $satir["Fun_Id"] . '&Sicence_Tech_Id=' . $satir["Sicence_Tech_Id"] . '"><img src="admin/' . $satir["img"] . '" style="width:20rem; height:15rem;"></a>
                            </div>
                            <div class="pop-title">
                                <a href="contentpage.php?mainpagelist_ID=' . $satir["mainpagelist_ID"] . '&Games_ID=' . $satir["Games_ID"] . '&Fun_Id=' . $satir["Fun_Id"] . '&Sicence_Tech_Id=' . $satir["Sicence_Tech_Id"] . '"><p>' . $satir["title"] . '</p></a>
                            </div>
                             <div class="pop-view">
                                 <p><i class="material-icons">trending_up</i>' . $satir["click_count"] . '</p>
                            </div>
                        </div>
                        
                    ';
    }
    echo '</div>
        </aside>';
}

function func_footer()
{
    echo '        
            <footer>
            <div class="endmenu">
                <table>
                    <tr>
                        <th>Kurumsal</th>
                        <th>Gizlilik ve Kullanım</th>
                        <th>Bizi Takip Edin</th>
                    </tr>
                    <tr>
                        <td><a href="#" target="_blank">Hakkımızda</a></td>
                        <td><a href="#" target="_blank">Sözleşmeler ve Kurallar</a></td>
                        <td><a href="#" target="_blank">Facebook</a></td>
                    </tr>
                    <tr>
                        <td><a href="#" target="_blank">İnsan Kaynakları</a></td>
                        <td><a href="#" target="_blank">Kullanım Koşulları</a></td>
                        <td><a href="#" target="_blank">İnstagram</a></td>
                    </tr>
                    <tr>
                        <td><a href="#" target="_blank">İletişim</a></td>
                        <td><a href="#" target="_blank">Kişisel Verilerin Korunması</a></td>
                        <td><a href="#" target="_blank">Twitter</a></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td><a href="#" target="_blank">Youtube</a></td>
                    </tr>
                </table>
            </div>
        </footer>
        </div>
        </body>
        ';
}
function func_script_part()
{
    echo '    
            <script src="script/dark_theme.js"></script>
            <script src="script/responsive.js"></script>
            <script src="script/chance_logo.js"></script>
            </html>
        ';
}
