-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2017 at 05:50 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik1`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--
CREATE DATABASE akademik;
use akademik;

CREATE TABLE `dosen` (
  `iddosen` int(11) NOT NULL,
  `nidn` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `gelar` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `sex` enum('-','L','P') NOT NULL,
  `tahun_masuk` int(11) NOT NULL,
  `idps` int(11) NOT NULL,
  `idpendidikan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`iddosen`, `nidn`, `nama`, `gelar`, `tanggal_lahir`, `sex`, `tahun_masuk`, `idps`, `idpendidikan`) VALUES
(1, '1020304001', 'Eko Win Kenali', 'S.Kom.,M.Cs', '1970-12-05', 'L', 2006, 7530, 2),
(2, '1020304002', 'Dewi Kania Widyawati', 'S.Kom.,M.Kom', '1975-03-20', 'P', 2008, 7530, 2),
(3, '1020304003', 'Zuriati', 'S.Kom.,M.Kom', '1974-12-13', 'P', 2006, 7530, 2),
(4, '1020304004', 'Henry Kurniawan', 'S.Si.,M.Stat', '1979-09-14', 'L', 2008, 7530, 2),
(5, '1020304005', 'Imam Asrowardi', 'S.Kom.,M.Kom', '1970-08-15', 'L', 2006, 7530, 2),
(6, '1020304006', 'Tri Sandhika Jaya', 'S.Kom.,M.Kom', '1975-06-29', 'L', 2006, 7530, 2),
(7, '1020304007', 'Eko Subyantoro', 'S.Kom.,M.Kom', '1977-08-14', 'L', 2008, 7530, 2),
(8, '1020304008', 'Rima Maulini', 'S.Kom.,M.Kom', '1977-11-13', 'P', 2007, 7530, 2),
(9, '1020304009', 'Halim Fathoni', 'S.T.,M.Eng', '1978-03-13', 'L', 2010, 7530, 2),
(10, '1020304010', 'Kurniawan Saputra', 'S.Kom.,M.Kom', '1970-06-12', 'L', 2007, 7530, 2),
(11, '1020304011', 'Dwirgo Sahlinal', 'S.T.,M.Eng', '1969-12-15', 'L', 2009, 7530, 2),
(12, '1020304012', 'Mochamad Yusman', 'S.Kom.,M.Kom', '1978-12-15', 'L', 2010, 7530, 2),
(13, '1020304013', 'Septafiansyah Dwi Putra', 'S.T.,M.T', '1980-06-13', 'L', 2011, 7530, 2),
(14, '1020304014', 'Agiska Ria Supriyatna', 'S.Kom.,M.Kom', '1973-12-20', 'P', 2010, 7530, 2),
(15, '1020305001', 'Anita Kusuma Dewi', 'SE, M.Com Acc', '2075-12-06', 'P', 2008, 7520, 2),
(16, '1020305002', 'Arif Makhsun', 'SE, MS.Ak', '1973-04-12', 'L', 2008, 7520, 2),
(17, '1020305003', 'Artie Arditha R', 'SE, M.Sc, Akt', '1974-05-20', 'L', 2005, 7520, 2),
(18, '1020305004', 'Damayanti', 'SE, MM, Akt', '1972-12-13', 'P', 2007, 7520, 2),
(19, '1020305005', 'Destia Pentiana', 'SE, M.Si', '1972-12-06', 'P', 2005, 7520, 2),
(20, '1020305005', 'Dian Nirmala Dewi', 'SE, MS.Ak', '1970-12-14', 'P', 2005, 7520, 2),
(21, '1020305006', 'Dian PS', 'S.Pd, M.Si', '1970-11-05', 'P', 2008, 7520, 2),
(22, '1020305007', 'Eksa Ridwansyah', 'SE, M.Bus, Akt', '1969-12-21', 'L', 2007, 7520, 2),
(23, '1020305009', 'Endang Asliana', 'SE, M.Sc', '1997-12-07', 'P', 2008, 7520, 2),
(24, '1020305010', 'Evi Yuniarti', 'SE, M.Si', '1970-12-05', 'P', 2008, 7520, 2),
(25, '1020305011', 'Irawan', 'SE, M.Si', '1970-12-06', 'L', 2009, 7520, 2),
(26, '1020305012', 'Lihan Rini Puspo W', 'S.E, M.Si', '1979-12-20', 'P', 2009, 7520, 2),
(27, '1020305014', 'Maryani', 'SE, MM', '1970-12-07', 'P', 2010, 7520, 2),
(28, '1020305015', 'Nurmala', 'SE, MM, Akt', '1970-12-07', 'P', 2010, 7520, 2),
(29, '1020305016', 'Refdi Akmal', 'S.Pd,M.Pd', '1970-12-07', 'L', 2004, 7520, 2),
(30, '1020305018', 'Rusmianto', 'SE, M.Si', '0000-00-00', 'L', 2004, 7520, 2),
(31, '1020306001', 'Damayanti', ' S.E., M.M.,Ak.,CA', '1970-12-06', 'P', 2017, 7550, 2),
(32, '1020306002', 'Nurmala', 'S.E., M.M.,Ak.,CA', '1970-12-06', 'P', 2017, 7550, 2),
(33, '1020306003', 'Anita Kusuma Dewi', 'S.E.,M.Com., Acc', '1976-12-06', 'P', 2017, 7550, 2),
(34, '1020306004', 'Rusmianto', 'S.E.,M.Si ', '1970-12-28', 'L', 2017, 7550, 2),
(35, '1020305007', 'Eksa Ridwansyah', ' S.E.,M.Buss.,Ak.CA ', '1970-12-14', 'L', 2017, 7550, 2),
(36, '1020305005', 'Destia Pentiana', 'SE., M.Si ', '1970-12-14', 'P', 2017, 7550, 2),
(37, '1020305014', 'Maryani', 'S.E.,M.M.,Ak.CA', '2017-12-14', 'P', 2017, 7550, 2),
(38, '1020307001', 'Ir. Cholid Fatih', ' M.P', '1974-12-13', 'L', 2008, 7510, 2),
(39, '1020307002', 'Ir. Bina Unteawati', ' M.P', '1973-05-10', 'P', 2008, 7510, 2),
(40, '1020307003', 'Ir. Teguh Budi Trisnanto', ' M.Si', '1972-01-10', 'L', 2008, 7510, 2),
(41, '1020307004', 'Sutarni', ' S.P.,M.E.P', '1975-09-11', 'P', 2007, 7510, 2),
(42, '1020307005', 'Fitriani', ' S.P., M.E.P', '1976-04-14', 'P', 2007, 7510, 2),
(43, '1020307006', 'Fadila Marga Saty', ' S.Si., M.Si', '1970-08-29', 'P', 2006, 7510, 2),
(44, '1020307007', 'Muhammad Zaini', ' S.P', '1969-12-06', 'L', 2007, 7510, 1),
(45, '1020307008', 'Analianasari', ' S.T.P., M.T.A.', '1973-04-20', 'P', 2007, 7510, 2),
(46, '1020307009', 'Luluk Irawati', ' S.P., M.T.A.', '1972-05-05', 'P', 2008, 7510, 2),
(47, '1020307010', 'Marlinda Apriyani', ' S.P.,M.P.', '1974-08-22', 'P', 2008, 7510, 2),
(48, '1020307011', 'Sri Handayani', ' S.P., M.E.P', '1973-07-25', 'P', 2008, 7510, 2),
(49, '1020307001', 'Ir. Cholid Fatih', ' M.P', '1974-12-13', 'L', 2008, 7540, 2),
(50, '1020307002', 'Ir. Bina Unteawati', ' M.P', '1973-05-10', 'P', 2008, 7540, 2),
(51, '1020307003', 'Ir. Teguh Budi Trisnanto', ' M.Si', '1972-01-10', 'L', 2008, 7540, 2),
(52, '1020307004', 'Sutarni', ' S.P.,M.E.P', '1975-09-11', 'P', 2007, 7540, 2),
(53, '1020307005', 'Fitriani', ' S.P., M.E.P', '1976-04-14', 'P', 2007, 7540, 2),
(54, '1020307006', 'Fadila Marga Saty', ' S.Si., M.Si', '1970-08-29', 'P', 2006, 7540, 2),
(55, '1020307007', 'Muhammad Zaini', ' S.P', '1969-12-06', 'L', 2007, 7540, 1),
(56, '1020307008', 'Analianasari', ' S.T.P., M.T.A.', '1973-04-20', 'P', 2007, 7540, 2);

-- --------------------------------------------------------

--
-- Table structure for table `jalurmasuk`
--

CREATE TABLE `jalurmasuk` (
  `idjalurmasuk` int(11) NOT NULL,
  `nmjalurmasuk` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jalurmasuk`
--

INSERT INTO `jalurmasuk` (`idjalurmasuk`, `nmjalurmasuk`) VALUES
(1, 'BidikMisi'),
(2, 'PMDK'),
(3, 'UMPN'),
(4, 'UMPN-Mandiri'),
(5, 'PMKAB');

-- --------------------------------------------------------

--
-- Table structure for table `jenjang`
--

CREATE TABLE `jenjang` (
  `idjenjang` int(11) NOT NULL,
  `nmjenjang` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenjang`
--

INSERT INTO `jenjang` (`idjenjang`, `nmjenjang`) VALUES
(1, 'D3'),
(2, 'D4');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `idmhs` int(11) NOT NULL,
  `npm` varchar(8) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `sex` enum('-','L','P','') NOT NULL,
  `tahun_masuk` int(11) NOT NULL,
  `idps` int(11) NOT NULL,
  `idjalurmasuk` int(11) NOT NULL,
  `iddosen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`idmhs`, `npm`, `nama`, `tempat_lahir`, `tanggal_lahir`, `sex`, `tahun_masuk`, `idps`, `idjalurmasuk`, `iddosen`) VALUES
(330, '17753001', 'Achmadi Hudadin Albarqi', 'Way Bungur', '2000-10-12', 'L', 2017, 7530, 1, 1),
(331, '17753002', 'Ade Wahyu Mahendra', 'Kemiling', '1999-08-12', 'P', 2017, 7530, 2, 1),
(332, '17753003', 'Aditya Mahdi', 'Bandar Lampung', '1999-11-13', 'L', 2017, 7530, 3, 1),
(333, '17753004', 'Agista Dwi Fortuna', 'Kemiling', '1999-07-01', 'P', 2017, 7530, 3, 1),
(334, '17753005', 'Agus Tina Srilestari', 'Way Halim', '1999-01-05', 'P', 2017, 7530, 2, 1),
(335, '17753006', 'Ahmad Andri Zaputra', 'Kotabumi', '1999-05-07', 'L', 2017, 7530, 1, 1),
(336, '17753007', 'Alaena Diena Laelis', 'Tanggamus', '1999-12-19', 'P', 2017, 7530, 4, 2),
(337, '17753008', 'Aldino Rizaldi', 'Natar', '1999-01-02', 'L', 2017, 7530, 5, 2),
(338, '17753009', 'Anisa Nur Rohkmah', 'Bandar Lampung', '1999-01-05', 'P', 2017, 7530, 5, 2),
(339, '17753010', 'Anjasmoro', 'Pringsewu', '1999-06-21', 'L', 2017, 7530, 1, 2),
(340, '17753011', 'Ayu Sekar Larasati', 'Bandar Lampung', '1999-09-24', 'P', 2017, 7530, 1, 14),
(341, '17753012', 'Badaruddin', 'Way Jepara', '1999-11-13', 'L', 2017, 7530, 2, 14),
(342, '17753013', 'Bagas Ageng Sandoko', 'Kotabumi', '1999-01-05', 'L', 2017, 7530, 3, 2),
(343, '17753014', 'Bayu Magawan', 'Sukadana', '1999-05-07', 'L', 2017, 7530, 2, 2),
(344, '17753015', 'Cici Mayang Andini', 'Metro', '1999-09-02', 'P', 2017, 7530, 2, 3),
(345, '17753016', 'Dhimas Gidant Syuraeka', 'Krui', '1999-12-16', 'L', 2017, 7530, 3, 14),
(346, '17753017', 'Dian Ramadani', 'Kota Agung', '1999-01-02', 'P', 2017, 7530, 4, 3),
(347, '17753018', 'Didi Setiawan', 'Kalianda', '1999-09-20', 'L', 2017, 7530, 4, 3),
(348, '17753019', 'Diki Rahmad Sandi', 'Metro', '1999-01-05', 'L', 2017, 7530, 2, 3),
(349, '17753020', 'Dinda Dwi Ning Tyas', 'Bandar Lampung', '1999-10-24', 'P', 2017, 7530, 1, 3),
(350, '17753021', 'Dinda Fatriani', 'Bandar Jaya', '1999-09-02', 'P', 2017, 7530, 2, 3),
(351, '17753022', 'Dwi Haryanti', 'Krui', '1999-05-07', 'P', 2017, 7530, 5, 4),
(352, '17753023', 'Elvina Bella Nur Azizah', 'Sukadana', '1999-06-18', 'P', 2017, 7530, 5, 14),
(353, '17753024', 'Ester Anjelina Situmorang', 'Pringsewu', '1999-12-16', 'P', 2017, 7530, 3, 4),
(354, '17753025', 'Euis Srimulyani', 'Bandar Lampung', '1999-06-21', 'P', 2017, 7530, 3, 4),
(355, '17753026', 'Febri Widya Astuti', 'Krui', '1999-06-18', 'P', 2017, 7530, 2, 4),
(356, '17753027', 'Febryadi Paulinus Nadeak', 'Bandar Lampung', '1999-05-07', 'L', 2017, 7530, 2, 4),
(357, '17753028', 'Feri Irawan', 'Metro', '1999-09-20', 'L', 2017, 7530, 3, 14),
(358, '17753029', 'Ferly Yana', 'Bandar Jaya', '1999-01-02', 'P', 2017, 7530, 4, 5),
(359, '17753030', 'Fitrina Alfiyah', 'Krui', '1999-11-19', 'P', 2017, 7530, 4, 5),
(360, '17753031', 'Givani Lourenza Muiyadi', 'Kota Agung', '1999-12-16', 'P', 2017, 7530, 5, 5),
(361, '17753032', 'Iqlima Putrianti', 'Sukadana', '1999-06-18', 'P', 2017, 7530, 5, 5),
(362, '17753033', 'Irma Purnama Sari', 'Metro', '1999-09-02', 'P', 2017, 7530, 4, 5),
(363, '17753034', 'Ivo Armayanti', 'Krui', '1999-06-21', 'P', 2017, 7530, 2, 6),
(364, '17753035', 'Jelsy Fery Novianto', 'Kalianda', '1999-12-16', 'L', 2017, 7530, 4, 6),
(365, '17753036', 'Laksamana  Mufti Wildan Amir', 'Pringsewu', '1999-06-18', 'L', 2017, 7530, 2, 6),
(366, '17753037', 'Laras Fitrianingsih', 'Tanjung Bintang', '1999-04-16', 'L', 2017, 7530, 2, 6),
(367, '17753038', 'Laura Carona', 'Teluk Betung', '1999-11-19', 'L', 2017, 7530, 1, 6),
(368, '17753039', 'Libby Afipa Editanisa', 'Tanjung Bintang', '1999-01-02', 'L', 2017, 7530, 3, 7),
(369, '17753040', 'Lidia Firda Saputri', 'Bandar Lampung', '1999-01-02', 'L', 2017, 7530, 4, 7),
(370, '17753041', 'M. Fajri Ramadhan', 'Teluk Betung', '1999-06-18', 'L', 2017, 7530, 5, 7),
(371, '17753042', 'M. Ilham Yusuf Gumai', 'Palembang', '1999-11-20', 'L', 2017, 7530, 2, 7),
(372, '17753043', 'Made Slimacek', 'Natar', '1999-04-16', 'L', 2017, 7530, 2, 7),
(373, '17753044', 'Mudo Kurniawan', 'Palembang', '1999-07-01', 'L', 2017, 7530, 3, 8),
(374, '17753045', 'Muh. Aulia Prima Insani', 'Bandar Jaya', '1999-09-02', 'L', 2017, 7530, 4, 8),
(375, '17753046', 'Muhammad Ichsan Rofiqo', 'Palembang', '1999-06-18', 'L', 2017, 7530, 1, 8),
(376, '17753047', 'OngkI Alexander', 'Kota Agung', '1999-01-02', 'L', 2017, 7530, 1, 8),
(377, '17753048', 'Putri Mellyana Eka Safitri', 'Kalianda', '1999-11-20', 'L', 2017, 7530, 2, 8),
(378, '17753049', 'Renaldhi Fitra Yudha', 'Palembang', '1999-04-16', 'L', 2017, 7530, 2, 8),
(379, '17753050', 'Reza Janati Utami', 'Teluk Betung', '1999-09-24', 'L', 2017, 7530, 4, 9),
(380, '17753051', 'Romi Wijayanti', 'Sukarame', '1999-01-02', 'L', 2017, 7530, 1, 9),
(381, '17753052', 'Rona Arika Hasna', 'Tanggamus', '1999-06-18', 'L', 2017, 7530, 1, 9),
(382, '17753053', 'Safira Novrianti', 'Bandar Lampung', '1999-04-16', 'L', 2017, 7530, 2, 9),
(383, '17753054', 'Safira Ramadani', 'Tegi Neneng', '1999-07-01', 'L', 2017, 7530, 2, 9),
(384, '17753055', 'Salza Firdiana Izmi', 'Sukarame', '1999-12-16', 'L', 2017, 7530, 1, 9),
(385, '17753056', 'Shinta', 'Natar', '1999-09-12', 'L', 2017, 7530, 4, 10),
(386, '17753057', 'Shoni Setiawan', 'Liwa', '1999-06-18', 'L', 2017, 7530, 2, 10),
(387, '17753058', 'Stephani Yolanda', 'Tegi Neneng', '1999-09-02', 'L', 2017, 7530, 1, 10),
(388, '17753059', 'Suci Lestari', 'Sukarame', '1999-09-24', 'L', 2017, 7530, 2, 10),
(389, '17753060', 'Suryani', 'Bandar Lampung', '1999-09-24', 'L', 2017, 7530, 2, 10),
(390, '17753061', 'Syaharani', 'Bandar Jaya', '1999-09-12', 'L', 2017, 7530, 1, 10),
(391, '17753062', 'Tika Nur Annisa', 'Sukarame', '1999-06-18', 'L', 2017, 7530, 1, 11),
(392, '17753063', 'Tri Wahyudi', 'Tegi Neneng', '1999-07-01', 'L', 2017, 7530, 3, 11),
(393, '17753064', 'Tyas Mustika Wulandari', 'Tanggamus', '1999-01-02', 'L', 2017, 7530, 1, 11),
(394, '17753065', 'Vani Yuliandari', 'Sukarame', '1999-11-10', 'L', 2017, 7530, 4, 11),
(395, '17753066', 'Vina Kusuma Tri Wardani', 'Bandar Lampung', '1999-12-19', 'L', 2017, 7530, 5, 12),
(396, '17753067', 'Yondri Bayu Irawan', 'Tegi Neneng', '1999-11-10', 'L', 2017, 7530, 1, 12),
(397, '17753068', 'Yudi Setyawan', 'Bandar Lampung', '1999-01-02', 'L', 2017, 7530, 1, 12),
(398, '17753069', 'Alvionita Bunga Rizki Fitria', 'Natar', '1999-08-12', 'L', 2017, 7530, 2, 12),
(399, '17753070', 'Harlis Nur Yuliyansah', 'Liwa', '1999-09-24', 'L', 2017, 7530, 1, 13),
(400, '17753071', 'Muhammad Ariansyah', 'Bandar Jaya', '1999-11-10', 'L', 2017, 7530, 3, 13),
(401, '17753072', 'Muhammad Irfan Lutfi', 'Sukarame', '1999-12-19', 'L', 2017, 7530, 2, 13),
(402, '17753073', 'Sindi Dragifta Qhoiriyah', 'Tanggamus', '1999-10-24', 'L', 2017, 7530, 2, 13),
(403, '17752001', 'Ahmad Affandi', 'Pringsewu', '1998-11-07', 'L', 2017, 7520, 1, 24),
(404, '17752002', 'Alisa Fitriani', 'Metro', '1999-03-01', 'P', 2017, 7520, 4, 20),
(405, '17752003', 'Anisa Risqiani', 'Metro', '1999-11-30', 'P', 2017, 7520, 2, 20),
(406, '17752004', 'Anisya Gusti Riani', 'Pringsewu', '1998-03-01', 'P', 2017, 7520, 4, 20),
(407, '17752005', 'Armalia Khairunnissa Muliawan', 'Palembang', '1999-10-06', 'P', 2017, 7520, 1, 20),
(408, '17752006', 'Asih Ayu Lestari', 'Liwa', '1997-09-22', 'P', 2017, 7520, 5, 21),
(409, '17752007', 'Assifa Diartasya Paramitha', 'Pringsewu', '1999-06-01', 'P', 2017, 7520, 4, 24),
(410, '17752008', 'Bela Cantika', 'Pringsewu', '1999-02-11', 'P', 2017, 7520, 3, 21),
(411, '17752009', 'Beny Sulistyo Al Madjid', 'Metro', '1998-11-09', 'L', 2017, 7520, 1, 19),
(412, '17752010', 'Devi Dwiyanti', 'Lampung Timur', '1999-09-03', 'P', 2017, 7520, 4, 19),
(413, '17752011', 'Dhela Fajar Pratiwi', 'Palembang', '1998-01-02', 'P', 2017, 7520, 5, 18),
(414, '17752012', 'Dinda Febriyanti', 'Metro', '1999-07-12', 'P', 2017, 7520, 1, 21),
(415, '17752013', 'Dini Anggraini', 'Lampung Timur', '0000-00-00', 'P', 2017, 7520, 5, 18),
(416, '17752014', 'Fransiska Lusiana', 'Metro', '1998-11-15', 'P', 2017, 7520, 1, 21),
(417, '17752015', 'Hadi Gustara', 'Lampung Timur', '1998-01-02', 'L', 2017, 7520, 3, 18),
(418, '17752016', 'Hasanudin', 'Liwa', '1999-01-03', 'L', 2017, 7520, 4, 19),
(419, '17752017', 'Ilma Palama Citra', 'Metro', '1998-11-02', 'P', 2017, 7520, 1, 24),
(420, '17752018', 'Jenny Melitha', 'Pringsewu', '1998-01-05', 'L', 2017, 7520, 1, 17),
(421, '17752019', 'Kartika Tri Jayanti', 'Pringsewu', '1998-06-02', 'P', 2017, 7520, 5, 17),
(422, '17752020', 'Lailatul Badriyah', 'Metro', '1998-01-04', 'P', 2017, 7520, 3, 25),
(423, '17752021', 'Maria Fransiska Lingga', 'Palembang', '1998-03-02', 'P', 2017, 7520, 5, 17),
(424, '17752022', 'Marissa Dinda Pradini', 'Lampung Timur', '1998-02-02', 'P', 2017, 7520, 1, 15),
(425, '17752023', 'Mas Ade Riyani', 'Metro', '1999-01-14', 'P', 2017, 7520, 2, 17),
(426, '17752024', 'Maulid Datul Nurhasanah', 'Liwa', '1999-01-02', 'P', 2017, 7520, 1, 17),
(427, '17752025', 'Maulidya Komala Sari', 'Palembang', '1999-11-29', 'P', 2017, 7520, 4, 17),
(428, '17752026', 'Novita Dwi Indriyani', 'Metro', '1999-11-29', 'P', 2017, 7520, 4, 17),
(429, '17752027', 'Nurjannah Rafit', 'Pringsewu', '1999-11-29', 'P', 2017, 7520, 3, 16),
(430, '17752028', 'Putri Aprilia', 'Metro', '1999-11-29', 'P', 2017, 7520, 3, 16),
(431, '17752029', 'Raentika Wita', 'Palembang', '1999-11-29', 'P', 2017, 7520, 4, 16),
(432, '17752030', 'Refi Nabilla', 'Metro', '1999-11-29', 'P', 2017, 7520, 5, 16),
(433, '17752031', 'Ria Rismawati', 'Pringsewu', '1999-11-29', 'P', 2017, 7520, 4, 15),
(434, '17752032', 'Rifa Dian Eka Farah', 'Metro', '1999-11-29', 'P', 2017, 7520, 4, 16),
(435, '17752033', 'Riska Aulia', 'Lampung Timur', '1999-11-29', 'P', 2017, 7520, 3, 16),
(436, '17752034', 'Riska Puji Astuti', 'Palembang', '1999-11-29', 'P', 2017, 7520, 4, 16),
(437, '17752035', 'Riska Sahfitri', 'Metro', '1999-11-29', 'P', 2017, 7520, 4, 25),
(438, '17752036', 'Rizki Aryani', 'Lampung Timur', '1999-11-29', 'P', 2017, 7520, 3, 16),
(439, '17752037', 'Rosyita Puri Rimadhona', 'Pringsewu', '1999-11-29', 'P', 2017, 7520, 3, 15),
(440, '17752038', 'Septiana', 'Metro', '1999-11-29', 'P', 2017, 7520, 3, 15),
(441, '17752039', 'Sheny Dwi Amilia', 'Bandar Lampung', '2000-01-02', 'P', 2017, 7520, 1, 15),
(442, '17752040', 'Steven', 'Mesuji', '1999-11-22', 'L', 2017, 7520, 3, 15),
(443, '17752041', 'Suci Mulya', 'Tulang Bawang', '1999-05-02', 'P', 2017, 7520, 4, 15),
(444, '17752042', 'Suryati', 'Panjang', '1999-12-02', 'P', 2017, 7520, 5, 15),
(445, '17752043', 'Tri Imelda Aprilianne', 'Way Kanan', '1999-09-15', 'P', 2017, 7520, 1, 15),
(446, '17752044', 'Tris Andoni', 'Way Kambas', '1999-07-21', 'L', 2017, 7520, 1, 16),
(447, '17752045', 'Triyani Megawati', 'Mesuji', '1999-05-12', 'P', 2017, 7520, 2, 16),
(448, '17752046', 'Triyas Setiyabudi', 'OKI', '1999-04-09', 'L', 2017, 7520, 2, 16),
(449, '17752047', 'Woentar Michelle K', 'Bandar Lampung', '1999-10-04', 'P', 2017, 7520, 2, 16),
(450, '17752048', 'Yolanda Erika', 'Metro', '1999-04-03', 'P', 2017, 7520, 2, 16),
(451, '17752049', 'Yulia Ayu Puspita Hutagalung', 'Bandar Lampung', '1999-03-03', 'P', 2017, 7520, 3, 17),
(452, '17752050', 'Andre Armedian', 'Mesuji', '1998-06-06', 'L', 2017, 7520, 3, 17),
(453, '17752051', 'Andreas Bagus Primadani', 'Tulang Bawang', '1997-08-08', 'L', 2017, 7520, 3, 17),
(454, '17752052', 'Anisa Dwi Yulianti', 'OKU', '1999-05-14', 'P', 2017, 7520, 3, 17),
(455, '17752053', 'Ayodya Kencana Putri', 'Mesuji', '1999-12-24', 'P', 2017, 7520, 3, 17),
(456, '17752054', 'Cindy Exsa Putri', 'Tulang Bawang', '1999-08-30', 'P', 2017, 7520, 3, 17),
(457, '17752055', 'Della Syntia', 'Punduh Pidada', '1999-11-16', 'P', 2017, 7520, 3, 17),
(458, '17752056', 'Dimas Febri Ardiansah', 'Lampung Tengah', '1999-02-03', 'L', 2017, 7520, 3, 17),
(459, '17752057', 'Dinda Kartina Chan', 'Lampung Barat', '1999-05-22', 'P', 2017, 7520, 3, 18),
(460, '17752058', 'Dynaika Prasetya', 'Lampung Utara', '1998-04-01', 'P', 2017, 7520, 1, 18),
(461, '17752059', 'Erika Oktaviani', 'Metro', '1999-09-05', 'P', 2017, 7520, 1, 18),
(462, '17752060', 'Febriani', 'Lampung Barat', '1999-01-08', 'P', 2017, 7520, 2, 18),
(463, '17752061', 'Habibatul Choiriah', 'Tulang Bawang', '1999-07-18', 'P', 2017, 7520, 2, 18),
(464, '17752062', 'Heti Sunarmi', 'Palembang', '1999-09-02', 'P', 2017, 7520, 2, 19),
(465, '17752063', 'Indah Nuruddina Azizan', 'Lampung Barat', '1999-06-07', 'P', 2017, 7520, 2, 19),
(466, '17752064', 'Irma Aprilia', 'Mesuji', '1999-12-06', 'P', 2017, 7520, 2, 19),
(467, '17752065', 'Keny Helwanda', 'Lampung Tengah', '1999-12-22', 'P', 2017, 7520, 3, 19),
(468, '17752066', 'Khusnul Khotimah', 'Way Kambas', '1999-01-02', 'P', 2017, 7520, 3, 19),
(469, '17752067', 'Mega Yesi Gushasanah', 'Way Kanan', '1999-05-12', 'P', 2017, 7520, 3, 20),
(470, '17752068', 'Mesi Oktavia', 'OKI', '1999-09-12', 'P', 2017, 7520, 3, 20),
(471, '17752069', 'Muhammad Naufal Arfani', 'Palembang', '1999-05-12', 'L', 2017, 7520, 1, 20),
(472, '17752070', 'Putri Ulandari', 'OKU', '1999-12-25', 'P', 2017, 7520, 1, 20),
(473, '17752071', 'Raafiuddin Al Ichlas', 'Tulang Bawang', '1999-05-17', 'L', 2017, 7520, 3, 20),
(474, '17752072', 'Rahmat Arif', 'Bandar Lampung', '1999-02-02', 'L', 2017, 7520, 3, 20),
(475, '17752073', 'Rendy', 'Bandar Lampung', '1999-11-01', 'L', 2017, 7520, 3, 21),
(476, '17752074', 'Ria Febriani', 'Lampung Timur', '1999-01-02', 'P', 2017, 7520, 3, 21),
(477, '17752075', 'Rindi Teja Rahayu', 'Lampung Timur', '1999-05-06', 'P', 2017, 7520, 3, 21),
(478, '17752076', 'Sanie Sabella', 'Lampung Tengah', '0000-00-00', 'P', 2017, 7520, 3, 22),
(479, '17752077', 'Serli Eka Dama Yanti', 'Mesuji', '0000-00-00', 'P', 2017, 7520, 3, 22),
(480, '17755001', 'Agung Rizkillah', 'Bandar Lampung', '2000-04-22', 'L', 2017, 7550, 2, 31),
(481, '17755002', 'Ahmad Ziyad Rizqullah', 'Natar', '2000-03-22', 'L', 2017, 7550, 2, 31),
(482, '17755003', 'Anisya Fitri Sofyanti', 'Tanggamus', '2000-03-22', 'P', 2017, 7550, 2, 31),
(483, '17755004', 'Arif Rahman', 'Kota Bumi', '2000-05-22', 'L', 2017, 7550, 2, 31),
(484, '17755005', 'Chantika Osfindra Permata', 'Liwa', '2000-07-22', 'P', 2017, 7550, 2, 31),
(485, '17755006', 'Destry Faradila Nur Avisa', 'Kalianda', '0000-00-00', 'P', 2017, 7550, 2, 31),
(486, '17755007', 'Eunike Pasaribu', 'Pringsewu', '1999-09-22', 'P', 2017, 7550, 2, 31),
(487, '17755008', 'Fadhila Septianingrum', 'Natar', '1999-06-22', 'P', 2017, 7550, 2, 31),
(488, '17755009', 'Hesty Yana Sari', 'Kota Bumi', '1999-01-22', 'P', 2017, 7550, 1, 32),
(489, '17755010', 'Klarista Widya', 'Natar', '1999-08-22', 'P', 2017, 7550, 1, 32),
(490, '17755011', 'Liani Pitaloka', 'Bandar Lampung', '1999-02-22', 'P', 2017, 7550, 1, 32),
(491, '17755012', 'Mega Amelia', 'Tanggamus', '1999-04-22', 'P', 2017, 7550, 1, 32),
(492, '17755013', 'Melania Octafiana', 'Liwa', '1999-05-22', 'P', 2017, 7550, 1, 32),
(493, '17755014', 'Muhammad Hadi Erya', 'Bandar Lampung', '1999-06-22', 'L', 2017, 7550, 1, 32),
(494, '17755015', 'Odah Setia Wati', 'Tanggamus', '1999-08-22', 'P', 2017, 7550, 1, 33),
(495, '17755016', 'Oky Afriyan', 'Kota Bumi', '1999-09-22', 'L', 2017, 7550, 3, 33),
(496, '17755017', 'Ridhonin Ulvah', 'Liwa', '1999-04-22', 'P', 2017, 7550, 3, 33),
(497, '17755018', 'Riris Choirunnisa', 'Natar', '1999-02-22', 'P', 2017, 7550, 3, 33),
(498, '17755019', 'Rizky Oktaviana', 'Bandar Lampung', '1999-01-22', 'P', 2017, 7550, 1, 34),
(499, '17755020', 'Rudi Andrean', 'Tanggamus', '1999-06-22', 'L', 2017, 7550, 3, 34),
(500, '17755021', 'Zya Pasha Melando', 'Kota Bumi', '1999-06-12', 'L', 2017, 7550, 4, 34),
(501, '17755022', 'Aprilia Susanti', 'Kalianda', '1999-05-26', 'P', 2017, 7550, 4, 34),
(502, '17755023', 'Bella Feronica Nur Hermawati', 'Bandar Lampung', '1999-02-12', 'P', 2017, 7550, 1, 34),
(503, '17755024', 'Diansyah Nandang Saputra', 'Bandar Lampung', '1999-03-22', 'L', 2017, 7550, 1, 34),
(504, '17755025', 'Ely Lusiani', 'Natar', '1999-06-27', 'P', 2017, 7550, 4, 35),
(505, '17755026', 'Issomatu Saada', 'Tanggamus', '1999-02-24', 'P', 2017, 7550, 4, 35),
(506, '17755027', 'Lud Fitri Astuti', 'Bandar Lampung', '1999-04-22', 'P', 2017, 7550, 4, 35),
(507, '17755028', 'M Fadel Alfayed Idham', 'Kalianda', '1999-07-24', 'L', 2017, 7550, 1, 35),
(508, '17755029', 'Mayliska Wulandari', 'Kota Bumi', '1999-08-24', 'P', 2017, 7550, 5, 35),
(509, '17755030', 'Muhamad Abdul Azis', 'Natar', '1999-02-25', 'L', 2017, 7550, 5, 35),
(510, '17755031', 'Muhammad Anggara Lubara', 'Bandar Lampung', '1999-03-22', 'L', 2017, 7550, 1, 36),
(511, '17755032', 'Muhammad Daniel Na', 'Kalianda', '1999-09-28', 'L', 2017, 7550, 5, 36),
(512, '17755033', 'Nurul Hanifah', 'Bandar Lampung', '1999-02-25', 'P', 2017, 7550, 5, 36),
(513, '17755034', 'Pingkan Meilintang', 'Bandar Lampung', '1999-01-02', 'P', 2017, 7550, 5, 36),
(514, '17755035', 'Putri Surgawi', 'Tanggamus', '1999-02-26', 'P', 2017, 7550, 5, 36),
(515, '17755036', 'Sekar Woro Wulandari', 'Tanggamus', '1999-03-25', 'P', 2017, 7550, 5, 36),
(516, '17755037', 'Sylvia Trinanda Amara Putri', 'Liwa', '1999-06-24', 'P', 2017, 7550, 5, 37),
(517, '17755038', 'Yudha Agus Pratama', 'Natar', '1999-09-23', 'L', 2017, 7550, 1, 37),
(518, '17755039', 'Yudhi Agus Pratama', 'Kalianda', '1999-03-12', 'L', 2017, 7550, 1, 37),
(519, '17751001', 'Almi Selvia', 'Lampung Timur', '1999-11-02', 'P', 2017, 7510, 1, 38),
(520, '17751002', 'Arum Tyas Sasami', 'Medan', '1999-07-19', 'P', 2017, 7510, 3, 38),
(521, '17751003', 'Ayu Meilita', 'Mesuji', '1999-11-02', 'P', 2017, 7510, 3, 38),
(522, '17751004', 'Ayu Okvita Maya Sari', 'Medan', '1999-10-10', 'P', 2017, 7510, 2, 38),
(523, '17751005', 'Ayu Winanta Br Ginting', 'Lampung Tengah', '1999-04-25', 'P', 2017, 7510, 4, 38),
(524, '17751006', 'Baskara Pandu P', 'Lampung Tengah', '1999-11-11', 'L', 2017, 7510, 4, 38),
(525, '17751007', 'Cindie Dwita Nilawati', 'Lampung Timur', '1999-08-28', 'P', 2017, 7510, 4, 39),
(526, '17751008', 'Dea Safitri', 'Bandar Lampung', '1999-04-26', 'P', 2017, 7510, 5, 39),
(527, '17751009', 'Desy Wulandari', 'Lampung Selatan', '1999-11-03', 'P', 2017, 7510, 2, 39),
(528, '17751010', 'Dewi Yuliana', 'Bandar Lampung', '1999-11-03', 'P', 2017, 7510, 2, 39),
(529, '17751011', 'Diana Septiantika', 'Lampung Tengah', '1999-06-23', 'P', 2017, 7510, 2, 39),
(530, '17751012', 'Diazs Fadila', 'Mesuji', '1999-03-31', 'P', 2017, 7510, 3, 40),
(531, '17751013', 'Dimas Aji Saputra', 'Lampung Selatan', '1999-08-28', 'L', 2017, 7510, 1, 40),
(532, '17751014', 'Dini Khairunisa', 'Mesuji', '1999-02-27', 'P', 2017, 7510, 1, 40),
(533, '17751015', 'Febriyandi', 'Lampung Tengah', '1999-03-31', 'L', 2017, 7510, 1, 40),
(534, '17751016', 'Feri Prayoga', 'Lampung Barat', '1999-03-21', 'L', 2017, 7510, 3, 40),
(535, '17751017', 'Fitria Emawati', 'Lampung Selatan', '1999-11-11', 'P', 2017, 7510, 1, 41),
(536, '17751018', 'Gede Andreana Putra', 'Lampung Tengah', '1999-10-15', 'L', 2017, 7510, 1, 41),
(537, '17751019', 'Iin Nuraeni', 'Bandar Lampung', '1999-08-08', 'P', 2017, 7510, 4, 41),
(538, '17751020', 'Istighosah', 'Mesuji', '1999-01-01', 'P', 2017, 7510, 4, 41),
(539, '17751021', 'Lia Eri Novita', 'Bandar Lampung', '1999-01-29', 'P', 2017, 7510, 4, 41),
(540, '17751022', 'Lilik Palupi', 'Lampung Selatan', '1999-06-23', 'P', 2017, 7510, 5, 42),
(541, '17751023', 'Lita Viviana Dewi', 'Lampung Tengah', '1999-02-05', 'P', 2017, 7510, 5, 42),
(542, '17751024', 'Liyana Zulva', 'Lampung Barat', '1999-03-21', 'P', 2017, 7510, 5, 42),
(543, '17751025', 'M. Imam Khairullah', 'Mesuji', '1999-10-15', 'L', 2017, 7510, 5, 42),
(544, '17751026', 'Maratus Shalihah', 'Bandar Lampung', '1999-10-10', 'P', 2017, 7510, 3, 42),
(545, '17751027', 'Maulana Magribi', 'Lampung Tengah', '1999-03-31', 'L', 2017, 7510, 3, 43),
(546, '17751028', 'Mei Maya Sari', 'Lampung Tengah', '1999-05-06', 'P', 2017, 7510, 4, 43),
(547, '17751029', 'Miftah Khoirunnisa', 'Mesuji', '1999-07-19', 'P', 2017, 7510, 4, 43),
(548, '17751030', 'Ni Kadek Mega J.A', 'Lampung Selatan', '1999-01-29', 'P', 2017, 7510, 5, 43),
(549, '17751031', 'Niko Herdiyawan', 'Lampung Barat', '1999-02-27', 'L', 2017, 7510, 1, 43),
(550, '17751032', 'Nova Heriyanti', 'Bandar Lampung', '1999-02-05', 'P', 2017, 7510, 3, 44),
(551, '17751033', 'Nova Juliani', 'Lampung Tengah', '1999-04-25', 'P', 2017, 7510, 2, 44),
(552, '17751034', 'Nurul Hidayah', 'Lampung Barat', '1999-08-08', 'P', 2017, 7510, 2, 44),
(553, '17751035', 'Puji Martha Theodora Sitompul', 'Mesuji', '1999-04-26', 'L', 2017, 7510, 4, 44),
(554, '17751036', 'Raditya Mahendra', 'Lampung Selatan', '1999-05-06', 'L', 2017, 7510, 1, 44),
(555, '17751037', 'Rafika Dila Putri', 'Bandar Lampung', '1998-01-02', 'P', 2017, 7510, 2, 45),
(556, '17751038', 'Ramanda Bagus Darma Put', 'Lampung Timur', '1999-03-01', 'P', 2017, 7510, 1, 45),
(557, '17751039', 'Rayi Aria Lestari', 'Lampung barat', '1997-12-04', 'P', 2017, 7510, 3, 45),
(558, '17751040', 'Ridho Zulfa Salis Sefri', 'Lampung tengah', '1998-05-02', 'L', 2017, 7510, 3, 45),
(559, '17751041', 'Rizki Nur Oktaviani', 'Lampung selatan', '1998-01-06', 'P', 2017, 7510, 1, 45),
(560, '17751042', 'Rizky Dwi Syahputra', 'tulang bawang', '1999-11-08', 'L', 2017, 7510, 3, 46),
(561, '17751043', 'Roni Putra Winansyah', 'palembang', '2000-01-02', 'L', 2017, 7510, 1, 46),
(562, '17751044', 'Rosihan Adha', 'mesuji', '2000-05-03', 'L', 2017, 7510, 2, 46),
(563, '17751045', 'Shania Puspita Sari', 'lampung timur', '1998-05-02', 'P', 2017, 7510, 2, 46),
(564, '17751046', 'Shintya Dewi', 'Bandar Lampung', '2000-04-03', 'P', 2017, 7510, 2, 46),
(565, '17751047', 'Sri Rohani', 'Bandar Lampung', '1999-09-02', 'P', 2017, 7510, 3, 47),
(566, '17751048', 'Sundari', 'Bandar Lampung', '2000-04-09', 'P', 2017, 7510, 3, 47),
(567, '17751049', 'Susi Purnamasari', 'lampung timur', '1998-06-02', 'P', 2017, 7510, 4, 47),
(568, '17751050', 'Titi Alfina Zauhara', 'tulang bawang', '2001-06-02', 'P', 2017, 7510, 4, 47),
(569, '17751051', 'Umi Tribuana', 'Bandar Lampung', '2000-07-02', 'P', 2017, 7510, 5, 47),
(570, '17751052', 'Vera Sabrina', 'mesuji', '2000-07-02', 'P', 2017, 7510, 4, 48),
(571, '17751053', 'Vonny Yulita Ariyani', 'tulang bawang', '1999-02-09', 'P', 2017, 7510, 4, 48),
(572, '17751054', 'Yulyana', 'Bandar Lampung', '1998-04-08', 'P', 2017, 7510, 3, 48),
(573, '17751055', 'Ahmad Dani Gustiawan', 'Bandar Lampung', '1997-02-02', 'L', 2017, 7510, 2, 48),
(574, '17751056', 'Citra Dwi Utami', 'Bandar Lampung', '1999-09-02', 'P', 2017, 7510, 2, 48),
(575, '17751057', 'Diah Ayu Angraini', 'batu raja', '1996-06-06', 'P', 2017, 7510, 3, 38),
(576, '17751058', 'Diki Hendrawan', 'natar', '1997-05-02', 'L', 2017, 7510, 3, 38),
(577, '17751059', 'Dimas Wahyu Mahesa', 'Bandar Lampung', '2000-04-02', 'L', 2017, 7510, 3, 40),
(578, '17751060', 'Echa Widia Arisma', 'Bandar Lampung', '2000-04-02', 'P', 2017, 7510, 2, 40),
(579, '17751061', 'Fransiska Vivi Ariyanti', 'lampung tengah', '2001-06-02', 'P', 2017, 7510, 4, 41),
(580, '17751062', 'Hesy Pratiwi', 'liwa', '1998-08-09', 'P', 2017, 7510, 3, 41),
(581, '17751063', 'Idzni Nur Shabrina', 'Bandar Lampung', '1998-05-08', 'P', 2017, 7510, 2, 42),
(582, '17751064', 'Irvan Rhomansyah', 'kota bumi', '1998-07-02', 'L', 2017, 7510, 1, 42),
(583, '17751065', 'Jefri Irmawan', 'tanggamus', '1998-09-06', 'L', 2017, 7510, 1, 43),
(584, '17751066', 'Muhammad Al Farisi', 'Bandar Lampung', '1998-04-06', 'L', 2017, 7510, 2, 43),
(585, '17751067', 'Oki Syaputra', 'Lampung selatan', '1998-03-08', 'L', 2017, 7510, 2, 44),
(586, '17751068', 'Punggala Iga Faresta', 'Bandar Lampung', '1999-05-06', 'L', 2017, 7510, 3, 44),
(587, '17751069', 'Riko Ahmad Gustafa', 'natar', '1998-04-07', 'L', 2017, 7510, 3, 45),
(588, '17751070', 'Siti Aisyatu Rahmawati', 'lampung tengah', '1999-05-02', 'P', 2017, 7510, 1, 45),
(589, '17751071', 'Unischa Adi Rudiyanto', 'lampung barat', '1999-04-02', 'L', 2017, 7510, 3, 46),
(590, '17751072', 'Zahra Adrian Merli', 'tulang bawang', '2000-06-02', 'P', 2017, 7510, 3, 46),
(591, '17751073', 'Bagus Hari Pribadi', 'Bandar Lampung', '1998-07-03', 'L', 2017, 7510, 3, 47),
(592, '17754001', 'Agung Prasetia Jaya', 'Lampung Timur', '1998-12-21', 'L', 2017, 7540, 1, 49),
(593, '17754002', 'Annisa Nur Fadhilah', 'Pringsewu', '1998-11-22', 'P', 2017, 7540, 1, 49),
(594, '17754003', 'Cahya Permata Sari', 'Lampung Timur', '1999-12-23', 'P', 2017, 7540, 1, 49),
(595, '17754004', 'Detri', 'Krui', '1999-11-24', 'P', 2017, 7540, 1, 49),
(596, '17754005', 'Dwi Maya Sari', 'Metro', '1999-11-25', 'P', 2017, 7540, 1, 50),
(597, '17754006', 'Elistiana', 'Palembang', '1998-11-26', 'P', 2017, 7540, 2, 50),
(598, '17754007', 'Fredi Ferdiantara', 'Krui', '1999-11-27', 'L', 2017, 7540, 2, 50),
(599, '17754008', 'Harmini', 'Metro', '1999-11-28', 'P', 2017, 7540, 2, 50),
(600, '17754009', 'Ida Muthoharoh', 'Lampung Timur', '1999-11-01', 'P', 2017, 7540, 2, 50),
(601, '17754010', 'Ivan Niftaful Fajar', 'Krui', '1998-11-02', 'P', 2017, 7540, 2, 51),
(602, '17754012', 'M Saifullah', 'Palembang', '1999-11-03', 'L', 2017, 7540, 3, 51),
(603, '17754013', 'Maya Zikri Lestari', 'Krui', '1998-11-04', 'P', 2017, 7540, 3, 51),
(604, '17754014', 'Ni Luh Puji Okta Wahyuni', 'Metro', '1999-11-05', 'P', 2017, 7540, 3, 51),
(605, '17754015', 'Novia Indah Putri', 'Palembang', '1998-11-06', 'P', 2017, 7540, 3, 51),
(606, '17754016', 'Rinjani Puspa Hartini', 'Metro', '1999-11-07', 'P', 2017, 7540, 3, 52),
(607, '17754017', 'Shelly Rivana Lira', 'Krui', '1998-11-08', 'P', 2017, 7540, 4, 52),
(608, '17754018', 'Siska Safitri', 'Metro', '1999-11-09', 'P', 2017, 7540, 4, 52),
(609, '17754019', 'Vivi Utami Dewi', 'Tanggamus', '1998-11-10', 'P', 2017, 7540, 4, 52),
(610, '17754020', 'Wira Yuda', 'Metro', '1999-11-11', 'L', 2017, 7540, 4, 53),
(611, '17754021', 'Wulantika', 'Metro', '1999-11-12', 'P', 2017, 7540, 4, 53),
(612, '17754022', 'Agie Tri Grahita', 'Lampung Timur', '1998-12-13', 'L', 2017, 7540, 5, 53),
(613, '17754023', 'Bossesar Kurniawan Ronaldo', 'Pringsewu', '1999-11-14', 'L', 2017, 7540, 5, 53),
(614, '17754024', 'Dian Novika Rini', 'Krui', '1998-11-15', 'P', 2017, 7540, 5, 54),
(615, '17754025', 'Elsa Asri Aryani', 'Tanggamus', '1998-11-16', 'P', 2017, 7540, 5, 54),
(616, '17754026', 'Ista Sodiana', 'Pringsewu', '1998-11-17', 'P', 2017, 7540, 5, 54),
(617, '17754027', 'Laura Virginia', 'Pringsewu', '1999-11-18', 'P', 2017, 7540, 1, 54),
(618, '17754028', 'Monica Fitricia', 'Lampung Timur', '1998-12-19', 'P', 2017, 7540, 1, 55),
(619, '17754029', 'Nadia Krisna Wuri', 'Tanggamus', '1998-11-20', 'P', 2017, 7540, 1, 55),
(620, '17754030', 'Nanda Adi Kusuma', 'Tanggamus', '1998-11-17', 'L', 2017, 7540, 2, 55),
(621, '17754031', 'Nurhanna Tambunan', 'Tanggamus', '1998-11-29', 'P', 2017, 7540, 2, 55),
(622, '17754032', 'Putri Hazzah Hazzilah', 'Metro', '1999-09-20', 'P', 2017, 7540, 2, 56),
(623, '17754033', 'Rudy Saputra', 'Metro', '1999-09-21', 'L', 2017, 7540, 4, 56),
(624, '17754034', 'Satria Yudha Pratama', 'Metro', '1999-09-22', 'L', 2017, 7540, 4, 56),
(625, '17754035', 'Siti Zuhriah', 'Tanggamus', '1999-09-23', 'P', 2017, 7540, 4, 56),
(626, '17754036', 'Sitie Lestary', 'Tanggamus', '1999-09-24', 'P', 2017, 7540, 3, 56);

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan` (
  `idpendidikan` int(11) NOT NULL,
  `nmpendidikan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`idpendidikan`, `nmpendidikan`) VALUES
(1, 'S1'),
(2, 'S2'),
(3, 'S3');

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `idprodi` int(11) NOT NULL,
  `namaprodi` varchar(50) NOT NULL,
  `idjenjang` int(11) NOT NULL,
  `akreditasi` enum('C','B','A','') NOT NULL,
  `tanggal_berdiri` date NOT NULL,
  `noskpendirian` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`idprodi`, `namaprodi`, `idjenjang`, `akreditasi`, `tanggal_berdiri`, `noskpendirian`, `email`) VALUES
(7510, 'Agribisnis', 1, 'B', '2006-12-06', '', 'agribisnis@polinela.ac.id'),
(7520, 'Akuntansi', 1, 'B', '2006-09-13', '', 'akuntansi@polinela.ac.id'),
(7530, 'Manajemen Informatika', 1, 'B', '2006-12-06', '415/SK/BAN-PT/Akred/Dpl-III/X/2014', 'mi@polinela.ac.id'),
(7540, 'Agribisnis Pangan', 2, 'C', '2006-12-06', '', 'agribisnispangan@polinela.ac.id'),
(7550, 'Akuntansi Perpajakan', 2, 'C', '2016-09-13', '341/KPT/I/2016', 'akuntansiperpajakan@polinela.ac.id');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`iddosen`),
  ADD KEY `idps` (`idps`),
  ADD KEY `idpendidikan` (`idpendidikan`);

--
-- Indexes for table `jalurmasuk`
--
ALTER TABLE `jalurmasuk`
  ADD PRIMARY KEY (`idjalurmasuk`);

--
-- Indexes for table `jenjang`
--
ALTER TABLE `jenjang`
  ADD PRIMARY KEY (`idjenjang`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`idmhs`),
  ADD KEY `idps` (`idps`),
  ADD KEY `idjalurmasuk` (`idjalurmasuk`),
  ADD KEY `iddosen` (`iddosen`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`idpendidikan`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`idprodi`),
  ADD KEY `idjenjang` (`idjenjang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `iddosen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `jalurmasuk`
--
ALTER TABLE `jalurmasuk`
  MODIFY `idjalurmasuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `jenjang`
--
ALTER TABLE `jenjang`
  MODIFY `idjenjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `idmhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=627;
--
-- AUTO_INCREMENT for table `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `idpendidikan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `idprodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7551;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `dosen_ibfk_1` FOREIGN KEY (`idps`) REFERENCES `prodi` (`idprodi`),
  ADD CONSTRAINT `dosen_ibfk_2` FOREIGN KEY (`idpendidikan`) REFERENCES `pendidikan` (`idpendidikan`);

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`idps`) REFERENCES `prodi` (`idprodi`),
  ADD CONSTRAINT `mahasiswa_ibfk_2` FOREIGN KEY (`idjalurmasuk`) REFERENCES `jalurmasuk` (`idjalurmasuk`),
  ADD CONSTRAINT `mahasiswa_ibfk_3` FOREIGN KEY (`iddosen`) REFERENCES `dosen` (`iddosen`);

--
-- Constraints for table `prodi`
--
ALTER TABLE `prodi`
  ADD CONSTRAINT `prodi_ibfk_1` FOREIGN KEY (`idjenjang`) REFERENCES `jenjang` (`idjenjang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;