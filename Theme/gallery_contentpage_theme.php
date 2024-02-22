<?php
    function func_gallery_content_article($baglan,$id){
        $query = "SELECT * FROM gallery WHERE gallery_Id=$id";
        $result = mysqli_query($baglan,$query);
        $row = mysqli_fetch_assoc($result);

        //count sayısını tutma
        $query2 = "UPDATE mainpagelist SET click_count = click_count + 1 WHERE gallery_Id=$id";
        mysqli_query($baglan,$query2);

        if($result == null) { header("Location: ../404Page/404.html"); }

        if (isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] === true) {
            
            $_SESSION["yorum-id"] =  $id;
            $_SESSION["url"] = $_SERVER['REQUEST_URI'];
        }

        echo '
        <article>
            <div class="article-container">
                <div class="title">
                    '.$row["Title"].'
                </div>
                <div class="container-info">
                    <div class="content-icon">
                        <i class="material-icons">person</i>
                    </div>
                    <div class="author">
                        '.$row["Author"].'
                    </div>
                    <div class="type">
                        '.$row["category"].'
                    </div>
                    <div class="time">
                        '.$row["time"].'
                    </div> 
                </div>
                <div class="content">
                    '.$row["Contents"].'
                </div>
            </div>
        </article>
        ';        
    }
?>