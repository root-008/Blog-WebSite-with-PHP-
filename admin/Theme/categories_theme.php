<?php
    function func_categories_article(){
        echo '
            <article>
            <div class="container-article">
                <div class="container-games1">
                    <div class="container-games2">
                        <a href="Games.php"><i class=\'fas fa-gamepad\'></i><span>Oyunlar</span></a>
                    </div>
                </div>
                <div class="container-science_technology1">
                    <div class="container-science_technology2">
                        <a href="science_technology.php"><i class=\'fas fa-vial\'></i><span>Bilim/Teknoloji</span></a>
                    </div>
                </div>
                <div class="container-entertainment1">
                    <div class="container-entertainment2">
                        <a href="entertainment.php"><i class=\'fas fa-glass-cheers\'></i><span>Eğlence</span></a>
                    </div>
                </div>
                <div class="container-gallery1">
                    <div class="container-gallery2">
                        <a href="galery.php"><i class=\'far fa-images\'></i><span>Galeri</span></a>
                    </div>
                </div>
            </div>
        </article>
    </body>
        ';
    }

?>