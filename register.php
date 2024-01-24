<?php 
    require_once('_functions.php');
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistem Pemesanan Laundry | Registrasi</title>
    <link rel="stylesheet" href="<?=url('_assets/css/login.css')?>">
    <link rel="shortcut icon" href="<?= url('_assets/img/logo/2.png') ?>" type="image/x-icon">
</head>
<body>

    <div class="box">
        <div class="box-contentreg">
            <div class="col box__reg">
                <div class="logo">
                    <img src="<?= url('_assets/img/logo/3.png') ?>" alt="">
                </div>
                
                <div class="box__left-form">
                    <form action="register_process.php" method="post">
                        <div class="box__left-form-group">
                            <div class="input-form">
                         
                                <h2> Sign Up </h2>
                           
                                <input type="text" name="nama" placeholder="Nama" required autocomplete="off">
                            </div>
                        </div>

                        <div class="box__left-form-group">
                            <div class="input-form">
                                <input type="email" name="email" placeholder="Email" required autocomplete="off">
                            </div>
                        </div>

                        <div class="box__left-form-group">
                            <div class="input-form">
                                <input type="text" name="username" placeholder="Username" required autocomplete="off">
                            </div>
                        </div>

                        <div class="box__left-form-group">
                            <div class="input-form">
                                <input type="password" name="password" placeholder="Password" required autocomplete="off">
                            </div>
                        </div>

                        <div class="box__left-form-group">
                            <div class="input-form">
                                <input type="password" name="confirm_password" placeholder="Confirm Password" required autocomplete="off">
                            </div>
                        </div>

                        <div class="box__left-form-group">
                            <button type="submit" name="register" class="btn-login">Register</button>
                        </div>

                        <div class="d-flex align-items-center justify-content-center">
                            <a class="text-primary fw-bold ms-2" href="login.php"> Sudah punya akun? Login disini</a>
                        </div>
                    </form>
                </div>
            </div>

            <div class="col box__right">
              
                    <div class="text__right">
                        <h1>Silahkan Registrasi Disni!</h1>
                    </div>
                    

</body>
</html>
