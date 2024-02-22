<?php
    function func_edit_article($satir,$type,$img,$type2,$title,$contents,$author){
        $selected1 = ""; $selected2 = ""; $selected3 = ""; $selected4 = ""; $selected5 = ""; $selected6 = ""; $selected7 = ""; 
        if($satir["$type2"] === "Oyun") $selected1 = "selected";
        if($satir["$type2"] === "Bilim/Teknoloji") $selected2 = "selected";
        if($satir["$type2"] === "Eglence") $selected3 = "selected";
        if($satir["$type2"] === "Galeri/Oyun") $selected4 = "selected";
        if($satir["$type2"] === "Galeri/Sinema") $selected5 = "selected";
        if($satir["$type2"] === "Galeri/Teknoloji") $selected6 = "selected";
        if($satir["$type2"] === "Galeri/Bilim") $selected7 = "selected";

        echo '
            <article>
            <div class="contaier-add_content">
                <form action="update.php" method="POST" enctype="multipart/form-data">
                    <table class="contents-table">
                        <tr>
                            <td></td>
                            <td><input type="hidden" name="id" value="'.$satir["Games_ID"].'"</td>
                            <td><input type="hidden" name="id2" value="'.$satir["Sicence_Tech_Id"].'"</td>
                            <td><input type="hidden" name="id3" value="'.$satir["Fun_Id"].'"</td>
                            <td><input type="hidden" name="id4" value="'.$satir["gallery_Id"].'"</td>
                        </tr>
                        <tr class="table-row">
                            <td class="table-label"><label for="img">Resim Ekle:</label></td>
                            <td class="table-input"><input type="file" id="image" name="image"></td>
                        </tr>
                        <tr class="table-row">
                            <td class="table-label"><label for="pic_name">Resim adı:</label></td>
                            <td class="table-input"><input type="text" id="filename" name="filename" value="'.$satir["$img"].'"></td>
                        </tr>
                        <tr class="table-row">
                            <td class="table-label"><label for="type">Yazı türü:</label></td>
                            <td class="table-input">
                                <select name="type" value="'.$satir["$type2"].'">
                                    <option value="Oyun" '.$selected1.'>Game</option>
                                    <option value="Bilim/Teknoloji" '.$selected2.'>Bilim/Teknoloji</option>
                                    <option value="Eglence" '.$selected3.'>Eğlence</option>
                                    <option value="Galeri/Oyun" '.$selected4.'>Galeri/Oyun</option>
                                    <option value="Galeri/Sinema" '.$selected5.'>Galeri/Sinema</option>
                                    <option value="Galeri/Teknoloji" '.$selected6.'>Galeri/Teknoloji</option>
                                    <option value="Galeri/Bilim" '.$selected7.'>Galeri/Bilim</option>
                                </select>
                            </td>
                        </tr>
                        <tr class="table-row">
                            <td class="table-label"><label for="title">Başlık:</label></td>
                            <td class="table-input"><textarea name="title" rows="4" cols="100">'.$satir["$title"].'</textarea></td>
                        </tr>
                        <tr class="table-row">
                            <td class="table-label"><label for="content">İçerik:</label></td>
                            <td class="table-input"><textarea class="ckeditor" id="editor" name="editor">'.$satir["$contents"].'</textarea></td>
                        </tr>
                        <tr class="table-row">
                            <td class="table-label"><label for="author">Yazar:</label></td>
                            <td class="table-input"><input type="text" name="author" value="'.$satir["$author"].'"></td>
                        </tr>
                        <tr class="table-row">
                            <td class="table-submit" colspan="2"><input type="submit" name="update_'.$type.'_content" value="Düzenle"> 
                            <input type="submit" name="admin_main_go" value="İptal"></td>
                        </tr>
                    </table>
                </form>
            </div>
            </article>
            </body>
            ';
            $selected = "";
    }
?>