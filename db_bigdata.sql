-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2023 at 05:55 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bigdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pasien`
--

CREATE TABLE `tbl_pasien` (
  `id` bigint(20) DEFAULT NULL,
  `kode_provinsi` bigint(20) DEFAULT NULL,
  `nama_provinsi` text DEFAULT NULL,
  `bps_kode_kabupaten_kota` text DEFAULT NULL,
  `bps_nama_kabupaten_kota` text DEFAULT NULL,
  `nama_penyakit` text DEFAULT NULL,
  `jumlah_pasien` bigint(20) DEFAULT NULL,
  `satuan` text DEFAULT NULL,
  `tahun` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_pasien`
--

INSERT INTO `tbl_pasien` (`id`, `kode_provinsi`, `nama_provinsi`, `bps_kode_kabupaten_kota`, `bps_nama_kabupaten_kota`, `nama_penyakit`, `jumlah_pasien`, `satuan`, `tahun`) VALUES
(1, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'BBLR 1000-2499', 734, 'ORANG', 2016),
(2, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'KETUBAN PECAH DINI', 558, 'ORANG', 2016),
(3, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'ABORTUS INCOMPLETE', 381, 'ORANG', 2016),
(4, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'PERSALINAN DENGAN RIWAYAT BEKAS SC', 372, 'ORANG', 2016),
(5, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'PERSALINAN DENGAN LETAK SUNGSANG', 359, 'ORANG', 2016),
(6, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'HYPERBILIRUBIN', 354, 'ORANG', 2016),
(7, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'PRE EKLAMPSIA BERAT', 313, 'ORANG', 2016),
(8, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'PERSALINAN DENGAN GAWAT JANIN', 299, 'ORANG', 2016),
(9, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'MECONIUM STEAMING', 252, 'ORANG', 2016),
(10, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'PREMATUR KONTRAKSI', 218, 'ORANG', 2016),
(11, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'BBLR 1000-2499 GR', 550, 'ORANG', 2017),
(12, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'KETUBAN PECAH DINI', 361, 'ORANG', 2017),
(13, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'ICTERUS/NH', 337, 'ORANG', 2017),
(14, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'PERSALINAN DENGAN LETAK SUNGSANG', 265, 'ORANG', 2017),
(15, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'PREEKLAMSIA BERAT', 258, 'ORANG', 2017),
(16, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'PERSALINAN DENGAN RIWAYAT SC', 248, 'ORANG', 2017),
(17, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'ABORTUS INCOMPLETE', 242, 'ORANG', 2017),
(18, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'MECONIUM STEANING', 215, 'ORANG', 2017),
(19, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'BRONCOPNEUMONIA', 179, 'ORANG', 2017),
(20, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'ASFIKSIA RINGAN-SEDANG', 172, 'ORANG', 2017),
(21, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'ABORTUS INCOMPLETE', 898, 'ORANG', 2018),
(22, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'ANEMIA', 457, 'ORANG', 2018),
(23, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'BRONCHOPNEUMONIA', 319, 'ORANG', 2018),
(24, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'PREEKLAMSIA BERAT', 252, 'ORANG', 2018),
(25, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'KETUBAN PECAH DINI', 218, 'ORANG', 2018),
(26, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'HYPERTENSI GESTASIONAL', 197, 'ORANG', 2018),
(27, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'NEONATAL HYPERBILIRUBIN', 186, 'ORANG', 2018),
(28, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'PLASENTA PREVIA', 178, 'ORANG', 2018),
(29, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'HYPOGLIKEMIA', 176, 'ORANG', 2018),
(30, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'CAPUT', 170, 'ORANG', 2018),
(31, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'ABORTUS INCOMPLETE', 523, 'ORANG', 2019),
(32, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'ANEMIA (GRV)', 481, 'ORANG', 2019),
(33, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'CEPHALOPELVIC DISPROPORTION', 302, 'ORANG', 2019),
(34, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'DEMAM DENGUE', 296, 'ORANG', 2019),
(35, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'PREEKLAMSIA BERAT', 293, 'ORANG', 2019),
(36, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'ASFIKSIA BERAT', 181, 'ORANG', 2019),
(37, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'ASFIKSIA RINGAN - SEDANG', 171, 'ORANG', 2019),
(38, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'NEONATAL HYPERBILIRUBIN', 171, 'ORANG', 2019),
(39, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'RIWAYAT SC', 167, 'ORANG', 2019),
(40, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'PNEUMONIA', 158, 'ORANG', 2019),
(41, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'DENGUE HAEMORRHAGE FEVER', 779, 'ORANG', 2020),
(42, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'GAGAL DRIP', 585, 'ORANG', 2020),
(43, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'ANEMIA (GRV)', 523, 'ORANG', 2020),
(44, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'GASTROENTERITIS AKUT', 467, 'ORANG', 2020),
(45, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'HYPOGLIKEMIA', 460, 'ORANG', 2020),
(46, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'MECONIUM STEANING', 444, 'ORANG', 2020),
(47, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'NEONATAL HYPERBILIRUBIN', 404, 'ORANG', 2020),
(48, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'ASFIKSIA RINGAN - SEDANG', 370, 'ORANG', 2020),
(49, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'RESPIRATORY DISTREES', 347, 'ORANG', 2020),
(50, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'PREEKLAMSIA BERAT', 317, 'ORANG', 2020),
(51, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'BBLR 1000-2499', 879, 'ORANG', 2021),
(52, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'BACTERIAL INFECTION', 723, 'ORANG', 2021),
(53, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'RIWAYAT SC', 678, 'ORANG', 2021),
(54, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'RESPIRATORY DISTRESS', 484, 'ORANG', 2021),
(55, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'GASTROENTERITIS AKUT', 406, 'ORANG', 2021),
(56, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'ICTERUS NEONATORUM', 389, 'ORANG', 2021),
(57, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'ANEMIA (GRV)', 349, 'ORANG', 2021),
(58, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'PREEKLAMSIA BERAT', 293, 'ORANG', 2021),
(59, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'HYPERTENSI GESTASIONAL', 266, 'ORANG', 2021),
(60, 32, 'JAWA BARAT', '3273', 'KOTA BANDUNG', 'OLIGOHYDRAMNION', 253, 'ORANG', 2021);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;