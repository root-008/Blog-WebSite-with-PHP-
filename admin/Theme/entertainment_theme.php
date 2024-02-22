<?php

function func_entertainment_article($baglan)
{
    echo '
            <article>
            <div class="container">
        ';

    $sorgu = "SELECT * FROM fun ORDER BY Fun_Id DESC";
    $sonuc = mysqli_query($baglan, $sorgu);

    echo '
            <a href="add_content.php" class="makale_ekle"><i class="material-icons">add_box</i><span>Yeni Makale Eklemek İçin Tıklayınız...</span></a>
            ';
            echo '<table>
                <tr class="table-search">
                    <td colspan="8">
                        <form action="search_admin.php" method="POST" class="gameform">
                            <input type="text" spaceholder="Ara">
                            <button type="submit" name="fun_ara"><i class="fa fa-search"></i></button>
                        </form>
                    </td>
                </tr>
             ';

    while ($satir = mysqli_fetch_assoc($sonuc)) {
        echo '
                <tr class="table-headers">
                    <td style="width:20px">Fun_ID</td>
                    <td style="width:150px">Resim</td>
                    <td style="width:150px">Tür</td>
                    <td style="width:300px">Başlık</td>
                    <td style="width:600px;">İçerik</td>
                    <td style="width:150px">Yazar</td>
                    <td style="width:150px">Eklenme Tarihi</td>
                    <td style="width:250px"></td>
                </tr>
                <tr class = "table-content">
                    <td>' . $satir["Fun_Id"] . '</td>
                    <td><img src="' . $satir["fun_img"] . '" title="' . $satir["fun_img"] . '" style="width:150px; height:100px"></td>
                    <td>' . $satir["Type"] . '</td>
                    <td>' . $satir["Title"] . '</td>
                    <td class="truncate" style="height:100px;">' . $satir["Contents"] . '</td>
                    <td>' . $satir["Author"] . '</td>
                    <td>' . $satir["Time"] . '</td>
                    <td>
                        <form action="edit.php" method="GET">
                            <button type="submit" name="data_update_fun" value="' . $satir["Fun_Id"] . '" class="Btn"><i class="material-icons">sync</i><span>Düzenle</span></button>
                        </form>
                        <form action="delete.php" method="POST">
                            <button type="submit" name="data_delete_fun" value="' . $satir["Fun_Id"] . '" class="Btn"><i class="material-icons">do_not_disturb</i><span>Sil</span></button>
                        </form>
                    </td>
                </tr>';
    }
    echo '</table>';
    echo '
            </div>
            </article>
        </body>
        ';
}

?>
