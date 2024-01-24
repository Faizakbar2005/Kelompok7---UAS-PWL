-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jan 2024 pada 03.41
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry_app`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `master`
--

CREATE TABLE `master` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `master`
--

INSERT INTO `master` (`id_user`, `nama`, `email`, `username`, `password`, `level`) VALUES
(4, 'Admin', 'admin@mail.com', 'admin', '$2y$10$mi.Q/r6k5TFricaNcyr4y.3hm0qsFQeOWZEhXhJoN0h3W/bDQC/1m', 'Admin'),
(11, 'Akbar', 'karyawan1@mail.com', 'karyawan1', '$2y$10$rBG6s0gdPJDrNU9NXNxsAOGNIKDZAS..15cUo/i5xieIbcw2gxa1e', 'Karyawan'),
(13, 'Fadli Kurnia', 'fadlikurni7654@gmail.com', 'fadli', '$2y$10$3B/hAcMyMWIyPTvQHhhtQusICrJf8SDK4lpMkhRgDaiM8H3WMcJQO', 'Karyawan'),
(14, 'Faiz Akbar', 'sycopat22@gmail.com', 'faiz2005', '$2y$10$NxOkrbXGd1fDVGZHAoAwluIftcXxrrtu2gFGdJcDNziv1af1NOlI6', NULL),
(15, 'Nyak Isa', 'kelompok7@gmail.com', 'isa', '$2y$10$RPsgDobJqqQCFfpvE2WOvOuXC9WcWtHVyk9YoHupmOdtbNDzmN00m', 'Karyawan'),
(16, 'Hibban Wijaya', 'kelompok77@gmail.com', 'hibban', '$2y$10$vj7hF/QHivOK0liE.qxXUePa8Oj9eLgo1ZTCqvjmOkdMVYEjNRvwa', 'Karyawan'),
(17, 'Orang Keren', 'staff2@gmail.com', 'Orang', '$2y$10$J2mMT.F.EC4YGVUWs5fiHOlrPtrXfQZuNdbLseyifNjPCMaWeK/NS', NULL),
(18, 'siapa', 'siapa@gmail.com', 'siapa', '$2y$10$Vz9oQEhWdN1vwFdSgSMccesuom37jfhUBMYY2lHt3JwlZ0Nu7Oyuu', NULL),
(19, 'Fairuz Azim', 'orangbaru@gmail.com', 'Fairuz', '$2y$10$B7WPTSmA6tPSdkth8lZXTOFtgoQ59vRYv8RaOWprqzOCNspvQZ.z6', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_cuci_komplit`
--

CREATE TABLE `tb_cuci_komplit` (
  `id_ck` int(11) NOT NULL,
  `nama_paket_ck` varchar(100) NOT NULL,
  `waktu_kerja_ck` varchar(20) NOT NULL,
  `kuantitas_ck` int(11) NOT NULL,
  `tarif_ck` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_cuci_komplit`
--

INSERT INTO `tb_cuci_komplit` (`id_ck`, `nama_paket_ck`, `waktu_kerja_ck`, `kuantitas_ck`, `tarif_ck`) VALUES
(1, 'Cuci Komplit Reguler', '2 Hari', 1, 8000),
(2, 'Cuci Komplit Kilat', '1 Hari', 1, 15000),
(3, 'Cuci Komplit Express', '5 Jam', 1, 20000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_cuci_satuan`
--

CREATE TABLE `tb_cuci_satuan` (
  `id_cs` int(11) NOT NULL,
  `nama_cs` varchar(100) NOT NULL,
  `waktu_kerja_cs` varchar(20) NOT NULL,
  `kuantitas_cs` int(11) NOT NULL,
  `tarif_cs` int(11) NOT NULL,
  `keterangan_cs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_cuci_satuan`
--

INSERT INTO `tb_cuci_satuan` (`id_cs`, `nama_cs`, `waktu_kerja_cs`, `kuantitas_cs`, `tarif_cs`, `keterangan_cs`) VALUES
(1, 'Jaket ', '1 Hari', 1, 15000, ''),
(2, 'Jaket Non Kulit', '1 Hari', 1, 6000, ''),
(3, 'Boneka Mini', '1 Hari', 1, 3000, ''),
(4, 'Boneka Kecil', '1 Hari', 1, 6000, ''),
(5, 'Boneka Sedang', '1 Hari', 1, 10000, ''),
(6, 'Boneka Besar', '1 Hari', 1, 20000, ''),
(7, 'Sejadah', '1 Hari', 1, 20000, ''),
(8, 'Selimut', '1 Hari', 1, 20000, ''),
(9, 'Keset', '1 Hari', 1, 20000, ''),
(12, 'Helm', '3 Hari', 1, 50000, '-'),
(13, 'Sepatu', '3 Hari', 1, 30000, '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_order_ck`
--

CREATE TABLE `tb_order_ck` (
  `id_order_ck` int(11) NOT NULL,
  `or_ck_number` varchar(10) DEFAULT NULL,
  `nama_pel_ck` varchar(100) NOT NULL,
  `no_telp_ck` char(13) NOT NULL,
  `alamat_ck` text NOT NULL,
  `jenis_paket_ck` varchar(100) NOT NULL,
  `wkt_krj_ck` varchar(30) DEFAULT NULL,
  `berat_qty_ck` int(11) NOT NULL,
  `harga_perkilo` int(11) DEFAULT NULL,
  `tgl_masuk_ck` date NOT NULL,
  `tgl_keluar_ck` date NOT NULL,
  `tot_bayar` double DEFAULT NULL,
  `keterangan_ck` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_order_ck`
--

INSERT INTO `tb_order_ck` (`id_order_ck`, `or_ck_number`, `nama_pel_ck`, `no_telp_ck`, `alamat_ck`, `jenis_paket_ck`, `wkt_krj_ck`, `berat_qty_ck`, `harga_perkilo`, `tgl_masuk_ck`, `tgl_keluar_ck`, `tot_bayar`, `keterangan_ck`) VALUES
(16, 'CK-63FF618', 'Adam', '081000111000', 'Ds. Suka Maju', 'Cuci Komplit Reguler', '2 Hari', 2, 8000, '2023-02-28', '2023-03-01', 16000, '-'),
(17, 'CK-63FF621', 'Sischa', '082222000111', 'Ds. Suka Maju', 'Cuci Komplit Express', '5 Jam', 5, 20000, '2023-03-01', '2023-03-01', 100000, '-'),
(20, 'CK-659676E', 'Nurul', '08135628290', 'Bukittinggi', 'Cuci Komplit Express', '5 Jam', 4, 20000, '2024-01-03', '2024-01-05', 80000, ''),
(21, 'CK-659D6F3', 'Hibban Wijaya', '08126743839', 'Bekasi', 'Cuci Komplit Kilat', '1 Hari', 5, 15000, '2024-01-09', '2024-01-11', 75000, ''),
(22, 'CK-659D75C', 'Brando', '08393367367', 'Depok', 'Cuci Komplit Reguler', '2 Hari', 20, 8000, '2024-01-09', '2024-01-11', 160000, 'Gokil'),
(23, 'CK-659E209', 'Muhammad', '08525216981', 'Palembang', 'Cuci Komplit Reguler', '2 Hari', 1, 8000, '2024-01-10', '2024-01-10', 8000, 'Cucinya harus bersih!'),
(24, 'CK-659E221', 'siapa', '08463833873', 'depok', 'Cuci Komplit Kilat', '1 Hari', 1, 15000, '2024-01-10', '2024-01-11', 15000, ''),
(25, 'CK-659E23D', 'Aaaa', '082929292', 'Cileungsi', 'Cuci Komplit Kilat', '1 Hari', 1, 15000, '2024-01-10', '2024-01-10', 15000, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_order_cs`
--

CREATE TABLE `tb_order_cs` (
  `id_order_cs` int(11) NOT NULL,
  `or_cs_number` varchar(10) NOT NULL,
  `nama_pel_cs` varchar(100) NOT NULL,
  `no_telp_cs` varchar(13) NOT NULL,
  `alamat_cs` text NOT NULL,
  `jenis_paket_cs` varchar(100) NOT NULL,
  `wkt_krj_cs` varchar(30) DEFAULT NULL,
  `jml_pcs` int(11) NOT NULL,
  `harga_perpcs` int(11) NOT NULL,
  `tgl_masuk_cs` date NOT NULL,
  `tgl_keluar_cs` date NOT NULL,
  `tot_bayar` double NOT NULL,
  `keterangan_cs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_order_cs`
--

INSERT INTO `tb_order_cs` (`id_order_cs`, `or_cs_number`, `nama_pel_cs`, `no_telp_cs`, `alamat_cs`, `jenis_paket_cs`, `wkt_krj_cs`, `jml_pcs`, `harga_perpcs`, `tgl_masuk_cs`, `tgl_keluar_cs`, `tot_bayar`, `keterangan_cs`) VALUES
(6, 'CS-63FF697', 'Dedi', '089000777888', 'Ds. Sukamaju', 'Selimut', '1 Hari', 1, 20000, '2023-02-28', '2023-03-01', 20000, '-'),
(7, 'CS-6595A6F', 'Faiz Akbar', '089696242157', 'Jl. Jend Sudirman', 'Sejadah', '1 Hari', 1, 20000, '2024-01-04', '2024-01-12', 20000, ''),
(8, 'CS-6596760', 'Akbar', '08352718291', 'Pekanbaru', 'Jaket Kulit', '1 Hari', 1, 15000, '2024-01-04', '2024-01-07', 15000, 'Bersih-bersih ya'),
(9, 'CS-659D6F6', 'Nyak Isa', '082627272883', 'Aceh', 'Sejadah', '1 Hari', 1, 20000, '2024-01-09', '2024-01-09', 20000, ''),
(10, 'CS-659D6FD', 'Rusdi', '0826336338', 'Ngawi', 'Keset', '1 Hari', 5, 20000, '2024-01-09', '2024-01-10', 100000, 'Hitamkan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_riwayat_ck`
--

CREATE TABLE `tb_riwayat_ck` (
  `id_ck` int(11) NOT NULL,
  `or_number` varchar(20) NOT NULL,
  `pelanggan` varchar(100) NOT NULL,
  `no_telp` char(15) NOT NULL,
  `alamat` text NOT NULL,
  `j_paket` varchar(50) NOT NULL,
  `wkt_kerja` varchar(20) NOT NULL,
  `berat` int(5) NOT NULL,
  `h_perkilo` int(11) NOT NULL,
  `tgl_msk` varchar(40) NOT NULL,
  `tgl_klr` varchar(40) NOT NULL,
  `total` int(11) NOT NULL,
  `nominal_byr` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_riwayat_ck`
--

INSERT INTO `tb_riwayat_ck` (`id_ck`, `or_number`, `pelanggan`, `no_telp`, `alamat`, `j_paket`, `wkt_kerja`, `berat`, `h_perkilo`, `tgl_msk`, `tgl_klr`, `total`, `nominal_byr`, `kembalian`, `status`, `keterangan`) VALUES
(16, 'CK-63FF618', 'Adam', '081000111000', 'Ds. Suka Maju', 'Cuci Komplit Reguler', '2 Hari', 2, 8000, '28 Februari 2023', '01 Maret 2023', 16000, 20000, 4000, 'Sukses', '-'),
(17, 'CK-63FF621', 'Sischa', '082222000111', 'Ds. Suka Maju', 'Cuci Komplit Express', '5 Jam', 5, 20000, '01 Maret 2023', '01 Maret 2023', 100000, 100000, 0, 'Sukses', '-'),
(18, 'CK-63FF62C', 'Ayumi', '085555000555', 'Ds. Trihanggo', 'Cuci Komplit Reguler', '2 Hari', 3, 8000, '27 Februari 2023', '01 Maret 2023', 24000, 25000, 1000, 'Sukses', '-'),
(19, 'CK-659E209', 'Muhammad', '08525216981', 'Palembang', 'Cuci Komplit Reguler', '2 Hari', 1, 8000, '10 Januari 2024', '10 Januari 2024', 8000, 30000, 22000, 'Sukses', 'Cucinya harus bersih!'),
(20, 'CK-659E221', 'siapa', '08463833873', 'depok', 'Cuci Komplit Kilat', '1 Hari', 1, 15000, '10 Januari 2024', '11 Januari 2024', 15000, 15000, 0, 'Sukses', ''),
(21, 'CK-659E23D', 'Aaaa', '082929292', 'Cileungsi', 'Cuci Komplit Kilat', '1 Hari', 1, 15000, '10 Januari 2024', '10 Januari 2024', 15000, 20000, 5000, 'Sukses', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_riwayat_cs`
--

CREATE TABLE `tb_riwayat_cs` (
  `id_cs` int(11) NOT NULL,
  `or_number` varchar(20) DEFAULT NULL,
  `pelanggan` varchar(100) DEFAULT NULL,
  `no_telp` char(15) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `j_paket` varchar(50) DEFAULT NULL,
  `wkt_kerja` varchar(20) DEFAULT NULL,
  `jml_pcs` int(11) DEFAULT NULL,
  `h_perpcs` int(11) DEFAULT NULL,
  `tgl_msk` varchar(40) DEFAULT NULL,
  `tgl_klr` varchar(40) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `nominal_byr` int(11) DEFAULT NULL,
  `kembalian` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_riwayat_cs`
--

INSERT INTO `tb_riwayat_cs` (`id_cs`, `or_number`, `pelanggan`, `no_telp`, `alamat`, `j_paket`, `wkt_kerja`, `jml_pcs`, `h_perpcs`, `tgl_msk`, `tgl_klr`, `total`, `nominal_byr`, `kembalian`, `status`, `keterangan`) VALUES
(4, 'CS-63FF697', 'Dedi', '089000777888', 'Ds. Sukamaju', 'Selimut', '1 Hari', 1, 20000, '28 Februari 2023', '01 Maret 2023', 20000, 20000, 0, 'Sukses', '-'),
(5, 'CS-6595A6F', 'Faiz Akbar', '089696242157', 'Jl. Jend Sudirman', 'Sejadah', '1 Hari', 1, 20000, '04 Januari 2024', '12 Januari 2024', 20000, 20000, 0, 'Sukses', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `master`
--
ALTER TABLE `master`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `tb_cuci_komplit`
--
ALTER TABLE `tb_cuci_komplit`
  ADD PRIMARY KEY (`id_ck`);

--
-- Indeks untuk tabel `tb_cuci_satuan`
--
ALTER TABLE `tb_cuci_satuan`
  ADD PRIMARY KEY (`id_cs`);

--
-- Indeks untuk tabel `tb_order_ck`
--
ALTER TABLE `tb_order_ck`
  ADD PRIMARY KEY (`id_order_ck`);

--
-- Indeks untuk tabel `tb_order_cs`
--
ALTER TABLE `tb_order_cs`
  ADD PRIMARY KEY (`id_order_cs`);

--
-- Indeks untuk tabel `tb_riwayat_ck`
--
ALTER TABLE `tb_riwayat_ck`
  ADD PRIMARY KEY (`id_ck`);

--
-- Indeks untuk tabel `tb_riwayat_cs`
--
ALTER TABLE `tb_riwayat_cs`
  ADD PRIMARY KEY (`id_cs`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `master`
--
ALTER TABLE `master`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tb_cuci_komplit`
--
ALTER TABLE `tb_cuci_komplit`
  MODIFY `id_ck` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tb_cuci_satuan`
--
ALTER TABLE `tb_cuci_satuan`
  MODIFY `id_cs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tb_order_ck`
--
ALTER TABLE `tb_order_ck`
  MODIFY `id_order_ck` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `tb_order_cs`
--
ALTER TABLE `tb_order_cs`
  MODIFY `id_order_cs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_riwayat_ck`
--
ALTER TABLE `tb_riwayat_ck`
  MODIFY `id_ck` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tb_riwayat_cs`
--
ALTER TABLE `tb_riwayat_cs`
  MODIFY `id_cs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
