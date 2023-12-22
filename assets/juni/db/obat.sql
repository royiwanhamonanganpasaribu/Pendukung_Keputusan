-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 10, 2018 at 11:11 PM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `obat`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(22) NOT NULL,
  `password` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode` varchar(22) NOT NULL,
  `nama` varchar(22) NOT NULL,
  `hrg_beli` int(11) NOT NULL,
  `hrg_jual` int(11) NOT NULL,
  `stok` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode`, `nama`, `hrg_beli`, `hrg_jual`, `stok`) VALUES
('2', 'Pandol', 700000, 900000, 40);

-- --------------------------------------------------------

--
-- Table structure for table `detailobat`
--

CREATE TABLE `detailobat` (
  `nonota` int(22) NOT NULL,
  `kode` varchar(22) NOT NULL,
  `harga` int(22) NOT NULL,
  `jumlah` int(22) NOT NULL,
  `subtotal` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `detailobat`
--

INSERT INTO `detailobat` (`nonota`, `kode`, `harga`, `jumlah`, `subtotal`) VALUES
(3, '5', 888, 5, 4440),
(3, '2', 700000, 7, 4900000),
(4, '5', 888, 7, 6216),
(4, '5', 888, 8, 7104),
(5, '5', 888, 10, 8880),
(5, '5', 888, 555, 492840),
(6, '5', 888, 6, 5328),
(7, '2', 700000, 6, 4200000),
(1, '2', 700000, 6, 4200000),
(2, '2', 700000, 4, 2800000),
(3, '2', 700000, 5, 3500000),
(4, '2', 700000, 5, 3500000),
(5, '2', 700000, 6, 4200000),
(5, '2', 700000, 9, 6300000);

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `nonota` varchar(22) NOT NULL,
  `total` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`nonota`, `total`) VALUES
('1', 4200000),
('2', 0),
('2', 2800000),
('3', 3500000),
('4', 3500000),
('5', 10500000);

-- --------------------------------------------------------

--
-- Table structure for table `tblsementara`
--

CREATE TABLE `tblsementara` (
  `kode` varchar(22) NOT NULL,
  `nama` varchar(22) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
