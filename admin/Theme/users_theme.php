<?php

    function func_users_article($baglan){
        $id = $_GET["id"];

        if($id == "admin"){
            $query = "SELECT * FROM `accountinfo` ORDER BY account_Id";
            $dbid = "account_Id";
        }
        else if($id == "main"){
            $query = "SELECT * FROM users_account ORDER BY users_id ";
            $dbid = "users_id";
        }
        else{
            header("Location: ../404Page/404.html");
        }
        
        $result = $baglan->query($query);
        echo '
            <article>
            <div class="users-container">
                <div class="head">
                    <table>
                        <tr>
                            <th style="width: 10rem;">ID</th>
                            <th style="width: 20rem;">UserName</th>
                            <th style="width: 45rem;">Parola</th>
                            <th style="width: 15rem;"></th>
                        </tr>
                    </table>
                </div>
        ';
        while($row = $result->fetch_assoc()){
            echo '
                <table>
                    <tr class="row">
                        <td class="id" style="width: 10rem;">
                            '.$row[$dbid].'
                        </td>
                        <td class="username" style="width: 20rem;">
                            '.$row["username"].'
                        </td>
                        <td class="password" style="width: 45rem;">
                            '.$row["password"].'
                        </td>
                        <td class="btns" style="width: 15rem;">
                            <form action="account/actions/users_del_update.php?id='.$id.'" method="POST">
                                <!--<button type="submit" name="data_update_users" value="'.$row[$dbid].'" class="btn"><i class="material-icons">sync</i><span>Düzenle</span></button>-->
                                <button type="submit" name="data_delete_users" value="'.$row[$dbid].'" class="btn"><i class="material-icons">do_not_disturb</i><span>Sil</span></button>
                            </form>
                        </td>
                    </tr>
        ';
        }
        echo '
            </div>
            </article>
            ';
    }
?>

