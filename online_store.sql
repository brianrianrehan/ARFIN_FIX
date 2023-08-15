-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Agu 2023 pada 12.59
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_store`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(1) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2a$12$VFyZxr5w69W.PUI7tmbkT.V1BorTgkq3hYgrsUyHsyz6RSxX40RUy'),
(2, 'admin2', '$2a$12$BzWDM6I1QJv.z8/dCgjZD.rFfvZrJwovRshuSY67XOanr0zNtvAzG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int(3) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `nama`) VALUES
(6, 'Shirt'),
(7, 'Jacket'),
(8, 'Pants'),
(9, 'Shoes'),
(10, 'Hat'),
(17, 'T-Shirt'),
(21, 'Bag'),
(22, 'Sock'),
(23, 'Accessories'),
(24, 'T-Shirt Long Sleeve'),
(25, 'Belt'),
(26, 'Sandal'),
(31, 'Hoodie');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `namaPelanggan` varchar(100) NOT NULL,
  `teleponPelanggan` varchar(14) NOT NULL,
  `alamatPelanggan` varchar(255) NOT NULL,
  `buktiPelanggan` text NOT NULL,
  `jumlahBarang` int(2) NOT NULL,
  `itemNames` text DEFAULT NULL,
  `itemQuantities` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(4) NOT NULL,
  `kategori_id` int(3) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `harga` int(10) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `ketersediaan_stok` enum('Sold Out','Available') DEFAULT 'Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `kategori_id`, `nama`, `harga`, `foto`, `detail`, `ketersediaan_stok`) VALUES
(4, 6, 'Shirt 1', 250000, '1REtH3NgyEQcDYnozvUk.jpg', '&lt;p&gt;Ini Shirt 1 testing&lt;br&gt;testing 1&lt;br&gt;testing 2&lt;br&gt;testing 3&lt;br&gt;testing 4&lt;/p&gt;', 'Available'),
(6, 7, 'Jacket 1', 350000, '9Y4DVvHk8hVa2AjglJLb.jpg', '&lt;p&gt;Ini Jacket 1 testing&lt;br&gt;testing 1&lt;br&gt;testing 2&lt;br&gt;testing 3&lt;br&gt;testing 4&lt;/p&gt;', 'Available'),
(7, 8, 'Pants 1', 200000, '7uyS1YaQgieg6ct6608e.jpg', '&lt;p&gt;Ini Pants 1 testing&lt;br&gt;testing 1&lt;br&gt;testing 2&lt;br&gt;testing 3&lt;br&gt;testing 4&lt;/p&gt;', 'Available'),
(8, 9, 'Shoes 1', 1000000, 'XZ4uIxUilXC4ws5jqYw5.jpg', '&lt;p&gt;Ini Shoes 1 testing&lt;br&gt;testing 1&lt;br&gt;testing 2&lt;br&gt;testing 3&lt;br&gt;testing 4&lt;/p&gt;', 'Available'),
(9, 10, 'Hat 1', 75000, '24GWMwbuhACunDgczfNO.jpg', '&lt;p&gt;Ini Hat 1 testing&lt;br&gt;testing 1&lt;br&gt;testing 2&lt;br&gt;testing 3&lt;br&gt;testing 4&lt;/p&gt;', 'Available'),
(12, 17, 'T-Shirt 1', 99000, 'PXRJiG7B2IQ6mBiEUTtt.jpg', '&lt;p&gt;Ini T-shirt testing&lt;br&gt;testing 1&lt;br&gt;testing 2&lt;br&gt;testing 3&lt;br&gt;testing 4&lt;/p&gt;', 'Available'),
(20, 6, 'Shirt 2', 199000, '64459e411286d.jpg', '&lt;p&gt;Shirt 2 testing&lt;br&gt;testing 1&lt;br&gt;testing 2&lt;br&gt;testing 3&lt;br&gt;testing 4&lt;/p&gt;', 'Available'),
(21, 7, 'Jacket 2', 499000, '64459e624f120.jpg', '&lt;p&gt;Jacket 2 testing&lt;br&gt;testing 1&lt;br&gt;testing 2&lt;br&gt;testing 3&lt;br&gt;testing 4&lt;/p&gt;', 'Available'),
(22, 8, 'Pants 2', 279000, '64459e79698e3.jpg', '&lt;p&gt;Pants 2 testing&lt;br&gt;testing 1&lt;br&gt;testing 2&lt;br&gt;testing 3&lt;br&gt;testing 4&lt;/p&gt;', 'Available'),
(23, 9, 'Shoes 2', 1299000, '64459e905bad3.jpg', '&lt;p&gt;Shoes 2 testing&lt;br&gt;testing 1&lt;br&gt;testing 2&lt;br&gt;testing 3&lt;br&gt;testing 4&lt;/p&gt;&lt;p&gt;testing 5&lt;/p&gt;', 'Available'),
(24, 10, 'Hat 2', 69000, '64459ea61b534.jpg', '&lt;p&gt;Hat 2 testing&lt;br&gt;testing 1&lt;br&gt;testing 2&lt;br&gt;testing 3&lt;br&gt;testing 4&lt;/p&gt;', 'Available'),
(25, 17, 'T-Shirt 2', 179000, '64459ecdbe76d.jpg', '&lt;p&gt;T-Shirt 2 testing&lt;br&gt;testing 1&lt;br&gt;testing 2&lt;br&gt;testing 3&lt;br&gt;testing 4&lt;/p&gt;', 'Available');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama` (`nama`),
  ADD KEY `kategori_produk` (`kategori_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `kategori_produk` FOREIGN KEY (`kategori_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
