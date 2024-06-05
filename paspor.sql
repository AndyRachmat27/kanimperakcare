-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.17-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for paspor
CREATE DATABASE IF NOT EXISTS `paspor` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `paspor`;

-- Dumping structure for table paspor.cek_proses
CREATE TABLE IF NOT EXISTS `cek_proses` (
  `permohonan_id` int(11) NOT NULL,
  `status_permohonan` varchar(255) DEFAULT NULL,
  `nama_cek` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`permohonan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table paspor.cek_proses: ~10 rows (approximately)
/*!40000 ALTER TABLE `cek_proses` DISABLE KEYS */;
REPLACE INTO `cek_proses` (`permohonan_id`, `status_permohonan`, `nama_cek`) VALUES
	(3000, 'PENCETAKAN', 'ANDY RACHMAT PRASETYO'),
	(3001, 'PENYERAHAN', 'MUHAMMAD ZAELANI'),
	(3002, 'SELESAI', 'AJI KURNIAWAN'),
	(3003, 'ALOKASI', 'BIMA SAKTI'),
	(3004, 'WAWANCARA', 'HERU MUJIANTORO'),
	(3005, 'PENDING', 'ARIF HIMAWAN'),
	(3006, 'UJI_KUALITAS', 'PANJI SATRIA'),
	(3007, 'PENYERAHAN', 'MIFTAHUL ILMIYAH'),
	(3008, 'SELESAI', 'NUR ISNAINI'),
	(3009, 'PENCETAKAN', 'ULIL ALBIANA');
/*!40000 ALTER TABLE `cek_proses` ENABLE KEYS */;

-- Dumping structure for table paspor.pemohon
CREATE TABLE IF NOT EXISTS `pemohon` (
  `pemohon_id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  PRIMARY KEY (`pemohon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table paspor.pemohon: ~9 rows (approximately)
/*!40000 ALTER TABLE `pemohon` DISABLE KEYS */;
REPLACE INTO `pemohon` (`pemohon_id`, `nama`, `tanggal_lahir`) VALUES
	(1, 'Andy Rachmat Prasetyo', '2000-05-27'),
	(2, 'Muhammad Zaelani', '2000-07-12'),
	(3, 'Aji Kurniawan', '2000-03-09'),
	(4, 'Bima Sakti', '1998-02-18'),
	(5, 'Heru Mujiantoro', '1996-09-20'),
	(6, 'Arif Himawan', '1997-08-23'),
	(7, 'Panji Satria', '2009-08-12'),
	(8, 'Miftahul Ilmiyah', '2002-06-08'),
	(9, 'Nur Isnaini', '2000-06-19'),
	(10, 'Ulil Albiana', '2000-07-27');
/*!40000 ALTER TABLE `pemohon` ENABLE KEYS */;

-- Dumping structure for table paspor.permohonan
CREATE TABLE IF NOT EXISTS `permohonan` (
  `permohonan_id` int(11) DEFAULT NULL,
  `pemohon_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table paspor.permohonan: ~9 rows (approximately)
/*!40000 ALTER TABLE `permohonan` DISABLE KEYS */;
REPLACE INTO `permohonan` (`permohonan_id`, `pemohon_id`) VALUES
	(3000, 1),
	(3001, 2),
	(3002, 3),
	(3003, 4),
	(3004, 5),
	(3005, 6),
	(3006, 7),
	(3007, 8),
	(3008, 9),
	(3009, 10);
/*!40000 ALTER TABLE `permohonan` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
