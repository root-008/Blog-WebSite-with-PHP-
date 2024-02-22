<?php
    function func_Login_Body(){
        echo '
            <body>
            <div class="container">
                <div class="login-left">
                    <div class="login-header">
                        <h1>Sitemize Hoşgeldiniz</h1>
                        <p>Platformu kullanmak için lütfen giriş yapınız</p>
                    </div>
                    <form class="login-form" action="users_info/login_action.php" method="POST">
                        <div class="login-form-content">
                            <div class="form-item">
                                <label for="text">Kullanıcı Adı</label>
                                <input type="text" id="email" name="username">
                            </div>
                            <div class="form-item">
                                <label for="password">Parola</label>
                                <input type="password" id="password" name="password">
                            </div>
                            <button type="submit" name="girisyap">Giriş Yap</button>
                        </div>
                        <p>Hesabınız yok mu? <a class="gotopanel" href="registrypage.php">Hemen Kayıt Olun!</a></p>
                        <p>Siteye dönmek için<a class="gotopanel" href="index.php"> Tıklayınız.</a></p>
                        <div class="login-form-footer">
                            <!--<a href="#">
                                <img width="30px" src="Pictures/face-icon.png" alt="">Facebook Giriş
                            </a>
                            <a href="#">
                                <img width="30px" src="Pictures/google-icon.png" alt="">Google Giriş
                            </a>-->
                        </div>
                    </form>
                </div>
                <div class="login-right">
                    <img src="Pictures/logoblack.png">
                </div>
            </div>
        </body>
        </html>';
    }

    function func_Reg_Container(){
        echo '
            <body>
            <div class="container">
                <div class="login-left">
                    <div class="login-header">
                        <h1>Sitemize Hoşgeldiniz</h1>
                        <p>Platformu kullanmak için lütfen kayıt olunuz</p>
                    </div>
                    <form class="login-form" action="users_info/registry_action.php" method="POST">
                        <div class="login-form-content">
                            <div class="form-item">
                                <label for="username">Kullanıcı Adı</label>
                                <input type="text" id="username" name="username">
                            </div>
                            <div class="form-item">
                                <label for="password">Parola</label>
                                <input type="password" id="password" name="password">
                            </div>
                            <div class="form-item">
                                <label for="verifypassword">Parola Doğrulama</label>
                                <input type="password" id="verifypassword" name="confirm_password">
                            </div>
                            <button type="submit" name="kayitol">Kayıt Ol</button>
                        </div>
                        <p>Hesabınız var mı?<a class="gotopanel" href="loginpage.php"> Giriş Yapın</a></p>
                        <p>Siteye dönmek için<a class="gotopanel" href="index.php"> Tıklayınız.</a></p>
                        <div class="login-form-footer">
                            <!--<a href="#">
                                <img width="30px" src="Pictures/face-icon.png" alt="">Facebook Kayıt
                            </a>
                            <a href="#">
                                <img width="30px" src="Pictures/google-icon.png" alt="">Google Kayıt
                            </a>-->
                        </div>
                    </form>
                </div>
                <div class="login-right">
                    <img src="Pictures/logoblack.png">
                </div>
            </div>
            </body>
            </html>';
    }
?>