-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2020 at 06:33 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `map`
--

-- --------------------------------------------------------

--
-- Table structure for table `rumah_sakit`
--

CREATE TABLE `rumah_sakit` (
  `id_rs` int(6) UNSIGNED NOT NULL,
  `nama_rs` varchar(100) NOT NULL,
  `nama_kec` varchar(100) NOT NULL,
  `rs_long` varchar(100) DEFAULT NULL,
  `rs_lati` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rumah_sakit`
--

INSERT INTO `rumah_sakit` (`id_rs`, `nama_rs`, `nama_kec`, `rs_long`, `rs_lati`) VALUES
(1, 'rumah sakit mitra bangsa', 'pati', '-6.7460557', '111.0208983'),
(2, 'rumah sakit keluarga sehat', 'pati', '-6.7542596', '111.010663'),
(3, 'Rumah Sakit RAA Soewondo', 'pati', '-6.7433941', '111.0418129'),
(4, 'RSU Fastabiq Sehat PKU Muhammadiyah', 'pati', '-6.7349343', '111.0467482'),
(5, 'Rumah Sakit Budi Agung', 'juwana', '-6.7100654', '111.1428129'),
(6, 'Rumah Sakit Jakenan', 'jakenan', '-6.760627', '111.1495712'),
(7, 'Rumah Sakit As-Suyuthiyyah Pati', 'trangkil', '-6.660023', '111.0791672'),
(8, 'Rumah Sakit Khusus (RSK) THT Bina Waluya', 'pati', '-6.7207983', '111.0381371'),
(9, 'Rumah Sakit Marga Husada', 'pati', '-6.7498194', '111.0291207'),
(10, 'Rumah Sakit Anak Sejahtera', 'pati', '-6.7504652', '111.0376145'),
(11, 'Poliklinik Dan Rumah Bersalin', 'pati', '-6.7482398', '111.0273423'),
(12, 'Keluarga Sehat Medical Center', 'pati', '-6.7527732', '111.0228791'),
(13, 'Klinik Setia Husada', 'juwana', '-6.7418662', '111.1507128'),
(14, 'Poliklinik Dan Rumah Bersalin', 'pati', '-6.7472116', '111.0252609'),
(15, 'Rumah Sakit Sebening Kasih', 'tayu', '-6.5599999', '111.0394755');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(5) NOT NULL,
  `password` varchar(128) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role_id` int(11) NOT NULL COMMENT '1 = admin, 2 = user, 3 = operator'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `password`, `name`, `email`, `role_id`) VALUES
(4, '$2y$10$vPnoh.sJX.Fq25wVS9ajHO5FM1Q92VznUxSOOlNOiuAx0x/oESpZC', 'Kurniasari', 'kurniasari195@gmail.com', 1),
(5, '$2y$10$4jQSlfdn1Zs1w324PfQ5ve.sZVMlEeO9RMgS9sWalaS.JnmOcUssW', 'Nia', 'kurnia@gmail.com', 2),
(6, '3a33af3fe8e46b4ddc3e221c8cc30c88', 'desy', 'desykrisdian29@gmail.com', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rumah_sakit`
--
ALTER TABLE `rumah_sakit`
  ADD PRIMARY KEY (`id_rs`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rumah_sakit`
--
ALTER TABLE `rumah_sakit`
  MODIFY `id_rs` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
