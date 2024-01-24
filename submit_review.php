<?php
// Nama file yang akan disimpan
$filename = 'review.json';

// Memeriksa jika file tidak ada, maka akan dibuat file kosong
if (!file_exists($filename)) {
    file_put_contents($filename, '[]');
}

// Mengambil data dari formulir
$customerName = $_POST['customerName'] ?? '';
$review = $_POST['review'] ?? '';

// Mengambil konten JSON yang ada
$currentData = file_get_contents($filename);

// Mengubah konten JSON menjadi array PHP
$reviews = json_decode($currentData, true);

// Menambahkan ulasan baru ke dalam array
$newReview = [
    'customerName' => $customerName,
    'review' => $review
];
$reviews[] = $newReview;

// Mengubah kembali ke format JSON
$jsonData = json_encode($reviews, JSON_PRETTY_PRINT);

// Menulis kembali ke file JSON
file_put_contents($filename, $jsonData);

// Memberikan respons bahwa ulasan berhasil ditambahkan
echo "Ulasan berhasil ditambahkan.";
?>
