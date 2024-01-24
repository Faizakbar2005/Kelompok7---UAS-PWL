<?php 
require_once('_functions.php');

?>


<!DOCTYPE html>
<html>
<head>
    <title>Sistem Pemesanan Laundry</title>
    <link rel="stylesheet" href="<?=url('_assets/css/style.css')?>">
    <link rel="shortcut icon" href="<?=url('_assets/img/logo/2.png')?>" type="image/x-icon">
</head>
<body>

<header>
    <nav>
        <div class="logo">
            <a href="<?=url()?>">
                <img src="<?=url('_assets/img/logo/3.png')?>" alt="Rumah Laundry Logo">
            </a>
        </div>
        <ul class="nav-menu">
            <li>
                <span id=""><?= ucfirst($_SESSION['master']) ?></span>
                <ul class="dropdown-menu">
                    <li><a href="<?=url('logout.php')?>">Logout</a></li>
                </ul>
            </li>
        </ul>
    </nav>
    <div id="nav-mini">
        <a href="<?=url('index.php')?>" class="link-nav">Dashboard</a>
        <a href="<?=url('karyawan/karyawan.php')?>" class="link-nav">Karyawan</a>
        <a href="<?=url('riwayat_transaksi/riwayat.php')?>" class="link-nav">Riwayat Transaksi</a>
        <a href="<?=url('paket/paket.php')?>" class="link-nav">Daftar Paket</a>
        <a href="<?=url('review.php')?>" class="link-nav">Ulasan</a>
    </div>
</header>

</body>
</html>
