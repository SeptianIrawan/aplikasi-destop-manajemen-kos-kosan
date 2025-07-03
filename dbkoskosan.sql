-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for dbkoskosan
CREATE DATABASE IF NOT EXISTS `dbkoskosan` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbkoskosan`;

-- Dumping structure for table dbkoskosan.akun
CREATE TABLE IF NOT EXISTS `akun` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `level` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `foto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table dbkoskosan.akun: ~2 rows (approximately)
REPLACE INTO `akun` (`id`, `username`, `password`, `level`, `foto`) VALUES
	(1, 'ADMIN', '123456', 'ADMIN', 'C:\\Users\\oc\\OneDrive\\Pictures\\septian.jpg'),
	(4, 'OWNER', '123456', 'OWNER', 'C:\\Users\\oc\\OneDrive\\Pictures\\septian.jpg'),
	(5, 'KARYAWAN', '123456', 'KARYAWAN', 'C:\\java\\foto\\Ansel Maputri.jpg');

-- Dumping structure for table dbkoskosan.tbbulanan
CREATE TABLE IF NOT EXISTS `tbbulanan` (
  `idsewa` varchar(50) NOT NULL DEFAULT 'AUTO_INCREMENT',
  `nama_penyewa` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tanggalsewa` date NOT NULL,
  `nokamar` varchar(50) NOT NULL,
  `bulan` varchar(50) NOT NULL,
  `harga` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table dbkoskosan.tbbulanan: ~0 rows (approximately)
REPLACE INTO `tbbulanan` (`idsewa`, `nama_penyewa`, `tanggalsewa`, `nokamar`, `bulan`, `harga`, `created_at`) VALUES
	('KDS001', 'Septian Irawan', '2025-02-02', 'KDK004', 'Februari', 1700000.00, '2025-02-01 19:04:04'),
	('KDS002', 'rangga fahrezi', '2025-02-02', 'KDK002', 'Februari', 1800000.00, '2025-02-01 19:04:40'),
	('KDS001', 'Septian Irawan', '2025-02-02', 'KDK004', 'Maret', 1700000.00, '2025-02-01 19:05:03'),
	('KDS001', 'Septian Irawan', '2025-02-02', 'KDK004', 'April', 1700000.00, '2025-02-01 19:11:40'),
	('KDS003', 'adel kurniadi', '2024-12-22', 'KDK009', 'Desember', 1800000.00, '2024-12-21 19:24:04'),
	('KDS002', 'rangga fahrezi', '2025-02-02', 'KDK002', 'Maret', 1800000.00, '2025-02-02 05:49:09'),
	('KDS001', 'Septian Irawan', '2025-02-02', 'KDK004', 'Mei', 1700000.00, '2025-02-02 05:55:46'),
	('KDS001', 'Septian Irawan', '2025-02-02', 'KDK004', 'Juni', 1700000.00, '2025-02-02 05:59:28'),
	('KDS001', 'Septian Irawan', '2025-02-02', 'KDK004', 'Juli', 1700000.00, '2025-02-02 06:03:20'),
	('KDS001', 'Septian Irawan', '2025-02-02', 'KDK004', 'Agustus', 1700000.00, '2025-02-02 06:06:13'),
	('KDS001', 'Septian Irawan', '2025-02-02', 'KDK004', 'September', 1700000.00, '2025-02-02 06:08:27');

-- Dumping structure for table dbkoskosan.tbkamar
CREATE TABLE IF NOT EXISTS `tbkamar` (
  `nomor_kamar` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ukuran_kamar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `fasilitas_kamar` varchar(100) DEFAULT NULL,
  `harga_sewa` decimal(15,2) DEFAULT NULL,
  `lantai` varchar(50) DEFAULT NULL,
  `muat_kamar` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`nomor_kamar`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table dbkoskosan.tbkamar: ~18 rows (approximately)
REPLACE INTO `tbkamar` (`nomor_kamar`, `ukuran_kamar`, `fasilitas_kamar`, `harga_sewa`, `lantai`, `muat_kamar`, `status`) VALUES
	('KDK001', '3X3', 'KAMAR MANDI DALAM + WIFI', 1700000.00, '1', 'KASUR + LEMARI', 'TERSEDIA'),
	('KDK002', '3X3', 'KAMAR MANDI DALAM + WIFI', 1800000.00, '2', 'KASUR + LEMARI + MEJA BELAJAR', 'Milik rangga fahrezi'),
	('KDK003', '3X3', 'KAMAR MANDI DALAM + WIFI', 2000000.00, '3', 'KASUR + LEMARI + MEJA BELAJAR + WC DUDUK + SHOWER', 'TERSEDIA'),
	('KDK004', '3X3', 'KAMAR MANDI DALAM + WIFI', 1700000.00, '4', 'KASUR + LEMARI', 'Milik Septian Irawan'),
	('KDK005', '3X3', 'KAMAR MANDI DALAM + WIFI + AC', 1900000.00, '1', 'KASUR + LEMARI + MEJA BELAJAR', 'TERSEDIA'),
	('KDK006', '3X3', 'KAMAR MANDI DALAM + WIFI + AC', 2100000.00, '2', 'KASUR + LEMARI + MEJA BELAJAR + WC DUDUK + SHOWER', 'TERSEDIA'),
	('KDK007', '3X4', 'KAMAR MANDI LUAR + WIFI', 1700000.00, '3', 'KASUR + LEMARI', 'TERSEDIA'),
	('KDK008', '3X4', 'KAMAR MANDI LUAR + WIFI', 1800000.00, '4', 'KASUR + LEMARI + MEJA BELAJAR', 'TERSEDIA'),
	('KDK009', '3X4', 'KAMAR MANDI LUAR + WIFI', 1800000.00, '1', 'KASUR + LEMARI + MEJA BELAJAR + WC DUDUK + SHOWER', 'Milik adel kurniadi'),
	('KDK010', '3X4', 'KAMAR MANDI LUAR + WIFI + AC', 2000000.00, '2', 'KASUR + LEMARI', 'TERSEDIA'),
	('KDK011', '3X4', 'KAMAR MANDI LUAR + WIFI + AC', 2100000.00, '3', 'KASUR + LEMARI + MEJA BELAJAR', 'TERSEDIA'),
	('KDK012', '3X4', 'KAMAR MANDI LUAR + WIFI + AC', 2300000.00, '4', 'KASUR + LEMARI + MEJA BELAJAR + WC DUDUK + SHOWER', 'TERSEDIA'),
	('KDK013', '4X5', 'KAMAR MANDI DALAM + WIFI + AC + TV', 2700000.00, '1', 'KASUR + LEMARI', 'TERSEDIA'),
	('KDK014', '4X5', 'KAMAR MANDI DALAM + WIFI + AC + TV', 2800000.00, '2', 'KASUR + LEMARI + MEJA BELAJAR', 'TERSEDIA'),
	('KDK015', '4X5', 'KAMAR MANDI DALAM + WIFI + AC + TV', 3000000.00, '3', 'KASUR + LEMARI + MEJA BELAJAR + WC DUDUK + SHOWER', 'TERSEDIA'),
	('KDK016', '6X8', 'KAMAR MANDI LUAR + WIFI + AC + TV', 3000000.00, '4', 'KASUR + LEMARI', 'TERSEDIA'),
	('KDK017', '6X8', 'KAMAR MANDI LUAR + WIFI + AC + TV', 3100000.00, '1', 'KASUR + LEMARI + MEJA BELAJAR', 'TERSEDIA'),
	('KDK018', '6X8', 'KAMAR MANDI LUAR + WIFI + AC + TV', 3300000.00, '2', 'KASUR + LEMARI + MEJA BELAJAR + WC DUDUK + SHOWER', 'TERSEDIA');

-- Dumping structure for table dbkoskosan.tbpenyewa
CREATE TABLE IF NOT EXISTS `tbpenyewa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_penyewa` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nama_penyewa` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nomor_identitas` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pekerjaan` varchar(100) DEFAULT NULL,
  `alamat_asal` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nomor_telepon` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `foto` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table dbkoskosan.tbpenyewa: ~3 rows (approximately)
REPLACE INTO `tbpenyewa` (`id`, `id_penyewa`, `nama_penyewa`, `nomor_identitas`, `tanggal_lahir`, `jenis_kelamin`, `pekerjaan`, `alamat_asal`, `nomor_telepon`, `email`, `foto`) VALUES
	(1, 'KDP001', 'Septian Irawan', '1469645959', '2003-09-17', 'PRIA', 'mahasiswa', 'kampar', '085643452332', 'septianirawan95@gmail.com', _binary 0x433a5c55736572735c6f635c4f6e6544726976655c50696374757265735c7365707469616e2e6a7067),
	(16, 'KDP002', 'rangga fahrezi', '1455658458453843', '2000-12-04', 'PRIA', 'mahsiswa', 'kerinci', '089668343232', 'rangga23@gmail.com', _binary 0x433a5c6a6176615c666f746f5c416e73656c204d6170757472692e6a7067),
	(17, 'KDP003', 'adel kurniadi', '1456764443839392', '2002-12-19', 'PRIA', 'mahasiswa', 'kuntan singingi', '08594347343743', 'adelkur37@gmail.com', _binary 0x433a5c55736572735c6f635c4f6e6544726976655c50696374757265735c416e73656c2e706e67);

-- Dumping structure for table dbkoskosan.tbsewa
CREATE TABLE IF NOT EXISTS `tbsewa` (
  `id_sewa` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id_penyewa` varchar(50) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `nomor_kamar` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id_sewa`),
  KEY `id_penyewa` (`id_penyewa`,`nomor_kamar`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table dbkoskosan.tbsewa: ~4 rows (approximately)
REPLACE INTO `tbsewa` (`id_sewa`, `id_penyewa`, `tanggal`, `nomor_kamar`) VALUES
	('KDS001', 'KDP001', '2025-02-02', 'KDK004'),
	('KDS002', 'KDP002', '2025-02-02', 'KDK002'),
	('KDS003', 'KDP003', '2024-12-22', 'KDK009');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
