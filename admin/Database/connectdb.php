<?php 
    function connect(){
        $servername = "localhost";
        $username = 'root';
        $password = '';
        $database = 'db_for_web';
    
        $baglanti = mysqli_connect($servername , $username , $password,$database);
    /*
        if (!$baglanti) {
            echo "Connection failed";
        }
    
        echo "Connected successfully";
    */
        return $baglanti;
    }
?>