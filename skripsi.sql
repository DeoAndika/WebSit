-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2023 at 05:57 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skripsi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `firstname` varchar(10) NOT NULL,
  `lastname` varchar(10) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` int(30) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `firstname`, `lastname`, `alamat`, `email`, `phone`, `level`) VALUES
(1, 'admin', '123', 'dea', 'dsad', 'jl.pondok kelapa no 10', 'deoandika28@gmail.co', 54321313, 'admin'),
(2, 'yosi', '123', 'yosi', 'andre', 'jl.bilymoon no 12 rt 11 rw 03 pondok kelapa, duren', 'axyz@gmail.com', 32132131, 'pegawai'),
(3, 'aaa', '123', 'a', 'b', 'jl.pondok kelapa no 10', 'deoandika2@yahoo.com', 54321313, 'admin'),
(4, 'bbb', 'qwe', 'b', 'bb', 'jl.bilymoon no 12 rt 11 rw 03 pondok kelapa, duren', 'axyz@gmail.com', 54321313, 'pegawai'),
(5, 'dea', '123', 'dea', 'rahma', 'jl.pondok kelapa no 10', 'deoandika23@gmail.co', 32132131, 'admin'),
(10, '', '', '', '', '', '', 0, ''),
(11, '', '', '', '', 'jl.bilymoon no 12 rt 11 rw 03 pondok kelapa, duren', '', 0, ''),
(12, 'ucup', '123', 'ucup', 'ciii', 'jl.pondok kelapa no 10', 'axyz@gmail.com', 54321313, 'admin'),
(13, 'vira', '123', 'vira', 'rahmita', 'jl.mawar merah', 'axyz@gmail.com', 54321313, 'admin'),
(14, 'vira', '123', 'vira', 'rahmita', 'jl.mawar merah', 'axyz@gmail.com', 54321313, 'admin'),
(15, 'budi', '123', 'budi', 'andre', 'jl.pondok kelapa no 10', 'axyz@gmail.com', 54321313, 'pegawai');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `id_barang` varchar(50) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `jenis_barang` text NOT NULL,
  `berat` varchar(50) NOT NULL,
  `qty` int(50) NOT NULL,
  `jenis_packing` text NOT NULL,
  `tujuan` text NOT NULL,
  `penerima` text NOT NULL,
  `alamat_penerima` text NOT NULL,
  `nohp` int(50) NOT NULL,
  `lat` double NOT NULL,
  `long` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`id_barang`, `nama_barang`, `jenis_barang`, `berat`, `qty`, `jenis_packing`, `tujuan`, `penerima`, `alamat_penerima`, `nohp`, `lat`, `long`) VALUES
('BWH00002', 'buku', 'kertas', '10kg', 1, 'Palet', 'MEDAN', 'dea', 'jl.bilymoon no 12 rt 11 rw 03 pondok kelapa, durensawit jakarta timur', 55555, 0, 0),
('BWH00004', 'susu', 'cair', '1kg', 1, 'Box', 'bekasi', 'deo', 'jl.pondok kelapa no 10', 55555, 0, 0),
('BWH00005', 'Baju', 'Mudah Terbakar', '10kg', 2, 'Box', 'Padang', 'Ridwan', 'jl.bilymoon no 12 rt 11 rw 03 pondok kelapa, durensawit jakarta timur', 2147483647, 0, 0),
('BWH00009', 'buku Tulis', 'Mudah Terbakar', '10kg', 10, 'Palet', 'Jakarta', 'dea', 'Jalan Taman Malaka Selatan Universitas Darma Persada,RW 06,Pondok Kelapa,Duren Sawit,Jakarta Timur,Jakarta Timur,Jakarta,Indonesia,13440', 55555, -6.229644076399059, 106.92409515380861),
('BWH00010', 'Buku', 'Mudah terbakar', '1 kg', 1, 'Box', 'Jakarta Special Capital Region', 'Vira', 'Jalan Salihara Universitas Nasional,RW 03,Pasar Minggu,Pasar Minggu,South Jakarta,South Jakarta,Jakarta Special Capital Region,Indonesia,12510', 829132742, -6.281292623293121, 106.83931052684785),
('BWH00011', 'Bantal', 'Tekstil', '10 kg', 10, 'Palet', 'Jakarta Special Capital Region', 'robi', 'Jalan Taman Malaka Selatan Universitas Darma Persada,RW 06,Pondok Kelapa,Duren Sawit,East Jakarta,East Jakarta,Jakarta Special Capital Region,Indonesia,13440', 86123213, -6.229644076399059, 106.92421317100526),
('BWH00012', 'laptop', 'elektronik', '10kg', 5, 'Box', 'Jakarta', 'deo', 'Jalan Taman Malaka Selatan Universitas Darma Persada,RW 06,Pondok Kelapa,Duren Sawit,Jakarta Timur,Jakarta Timur,Jakarta,Indonesia,13440', 2147483647, -6.229823556429015, 106.92427217960359),
('BWH00013', 'kertas', 'Mudah terbakar', '10 kg', 50, 'Box', 'Jakarta Special Capital Region', 'rian', 'Jalan Tol Bekasi–Cawang–Kampung Melayu Universitas Borobudur,RW 04,Cipinang Melayu,Makasar,East Jakarta,East Jakarta,Jakarta Special Capital Region,Indonesia,13430', 99992132, -6.244031613983796, 106.89770221710206),
('BWH00014', 'laptop', 'elektronik', '1 kg', 1, 'Palet', 'Jakarta Special Capital Region', 'Vira', 'Jalan Bunga Rampai III Gang 4 undefined,RW 09,Malaka Jaya,Duren Sawit,East Jakarta,East Jakarta,Jakarta Special Capital Region,Indonesia,13460', 92377484, -6.226487084298741, 106.93416953086853);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kurir`
--

CREATE TABLE `tbl_kurir` (
  `id_kurir` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama` text NOT NULL,
  `alamat` text NOT NULL,
  `nohp` int(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `no_identitas` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kurir`
--

INSERT INTO `tbl_kurir` (`id_kurir`, `username`, `email`, `nama`, `alamat`, `nohp`, `password`, `no_identitas`) VALUES
(12, 'prasetya', 'prasety2423@gmail.com', 'prasetya', 'asd', 312312, 'asd', 12313),
(14, 'nurdin', 'nurdinr25@gmail.com', 'Nurdin Ramdhan', 'Jl.Tipar no 54 pondok kelapa', 829132742, '123', 31787372747593);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengirim`
--

CREATE TABLE `tbl_pengirim` (
  `id_pengirim` varchar(50) NOT NULL,
  `nama` text NOT NULL,
  `alamat` text NOT NULL,
  `no_tlp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pengirim`
--

INSERT INTO `tbl_pengirim` (`id_pengirim`, `nama`, `alamat`, `no_tlp`) VALUES
('P00002', 'toni', 'jl.pondok kelapa no 12', '33333'),
('P00003', 'Rio', 'JL.kemang pratama no 12', '33333'),
('P00004', 'Deo Andika', 'Jl.Bojong Indah no 54', '0879999666');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_resi`
--

CREATE TABLE `tbl_resi` (
  `id_resi` varchar(50) NOT NULL,
  `Tglambil` date NOT NULL,
  `Tglkirim` date NOT NULL,
  `id_barang` varchar(50) NOT NULL,
  `id_pengirim` int(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_resi`
--

INSERT INTO `tbl_resi` (`id_resi`, `Tglambil`, `Tglkirim`, `id_barang`, `id_pengirim`, `status`) VALUES
('RS0007', '2022-01-21', '2022-01-22', 'BWH00009', 12, 'Di Terima'),
('RS0008', '2022-01-29', '2022-01-30', 'BWH00010', 12, 'Di Terima'),
('RS0009', '2022-02-02', '2022-02-05', 'BWH00011', 12, 'Di Terima'),
('RS0010', '2022-02-02', '2022-02-05', 'BWH00011', 14, 'Sedang Mengirim'),
('RS0011', '2022-03-11', '2022-03-14', 'BWH00012', 14, 'On Proses'),
('RS0012', '2022-03-12', '2022-03-14', 'BWH00013', 12, 'On Proses'),
('RS0013', '2022-03-12', '2022-03-14', 'BWH00014', 14, 'On Proses');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status`
--

CREATE TABLE `tbl_status` (
  `id_status` int(50) NOT NULL,
  `id_resi` varchar(50) NOT NULL,
  `tgl_sekarang` datetime NOT NULL,
  `detail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tbl_kurir`
--
ALTER TABLE `tbl_kurir`
  ADD PRIMARY KEY (`id_kurir`);

--
-- Indexes for table `tbl_pengirim`
--
ALTER TABLE `tbl_pengirim`
  ADD PRIMARY KEY (`id_pengirim`);

--
-- Indexes for table `tbl_resi`
--
ALTER TABLE `tbl_resi`
  ADD PRIMARY KEY (`id_resi`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_pengirim` (`id_pengirim`);

--
-- Indexes for table `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`id_status`),
  ADD KEY `id_resi` (`id_resi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_kurir`
--
ALTER TABLE `tbl_kurir`
  MODIFY `id_kurir` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_resi`
--
ALTER TABLE `tbl_resi`
  ADD CONSTRAINT `tbl_resi_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `tbl_barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_resi_ibfk_3` FOREIGN KEY (`id_pengirim`) REFERENCES `tbl_kurir` (`id_kurir`);

--
-- Constraints for table `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD CONSTRAINT `tbl_status_ibfk_1` FOREIGN KEY (`id_resi`) REFERENCES `tbl_resi` (`id_resi`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
