-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 15, 2018 at 04:12 AM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id4746973_perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` int(11) NOT NULL,
  `nama` varchar(22) NOT NULL,
  `alamat` varchar(22) NOT NULL,
  `telepon` int(11) NOT NULL,
  `kelas` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id`, `nama`, `alamat`, `telepon`, `kelas`) VALUES
(12, 'Gunawan', 'Jl. Cibolerang', 8985743, 'VII');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `kode` varchar(22) NOT NULL,
  `judul` varchar(22) NOT NULL,
  `pengarang` varchar(22) NOT NULL,
  `penerbit` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`kode`, `judul`, `pengarang`, `penerbit`) VALUES
('2', '2', '22', '2'),
('021', 'Sejarah Monalisa', 'Setya', 'Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(22) NOT NULL,
  `password` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `id_anggota` varchar(22) NOT NULL,
  `nama_anggota` varchar(22) NOT NULL,
  `kode_buku` varchar(22) NOT NULL,
  `judul_buku` varchar(22) NOT NULL,
  `tglpinjam` varchar(22) NOT NULL,
  `batas` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`id_anggota`, `nama_anggota`, `kode_buku`, `judul_buku`, `tglpinjam`, `batas`) VALUES
('12', 'Gunawan', '021', 'Sejarah Monalisa', '13-01-2018', '20-01-2018'),
('4', '4', '4', '4', '2018-01-23', '31-01-2018'),
('6', '6', '6', '6', '2018-01-23', '2018-01-23+14'),
('5', '5', '5', '5', '2018-01-23', '2018-01-29'),
('9', '9', '9', '9', '2018-01-23', '2018-02-06');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
