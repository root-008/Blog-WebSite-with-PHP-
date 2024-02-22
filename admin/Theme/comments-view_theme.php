<?php
    function func_comments_view_article($baglan)
    {
        $query = "SELECT * FROM comments ORDER BY comments_id";
        $result = mysqli_query($baglan,$query);

        echo '
            <div class="comments-container">
            <table>
                <tr>
                    <th class="id-head">comments_id</th>
                    <th class="username-head">username</th>
                    <th class="comments-head">comments</th>
                    <th class="time-head">time</th>
                    <th class="url-head">URL</th>
                </tr>
        ';
        while($row = mysqli_fetch_assoc($result)){
            echo '
                <tr>
                    <td>'.$row["comments_id"].'</td>
                    <td>'.$row["username"].'</td>
                    <td>'.$row["comments"].'</td>
                    <td>'.$row["time"].'</td>
                    <td>'.$row["url"].'</td>
                    <td>
                        <form action="delete.php" method="POST">
                            <button type="submit" name="data_delete_comments" value="'.$row["comments_id"].'" class="Btn"><i class="material-icons">do_not_disturb</i><span>Sil</span></button>
                        </form>
                    </td>
                </tr>
            ';
        }   
        echo '
            </table>            
            </div> 
        ';

        
    }
?>