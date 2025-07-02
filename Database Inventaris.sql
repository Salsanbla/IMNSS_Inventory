-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2025 at 12:14 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imanasaser_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(20) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `harga_beli` decimal(12,2) DEFAULT NULL,
  `harga_jual` decimal(12,2) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `kode_barang`, `nama_barang`, `kategori`, `harga_beli`, `harga_jual`, `stok`) VALUES
(1, 'BRG001', 'Buku Tulis', 'Alat Tulis', 40000.00, 50000.00, 50),
(2, 'BRG002', 'Pulpen', 'Alat Tulis', 20000.00, 25000.00, 58),
(3, 'BRG003', 'Pensil 2B', 'Alat Tulis', 15000.00, 18000.00, 60),
(4, 'BRG004', 'Penggaris', 'Alat Tulis', 35000.00, 40000.00, 48),
(5, 'BRG005', 'Penghapus', 'Alat Tulis', 20000.00, 25000.00, 40),
(6, 'BRG006', 'Binder B5', 'Alat Tulis', 18000.00, 22000.00, 29),
(7, 'BRG007', 'Kertas B5 White', 'Alat Tulis', 8000.00, 10000.00, 18),
(8, 'BRG008', 'TipeX', 'Alat Tulis', 25000.00, 27000.00, 50),
(9, 'BRG009', 'Streples', 'Alat Tulis', 7000.00, 10000.00, 28);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_penjualan`
--

CREATE TABLE `transaksi_penjualan` (
  `ID` int(11) NOT NULL,
  `kode_barang` varchar(20) DEFAULT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `harga_jual` decimal(12,2) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `tanggal_transaksi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi_penjualan`
--

INSERT INTO `transaksi_penjualan` (`ID`, `kode_barang`, `nama_barang`, `harga_jual`, `jumlah`, `total`, `tanggal_transaksi`) VALUES
(1, 'BRG007', 'Kertas B5 White', 10000.00, 2, 20000.00, '2025-06-23 03:37:44'),
(2, 'BRG006', 'Binder B5', 22000.00, 1, 22000.00, '2025-06-23 03:39:59'),
(3, 'BRG002', 'Pulpen', 25000.00, 2, 50000.00, '2025-06-23 03:41:03'),
(4, 'BRG009', 'Streples', 10000.00, 2, 20000.00, '2025-07-02 08:52:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama_pegawai` varchar(100) DEFAULT NULL,
  `nik` varchar(20) DEFAULT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` varchar(30) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama_pegawai`, `nik`, `alamat`, `no_hp`, `email`, `role`, `username`, `password`) VALUES
(1, 'Salsa', 'admin123', '', '', '', 'Admin', '', ''),
(2, 'Serina', 'kasir123', '', '', '', 'Kasir', '', ''),
(3, 'Nabila', 'kasir111', '', '', '', 'Kasir', '', ''),
(4, 'Intra', 'crew123', '', '', '', 'Crew', '', ''),
(5, 'Manzis', 'crew111', '', '', '', 'Crew', '', ''),
(7, 'Salsa Nabila', '231011400432', 'Curug, Kab. Tangerang. Banten', '085817254544', 'salsanabila@gmail.com', 'Admin', 'salsanabila', '123456'),
(9, 'Salsaa Nabillaaa', '231011400432', 'Curug, Kab.Tangerang, Banten', '085817254544', 'salsanabila@gmail.com', 'Admin', 'salsaanabillaaa', '123456'),
(11, 'Serina Admi', '231011400423', 'Kelapa Dua, Kota.Tangerang, Banten', '081256567890', 'serinaadmi@gmail.com', 'Kasir', 'serinaadmi', '123456'),
(12, 'Nabila Putri', '231011345623', 'Sentul, Kab.Bogor, Jawa Barat', '081345654522', 'nabilaputri@gmail.com', 'Kasir', 'nabilaputri', '123456'),
(13, 'Intra Sepriansa', '231011400463', 'Jasinga,Kab.Bogor,Jawa Barat', '082167548990', 'introvert@gmail.com', 'Crew', 'intrasepriansa', '123456'),
(14, 'Manzis Ilham', '231011409087', 'Citayem, Jakarta, DKI Jakarta', '085864538902', 'manzismaul@gmail.com', 'Crew', 'manzisilham', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_barang` (`kode_barang`);

--
-- Indexes for table `transaksi_penjualan`
--
ALTER TABLE `transaksi_penjualan`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`nama_pegawai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transaksi_penjualan`
--
ALTER TABLE `transaksi_penjualan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
