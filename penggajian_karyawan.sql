-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2020 at 06:05 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penggajian_karyawan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `namalengkap` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`, `namalengkap`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'rangga pradana'),
(4, 'fahmi', '21232f297a57a5a743894a0e4a801fc3', 'fahmi romadhon');

-- --------------------------------------------------------

--
-- Table structure for table `golongan`
--

CREATE TABLE `golongan` (
  `kode_golongan` varchar(5) NOT NULL,
  `nama_golongan` varchar(10) NOT NULL,
  `tunjangan_suami_istri` int(10) NOT NULL,
  `tunjangan_anak` int(10) NOT NULL,
  `uang_makan` int(10) NOT NULL,
  `uang_lembur` int(10) NOT NULL,
  `askes` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `golongan`
--

INSERT INTO `golongan` (`kode_golongan`, `nama_golongan`, `tunjangan_suami_istri`, `tunjangan_anak`, `uang_makan`, `uang_lembur`, `askes`) VALUES
('G01', '1', 200000, 100000, 50000, 50000, 100000),
('G02', '2', 400000, 200000, 100000, 100000, 200000),
('G03', '3', 800000, 400000, 200000, 200000, 400000),
('G04', '4', 1000000, 500000, 250000, 250000, 500000),
('G05', '5', 1200000, 600000, 300000, 300000, 600000);

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `kode_jabatan` varchar(5) NOT NULL,
  `nama_jabatan` varchar(40) NOT NULL,
  `gapok` int(10) NOT NULL,
  `tunjangan_jabatan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`kode_jabatan`, `nama_jabatan`, `gapok`, `tunjangan_jabatan`) VALUES
('J01', 'Non Staff', 2000000, 200000),
('J02', 'Staff', 4500000, 450000),
('J03', 'Supervisor', 9500000, 950000),
('J04', 'Manager', 15000000, 1500000),
('J05', 'General Manager', 20000000, 2000000);

-- --------------------------------------------------------

--
-- Table structure for table `master_gaji`
--

CREATE TABLE `master_gaji` (
  `bulan` varchar(20) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `masuk` int(5) NOT NULL,
  `sakit` int(5) NOT NULL,
  `izin` int(5) NOT NULL,
  `alpha` int(5) NOT NULL,
  `lembur` int(5) NOT NULL,
  `potongan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_gaji`
--

INSERT INTO `master_gaji` (`bulan`, `nip`, `masuk`, `sakit`, `izin`, `alpha`, `lembur`, `potongan`) VALUES
('012018', '1741160049', 25, 0, 0, 0, 8, 0),
('012018', '1741160021', 23, 2, 0, 0, 2, 0),
('012018', '1741160022', 20, 2, 3, 0, 2, 0),
('012018', '1741160056', 25, 0, 0, 0, 0, 0),
('012018', '1741160111', 20, 2, 1, 4, 1, 200000),
('022018', '1741160021', 22, 3, 0, 0, 0, 0),
('022018', '1741160022', 22, 0, 1, 2, 2, 100000),
('022018', '1741160049', 24, 0, 0, 1, 6, 50000),
('022018', '1741160056', 20, 2, 3, 0, 0, 0),
('022018', '1741160111', 15, 5, 0, 5, 0, 250000),
('032018', '1741160021', 21, 2, 2, 0, 2, 0),
('032018', '1741160022', 23, 0, 0, 2, 1, 100000),
('032018', '1741160049', 22, 2, 2, 0, 2, 0),
('032018', '1741160056', 21, 2, 2, 0, 0, 0),
('032018', '1741160111', 22, 0, 0, 3, 0, 150000),
('072020', '1741160021', 1, 0, 0, 0, 2, 0),
('072020', '1741160022', 0, 0, 0, 0, 0, 0),
('072020', '1741160049', 0, 0, 0, 0, 0, 0),
('072020', '1741160056', 0, 0, 0, 0, 0, 0),
('072020', '1741160111', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `nip` varchar(20) NOT NULL,
  `nama_pegawai` varchar(40) NOT NULL,
  `kode_jabatan` varchar(5) NOT NULL,
  `kode_golongan` varchar(5) NOT NULL,
  `status` varchar(15) NOT NULL,
  `jumlah_anak` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`nip`, `nama_pegawai`, `kode_jabatan`, `kode_golongan`, `status`, `jumlah_anak`) VALUES
('1741160021', 'fahmi', 'J02', 'G01', 'Menikah', 2),
('1741160022', 'firman', 'J03', 'G02', 'Belum Menikah', 0),
('1741160049', 'rangga pradana', 'J01', 'G01', 'menikah', 2),
('1741160056', 'muthoharo', 'J02', 'G03', 'Menikah', 3),
('1741160111', 'Adha', 'J03', 'G02', 'Menikah', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `golongan`
--
ALTER TABLE `golongan`
  ADD PRIMARY KEY (`kode_golongan`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`kode_jabatan`);

--
-- Indexes for table `master_gaji`
--
ALTER TABLE `master_gaji`
  ADD KEY `nip` (`nip`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nip`),
  ADD KEY `kode_jabatan` (`kode_jabatan`),
  ADD KEY `kode_golongan` (`kode_golongan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `master_gaji`
--
ALTER TABLE `master_gaji`
  ADD CONSTRAINT `master_gaji_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nip`) ON UPDATE CASCADE;

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`kode_jabatan`) REFERENCES `jabatan` (`kode_jabatan`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawai_ibfk_2` FOREIGN KEY (`kode_golongan`) REFERENCES `golongan` (`kode_golongan`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
