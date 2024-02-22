<?php

    function func_search_article($baglan){

        $query = $_GET["search"];

        $result = $baglan->query("SELECT * FROM mainpagelist WHERE title LIKE '%$query%' OR author LIKE '%$query%'");
        
        echo '
        <article>
        <div class="article_container" id="article">
            <div class="content_tab">
                <h2>'.$query.' İçin Arama Sonuçları</h2>
            </div>
            <div class="content-list">';
            while($satir = $result->fetch_assoc()){

                if($satir["gallery_Id"] != 0){

                    $link = '../gallery_contentpage.php?id='.$satir["gallery_Id"].'';
                }else{
                    $link = '../contentpage.php?mainpagelist_ID=' . $satir["mainpagelist_ID"] . '&Games_ID=' . $satir["Games_ID"] . '&Fun_Id=' . $satir["Fun_Id"] . '&Sicence_Tech_Id=' . $satir["Sicence_Tech_Id"] . '';
                }

                echo'
                <div class="content-item">
                    <div class="news-pic">
                        <a href="'.$link.'" target="_blank"><img src="admin/'.$satir["img"].'"></a>
                    </div>
                    <div class="news-category 1">
                        <p>'.$satir["type"].'</p>
                    </div>
                    <div class="news-title 1">
                        <a href="'.$link.'" target="_blank"><p>'.$satir["title"].'</p></a>
                    </div>
                    <div class="news-author 1">
                        <p>'.$satir["author"].'</p>
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