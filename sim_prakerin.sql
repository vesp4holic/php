-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2014 at 06:13 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sim_prakerin`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_user`, `username`, `password`, `status`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_gelombang`
--

CREATE TABLE IF NOT EXISTS `m_gelombang` (
  `id_gelombang` int(11) NOT NULL AUTO_INCREMENT,
  `gelombang` varchar(15) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_akhir` date NOT NULL,
  `status` int(1) NOT NULL COMMENT '1 = aktif, 0=tidak',
  PRIMARY KEY (`id_gelombang`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `m_gelombang`
--

INSERT INTO `m_gelombang` (`id_gelombang`, `gelombang`, `tanggal_mulai`, `tanggal_akhir`, `status`) VALUES
(1, 'Gelombang Satu', '2014-01-01', '2014-02-28', 1),
(2, 'Gelombang Dua', '2014-03-01', '2014-04-30', 0),
(3, 'Gelombang Tiga', '2014-05-01', '2014-06-30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `m_guru`
--

CREATE TABLE IF NOT EXISTS `m_guru` (
  `id_guru` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(30) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `kontak` varchar(40) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id_guru`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `m_guru`
--

INSERT INTO `m_guru` (`id_guru`, `nip`, `nama`, `kontak`, `status`) VALUES
(1, '000000001', 'UJANG IRAWAN', '085612345678', 1),
(2, '000000002', 'GINANJAR MAULANA', '085612345677', 1),
(3, '000000003', 'SAYYID NURKILLAH', '085612345666', 1),
(4, '000000004', 'JHONSON ASETTA', '085712345555', 1),
(5, '000000005', 'FEBRIANSYAH', '085612344444', 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_jurusan`
--

CREATE TABLE IF NOT EXISTS `m_jurusan` (
  `id_jurusan` int(11) NOT NULL AUTO_INCREMENT,
  `jurusan` varchar(30) NOT NULL,
  PRIMARY KEY (`id_jurusan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `m_jurusan`
--

INSERT INTO `m_jurusan` (`id_jurusan`, `jurusan`) VALUES
(1, 'ADMINISTRASI PERKANTORAN'),
(2, 'MULTIMEDIA'),
(3, 'TEKNIK KOMPUTER JARINGAN');

-- --------------------------------------------------------

--
-- Table structure for table `m_kelas`
--

CREATE TABLE IF NOT EXISTS `m_kelas` (
  `id_kelas` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(5) NOT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `m_kelas`
--

INSERT INTO `m_kelas` (`id_kelas`, `nama`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D'),
(5, 'E'),
(6, 'F'),
(7, 'G'),
(8, 'H'),
(9, 'I'),
(10, 'J');

-- --------------------------------------------------------

--
-- Table structure for table `m_siswa`
--

CREATE TABLE IF NOT EXISTS `m_siswa` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `nis` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `kontak` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=88 ;

--
-- Dumping data for table `m_siswa`
--

INSERT INTO `m_siswa` (`id_siswa`, `nis`, `nama`, `jenis_kelamin`, `alamat`, `kontak`, `foto`) VALUES
(30, '1009003889', '  ACHMAD HAKIM', 'LAKI-LAKI', 'TAMANSARI', '133332', ''),
(31, '1009003890', '  AMALIA RIZKA SETIANI', 'PEREMPUAN', 'CIOMAS', '133333', ''),
(32, '1009003891', '  ARFANI ABDULLAH', 'LAKI-LAKI', 'BARANANGSIANG', '133334', ''),
(33, '1009003892', '  BERLIANA CATUR YULIANDARI', 'PEREMPUAN', 'TAMANSARI', '133335', ''),
(34, '1009003893', '  DENISYA PUTRI AULIA', 'PEREMPUAN', 'CIOMAS', '133336', ''),
(35, '1009003894', '  DEVI YURIKA ANGGRAINI', 'PEREMPUAN', 'BARANANGSIANG', '133337', ''),
(36, '1009003895', '  DIKDIK IRAWAN', 'LAKI-LAKI', 'TAMANSARI', '133338', ''),
(37, '1009003896', '  DINDA RAMADHIANITA', 'PEREMPUAN', 'CIOMAS', '133339', ''),
(38, '1009003897', '  DWI ATIKA NOVA', 'PEREMPUAN', 'BARANANGSIANG', '133340', ''),
(39, '1009003898', '  ELGA LARASWATI', 'PEREMPUAN', 'TAMANSARI', '133341', ''),
(40, '1009003899', '  FATHIA SURI ANGGRAENI', 'PEREMPUAN', 'CIOMAS', '133342', ''),
(41, '1009003900', '  HEKSA TRI JULIANTARA', 'LAKI-LAKI', 'BARANANGSIANG', '133343', ''),
(42, '1009003901', '  HENDRI KURNIAWAN', 'LAKI-LAKI', 'TAMANSARI', '133344', ''),
(43, '1009003902', '  IKHSAN MULYA', 'LAKI-LAKI', 'CIOMAS', '133345', ''),
(44, '1009003903', '  INUNG ISMUWARDANA', 'LAKI-LAKI', 'BARANANGSIANG', '133346', ''),
(45, '1009003904', '  IRA MAULIDA AGUSTINI', 'PEREMPUAN', 'TAMANSARI', '133347', ''),
(46, '1009003905', '  IRRAISA LISSEPTIYANA', 'PEREMPUAN', 'CIOMAS', '133348', ''),
(47, '1009003906', '  LITA AMALIA', 'PEREMPUAN', 'BARANANGSIANG', '133349', ''),
(48, '1009003907', '  LAVIVA SHOLIHATI FIL JANNAH', 'PEREMPUAN', 'TAMANSARI', '133350', ''),
(49, '1009003908', '  MUHAMMAD FARIS FAWWAZ', 'LAKI-LAKI', 'CIOMAS', '133351', ''),
(50, '1009003909', '  MUHAMAD LUTHFIE LA ROEHA', 'LAKI-LAKI', 'BARANANGSIANG', '133352', ''),
(51, '1009003910', '  MUHAMMAD UWAYS MUSTAJAB', 'LAKI-LAKI', 'TAMANSARI', '133353', ''),
(52, '1009003911', '  RAGA GRANADA', 'LAKI-LAKI', 'CIOMAS', '133354', ''),
(53, '1009003912', '  REZA NURUL FAUZIAH', 'LAKI-LAKI', 'BARANANGSIANG', '133355', ''),
(54, '1009003913', '  REZHA WAHYU PRABOWO', 'LAKI-LAKI', 'TAMANSARI', '133356', ''),
(55, '1009003914', '  RIO CANDRA GUNAWAN', 'LAKI-LAKI', 'CIOMAS', '133357', ''),
(56, '1009003915', '  RIO PRASETYO', 'LAKI-LAKI', 'BARANANGSIANG', '133358', ''),
(57, '1009003916', '  RISKA AZIZAH', 'PEREMPUAN', 'TAMANSARI', '133359', ''),
(58, '1009003917', '  SEFTIA DWI MAYANG SARI', 'PEREMPUAN', 'BARANANGSIANG', '133360', ''),
(59, '1007002016', '  ABDUL HAKIM', 'LAKI-LAKI', 'TAMANSARI', '133332', ''),
(60, '1007002017', '  ADE MAULANA', 'LAKI-LAKI', 'CIOMAS', '133333', ''),
(61, '1007002018', '  ADE SUPRIATNA', 'LAKI-LAKI', 'BARANANGSIANG', '133334', ''),
(62, '1007002019', '  AHMAD JUNI NASUTION', 'LAKI-LAKI', 'TAMANSARI', '133335', ''),
(63, '1007002020', '  AKHMAD NUR RAHMAN', 'PEREMPUAN', 'CIOMAS', '133336', ''),
(64, '1007002021', '  AMATUL FIRDAUSYA', 'PEREMPUAN', 'BARANANGSIANG', '133337', ''),
(65, '1007002022', '  ANDRI SENTANU', 'LAKI-LAKI', 'TAMANSARI', '133338', ''),
(66, '1007002023', '  ANGGA RAHMANDA', 'LAKI-LAKI', 'CIOMAS', '133339', ''),
(67, '1007002024', '  ANGGI ORISANTI', 'PEREMPUAN', 'BARANANGSIANG', '133340', ''),
(68, '1007002025', '  ANGGIA HERDIANA', 'PEREMPUAN', 'TAMANSARI', '133341', ''),
(69, '1007002026', '  ARRUM YOANITA SARI', 'PEREMPUAN', 'CIOMAS', '133342', ''),
(70, '1007002027', '  BUDI PRASOJO', 'LAKI-LAKI', 'BARANANGSIANG', '133343', ''),
(71, '1007002028', '  DEDE DHARMAWANTA', 'LAKI-LAKI', 'TAMANSARI', '133344', ''),
(72, '1007002029', '  DENIS NUGRAHA PUTRA', 'LAKI-LAKI', 'CIOMAS', '133345', ''),
(73, '1007002030', '  DWI PURNAMASARI', 'PEREMPUAN', 'BARANANGSIANG', '133346', ''),
(74, '1007002031', '  EKA MARDIANINGSIH', 'PEREMPUAN', 'TAMANSARI', '133347', ''),
(75, '1007002032', '  ERIK ERLANGGA', 'LAKI-LAKI', 'CIOMAS', '133348', ''),
(76, '1007002033', '  ERWIN FAUZI', 'LAKI-LAKI', 'BARANANGSIANG', '133349', ''),
(77, '1007002034', '  FANI WIDIADARA ARISTI', 'PEREMPUAN', 'TAMANSARI', '133350', ''),
(78, '1007002035', '  FIRMAN PERMANA', 'LAKI-LAKI', 'CIOMAS', '133351', ''),
(79, '1007002036', '  FRANSANTI AMBARWATI', 'PEREMPUAN', 'BARANANGSIANG', '133352', ''),
(80, '1007002037', '  GILANG RAMADHAN', 'LAKI-LAKI', 'TAMANSARI', '133353', ''),
(81, '1007002038', '  HARUN AROSID', 'LAKI-LAKI', 'CIOMAS', '133354', ''),
(82, '1007002039', '  INTAN RAHMAWATI', 'PEREMPUAN', 'BARANANGSIANG', '133355', ''),
(83, '1007002040', '  MUHAMMAD GILANG ISKANDAR', 'LAKI-LAKI', 'TAMANSARI', '133356', ''),
(84, '1007002041', '  MARYAM', 'PEREMPUAN', 'CIOMAS', '133357', ''),
(85, '1007002042', '  NUNU NURHAYATI', 'PEREMPUAN', 'BARANANGSIANG', '133358', ''),
(86, '1007002043', '  NURHAKIMAH ANGGRAINI', 'PEREMPUAN', 'TAMANSARI', '133359', ''),
(87, '1007002044', '  NURUL DESTIARI', 'PEREMPUAN', 'BARANANGSIANG', '133360', '');

-- --------------------------------------------------------

--
-- Table structure for table `m_tahun`
--

CREATE TABLE IF NOT EXISTS `m_tahun` (
  `id_tahun` int(11) NOT NULL AUTO_INCREMENT,
  `dari` year(4) NOT NULL,
  `sampai` year(4) NOT NULL,
  `view_tahun` varchar(30) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_tahun`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `m_tahun`
--

INSERT INTO `m_tahun` (`id_tahun`, `dari`, `sampai`, `view_tahun`, `status`) VALUES
(1, 2013, 2014, '2013-2014', 1),
(2, 2014, 2015, '2014-2015', 0);

-- --------------------------------------------------------

--
-- Table structure for table `m_tempat`
--

CREATE TABLE IF NOT EXISTS `m_tempat` (
  `id_tempat` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `cp` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '0=nonaktif, 1=aktif, 2=penuh ',
  PRIMARY KEY (`id_tempat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `m_tempat`
--

INSERT INTO `m_tempat` (`id_tempat`, `nama`, `alamat`, `cp`, `status`) VALUES
(1, 'PERAMU', 'CIOMAS', '02134456', 1),
(2, 'TAZKIA', 'SENTUL', '0251222345', 1),
(3, 'DBS', 'BANDUNG', '022222345', 1),
(4, 'TAKMIN', 'JALAN BARU', '0251222344', 1),
(5, 'CV ADITYA', 'BARANANG SIANG', '0251222343', 1),
(6, 'OKE PRINT', 'PADJAJARAN', '0251222342', 1);

-- --------------------------------------------------------

--
-- Table structure for table `trx_kelas`
--

CREATE TABLE IF NOT EXISTS `trx_kelas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tahun` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `trx_kelas`
--

INSERT INTO `trx_kelas` (`id`, `id_tahun`, `id_jurusan`, `id_kelas`, `id_guru`) VALUES
(3, 1, 1, 1, 1),
(4, 1, 2, 2, 2),
(5, 1, 1, 3, 3),
(6, 1, 1, 4, 3),
(7, 1, 1, 5, 2),
(8, 1, 1, 6, 5),
(9, 1, 1, 7, 4),
(10, 1, 1, 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `trx_kelas_detail`
--

CREATE TABLE IF NOT EXISTS `trx_kelas_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_trx_kelas` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=88 ;

--
-- Dumping data for table `trx_kelas_detail`
--

INSERT INTO `trx_kelas_detail` (`id`, `id_trx_kelas`, `id_siswa`) VALUES
(30, 3, 30),
(31, 3, 31),
(32, 3, 32),
(33, 3, 33),
(34, 3, 34),
(35, 3, 35),
(36, 3, 36),
(37, 3, 37),
(38, 3, 38),
(39, 3, 39),
(40, 3, 40),
(41, 3, 41),
(42, 3, 42),
(43, 3, 43),
(44, 3, 44),
(45, 3, 45),
(46, 3, 46),
(47, 3, 47),
(48, 3, 48),
(49, 3, 49),
(50, 3, 50),
(51, 3, 51),
(52, 3, 52),
(53, 3, 53),
(54, 3, 54),
(55, 3, 55),
(56, 3, 56),
(57, 3, 57),
(58, 3, 58),
(59, 4, 59),
(60, 4, 60),
(61, 4, 61),
(62, 4, 62),
(63, 4, 63),
(64, 4, 64),
(65, 4, 65),
(66, 4, 66),
(67, 4, 67),
(68, 4, 68),
(69, 4, 69),
(70, 4, 70),
(71, 4, 71),
(72, 4, 72),
(73, 4, 73),
(74, 4, 74),
(75, 4, 75),
(76, 4, 76),
(77, 4, 77),
(78, 4, 78),
(79, 4, 79),
(80, 4, 80),
(81, 4, 81),
(82, 4, 82),
(83, 4, 83),
(84, 4, 84),
(85, 4, 85),
(86, 4, 86),
(87, 4, 87);

-- --------------------------------------------------------

--
-- Table structure for table `trx_prakerin`
--

CREATE TABLE IF NOT EXISTS `trx_prakerin` (
  `id_prak` int(11) NOT NULL AUTO_INCREMENT,
  `id_tahun` int(11) NOT NULL,
  `id_gelombang` int(11) NOT NULL,
  `id_tempat` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_akhir` date NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id_prak`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `trx_prakerin`
--

INSERT INTO `trx_prakerin` (`id_prak`, `id_tahun`, `id_gelombang`, `id_tempat`, `id_siswa`, `id_guru`, `tanggal_mulai`, `tanggal_akhir`, `status`) VALUES
(1, 1, 1, 1, 30, 1, '2014-01-24', '2014-02-28', 1),
(2, 1, 1, 2, 59, 1, '2014-01-03', '2014-01-31', 1),
(3, 1, 0, 0, 61, 1, '2013-12-05', '2014-01-24', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
