<?php
    function func_addContent_article(){
        echo '
            <article>
            <div class="contaier-add_content">
                <form action="insert.php" method="POST" enctype="multipart/form-data">
                    <table class="contents-table">
                        <tr class="table-row">
                            <td class="table-submit">
                                <input type="submit" name="add_content" value="Ekle">
                                <a href="index.php">Vazgeç</a>
                            </td>
                        </tr>
                        <tr class="table-row">
                            <td>
                                
                                <label for="img">Resim Ekle:</label>
                                <input class="table-input" type="file" id="image" name="image">

                                <label class="img-label" for="pic_name">Resim adı:</label>
                                <input class="table-input" type="text" id="filename" name="filename">
                            </td>
                            
                        </tr>
                        <tr class="table-row">
                            <td>
                                <label class="tur-label" for="type">Yazı türü:</label>
                                <select name="type" class="table-input">
                                    <option value="Oyun">Game</option>
                                    <option value="Bilim/Teknoloji">Bilim/Teknoloji</option>
                                    <option value="Eglence">Eğlence</option>
                                    <option value="Galeri/Oyun">Galeri/Oyun</option>
                                    <option value="Galeri/Sinema">Galeri/Sinema</option>
                                    <option value="Galeri/Teknoloji">Galeri/Teknoloji</option>
                                    <option value="Galeri/Bilim">Galeri/Bilim</option>
                                </select>
                        
                                <label class="author-label" for="author">Yazar:</label>
                                <input type="text" name="author">
                            </td>
                        </tr>
                        <tr class="table-row">
                            <td class="basliktd">
                                <label class="baslik-label" for="title">Başlık:</label>
                                <textarea class="baslik-input" name="title" rows="4" cols="100"></textarea>
                            </td>
                        </tr>
                        <tr class="table-row">
                            <td class="iceriktd">
                                <label class="icerik-label" for="content">İçerik:</label>
                                <textarea class="ckeditor" id="editor" name="editor"></textarea>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </article>
        </body>
        ';
    }

?>