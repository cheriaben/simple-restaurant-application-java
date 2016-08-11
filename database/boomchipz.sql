-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2014 at 05:42 PM
-- Server version: 5.6.11
-- PHP Version: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `boomchipz`
--
CREATE DATABASE IF NOT EXISTS `boomchipz` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `boomchipz`;

-- --------------------------------------------------------

--
-- Table structure for table `t_accident`
--

CREATE TABLE IF NOT EXISTS `t_accident` (
  `KdAcc` varchar(10) NOT NULL,
  `KdPesan` int(11) NOT NULL,
  `Tanggal/Jam` date NOT NULL,
  `IDKaryawan` varchar(10) NOT NULL,
  `KdMakanan` varchar(10) NOT NULL,
  `Jumlah` int(11) NOT NULL,
  `Harga` int(11) NOT NULL,
  `Rugi` int(11) NOT NULL,
  PRIMARY KEY (`KdAcc`),
  KEY `KdPesan` (`KdPesan`),
  KEY `IDKaryawan` (`IDKaryawan`),
  KEY `KdMakanan` (`KdMakanan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_accident`
--

INSERT INTO `t_accident` (`KdAcc`, `KdPesan`, `Tanggal/Jam`, `IDKaryawan`, `KdMakanan`, `Jumlah`, `Harga`, `Rugi`) VALUES
('6', 9, '2014-06-25', 'W23002', 'M23002', 10, 500, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `t_bahan`
--

CREATE TABLE IF NOT EXISTS `t_bahan` (
  `IDKaryawan` varchar(10) NOT NULL,
  `KdMakanan` varchar(10) NOT NULL,
  `KdBarang` varchar(10) NOT NULL,
  `NamaBarang` varchar(20) NOT NULL,
  `Jumlah` int(100) NOT NULL,
  `Satuan` varchar(10) NOT NULL,
  KEY `KdMakanan` (`KdMakanan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_bahan`
--

INSERT INTO `t_bahan` (`IDKaryawan`, `KdMakanan`, `KdBarang`, `NamaBarang`, `Jumlah`, `Satuan`) VALUES
('C23001', 'B23001A', 'A23001', 'Indomie Rebus', 1, 'Bungkus'),
('C23001', 'B23001A', 'A23002', 'Kornet', 10, 'Gram'),
('C23001', 'B23001A', 'A23003', 'Telur', 1, 'Butir'),
('C23001', 'B23001A', 'A23004', 'Air', 250, 'ml'),
('C23001', 'B23001A', 'A23005', 'Cai Sim', 25, 'Gram'),
('C23001', 'B23001A', 'A23006', 'Minyak Goreng', 10, 'ml'),
('C23001', 'B23001B', 'A23001', 'Indomie Rebus', 1, 'Bungkus'),
('C23001', 'B23001B', 'A23002', 'Kornet', 10, 'Gram'),
('C23001', 'B23001B', 'A23003', 'Telur', 1, 'Butir'),
('C23001', 'B23001B', 'A23004', 'Air', 250, 'ml'),
('C23001', 'B23001B', 'A23005', 'Cai Sim', 25, 'Gram'),
('C23001', 'B23001B', 'A23006', 'Minyak Goreng', 10, 'ml'),
('C23001', 'B23001B', 'A23007', 'Cabe', 10, 'Gram'),
('C23001', 'B23001C', 'A23001', 'Indomie Rebus', 1, 'Bungkus'),
('C23001', 'B23001C', 'A23002', 'Kornet', 10, 'Gram'),
('C23001', 'B23001C', 'A23003', 'Telur', 1, 'Butir'),
('C23001', 'B23001C', 'A23004', 'Air', 250, 'ml'),
('C23001', 'B23001C', 'A23005', 'Cai Sim', 25, 'Gram'),
('C23001', 'B23001C', 'A23006', 'Minyak Goreng', 10, 'ml'),
('C23001', 'B23001C', 'A23007', 'Cabe ', 20, 'Gram'),
('C23001', 'B23002A', 'A23001', 'Indomie Rebus', 1, 'Bungkus'),
('C23001', 'B23002A', 'A23002', 'Kornet', 10, 'Gram'),
('C23001', 'B23002A', 'A23004', 'Air', 250, 'ml'),
('C23001', 'B23002A', 'A23005', 'Cai Sim', 25, 'Gram'),
('C23001', 'B23002A', 'A23006', 'Minyak Goreng', 10, 'ml'),
('C23002', 'B23003A', 'A23002', 'Kornet', 10, 'Gram'),
('C23002', 'B23003A', 'A23008', 'Indomie Goreng', 1, 'Bungkus'),
('C23002', 'B23003A', 'A23003', 'Telur', 1, 'Butir'),
('C23002', 'B23003A', 'A23006', 'Minyak', 10, 'ml'),
('C23002', 'B23003A', 'A23004', 'Air', 250, 'ml'),
('C23002', 'B23003A', 'A23009', 'Daging Sapi', 100, 'Gram'),
('C23002', 'B23003A', 'A23010', 'Bumbu Rendang', 10, 'Gram'),
('C23002', 'B23003B', 'A23002', 'Kornet', 10, 'Gram'),
('C23002', 'B23003B', 'A23008', 'Indomie Goreng', 1, 'Bungkus'),
('C23002', 'B23003B', 'A23003', 'Telur', 1, 'Butir'),
('C23002', 'B23003B', 'A23006', 'Minyak', 10, 'ml'),
('C23002', 'B23003B', 'A23007', 'Cabe', 10, 'Gram'),
('C23002', 'B23003B', 'A23004', 'Air', 250, 'ml'),
('C23002', 'B23003B', 'A23009', 'Daging Sapi', 100, 'Gram'),
('C23002', 'B23003B', 'A23010', 'Bumbu Rendang', 10, 'Gram'),
('C23002', 'B23003C', 'A23002', 'Kornet', 10, 'Gram'),
('C23002', 'B23003C', 'A23008', 'Indomie Goreng', 1, 'Bungkus'),
('C23002', 'B23003C', 'A23003', 'Telur', 1, 'Butir'),
('C23002', 'B23003C', 'A23006', 'Minyak', 10, 'ml'),
('C23002', 'B23003C', 'A23007', 'Cabe', 20, 'Gram'),
('C23002', 'B23003C', 'A23004', 'Air', 250, 'ml'),
('C23002', 'B23003C', 'A23009', 'Daging Sapi', 100, 'Gram'),
('C23002', 'B23003C', 'A23010', 'Bumbu Rendang', 10, 'Gram'),
('C23002', 'B23004A', 'A23002', 'Kornet', 10, 'Gram'),
('C23002', 'B23004A', 'A23008', 'Indomie Goreng', 1, 'Bungkus'),
('C23002', 'B23004A', 'A23003', 'Telur', 1, 'Butir'),
('C23002', 'B23004A', 'A23006', 'Minyak', 10, 'ml'),
('C23002', 'B23004A', 'A23004', 'Air', 250, 'ml'),
('C23002', 'B23004B', 'A23002', 'Kornet', 10, 'Gram'),
('C23002', 'B23004B', 'A23008', 'Indomie Goreng', 1, 'Bungkus'),
('C23002', 'B23004B', 'A23003', 'Telur', 1, 'Butir'),
('C23002', 'B23004B', 'A23006', 'Minyak', 10, 'ml'),
('C23002', 'B23004B', 'A23007', 'Cabe', 10, 'Gram'),
('C23002', 'B23004B', 'A23004', 'Air', 250, 'ml'),
('C23002', 'B23004C', 'A23002', 'Kornet', 10, 'Gram'),
('C23002', 'B23004C', 'A23008', 'Indomie Goreng', 1, 'Bungkus'),
('C23002', 'B23004C', 'A23003', 'Telur', 1, 'Butir'),
('C23002', 'B23004C', 'A23006', 'Minyak', 10, 'ml'),
('C23002', 'B23004C', 'A23007', 'Cabe', 20, 'Gram'),
('C23002', 'B23004C', 'A23004', 'Air', 250, 'ml'),
('C23001', 'B23002B', 'A23001', 'Indomie Rebus', 1, 'Bungkus'),
('C23001', 'B23002B', 'A23002', 'Kornet', 10, 'Gram'),
('C23001', 'B23002B', 'A23004', 'Air', 250, 'ml'),
('C23001', 'B23002B', 'A23005', 'Cai Sim', 25, 'Gram'),
('C23001', 'B23002B', 'A23006', 'Minyak Goreng', 10, 'ml'),
('C23001', 'B23002B', 'A23007', 'Cabe', 10, 'Gram'),
('C23001', 'B23002C', 'A23001', 'Indomie Rebus', 1, 'Bungkus'),
('C23001', 'B23002C', 'A23002', 'Kornet', 10, 'Gram'),
('C23001', 'B23002C', 'A23004', 'Air', 250, 'ml'),
('C23001', 'B23002C', 'A23005', 'Cai Sim', 25, 'Gram'),
('C23001', 'B23002C', 'A23006', 'Minyak Goreng', 10, 'ml'),
('C23001', 'B23002C', 'A23007', 'Cabe', 20, 'Gram'),
('', 'M23001', 'A230011', 'Aqua', 1, 'Botol'),
('', 'M23002', 'A230012', 'Teh Botol', 1, 'Botol'),
('', 'M23003', 'A230013', 'Sprite', 1, 'Botol'),
('', 'M23004', 'A230014', 'Fanta', 1, 'Botol'),
('', 'M23005', 'A230015', 'Coca Cola', 1, 'Botol');

-- --------------------------------------------------------

--
-- Table structure for table `t_gaji`
--

CREATE TABLE IF NOT EXISTS `t_gaji` (
  `IDKaryawan` varchar(20) NOT NULL,
  `GajiBulanIni` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_inventory`
--

CREATE TABLE IF NOT EXISTS `t_inventory` (
  `KdBarang` varchar(10) NOT NULL,
  `NamaBarang` varchar(20) NOT NULL,
  `JumlahStock` int(11) NOT NULL,
  `SatuanStock` varchar(10) NOT NULL,
  `StatusBarang` varchar(10) NOT NULL,
  PRIMARY KEY (`KdBarang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_inventory`
--

INSERT INTO `t_inventory` (`KdBarang`, `NamaBarang`, `JumlahStock`, `SatuanStock`, `StatusBarang`) VALUES
('A23001', 'Indomie Rebus', 143, 'Bungkus', 'Ready'),
('A230011', 'Aqua', 156, 'Botol', 'Ready'),
('A230012', 'Teh Botol', 160, 'Botol', 'Ready'),
('A230013', 'Sprite', 160, 'Botol', 'Ready'),
('A230014', 'Fanta', 160, 'Botol', 'Ready'),
('A230015', 'Coca Cola', 159, 'Botol', 'Ready'),
('A23002', 'Kornet', 1410, 'Gram', 'Ready'),
('A23003', 'Telur', 140, 'Butir', 'Ready'),
('A23004', 'Air', 99000, 'ml', 'Ready'),
('A23005', 'Cai Sim', 9975, 'Gram', 'Ready'),
('A23006', 'Minyak Goreng', 9960, 'ml', 'Ready'),
('A23007', 'Cabe', 9990, 'Gram', 'Ready'),
('A23008', 'Indomie Goreng', 141, 'Bungkus', 'Ready'),
('A23009', 'Daging Sapi', 9800, 'Gram', 'Ready'),
('A23010', 'Bumbu Rendang', 1000, 'Gram', 'Ready');

-- --------------------------------------------------------

--
-- Table structure for table `t_inventorykeluar`
--

CREATE TABLE IF NOT EXISTS `t_inventorykeluar` (
  `KdBarang` varchar(10) NOT NULL,
  `JumlahKeluar` int(11) NOT NULL,
  `TanggalKeluar` date NOT NULL,
  KEY `KdBarang` (`KdBarang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_inventorymasuk`
--

CREATE TABLE IF NOT EXISTS `t_inventorymasuk` (
  `KdBarang` varchar(10) NOT NULL,
  `JumlahMasuk` int(11) NOT NULL,
  `TanggalMasuk` date NOT NULL,
  KEY `KdBarang` (`KdBarang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_karyawan`
--

CREATE TABLE IF NOT EXISTS `t_karyawan` (
  `IDKaryawan` varchar(10) NOT NULL,
  `NamaKaryawan` varchar(20) NOT NULL,
  `Jabatan` varchar(20) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `NoTelepon` varchar(15) NOT NULL,
  `JenisKelamin` char(1) NOT NULL,
  `TanggalLahir` date NOT NULL,
  `Gaji` int(10) NOT NULL,
  `StatusKaryawan` varchar(10) NOT NULL,
  PRIMARY KEY (`IDKaryawan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_karyawan`
--

INSERT INTO `t_karyawan` (`IDKaryawan`, `NamaKaryawan`, `Jabatan`, `Alamat`, `NoTelepon`, `JenisKelamin`, `TanggalLahir`, `Gaji`, `StatusKaryawan`) VALUES
('C23001', 'Rika', 'Chef', 'Jl. Merdeka 123', '02199872345', 'P', '1980-03-05', 2500000, 'Hired'),
('C23002', 'Tomo', 'Chef', 'Jl. Anggrek 5', '0214445678', 'L', '1977-01-31', 2500000, 'Hired'),
('CA23001', 'Luna', 'Cashier', 'Jl. Tenggiri 15', '0215562349', 'P', '1988-07-18', 2000000, 'Hired'),
('I23001', 'Agus', 'Inventory', 'Jl. Mawar 11', '02183345231', 'L', '1979-11-06', 1700000, 'Hired'),
('K23001', 'Rara', 'Kitchen', 'Jl. Kembang 34', '0215657078', 'P', '1988-06-21', 1500000, 'Hired'),
('M23001', 'Rudi', 'Manager', 'Jl. Soekarno 1', '0213478223', 'L', '1975-01-01', 3000000, 'Hired'),
('W23001', 'Budi', 'Waiter', 'Jl. Gelong 1', '0215691548', 'L', '1977-02-19', 2000000, 'Hired'),
('W23002', 'Iyem', 'Waiter', 'Jl. Kelapa 9', '0213658385', 'P', '1971-06-08', 1500000, 'Hired'),
('W23003', 'Tina', 'Waiter', 'Jl. Biru 5', '0214325354', 'P', '1983-10-30', 1200000, 'Hired'),
('W23004', 'Juna', 'Waiter', 'Jl. Bangsa 77', '0218205838', 'L', '1985-03-10', 1200000, 'Hired');

-- --------------------------------------------------------

--
-- Table structure for table `t_login`
--

CREATE TABLE IF NOT EXISTS `t_login` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Jabatan` varchar(20) NOT NULL,
  PRIMARY KEY (`Username`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_login`
--

INSERT INTO `t_login` (`Username`, `Password`, `Jabatan`) VALUES
('C001', 'C001', 'Chef'),
('CA001', 'CA001', 'Cashier'),
('I001', 'I001', 'Inventory'),
('K001', 'K001', 'Kitchen'),
('M001', 'M001', 'Manager'),
('W001', 'W001', 'Waiter');

-- --------------------------------------------------------

--
-- Table structure for table `t_menu`
--

CREATE TABLE IF NOT EXISTS `t_menu` (
  `KdMakanan` varchar(10) NOT NULL,
  `Harga` int(10) NOT NULL,
  PRIMARY KEY (`KdMakanan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_menu`
--

INSERT INTO `t_menu` (`KdMakanan`, `Harga`) VALUES
('B23001A', 15000),
('B23001B', 17000),
('B23001C', 19000),
('B23002A', 12000),
('B23002B', 14000),
('B23002C', 16000),
('B23003A', 20000),
('B23003B', 22000),
('B23003C', 24000),
('B23004A', 15000),
('B23004B', 17000),
('B23004C', 19000),
('M23001', 5000),
('M23002', 5000),
('M23003', 6000),
('M23004', 6000),
('M23005', 6000);

-- --------------------------------------------------------

--
-- Table structure for table `t_pesan`
--

CREATE TABLE IF NOT EXISTS `t_pesan` (
  `KdPesan` int(11) NOT NULL,
  `NoMeja` int(11) NOT NULL,
  `IDKaryawan` varchar(10) NOT NULL,
  `TanggalJam` datetime NOT NULL,
  `Status` varchar(10) NOT NULL,
  PRIMARY KEY (`KdPesan`),
  KEY `IDKaryawan` (`IDKaryawan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_pesan`
--

INSERT INTO `t_pesan` (`KdPesan`, `NoMeja`, `IDKaryawan`, `TanggalJam`, `Status`) VALUES
(1, 1, 'W23001', '2014-06-20 12:40:26', 'Off table'),
(2, 1, 'W23001', '2014-06-20 12:57:43', 'Off table'),
(3, 2, 'W23002', '2014-06-20 13:00:21', 'On table'),
(4, 3, 'W23003', '2014-06-25 12:29:00', 'On table'),
(5, 2, 'W23002', '2014-06-25 22:17:27', 'Off table'),
(6, 3, 'W23003', '2014-06-25 22:17:50', 'On table'),
(7, 3, 'W23003', '2014-06-25 22:18:23', 'On table'),
(8, 3, 'W23003', '2014-06-25 22:19:12', 'Off table'),
(9, 2, 'W23002', '2014-06-25 22:19:31', 'On table');

-- --------------------------------------------------------

--
-- Table structure for table `t_pesanan`
--

CREATE TABLE IF NOT EXISTS `t_pesanan` (
  `NoPesanan` int(11) NOT NULL,
  `KdPesan` int(11) NOT NULL,
  `KdMakanan` varchar(10) NOT NULL,
  `JumlahPesanan` int(11) NOT NULL,
  `StatusMasak` varchar(10) NOT NULL,
  PRIMARY KEY (`NoPesanan`),
  KEY `KdMakanan` (`KdMakanan`),
  KEY `KdPesan` (`KdPesan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_promosi`
--

CREATE TABLE IF NOT EXISTS `t_promosi` (
  `NamaBank` varchar(20) NOT NULL,
  `Diskon` int(11) NOT NULL,
  PRIMARY KEY (`NamaBank`),
  FULLTEXT KEY `NamaBank` (`NamaBank`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_promosi`
--

INSERT INTO `t_promosi` (`NamaBank`, `Diskon`) VALUES
('BCA', 15),
('Cash', 0),
('Mandiri', 90),
('Permata', 20);

-- --------------------------------------------------------

--
-- Table structure for table `t_resep`
--

CREATE TABLE IF NOT EXISTS `t_resep` (
  `IDKaryawan` varchar(10) NOT NULL,
  `KdMakanan` varchar(20) NOT NULL,
  `NamaMakanan` varchar(50) NOT NULL,
  `Cara` text NOT NULL,
  `StatusResep` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_resep`
--

INSERT INTO `t_resep` (`IDKaryawan`, `KdMakanan`, `NamaMakanan`, `Cara`, `StatusResep`) VALUES
('C23001', 'B23001A', 'Mie Rebus Telur Kornet', 'Mie:\r\n- Rebus air hingga mendidih. \r\n- Masukkan mie, telur dan cai sim, rebus hingga matang.\r\n- Tuang ke dalam mangkuk yang telah terisi bumbu.\r\nKornet:\r\n- Masukkan minyak, tunggu hingga panas. \r\n- Masukkan kornet dan masak hingga matang.\r\n- Sajikan mie, telur, kornet, dan cai sim.', 'On sale'),
('C23001', 'B23001B', 'Mie Rebus Telur Kornet Sedang', 'Mie:\r\n- Rebus air hingga mendidih. \r\n- Masukkan mie, telur, cabe rawit dan cai sim, rebus hingga matang.\r\n- Tuang ke dalam mangkuk yang telah terisi bumbu.\r\nKornet:\r\n- Masukkan minyak, tunggu hingga panas. \r\n- Masukkan kornet dan masak hingga matang.\r\n- Sajikan mie, telur, kornet, dan cai sim.', 'On sale'),
('C23001', 'B23001C', 'Mie Rebus Telur Kornet Pedas', 'Mie:\r\n- Rebus air hingga mendidih. \r\n- Masukkan mie, telur, cabe rawit dan cai sim, rebus hingga matang.\r\n- Tuang ke dalam mangkuk yang telah terisi bumbu.\r\nKornet:\r\n- Masukkan minyak, tunggu hingga panas. \r\n- Masukkan kornet dan masak hingga matang.\r\n- Sajikan mie, telur, kornet, dan cai sim.', 'On sale'),
('C23001', 'B23002A', 'Mie Rebus Kornet', 'Mie:\r\n- Rebus air hingga mendidih. \r\n- Masukkan mie dan cai sim, rebus hingga matang.\r\n- Tuang ke dalam mangkuk yang telah terisi bumbu.\r\nKornet:\r\n- Masukkan minyak, tunggu hingga panas. \r\n- Masukkan kornet dan masak hingga matang.\r\n- Sajikan mie, kornet dan cai sim.', 'On sale'),
('C23001', 'B23002B', 'Mie Rebus Kornet Sedang', 'Mie:\r\n- Rebus air hingga mendidih. \r\n- Masukkan mie, cabe rawit dan cai sim, rebus hingga matang.\r\n- Tuang ke dalam mangkuk yang telah terisi bumbu.\r\nKornet:\r\n- Masukkan minyak, tunggu hingga panas. \r\n- Masukkan kornet dan masak hingga matang.\r\n- Sajikan mie, kornet dan cai sim.', 'On sale'),
('C23001', 'B23002C', 'Mie Rebus Kornet Pedas', 'Mie:\r\n- Rebus air hingga mendidih. \r\n- Masukkan mie, cabe rawit dan cai sim, rebus hingga matang.\r\n- Tuang ke dalam mangkuk yang telah terisi bumbu.\r\nKornet:\r\n- Masukkan minyak, tunggu hingga panas. \r\n- Masukkan kornet dan masak hingga matang.\r\n- Sajikan mie, kornet dan cai sim.', 'On sale'),
('C23002', 'B23003A', 'Mie Goreng Rendang Special', 'Mie:\r\n- Rebus air hingga mendidih. \r\n- Masukkan mie, rebus hingga matang.\r\n- Tiriskan dan tuang ke dalam mangkuk yang telah terisi bumbu.\r\nRendang:\r\n- Rebus daging hingga empuk.\r\n- Masukkan minyak, tunggu hingga panas. \r\n- Masukkan daging sapi dan bumbu rendang, masak hingga matang.\r\n- Sajikan mie dan rendang. ', 'On sale'),
('C23002', 'B23003B', 'Mie Goreng Rendang Special Sedang', 'Mie:\r\n- Rebus air hingga mendidih. \r\n- Masukkan mie dan cabe rawit, rebus hingga matang.\r\n- Tiriskan dan tuang ke dalam mangkuk yang telah terisi bumbu.\r\nRendang:\r\n- Rebus daging hingga empuk.\r\n- Masukkan minyak, tunggu hingga panas. \r\n- Masukkan daging sapi dan bumbu rendang, masak hingga matang.\r\n- Sajikan mie dan rendang. ', 'On sale'),
('C23002', 'B23003C', 'Mie Goreng Rendang Special Pedas', 'Mie:\r\n- Rebus air hingga mendidih. \r\n- Masukkan mie dan cabe rawit, rebus hingga matang.\r\n- Tiriskan dan tuang ke dalam mangkuk yang telah terisi bumbu.\r\nRendang:\r\n- Rebus daging hingga empuk.\r\n- Masukkan minyak, tunggu hingga panas. \r\n- Masukkan daging sapi dan bumbu rendang, masak hingga matang.\r\n- Sajikan mie dan rendang. ', 'On sale'),
('C23002', 'B23004A', 'Mie Goreng Telur Kornet', 'Mie:\r\n- Rebus air hingga mendidih. \r\n- Masukkan mie dan telur, rebus hingga matang.\r\n- Tiriskan dan tuang ke dalam mangkuk yang telah terisi bumbu.\r\nKornet:\r\n- Masukkan minyak, tunggu hingga panas. \r\n- Masukkan kornet dan masak hingga matang.\r\n- Sajikan mie, telur dan kornet.', 'On sale'),
('C23002', 'B23004B', 'Mie Goreng Telur Kornet Sedang', 'Mie:\r\n- Rebus air hingga mendidih. \r\n- Masukkan mie, cabe rawit dan telur, rebus hingga matang.\r\n- Tiriskan dan tuang ke dalam mangkuk yang telah terisi bumbu.\r\nKornet:\r\n- Masukkan minyak, tunggu hingga panas. \r\n- Masukkan kornet dan masak hingga matang.\r\n- Sajikan mie, telur dan kornet.', 'On sale'),
('C23002', 'B23004C', 'Mie Goreng Telur Kornet Pedas', 'Mie:\r\n- Rebus air hingga mendidih. \r\n- Masukkan mie, cabe rawit dan telur, rebus hingga matang.\r\n- Tiriskan dan tuang ke dalam mangkuk yang telah terisi bumbu.\r\nKornet:\r\n- Masukkan minyak, tunggu hingga panas. \r\n- Masukkan kornet dan masak hingga matang.\r\n- Sajikan mie, telur dan kornet.', 'On sale'),
('', 'M23001', 'Aqua', '- Ambil dari tempat penyimpanan minuman', 'On sale'),
('', 'M23002', 'Teh Botol', '- Ambil dari tempat penyimpanan minuman', 'On sale'),
('', 'M23003', 'Sprite', '- Ambil dari tempat penyimpanan minuman', 'On sale'),
('', 'M23004', 'Fanta', '- Ambil dari tempat penyimpanan minuman', 'On sale'),
('', 'M23005', 'Coca Cola', '- Ambil dari tempat penyimpanan minuman', 'On sale');

-- --------------------------------------------------------

--
-- Table structure for table `t_struk`
--

CREATE TABLE IF NOT EXISTS `t_struk` (
  `KdPesan` int(11) NOT NULL,
  `IDKaryawan` varchar(10) NOT NULL,
  `TotalPembayaran` double NOT NULL,
  `Tanggal/Jam` datetime NOT NULL,
  KEY `KdPesan` (`KdPesan`),
  KEY `IDKaryawan` (`IDKaryawan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_waitinglist`
--

CREATE TABLE IF NOT EXISTS `t_waitinglist` (
  `NamaCustomer` varchar(10) NOT NULL,
  `JumlahCustomer` int(11) NOT NULL,
  `No. Telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_accident`
--
ALTER TABLE `t_accident`
  ADD CONSTRAINT `t_accident_ibfk_1` FOREIGN KEY (`KdPesan`) REFERENCES `t_pesan` (`KdPesan`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `t_accident_ibfk_2` FOREIGN KEY (`IDKaryawan`) REFERENCES `t_karyawan` (`IDKaryawan`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `t_accident_ibfk_3` FOREIGN KEY (`KdMakanan`) REFERENCES `t_menu` (`KdMakanan`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `t_inventorykeluar`
--
ALTER TABLE `t_inventorykeluar`
  ADD CONSTRAINT `t_inventorykeluar_ibfk_1` FOREIGN KEY (`KdBarang`) REFERENCES `t_inventory` (`KdBarang`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `t_inventorymasuk`
--
ALTER TABLE `t_inventorymasuk`
  ADD CONSTRAINT `t_inventorymasuk_ibfk_1` FOREIGN KEY (`KdBarang`) REFERENCES `t_inventory` (`KdBarang`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `t_pesan`
--
ALTER TABLE `t_pesan`
  ADD CONSTRAINT `t_pesan_ibfk_1` FOREIGN KEY (`IDKaryawan`) REFERENCES `t_karyawan` (`IDKaryawan`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `t_pesanan`
--
ALTER TABLE `t_pesanan`
  ADD CONSTRAINT `t_pesanan_ibfk_2` FOREIGN KEY (`KdPesan`) REFERENCES `t_pesan` (`KdPesan`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `t_pesanan_ibfk_1` FOREIGN KEY (`KdMakanan`) REFERENCES `t_menu` (`KdMakanan`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `t_struk`
--
ALTER TABLE `t_struk`
  ADD CONSTRAINT `t_struk_ibfk_2` FOREIGN KEY (`IDKaryawan`) REFERENCES `t_karyawan` (`IDKaryawan`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `t_struk_ibfk_1` FOREIGN KEY (`KdPesan`) REFERENCES `t_pesan` (`KdPesan`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
