<?php
    function func_categories_article($baglan,$tur){
        $type = "Type";
        $title = "Title";
        $author = "Author";
        $id = "";
        
        if($tur == "game"){
            $sorgu = "SELECT * FROM games ORDER BY Games_ID DESC";
            $sonuc = mysqli_query($baglan, $sorgu);
            /* games tablosu tablo basliklari */
            $id = "Games_ID";
            $img = "Games_img";
        }
        if($tur == "bilim"){
            $sorgu = "SELECT * FROM sicence_tech ORDER BY Sicence_Tech_Id DESC";
            $sonuc = mysqli_query($baglan, $sorgu);
            /* sicence_tech tablosu tablo basliklari */
            $id = "Sicence_Tech_Id";
            $img = "sicence_img";
        }
        if($tur == "fun"){
            $sorgu = "SELECT * FROM fun ORDER BY Fun_Id DESC";
            $sonuc = mysqli_query($baglan, $sorgu);
            /* fun tablosu tablo basliklari */
            $id = "Fun_Id";
            $img = "fun_img";
        }
        echo '
        <article>
        <div class="article_container" id="article">
            <div class="content_tab">
                <h2>Son İçerikler</h2>
            </div>
            <div class="content-list">';
            while($satir = mysqli_fetch_assoc($sonuc)){
                if($id == "Games_ID") $link = 'contentpage.php?Games_ID='.$satir["Games_ID"].'&Sicence_Tech_Id=0&Fun_Id=0';
                else if($id == "Sicence_Tech_Id") $link = 'contentpage.php?Games_ID=0&Sicence_Tech_Id='.$satir["Sicence_Tech_Id"].'&Fun_Id=0';
                else if($id == "Fun_Id") $link = 'contentpage.php?Games_ID=0&Sicence_Tech_Id=0&Fun_Id='.$satir["Fun_Id"].'';
                else header("Location: ../404Page/404.html");
                echo'
                <div class="content-item">
                    <div class="news-pic">
                        <a href="'.$link.'"><img src="admin/'.$satir[$img].'"></a>
                    </div>
                    <div class="news-category 1">
                        <p>'.$satir[$type].'</p>
                    </div>
                    <div class="news-title 1">
                        <a href="'.$link.'"><p>'.$satir[$title].'</p></a>
                    </div>
                    <div class="news-author 1">
                        <p>'.$satir[$author].'</p>
                    </div>
                </div>
                ';
            }
            echo'    
            </div>
        </div>
        </article>';
    }
?>
