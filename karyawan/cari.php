<?php
require_once('_functions.php');

$search = $_POST['search'];

$sql = "SELECT * FROM master WHERE id nama LIKE '%$search%'";
$result = mysqli_query($conn, $sql);

$data_karyawan = mysqli_fetch_all($result, MYSQLI_ASSOC);

header('Location: ../index.php?page=karyawan');