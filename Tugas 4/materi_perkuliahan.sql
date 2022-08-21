-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220820.c36dd24b59
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Agu 2022 pada 05.05
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `materi_perkuliahan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_kategori`
--

CREATE TABLE `admin_kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_produk`
--

CREATE TABLE `admin_produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `berat` int(11) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin_produk`
--

INSERT INTO `admin_produk` (`id`, `nama`, `harga`, `berat`, `deskripsi`, `stok`, `created_at`, `updated_at`) VALUES
(2, 'Leedoo Sepatu Sneakers Casual Pria Lentur Sport Fashion Hitam MR109', 99000, 180, 'BONUS : FREE BOX & KAOS KAKI\r\n\r\nSepatu Sneaker Original & 100% Impor.\r\nSepatu Sneaker murah tapi gak murahan.\r\nSepatu yang kami jual 100% baru + box.\r\nBarang sesuai dengan GAMBAR.\r\nSepatu Sneakers ringan, Kaki bergerak leluasa Sepatu Sneakers lembut di dalam, Nyaman saat dipakai, Sepatu Sneakers Anti slip, Tidak pengap, Tidak mudah lepas, Sepatu Sneakers Model simple dan elegan, Trend Fashion.\r\n\r\nFitur : Sol Berbahan Karet Jadi Terasa Empuk & Nyaman Ketika Digunakan.\r\nCocok Digunakan Untuk : Sekolah, Kuliah, Kerja, Traveling.\r\n\r\nReady warna : Abu\r\nSize : 39-44\r\nPerincian Size \r\n39 = 24.5 cm \r\n40 = 25 cm \r\n41 = 25.5 cm \r\n42 = 26 cm \r\n43 = 26.5 cm \r\n44 = 27 cm \r\n\r\nJadwal Pengiriman Hari Senin-Sabtu\r\nOrder sebelum jam 13:00 WIB  akan diproses dihari yang sama.\r\nOrder melewati jam 13:00 WIB akan diproses dihari selanjutnya.\r\nHari minggu dan tanggal merah libur, tidak ada pengiriman.\r\nUpdate resi maksimal 1x24jam setelah paket dipickup pihak ekspedisi.\r\n\r\nGunakan Voucher FREE ONGKIR dari Shopee untuk menikmati subsidi ongkir.\r\n\r\n*CATATAN YANG PERLU DIPERHATIKAN* \r\n‘’PENGIRIMAN SEPATU APAPUN SUDAH TERMASUK BOX DENGAN KEADAAN BARU, APABILA SETELAH SAMPAI TUJUAN BOX ADA KERUSAKAN BUKAN KESALAHAN DARI KAMI. UNTUK PEMESANAN SEPATU JANGAN LUPA BERI KETERANGAN UKURAN/SIZE YANG DIPESAN’’.\r\n\r\nPesanan sesuai dengan invoice pesanan awal tidak dapat di retur.\r\nPesanan salah kirim barang, warna maupun ukuran boleh ditukar.\r\nMasa diperbolehkan retur 3 hari setelah barang diterima. Dan harus dalam keadaan belum dipakai.\r\n\r\nPERHATIKAN SEBELUM ORDER\r\n\r\n- Pastikan Alamat & No.Telp Tujuan / Pengiriman Jelas & Lengkap.\r\n- Pastikan Ukuran & Warna yang diinginkan sesuai dengan yang ada di pesanan, apabila sudah terlanjur membayar pesanan namun ada kesalahan dalam mengorder bisa konfirmasi untuk pergantian ukuran & warna melalui chat sebelum dikirim.\r\n- Pastikan Ukuran Sepatu dengan Ukuran Kaki sesuai & pas ketika pesanan tiba ditempat, apabila pesanan sudah tiba namun size sepatu lebih besar/kecil dapat ditukar dengan size lain', 60, '2022-08-17 00:32:59', '2022-08-17 00:32:59'),
(6, 'HAN RIVER HRHD01BK Hair dryer 800W Pengering Rambut Termurah Daya tinggi', 50000, 20000, 'ew', 60, '2022-08-17 01:22:12', '2022-08-17 01:22:12'),
(10, 'mobil', 50000000, 40012, 'uye', 24, '2022-08-18 20:12:00', '2022-08-18 20:12:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin_kategori`
--
ALTER TABLE `admin_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `admin_produk`
--
ALTER TABLE `admin_produk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin_kategori`
--
ALTER TABLE `admin_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `admin_produk`
--
ALTER TABLE `admin_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
