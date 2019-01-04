-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2019 at 08:36 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gisibadah`
--

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `id_tempatibadah` int(11) NOT NULL,
  `gambar_galeri` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `id_tempatibadah`, `gambar_galeri`) VALUES
(5, 10, 'download.jpg'),
(6, 1, 'Mesjid Ar-rahman-min.jpg'),
(7, 1, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(8, 1, 'thumb-1920-528418.jpg'),
(9, 3, '258403.jpg'),
(10, 7, 'Backgrounds-gaming-full-hd-images.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tempat_ibadah`
--

CREATE TABLE `tempat_ibadah` (
  `no` int(11) NOT NULL,
  `nama_mesjid` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kelurahan` varchar(100) NOT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `x` double NOT NULL,
  `y` double NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tempat_ibadah`
--

INSERT INTO `tempat_ibadah` (`no`, `nama_mesjid`, `alamat`, `kelurahan`, `kecamatan`, `x`, `y`, `gambar`) VALUES
(1, 'Mesjid AR-RAHMAN', 'Jl. Bukit Rahayu', 'Tangkerang Timur', 'Tenayan Raya', 0.483368441, 101.5003935, 'Mesjid Ar-rahman-min.jpg'),
(2, 'Mesjid AL-MUTTAQIN', 'Jl. Sepakat', 'Tangkerang Timur', 'Tenayan Raya', 0.467130594, 101.5004527, 'Mesjid Ar-rahman-min.jpg'),
(3, 'Mesjid NURUL JAMAL', 'Jl. Singgalang VI / Jl. H. Andi Jamal', 'Tangkerang Timur', 'Tenayan Raya', 0.483483989, 101.5003374, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(4, 'Mesjid Ubudiyah', 'Jl. Singgalang no.40', 'Tangkerang Timur', 'Tenayan Raya', 0.316980903, 101.5001281, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(5, 'Mesjid Nurul Ihsan', 'Jl. Gunung Kidul', 'Tangkerang Timur', 'Tenayan Raya', 0.483565586, 101.4835648, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(6, 'Mushallah Al-Fatihah', 'Jl. Bukit Senyum', 'Tangkerang Timur', 'Tenayan Raya', 0.48351929, 101.4837851, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(7, 'Mesjid Raudhatul Shalihin', 'Jl. Bukit Barisan no.18', 'Tangkerang Timur', 'Tenayan Raya', 0.483716242, 101.4834155, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(8, 'Mesjid Babul Hasanah', 'Jl. H. Imam Munandar / Jl. Hasanah Indah RT. 01/ RW.08\r\n', 'Tangkerang Timur', 'Tenayan Raya', 0.483901813, 101.4673044, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(9, 'Mushallah Darussalam\r\n', 'Jl. H. Imam Munandar / Jl. Darussalam\r\n', 'Tangkerang Timur', 'Tenayan Raya', 0.666667631, 101.4671655, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(10, 'Mesjid TSAMARATUL IMAN', 'Jl. Pala\r\n', 'Tangkerang Labuai', 'Bukit Raya', 0.483983025, 101.4670604, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(11, 'Mesjid Paripurna An-Najah', 'Jl. Banda Aceh/ Sakuntala No. 51', 'Tangkerang Utara', 'Bukit Raya', 0.500140239, 101.466865, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(12, 'Mesjid Masyitah', 'Jl. Harapan Baru\r\n', 'Tangkerang Utara', 'Bukit Raya', 0.484005401, 101.4668418, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(13, 'Mesjid Al-Firdaus', 'Jl. Firdaus II no.1\r\n', 'Tangkerang Labuai', 'Bukit Raya', 0.483877315, 101.466761, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(14, 'Mesjid Al-Muhajirin ', 'Gang Kelapa No.16', 'Tangkerang Selatan', 'Bukit Raya', 0.483936343, 101.4506252, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(15, 'Mesjid Raudhatul Amilin', 'Jl. Bengkulu\r\n', 'Tangkerang Utara', 'Bukit Raya', 0.500013117, 101.4505336, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(16, 'Mesid Nurul Islam', 'Jl. Kakap\r\n', 'Tangkerang Selatan', 'Bukit Raya', 0.48388966, 101.4504992, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(17, 'Mesjid Jamiatunnajah', 'Jl. Bukit Barisan', 'Tangkerang Timur', 'Tenayan Raya', 0.483333333, 101.5001516, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(18, 'Mesjid Nurul Huda', 'Jl. Ronggowarsito No. 73 Gobah', 'Suka Maju', 'Sail', 0.500545525, 101.4505336, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(19, 'Mesjid Al-Ridwan', 'Jl. Ronggowarsito GG. AL Ridwan No. 41 B Gobah Pekanbaru', 'Suka Maju', 'Sail', 0.500567708, 101.4503821, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(20, 'Mesjid Muawwanah', 'Jl. Thamrin No. 06', 'Suka Maju', 'Sail', 0.516679012, 101.4503943, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(21, 'Mesjid Babussalam', 'Jl. Hang Lekir No. 32 Pekanbaru', 'Suka Mulia', 'Sail', 0.516899306, 101.450534, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(22, 'Mesjid Jami\'atuzzahidin', 'Jl. Hangtuah No. 130', 'Suka Mulia', 'Sail', 0.517014275, 101.4504531, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(23, 'Mesjid Nur Ilahi', 'Jl. Gunung Kelud\r\n', 'sekip', 'LimaPuluh', 0.517095872, 101.4506599, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(24, 'Mesjid Al Makmur', 'Jl. Kuantan V GG. Makmur Pekanbaru', 'Sekip', 'LimaPuluh', 0.517328125, 101.4505224, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(25, 'Mesjid Ubudiyah', 'Jl. Satria-Bambu Kuning Rejosari Pekanbaru', 'Rejosari', 'Tenayan Raya', 0.533356481, 101.4667606, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(26, 'Mesjid Al Mu\'a awanah', 'Jl. Bambu Kuning RW. XI Rejosari Kota Pekanbaru', 'Rejosari', 'Tenanyan Raya', 0.533334491, 101.4670156, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(27, 'Mushallah Baitur Rahman', 'Jl . Perkasa Gg. Peraksa V Rt.01/Rw.11 Bambu kuning Rejosari-Pekanbaru', 'Rejosari', 'Tenayan Raya', 0.533484954, 101.4669797, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(28, 'Mesjid Alhamdulillah', 'Jl. Bambu kuning', 'Rejosari', 'Tenayan Raya', 0.517199846, 101.4669566, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(29, 'Musallah Nur Taqwa', 'Jl. Bambu Kuning Rw. 10', 'Rejosari', 'Tenayan Raya', 0.517083912, 101.4668067, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(30, 'Mesjid Nurul Yaqin ', 'Jl. Hangtuah No. 22 Rejosari Pekanbaru', 'Rejosari', 'Tenayan Raya', 0.516992091, 101.4667253, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(31, 'Mesjid ASY-Syukri', 'Jl. Hangtuah Gg. Sabar Rejosari Pekanbaru', 'Rejosari', 'Tenayan Raya', 0.517050347, 101.4669226, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(32, 'Mushallah Nurul Ikhsan', 'Jl. Hangtuah Gg. Sentosa Rejosari Pekanbaru', 'Rejosari', 'Tenayan Raya', 0.516910687, 101.4670023, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(33, 'Mesjid Nurul Iman', 'Jl. Hangtuah No. 244', 'Rejosari', 'Tenayan Raya', 0.516957369, 101.4671655, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(34, 'Mesjid Nurul Falah', 'Jl. Hangtuah', 'Rejosari', 'Tenayan Raya', 0.516818866, 101.4833565, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(35, 'Mesjid Nurul Islam ', 'Jl. Segar No.02 Rw. 08', 'Rejosari', 'Tenayan Raya', 0.516667245, 101.483358, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(36, 'Mushallah Nurul Hasanah', 'Jl. Harmonis Rt.03/Rw.09 Rejosari', 'Rejosari', 'Tenayan Raya', 0.516736304, 101.4835201, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(37, 'Huria Kristen Batak Protestan (HKPB)', 'Jl. Segar II No.101', 'Rejosari', 'Tenayan Raya', 0.500486111, 101.4671649, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(38, 'Mesjid IQAMATUDDIN ', 'Jl. Dr. Sutomo / Kerinci No. 1 Pekanbaru', 'Suka Mulia', 'Sail', 0.51704919, 101.4502676, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(39, 'Mesjid AL - Mukhlishin', 'Jl. Dr. Sutomo No. 65', 'Suka Mulia', 'Sail', 0.516968364, 101.4502677, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(40, 'HKBP Resort Pekanbaru Distrik XXII Riau ', 'Jl. Hangtuah No. 36 Pekanbaru', 'Rejosari', 'Tenayan Raya', 0.517003858, 101.45, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(41, 'Mesjid Darul Amal', 'Jl. Hangtuah No. 2 Pekanbaru', 'Rejosari', 'Tenayan Raya', 0.517013889, 101.4339705, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(42, 'Mesjid Al-ISRAR (Surau Jariang)', 'Jl. Pangeran Hidayat Gg. Israr Kel. Kota Baru pekanbaru riau', 'Tanah Datar', 'Pekanbaru Kota', 0.517038002, 101.4338079, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(43, 'Mesjid Al-Jami\'', 'Jl. A. Yani Gang, Pelita', 'Kota Tinggi', 'Pekanbaru Kota', 0.516957176, 101.4336705, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(44, 'Mesjid Al-Ihsan', 'Jl. Teratai No. 100 Sukajadi', 'Kampung Tengah', 'Sukajadi', 0.517002508, 101.4336231, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(45, 'HKBP Sukajadi Resort Sukajadi Distrik XXII Riau ', 'Jl. Kh. A. Dahlan No. 80 Sukajadi Pekanbaru- Riau', 'Kampung Tengah', 'Sukajadi', 0.500626157, 101.4335083, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(46, 'Pura Agung Jagatnatha', 'Jl. Rawa Mulya No. 3 Sidomulyo timur Pekanbaru', 'Sidomulyo Timur', 'Marpoyan Damai', 0.466956597, 101.4339946, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(47, 'GPDI Imanuel', 'Jl. Rowosari , Rumbai Pekanbaru', 'Umban Sari', 'Rumbai', 0.56666686, 101.417027, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(48, 'Vihara Sasana Loka', 'Jl. Umban Sari, Rumbai Pekanbaru', 'Umban Sari', 'Rumbai', 0.566748457, 101.4169109, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(49, 'Mesjid Akramunnas UR', 'Jl. Patimura No.9 Gobah', 'Suka Maju', 'Sail', 0.500533565, 101.4502087, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(50, 'Mesjid Agung An-Nur', 'Jl. Hangtuah Ujung, Sumahilang, kota Pekanbaru ', 'Sumahilang', 'Pekanbaru kota', 0.517084491, 101.4500349, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(51, 'HKBP Rajawali', 'Jl. Rajawali Sakti, Simpang baru , Tampan pekanbaru ', 'Simpang Baru', 'Tampan', 0.467142554, 101.383912, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(52, 'Gereja Pentakosta indonesia (GPI)', 'Jl. Rajawali Sakti Ujung, Simpang baru, Tampan Pekanbaru', 'Simpang Baru', 'Tampan', 0.467233796, 101.3838787, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg'),
(53, 'HKI AGAVE', 'Jl. Simpang Baru, Tampan Pekanbaru', 'Simpang Baru', 'Tampan', 0.483485147, 101.3838906, 'TELPON_KUNO_17253___TELPON_ANTIK___TELEPHONE_JADUL___TELEPHO.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`),
  ADD KEY `fk_galeri_ibadah` (`id_tempatibadah`);

--
-- Indexes for table `tempat_ibadah`
--
ALTER TABLE `tempat_ibadah`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tempat_ibadah`
--
ALTER TABLE `tempat_ibadah`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `galeri`
--
ALTER TABLE `galeri`
  ADD CONSTRAINT `fk_galeri_ibadah` FOREIGN KEY (`id_tempatibadah`) REFERENCES `tempat_ibadah` (`no`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
