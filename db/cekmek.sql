-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2023 at 07:16 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cekmek`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2018-03-28 23:34:07');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `kode_booking` int(8) NOT NULL,
  `id_mobil` int(11) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `durasi` int(11) NOT NULL,
  `driver` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pickup` varchar(30) NOT NULL,
  `tgl_booking` date NOT NULL,
  `bukti_bayar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`kode_booking`, `id_mobil`, `tgl_mulai`, `tgl_selesai`, `durasi`, `driver`, `status`, `email`, `pickup`, `tgl_booking`, `bukti_bayar`) VALUES
(1, 14, '2023-06-01', '2023-06-02', 2, 0, 'Cancel', 'sat@gmail.com', 'Ambil Sendiri', '2023-05-30', '3005202323151889e4d5c8-f135-4d33-8eaa-081e8f09ab49.jpg'),
(2, 14, '2023-06-02', '2023-06-03', 2, 900000, 'Menunggu Pembayaran', 'sat@gmail.com', 'Pickup Sesuai Alamat', '2023-05-30', ''),
(3, 14, '2023-06-02', '2023-06-03', 2, 900000, 'Menunggu Pembayaran', 'sat@gmail.com', 'Pickup Sesuai Alamat', '2023-05-30', ''),
(4, 14, '2023-06-02', '2023-06-03', 2, 900000, 'Menunggu Pembayaran', 'sat@gmail.com', 'Pickup Sesuai Alamat', '2023-05-30', '');

-- --------------------------------------------------------

--
-- Table structure for table `cek_booking`
--

CREATE TABLE `cek_booking` (
  `kode_booking` varchar(8) NOT NULL,
  `id_mobil` int(11) NOT NULL,
  `tgl_booking` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cek_booking`
--

INSERT INTO `cek_booking` (`kode_booking`, `id_mobil`, `tgl_booking`, `status`) VALUES
('TRX00001', 8, '2019-05-26', 'Sudah Dibayar'),
('TRX00002', 9, '2019-05-26', 'Menunggu Pembayaran'),
('TRX00002', 9, '2019-05-27', 'Menunggu Pembayaran'),
('TRX00000', 11, '2022-09-08', 'Selesai'),
('TRX00000', 11, '2022-09-09', 'Selesai'),
('', 14, '2023-06-02', 'Menunggu Pembayaran'),
('', 14, '2023-06-03', 'Menunggu Pembayaran'),
('', 14, '2023-06-04', 'Menunggu Pembayaran'),
('', 14, '2023-06-02', 'Menunggu Pembayaran'),
('', 14, '2023-06-03', 'Menunggu Pembayaran'),
('', 14, '2023-06-04', 'Menunggu Pembayaran'),
('', 14, '2023-06-02', 'Menunggu Pembayaran'),
('', 14, '2023-06-03', 'Menunggu Pembayaran'),
('', 14, '2023-06-04', 'Menunggu Pembayaran');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id_cu` int(11) NOT NULL,
  `nama_visit` varchar(100) DEFAULT NULL,
  `email_visit` varchar(120) DEFAULT NULL,
  `telp_visit` char(16) DEFAULT NULL,
  `pesan` longtext DEFAULT NULL,
  `tgl_posting` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id_cu`, `nama_visit`, `email_visit`, `telp_visit`, `pesan`, `tgl_posting`, `status`) VALUES
(1, 'Anuj Kumar', 'webhostingamigo@gmail.com', '2147483647', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2017-06-18 10:03:07', 1),
(2, 'kjk', 'jlkl@gmail.com', '98989898', 'kjlkjkljklj', '2018-03-06 14:01:39', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contactusinfo`
--

CREATE TABLE `contactusinfo` (
  `id_info` int(11) NOT NULL,
  `alamat_kami` tinytext DEFAULT NULL,
  `email_kami` varchar(255) DEFAULT NULL,
  `telp_kami` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactusinfo`
--

INSERT INTO `contactusinfo` (`id_info`, `alamat_kami`, `email_kami`, `telp_kami`) VALUES
(1, 'Jaya Mobil Abadi\r\n\r\n\r\nJl.In aja dulu siapa tau nyaman No.666 Blok.H3H3. Bandung, Jawa Barat, Indonesia.\r\n', 'Rentalindong@gmail.com', '0898666999');

-- --------------------------------------------------------

--
-- Table structure for table `merek`
--

CREATE TABLE `merek` (
  `id_merek` int(11) NOT NULL,
  `nama_merek` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `merek`
--

INSERT INTO `merek` (`id_merek`, `nama_merek`, `CreationDate`, `UpdationDate`) VALUES
(14, 'Honda', '2019-06-07 18:05:23', NULL),
(16, 'Toyota', '2023-05-30 13:27:13', NULL),
(17, 'Suzuki', '2023-05-30 13:27:40', NULL),
(18, 'Daihatsu', '2023-05-30 15:00:09', NULL),
(19, 'Nissan', '2023-05-30 15:00:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int(11) NOT NULL,
  `nama_mobil` varchar(150) DEFAULT NULL,
  `id_merek` int(11) DEFAULT NULL,
  `nopol` varchar(20) NOT NULL,
  `deskripsi` longtext DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `bb` varchar(100) DEFAULT NULL,
  `tahun` int(6) DEFAULT NULL,
  `seating` int(11) DEFAULT NULL,
  `image1` varchar(120) DEFAULT NULL,
  `image2` varchar(120) DEFAULT NULL,
  `image3` varchar(120) DEFAULT NULL,
  `image4` varchar(120) DEFAULT NULL,
  `image5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `nama_mobil`, `id_merek`, `nopol`, `deskripsi`, `harga`, `bb`, `tahun`, `seating`, `image1`, `image2`, `image3`, `image4`, `image5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(13, 'Rush', 16, 'D3228VGS', 'SUV terbaru dari Toyota, Rush, hadir dengan 4 varian. Varian tertinggi hadir dengan mesin Petrol 1496 cc, yang mampu menghasilkan tenaga hingga 103 hp dan torsi puncak 136 Nm. Rush 1.5 S AT GR Sport berkapasitas 7-penupang dibekali juga dengan transmisi 4-Speed Otomatis. Sistem keamanannya dibekali Anti Theft Device & Power Door Locks.', 450000, 'Bensin', 2022, 6, 'rush.jpg', 'rush.jpg', 'rush.jpg', 'rush.jpg', 'rush.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-05-30 14:11:26', NULL),
(14, 'BrioAT', 14, 'D3229VGS', 'Hatchback terbaru dari Honda, Brio, hadir dengan 7 varian. Varian tertinggi hadir dengan mesin Petrol 1199 cc, yang mampu menghasilkan tenaga hingga 89 hp dan torsi puncak 110 Nm. Brio RS CVT Urbanite Edition berkapasitas 5-penupang dibekali juga dengan transmisi Variable Speed CVT. Sistem keamanannya dibekali Alarm Mobil & Anti Theft Device.', 375000, 'Bensin', 2020, 4, 'brio.jpg', 'brio.jpg', 'brio.jpg', 'brio.jpg', 'brio.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-05-30 14:14:02', NULL),
(15, 'CRV', 14, 'D888QQ', 'Honda CRV 2023 adalah 5 dan 7 Seater Crossover . Ini tersedia dalam 4 warna, 4 varian, 2 pilihan mesin, dan 1 opsi transmisi: CVT di Indonesia. Dimensi CRV adalah 4623 mm L x 1855 mm W x 1657 mm H. Lebih dari 67 pengguna telah memberikan penilaian untuk CRV berdasarkan fitur, jarak tempuh, kenyamanan tempat duduk dan kinerja mesin. Cicilan bulanan terendah dimulai dari Rp 60,9 Juta (selama 12 bulan). Pesaing terdekat Honda CRV adalah C3, HRV, Kijang Innova dan Pajero Sport.', 975000, 'Bensin', 2023, 6, 'crv.jpg', 'crv.jpg', 'crv.jpg', 'crv.jpg', 'crv.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-05-30 15:27:01', NULL),
(16, 'Avanza', 16, 'D4447VQ', ' Mobil ini memiliki ground clearance 205 mm dengan dimensi sebagai berikut: 4395 mm L x 1730 mm W x 1700 mm H. Lebih dari 329 pengguna telah memberikan penilaian untuk Avanza berdasarkan fitur, jarak tempuh, kenyamanan tempat duduk dan kinerja mesin.', 400000, 'Bensin', 2020, 7, 'avanza.jpg', 'avanza.jpg', 'avanza.jpg', 'avanza.jpg', 'avanza.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-05-30 15:31:59', NULL),
(17, 'Jimny', 17, 'D4449II', 'Mobil ini memiliki ground clearance 210 mm dengan dimensi sebagai berikut: 3625 mm L x 1645 mm W x 1720 mm H. Lebih dari 11 pengguna telah memberikan penilaian untuk Jimny berdasarkan fitur, jarak tempuh, kenyamanan tempat duduk dan kinerja mesin.', 950000, 'Bensin', 2022, 4, 'jimny.jpg', 'jimny.jpg', 'jimny.jpg', 'jimny.jpg', 'jimny.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-05-30 15:35:12', NULL),
(18, 'Civic', 14, 'D0009LL', 'Honda Civic di Indonesia terkenal sebagai mobil sedan 4 pintu atau hatchback 3 pintu, yang menawarkan performa, handling yang tajam dan kenyamanan khas Honda.', 800000, 'Bensin', 2022, 4, 'civic.jpg', 'civic.jpg', 'civic.jpg', 'civic.jpg', 'civic.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-05-30 15:38:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																						<h2><font size=\"3\"><span class=\"purple\">Syarat</span> Ketentuan Penyewaan Mobil</font></h2><div><h4>\r\n	<span data-scayt_word=\"Persyaratan\" data-scaytid=\"1\">Persyaratan</span> Rental Mobil <span data-scayt_word=\"untuk\" data-scaytid=\"2\">untuk</span> <span data-scayt_word=\"Perusahaan\" data-scaytid=\"3\">Perusahaan</span></h4>\r\n<ul><li>\r\n		<span data-scayt_word=\"Fotokopi\" data-scaytid=\"4\">Fotokopi</span> <span data-scayt_word=\"SIUP\" data-scaytid=\"7\">SIUP</span> <span data-scayt_word=\"dan\" data-scaytid=\"8\">dan</span> <span data-scayt_word=\"NPWP\" data-scaytid=\"9\">NPWP</span>.</li><li>\r\n		<span data-scayt_word=\"Fotokopi\" data-scaytid=\"5\">Fotokopi</span> <span data-scayt_word=\"akte\" data-scaytid=\"10\">akte</span> <span data-scayt_word=\"pendirian\" data-scaytid=\"11\">pendirian</span> <span data-scayt_word=\"perusahaan\" data-scaytid=\"12\">perusahaan</span>.</li><li>\r\n		<span data-scayt_word=\"Fotokopi\" data-scaytid=\"6\">Fotokopi</span> <span data-scayt_word=\"Tanda\" data-scaytid=\"14\">Tanda</span> <span data-scayt_word=\"Daftar\" data-scaytid=\"15\">Daftar</span> <span data-scayt_word=\"perusahaan\" data-scaytid=\"13\">perusahaan</span>.</li><li>\r\n		<span data-scayt_word=\"Surat\" data-scaytid=\"20\">Surat</span> <span data-scayt_word=\"keterangan\" data-scaytid=\"22\">keterangan</span> <span data-scayt_word=\"domisili\" data-scaytid=\"23\">domisili</span> <span data-scayt_word=\"perusahaan\" data-scaytid=\"16\">perusahaan</span>.</li><li>\r\n		<span data-scayt_word=\"Surat\" data-scaytid=\"21\">Surat</span> <span data-scayt_word=\"pengesahan\" data-scaytid=\"25\">pengesahan</span> <span data-scayt_word=\"keputusan\" data-scaytid=\"26\">keputusan</span> <span data-scayt_word=\"menteri\" data-scaytid=\"27\">menteri</span> <span data-scayt_word=\"Hukum\" data-scaytid=\"28\">Hukum</span> <span data-scayt_word=\"dan\" data-scaytid=\"17\">dan</span> Ham</li><li>\r\n		<span data-scayt_word=\"Fotokopi\" data-scaytid=\"19\">Fotokopi</span> <span data-scayt_word=\"KTP\" data-scaytid=\"32\">KTP</span> <span data-scayt_word=\"direksi\" data-scaytid=\"33\">direksi</span>, <span data-scayt_word=\"dan\" data-scaytid=\"18\">dan</span> <span data-scayt_word=\"pejabat\" data-scaytid=\"34\">pejabat</span> yang <span data-scayt_word=\"bertanggung\" data-scaytid=\"35\">bertanggung</span> <span data-scayt_word=\"jawab\" data-scaytid=\"36\">jawab</span> <span data-scayt_word=\"terhadap\" data-scaytid=\"37\">terhadap</span> unit <span data-scayt_word=\"kendaraan\" data-scaytid=\"38\">kendaraan</span>.</li><li>\r\n		<span data-scayt_word=\"Surat\" data-scaytid=\"39\">Surat</span> <span data-scayt_word=\"kuasa\" data-scaytid=\"58\">kuasa</span> <span data-scayt_word=\"bila\" data-scaytid=\"59\">bila</span> <span data-scayt_word=\"bukan\" data-scaytid=\"60\">bukan</span> <span data-scayt_word=\"direktur\" data-scaytid=\"61\">direktur</span> <span data-scayt_word=\"perusahaan\" data-scaytid=\"40\">perusahaan</span> yang <span data-scayt_word=\"bertanggung\" data-scaytid=\"42\">bertanggung</span> <span data-scayt_word=\"jawab\" data-scaytid=\"43\">jawab</span>.</li><li>\r\n		<span data-scayt_word=\"Fotokopi\" data-scaytid=\"44\">Fotokopi</span> <span data-scayt_word=\"SIM\" data-scaytid=\"67\">SIM</span> <span data-scayt_word=\"pengemudi\" data-scaytid=\"68\">pengemudi</span>.</li><li>\r\n		Survey <span data-scayt_word=\"lokasi\" data-scaytid=\"69\">lokasi</span> <span data-scayt_word=\"domisili\" data-scaytid=\"45\">domisili</span> <span data-scayt_word=\"perusahaan\" data-scaytid=\"41\">perusahaan</span>.</li></ul>\r\n<h4>\r\n	<span data-scayt_word=\"Persyaratan\" data-scaytid=\"53\">Persyaratan</span> Rental Mobil <span data-scayt_word=\"untuk\" data-scaytid=\"54\">untuk</span> <span data-scayt_word=\"Perorangan\" data-scaytid=\"85\">Perorangan</span></h4>\r\n<ul><li>\r\n		<span data-scayt_word=\"Fotokopi\" data-scaytid=\"55\">Fotokopi</span> <span data-scayt_word=\"bukti\" data-scaytid=\"88\">bukti</span> <span data-scayt_word=\"kepemilikan\" data-scaytid=\"89\">kepemilikan</span> <span data-scayt_word=\"rumah\" data-scaytid=\"90\">rumah</span> <span data-scayt_word=\"atau\" data-scaytid=\"91\">atau</span> <span data-scayt_word=\"tempat\" data-scaytid=\"92\">tempat</span> <span data-scayt_word=\"tinggal\" data-scaytid=\"93\">tinggal</span>.</li><li>\r\n		<span data-scayt_word=\"Fotokopi\" data-scaytid=\"56\">Fotokopi</span> <span data-scayt_word=\"PBB\" data-scaytid=\"94\">PBB</span>.</li><li>\r\n		<span data-scayt_word=\"Fotokopi\" data-scaytid=\"75\">Fotokopi</span> <span data-scayt_word=\"NPWP\" data-scaytid=\"79\">NPWP</span>.</li><li>\r\n		<span data-scayt_word=\"Fotokopi\" data-scaytid=\"76\">Fotokopi</span> <span data-scayt_word=\"KTP\" data-scaytid=\"80\">KTP</span> <span data-scayt_word=\"atau\" data-scaytid=\"101\">atau</span> <span data-scayt_word=\"KITAS\" data-scaytid=\"126\">KITAS</span> (<span data-scayt_word=\"pemohon\" data-scaytid=\"127\">pemohon</span> <span data-scayt_word=\"dan\" data-scaytid=\"81\">dan</span> <span data-scayt_word=\"penjamin\" data-scaytid=\"129\">penjamin</span>).</li><li>\r\n		<span data-scayt_word=\"Fotokopi\" data-scaytid=\"77\"><span data-scayt_word=\"Foto\" data-scaytid=\"436\">Foto</span>kopi</span> <span data-scayt_word=\"KK\" data-scaytid=\"130\">KK</span> (<span data-scayt_word=\"Kartu\" data-scaytid=\"131\">Kartu</span> <span data-scayt_word=\"Keluarga\" data-scaytid=\"132\">Keluarga</span>).</li><li>\r\n		<span data-scayt_word=\"Fotokopi\" data-scaytid=\"78\">Fotokopi</span> <span data-scayt_word=\"Pasport\" data-scaytid=\"133\">Pasport</span>.</li><li>\r\n		<span data-scayt_word=\"Foto\" data-scaytid=\"134\">Foto</span> <span data-scayt_word=\"kopi\" data-scaytid=\"135\">kopi</span> <span data-scayt_word=\"SIM\" data-scaytid=\"82\">SIM</span>.</li><li>\r\n		<span data-scayt_word=\"Foto\" data-scaytid=\"137\">Foto</span> <span data-scayt_word=\"kopi\" data-scaytid=\"138\">kopi</span> ID Card <span data-scayt_word=\"tempat\" data-scaytid=\"113\">tempat</span> <span data-scayt_word=\"bekerja\" data-scaytid=\"164\">bekerja</span>.</li><li>\r\n		<span data-scayt_word=\"Kartu\" data-scaytid=\"141\">Kartu</span> <span data-scayt_word=\"nama\" data-scaytid=\"166\">nama</span>.</li><li>\r\n		Tim surveyor <span data-scayt_word=\"kami\" data-scaytid=\"167\">kami</span> survey <span data-scayt_word=\"lokasi\" data-scaytid=\"115\">lokasi</span> <span data-scayt_word=\"alamat\" data-scaytid=\"169\">alamat</span> <span data-scayt_word=\"dan\" data-scaytid=\"116\">dan</span> <span data-scayt_word=\"tempat\" data-scaytid=\"114\">tempat</span> <span data-scayt_word=\"tinggal\" data-scaytid=\"117\">tinggal</span> <span data-scayt_word=\"penyewa\" data-scaytid=\"172\">penyewa</span>.</li><li>\r\n		<span data-scayt_word=\"Memiliki\" data-scaytid=\"173\">Memiliki</span> <span data-scayt_word=\"penjamin\" data-scaytid=\"145\">penjamin</span> (<span data-scayt_word=\"bila\" data-scaytid=\"118\">bila</span> <span data-scayt_word=\"diperlukan\" data-scaytid=\"176\">diperlukan</span>).</li><li>\r\n		<span data-scayt_word=\"ketersediaan\" data-scaytid=\"188\">ketersediaan</span> <span data-scayt_word=\"lahan\" data-scaytid=\"189\">lahan</span> <span data-scayt_word=\"parkir\" data-scaytid=\"190\">parkir</span> yang <span data-scayt_word=\"layak\" data-scaytid=\"191\">layak</span> <span data-scayt_word=\"dan\" data-scaytid=\"157\">dan</span> <span data-scayt_word=\"aman\" data-scaytid=\"193\">aman</span>.</li></ul>\r\n<div style=\"padding:15px; background:#efefef\">\r\n	<h4>\r\n		Note</h4>\r\n	<ul><li>\r\n			<span data-scayt_word=\"Prosedur\" data-scaytid=\"194\">Prosedur</span> survey <span data-scayt_word=\"kami\" data-scaytid=\"178\">kami</span> <span data-scayt_word=\"harus\" data-scaytid=\"196\">harus</span> <span data-scayt_word=\"dilakukan\" data-scaytid=\"197\">dilakukan</span> minimal 1 <span data-scayt_word=\"hari\" data-scaytid=\"198\">hari</span> <span data-scayt_word=\"sebelum\" data-scaytid=\"200\">sebelum</span> <span data-scayt_word=\"hari\" data-scaytid=\"199\">hari</span> H. (<span data-scayt_word=\"Perusahaan\" data-scaytid=\"158\">Perusahaan</span> <span data-scayt_word=\"memerlukan\" data-scaytid=\"202\">memerlukan</span> <span data-scayt_word=\"waktu\" data-scaytid=\"203\">waktu</span> <span data-scayt_word=\"untuk\" data-scaytid=\"159\">untuk</span> <span data-scayt_word=\"pengecekan\" data-scaytid=\"205\">pengecekan</span> <span data-scayt_word=\"legalitas\" data-scaytid=\"206\">legalitas</span>/<span data-scayt_word=\"keaslian\" data-scaytid=\"207\">keaslian</span> data customer).</li><li>\r\n			Customer <span data-scayt_word=\"wajib\" data-scaytid=\"208\">wajib</span> <span data-scayt_word=\"Membayar\" data-scaytid=\"209\">Membayar</span> <span data-scayt_word=\"uang\" data-scaytid=\"210\">uang</span> deposit <span data-scayt_word=\"sebagai\" data-scaytid=\"211\">sebagai</span> <span data-scayt_word=\"jaminan\" data-scaytid=\"212\">jaminan</span> <span data-scayt_word=\"asuransi\" data-scaytid=\"213\">asuransi</span> (<span data-scayt_word=\"dikembalikan\" data-scaytid=\"214\">dikembalikan</span> <span data-scayt_word=\"di\" data-scaytid=\"215\">di</span> <span data-scayt_word=\"masa\" data-scaytid=\"216\">masa</span> <span data-scayt_word=\"akhir\" data-scaytid=\"217\">akhir</span> <span data-scayt_word=\"sewa\" data-scaytid=\"218\">sewa</span>).</li><li>\r\n			<span data-scayt_word=\"Kendaraan\" data-scaytid=\"289\">Kendaraan</span> <span data-scayt_word=\"hanya\" data-scaytid=\"290\">hanya</span> <span data-scayt_word=\"dapat\" data-scaytid=\"291\">dapat</span> <span data-scayt_word=\"dikemudikan\" data-scaytid=\"292\">dikemudikan</span> <span data-scayt_word=\"oleh\" data-scaytid=\"293\">oleh</span> <span data-scayt_word=\"orang\" data-scaytid=\"294\">orang</span> yang <span data-scayt_word=\"memiliki\" data-scaytid=\"295\">memiliki</span> <span data-scayt_word=\"SIM\" data-scaytid=\"185\">SIM</span> <span data-scayt_word=\"nasional\" data-scaytid=\"298\">nasional</span> <span data-scayt_word=\"indonesia\" data-scaytid=\"299\">indonesia</span> <span data-scayt_word=\"atau\" data-scaytid=\"187\">atau</span> <span data-scayt_word=\"SIM\" data-scaytid=\"186\">SIM</span> <span data-scayt_word=\"internasional\" data-scaytid=\"301\">internasional</span>.</li><li>\r\n			<span data-scayt_word=\"Semua\" data-scaytid=\"302\">Semua</span> data yang <span data-scayt_word=\"di\" data-scaytid=\"253\">di</span> <span data-scayt_word=\"sertakan\" data-scaytid=\"305\">sertakan</span> <span data-scayt_word=\"berupa\" data-scaytid=\"306\">berupa</span> <span data-scayt_word=\"foto\" data-scaytid=\"307\">foto</span> <span data-scayt_word=\"kopi\" data-scaytid=\"255\">kopi</span>. <span data-scayt_word=\"Penyewa\" data-scaytid=\"309\">Penyewa</span> <span data-scayt_word=\"wajib\" data-scaytid=\"256\">wajib</span> <span data-scayt_word=\"menunjukan\" data-scaytid=\"311\">menunjukan</span> <span data-scayt_word=\"dokumen\" data-scaytid=\"312\">dokumen</span> <span data-scayt_word=\"asli\" data-scaytid=\"314\">asli</span> <span data-scayt_word=\"kepada\" data-scaytid=\"315\">kepada</span> surveyor <span data-scayt_word=\"ketika\" data-scaytid=\"316\">ketika</span> <span data-scayt_word=\"di\" data-scaytid=\"254\">di</span> survey. <span data-scayt_word=\"Guna\" data-scaytid=\"317\">Guna</span> <span data-scayt_word=\"mencocokan\" data-scaytid=\"318\">mencocokan</span> <span data-scayt_word=\"keaslian\" data-scaytid=\"257\">keaslian</span> <span data-scayt_word=\"dokumen\" data-scaytid=\"313\">dokumen</span> <span data-scayt_word=\"dengan\" data-scaytid=\"320\">dengan</span> <span data-scayt_word=\"fotokopi\" data-scaytid=\"321\">fotokopi</span> yang <span data-scayt_word=\"diberikan\" data-scaytid=\"322\">diberikan</span>.</li><li>\r\n			<span data-scayt_word=\"Dilarang\" data-scaytid=\"920\">Dilarang</span> <span data-scayt_word=\"meninggalkan\" data-scaytid=\"921\">meninggalkan</span> <span data-scayt_word=\"STNK\" data-scaytid=\"922\">STNK</span>, <span data-scayt_word=\"kunci\" data-scaytid=\"923\">kunci</span> <span data-scayt_word=\"kontak\" data-scaytid=\"924\">kontak</span> <span data-scayt_word=\"dan\" data-scaytid=\"512\">dan</span> <span data-scayt_word=\"karcis\" data-scaytid=\"926\">karcis</span> <span data-scayt_word=\"parkir\" data-scaytid=\"513\">parkir</span> <span data-scayt_word=\"di\" data-scaytid=\"503\">di</span> <span data-scayt_word=\"dalam\" data-scaytid=\"929\">dalam</span> <span data-scayt_word=\"kendaraan\" data-scaytid=\"515\">kendaraan</span> yang <span data-scayt_word=\"sedang\" data-scaytid=\"932\">sedang</span> <span data-scayt_word=\"di\" data-scaytid=\"504\">di</span> <span data-scayt_word=\"parkir\" data-scaytid=\"514\">parkir</span>.</li><li>\r\n			<span data-scayt_word=\"Penggantian\" data-scaytid=\"933\">Penggantian</span> <span data-scayt_word=\"kendaraan\" data-scaytid=\"516\">kendaraan</span> <span data-scayt_word=\"tidak\" data-scaytid=\"934\">tidak</span> <span data-scayt_word=\"berlaku\" data-scaytid=\"935\">berlaku</span> <span data-scayt_word=\"jika\" data-scaytid=\"936\">jika</span> <span data-scayt_word=\"kerusakan\" data-scaytid=\"937\">kerusakan</span>/<span data-scayt_word=\"kecelakaan\" data-scaytid=\"938\">kecelakaan</span> <span data-scayt_word=\"diakibatkan\" data-scaytid=\"939\">diakibatkan</span> <span data-scayt_word=\"kelalaian\" data-scaytid=\"940\">kelalaian</span> <span data-scayt_word=\"penyewa\" data-scaytid=\"517\">penyewa</span>.</li><li>\r\n			<span id=\"result_box\" lang=\"id\"><span class=\"hps\"><span data-scayt_word=\"Penyewa\" data-scaytid=\"518\">Penyewa</span></span> <span class=\"hps\"><span data-scayt_word=\"dan\" data-scaytid=\"537\">dan</span></span> <span class=\"hps\">driver <span data-scayt_word=\"tambahan\" data-scaytid=\"609\">tambahan</span></span> <span class=\"hps\"><span data-scayt_word=\"harus\" data-scaytid=\"538\">harus</span> <span data-scayt_word=\"memiliki\" data-scaytid=\"539\">memiliki</span> <span data-scayt_word=\"usia\" data-scaytid=\"612\">usia</span> <span data-scayt_word=\"antara\" data-scaytid=\"613\">antara</span></span> <span class=\"hps\">21</span> <span data-scayt_word=\"hingga\" data-scaytid=\"614\">hingga</span> <span class=\"hps\">65 <span data-scayt_word=\"tahun\" data-scaytid=\"615\">tahun</span></span> <span class=\"hps\"><span data-scayt_word=\"untuk\" data-scaytid=\"540\">untuk</span> normal</span> <span class=\"hps\"><span data-scayt_word=\"kendaraan\" data-scaytid=\"541\">kendaraan</span></span> <span class=\"hps\"><span data-scayt_word=\"kategori\" data-scaytid=\"618\">kategori</span></span> <span class=\"hps\"><span data-scayt_word=\"mobil\" data-scaytid=\"619\">mobil</span> <span data-scayt_word=\"standar\" data-scaytid=\"620\">standar</span></span> <span class=\"hps\"><span data-scayt_word=\"dan\" data-scaytid=\"565\">dan</span></span> <span class=\"hps\">berusia</span> <span class=\"hps\">25</span> <span data-scayt_word=\"hingga\" data-scaytid=\"622\">hingga</span><span class=\"hps\"> 65</span> <span class=\"hps\"><span data-scayt_word=\"tahun\" data-scaytid=\"623\">tahun</span></span> <span class=\"hps\"><span data-scayt_word=\"untuk\" data-scaytid=\"566\">untuk</span></span> <span class=\"hps\"><span data-scayt_word=\"kategori\" data-scaytid=\"626\">kategori</span></span> <span class=\"hps\"><span data-scayt_word=\"mobil\" data-scaytid=\"627\">mobil</span> mewah.</span> </span></li><li>\r\n			<span data-scayt_word=\"Penyewaan\" data-scaytid=\"568\">Penyewaan</span> <span data-scayt_word=\"tanpa\" data-scaytid=\"569\">tanpa</span> <span data-scayt_word=\"supir\" data-scaytid=\"570\">supir</span> <span data-scayt_word=\"diwajibkan\" data-scaytid=\"571\">diwajibkan</span> <span data-scayt_word=\"untuk\" data-scaytid=\"323\">untuk</span> <span data-scayt_word=\"memonitor\" data-scaytid=\"572\">memonitor</span> <span data-scayt_word=\"perawatan\" data-scaytid=\"573\">perawatan</span> <span data-scayt_word=\"kendaraan\" data-scaytid=\"324\">kendaraan</span>.</li><li>\r\n			<span data-scayt_word=\"Hasil\" data-scaytid=\"797\">Hasil</span> survey <span data-scayt_word=\"adalah\" data-scaytid=\"798\">adalah</span> <span data-scayt_word=\"murni\" data-scaytid=\"799\">murni</span> data <span data-scayt_word=\"independen\" data-scaytid=\"800\">independen</span> <span data-scayt_word=\"dari\" data-scaytid=\"801\">dari</span> <span data-scayt_word=\"perusahaan\" data-scaytid=\"779\">perusahaan</span> <span data-scayt_word=\"kami\" data-scaytid=\"781\">kami</span>, <span data-scayt_word=\"jika\" data-scaytid=\"782\">jika</span> <span data-scayt_word=\"terjadi\" data-scaytid=\"806\">terjadi</span> <span data-scayt_word=\"penolakan\" data-scaytid=\"807\">penolakan</span> <span data-scayt_word=\"hasil\" data-scaytid=\"808\">hasil</span> survey, <span data-scayt_word=\"maka\" data-scaytid=\"810\">maka</span> <span data-scayt_word=\"perusahaan\" data-scaytid=\"780\">perusahaan</span> <span data-scayt_word=\"tidak\" data-scaytid=\"783\">tidak</span> <span data-scayt_word=\"akan\" data-scaytid=\"812\">akan</span> <span data-scayt_word=\"memberikan\" data-scaytid=\"813\">memberikan</span> <span data-scayt_word=\"informasi\" data-scaytid=\"814\">informasi</span> <span data-scayt_word=\"apapun\" data-scaytid=\"815\">apapun</span> <span data-scayt_word=\"kepada\" data-scaytid=\"784\">kepada</span> customer <span data-scayt_word=\"mengenai\" data-scaytid=\"817\">mengenai</span> <span data-scayt_word=\"hasil\" data-scaytid=\"809\">hasil</span> <span data-scayt_word=\"analisa\" data-scaytid=\"818\">analisa</span> survey</li></ul>\r\n</div>\r\n<p>&nbsp;\r\n	<br></p></div><p align=\"justify\"><br></p>																						'),
(5, 'Rekening', 'rekening', ''),
(0, 'Driver', 'driver', '450000'),
(2, 'Privacy Policy', 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'Tentang Kami', 'aboutus', '<div>Kami merupakan perusahaan rental mobil yang berkomitmen untuk memberikan pelayanan terbaik kepada pelanggan kami. Dengan pengalaman yang luas di industri ini, kami telah menjadi salah satu pilihan utama bagi mereka yang membutuhkan kendaraan sewa yang handal dan berkualitas.</div><div><br></div><div>Tim kami terdiri dari staf yang terlatih dan berdedikasi, siap membantu Anda dalam memilih mobil yang sesuai dengan kebutuhan dan preferensi Anda. Kami menyadari bahwa setiap pelanggan memiliki kebutuhan yang berbeda, baik itu untuk perjalanan bisnis, liburan keluarga, atau acara khusus. Oleh karena itu, kami menawarkan berbagai pilihan mobil yang berkualitas dan dapat diandalkan, mulai dari kendaraan ekonomi hingga mobil mewah, yang dapat disesuaikan dengan kebutuhan dan anggaran Anda.</div><div><br></div><div>Keamanan dan kenyamanan adalah prioritas utama kami. Semua mobil kami dirawat secara berkala dan menjalani pemeriksaan kualitas yang ketat sebelum disewakan. Dengan demikian, Anda dapat memiliki kepercayaan penuh bahwa Anda akan mendapatkan mobil yang dalam kondisi prima dan siap untuk perjalanan Anda.</div><div><br></div><div>Selain itu, kami menyediakan layanan pelanggan yang ramah dan responsif. Tim kami siap memberikan informasi yang jelas dan membantu Anda dalam proses pemesanan, penjadwalan, dan pertanyaan lain yang Anda miliki. Kami berkomitmen untuk memberikan pengalaman menyenangkan dan tanpa hambatan bagi setiap pelanggan kami.</div><div><br></div><div>Kami juga menyadari pentingnya fleksibilitas dalam penyewaan mobil. Oleh karena itu, kami menawarkan berbagai opsi waktu penyewaan yang dapat disesuaikan dengan jangka waktu yang Anda butuhkan, baik itu sewa harian, mingguan, atau bulanan.</div><div><br></div><div>Kami bangga menjadi mitra perjalanan Anda dan berusaha untuk terus meningkatkan layanan kami. Tujuan kami adalah memberikan pengalaman penyewaan mobil yang tak terlupakan, aman, nyaman, dan terjangkau bagi setiap pelanggan.</div>'),
(11, 'FAQs', 'faqs', '																						<div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Q : Bagaimana cara menyewa mobil di&nbsp; Car Rental?</span></div><div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">A : Pertama anda harus mendaftar terlebih dahulu sebagai user melalui menu yang telah disediakan.</span></div>																						');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(120) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `telp` char(11) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `ktp` varchar(120) NOT NULL,
  `kk` varchar(120) NOT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama_user`, `email`, `password`, `telp`, `alamat`, `ktp`, `kk`, `RegDate`, `UpdationDate`) VALUES
(10, 'Sat', 'sat@gmail.com', 'f9919281fa05a00e74fdc4324b82a9f6', '08989898', 'Jl.jl', '30052023174242ktp.jpeg', '30052023174242kk.png', '2023-05-30 15:42:43', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`kode_booking`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id_cu`);

--
-- Indexes for table `contactusinfo`
--
ALTER TABLE `contactusinfo`
  ADD PRIMARY KEY (`id_info`);

--
-- Indexes for table `merek`
--
ALTER TABLE `merek`
  ADD PRIMARY KEY (`id_merek`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `kode_booking` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id_cu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contactusinfo`
--
ALTER TABLE `contactusinfo`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `merek`
--
ALTER TABLE `merek`
  MODIFY `id_merek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
