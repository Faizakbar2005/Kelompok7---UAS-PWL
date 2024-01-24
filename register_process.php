<?php
require_once('_functions.php');

// Validasi jika sudah login dan memiliki sesi 'master'
if (isset($_SESSION['login']) && isset($_SESSION['master'])) {
    header('Location: http://localhost/rumah_laundry/');
    exit;
}

$error_message = '';

if (isset($_POST['register'])) {
    $nama = $_POST['nama'];
    $email = $_POST['email'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    $confirm_password = $_POST['confirm_password'];

    // Validasi jika password dan konfirmasi password sama
    if ($password !== $confirm_password) {
        $error_message = '<div class="alert alert-danger" role="alert">Konfirmasi password tidak cocok.</div>';
    } else {
        // Periksa apakah username sudah digunakan
        $check_query = "SELECT * FROM master WHERE username = ?";
        $check_stmt = $koneksi->prepare($check_query);
        $check_stmt->bind_param("s", $username);
        $check_stmt->execute();
        $check_result = $check_stmt->get_result();

        if ($check_result->num_rows > 0) {
            // Username sudah digunakan, berikan pesan kesalahan
            $error_message = '<div class="alert alert-danger" role="alert">Username sudah digunakan. Silakan coba dengan username lain.</div>';
        } else {
            // Hash password
            $hashed_password = password_hash($password, PASSWORD_DEFAULT);

            // Simpan data ke dalam database
            $insert_query = "INSERT INTO master (nama, email, username, password) VALUES (?, ?, ?, ?)";
            $insert_stmt = $koneksi->prepare($insert_query);
            $insert_stmt->bind_param("ssss", $nama, $email, $username, $hashed_password);

            if ($insert_stmt->execute()) {
                // Registrasi berhasil, arahkan ke halaman login
                header('Location: login.php');
                exit;
            } else {
                // Gagal menambahkan user, tampilkan pesan kesalahan
                $error_message = '<div class="alert alert-danger" role="alert">Registrasi gagal. Silakan coba lagi.</div>';
            }
        }
    }
}
?>