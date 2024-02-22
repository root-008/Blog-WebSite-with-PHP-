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
                    <form class="login-form" action="loginaction.php" method="POST">
                        <div class="login-form-content">
                            <div class="form-item">
                                <label for="username">Kullanıcı Adı:</label>
                                <input type="text" name="username" id="email">
                            </div>
                            <div class="form-item">
                                <label for="password">Parola</label>
                                <input type="password" name="password" id="password">
                            </div>
                            <button name="login" type="submit">Giriş Yap</button>
                        </div>
                        <!--<p>Hesabınız yok mu? <a class="gotopanel" href="registrypage.php">Hemen Kayıt Olun!</a></p>-->
                        <p>Siteye dönmek için<a class="gotopanel" href="../../index.php"> Tıklayınız.</a></p>
                        <div class="login-form-footer">
                              
                        </div>
                    </form>
                </div>
                <div class="login-right">
                    <img src="../Pictures/logoblack.png">
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
                    <form class="login-form" action="registryaction.php" method="POST">
                        <div class="login-form-content">
                            <div class="form-item">
                                <label for="username">Kullanıcı Adı</label>
                                <input type="text" name="username" id="username" required>
                            </div>
                            <div class="form-item">
                                <label for="password">Parola</label>
                                <input type="password" name="password" id="password" required>
                            </div>
                            <div class="form-item">
                                <label for="verifypassword">Parola Doğrulama</label>
                                <input type="password" name="confirm_password" id="confirm_password" required>
                            </div>
                           <!-- <div class="form-item">
                                <div class="checkbox">
                                    <input type="checkbox" name="stayLoggedIn" value="1" id="rememberMeCheckbox" checked>
                                    <label for="rememberMeCheckbox" id="checkboxlabel">Beni Hatırla</label>
                                </div>
                            </div>-->
                            <button name="save" type="submit">Kayıt Ol</button>
                        </div>
                        <p>Hesabınız var mı?<a class="gotopanel" href="loginpage.php"> Giriş Yapın</a></p>
                        <p>Siteye dönmek için<a class="gotopanel" href="../index.php"> Tıklayınız.</a></p>
                        <div class="login-form-footer">
                            
                        </div>
                    </form>
                </div>
                <div class="login-right">
                    <img src="../Pictures/logoblack.png">
                </div>
            </div>
            </body>
            </html>';
    }
