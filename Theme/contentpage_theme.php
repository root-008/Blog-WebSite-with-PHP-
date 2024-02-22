<?php
    function func_contentpage_article($baglan){
        $Games_ID = $_GET["Games_ID"];
        $Fun_Id = $_GET["Fun_Id"];
        $Sicence_Tech_Id = $_GET["Sicence_Tech_Id"];
        

        if($Games_ID != 0 && $Fun_Id == 0 && $Sicence_Tech_Id == 0 ){
            $query = "SELECT * FROM games WHERE Games_ID = $Games_ID";
            $tur = "game";
            $id = $Games_ID;
            //count sayısını tutma
            $query2 = "UPDATE mainpagelist SET click_count = click_count + 1 WHERE Games_ID=$id";
            mysqli_query($baglan,$query2);
        }
        else if($Games_ID == 0 && $Fun_Id != 0 && $Sicence_Tech_Id == 0 ){
            $query = "SELECT * FROM fun WHERE Fun_Id = $Fun_Id";
            $tur = "fun";
            $id = $Fun_Id;
            //count sayısını tutma
            $query2 = "UPDATE mainpagelist SET click_count = click_count + 1 WHERE Fun_Id=$id";
            mysqli_query($baglan,$query2);
        }
        else if($Games_ID == 0 && $Fun_Id == 0 && $Sicence_Tech_Id != 0){
            $query = "SELECT * FROM sicence_tech WHERE Sicence_Tech_Id = $Sicence_Tech_Id";
            $tur = "science";
            $id = $Sicence_Tech_Id;
            //count sayısını tutma
            $query2 = "UPDATE mainpagelist SET click_count = click_count + 1 WHERE Sicence_Tech_Id=$id";
            mysqli_query($baglan,$query2);
        }
        else{
           header ("Location: ../404Page/404.html");
        }
        
        if (isset($_SESSION["loggedin"])) {
            $_SESSION["yorum-tur"] = $tur;
            $_SESSION["yorum-id"] =  $id;
            $_SESSION["url"] = $_SERVER['REQUEST_URI'];
        }
        
        

        $result = mysqli_query($baglan,$query);
        $row = mysqli_fetch_assoc($result);

        if($query === null) { header("Location: ../404Page/404.html"); }

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
                        '.$row["Type"].'
                    </div>
                    <div class="time">
                        '.$row["Time"].'
                    </div> 
                </div>
                <div class="content">
                    '.$row["Contents"].'
                </div>
            </div>
        </article>
        ';
    }
