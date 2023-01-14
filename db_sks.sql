-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2023 at 06:25 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sks`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_dosen`
--

CREATE TABLE `tb_dosen` (
  `kode_dosen` int(5) NOT NULL,
  `nama_dosen` varchar(40) NOT NULL,
  `alamat_dosen` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_dosen`
--

INSERT INTO `tb_dosen` (`kode_dosen`, `nama_dosen`, `alamat_dosen`) VALUES
(1, 'Ahmadi  S.kom.,M.Kom.', 'Banjarmasin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `Nim` int(10) NOT NULL,
  `Nama` varchar(20) NOT NULL,
  `Jurusan` varchar(20) NOT NULL,
  `Mata_kuliah` varchar(20) NOT NULL,
  `Tanggal_lahir` varchar(25) NOT NULL,
  `Jumlah_sks` int(2) NOT NULL,
  `Alamat` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`Nim`, `Nama`, `Jurusan`, `Mata_kuliah`, `Tanggal_lahir`, `Jumlah_sks`, `Alamat`) VALUES
(201010503, 'Muhammad Iqbal', 'TI', 'Ansi', '28 januari 2003', 3, 'Pelaihari'),
(2010010500, 'Muhammad Afdillah', 'TI', 'RPL', '23 Februari 2002', 2, 'Banjarbaru'),
(2010010501, 'Abdirahman', 'TI', 'Ansi', '28januari2002', 2, 'bjb'),
(2010010555, 'Fathullah', 'TI', 'Interman', '29 Mei 2001', 2, 'Martapura');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `Nim` int(10) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Bayar` varchar(15) NOT NULL,
  `Semester` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`Nim`, `Nama`, `Bayar`, `Semester`) VALUES
(2010010502, 'Muhamamd Iqbal', '3000000', '6'),
(2010010505, 'Ehza Nor', '2500000', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_dosen`
--
ALTER TABLE `tb_dosen`
  ADD PRIMARY KEY (`kode_dosen`);

--
-- Indexes for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`Nim`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`Nim`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_dosen`
--
ALTER TABLE `tb_dosen`
  MODIFY `kode_dosen` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=889;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
