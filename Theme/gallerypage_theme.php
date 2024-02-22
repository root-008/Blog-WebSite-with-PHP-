<?php
    function func_gallery_article($baglan){

        $tur = $_GET["category"];

        if($tur == "Oyun" || $tur == "Sinema" || $tur == "Teknoloji" || $tur == "Bilim"){
            $sorgu = "SELECT * FROM gallery WHERE category='Galeri/$tur' ORDER BY gallery_Id DESC";
            $sonuc = mysqli_query($baglan, $sorgu);
        }
        else{
            header("Location: ../404Page/404.html");
        }
        
        echo '
            <article>
            <div class="container-gallery">
                <h1 class="head">Cyber Game</h1>
                <h3>Galeri/ '.$tur.'</h3>
                <hr>
                <div class="grid-container">';
                    while ($satir = mysqli_fetch_assoc($sonuc)){
                        echo'
                        <div class="item1">
                            <div class="pic">
                                <a href="gallery_contentpage.php?id='.$satir["gallery_Id"].'">
                                <img src="Pic/'.$satir["img"].'" width="100%">
                                </a>
                            </div>
                            <div class="title">
                                <a href="gallery_contentpage.php?id='.$satir["gallery_Id"].'">
                                    <p>'.$satir["Title"].'</p>
                                </a>
                            </div>
                            <div class="time">
                                <p>'.$satir["time"].'</p>
                            </div>
                        </div>';
                    }
                echo '    
                </div>
            </div>
            </article>
        ';
    }
?>