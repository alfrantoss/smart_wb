-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2025 at 04:52 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_smart_wb`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `nokartu` varchar(50) DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `masuk` varchar(50) DEFAULT NULL,
  `pulang` varchar(50) DEFAULT NULL,
  `ket` varchar(5) DEFAULT NULL,
  `bulan` varchar(50) DEFAULT NULL,
  `tahun` varchar(50) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `jenis` varchar(11) DEFAULT NULL,
  `foto` mediumtext DEFAULT NULL,
  `link` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `absensi_daring`
--

CREATE TABLE `absensi_daring` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `ket` varchar(11) DEFAULT NULL,
  `jam` varchar(50) DEFAULT NULL,
  `bulan` varchar(50) DEFAULT NULL,
  `tahun` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `absensi_les`
--

CREATE TABLE `absensi_les` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `nokartu` varchar(50) DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `masuk` varchar(50) DEFAULT NULL,
  `pulang` varchar(50) DEFAULT NULL,
  `ket` varchar(5) DEFAULT NULL,
  `bulan` varchar(50) DEFAULT NULL,
  `tahun` varchar(50) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `jenis` varchar(11) DEFAULT NULL,
  `foto` mediumtext DEFAULT NULL,
  `link` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `absensi_mapel`
--

CREATE TABLE `absensi_mapel` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `idsiswa` int(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `ket` varchar(5) DEFAULT NULL,
  `bulan` varchar(50) DEFAULT NULL,
  `tahun` varchar(50) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `absen_daringmapel`
--

CREATE TABLE `absen_daringmapel` (
  `id` int(11) NOT NULL,
  `idmateri` int(11) DEFAULT NULL,
  `mapel` varchar(50) DEFAULT NULL,
  `idsiswa` int(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `tanggal` date NOT NULL,
  `jam` varchar(50) DEFAULT NULL,
  `bulan` varchar(5) DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `guru` int(11) DEFAULT NULL,
  `tahun` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `absen_daringmapel`
--

INSERT INTO `absen_daringmapel` (`id`, `idmateri`, `mapel`, `idsiswa`, `kelas`, `tanggal`, `jam`, `bulan`, `ket`, `guru`, `tahun`) VALUES
(4, 3, 'BINDO', 2, 'X-1', '2025-05-15', '12:55:59', '05', 'H', 1, '2025'),
(5, 3, 'BINDO', 14, 'X-1', '2025-05-15', '15:48:58', '05', 'H', 1, '2025'),
(6, 3, 'BINDO', 23, 'X-1', '2025-05-16', '03:33:44', '05', 'H', 1, '2025'),
(7, 3, 'BINDO', 2, 'X-1', '2025-05-16', '17:23:11', '05', 'H', 1, '2025'),
(8, 3, 'BINDO', 25, 'X-1', '2025-05-16', '19:27:19', '05', 'H', 1, '2025'),
(9, 3, 'BINDO', 11, 'X-1', '2025-05-16', '20:36:36', '05', 'H', 1, '2025'),
(10, 3, 'BINDO', 5, 'X-1', '2025-05-19', '16:08:45', '05', 'H', 1, '2025'),
(11, 5, 'INFO', 101, 'XII-2', '2025-05-20', '09:47:16', '05', 'H', 7, '2025'),
(12, 3, 'BINDO', 18, 'X-2', '2025-05-20', '11:49:06', '05', 'H', 1, '2025'),
(13, 3, 'BINDO', 0, '', '2025-05-21', '07:31:31', '05', 'H', 1, '2025'),
(14, 3, 'BINDO', 19, 'X-2', '2025-05-21', '13:27:23', '05', 'H', 1, '2025'),
(15, 3, 'BINDO', 18, 'X-2', '2025-05-22', '07:21:14', '05', 'H', 1, '2025'),
(16, 3, 'BINDO', 18, 'X-2', '2025-05-23', '18:43:19', '05', 'H', 1, '2025'),
(17, 6, 'MTK', 2, 'X-2', '2025-05-26', '09:17:27', '05', 'H', 1, '2025'),
(18, 4, 'INFO', 102, 'X-2', '2025-05-26', '16:00:16', '05', 'H', 2, '2025'),
(19, 3, 'BINDO', 2, 'X-2', '2025-05-27', '11:27:09', '05', 'H', 1, '2025'),
(20, 6, 'MTK', 2, 'X-2', '2025-05-28', '08:46:30', '05', 'H', 1, '2025'),
(21, 4, 'INFO', 2, 'X-2', '2025-05-28', '08:53:13', '05', 'H', 2, '2025'),
(22, 6, 'MTK', 6, 'X-2', '2025-05-29', '19:47:31', '05', 'H', 1, '2025'),
(23, 6, 'MTK', 23, 'X-2', '2025-05-30', '13:10:11', '05', 'H', 1, '2025'),
(24, 6, 'MTK', 20, 'X-2', '2025-05-30', '13:31:51', '05', 'H', 1, '2025'),
(25, 6, 'MTK', 27, 'X-2', '2025-05-31', '05:31:28', '05', 'H', 1, '2025');

-- --------------------------------------------------------

--
-- Table structure for table `absen_gps`
--

CREATE TABLE `absen_gps` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `ket` varchar(11) DEFAULT NULL,
  `jenis` varchar(50) DEFAULT NULL,
  `masuk` varchar(50) DEFAULT NULL,
  `lokasi` text DEFAULT NULL,
  `bulan` varchar(11) DEFAULT NULL,
  `tahun` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `absen_jjm`
--

CREATE TABLE `absen_jjm` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `masuk` varchar(50) DEFAULT NULL,
  `ket` varchar(11) DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `jjm` varchar(11) DEFAULT NULL,
  `bulan` varchar(50) DEFAULT NULL,
  `tahun` varchar(50) DEFAULT NULL,
  `jadwal` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `absen_mapel`
--

CREATE TABLE `absen_mapel` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `ket` varchar(11) DEFAULT NULL,
  `jam` varchar(50) DEFAULT NULL,
  `bulan` varchar(50) DEFAULT NULL,
  `tahun` varchar(50) DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `absen_pesan`
--

CREATE TABLE `absen_pesan` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `absen_tu`
--

CREATE TABLE `absen_tu` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `masuk` varchar(50) DEFAULT NULL,
  `pulang` varchar(50) DEFAULT NULL,
  `ket` varchar(11) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `bulan` varchar(50) DEFAULT NULL,
  `tahun` varchar(50) DEFAULT NULL,
  `honor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `hari` varchar(50) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `mapel` varchar(50) DEFAULT NULL,
  `materi` longtext DEFAULT NULL,
  `tujuan` longtext DEFAULT NULL,
  `bulan` varchar(2) DEFAULT NULL,
  `tahun` varchar(11) DEFAULT NULL,
  `hadir` varchar(50) DEFAULT NULL,
  `hambatan` text DEFAULT NULL,
  `pemecahan` text DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id`, `hari`, `tanggal`, `kelas`, `mapel`, `materi`, `tujuan`, `bulan`, `tahun`, `hadir`, `hambatan`, `pemecahan`, `guru`) VALUES
(1, 'Mon', '2025-06-16', 'X-A', '3', 'Teks Anekdot', 'Mengidentifikasi Pengertian Teks Anekdot', '06', '2025', '0', NULL, NULL, '3'),
(2, 'Mon', '2025-06-16', 'X-A', '4', 'Bilangan Bulat', 'Peserta Didik Mengidentifikasi Bilangan Bulat', '06', '2025', '0', 'Tidak Ada', 'Bagus', '10');

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(50) DEFAULT NULL,
  `nisn` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `jk` varchar(50) DEFAULT NULL,
  `nowa` varchar(20) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `tgl_mutasi` date DEFAULT NULL,
  `tahun_keluar` varchar(11) DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `arsip`
--

CREATE TABLE `arsip` (
  `id` int(11) NOT NULL,
  `idlemari` varchar(11) DEFAULT NULL,
  `nama_arsip` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `file` text DEFAULT NULL,
  `nomor` varchar(50) DEFAULT NULL,
  `inputer` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `arsip`
--

INSERT INTO `arsip` (`id`, `idlemari`, `nama_arsip`, `tanggal`, `file`, `nomor`, `inputer`) VALUES
(1, '2', 'SS', '2025-03-04', 'Screen Shot 2025-02-26 at 08.21.50.png', '0001 / III / 2025', '2'),
(2, '2', 'tes', '2025-03-04', 'Screenshot 2025-01-23 at 11.15.11.png', '0002 / III / 2025', '7'),
(3, '2', 'data sakit', '2025-05-20', 'anggur.png', '0001 / V / 2025', '5'),
(4, '2', 'Buku Presensi', '2025-05-26', 'duarr.jpg', '0001 / V / 2025', '2'),
(5, '2', 'KArtu UJian', '2025-06-04', 'Kartu_UMPTKIN_Dalilatul Amalia.pdf', '0001 / VI / 2025', '6');

-- --------------------------------------------------------

--
-- Table structure for table `aset`
--

CREATE TABLE `aset` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `jumlah` varchar(11) DEFAULT NULL,
  `toko` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `dana` varchar(50) DEFAULT NULL,
  `harga` varchar(50) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `bulan` varchar(11) DEFAULT NULL,
  `tahun` varchar(50) DEFAULT NULL,
  `baik` varchar(11) DEFAULT '0',
  `ringan` varchar(11) DEFAULT '0',
  `berat` varchar(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aset`
--

INSERT INTO `aset` (`id`, `tanggal`, `nama_barang`, `jumlah`, `toko`, `alamat`, `dana`, `harga`, `total`, `bulan`, `tahun`, `baik`, `ringan`, `berat`) VALUES
(1, '2025-08-21', 'bangku', '1', 'aaa', 'Jln. Merdeka Barat No. 02', 'BOS', '10000', '10000', '08', '2025', '1', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `atp`
--

CREATE TABLE `atp` (
  `id_atp` int(11) NOT NULL,
  `idcp` varchar(11) DEFAULT NULL,
  `idel` varchar(11) DEFAULT NULL,
  `waktu` varchar(11) DEFAULT NULL,
  `p5` text DEFAULT NULL,
  `ke` varchar(11) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atp`
--

INSERT INTO `atp` (`id_atp`, `idcp`, `idel`, `waktu`, `p5`, `ke`, `guru`) VALUES
(1, '1', '1', '4', 'Beriman, bertakwa kepada Tuhan Yang Maha Esa, dan berakhlak mulia', '1', '3'),
(2, '1', '2', '3', 'Berkebinekaan global', '2', '3'),
(3, '2', '3', '4', 'Bergotong royong', '1', '2');

-- --------------------------------------------------------

--
-- Table structure for table `banksoal`
--

CREATE TABLE `banksoal` (
  `id_bank` int(11) NOT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `idguru` varchar(11) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `pk` mediumtext DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `soal_agama` varchar(50) DEFAULT NULL,
  `model` int(11) DEFAULT 1,
  `groupsoal` varchar(50) DEFAULT 'AKM',
  `paket` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banksoal`
--

INSERT INTO `banksoal` (`id_bank`, `kode`, `idguru`, `nama`, `level`, `pk`, `status`, `soal_agama`, `model`, `groupsoal`, `paket`) VALUES
(1, 'BINDO-A', '3', 'BINDO', '10', 'UMUM', '1', '', 1, 'AKM', 'A'),
(2, 'MTK-A', '2', 'MTK', '10', 'UMUM', '1', '', 1, 'AKM', 'B'),
(3, 'IPA-B1', '10', 'IPA', '10', 'UMUM', '1', '', 1, 'AKM', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `bell`
--

CREATE TABLE `bell` (
  `id` int(11) NOT NULL,
  `hari` varchar(50) DEFAULT NULL,
  `nada` varchar(11) DEFAULT NULL,
  `jam` varchar(50) DEFAULT NULL,
  `ket` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bell`
--

INSERT INTO `bell` (`id`, `hari`, `nada`, `jam`, `ket`) VALUES
(1, 'Mon', '5', '07:00:49', 'PERSIAPAN UACARA'),
(2, 'Sat', '1', '15:24:00', 'tes'),
(3, 'Mon', '2', '08:30:00', 'Jam Ke 2'),
(4, 'Tue', '13', '21:44:00', 'ok'),
(5, 'Mon', '3', '07:00:00', 'tes'),
(6, 'Thu', '1', '11:25:00', 'l');

-- --------------------------------------------------------

--
-- Table structure for table `bell_nada`
--

CREATE TABLE `bell_nada` (
  `idb` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bell_nada`
--

INSERT INTO `bell_nada` (`idb`, `nama`) VALUES
(1, 'JAM PERTAMA'),
(2, 'JAM KEDUA'),
(3, 'JAM KETIGA'),
(4, 'JAM KEEMPAT'),
(5, 'JAM KELIMA'),
(6, 'JAM KEENAM'),
(7, 'JAM KETUJUH'),
(8, 'JAM KEDELAPAN'),
(9, 'JAM KESEMBILAN'),
(10, 'JAM KESEPULUH'),
(11, 'JAM KESEBELAS'),
(12, 'JAM KEDUABELAS'),
(13, 'MAPEL HARI INI SELESAI'),
(14, 'MAPEL AKHIR PEKAN SELESAI'),
(15, 'ISTIRAHAT PERTAMA'),
(16, 'WAKTU ISTIRAHAT PERTAMA SELESAI'),
(17, 'ISTIRAHAT KEDUA'),
(18, 'WAKTU ISTIRAHAT KEDUA SELESAI'),
(19, 'WAKTU IBADAH SHOLAT'),
(20, 'UPACARA BENDERA 5 MENIT LAGI'),
(21, 'UPACARA BENDERA DIMUALAI'),
(22, 'WAKTU IBADAH SHOLAT JUMAT'),
(23, 'SELURUH PESERTA & PENGAWAS UJIAN MEMASUKI RUANGAN'),
(24, 'PESERTA UJIAN DIPERSILAHKAN MENGERJAKAN UJIAN'),
(25, 'WAKTU UJIAN 5 MENIT LAGI'),
(26, 'WAKTU UJIAN TELAH HABIS');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_bank` int(11) NOT NULL,
  `sesi` varchar(10) NOT NULL,
  `ruang` varchar(20) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `ikut` varchar(10) DEFAULT NULL,
  `susulan` varchar(10) DEFAULT NULL,
  `no_susulan` mediumtext DEFAULT NULL,
  `mulai` varchar(10) DEFAULT NULL,
  `selesai` varchar(10) DEFAULT NULL,
  `nama_proktor` varchar(50) DEFAULT NULL,
  `nip_proktor` varchar(50) DEFAULT NULL,
  `nama_pengawas` varchar(50) DEFAULT NULL,
  `nip_pengawas` varchar(50) DEFAULT NULL,
  `catatan` mediumtext DEFAULT NULL,
  `tgl_ujian` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_bank`, `sesi`, `ruang`, `jenis`, `ikut`, `susulan`, `no_susulan`, `mulai`, `selesai`, `nama_proktor`, `nip_proktor`, `nama_pengawas`, `nip_pengawas`, `catatan`, `tgl_ujian`) VALUES
(1, 1, '1', 'X-A', 'PAT', '67', '32', 'a:2:{i:0;s:10:\"US-SMAN-01\";i:1;s:10:\"US-SMAN-04\";}', '01:00', '02:00', 'aa', '2', 'aa', '2', '0', '2025-08-12');

-- --------------------------------------------------------

--
-- Table structure for table `bk_kategori`
--

CREATE TABLE `bk_kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bk_kategori`
--

INSERT INTO `bk_kategori` (`id`, `kategori`) VALUES
(1, 'Kelakuan'),
(2, 'Kerapihan'),
(3, 'Kerajinan');

-- --------------------------------------------------------

--
-- Table structure for table `bk_pelanggaran`
--

CREATE TABLE `bk_pelanggaran` (
  `id` int(11) NOT NULL,
  `idkat` int(11) NOT NULL,
  `idsub` int(11) DEFAULT NULL,
  `pelanggaran` mediumtext DEFAULT NULL,
  `poin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bk_pelanggaran`
--

INSERT INTO `bk_pelanggaran` (`id`, `idkat`, `idsub`, `pelanggaran`, `poin`) VALUES
(1, 1, 1, 'Terlambat hadir di sekolah \r\n', 2),
(2, 1, 1, 'Tidak membawa buku paket/pelajaran', 5),
(3, 1, 1, 'TIdak mengerjakan tugas sesuai dengan batas waktu yang ditentukan\r\n', 5),
(4, 1, 1, 'Mencontek/ menconteki', 10),
(5, 1, 1, 'Keluar kelas tanpa ijin guru/kabur', 10),
(6, 1, 1, 'Makan/ minum/ tidur saat PBM tanpa ijin guru/\r\n', 10),
(7, 1, 1, 'Membuat gaduh di kelas\r\n', 5),
(8, 1, 1, 'Tidak mengikuti ekstrakurikuler wajib di sekolah\r\n', 10),
(9, 1, 1, 'Tidak mengikuti upacara bendera\r\n', 10),
(12, 2, 3, 'Tidak menggunakan seragam sekolah sesuai aturan', 5),
(13, 2, 3, 'Baju tidak dimasukan', 5),
(14, 1, 6, 'Menggunakan Narkoba\r\n', 100),
(22, 1, 5, 'Merokok di area lingkungan sekolah', 50),
(23, 2, 2, 'Rambut di cat', 5);

-- --------------------------------------------------------

--
-- Table structure for table `bk_pesan`
--

CREATE TABLE `bk_pesan` (
  `id` int(11) NOT NULL,
  `nis` int(11) DEFAULT NULL,
  `pesan` text DEFAULT NULL,
  `waktu` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bk_pesan`
--

INSERT INTO `bk_pesan` (`id`, `nis`, `pesan`, `waktu`) VALUES
(1, 20221001, 'Assalamualaikum wr.wb\n\nKami Informasikan kepada Orang Tua dari\n\n*ABIWANTA RIZKY WIDYA AGUNG*\n\nbahwa hari ini ananda *ABIWANTA RIZKY WIDYA AGUNG*\ntelah melakukan pelanggaran sekolah berupa *Makan/ minum/ tidur saat PBM tanpa ijin guru/\r\n*\n\nDemikian Informasi yang Kami Sampaikan, Harap menjadi perhatian Bapak/Ibu selaku Orang Tua Siswa\n\nWasallamualaikum wr.wb.\n\nPesan ini otomatis disampaikan oleh Server SMA NUSANTARA', ''),
(2, 20221002, 'Assalamualaikum wr.wb\n\nKami Informasikan kepada Orang Tua dari\n\n*AISYAH TRI CAHYA*\n\nbahwa hari ini ananda *AISYAH TRI CAHYA*\ntelah melakukan pelanggaran sekolah berupa *Rambut di cat*\n\nDemikian Informasi yang Kami Sampaikan, Harap menjadi perhatian Bapak/Ibu selaku Orang Tua Siswa\n\nWasallamualaikum wr.wb.\n\nPesan ini otomatis disampaikan oleh Server SMA NUSANTARA', ''),
(3, 20221002, 'Assalamualaikum wr.wb\n\nKami Informasikan kepada Orang Tua dari\n\n*AISYAH TRI CAHYA*\n\nbahwa hari ini ananda *AISYAH TRI CAHYA*\ntelah melakukan pelanggaran sekolah berupa *Merokok di area lingkungan sekolah*\n\nDemikian Informasi yang Kami Sampaikan, Harap menjadi perhatian Bapak/Ibu selaku Orang Tua Siswa\n\nWasallamualaikum wr.wb.\n\nPesan ini otomatis disampaikan oleh Server SMA NUSANTARA', ''),
(4, 20221002, 'Assalamualaikum wr.wb\n\nKami Informasikan kepada Orang Tua dari\n\n*AISYAH TRI CAHYA*\n\nbahwa hari ini ananda *AISYAH TRI CAHYA*\ntelah melakukan pelanggaran sekolah berupa *Menggunakan Narkoba\r\n*\n\nDemikian Informasi yang Kami Sampaikan, Harap menjadi perhatian Bapak/Ibu selaku Orang Tua Siswa\n\nWasallamualaikum wr.wb.\n\nPesan ini otomatis disampaikan oleh Server SMA NUSANTARA', ''),
(5, 20221002, 'Assalamualaikum wr.wb\n\nKami Informasikan kepada Orang Tua dari\n\n*AISYAH TRI CAHYA*\n\nbahwa hari ini ananda *AISYAH TRI CAHYA*\ntelah melakukan pelanggaran sekolah berupa *Merokok di area lingkungan sekolah*\n\nDemikian Informasi yang Kami Sampaikan, Harap menjadi perhatian Bapak/Ibu selaku Orang Tua Siswa\n\nWasallamualaikum wr.wb.\n\nPesan ini otomatis disampaikan oleh Server SMA NUSANTARA', '');

-- --------------------------------------------------------

--
-- Table structure for table `bk_siswa`
--

CREATE TABLE `bk_siswa` (
  `id` int(11) NOT NULL,
  `nis` varchar(50) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `tanggal` date NOT NULL,
  `idkat` int(11) DEFAULT NULL,
  `idsub` int(11) DEFAULT NULL,
  `idpel` int(11) DEFAULT NULL,
  `idpres` int(11) DEFAULT NULL,
  `tapel` varchar(50) DEFAULT NULL,
  `ket` mediumtext DEFAULT NULL,
  `poin` int(11) DEFAULT NULL,
  `sts` varchar(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bk_siswa`
--

INSERT INTO `bk_siswa` (`id`, `nis`, `kelas`, `tanggal`, `idkat`, `idsub`, `idpel`, `idpres`, `tapel`, `ket`, `poin`, `sts`) VALUES
(1, '20221001', 'X-A', '2025-06-16', 1, 1, 6, NULL, '2024/2025', '-', 10, '0'),
(2, '20221002', 'X-A', '2025-06-09', 2, 2, 23, NULL, '2024/2025', '-', 5, '0'),
(3, '20221002', 'X-A', '2025-06-01', 1, 5, 22, NULL, '2024/2025', '-', 50, '0'),
(4, '20221002', 'X-A', '2025-06-12', 1, 6, 14, NULL, '2024/2025', '-', 100, '0'),
(5, '20221002', 'X-A', '2025-06-14', 1, 5, 22, NULL, '2024/2025', '-', 50, '0');

-- --------------------------------------------------------

--
-- Table structure for table `bk_sp`
--

CREATE TABLE `bk_sp` (
  `id` int(11) NOT NULL,
  `nis` varchar(50) DEFAULT NULL,
  `poin` int(11) DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `tapel` varchar(50) DEFAULT NULL,
  `sts` varchar(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bk_sp`
--

INSERT INTO `bk_sp` (`id`, `nis`, `poin`, `ket`, `tapel`, `sts`) VALUES
(1, '20221002', 55, 'SP2', '2024/2025', '0');

-- --------------------------------------------------------

--
-- Table structure for table `bk_sub`
--

CREATE TABLE `bk_sub` (
  `id` int(11) NOT NULL,
  `id_kat` int(11) NOT NULL,
  `sub_kategori` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bk_sub`
--

INSERT INTO `bk_sub` (`id`, `id_kat`, `sub_kategori`) VALUES
(1, 1, 'Kegiatan Belajar Mengajar'),
(2, 2, 'Rambut'),
(3, 2, 'Pakaian'),
(4, 3, 'Kehadiran'),
(5, 1, 'Merokok'),
(6, 1, 'Minuman keras'),
(7, 1, 'Pornogafi'),
(8, 1, 'Mencuri'),
(9, 1, 'Memeras'),
(10, 1, 'Penghinaan');

-- --------------------------------------------------------

--
-- Table structure for table `bk_surat`
--

CREATE TABLE `bk_surat` (
  `id` int(11) NOT NULL,
  `nosurat` varchar(50) DEFAULT NULL,
  `nis` varchar(50) DEFAULT NULL,
  `tanggal` date NOT NULL,
  `sanksi` text NOT NULL,
  `tapel` varchar(50) DEFAULT NULL,
  `sts` varchar(11) DEFAULT '0',
  `idsp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bk_tindakan`
--

CREATE TABLE `bk_tindakan` (
  `id` int(11) NOT NULL,
  `tindakan` varchar(50) DEFAULT NULL,
  `ketentuan` mediumtext DEFAULT NULL,
  `minpoin` int(11) DEFAULT NULL,
  `maxpoin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bk_tindakan`
--

INSERT INTO `bk_tindakan` (`id`, `tindakan`, `ketentuan`, `minpoin`, `maxpoin`) VALUES
(2, 'SP1', 'Orang Tua akan dikirim Surat Peringatan ke 1 (SP1) atas tindakan pelanggaan oleh peserta didik mmmmm', 35, 45),
(3, 'SP2', 'Orang Tua akan dikirim Surat Peringatan ke 2 (SP2) atas tindakan pelanggaan oleh peserta didik', 46, 74),
(4, 'SP3', 'Orang Tua akan dikirim Surat Peringatan ke 13(SP3) atas tindakan pelanggaan oleh peserta didik', 75, 100);

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `idkategori` int(11) DEFAULT NULL,
  `judul` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `penerbit` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `pengarang` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `barkode` text CHARACTER SET latin1 DEFAULT NULL,
  `ket` varchar(50) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bulan`
--

CREATE TABLE `bulan` (
  `id` int(11) NOT NULL,
  `bln` varchar(5) NOT NULL,
  `ket` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bulan`
--

INSERT INTO `bulan` (`id`, `bln`, `ket`) VALUES
(1, '01', 'Januari'),
(2, '02', 'Februari'),
(3, '03', 'Maret'),
(4, '04', 'April'),
(5, '05', 'Mei'),
(6, '06', 'Juni'),
(7, '07', 'Juli'),
(8, '08', 'Agustus'),
(9, '09', 'September'),
(10, '10', 'Oktober'),
(11, '11', 'Nopember'),
(12, '12', 'Desember');

-- --------------------------------------------------------

--
-- Table structure for table `cetak`
--

CREATE TABLE `cetak` (
  `id` int(11) NOT NULL,
  `header` varchar(100) DEFAULT NULL,
  `pakai` int(11) NOT NULL DEFAULT 0,
  `lebar` varchar(50) DEFAULT NULL,
  `tinggi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cetak`
--

INSERT INTO `cetak` (`id`, `header`, `pakai`, `lebar`, `tinggi`) VALUES
(1, '', 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cp`
--

CREATE TABLE `cp` (
  `id` int(11) NOT NULL,
  `tingkat` varchar(11) DEFAULT NULL,
  `fase` varchar(11) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `capaian` text DEFAULT NULL,
  `smt` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cp`
--

INSERT INTO `cp` (`id`, `tingkat`, `fase`, `guru`, `mapel`, `capaian`, `smt`) VALUES
(1, '10', 'E', '3', '3', 'Peserta didik mampu mengevaluasi dan mengkreasi informasi berupa gagasan, pikiran, perasaan, pandangan, arahan, atau pesan yang akurat dari menyimak berbagai tipe teks dalam bentuk monolog, dialog', '1'),
(2, '10', 'E', '2', '5', 'Peserta didik mampu menerapkan pemahaman IPA untuk mengatasi permasalahan yang berkaitan dengan perubahan iklim. Mereka mengamati fenomena ilmiah dan mencatat hasil pengamatannya, memperhatikan ', '1');

-- --------------------------------------------------------

--
-- Table structure for table `cp_elemen`
--

CREATE TABLE `cp_elemen` (
  `id_elemen` int(11) NOT NULL,
  `idcp` varchar(11) DEFAULT NULL,
  `elemen` text DEFAULT NULL,
  `capaian` text DEFAULT NULL,
  `tingkat` varchar(11) DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  `smt` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cp_elemen`
--

INSERT INTO `cp_elemen` (`id_elemen`, `idcp`, `elemen`, `capaian`, `tingkat`, `mapel`, `guru`, `smt`) VALUES
(1, '1', 'Berbicara dan Mempresentasikan', 'Peserta didik mampu mengolah dan menyajikan gagasan, pikiran,\r\npandangan, arahan, atau pesan untuk tujuan pengajuan usul,\r\nperumusan masalah, dan solusi dalam bentuk monolog, dialog, dan\r\ngelar wicara', '10', '3', '3', '1'),
(2, '1', 'Menulis', 'Peserta didik mampu menulis gagasan, pikiran, pandangan,\r\narahan, atau pesan tertulis untuk berbagai tujuan secara\r\nlogis, kritis, dan kreatif dalam bentuk teks informasional dan/\r\natau fiksi.', '10', '3', '3', '1'),
(3, '2', 'Menjelaskan fenomena secara ilmiah ', 'Peserta didik diharapkan tidak hanya memahami teori, tetapi juga mampu mengaplikasikannya dalam kehidupan sehari-hari untuk memecahkan masalah terkait perubahan iklim. ', '10', '5', '2', '1');

-- --------------------------------------------------------

--
-- Table structure for table `datareg`
--

CREATE TABLE `datareg` (
  `id` int(11) NOT NULL,
  `nokartu` varchar(50) DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `idjari` varchar(11) DEFAULT NULL,
  `serial` varchar(50) DEFAULT NULL,
  `sts` varchar(11) DEFAULT NULL,
  `folder` varchar(255) DEFAULT NULL,
  `nada` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `data_luar`
--

CREATE TABLE `data_luar` (
  `id` int(11) NOT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `jenis` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_luar`
--

INSERT INTO `data_luar` (`id`, `idpeg`, `jenis`) VALUES
(1, '4', '1'),
(10, '6', '1'),
(11, '3', '1'),
(12, '3', '1'),
(13, '4', '1');

-- --------------------------------------------------------

--
-- Table structure for table `deskripsi`
--

CREATE TABLE `deskripsi` (
  `id` int(11) NOT NULL,
  `mapel` varchar(100) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `smt` int(11) DEFAULT NULL,
  `ki` varchar(11) DEFAULT NULL,
  `kd` varchar(20) DEFAULT NULL,
  `guru` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `digital`
--

CREATE TABLE `digital` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` varchar(50) DEFAULT NULL,
  `guru` varchar(50) DEFAULT NULL,
  `ikon` varchar(50) DEFAULT NULL,
  `file` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `digital`
--

INSERT INTO `digital` (`id`, `judul`, `deskripsi`, `tanggal`, `jam`, `guru`, `ikon`, `file`) VALUES
(1, 'Bahasa Indonesia BS Kelas X', 'Buku Siswa Mata Pelajaran Bahasa Indonesia untuk kelas X', '2025-06-04', '09:01:33', 'Admin', 'Bahasa_Indonesia_BS_KLS_X_Rev_Cover.png', 'Bahasa_Indonesia_BS_KLS_X_Rev.pdf'),
(2, ' Bahasa Inggris: Work in Progress untuk SMA/SMK/MA', 'Penerbit Pusat Perbukuan\r\nISBN 978-602-244-897-6\r\nEdisi\r\n1\r\nPenulis\r\nBudi Hermawan, Dwi Haryanti, Nining Suryaningsih', '2025-06-04', '09:03:44', 'Admin', 'Bahasa-Inggris-BS-KLS-X-cover.png', 'Bahasa-Inggris-BS-KLS-X.pdf'),
(3, 'Pendidikan Pancasila untuk Kelas XI', 'Penerbit\r\nPusat Perbukuan\r\nISBN\r\n978-623-194-623-2\r\nEdisi\r\n1\r\nPenulis\r\nSri Cahyati, Siti Nurjanah, Ali Usman', '2025-06-16', '07:51:20', 'Admin', 'Pendidikan-Pancasila-BS-KLS-XI-Cover.png', 'Struktur dan Kebahasaan Teks Anekdot.pdf'),
(4, 'Biologi SMA Kelas XII', 'Penerbit\r\nBelum ada\r\nISBN\r\n978-602-427-958-5\r\nEdisi\r\n1\r\nPenulis\r\nShilviani Dewi, Amalia Shari, Rani Elisa Purba, Remigius Gunawan Susilowarno', '2025-06-16', '07:54:24', 'Admin', 'Biologi_BS_KLS_XII_Cover.png', 'Struktur dan Kebahasaan Teks Anekdot.pdf'),
(5, 'Matematika untuk SMA/SMK Kelas X', 'Penerbit\r\nPusat Kurikulum dan Perbukuan\r\nISBN\r\n978-602-244-526-5\r\nEdisi\r\n1\r\nPenulis\r\nDicky Susanto, Theja Kurniawan, Savitri K. Sihombing, Eunice Salim, Marianna Magdalena Radjawane, Ummy Salmah, Ambarsari Kusuma Wardani', '2025-06-16', '07:55:14', 'Admin', 'Matematika-BS-KLS-X-Cover.png', 'Struktur dan Kebahasaan Teks Anekdot.pdf'),
(6, 'Informatika untuk SMK/MAK Kelas X Semester 1', 'Penerbit\r\nPusat Kurikulum dan Perbukuan\r\nISBN\r\n978-623-194-071-1\r\nEdisi\r\n1\r\nPenulis\r\nKusmadi, Imam Badrudin, Bima Laksana Putra, Wiyana Eva Cuntaka', '2025-06-16', '07:56:03', 'Admin', 'Informatika-KLS-X-Sem-1-Cover.png', 'Struktur dan Kebahasaan Teks Anekdot.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `digital_baca`
--

CREATE TABLE `digital_baca` (
  `id` int(11) NOT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` varchar(50) DEFAULT NULL,
  `idbuku` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `digital_baca`
--

INSERT INTO `digital_baca` (`id`, `idsiswa`, `tanggal`, `jam`, `idbuku`) VALUES
(1, '1', '2025-04-24', '', '1'),
(2, '1', '2025-04-24', '', '1'),
(3, '1', '2025-04-24', '', '1'),
(4, '1', '2025-04-24', '21:51:33', '1'),
(5, '1', '2025-04-24', '21:51:38', '1'),
(6, '1', '2025-04-24', '22:05:10', '1'),
(7, '1', '2025-06-04', '09:29:38', '1'),
(8, '1', '2025-06-04', '09:39:56', '1'),
(9, '5', '2025-06-04', '15:41:57', '1'),
(10, '8', '2025-06-04', '18:28:00', '2'),
(11, '19', '2025-06-05', '09:05:35', '2'),
(12, '19', '2025-06-05', '15:21:52', '2'),
(13, '100', '2025-06-07', '07:45:54', '1'),
(14, '7', '2025-06-08', '17:28:29', '1'),
(15, '7', '2025-06-08', '17:30:25', '1'),
(16, '7', '2025-06-08', '17:30:28', '1'),
(17, '7', '2025-06-08', '17:31:51', '1'),
(18, '7', '2025-06-08', '17:32:47', '2'),
(19, '25', '2025-06-08', '17:34:25', '1'),
(20, '14', '2025-06-09', '00:21:09', '1'),
(21, '18', '2025-06-10', '15:25:19', '1'),
(22, '14', '2025-06-10', '23:33:26', '1'),
(23, '1', '2025-06-11', '06:29:15', '1'),
(24, '100', '2025-06-11', '12:31:02', '1'),
(25, '100', '2025-06-11', '12:31:45', '1'),
(26, '14', '2025-06-11', '13:55:02', '2'),
(27, '14', '2025-06-11', '13:56:49', '1'),
(28, '18', '2025-06-12', '08:49:16', '1'),
(29, '18', '2025-06-12', '11:45:35', '1'),
(30, '18', '2025-06-12', '11:45:45', '2'),
(31, '14', '2025-06-15', '21:36:41', '2'),
(32, '1', '2025-08-06', '13:40:34', '1');

-- --------------------------------------------------------

--
-- Table structure for table `disfo`
--

CREATE TABLE `disfo` (
  `id` int(11) NOT NULL,
  `bg` varchar(50) DEFAULT NULL,
  `file` text DEFAULT NULL,
  `teks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `disfo`
--

INSERT INTO `disfo` (`id`, `bg`, `file`, `teks`) VALUES
(1, 'FOTO', 'file71.png', 'Semua Siswa harap melakukan presensi');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id` int(11) NOT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `jenis` varchar(50) DEFAULT NULL,
  `waktu` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id`, `idsiswa`, `jenis`, `waktu`) VALUES
(1, '1', 'SKL', '2025-02-18 10:01:36'),
(2, '1', 'SKL', '2025-02-18 10:01:59'),
(3, '1', 'SKL', '2025-02-18 10:03:43'),
(4, '1', 'SKL', '2025-02-18 10:05:21'),
(5, '1', 'SKL', '2025-02-18 10:07:49'),
(6, '91', 'SKL', '2025-02-18 10:19:31'),
(7, '91', 'SKL', '2025-02-21 08:29:25');

-- --------------------------------------------------------

--
-- Table structure for table `file_pendukung`
--

CREATE TABLE `file_pendukung` (
  `id_file` int(11) NOT NULL,
  `id_bank` int(11) DEFAULT 0,
  `nama_file` varchar(50) DEFAULT NULL,
  `status_file` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `file_pendukung`
--

INSERT INTO `file_pendukung` (`id_file`, `id_bank`, `nama_file`, `status_file`) VALUES
(1, 2, '4071.jpeg', NULL),
(2, 2, '2779.jpeg', NULL),
(3, 2, '8634.png', NULL),
(4, 3, '6330.jpeg', NULL),
(5, 3, '9286.jpeg', NULL),
(6, 3, '7181.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gaji`
--

CREATE TABLE `gaji` (
  `id` int(11) NOT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `kode` varchar(11) DEFAULT NULL,
  `tugas` varchar(50) DEFAULT NULL,
  `besar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gaji`
--

INSERT INTO `gaji` (`id`, `idpeg`, `kode`, `tugas`, `besar`) VALUES
(1, '2', '1', 'Mengajar', '20000'),
(2, '3', '1', 'Mengajar', '37000'),
(3, '3', '4', 'Eskul', '35000'),
(4, '3', '1', 'Mengajar', '1000000'),
(5, '3', '1', 'Mengajar', '2000000');

-- --------------------------------------------------------

--
-- Table structure for table `gtt`
--

CREATE TABLE `gtt` (
  `id` int(11) NOT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `jk` varchar(50) DEFAULT NULL,
  `ttl` varchar(50) DEFAULT NULL,
  `pendidikan` varchar(50) DEFAULT NULL,
  `nosk` int(50) DEFAULT NULL,
  `tglsk` varchar(50) DEFAULT NULL,
  `tahun` varchar(50) DEFAULT NULL,
  `tmt_awal` varchar(50) DEFAULT NULL,
  `tawal` varchar(50) DEFAULT NULL,
  `tmt_akhir` varchar(50) DEFAULT NULL,
  `takhir` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `informasi`
--

CREATE TABLE `informasi` (
  `id` int(11) NOT NULL,
  `untuk` varchar(2) DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `waktu` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `informasi`
--

INSERT INTO `informasi` (`id`, `untuk`, `judul`, `isi`, `waktu`) VALUES
(1, '1', 'WELCOME!', '<p>Selamat datang di Sistem Aplikasi Pendidikan <strong>SMA Negeri 1 Nusantara!</strong></p>', '2025-05-05 08:31:04');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `nama` varchar(50) NOT NULL,
  `total` varchar(50) DEFAULT NULL,
  `reff` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `tanggal`, `idsiswa`, `idpeg`, `nama`, `total`, `reff`) VALUES
(1, '2025-02-19', '91', NULL, 'NABILA AURELIA PUTRI SUSANTO', '', '20250219213722'),
(2, '2025-02-19', '91', NULL, 'NABILA AURELIA PUTRI SUSANTO', '', '20250219213935'),
(3, '2025-02-19', '91', NULL, 'NABILA AURELIA PUTRI SUSANTO', '', '20250219214319'),
(4, '2025-02-19', '91', NULL, 'NABILA AURELIA PUTRI SUSANTO', '', '20250219214415'),
(5, '2025-02-19', '1', NULL, 'ABIWANTA RIZKY WIDYA AGUNG', '', '20250219215252'),
(6, '2025-02-19', '1', NULL, 'ABIWANTA RIZKY WIDYA AGUNG', '', '20250219222626'),
(7, '2025-02-19', '1', NULL, 'ABIWANTA RIZKY WIDYA AGUNG', '', '20250219222626'),
(8, '2025-02-19', '91', NULL, 'NABILA AURELIA PUTRI SUSANTO', '', '20250219222729'),
(9, '2025-02-19', '91', NULL, 'NABILA AURELIA PUTRI SUSANTO', '', '20250219222729'),
(10, '2025-02-19', '1', NULL, 'ABIWANTA RIZKY WIDYA AGUNG', '', '20250219223032'),
(11, '2025-02-19', '1', NULL, 'ABIWANTA RIZKY WIDYA AGUNG', '', '20250219223032'),
(12, '2025-02-19', '1', NULL, 'ABIWANTA RIZKY WIDYA AGUNG', '', '20250219223032'),
(13, '2025-03-05', '6', NULL, 'ANDREAS NOVA ANDRIANO', '', '20250305121013'),
(14, '2025-03-24', '18', NULL, 'HERI PRASETYO', '', '20250324194853'),
(15, '2025-03-28', '2', NULL, 'AISYAH TRI CAHYA', '', '20250328105946'),
(16, '2025-03-31', '14', NULL, 'FAKHRI RAHMAD JULIAN', '', '20250331111408'),
(17, '2025-05-16', '2', NULL, 'AISYAH TRI CAHYA', '', '20250516165313'),
(18, '2025-06-05', '19', NULL, 'IRFAN ANTONY FAUZAN IBNI', '14000', '20250605144118'),
(19, '2025-06-05', '19', NULL, 'IRFAN ANTONY FAUZAN IBNI', '14000', '20250605152646'),
(20, '2025-06-07', '100', NULL, 'Wildan Al Amin', '7000', '20250607074722'),
(21, '2025-06-07', '100', NULL, 'Wildan Al Amin', '14000', '20250607074805'),
(22, '2025-06-11', '1', NULL, 'ABIWANTA RIZKY WIDYA AGUNG', '7000', '20250611111636'),
(23, '2025-06-11', '100', NULL, 'Wildan Al Amin', '14000', '20250611132204'),
(24, '2025-06-11', '14', NULL, 'FAKHRI RAHMAD JULIAN', '7000', '20250611135940'),
(25, '2025-06-11', '1', NULL, 'ABIWANTA RIZKY WIDYA AGUNG', '7000', '20250611141946'),
(26, '2025-06-12', '14', NULL, 'FAKHRI RAHMAD JULIAN', '7000', '20250612083523');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_mengajar`
--

CREATE TABLE `jadwal_mengajar` (
  `id_jadwal` int(11) NOT NULL,
  `hari` varchar(50) DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  `tingkat` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `sampai` varchar(50) DEFAULT NULL,
  `jamke` varchar(11) DEFAULT NULL,
  `jjm` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jadwal_mengajar`
--

INSERT INTO `jadwal_mengajar` (`id_jadwal`, `hari`, `mapel`, `guru`, `tingkat`, `kelas`, `dari`, `sampai`, `jamke`, `jjm`) VALUES
(1, 'Mon', '3', '3', '10', 'X-A', '00:00', '23:00', NULL, '39.428571428571'),
(2, 'Tue', '3', '3', '10', 'X-B', '00:00', '23:00', NULL, '39.428571428571'),
(3, 'Wed', '3', '3', '10', 'X-A', '00:00', '23:00', NULL, '39.428571428571'),
(4, 'Mon', '3', '3', '10', 'X-B', '12:00', '13:00', NULL, '1.7142857142857'),
(5, 'Mon', '5', '2', '10', 'X-A', '09:00', '12:00', NULL, '5.1428571428571'),
(6, 'Mon', '4', '10', '10', 'X-A', '08:00', '13:00', NULL, '8.5714285714286');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_piket`
--

CREATE TABLE `jadwal_piket` (
  `id` int(11) NOT NULL,
  `hari` varchar(50) DEFAULT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `level` varchar(50) NOT NULL DEFAULT 'staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jadwal_piket`
--

INSERT INTO `jadwal_piket` (`id`, `hari`, `idpeg`, `level`) VALUES
(1, 'Wed', '4', 'staff');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_refleksi`
--

CREATE TABLE `jadwal_refleksi` (
  `id` int(11) NOT NULL,
  `idmapel` varchar(11) DEFAULT NULL,
  `idguru` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jadwal_refleksi`
--

INSERT INTO `jadwal_refleksi` (`id`, `idmapel`, `idguru`, `kelas`, `tanggal`) VALUES
(1, '3', '3', 'X-A', '2025-06-16');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_tu`
--

CREATE TABLE `jadwal_tu` (
  `id` int(11) NOT NULL,
  `hari` varchar(50) DEFAULT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `level` varchar(50) NOT NULL DEFAULT 'staff',
  `jjk` varchar(11) DEFAULT NULL,
  `honor` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jadwal_tu`
--

INSERT INTO `jadwal_tu` (`id`, `hari`, `idpeg`, `level`, `jjk`, `honor`) VALUES
(1, 'Mon', '6', 'staff', '2', '5000');

-- --------------------------------------------------------

--
-- Table structure for table `jawaban`
--

CREATE TABLE `jawaban` (
  `id` int(11) NOT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `id_bank` int(11) NOT NULL DEFAULT 0,
  `id_soal` int(11) NOT NULL DEFAULT 0,
  `id_ujian` int(11) NOT NULL DEFAULT 0,
  `jawaban` varchar(50) DEFAULT NULL,
  `jawabx` varchar(50) DEFAULT NULL,
  `warna` varchar(50) DEFAULT NULL,
  `jenis` int(11) NOT NULL,
  `esai` mediumtext DEFAULT NULL,
  `jawabmulti` mediumtext DEFAULT NULL,
  `jawabbs` mediumtext DEFAULT NULL,
  `jawaburut` mediumtext DEFAULT NULL,
  `nilai_esai` int(11) NOT NULL DEFAULT 0,
  `ragu` int(11) NOT NULL DEFAULT 0,
  `status` int(11) DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `skor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jawaban_dup`
--

CREATE TABLE `jawaban_dup` (
  `id` int(11) NOT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `npsn` varchar(50) DEFAULT NULL,
  `id_bank` int(11) NOT NULL DEFAULT 0,
  `id_soal` int(11) NOT NULL DEFAULT 0,
  `id_ujian` int(11) NOT NULL DEFAULT 0,
  `jawaban` varchar(50) DEFAULT NULL,
  `jawabx` varchar(50) DEFAULT NULL,
  `jenis` int(11) NOT NULL,
  `esai` mediumtext DEFAULT NULL,
  `jawabmulti` mediumtext DEFAULT NULL,
  `jawabbs` mediumtext DEFAULT NULL,
  `jawaburut` mediumtext DEFAULT NULL,
  `bs1` varchar(5) DEFAULT NULL,
  `bs2` varchar(5) DEFAULT NULL,
  `bs3` varchar(5) DEFAULT NULL,
  `bs4` varchar(5) DEFAULT NULL,
  `bs5` varchar(5) DEFAULT NULL,
  `urut1` mediumtext DEFAULT NULL,
  `urut2` mediumtext DEFAULT NULL,
  `urut3` mediumtext DEFAULT NULL,
  `urut4` mediumtext DEFAULT NULL,
  `urut5` mediumtext DEFAULT NULL,
  `nilai_esai` int(11) NOT NULL DEFAULT 0,
  `ragu` int(11) NOT NULL DEFAULT 0,
  `status` int(11) DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `skor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jawaban_refleksi`
--

CREATE TABLE `jawaban_refleksi` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(11) DEFAULT NULL,
  `idmapel` int(11) NOT NULL,
  `idsoal` varchar(50) DEFAULT NULL,
  `jawaban` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jawaban_soal`
--

CREATE TABLE `jawaban_soal` (
  `id_soal` int(11) DEFAULT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `id_bank` int(11) DEFAULT NULL,
  `id_ujian` int(11) DEFAULT NULL,
  `idjawab` varchar(50) DEFAULT NULL,
  `jenis` int(11) DEFAULT NULL,
  `jawab` text DEFAULT NULL,
  `skor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jawaban_tugas`
--

CREATE TABLE `jawaban_tugas` (
  `id_jawaban` int(11) NOT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `id_tugas` int(11) DEFAULT NULL,
  `jawaban` longtext DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tgl_dikerjakan` datetime DEFAULT NULL,
  `tgl_update` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nilai` varchar(5) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `id_jenis` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id_jenis`, `nama`, `status`) VALUES
('PAS', 'Penilaian Akhir Semester', 'tidak'),
('PAT', 'Penilaian Akhir Tahun', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_satuan`
--

CREATE TABLE `jenis_satuan` (
  `satuan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jenis_satuan`
--

INSERT INTO `jenis_satuan` (`satuan`) VALUES
('Buah'),
('Dus'),
('Kg'),
('Lusin'),
('Meter'),
('Pcs'),
('Rim');

-- --------------------------------------------------------

--
-- Table structure for table `jodoh`
--

CREATE TABLE `jodoh` (
  `id_siswa` int(11) DEFAULT NULL,
  `id_soal` int(11) DEFAULT NULL,
  `id_bank` varchar(11) DEFAULT NULL,
  `id_ujian` varchar(11) DEFAULT NULL,
  `jenis` varchar(11) DEFAULT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `jawab` text DEFAULT NULL,
  `warna` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`) VALUES
(1, 'Makanan'),
(2, 'Minuman'),
(3, 'Snack');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `level` varchar(50) DEFAULT NULL,
  `fase` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `kuri` varchar(11) DEFAULT NULL,
  `mode_kkm` varchar(50) DEFAULT NULL,
  `kelompok` varchar(11) DEFAULT NULL,
  `bk` varchar(50) DEFAULT NULL,
  `pk` varchar(50) DEFAULT NULL,
  `kk` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `level`, `fase`, `kelas`, `jurusan`, `kuri`, `mode_kkm`, `kelompok`, `bk`, `pk`, `kk`) VALUES
(1, '10', 'E', 'X-A', 'UMUM', '2', NULL, NULL, NULL, NULL, NULL),
(2, '10', 'E', 'X-B', 'UMUM', '2', NULL, NULL, NULL, NULL, NULL),
(3, '11', 'F', 'XI-A', 'UMUM', '2', NULL, NULL, NULL, NULL, NULL),
(4, '11', 'F', 'XI-B', 'UMUM', '2', NULL, NULL, NULL, NULL, NULL),
(5, '12', 'F', 'XII-A', 'UMUM', '2', NULL, NULL, NULL, NULL, NULL),
(6, '12', 'F', 'XII-B', 'UMUM', '2', NULL, NULL, NULL, NULL, NULL),
(7, '', 'F', '', 'semua', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(11) NOT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `idproduk` varchar(11) DEFAULT NULL,
  `jumlah` varchar(11) DEFAULT NULL,
  `harga` varchar(11) DEFAULT NULL,
  `total` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id`, `idsiswa`, `idpeg`, `idproduk`, `jumlah`, `harga`, `total`) VALUES
(1, NULL, '2', '1', '1', '7000', NULL),
(6, NULL, '3', '3', '1', '2500', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kode`
--

CREATE TABLE `kode` (
  `id` int(11) NOT NULL,
  `jenjang` varchar(50) DEFAULT NULL,
  `jenis` varchar(11) DEFAULT NULL,
  `kd` varchar(50) DEFAULT NULL,
  `ket` text DEFAULT NULL,
  `sub` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kode`
--

INSERT INTO `kode` (`id`, `jenjang`, `jenis`, `kd`, `ket`, `sub`) VALUES
(1, 'SMK', '1', 'A', 'A. Muatan Nasional', ''),
(2, 'SMK', '1', 'B', 'B. Muatan Kewilayahan', ''),
(3, 'SMK', '1', 'C1', 'C1. Dasar Bidang Keahlian', 'C. Muatan Peminatan Kejuruan'),
(4, 'SMK', '1', 'C2', 'C2. Dasar Program Keahlian', ''),
(5, 'SMK', '1', 'C3', 'C3. Kompetensi Keahlian', ''),
(6, 'SMP', '1', 'A', 'A. Umum', ''),
(7, 'SMP', '1', 'B', 'B. Muatan Lokal', ''),
(8, 'SMA', '1', 'A', 'A. Umum', ''),
(9, 'SMA', '1', 'B', 'B. Umum', ''),
(10, 'SMA', '1', 'C', 'C. Peminatan', ''),
(11, 'SD', '1', 'A', 'A. Umum', ''),
(12, 'SD', '1', 'B', 'B. Muatan Lokal', ''),
(13, 'SMK', '2', 'A', 'A. Muatan Nasional', ''),
(14, 'SMK', '2', 'B', 'B. Muatan Kewilayahan', ''),
(15, 'SMK', '2', 'C1', 'C1. Dasar Bidang Keahlian', 'C. Muatan Peminatan Kejuruan'),
(16, 'SMK', '2', 'C2', 'C2. Dasar Program Keahlian', ''),
(17, 'SMK', '2', 'C3', 'C3. Kompetensi Keahlian', ''),
(18, 'SMP', '2', 'A', 'A. Umum', ''),
(19, 'SMP', '2', 'B', 'B. Muatan Lokal', ''),
(20, 'SMA', '2', 'A', 'A. Umum', ''),
(21, 'SMA', '2', 'B', 'B. Umum', ''),
(22, 'SMA', '2', 'C', 'C. Peminatan', ''),
(23, 'SD', '2', 'A', 'A. Umum', ''),
(24, 'SD', '2', 'B', 'B. Muatan Lokal', '');

-- --------------------------------------------------------

--
-- Table structure for table `kode_jenis`
--

CREATE TABLE `kode_jenis` (
  `kd` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kode_jenis`
--

INSERT INTO `kode_jenis` (`kd`, `nama`) VALUES
(1, 'Mengajar'),
(2, 'Staff'),
(3, 'Piket Malam'),
(4, 'Eskul'),
(5, 'Tugas Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_materi` int(11) DEFAULT NULL,
  `komentar` text DEFAULT NULL,
  `balasan` text CHARACTER SET latin1 DEFAULT NULL,
  `jenis` tinyint(2) DEFAULT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `guru` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id`, `id_user`, `id_materi`, `komentar`, `balasan`, `jenis`, `tgl`, `guru`) VALUES
(1, 102, 4, 'link tidak bisa dibuka pak', NULL, 1, '2025-05-26 09:00:31', 2);

-- --------------------------------------------------------

--
-- Table structure for table `konten`
--

CREATE TABLE `konten` (
  `id_konten` int(11) NOT NULL,
  `idcp` varchar(11) DEFAULT NULL,
  `idel` varchar(11) DEFAULT NULL,
  `idtp` varchar(11) DEFAULT NULL,
  `sub` text DEFAULT NULL,
  `ringkasan` text DEFAULT NULL,
  `gambaran` text DEFAULT NULL,
  `media` text DEFAULT NULL,
  `sumber` text DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `tingkat` varchar(11) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `konten`
--

INSERT INTO `konten` (`id_konten`, `idcp`, `idel`, `idtp`, `sub`, `ringkasan`, `gambaran`, `media`, `sumber`, `mapel`, `tingkat`, `guru`) VALUES
(1, '1', '1', '1', 'MENGUNGKAPKAN KRITIK LEWAT HUMOR', 'Di bawah tema “Mengungkapkan Kritik Lewat Humor”, pembelajaran pada bab ini akan mengulas hal-hal yang berhubungan dengan kegiatan menyampaikan kritik secara jenaka.', 'Peserta didik diajak menyelami lebih dalam tema tersebut melalui ragam materi yang tersaji dan berbagai aktivitas yang menarik.', 'Kertas, Laptop, Canva', 'Buku Siswa, Intenet', '3', '10', '3');

-- --------------------------------------------------------

--
-- Table structure for table `kunci_soal`
--

CREATE TABLE `kunci_soal` (
  `id_bank` int(11) DEFAULT NULL,
  `id_soal` int(11) DEFAULT NULL,
  `id_jawab` varchar(50) DEFAULT NULL,
  `jawaban` text DEFAULT NULL,
  `skor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kunci_soal`
--

INSERT INTO `kunci_soal` (`id_bank`, `id_soal`, `id_jawab`, `jawaban`, `skor`) VALUES
(1, 1, '1.1', 'A', 1),
(1, 2, '2.1', 'A', 1),
(1, 2, '2.2', 'B', 1),
(1, 2, '2.3', 'D', 1),
(1, 3, '3.1', 'C', 1),
(1, 3, '3.2', 'A', 1),
(1, 3, '3.3', 'B', 1),
(1, 3, '3.4', 'D', 1),
(1, 4, '4.1', 'B', 1),
(1, 4, '4.2', 'S', 1),
(1, 4, '4.3', 'S', 1),
(1, 4, '4.4', 'B', 1),
(1, 5, '5.1', '10', 5),
(1, 6, '6.1', 'A', 1),
(1, 7, '7.1', 'A', 1),
(1, 7, '7.2', 'B', 1),
(1, 7, '7.3', 'D', 1),
(1, 8, '8.1', 'C', 1),
(1, 8, '8.2', 'A', 1),
(1, 8, '8.3', 'B', 1),
(1, 8, '8.4', 'D', 1),
(1, 9, '9.1', 'B', 1),
(1, 9, '9.2', 'S', 1),
(1, 9, '9.3', 'S', 1),
(1, 9, '9.4', 'B', 1),
(1, 10, '10.1', '10', 5),
(2, 11, '11.1', 'A', 1),
(2, 12, '12.1', '10', 5),
(2, 13, '13.1', 'A', 1),
(2, 13, '13.2', 'B', 1),
(2, 13, '13.3', 'D', 1),
(2, 14, '14.1', 'B', 1),
(2, 14, '14.2', 'S', 1),
(2, 14, '14.3', 'S', 1),
(2, 14, '14.4', 'B', 1),
(2, 15, '15.1', 'C', 1),
(2, 15, '15.2', 'A', 1),
(2, 15, '15.3', 'D', 1),
(2, 15, '15.4', 'B', 1),
(3, 16, '16.1', 'A', 1),
(3, 17, '17.1', '10', 5),
(3, 18, '18.1', 'A', 1),
(3, 18, '18.2', 'B', 1),
(3, 18, '18.3', 'D', 1),
(3, 19, '19.1', 'B', 1),
(3, 19, '19.2', 'S', 1),
(3, 19, '19.3', 'S', 1),
(3, 19, '19.4', 'B', 1),
(3, 20, '20.1', 'C', 1),
(3, 20, '20.2', 'A', 1),
(3, 20, '20.3', 'D', 1),
(3, 20, '20.4', 'B', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kurikulum`
--

CREATE TABLE `kurikulum` (
  `id` int(11) NOT NULL,
  `tingkat` varchar(11) DEFAULT NULL,
  `kuri` varchar(1) DEFAULT NULL,
  `model_rapor` varchar(1) DEFAULT NULL,
  `model_kkm` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kurikulum`
--

INSERT INTO `kurikulum` (`id`, `tingkat`, `kuri`, `model_rapor`, `model_kkm`) VALUES
(1, '10', '2', '2', NULL),
(2, '11', '2', '2', NULL),
(3, '12', '2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `k_bayar`
--

CREATE TABLE `k_bayar` (
  `kelas` varchar(50) NOT NULL,
  `idb` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k_bayar`
--

INSERT INTO `k_bayar` (`kelas`, `idb`) VALUES
('X-2', '1'),
('XI-A', '1');

-- --------------------------------------------------------

--
-- Table structure for table `lampu`
--

CREATE TABLE `lampu` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'OF'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lampu`
--

INSERT INTO `lampu` (`id`, `nama`, `status`) VALUES
(1, 'Lampu Kantor', 'OF'),
(2, 'Lampu2', 'OF'),
(3, 'Lampu3', 'OF'),
(4, 'Lampu4', 'OF'),
(5, 'Lampu5', 'OF'),
(6, 'Lampu6', 'OF');

-- --------------------------------------------------------

--
-- Table structure for table `lingkup`
--

CREATE TABLE `lingkup` (
  `id` int(11) NOT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `level` varchar(11) DEFAULT NULL,
  `materi` text DEFAULT NULL,
  `smt` varchar(11) DEFAULT NULL,
  `lm` varchar(11) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lingkup`
--

INSERT INTO `lingkup` (`id`, `mapel`, `level`, `materi`, `smt`, `lm`, `guru`) VALUES
(6, '9', '10', 'Pengenalan Komputer dan Perangkat Keras', '2', '1', '4'),
(7, '9', '10', 'Sistem Operasi Komputer', '2', '2', '4'),
(8, '9', '12', 'tentang komputer dan perangkatnya', '2', '1', '7'),
(9, '9', '12', 'softwer ', '2', '2', '7'),
(10, '9', '10', 'Jaringan', '2', '1', '10');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id_log` int(11) NOT NULL,
  `id_siswa` varchar(11) DEFAULT NULL,
  `id_user` varchar(11) DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `text` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `level` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id_log`, `id_siswa`, `id_user`, `type`, `text`, `date`, `level`) VALUES
(1, NULL, '23', 'login', 'Masuk', '2025-08-21 07:48:06', 'staff'),
(2, NULL, '21', 'login', 'Masuk', '2025-08-21 07:55:55', 'guru'),
(3, NULL, '1', 'login', 'Masuk', '2025-08-21 07:58:54', 'admin'),
(4, NULL, '2', 'login', 'Masuk', '2025-08-21 08:04:18', 'guru'),
(5, NULL, '1', 'login', 'Masuk', '2025-08-21 08:11:56', 'admin'),
(6, NULL, '1', 'login', 'Masuk', '2025-08-21 08:20:20', 'admin'),
(7, NULL, '2', 'login', 'Masuk', '2025-08-21 08:24:42', 'guru'),
(8, NULL, '1', 'login', 'Masuk', '2025-08-21 08:38:47', 'admin'),
(9, NULL, '1', 'login', 'Masuk', '2025-08-21 08:59:58', 'admin'),
(10, NULL, '1', 'login', 'Masuk', '2025-08-21 09:24:06', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id` int(11) NOT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `nama_mapel` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id`, `kode`, `nama_mapel`) VALUES
(1, 'PABP', 'Penddidikan Agama dan Budi Pekerti'),
(2, 'PPKn', 'Pendidikan Pancasila dan Kewarganegaraan'),
(3, 'BINDO', 'Bahasa Indonesia'),
(4, 'MTK', 'Matematika'),
(5, 'IPA', 'Ilmu Pengetahuan Alam'),
(6, 'IPS', 'Ilmu Pengetahuan Sosial'),
(7, 'BING', 'Bahasa Inggris'),
(8, 'PJOK', 'Pendidikan Jasmani Olahraga dan Kesehatan'),
(9, 'INFO', 'Informatika'),
(10, 'PRK', 'Prakarya'),
(11, 'BSUND', 'Bahasa Sunda'),
(12, 'TIK', 'Tekhnologi Indormasi dan Komunikasi');

-- --------------------------------------------------------

--
-- Table structure for table `mapel_ijazah`
--

CREATE TABLE `mapel_ijazah` (
  `idmapel` int(11) NOT NULL,
  `tingkat` varchar(50) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `namamapel` varchar(100) DEFAULT NULL,
  `kelompok` varchar(50) DEFAULT NULL,
  `urut` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mapel_ijazah`
--

INSERT INTO `mapel_ijazah` (`idmapel`, `tingkat`, `jurusan`, `kode`, `namamapel`, `kelompok`, `urut`) VALUES
(1, '12', 'UMUM', 'PABP', 'Penddidikan Agama dan Budi Pekerti', 'A', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mapel_rapor`
--

CREATE TABLE `mapel_rapor` (
  `id` int(11) NOT NULL,
  `nourut` int(11) DEFAULT NULL,
  `idmapel` varchar(50) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `level` varchar(11) DEFAULT NULL,
  `kelompok` varchar(11) DEFAULT NULL,
  `sikap` varchar(11) DEFAULT NULL,
  `kuri` varchar(11) DEFAULT NULL,
  `kkm` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mapel_rapor`
--

INSERT INTO `mapel_rapor` (`id`, `nourut`, `idmapel`, `jurusan`, `level`, `kelompok`, `sikap`, `kuri`, `kkm`) VALUES
(1, 1, '1', 'UMUM', '10', 'A', NULL, NULL, NULL),
(2, 2, '2', 'UMUM', '10', 'A', NULL, NULL, NULL),
(3, 3, '3', 'UMUM', '10', 'A', NULL, NULL, NULL),
(4, 4, '4', 'UMUM', '10', 'A', NULL, NULL, NULL),
(5, 5, '5', 'UMUM', '10', 'A', NULL, NULL, NULL),
(6, 6, '6', 'UMUM', '10', 'A', NULL, NULL, NULL),
(7, 7, '7', 'UMUM', '10', 'A', NULL, NULL, NULL),
(8, 8, '8', 'UMUM', '10', 'A', NULL, NULL, NULL),
(9, 9, '9', 'UMUM', '10', 'A', NULL, NULL, NULL),
(10, 10, '12', 'UMUM', '10', 'A', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `idm` int(11) NOT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `kelas` text DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `isimateri` longtext DEFAULT NULL,
  `file` text DEFAULT NULL,
  `youtube` text DEFAULT NULL,
  `link` text DEFAULT NULL,
  `dari` date DEFAULT NULL,
  `sampai` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`idm`, `mapel`, `kelas`, `guru`, `judul`, `isimateri`, `file`, `youtube`, `link`, `dari`, `sampai`) VALUES
(1, '3', 'a:2:{i:0;s:3:\"X-A\";i:1;s:3:\"X-B\";}', '3', 'Teks Anekdot', '<h2>Pengertian Teks Anekdot</h2>\r\n<p>Sederhananya,&nbsp;<strong>anekdot adalah cerita yang berisi rangkaian kalimat-kalimat lucu</strong>. Tapi,&nbsp;<strong>nggak semua cerita lucu bisa dikategorikan sebagai anekdot</strong>, lho!</p>\r\n<p>Berdasarkan Kamus Besar Bahasa Indonesia (KBBI),&nbsp;<strong>teks anekdot adalah cerita singkat yang menarik karena lucu dan menghibur</strong>. Biasanya, teks anekdot menceritakan orang penting atau orang terkenal, dan berdasarkan kejadian sebenarnya.</p>\r\n<p>Jadi, teks anekdot tidak hanya sembarang cerita lucu saja ya, melainkan&nbsp;<strong>berdasarkan kejadian nyata</strong>. Selain itu, teks anekdot juga membicarakan topik secara spesifik dan kadang kala&nbsp;<strong>dibuat berdasarkan&nbsp;pengalaman pribadi</strong>.</p>\r\n<p>Biasanya, teks anekdot tidak menjelaskan cerita secara detail, sehingga dampak dari cerita yang ditampilkan pun berjangka pendek.</p>\r\n<h2>Ciri-Ciri Teks Anekdot</h2>\r\n<p>Berikut ciri-ciri teks anekdot yang perlu kamu tahu. Di antaranya:</p>\r\n<ol>\r\n<li>Bersifat lucu,</li>\r\n<li>Bersifat menggelitik,</li>\r\n<li>Bersifat menyindir,</li>\r\n<li>Bisa berdasarkan pengalaman pribadi/tokoh,</li>\r\n<li>Memiliki tujuan tertentu,</li>\r\n<li>Hampir menyerupai dongeng,</li>\r\n<li>Bisa menceritakan hubungan antara manusia dan hewan.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p>Nah, untuk penjelasan lengkapnya, kamu bisa perhatikan infografik berikut:</p>\r\n<p><img class=\"aligncenter size-medium\" src=\"https://cdn-web-2.ruangguru.com/landing-pages/assets/de6f56e0-6618-495b-accd-7afc26f77218.png\" alt=\"ciri ciri teks anekdot\" /></p>', 'Struktur dan Kebahasaan Teks Anekdot.pdf', 'QgpSSZBvTjE?si=EKLksvgNwiQWuUrO', 'https://drive.google.com/file/d/1j79uCbiojSrsEgDWkz24itwLzgl0Rj67/view?usp=drive_link', '2025-06-16', '2025-06-30'),
(2, '4', 'a:2:{i:0;s:3:\"X-A\";i:1;s:3:\"X-B\";}', '2', 'Mengenal Statistika dan Diagram Penyajian Data', '<h2>Pengertian Data dan Statistika</h2>\r\n<p><strong>Data</strong>&nbsp;<strong>adalah kumpulan informasi yang diperoleh dari suatu pengamatan</strong>. Informasi ini bisa berupa&nbsp;<strong>angka, lambang, atau keadaan objek yang sedang diamati</strong>. Misalnya, pada percobaan Biologi, kamu disuruh mengamati pertumbuhan tanaman kacang hijau.</p>\r\n<p>Setiap beberapa hari sekali, kamu akan mencatat panjang batang tanaman untuk diamati pertumbuhannya. Dari hasil pengamatan itu, diperoleh catatan angka-angka panjang batang tanaman kacang hijau.&nbsp;<em>Nah</em>, angka-angka itulah yang kita sebut sebagai data.</p>\r\n<p>Tabel Pertumbuhan Tanaman Kacang Hijau</p>\r\n<p><img src=\"https://cdn-web.ruangguru.com/landing-pages/assets/hs/tabel%20kacang%20hijau.png\" alt=\"tabel kacang hijau\" width=\"286\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Berdasarkan jenisnya, data dikelompokkan menjadi dua, yaitu:</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>1. Data Kualitatif</strong>&nbsp;</h3>\r\n<p><strong>Data kualitatif adalah</strong>&nbsp;data yang menunjukkan&nbsp;<strong>sifat atau keadaan suatu objek</strong>&nbsp;dan tidak bisa diukur secara numerik.&nbsp;Contoh data, data kualitas beras bulan Februari 2020 yang kurang baik.&nbsp;<em>Nah</em>, data itu menunjukkan keadaan beras yang kurang baik, tapi kita&nbsp;<em>nggak</em>&nbsp;bisa mengukur keadaan kurang baik itu dengan angka.</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>2. Data Kuantitatif</strong>&nbsp;</h3>\r\n<p><strong>Data kuantitatif adalah</strong>&nbsp;data yang menunjukkan<strong>&nbsp;ukuran suatu objek</strong>, disajikan dalam bentuk angka, dan nilainya dapat berubah-ubah.&nbsp;<strong>Contoh data misalnya</strong>, data pertumbuhan panjang tanaman kacang hijau pada tabel di atas. Dari data itu, kita bisa mengetahui perubahan panjang batang kacang hijau dari angka yang diperoleh.</p>\r\n<p>Setelah data terkumpul, data-data itu kemudian akan disusun, diolah, dan dianalisis untuk diperoleh sebuah kesimpulan.<em>&nbsp;Nah</em>, ilmu yang mempelajari bagaimana&nbsp;<strong>cara mengumpulkan, menyusun, menyajikan, menganalisis, dan merepresentasikan data adalah</strong>&nbsp;<strong>statistika</strong>.</p>\r\n<p>Statistika ini banyak diterapkan di banyak bidang,<em>&nbsp;loh</em>. Misalnya dalam bidang ilmu sosial dan kependudukan, statistika dapat digunakan untuk berbagai tujuan, salah satunya sensus penduduk. Selain itu, dalam bidang ekonomi, statistika juga dapat digunakan untuk mengetahui perkembangan ekonomi suatu negara.</p>\r\n<p><img src=\"https://cdn-web.ruangguru.com/landing-pages/assets/hs/sensus%20penduduk.jpg\" alt=\"contoh pengambilan data sensus penduduk\" width=\"600\" /></p>\r\n<p><em>Pelaksanaan sensus penduduk di suatu wilayah (sumber: bisnis.tempo.co)</em></p>\r\n<p>&nbsp;</p>\r\n<p><em>Nah</em>, dari penjelasan di atas, kita jadi tahu&nbsp;<em>nih</em>&nbsp;kalau untuk mengumpulkan dan mengolah data, kita perlu objek yang mau kita amati. Objek ini dibedakan menjadi dua, yaitu populasi dan sampel. Penjelasan lebih lengkapnya bisa kita simak di bawah ini, ya.</p>\r\n<h2>Perbedaan Populasi dan Sampel</h2>\r\n<p><strong>Populasi</strong>&nbsp;<strong>adalah keseluruhan objek yang menjadi sumber data penelitian</strong>. Populasi ini bisa berupa manusia, hewan, tumbuhan, peristiwa, dan lain sebagainya.</p>\r\n<p>Sementara itu,&nbsp;<strong>sampel</strong>&nbsp;<strong>adalah bagian dari populasi yang dapat menggambarkan sifat atau ciri populasi tersebut</strong>. Sampel harus benar-benar dapat mewakili dan mencerminkan karakteristik dari populasi yang menjadi objek penelitian.</p>\r\n<p>Sebagai contoh populasi atau contoh sampel, jikatabel kamu ingin melakukan penelitian terhadap siswa di sekolahmu mengenai kegiatan ekstrakurikuler yang mereka pilih. Oleh karena itu, yang menjadi populasi adalah seluruh siswa di sekolahmu.</p>\r\n<p>Tapi, untuk memudahkan dan mempersingkat waktu, kamu juga masih bisa melakukan penelitian dengan mengambil beberapa sampel saja. Asal, sampel itu masih mewakili populasi yang menjadi objek penelitianmu. Misalnya, yang menjadi sampel adalah teman-teman sekelasmu.</p>', 'stati_mat2_2.pdf', 'bRFsxrujQI?si=4F42ZOX1qRD6QBgX', 'https://drive.google.com/file/d/1j79uCbiojSrsEgDWkz24itwLzgl0Rj67/view?usp=drive_link', '2025-06-16', '2025-06-30');

-- --------------------------------------------------------

--
-- Table structure for table `menjodohkan`
--

CREATE TABLE `menjodohkan` (
  `idbank` varchar(50) DEFAULT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `nomor` varchar(50) DEFAULT NULL,
  `jawab` varchar(50) DEFAULT NULL,
  `warna` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mesin_absen`
--

CREATE TABLE `mesin_absen` (
  `id` int(11) NOT NULL,
  `mesin` varchar(100) DEFAULT NULL,
  `depan` text DEFAULT NULL,
  `belakang` text DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mesin_absen`
--

INSERT INTO `mesin_absen` (`id`, `mesin`, `depan`, `belakang`, `model`) VALUES
(1, 'RFID', 'KARTU.png', 'KARTU.png', 'Landscape'),
(2, 'BARCODE', 'KARTU.png', 'KARTU.png', 'Landscape'),
(3, 'FINGER PRINT', 'KARTU.png', 'KARTU.png', 'Landscape'),
(4, 'FACE RECOGNITION', 'KARTU.png', 'KARTU.png', 'Landscape');

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `id` int(11) NOT NULL,
  `mode` int(11) NOT NULL,
  `jml` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`id`, `mode`, `jml`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 2, 2),
(4, 2, 3),
(5, 2, 4),
(6, 2, 5),
(7, 2, 6),
(8, 2, 7),
(9, 2, 8),
(10, 2, 9),
(11, 2, 10),
(12, 2, 11),
(13, 2, 12);

-- --------------------------------------------------------

--
-- Table structure for table `m_bayar`
--

CREATE TABLE `m_bayar` (
  `id` int(11) NOT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `model` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `angsuran` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_bayar`
--

INSERT INTO `m_bayar` (`id`, `kode`, `nama`, `model`, `jumlah`, `total`, `angsuran`) VALUES
(1, 'SPP', 'SPP', 2, 10, 1200000, 120000),
(2, 'PEM', 'PEMBANGUNAN', 2, 2, 400000, 200000);

-- --------------------------------------------------------

--
-- Table structure for table `m_buku`
--

CREATE TABLE `m_buku` (
  `idm` int(11) NOT NULL,
  `kategori` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `rak` varchar(50) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_buku`
--

INSERT INTO `m_buku` (`idm`, `kategori`, `rak`) VALUES
(1, '000', 'RAK A 1-2'),
(2, '100', 'RAK A 3-4'),
(3, '200', 'RAK B 1-5');

-- --------------------------------------------------------

--
-- Table structure for table `m_dimensi`
--

CREATE TABLE `m_dimensi` (
  `id_dimensi` int(11) NOT NULL,
  `dimensi` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_dimensi`
--

INSERT INTO `m_dimensi` (`id_dimensi`, `dimensi`) VALUES
(1, 'Beriman, Bertakwa Kepada Tuhan Yang Maha Esa, dan Berakhlak Mulia'),
(2, 'Berkebhinekaan Global'),
(3, 'Bergotong-Royong'),
(4, 'Mandiri'),
(5, 'Bernalar Kritis'),
(6, 'Kreatif');

-- --------------------------------------------------------

--
-- Table structure for table `m_elemen`
--

CREATE TABLE `m_elemen` (
  `id_elemen` int(11) NOT NULL,
  `iddimensi` int(11) NOT NULL,
  `elemen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_elemen`
--

INSERT INTO `m_elemen` (`id_elemen`, `iddimensi`, `elemen`) VALUES
(1, 1, 'Akhlak Beragama'),
(2, 1, 'Akhlak Pribadi'),
(3, 1, 'Akhlak Kepada Manusia'),
(4, 1, 'Akhlak Kepada Alam'),
(5, 1, 'Akhlak Bernegara'),
(6, 2, 'Mengenal dan menghargai budaya'),
(7, 2, 'Komunikasi dan interaksi antar budaya'),
(8, 2, 'Refleksi dan bertanggung jawab terhadap pengalaman kebinekaan'),
(9, 2, 'Berkeadilan Sosial'),
(10, 3, 'Kolaborasi'),
(11, 3, 'Kepedulian'),
(12, 3, 'Berbagi'),
(13, 4, 'Pemahaman diri dan situasi yang dihadap'),
(14, 4, 'Regulasi Diri'),
(15, 5, 'Memperoleh dan memproses informasi dan gagasan'),
(16, 5, 'Menganalisis dan mengevaluasi penalaran dan prosedurnya'),
(17, 5, 'Refleksi pemikiran dan proses berpikir'),
(18, 6, 'Menghasilkan gagasan yang orisinal'),
(19, 6, 'Menghasilkan karya dan tindakan yang orisinal'),
(20, 6, 'Memiliki keluwesan berpikir dalam mencari alternatif solusi permasalahan');

-- --------------------------------------------------------

--
-- Table structure for table `m_eskul`
--

CREATE TABLE `m_eskul` (
  `id` int(11) NOT NULL,
  `eskul` varchar(100) DEFAULT NULL,
  `guru` int(11) DEFAULT NULL,
  `jam` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_eskul`
--

INSERT INTO `m_eskul` (`id`, `eskul`, `guru`, `jam`) VALUES
(7, 'Pramuka', 3, NULL),
(8, 'Palang Merah Remaja (PMR)', 2, NULL),
(9, 'Atletik', 4, NULL),
(10, 'Teater', 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_hari`
--

CREATE TABLE `m_hari` (
  `idh` int(11) NOT NULL,
  `hari` varchar(50) NOT NULL,
  `inggris` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_hari`
--

INSERT INTO `m_hari` (`idh`, `hari`, `inggris`) VALUES
(1, 'Senin', 'Mon'),
(2, 'Selasa', 'Tue'),
(3, 'Rabu', 'Wed'),
(4, 'Kamis', 'Thu'),
(5, 'Jumat', 'Fri'),
(6, 'Sabtu', 'Sat'),
(7, 'Minggu', 'Sun');

-- --------------------------------------------------------

--
-- Table structure for table `m_kurikulum`
--

CREATE TABLE `m_kurikulum` (
  `idk` int(11) NOT NULL,
  `nama_kurikulum` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_kurikulum`
--

INSERT INTO `m_kurikulum` (`idk`, `nama_kurikulum`) VALUES
(1, 'K-13'),
(2, 'K-Merdeka');

-- --------------------------------------------------------

--
-- Table structure for table `m_lemari`
--

CREATE TABLE `m_lemari` (
  `id` int(11) NOT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `lokasi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_lemari`
--

INSERT INTO `m_lemari` (`id`, `kode`, `nama`, `lokasi`) VALUES
(2, 'LM-I', 'LEMARI I', 'KANTOR');

-- --------------------------------------------------------

--
-- Table structure for table `m_nilai_proyek`
--

CREATE TABLE `m_nilai_proyek` (
  `nilai` varchar(3) NOT NULL,
  `ket` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_nilai_proyek`
--

INSERT INTO `m_nilai_proyek` (`nilai`, `ket`) VALUES
('BB', 'Belum Berkembang'),
('BSH', 'Berkembang Sesuai Harapan'),
('MB', 'Mulai Berkembang'),
('SB', 'Sangat Berkembang');

-- --------------------------------------------------------

--
-- Table structure for table `m_pangkat`
--

CREATE TABLE `m_pangkat` (
  `golongan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_pangkat`
--

INSERT INTO `m_pangkat` (`golongan`) VALUES
('-'),
('III/a'),
('III/b'),
('III/c'),
('III/d'),
('IV/a'),
('IV/b');

-- --------------------------------------------------------

--
-- Table structure for table `m_pesan`
--

CREATE TABLE `m_pesan` (
  `id` int(11) NOT NULL,
  `pesan1` mediumtext DEFAULT NULL,
  `pesan2` mediumtext DEFAULT NULL,
  `pesan3` mediumtext DEFAULT NULL,
  `pesan4` mediumtext DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_pesan`
--

INSERT INTO `m_pesan` (`id`, `pesan1`, `pesan2`, `pesan3`, `pesan4`, `ket`) VALUES
(1, 'Assalamualaikum wr.wb', 'Kami informasikan Bahwa Ananda :', 'Telah hadir dalam KBM SMP NEW SANDIK menggunakan Absesi Digital pada ', 'Demikian Informasi kami sampaikan untuk menjadi Sarana Monitoring Orang Tua Siswa terhadap putra putrinya. Terima kasih dan salam hangat dari Kami,Pesan ini tidak perlu dibalas dikirim via *SERVER WA GATEWAY SMP NEW SANDIK*', NULL),
(2, 'Assalamualaikum wr.wb.......', 'Kami informasikan Bahwa Ananda :', 'Telah selesai melaksanakan KBM SMP NEW SANDIK menggunakan Absesi Digital pada', 'Demikian Informasi kami sampaikan untuk menjadi Sarana Monitoring Orang Tua Siswa terhadap putra putrinya. Terima kasih dan salam hangat dari Kami,Pesan ini tidak perlu dibalas dikirim via *SERVER WA GATEWAY SMP NEW SANDIK*', NULL),
(3, 'Assalamualaikum wr.wb.', 'Kami informasikan kepada Kepala Sekolah SMP NEW SANDIK Bahwa Sdr/i :', 'Telah hadir dalam KBM SMP NEW SANDIK menggunakan Absesi Digital pada', 'Demikian Informasi kami sampaikan untuk menjadi Sarana Monitoring Kepala Sekolah terhadap para pegawai. Terima kasih dan salam hangat dari Kami,Pesan ini tidak perlu dibalas dikirim via *SERVER WA GATEWAY SMP NEW SANDIK*', NULL),
(4, 'Assalamualaikum wr.wb.......', 'Kami informasikan kepada Kepala Sekolah SMP NEW SANDIK Bahwa Sdr/i :', 'Telah selesai dalam KBM SMP NEW SANDIK menggunakan Absesi Digital pada', 'Demikian Informasi kami sampaikan untuk menjadi Sarana Monitoring Kepala Sekolah terhadap para pegawai. Terima kasih dan salam hangat dari Kami,Pesan ini tidak perlu dibalas dikirim via *SERVER WA GATEWAY SMP NEW SANDIK*', NULL),
(5, 'Assalamualaikum wr.wb', 'Kami informasikan Bahwa Ananda', 'Telah hadir dalam Kegiatan Ekstrakurikuler menggunakan Absesi Digital pada ', 'Demikian Informasi kami sampaikan untuk menjadi Sarana Monitoring Orang Tua Siswa terhadap putra putrinya. Terima kasih dan salam hangat dari Kami,Pesan ini tidak perlu dibalas dikirim via *SERVER WA GATEWAY SMP NEW SANDIK*', NULL),
(6, 'Assalamualaikum wr.wb.......', 'Kami informasikan Bahwa Ananda', 'Telah selesai dalam mengikuti Kegiatan Ekstrakurikuler menggunakan Absesi Digital pada ', 'Demikian Informasi kami sampaikan untuk menjadi Sarana Monitoring Orang Tua Siswa terhadap putra putrinya. Terima kasih dan salam hangat dari Kami,Pesan ini tidak perlu dibalas dikirim via *SERVER WA GATEWAY SMP NEW SANDIK*', NULL),
(7, 'Assalamualaikum wr.wb', 'Kami informasikan kepada Kepala Sekolah SMP NEW SANDIK Bahwa Sdr/i :', 'Telah hadir dalam Kegiatan Ekstrakurikuler SMP NEW SANDIK menggunakan Absesi Digital *RFID* pada', 'Demikian Informasi kami sampaikan untuk menjadi Sarana Monitoring Kepala Sekolah terhadap para pegawai. Terima kasih dan salam hangat dari Kami,Pesan ini tidak perlu dibalas dikirim via *SERVER WA GATEWAY SMP NEW SANDIK*', NULL),
(8, 'Assalamualaikum wr.wb.......', 'Kami informasikan kepada Kepala Sekolah SMP NEW SANDIK Bahwa Sdr/i :', 'Telah selesai dalam Kegiatan Ekstrakurikuler SMP NEW SANDIK menggunakan Absesi Digital pada', 'Demikian Informasi kami sampaikan untuk menjadi Sarana Monitoring Kepala Sekolah terhadap para pegawai. Terima kasih dan salam hangat dari Kami,Pesan ini tidak perlu dibalas dikirim via *SERVER WA GATEWAY SMP NEW SANDIK*', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_proyek`
--

CREATE TABLE `m_proyek` (
  `id` int(11) NOT NULL,
  `ke` varchar(50) NOT NULL,
  `tingkat` varchar(50) DEFAULT NULL,
  `fase` varchar(1) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `judul` mediumtext DEFAULT NULL,
  `deskripsi` mediumtext DEFAULT NULL,
  `semester` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_proyek`
--

INSERT INTO `m_proyek` (`id`, `ke`, `tingkat`, `fase`, `kelas`, `judul`, `deskripsi`, `semester`) VALUES
(1, 'Proyek 1', '10', 'E', 'X-A', ' Memahami Dampak Bullying terhadap Kesehatan Mental', 'Dalam projek ini peserta didik akan mengeksplorasi isu bullying dan dampaknya terhadap kesehatan mental. Mereka akan merancang aturan kelas untuk mencegah bullying dan menumbuhkan interaksi yang penuh hormat antar sesama. Projek ini bertujuan untuk meningkatkan kesadaran terhadap pentingnya menjaga kesehatan mental melalui tindakan preventif terhadap perundungan.', 1),
(2, 'Proyek 2', '10', 'E', 'X-A', 'Mengatasi Dampak Negatif Narkoba di Sekolah', 'Peserta didik akan melakukan penelitian tentang dampak negatif narkoba terhadap kesehatan fisik dan mental, serta mencari solusi untuk mengatasi penyalahgunaan narkoba di lingkungan sekolah. Projek ini bertujuan untuk meningkatkan kesadaran akan bahaya narkoba dan memperkuat budaya hidup sehat.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_rapor`
--

CREATE TABLE `m_rapor` (
  `idr` int(11) NOT NULL,
  `kuri` int(11) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_rapor`
--

INSERT INTO `m_rapor` (`idr`, `kuri`, `model`) VALUES
(1, 1, 'Model 2016'),
(2, 2, 'Model Kurmer');

-- --------------------------------------------------------

--
-- Table structure for table `m_sk`
--

CREATE TABLE `m_sk` (
  `id` int(11) NOT NULL,
  `judul` text DEFAULT NULL,
  `nosk` varchar(50) DEFAULT NULL,
  `tempat` varchar(50) DEFAULT NULL,
  `tglsk` varchar(50) DEFAULT NULL,
  `tahun` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_sk`
--

INSERT INTO `m_sk` (`id`, `judul`, `nosk`, `tempat`, `tglsk`, `tahun`) VALUES
(1, 'SK PENGANGKATAN GTT / GTY', '', 'Bandung', '', NULL),
(2, 'PEMBAGIAN TUGAS', '221/424.SMKSC.a/VI/', 'Jakarta', '07 Juli 2026', NULL),
(3, 'KET AKTIF MENGAJAR', '527/421.5-SMKSC/VII/', 'Jakarta', '07 Juli 2025', NULL),
(4, 'SURAT TUGAS', '613/421.5-SMKSC/', 'Jakarta', '07 Juli 2025', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_spiritual`
--

CREATE TABLE `m_spiritual` (
  `id` int(11) NOT NULL,
  `ket` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_spiritual`
--

INSERT INTO `m_spiritual` (`id`, `ket`) VALUES
(1, 'berdoa sebelum dan sesudah melakukan kegiatan'),
(2, 'menjalankan ibadah sesuai dengan agamanya'),
(3, 'memberi salam pada saat awal dan akhir kegiatan'),
(4, 'bersyukur atas nikmat dan karunia Tuhan Yang Maha Esa'),
(5, 'bersyukur ketika berhasil mengerjakan sesuatu'),
(6, 'berserah diri (tawakal) kepada Tuhan setelah berikhtiar atau melakukan usaha'),
(7, 'memelihara hubungan baik dengan sesama umat');

-- --------------------------------------------------------

--
-- Table structure for table `m_sub_elemen`
--

CREATE TABLE `m_sub_elemen` (
  `id_sub` int(11) NOT NULL,
  `iddimensi` int(11) NOT NULL,
  `idelemen` int(11) NOT NULL,
  `sub_elemen` varchar(100) NOT NULL,
  `A` mediumtext DEFAULT NULL,
  `B` mediumtext DEFAULT NULL,
  `C` mediumtext DEFAULT NULL,
  `D` mediumtext DEFAULT NULL,
  `E` mediumtext DEFAULT NULL,
  `F` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_sub_elemen`
--

INSERT INTO `m_sub_elemen` (`id_sub`, `iddimensi`, `idelemen`, `sub_elemen`, `A`, `B`, `C`, `D`, `E`, `F`) VALUES
(1, 1, 1, 'Mengenal dan Mencintai Tuhan Yang Maha Esa', 'Mengenali sifat-sifat utama Tuhan bahwa Ia Maha Esa dan Ia adalah Sang Pencipta yang Maha Pengasih dan Maha Penyayang dan mengenali kebaikan dirinya sebagai cerminan sifat Tuhan', 'Memahami sifat-sifat Tuhan utama lainnya dan mengaitkan sifatsifat tersebut dengan konsep dirinya dan ciptaan-Nya', 'Memahami berbagai kualitas atau sifat-sifat Tuhan yang diutarakan dalam kitab suci agama masing-masing dan menghubungkan kualitas-kualitas positif Tuhan dengan sikap pribadinya, serta meyakini firman Tuhan sebagai kebenaran', 'Memahami kehadiran Tuhan dalam kehidupan sehari-hari serta mengaitkan pemahamannya tentang kualitas atau sifat-sifat Tuhan dengan konsep peran manusia di bumi sebagai makhluk Tuhan yang bertanggung jawab', 'Menerapkan pemahamannya tentang kualitas atau sifat-sifat Tuhan dalam ritual ibadahnya baik ibadah yang bersifat personal maupun sosial.', NULL),
(2, 1, 1, 'Pemahaman Agama/Kepercayaan', 'Mengenali unsur-unsur utama agama/kepercayaan (ajaran, ritual keagamaan, kitab suci, dan orang suci/ utusan Tuhan YME).', 'Mengenali unsur-unsur utama agama/kepercayaan (simbol-simbol keagamaan dan sejarah agama/ kepercayaan)', 'Memahami berbagai kualitas atau sifat-sifat Tuhan yang diutarakan dalam kitab suci agama masing-masing dan menghubungkan kualitas-kualitas positif Tuhan dengan sikap pribadinya, serta meyakini firman Tuhan sebagai kebenaran', 'Memahami kehadiran Tuhan dalam kehidupan sehari-hari serta mengaitkan pemahamannya tentang kualitas atau sifat-sifat Tuhan dengan konsep peran manusia di bumi sebagai makhluk Tuhan yang bertanggung jawab', 'Memahami struktur organisasi, unsur-unsur utama agama /kepercayaan dalam konteks Indonesia, memahami kontribusi agama/kepercayaan terhadap peradaban dunia.', NULL),
(3, 1, 1, 'Pelaksanaan Ritual Ibadah', 'Terbiasa melaksanakan ibadah sesuai ajaran agama/kepercayaannya', 'Terbiasa melaksanakan ibadah wajib sesuai tuntunan agama/kepercayaannya', 'Melaksanakan ibadah secara rutin sesuai dengan tuntunan agama/kepercayaan, berdoa mandiri, merayakan, dan memahami makna hari-hari besarnya', 'Melaksanakan ibadah secara rutin dan mandiri sesuai dengan tuntunan agama/kepercayaan, serta berpartisipasi pada perayaan hari-hari besarnya\r\n', 'Melaksanakan ibadah secara rutin dan mandiri serta menyadari arti penting ibadah tersebut dan berpartisipasi aktif pada kegiatan keagamaan atau kepercayaan', NULL),
(4, 1, 2, 'Integritas', 'Membiasakan bersikap jujur terhadap diri sendiri dan orang lain dan berani menyampaikan kebenaran atau fakta', 'Membiasakan melakukan refleksi tentang pentingnya bersikap jujur dan berani menyampaikan kebenaran atau fakta', 'Berani dan konsisten menyampaikan kebenaran atau fakta serta memahami konsekuensi-konsekuensinya untuk diri sendiri', 'Berani dan konsisten menyampaikan kebenaran atau fakta serta memahami konsekuensi-konsekuensinya untuk diri sendiri dan orang lain', 'Menyadari bahwa aturan agama dan sosial merupakan aturan yang baik dan menjadi bagian dari diri sehingga bisa menerapkannya secara bijak dan kontekstual', NULL),
(5, 1, 2, 'Merawat Diri secara Fisik, Mental dan Spiritual', 'Memiliki rutinitas sederhana yang diatur secara mandiri dan dijalankan sehari-hari serta menjaga kesehatan dan keselamatan/keamanan diri dalam semua aktivitas kesehariannya.\r\n', 'Mulai membiasakan diri untuk disiplin, rapi, membersihkan dan merawat tubuh, menjaga tingkah laku dan perkataan dalam semua aktivitas kesehariannya', 'Memperhatikan kesehatan jasmani, mental, dan rohani dengan melakukan aktivitas fisik, sosial, dan ibadah', 'Mengidentifikasi pentingnya menjaga keseimbangan kesehatan jasmani, mental, dan rohani serta berupaya menyeimbangkan aktivitas fisik, sosial dan ibadah', 'Melakukan aktivitas fisik, sosial, dan ibadah secara seimbang.', NULL),
(6, 1, 3, 'Mengutamakan persamaan dengan orang lain dan menghargai perbedaan', 'Mengenali hal-hal yang sama dan berbeda yang dimiliki diri dan temannya dalam berbagai hal, serta memberikan respon secara positif.', 'Terbiasa mengidentifikasi hal-hal yang sama dan berbeda yang dimiliki diri dan temannya dalam berbagai hal serta memberikan respon secara positif.', 'Mengidentifikasi kesamaan dengan orang lain sebagai perekat hubungan sosial dan mewujudkannya dalam aktivitas kelompok. Mulai mengenal berbagai kemungkinan interpretasi dan cara pandang yang berbeda ketika dihadapkan dengan dilema.', 'Mengenal perspektif dan emosi/perasaan dari sudut pandang orang atau kelompok lain yang tidak pernah dijumpai atau dikenalnya. Mengutamakan persamaan dan menghargai perbedaan sebagai alat pemersatu dalam keadaan konflik atau perdebatan.', 'Mengidentifikasi hal yang menjadi permasalahan bersama, memberikan alternatif solusi untuk menjembatani perbedaan dengan mengutamakan kemanusiaan.', NULL),
(7, 1, 3, 'Berempati kepada orang lain', 'Mengidentifikasi emosi, minat dan kebutuhan orang-orang terdekat dan meresponnya secara positif.', 'Terbiasa memberikan apresiasi di lingkungan sekolah dan masyarakat', 'Mulai memandang sesuatu dari perspektif orang lain serta mengidentifikasi kebaikan dan kelebihan orang sekitarnya.', 'Memahami perasaan dan sudut pandang orang dan/atau kelompok lain yang tidak pernah dikenalnya', 'Memahami dan menghargai perasaan dan sudut pandang orang dan/atau kelompok lain.', NULL),
(8, 1, 4, 'Memahami Keterhubungan Ekosistem Bumi', 'Mengidentifikasi berbagai ciptaan Tuhan', 'Memahami keterhubungan antara satu ciptaan dengan ciptaan Tuhan yang lainnya', 'Memahami konsep harmoni dan mengidentifikasi adanya saling ketergantungan antara berbagai ciptaan Tuhan', 'Memahami konsep sebab-akibat di antara berbagai ciptaan Tuhan dan mengidentifikasi berbagai sebab yang mempunyai dampak baik atau buruk, langsung maupun tidak langsung, terhadap alam semesta.\r\n', 'Mengidentifikasi masalah lingkungan hidup di tempat ia tinggal dan melakukan langkah-langkah konkrit yang bisa dilakukan untuk menghindari kerusakan dan menjaga keharmonisan ekosistem yang ada di lingkungannya.', NULL),
(9, 1, 4, 'Menjaga Lingkungan Alam Sekitar', 'Membiasakan bersyukur atas lingkungan alam sekitar dan berlatih untuk menjaganya\r\n', 'Terbiasa memahami tindakan-tindakan yang ramah dan tidak ramah lingkungan serta membiasakan diri untuk berperilaku ramah lingkungan\r\n', 'Mewujudkan rasa syukur dengan terbiasa berperilaku ramah lingkungan dan memahami akibat perbuatan tidak ramah lingkungan dalam lingkup kecil maupun besar.\r\n', 'Mewujudkan rasa syukur dengan berinisiatif untuk menyelesaikan permasalahan lingkungan alam sekitarnya dengan mengajukan alternatif solusi dan mulai menerapkan solusi tersebut.\r\n', 'Mewujudkan rasa syukur dengan membangun kesadaran peduli lingkungan alam dengan menciptakan dan mengimplementasikan solusi dari permasalahan lingkungan yang ada.', NULL),
(10, 1, 5, 'Melaksanakan Hak dan Kewajiban sebagai Warga Negara Indonesia', 'Mengidentifikasi hak dan tanggung jawabnya di rumah, sekolah, dan lingkungan sekitar serta kaitannya dengan keimanan kepada Tuhan YME.\r\n\r\n', 'Mengidentifikasi hak dan tanggung jawab orang-orang di sekitarnya serta kaitannya dengan keimanan kepada Tuhan YME.\r\n', 'Mengidentifikasi dan memahami peran, hak, dan kewajiban dasar sebagai warga negara serta kaitannya dengan keimanan kepada Tuhan YME dan secara sadar mempraktikkannya dalam kehidupan sehari-hari.\r\n', 'Menganalisa peran, hak, dan kewajiban sebagai warga negara, memahami perlunya mengutamakan kepentingan umum di atas kepentingan pribadi sebagai wujud dari keimanannya kepada Tuhan YME.\r\n', 'Memperoleh hak dan melaksanakan kewajiban kewarganegaraan dan terbiasa mendahulukan kepentingan umum di atas kepentingan pribadi sebagai wujud dari keimanannya kepada Tuhan YME.', NULL),
(11, 2, 6, 'Mendalami budaya dan identitas budaya', 'Mengidentifikasi dan mendeskripsikan ide-ide tentang dirinya dan beberapa macam kelompok di lingkungan sekitarnya\r\n', 'Mengidentifikasi dan mendeskripsikan ide-ide tentang dirinya dan berbagai macam kelompok di lingkungan sekitarnya, serta cara orang lain berperilaku dan berkomunikasi dengannya.\r\n', 'Mengidentifikasi dan mendeskripsikan keragaman budaya di sekitarnya; serta menjelaskan peran budaya dan Bahasa dalam membentuk identitas dirinya.\r\n', 'Menjelaskan perubahan budaya seiring waktu dan sesuai konteks, baik dalam skala lokal, regional, dan nasional. Menjelaskan identitas diri yang terbentuk dari budaya bangsa.\r\n', 'Menganalisis pengaruh keanggotaan kelompok lokal, regional, nasional, dan global terhadap pembentukan identitas, termasuk identitas dirinya. Mulai menginternalisasi identitas diri sebagai bagian dari budaya bangsa.', NULL),
(12, 2, 6, 'Mengeksplorasi dan membandingkan pengetahuan budaya, kepercayaan, serta praktiknya', 'Mengidentifikasi dan mendeskripsikan praktik keseharian diri dan budayanya\r\n', 'Mengidentifikasi dan membandingkan praktik keseharian diri dan budayanya dengan orang lain di tempat dan waktu/era yang berbeda.\r\n', 'Mendeskripsikan dan membandingkan pengetahuan, kepercayaan, dan praktik dari berbagai kelompok budaya.\r\n', 'Memahami dinamika budaya yang mencakup pemahaman, kepercayaan, dan praktik keseharian dalam konteks personal dan sosial.\r\n', 'Menganalisis dinamika budaya yang mencakup pemahaman, kepercayaan, dan praktik keseharian dalam rentang waktu yang panjang dan konteks yang luas.', NULL),
(13, 2, 6, 'Menumbuhkan rasa menghormati terhadap keanekaragaman budaya', 'Mendeskripsikan pengalaman dan pemahaman hidup bersama-sama dalam kemajemukan.\r\n', 'Memahami bahwa kemajemukan dapat memberikan kesempatan untuk mendapatkan pengalaman dan pemahaman yang baru.\r\n', 'Mengidentifikasi peluang dan tantangan yang muncul dari keragaman budaya di Indonesia.\r\n', 'Memahami pentingnya melestarikan dan merayakan tradisi budaya untuk mengembangkan identitas pribadi, sosial, dan bangsa Indonesia serta mulai berupaya melestarikan budaya dalam kehidupan sehari-hari.\r\n', 'Memahami pentingnya saling menghormati dalam mempromosikan pertukaran budaya dan kolaborasi dalam dunia yang saling terhubung serta menunjukkannya dalam perilaku.', NULL),
(14, 2, 7, 'Berkomunikasi antar budaya', 'Mengenali bahwa diri dan orang lain menggunakan kata, gambar, dan bahasa tubuh yang dapat memiliki makna yang berbeda di lingkungan sekitarnya\r\n', 'Mendeskripsikan penggunaan kata, tulisan dan bahasa tubuh yang memiliki makna yang berbeda di lingkungan sekitarnya dan dalam suatu budaya tertentu.\r\n', 'Memahami persamaan dan perbedaan cara komunikasi baik di dalam maupun antar kelompok budaya.\r\n', 'Mengeksplorasi pengaruh budaya terhadap penggunaan bahasa serta dapat mengenali risiko dalam berkomunikasi antar budaya.\r\n', 'Menganalisis hubungan antara bahasa, pikiran, dan konteks untuk memahami dan meningkatkan komunikasi antar budaya yang berbeda-beda.', NULL),
(15, 2, 7, 'Mempertimbangkan dan menumbuhkan berbagai perspektif', 'Mengekspresikan pandangannya terhadap topik yang umum dan mendengarkan sudut pandang orang lain yang berbeda dari dirinya dalam lingkungan keluarga dan sekolah\r\n', 'Mengekspresikan pandangannya terhadap topik yang umum dan dapat mengidentifikasi sudut pandang orang lain. Mendengarkan dan membayangkan sudut pandang orang lain yang berbeda dari dirinya pada situasi di ranah sekolah, keluarga, dan lingkungan sekitar.\r\n', 'Membandingkan beragam perspektif untuk memahami permasalahan sehari-hari. Membayangkan dan mendeskripsikan situasi komunitas yang berbeda dengan dirinya ke dalam situasi dirinya dalam konteks lokal dan regional.\r\n', 'Menjelaskan asumsi-asumsi yang mendasari perspektif tertentu. Membayangkan dan mendeskripsikan perasaan serta motivasi komunitas yang berbeda dengan dirinya yang berada dalam situasi yang sulit.\r\n', 'Menyajikan pandangan yang seimbang mengenai permasalahan yang dapat menimbulkan pertentangan pendapat. Memperlakukan orang lain dan budaya yang berbeda darinya dalam posisi setara dengan diri dan budayanya, serta bersedia memberikan pertolongan ketika orang lain berada dalam situasi sulit.', NULL),
(16, 2, 8, 'Refleksi terhadap pengalaman kebinekaan', 'Menyebutkan apa yang telah dipelajari tentang orang lain dari interaksinya dengan kemajemukan budaya di lingkungan sekolah dan rumah\r\n', 'Menyebutkan apa yang telah dipelajari tentang orang lain dari interaksinya dengan kemajemukan budaya di lingkungan sekitar.\r\n', 'Menjelaskan apa yang telah dipelajari dari interaksi dan pengalaman dirinya dalam lingkungan yang beragam.\r\n', 'Merefleksikan secara kritis gambaran berbagai kelompok budaya yang ditemui dan cara meresponnya.\r\n', 'Merefleksikan secara kritis dampak dari pengalaman hidup di lingkungan yang beragam terkait dengan perilaku, kepercayaan serta tindakannya terhadap orang lain.', NULL),
(17, 2, 8, 'Menghilangkan stereotip dan prasangka', 'Mengenali perbedaan tiap orang atau kelompok dan menganggapnya sebagai kewajaran\r\n', 'Mengkonfirmasi dan mengklarifikasi stereotip dan prasangka yang dimilikinya tentang orang atau kelompokdi sekitarnya untuk mendapatkan pemahaman yang lebih baik\r\n', 'Mengkonfirmasi dan mengklarifikasi stereotip dan prasangka yang dimilikinya tentang orang atau kelompok di sekitarnya untuk mendapatkan pemahaman yang lebih baik serta mengidentifikasi pengaruhnya terhadap individu dan kelompok di lingkungan sekitarnya\r\n', 'Mengkonfirmasi, mengklarifikasi dan menunjukkan sikapmenolak stereotip serta prasangka tentang gambaran identitas kelompok dan suku bangsa.\r\n', 'Mengkritik dan menolak stereotip serta prasangka tentang gambaran identitas kelompok dan suku bangsa serta berinisiatif mengajak orang lain untuk menolak stereotip dan prasangka.', NULL),
(18, 2, 8, 'Menyelaraskan perbedaan budaya', 'Mengidentifikasi perbedaan-perbedaan budaya yang konkrit di lingkungan sekitar\r\n', 'Mengenali bahwa perbedaan budaya mempengaruhi pemahaman antarindividu.\r\n', 'Mencari titik temu nilai budaya yang beragam untuk menyelesaikan permasalahan bersama.\r\n', 'Mengkonfirmasi, mengklarifikasi dan menunjukkan sikapmenolak stereotip serta prasangka tentang gambaran identitas kelompok dan suku bangsa.\r\n', 'Mengetahui tantangan dan keuntungan hidup dalam lingkungan dengan budaya yang beragam, serta memahami pentingnya kerukunan antar budaya dalam kehidupan bersama yang harmonis.', NULL),
(19, 2, 9, 'Aktif membangun masyarakat yang inklusif, adil, dan berkelanjutan\r\n', 'Menjalin pertemanan tanpa memandang perbedaan agama, suku, ras, jenis kelamin, dan perbedaan lainnya, dan mengenal masalah-masalah sosial, ekonomi, dan lingkungan di lingkungan sekitarnya\r\n', 'Mengidentifikasi cara berkontribusi terhadap lingkungan sekolah, rumah dan lingkungan sekitarnya yang inklusif, adil dan berkelanjutan\r\n', 'Membandingkan beberapa tindakan dan praktik perbaikan lingkungan sekolah yang inklusif, adil, dan berkelanjutan, dengan mempertimbangkan dampaknya secara jangka panjang terhadap manusia, alam, dan masyarakat\r\n', 'Mengidentifikasi masalah yang ada di sekitarnya sebagai akibat dari pilihan yang dilakukan oleh manusia, serta dampak masalah tersebut terhadap sistem ekonomi, sosial dan lingkungan, serta mencari solusi yang memperhatikan prinsip-prinsip keadilan terhadap manusia, alam dan masyarakat\r\n', 'Berinisiatif melakukan suatu tindakan berdasarkan identifikasi masalah untuk mempromosikan keadilan, keamanan ekonomi, menopang ekologi dan demokrasi sambil menghindari kerugian jangka panjang terhadap manusia, alam ataupun masyarakat.\r\n', NULL),
(20, 2, 9, 'Berpartisipasi dalam proses pengambilan keputusan bersama', 'Mengidentifikasi pilihan-pilihan berdasarkan kebutuhan dirinya dan orang lain ketika membuat keputusan\r\n', 'Berpartisipasi menentukan beberapa pilihan untuk keperluan bersama berdasarkan kriteria sederhana\r\n', 'Berpartisipasi dalam menentukan kriteria yang disepakati bersama untuk menentukan pilihan dan keputusan untuk kepentingan bersama\r\n', 'Berpartisipasi dalam menentukan kriteria dan metode yang disepakati bersama untuk menentukan pilihan dan keputusan untuk kepentingan bersama melalui proses bertukar pikiran secara cermat dan terbuka dengan panduan pendidik\r\n', 'Berpartisipasi menentukan pilihan dan keputusan untuk kepentingan bersama melalui proses bertukar pikiran secara cermat dan terbuka secara mandiri\r\n', NULL),
(21, 2, 9, 'Memahami peran individu dalam demokrasi', 'Mengidentifikasi peran, hak dan kewajiban warga dalam masyarakat demokratis\r\n', 'Memahami konsep hak dan kewajiban, serta implikasinya terhadap perilakunya.\r\n', 'Memahami konsep hak dan kewajiban, serta implikasinya terhadap perilakunya. Menggunakan konsep ini untuk menjelaskan perilaku diri dan orang sekitarnya\r\n', 'Memahami konsep hak dan kewajiban serta implikasinya terhadap ekspresi dan perilakunya. Mulai aktif mengambil sikap dan langkah untuk melindungi hak orang/kelompok lain.\r\n', 'Memahami konsep hak dan kewajiban, serta implikasinya terhadap ekspresi dan perilakunya. Mulai mencari solusi untuk dilema terkait konsep hak dan kewajibannya.\r\n', NULL),
(22, 3, 10, 'Kerja sama', 'Menerima dan melaksanakan tugas serta peran yang diberikan kelompok dalam sebuah kegiatan bersama.\r\n', 'Menampilkan tindakan yang sesuai dengan harapan dan tujuan kelompok.\r\n', 'Menunjukkan ekspektasi (harapan) positif kepada orang lain dalam rangka mencapai tujuan kelompok di lingkungan sekitar (sekolah dan rumah).\r\n', 'Menyelaraskan tindakan sendiri dengan tindakan orang lain untuk melaksanakan kegiatan dan mencapai tujuan kelompok di lingkungan sekitar, serta memberi semangat kepada orang lain untuk bekerja efektif dan mencapai tujuan bersama.\r\n', 'Membangun tim dan mengelola kerjasama untuk mencapai tujuan bersama sesuai dengan target yang sudah ditentukan.\r\n', NULL),
(23, 3, 10, 'Komunikasi untuk mencapai tujuan bersama', 'Memahami informasi sederhana dari orang lain dan menyampaikan informasi sederhana kepada orang lain menggunakan kata-katanya sendiri.\r\n', 'Memahami informasi yang disampaikan (ungkapan pikiran, perasaan, dan keprihatinan) orang lain dan menyampaikan informasi secara akurat menggunakan berbagai simbol dan media\r\n', 'Memahami informasi dari berbagai sumber dan menyampaikan pesan menggunakan berbagai simbol dan media secara efektif kepada orang lain untuk mencapai tujuan bersama\r\n', 'Memahami informasi, gagasan, emosi, keterampilan dan keprihatinan yang diungkapkan oleh orang lain menggunakan berbagai simbol dan media secara efektif, serta memanfaatkannya untuk meningkatkan kualitas hubungan interpersonal guna mencapai tujuan bersama.\r\n', 'Aktif menyimak untuk memahami dan menganalisis informasi, gagasan, emosi, keterampilan dan keprihatinan yang disampaikan oleh orang lain dan kelompok menggunakan berbagai simbol dan media secara efektif, serta menggunakan berbagai strategi komunikasi untuk menyelesaikan masalah guna mencapai berbagai tujuan bersama.\r\n', NULL),
(24, 3, 10, 'Saling-ketergantungan positif', 'Mengenali kebutuhan-kebutuhan diri sendiri yang memerlukan orang lain dalam pemenuhannya.\r\n', 'Menyadari bahwa setiap orang membutuhkan orang lain dalam memenuhi kebutuhannya dan perlunya saling membantu\r\n', 'Menyadari bahwa meskipun setiap orang memiliki otonominya masing-masing, setiap orang membutuhkan orang lain dalam memenuhi kebutuhannya.\r\n', 'Mendemonstrasikan kegiatan kelompok yang menunjukkan bahwa anggota kelompok dengan kelebihan dan kekurangannya masing-masing perlu dan dapat saling membantu memenuhi kebutuhan.\r\n', 'Menyelaraskan kapasitas kelompok agar para anggota kelompok dapat saling membantu satu sama lain memenuhi kebutuhan mereka baik secara individual maupun kolektif.\r\n', NULL),
(25, 3, 10, 'Koordinasi Sosial', 'Melaksanakan aktivitas kelompok sesuai dengan kesepakatan bersama dengan bimbingan, dan saling mengingatkan adanya kesepakatan tersebut.\r\n', 'Menyadari bahwa dirinya memiliki peran yang berbeda dengan orang lain/temannya, serta mengetahui konsekuensi perannya terhadap ketercapaian tujuan.\r\n', 'Menyelaraskan tindakannya sesuai dengan perannya dan mempertimbangkan peran orang lain untuk mencapai tujuan bersama.\r\n', 'Membagi peran dan menyelaraskan tindakan dalam kelompok serta menjaga tindakan agar selaras untuk mencapai tujuan bersama.\r\n', 'Menyelaraskan dan menjaga tindakan diri dan anggota kelompok agar sesuai antara satu dengan lainnya serta menerima konsekuensi tindakannya dalam rangka mencapai tujuan bersama.\r\n', NULL),
(26, 3, 11, 'Tanggap terhadap lingkungan Sosial', 'Peka dan mengapresiasi orang-orang di lingkungan sekitar, kemudian melakukan tindakan sederhana untuk mengungkapkannya.\r\n', 'Peka dan mengapresiasi orang-orang di lingkungan sekitar, kemudian melakukan tindakan untuk menjaga keselarasan dalam berelasi dengan orang lain.\r\n', 'Tanggap terhadap lingkungan sosial sesuai dengan tuntutan peran sosialnya dan menjaga keselarasan dalam berelasi dengan orang lain.\r\n', 'Tanggap terhadap lingkungan sosial sesuai dengan tuntutan peran sosialnya dan berkontribusi sesuai dengan kebutuhan masyarakat.\r\n', 'Tanggap terhadap lingkungan sosial sesuai dengan tuntutan peran sosialnya dan berkontribusi sesuai dengan kebutuhan masyarakat untuk menghasilkan keadaan yang lebih baik.\r\n', NULL),
(27, 3, 11, 'Persepsi sosial', 'Mengenali berbagai reaksi orang lain di lingkungan sekitar dan penyebabnya.\r\n', 'Memahami berbagai alasan orang lain menampilkan respon tertentu\r\n', 'Menerapkan pengetahuan mengenai berbagai reaksi orang lain dan penyebabnya dalam konteks keluarga, sekolah, serta pertemanan dengan sebaya.\r\n', 'Menggunakan pengetahuan tentang sebab dan alasan orang lain menampilkan reaksi tertentu untuk menentukan tindakan yang tepat agar orang lain menampilkan respon yang diharapkan.\r\n', 'Melakukan tindakan yang tepat agar orang lain merespon sesuai dengan yang diharapkan dalam rangka penyelesaian pekerjaan dan pencapaian tujuan.\r\n', NULL),
(28, 3, 12, 'Berbagi', 'Memberi dan menerima hal yang dianggap berharga dan penting kepada/dari orang-orang di lingkungan sekitar.\r\n', '\"\r\nMemberi dan menerima hal yang dianggap penting dan berharga kepada/dari orang-orang di lingkungan sekitar baik yang dikenal maupun tidak dikenal.\"\r\n', 'Memberi dan menerima hal yang dianggap penting dan berharga kepada/dari orang-orang di lingkungan luas/masyarakat baik yang dikenal maupun tidak dikenal.\r\n', '\"\r\nMengupayakan memberi hal yang dianggap penting dan berharga kepada masyarakat yang membutuhkan bantuan di sekitar tempat tinggal\"\r\n', 'Mengupayakan memberi hal yang dianggap penting dan berharga kepada orang-orang yang membutuhkan di masyarakat yang lebih luas (negara, dunia).\r\n', NULL),
(29, 4, 13, 'Mengenali kualitas dan minat diri serta tantangan yang dihadapi', 'Mengidentifikasi dan menggambarkan kemampuan, prestasi, dan ketertarikannya secara subjektif\r\n', 'Mengidentifikasi kemampuan, prestasi, dan ketertarikannya serta tantangan yang dihadapi berdasarkan kejadian-kejadian yang dialaminya dalam kehidupan sehari-hari.\r\n', 'Menggambarkan pengaruh kualitas dirinya terhadap pelaksanaan dan hasil belajar; serta mengidentifikasi kemampuan yang ingin dikembangkan dengan mempertimbangkan tantangan yang dihadapinya dan umpan balik dari orang dewasa\r\n', 'Membuat penilaian yang realistis terhadap kemampuan dan minat , serta prioritas pengembangan diri berdasarkan pengalaman belajar dan aktivitas lain yang dilakukannya.\r\n', 'Mengidentifikasi kekuatan dan tantangan-tantangan yang akan dihadapi pada konteks pembelajaran, sosial dan pekerjaan yang akan dipilihnya di masa depan.\r\n', NULL),
(30, 4, 13, 'Mengembangkan refleksi diri', 'Melakukan refleksi untuk mengidentifikasi kekuatan dan kelemahan, serta prestasi dirinya.\r\n', 'Melakukan refleksi untuk mengidentifikasi kekuatan, kelemahan, dan prestasi dirinya, serta situasi yang dapat mendukung dan menghambat pembelajaran dan pengembangan dirinya\r\n', 'Melakukan refleksi untuk mengidentifikasi faktor-faktor di dalam maupun di luar dirinya yang dapat mendukung/menghambatnya dalam belajar dan mengembangkan diri; serta mengidentifikasi cara-cara untuk mengatasi kekurangannya.\r\n', 'Memonitor kemajuan belajar yang dicapai serta memprediksi tantangan pribadi dan akademik yang akan muncul berlandaskan pada pengalamannya untuk mempertimbangkan strategi belajar yang sesuai.\r\n', 'Melakukan refleksi terhadap umpan balik dari teman, guru, dan orang dewasa lainnya, serta informasi-informasi karir yang akan dipilihnya untuk menganalisis karakteristik dan keterampilan yang dibutuhkan dalam menunjang atau menghambat karirnya di masa depan.\r\n', NULL),
(31, 4, 14, 'Regulasi emosi', 'Mengidentifikasi perbedaan emosi yang dirasakannya dan situasi-situasi yang menyebabkan-nya; serta mengekspresi-kan secara wajar\r\n', 'Mengetahui adanya pengaruh orang lain, situasi, dan peristiwa yang terjadi terhadap emosi yang dirasakannya; serta berupaya untuk mengekspresikan emosi secara tepat dengan mempertimbangkan perasaan dan kebutuhan orang lain disekitarnya\r\n', 'Memahami perbedaan emosi yang dirasakan dan dampaknya terhadap proses belajar dan interaksinya dengan orang lain; serta mencoba cara-cara yang sesuai untuk mengelola emosi agar dapat menunjang aktivitas belajar dan interaksinya dengan orang lain.\r\n', 'Memahami dan memprediksi konsekuensi dari emosi dan pengekspresiannya dan menyusun langkah-langkah untuk mengelola emosinya dalam pelaksanaan belajar dan berinteraksi dengan orang lain.\r\n', 'Mengendalikan dan menyesuaikan emosi yang dirasakannya secara tepat ketika menghadapi situasi yang menantang dan menekan pada konteks belajar, relasi, dan pekerjaan.\r\n', NULL),
(32, 4, 14, 'Penetapan tujuan belajar, prestasi, dan pengembangan diri serta rencana strategis untuk mencapainya', 'Menetapkan target belajar dan merencanakan waktu dan tindakan belajar yang akan dilakukannya.\r\n', 'Menjelaskan pentingnya memiliki tujuan dan berkomitmen dalam mencapainya serta mengeksplorasi langkah-langkah yang sesuai untuk mencapainya\r\n', 'Menilai faktor-faktor (kekuatan dan kelemahan) yang ada pada dirinya dalam upaya mencapai tujuan belajar, prestasi, dan pengembangan dirinya serta mencoba berbagai strategi untuk mencapainya.\r\n', 'Merancang strategi yang sesuai untuk menunjang pencapaian tujuan belajar, prestasi, dan pengembangan diri dengan mempertimbangkan kekuatan dan kelemahan dirinya, serta situasi yang dihadapi.\r\n', 'Mengevaluasi efektivitas strategi pembelajaran digunakannya, serta menetapkan tujuan belajar, prestasi, dan pengembangan diri secara spesifik dan merancang strategi yang sesuai untuk menghadapi tantangan-tantangan yang akan dihadapi pada konteks pembelajaran, sosial dan pekerjaan yang akan dipilihnya di masa depan.\r\n', NULL),
(33, 4, 14, 'Menunjukkan inisiatif dan bekerja secara mandiri', 'Berinisiatif untuk mengerjakan tugas-tugas rutin secara mandiri dibawah pengawasan dan dukungan orang dewasa\r\n', 'Mempertimbangkan, memilih dan mengadopsi berbagai strategi dan mengidentifikasi sumber bantuan yang diperlukan serta berinisiatif menjalankannya untuk mendapatkan hasil belajar yang diinginkan.\r\n', 'Memahami arti penting bekerja secara mandiri serta inisiatif untuk melakukannya dalam menunjang pembelajaran dan pengembangan dirinya\r\n', 'Mengkritisi efektivitas dirinya dalam bekerja secara mandiri dengan mengidentifikasi hal-hal yang menunjang maupun menghambat dalam mencapai tujuan.\r\n', 'Menentukan prioritas pribadi, berinisiatif mencari dan mengembangkan pengetahuan dan keterampilan yang spesifik sesuai tujuan di masa depan.\r\n', NULL),
(34, 4, 14, 'Mengembangkan pengendalian dan disiplin diri', 'Melaksanakan kegiatan belajar di kelas dan menyelesaikan tugas-tugas dalam waktu yang telah disepakati.\r\n', 'Menjelaskan pentingnya mengatur diri secara mandiri dan mulai menjalankan kegiatan dan tugas yang telah sepakati secara mandiri\r\n', 'Mengidentifikasi faktor-faktor yang dapat mempengaruhi kemampuan dalam mengelola diri dalam pelaksanaan aktivitas belajar dan pengembangan dirinya.\r\n', 'Berkomitmen dan menjaga konsistensi pencapaian tujuan yang telah direncanakannya untuk mencapai tujuan belajar dan pengembangan diri yang diharapkannya\r\n', 'Melakukan tindakan-tindakan secara konsisten guna mencapai tujuan karir dan pengembangan dirinya di masa depan, serta berusaha mencari dan melakukan alternatif tindakan lain yang dapat dilakukan ketika menemui hambatan.\r\n', NULL),
(35, 4, 14, 'Percaya diri, tangguh (resilient), dan adaptif', 'Berani mencoba dan adaptif menghadapi situasi baru serta bertahan mengerjakan tugas-tugas yang disepakati hingga tuntas\r\n', 'Tetap bertahan mengerjakan tugas ketika dihadapkan dengan tantangan dan berusaha menyesuaikan strateginya ketika upaya sebelumnya tidak berhasil.\r\n', 'Menyusun, menyesuaikan, dan mengujicobakan berbagai strategi dan cara kerjanya untuk membantu dirinya dalam penyelesaian tugas yang menantang\r\n', 'Membuat rencana baru dengan mengadaptasi, dan memodifikasi strategi yang sudah dibuat ketika upaya sebelumnya tidak berhasil, serta menjalankan kembali tugasnya dengan keyakinan baru.\r\n', 'Menyesuaikan dan mulai menjalankan rencana dan strategi pengembangan dirinya dengan mempertimbangkan minat dan tuntutan pada konteks belajar maupun pekerjaan yang akan dijalaninya di masa depan, serta berusaha untuk mengatasi tantangan-tantangan yang ditemui.\r\n\r\n\r\nProfil Pelajar Pancasila\r\nPilih Fase\r\n\r\n\r\nFase E\r\n\r\nDimensi & Elemen\r\nBeriman, Bertakwa Kepada Tuhan Yang Maha Esa, dan Berakhlak Mulia\r\nBerkebinekaan Global\r\nBergotong-Royong\r\nMandiri\r\nElemen\r\n\r\n\r\nPemahaman diri dan situasi yang dihadapi\r\n\r\n\r\nRegulasi Diri\r\n\r\nBernalar Kritis\r\nKreatif\"\r\n', NULL),
(36, 5, 15, 'Mengajukan pertanyaan', 'Mengajukan pertanyaan untuk menjawab keingintahuannya dan untuk mengidentifikasi suatu permasalahan mengenai dirinya dan lingkungan sekitarnya.\r\n', 'Mengajukan pertanyaan untuk mengidentifikasi suatu permasalahan dan mengkonfirmasi pemahaman terhadap suatu permasalahan mengenai dirinya dan lingkungan sekitarnya.\r\n', 'Mengajukan pertanyaan untuk membandingkan berbagai informasi dan untuk menambah pengetahuannya.\r\n', 'Mengajukan pertanyaan untuk klarifikasi dan interpretasi informasi, serta mencari tahu penyebab dan konsekuensi dari informasi tersebut.\r\n', 'Mengajukan pertanyaan untuk menganalisis secara kritis permasalahan yang kompleks dan abstrak.\r\n', NULL),
(37, 5, 15, 'Mengidentifikasi, mengklarifikasi, dan mengolah informasi dan gagasan', 'Mengidentifikasi dan mengolah informasi dan gagasan\r\n', 'Mengumpulkan, mengklasifikasikan, membandingkan dan memilih informasi dan gagasan dari berbagai sumber.\r\n', 'Mengumpulkan, mengklasifikasikan, membandingkan, dan memilih informasi dari berbagai sumber, serta memperjelas informasi dengan bimbingan orang dewasa.\r\n', 'Mengidentifikasi, mengklarifikasi, dan menganalisis informasi yang relevan serta memprioritaskan beberapa gagasan tertentu.\r\n', 'Secara kritis mengklarifikasi serta menganalisis gagasan dan informasi yang kompleks dan abstrak dari berbagai sumber. Memprioritaskan suatu gagasan yang paling relevan dari hasil klarifikasi dan analisis.\r\n', NULL),
(38, 5, 16, 'Menganalisis dan mengevaluasi penalaran dan prosedurnya', 'Melakukan penalaran konkrit dan memberikan alasan dalam menyelesaikan masalah dan mengambil keputusan\r\n', 'Menjelaskan alasan yang relevan dalam penyelesaian masalah dan pengambilan keputusan\r\n', 'Menjelaskan alasan yang relevan dan akurat dalam penyelesaian masalah dan pengambilan keputusan\r\n', 'Membuktikan penalaran dengan berbagai argumen dalam mengambil suatu simpulan atau keputusan.\r\n', 'Menganalisis dan mengevaluasi penalaran yang digunakannya dalam menemukan dan mencari solusi serta mengambil keputusan.\r\n', NULL),
(39, 5, 17, 'Merefleksi dan mengevaluasi pemikirannya sendiri', 'Menyampaikan apa yang sedang dipikirkan secara terperinci\r\n', 'Menyampaikan apa yang sedang dipikirkan dan menjelaskan alasan dari hal yang dipikirkan\r\n', 'Memberikan alasan dari hal yang dipikirkan, serta menyadari kemungkinan adanya bias pada pemikirannya sendiri\r\n\r\nProfil Pelajar Pancasila\r\nPilih Fase\r\n\r\n\r\nFase C\r\n\r\nDimensi & Elemen\"\r\n', 'Menjelaskan asumsi yang digunakan, menyadari kecenderungan dan konsekuensi bias pada pemikirannya, serta berusaha mempertimbangkan perspektif yang berbeda.\r\n', 'Menjelaskan alasan untuk mendukung pemikirannya dan memikirkan pandangan yang mungkin berlawanan dengan pemikirannya dan mengubah pemikirannya jika diperlukan.\r\n', NULL),
(40, 6, 18, 'Menghasilkan gagasan yang orisinal', 'Menggabungkan beberapa gagasan menjadi ide atau gagasan imajinatif yang bermakna untuk mengekspresikan pikiran dan/atau perasaannya.\r\n', 'Memunculkan gagasan imajinatif baru yang bermakna dari beberapa gagasan yang berbeda sebagai ekspresi pikiran dan/atau perasaannya.\r\n', 'Mengembangkan gagasan yang ia miliki untuk membuat kombinasi hal yang baru dan imajinatif untuk mengekspresikan pikiran dan/atau perasaannya.\r\n', 'Menghubungkan gagasan yang ia miliki dengan informasi atau gagasan baru untuk menghasilkan kombinasi gagasan baru dan imajinatif untuk mengekspresikan pikiran dan/atau perasaannya.\r\n', 'Menghasilkan gagasan yang beragam untuk mengekspresikan pikiran dan/atau perasaannya, menilai gagasannya, serta memikirkan segala risikonya dengan mempertimbangkan banyak perspektif seperti etika dan nilai kemanusiaan ketika gagasannya direalisasikan.\r\n', NULL),
(41, 6, 19, 'Menghasilkan karya dan tindakan yang orisinal', 'Mengeksplorasi dan mengekspresikan pikiran dan/atau perasaannya dalam bentuk karya dan/atau tindakan serta mengapresiasi karya dan tindakan yang dihasilkan\r\n', 'Mengeksplorasi dan mengekspresikan pikiran dan/atau perasaannya sesuai dengan minat dan kesukaannya dalam bentuk karya dan/atau tindakan serta mengapresiasi karya dan tindakan yang dihasilkan\r\n', 'Mengeksplorasi dan mengekspresikan pikiran dan/atau perasaannya sesuai dengan minat dan kesukaannya dalam bentuk karya dan/atau tindakan serta mengapresiasi dan mengkritik karya dan tindakan yang dihasilkan\r\n', 'Mengeksplorasi dan mengekspresikan pikiran dan/atau perasaannya dalam bentuk karya dan/atau tindakan, serta mengevaluasinya dan mempertimbangkan dampaknya bagi orang lain\r\n', 'Mengeksplorasi dan mengekspresikan pikiran dan/atau perasaannya dalam bentuk karya dan/atau tindakan, serta mengevaluasinya dan mempertimbangkan dampak dan risikonya bagi diri dan lingkungannya dengan menggunakan berbagai perspektif.\r\n', NULL),
(42, 6, 20, 'Memiliki keluwesan berpikir dalam mencari alternatif solusi permasalahan', 'Mengidentifikasi gagasan-gagasan kreatif untuk menghadapi situasi dan permasalahan.\r\n', 'Membandingkan gagasan-gagasan kreatif untuk menghadapi situasi dan permasalahan.\r\n', 'berupaya mencari solusi alternatif saat pendekatan yang diambil tidak berhasil berdasarkan identifikasi terhadap situasi\r\n', 'Menghasilkan solusi alternatif dengan mengadaptasi berbagai gagasan dan umpan balik untuk menghadapi situasi dan permasalahan\r\n', 'Bereksperimen dengan berbagai pilihan secara kreatif untuk memodifikasi gagasan sesuai dengan perubahan situasi.\r\n', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_tugas`
--

CREATE TABLE `m_tugas` (
  `idt` int(11) NOT NULL,
  `tugas` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_tugas`
--

INSERT INTO `m_tugas` (`idt`, `tugas`) VALUES
(1, 'MENGAJAR'),
(2, 'KURIKULUM'),
(3, 'BENDAHARA'),
(4, 'OPERATOR'),
(5, 'ESKUL'),
(6, 'WALI KELAS'),
(7, 'BK'),
(8, 'PEMBINA OSIS');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `id_ujian` int(11) DEFAULT NULL,
  `id_bank` int(11) DEFAULT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `kode_ujian` varchar(30) DEFAULT NULL,
  `ujian_mulai` varchar(20) DEFAULT NULL,
  `ujian_berlangsung` varchar(20) DEFAULT NULL,
  `ujian_selesai` varchar(20) DEFAULT NULL,
  `jml_benar` int(11) DEFAULT NULL,
  `benar_esai` int(11) NOT NULL DEFAULT 0,
  `benar_multi` int(11) NOT NULL DEFAULT 0,
  `benar_bs` int(11) NOT NULL DEFAULT 0,
  `benar_urut` int(11) NOT NULL DEFAULT 0,
  `skor` varchar(255) DEFAULT NULL,
  `skor_esai` varchar(255) DEFAULT NULL,
  `skor_multi` varchar(255) DEFAULT NULL,
  `skor_bs` varchar(255) DEFAULT NULL,
  `skor_urut` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `makskor` int(11) DEFAULT NULL,
  `nilai` mediumtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `ipaddress` varchar(20) DEFAULT NULL,
  `hasil` int(11) DEFAULT NULL,
  `jawaban_pg` mediumtext DEFAULT NULL,
  `jawaban_esai` longtext DEFAULT NULL,
  `jawaban_multi` mediumtext DEFAULT NULL,
  `jawaban_bs` mediumtext DEFAULT NULL,
  `jawaban_urut` mediumtext DEFAULT NULL,
  `nilai_esai` int(11) DEFAULT NULL,
  `nilai_esai2` mediumtext DEFAULT NULL,
  `online` int(11) NOT NULL DEFAULT 0,
  `id_soal` longtext DEFAULT NULL,
  `id_opsi` longtext DEFAULT NULL,
  `id_esai` mediumtext DEFAULT NULL,
  `blok` int(11) NOT NULL DEFAULT 0,
  `server` varchar(50) DEFAULT NULL,
  `browser` int(11) DEFAULT 0,
  `jenis_browser` varchar(50) DEFAULT NULL,
  `jumjawab` varchar(11) DEFAULT NULL,
  `jumsoal` varchar(11) DEFAULT NULL,
  `katrol` varchar(11) DEFAULT NULL,
  `hapus` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_formatif`
--

CREATE TABLE `nilai_formatif` (
  `id` int(11) NOT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `mapel` varchar(50) DEFAULT NULL,
  `tinggi` longtext DEFAULT NULL,
  `rendah` longtext DEFAULT NULL,
  `smt` varchar(11) DEFAULT NULL,
  `tp` varchar(50) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_harian`
--

CREATE TABLE `nilai_harian` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(11) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  `nilai` varchar(11) DEFAULT NULL,
  `smt` varchar(11) DEFAULT NULL,
  `tp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nilai_harian`
--

INSERT INTO `nilai_harian` (`id`, `tanggal`, `mapel`, `idsiswa`, `kelas`, `guru`, `nilai`, `smt`, `tp`) VALUES
(1, '2025-06-12', '3', '1', 'X-A', '3', '85', '1', '2024/2025'),
(2, '2025-06-12', '3', '2', 'X-A', '3', '0', '1', '2024/2025'),
(3, '2025-06-12', '3', '3', 'X-A', '3', '0', '1', '2024/2025'),
(4, '2025-06-12', '3', '4', 'X-A', '3', '0', '1', '2024/2025'),
(5, '2025-06-12', '3', '5', 'X-A', '3', '0', '1', '2024/2025'),
(6, '2025-06-12', '3', '6', 'X-A', '3', '0', '1', '2024/2025'),
(7, '2025-06-12', '3', '7', 'X-A', '3', '0', '1', '2024/2025'),
(8, '2025-06-12', '3', '8', 'X-A', '3', '0', '1', '2024/2025'),
(9, '2025-06-12', '3', '9', 'X-A', '3', '0', '1', '2024/2025'),
(10, '2025-06-12', '3', '10', 'X-A', '3', '0', '1', '2024/2025'),
(11, '2025-06-12', '3', '11', 'X-A', '3', '0', '1', '2024/2025'),
(12, '2025-06-12', '3', '12', 'X-A', '3', '0', '1', '2024/2025'),
(13, '2025-06-12', '3', '13', 'X-A', '3', '0', '1', '2024/2025'),
(14, '2025-06-12', '3', '14', 'X-A', '3', '0', '1', '2024/2025'),
(15, '2025-06-12', '3', '15', 'X-A', '3', '0', '1', '2024/2025'),
(16, '2025-06-12', '3', '16', 'X-A', '3', '0', '1', '2024/2025'),
(17, '2025-06-12', '3', '17', 'X-A', '3', '0', '1', '2024/2025'),
(18, '2025-06-12', '3', '18', 'X-A', '3', '0', '1', '2024/2025'),
(19, '2025-06-12', '3', '19', 'X-A', '3', '0', '1', '2024/2025'),
(20, '2025-06-12', '3', '20', 'X-A', '3', '0', '1', '2024/2025'),
(21, '2025-06-12', '3', '21', 'X-A', '3', '0', '1', '2024/2025'),
(22, '2025-06-12', '3', '22', 'X-A', '3', '0', '1', '2024/2025'),
(23, '2025-06-12', '3', '23', 'X-A', '3', '0', '1', '2024/2025'),
(24, '2025-06-12', '3', '24', 'X-A', '3', '0', '1', '2024/2025'),
(25, '2025-06-12', '3', '25', 'X-A', '3', '0', '1', '2024/2025'),
(26, '2025-06-12', '3', '26', 'X-A', '3', '0', '1', '2024/2025'),
(27, '2025-06-12', '3', '27', 'X-A', '3', '0', '1', '2024/2025'),
(28, '2025-06-12', '3', '28', 'X-A', '3', '0', '1', '2024/2025'),
(29, '2025-06-12', '3', '29', 'X-A', '3', '0', '1', '2024/2025'),
(30, '2025-06-12', '3', '30', 'X-A', '3', '0', '1', '2024/2025'),
(31, '2025-06-12', '3', '31', 'X-A', '3', '0', '1', '2024/2025'),
(32, '2025-06-12', '3', '32', 'X-A', '3', '0', '1', '2024/2025'),
(33, '2025-06-12', '3', '33', 'X-A', '3', '0', '1', '2024/2025'),
(34, '2025-06-12', '3', '34', 'X-A', '3', '0', '1', '2024/2025'),
(35, '2025-06-12', '3', '35', 'X-A', '3', '0', '1', '2024/2025'),
(36, '2025-06-12', '3', '36', 'X-A', '3', '0', '1', '2024/2025'),
(37, '2025-06-12', '3', '37', 'X-A', '3', '0', '1', '2024/2025'),
(38, '2025-06-12', '3', '1', 'X-A', '3', '85', '1', '2024/2025'),
(39, '2025-06-12', '3', '2', 'X-A', '3', '0', '1', '2024/2025'),
(40, '2025-06-12', '3', '3', 'X-A', '3', '0', '1', '2024/2025'),
(41, '2025-06-12', '3', '4', 'X-A', '3', '0', '1', '2024/2025'),
(42, '2025-06-12', '3', '5', 'X-A', '3', '0', '1', '2024/2025'),
(43, '2025-06-12', '3', '6', 'X-A', '3', '0', '1', '2024/2025'),
(44, '2025-06-12', '3', '7', 'X-A', '3', '0', '1', '2024/2025'),
(45, '2025-06-12', '3', '8', 'X-A', '3', '0', '1', '2024/2025'),
(46, '2025-06-12', '3', '9', 'X-A', '3', '0', '1', '2024/2025'),
(47, '2025-06-12', '3', '10', 'X-A', '3', '0', '1', '2024/2025'),
(48, '2025-06-12', '3', '11', 'X-A', '3', '0', '1', '2024/2025'),
(49, '2025-06-12', '3', '12', 'X-A', '3', '0', '1', '2024/2025'),
(50, '2025-06-12', '3', '13', 'X-A', '3', '0', '1', '2024/2025'),
(51, '2025-06-12', '3', '14', 'X-A', '3', '0', '1', '2024/2025'),
(52, '2025-06-12', '3', '15', 'X-A', '3', '0', '1', '2024/2025'),
(53, '2025-06-12', '3', '16', 'X-A', '3', '0', '1', '2024/2025'),
(54, '2025-06-12', '3', '17', 'X-A', '3', '0', '1', '2024/2025'),
(55, '2025-06-12', '3', '18', 'X-A', '3', '0', '1', '2024/2025'),
(56, '2025-06-12', '3', '19', 'X-A', '3', '0', '1', '2024/2025'),
(57, '2025-06-12', '3', '20', 'X-A', '3', '0', '1', '2024/2025'),
(58, '2025-06-12', '3', '21', 'X-A', '3', '0', '1', '2024/2025'),
(59, '2025-06-12', '3', '22', 'X-A', '3', '0', '1', '2024/2025'),
(60, '2025-06-12', '3', '23', 'X-A', '3', '0', '1', '2024/2025'),
(61, '2025-06-12', '3', '24', 'X-A', '3', '0', '1', '2024/2025'),
(62, '2025-06-12', '3', '25', 'X-A', '3', '0', '1', '2024/2025'),
(63, '2025-06-12', '3', '26', 'X-A', '3', '0', '1', '2024/2025'),
(64, '2025-06-12', '3', '27', 'X-A', '3', '0', '1', '2024/2025'),
(65, '2025-06-12', '3', '28', 'X-A', '3', '0', '1', '2024/2025'),
(66, '2025-06-12', '3', '29', 'X-A', '3', '0', '1', '2024/2025'),
(67, '2025-06-12', '3', '30', 'X-A', '3', '0', '1', '2024/2025'),
(68, '2025-06-12', '3', '31', 'X-A', '3', '0', '1', '2024/2025'),
(69, '2025-06-12', '3', '32', 'X-A', '3', '0', '1', '2024/2025'),
(70, '2025-06-12', '3', '33', 'X-A', '3', '0', '1', '2024/2025'),
(71, '2025-06-12', '3', '34', 'X-A', '3', '0', '1', '2024/2025'),
(72, '2025-06-12', '3', '35', 'X-A', '3', '0', '1', '2024/2025'),
(73, '2025-06-12', '3', '36', 'X-A', '3', '0', '1', '2024/2025'),
(74, '2025-06-12', '3', '37', 'X-A', '3', '0', '1', '2024/2025'),
(75, '2025-06-12', '3', '1', 'X-A', '3', '85', '1', '2024/2025'),
(76, '2025-06-12', '3', '2', 'X-A', '3', '0', '1', '2024/2025'),
(77, '2025-06-12', '3', '3', 'X-A', '3', '0', '1', '2024/2025'),
(78, '2025-06-12', '3', '4', 'X-A', '3', '0', '1', '2024/2025'),
(79, '2025-06-12', '3', '5', 'X-A', '3', '0', '1', '2024/2025'),
(80, '2025-06-12', '3', '6', 'X-A', '3', '0', '1', '2024/2025'),
(81, '2025-06-12', '3', '7', 'X-A', '3', '0', '1', '2024/2025'),
(82, '2025-06-12', '3', '8', 'X-A', '3', '0', '1', '2024/2025'),
(83, '2025-06-12', '3', '9', 'X-A', '3', '0', '1', '2024/2025'),
(84, '2025-06-12', '3', '10', 'X-A', '3', '0', '1', '2024/2025'),
(85, '2025-06-12', '3', '11', 'X-A', '3', '0', '1', '2024/2025'),
(86, '2025-06-12', '3', '12', 'X-A', '3', '0', '1', '2024/2025'),
(87, '2025-06-12', '3', '13', 'X-A', '3', '0', '1', '2024/2025'),
(88, '2025-06-12', '3', '14', 'X-A', '3', '0', '1', '2024/2025'),
(89, '2025-06-12', '3', '15', 'X-A', '3', '0', '1', '2024/2025'),
(90, '2025-06-12', '3', '16', 'X-A', '3', '0', '1', '2024/2025'),
(91, '2025-06-12', '3', '17', 'X-A', '3', '0', '1', '2024/2025'),
(92, '2025-06-12', '3', '18', 'X-A', '3', '0', '1', '2024/2025'),
(93, '2025-06-12', '3', '19', 'X-A', '3', '0', '1', '2024/2025'),
(94, '2025-06-12', '3', '20', 'X-A', '3', '0', '1', '2024/2025'),
(95, '2025-06-12', '3', '21', 'X-A', '3', '0', '1', '2024/2025'),
(96, '2025-06-12', '3', '22', 'X-A', '3', '0', '1', '2024/2025'),
(97, '2025-06-12', '3', '23', 'X-A', '3', '0', '1', '2024/2025'),
(98, '2025-06-12', '3', '24', 'X-A', '3', '0', '1', '2024/2025'),
(99, '2025-06-12', '3', '25', 'X-A', '3', '0', '1', '2024/2025'),
(100, '2025-06-12', '3', '26', 'X-A', '3', '0', '1', '2024/2025'),
(101, '2025-06-12', '3', '27', 'X-A', '3', '0', '1', '2024/2025'),
(102, '2025-06-12', '3', '28', 'X-A', '3', '0', '1', '2024/2025'),
(103, '2025-06-12', '3', '29', 'X-A', '3', '0', '1', '2024/2025'),
(104, '2025-06-12', '3', '30', 'X-A', '3', '0', '1', '2024/2025'),
(105, '2025-06-12', '3', '31', 'X-A', '3', '0', '1', '2024/2025'),
(106, '2025-06-12', '3', '32', 'X-A', '3', '0', '1', '2024/2025'),
(107, '2025-06-12', '3', '33', 'X-A', '3', '0', '1', '2024/2025'),
(108, '2025-06-12', '3', '34', 'X-A', '3', '0', '1', '2024/2025'),
(109, '2025-06-12', '3', '35', 'X-A', '3', '0', '1', '2024/2025'),
(110, '2025-06-12', '3', '36', 'X-A', '3', '0', '1', '2024/2025'),
(111, '2025-06-12', '3', '37', 'X-A', '3', '0', '1', '2024/2025'),
(112, '2025-06-12', '3', '1', 'X-A', '3', '85', '1', '2024/2025'),
(113, '2025-06-12', '3', '2', 'X-A', '3', '0', '1', '2024/2025'),
(114, '2025-06-12', '3', '3', 'X-A', '3', '0', '1', '2024/2025'),
(115, '2025-06-12', '3', '4', 'X-A', '3', '0', '1', '2024/2025'),
(116, '2025-06-12', '3', '5', 'X-A', '3', '0', '1', '2024/2025'),
(117, '2025-06-12', '3', '6', 'X-A', '3', '0', '1', '2024/2025'),
(118, '2025-06-12', '3', '7', 'X-A', '3', '0', '1', '2024/2025'),
(119, '2025-06-12', '3', '8', 'X-A', '3', '0', '1', '2024/2025'),
(120, '2025-06-12', '3', '9', 'X-A', '3', '0', '1', '2024/2025'),
(121, '2025-06-12', '3', '10', 'X-A', '3', '0', '1', '2024/2025'),
(122, '2025-06-12', '3', '11', 'X-A', '3', '0', '1', '2024/2025'),
(123, '2025-06-12', '3', '12', 'X-A', '3', '0', '1', '2024/2025'),
(124, '2025-06-12', '3', '13', 'X-A', '3', '0', '1', '2024/2025'),
(125, '2025-06-12', '3', '14', 'X-A', '3', '0', '1', '2024/2025'),
(126, '2025-06-12', '3', '15', 'X-A', '3', '0', '1', '2024/2025'),
(127, '2025-06-12', '3', '16', 'X-A', '3', '0', '1', '2024/2025'),
(128, '2025-06-12', '3', '17', 'X-A', '3', '0', '1', '2024/2025'),
(129, '2025-06-12', '3', '18', 'X-A', '3', '0', '1', '2024/2025'),
(130, '2025-06-12', '3', '19', 'X-A', '3', '0', '1', '2024/2025'),
(131, '2025-06-12', '3', '20', 'X-A', '3', '0', '1', '2024/2025'),
(132, '2025-06-12', '3', '21', 'X-A', '3', '0', '1', '2024/2025'),
(133, '2025-06-12', '3', '22', 'X-A', '3', '0', '1', '2024/2025'),
(134, '2025-06-12', '3', '23', 'X-A', '3', '0', '1', '2024/2025'),
(135, '2025-06-12', '3', '24', 'X-A', '3', '0', '1', '2024/2025'),
(136, '2025-06-12', '3', '25', 'X-A', '3', '0', '1', '2024/2025'),
(137, '2025-06-12', '3', '26', 'X-A', '3', '0', '1', '2024/2025'),
(138, '2025-06-12', '3', '27', 'X-A', '3', '0', '1', '2024/2025'),
(139, '2025-06-12', '3', '28', 'X-A', '3', '0', '1', '2024/2025'),
(140, '2025-06-12', '3', '29', 'X-A', '3', '0', '1', '2024/2025'),
(141, '2025-06-12', '3', '30', 'X-A', '3', '0', '1', '2024/2025'),
(142, '2025-06-12', '3', '31', 'X-A', '3', '0', '1', '2024/2025'),
(143, '2025-06-12', '3', '32', 'X-A', '3', '0', '1', '2024/2025'),
(144, '2025-06-12', '3', '33', 'X-A', '3', '0', '1', '2024/2025'),
(145, '2025-06-12', '3', '34', 'X-A', '3', '0', '1', '2024/2025'),
(146, '2025-06-12', '3', '35', 'X-A', '3', '0', '1', '2024/2025'),
(147, '2025-06-12', '3', '36', 'X-A', '3', '0', '1', '2024/2025'),
(148, '2025-06-12', '3', '37', 'X-A', '3', '0', '1', '2024/2025'),
(149, '2025-06-12', '3', '1', 'X-A', '3', '85', '1', '2024/2025'),
(150, '2025-06-12', '3', '2', 'X-A', '3', '0', '1', '2024/2025'),
(151, '2025-06-12', '3', '3', 'X-A', '3', '0', '1', '2024/2025'),
(152, '2025-06-12', '3', '4', 'X-A', '3', '0', '1', '2024/2025'),
(153, '2025-06-12', '3', '5', 'X-A', '3', '0', '1', '2024/2025'),
(154, '2025-06-12', '3', '6', 'X-A', '3', '0', '1', '2024/2025'),
(155, '2025-06-12', '3', '7', 'X-A', '3', '0', '1', '2024/2025'),
(156, '2025-06-12', '3', '8', 'X-A', '3', '0', '1', '2024/2025'),
(157, '2025-06-12', '3', '9', 'X-A', '3', '0', '1', '2024/2025'),
(158, '2025-06-12', '3', '10', 'X-A', '3', '0', '1', '2024/2025'),
(159, '2025-06-12', '3', '11', 'X-A', '3', '0', '1', '2024/2025'),
(160, '2025-06-12', '3', '12', 'X-A', '3', '0', '1', '2024/2025'),
(161, '2025-06-12', '3', '13', 'X-A', '3', '0', '1', '2024/2025'),
(162, '2025-06-12', '3', '14', 'X-A', '3', '0', '1', '2024/2025'),
(163, '2025-06-12', '3', '15', 'X-A', '3', '0', '1', '2024/2025'),
(164, '2025-06-12', '3', '16', 'X-A', '3', '0', '1', '2024/2025'),
(165, '2025-06-12', '3', '17', 'X-A', '3', '0', '1', '2024/2025'),
(166, '2025-06-12', '3', '18', 'X-A', '3', '0', '1', '2024/2025'),
(167, '2025-06-12', '3', '19', 'X-A', '3', '0', '1', '2024/2025'),
(168, '2025-06-12', '3', '20', 'X-A', '3', '0', '1', '2024/2025'),
(169, '2025-06-12', '3', '21', 'X-A', '3', '0', '1', '2024/2025'),
(170, '2025-06-12', '3', '22', 'X-A', '3', '0', '1', '2024/2025'),
(171, '2025-06-12', '3', '23', 'X-A', '3', '0', '1', '2024/2025'),
(172, '2025-06-12', '3', '24', 'X-A', '3', '0', '1', '2024/2025'),
(173, '2025-06-12', '3', '25', 'X-A', '3', '0', '1', '2024/2025'),
(174, '2025-06-12', '3', '26', 'X-A', '3', '0', '1', '2024/2025'),
(175, '2025-06-12', '3', '27', 'X-A', '3', '0', '1', '2024/2025'),
(176, '2025-06-12', '3', '28', 'X-A', '3', '0', '1', '2024/2025'),
(177, '2025-06-12', '3', '29', 'X-A', '3', '0', '1', '2024/2025'),
(178, '2025-06-12', '3', '30', 'X-A', '3', '0', '1', '2024/2025'),
(179, '2025-06-12', '3', '31', 'X-A', '3', '0', '1', '2024/2025'),
(180, '2025-06-12', '3', '32', 'X-A', '3', '0', '1', '2024/2025'),
(181, '2025-06-12', '3', '33', 'X-A', '3', '0', '1', '2024/2025'),
(182, '2025-06-12', '3', '34', 'X-A', '3', '0', '1', '2024/2025'),
(183, '2025-06-12', '3', '35', 'X-A', '3', '0', '1', '2024/2025'),
(184, '2025-06-12', '3', '36', 'X-A', '3', '0', '1', '2024/2025'),
(185, '2025-06-12', '3', '37', 'X-A', '3', '0', '1', '2024/2025'),
(186, '2025-06-12', '3', '1', 'X-A', '3', '85', '1', '2024/2025'),
(187, '2025-06-12', '3', '2', 'X-A', '3', '0', '1', '2024/2025'),
(188, '2025-06-12', '3', '3', 'X-A', '3', '0', '1', '2024/2025'),
(189, '2025-06-12', '3', '4', 'X-A', '3', '0', '1', '2024/2025'),
(190, '2025-06-12', '3', '5', 'X-A', '3', '0', '1', '2024/2025'),
(191, '2025-06-12', '3', '6', 'X-A', '3', '0', '1', '2024/2025'),
(192, '2025-06-12', '3', '7', 'X-A', '3', '0', '1', '2024/2025'),
(193, '2025-06-12', '3', '8', 'X-A', '3', '0', '1', '2024/2025'),
(194, '2025-06-12', '3', '9', 'X-A', '3', '0', '1', '2024/2025'),
(195, '2025-06-12', '3', '10', 'X-A', '3', '0', '1', '2024/2025'),
(196, '2025-06-12', '3', '11', 'X-A', '3', '0', '1', '2024/2025'),
(197, '2025-06-12', '3', '12', 'X-A', '3', '0', '1', '2024/2025'),
(198, '2025-06-12', '3', '13', 'X-A', '3', '0', '1', '2024/2025'),
(199, '2025-06-12', '3', '14', 'X-A', '3', '0', '1', '2024/2025'),
(200, '2025-06-12', '3', '15', 'X-A', '3', '0', '1', '2024/2025'),
(201, '2025-06-12', '3', '16', 'X-A', '3', '0', '1', '2024/2025'),
(202, '2025-06-12', '3', '17', 'X-A', '3', '0', '1', '2024/2025'),
(203, '2025-06-12', '3', '18', 'X-A', '3', '0', '1', '2024/2025'),
(204, '2025-06-12', '3', '19', 'X-A', '3', '0', '1', '2024/2025'),
(205, '2025-06-12', '3', '20', 'X-A', '3', '0', '1', '2024/2025'),
(206, '2025-06-12', '3', '21', 'X-A', '3', '0', '1', '2024/2025'),
(207, '2025-06-12', '3', '22', 'X-A', '3', '0', '1', '2024/2025'),
(208, '2025-06-12', '3', '23', 'X-A', '3', '0', '1', '2024/2025'),
(209, '2025-06-12', '3', '24', 'X-A', '3', '0', '1', '2024/2025'),
(210, '2025-06-12', '3', '25', 'X-A', '3', '0', '1', '2024/2025'),
(211, '2025-06-12', '3', '26', 'X-A', '3', '0', '1', '2024/2025'),
(212, '2025-06-12', '3', '27', 'X-A', '3', '0', '1', '2024/2025'),
(213, '2025-06-12', '3', '28', 'X-A', '3', '0', '1', '2024/2025'),
(214, '2025-06-12', '3', '29', 'X-A', '3', '0', '1', '2024/2025'),
(215, '2025-06-12', '3', '30', 'X-A', '3', '0', '1', '2024/2025'),
(216, '2025-06-12', '3', '31', 'X-A', '3', '0', '1', '2024/2025'),
(217, '2025-06-12', '3', '32', 'X-A', '3', '0', '1', '2024/2025'),
(218, '2025-06-12', '3', '33', 'X-A', '3', '0', '1', '2024/2025'),
(219, '2025-06-12', '3', '34', 'X-A', '3', '0', '1', '2024/2025'),
(220, '2025-06-12', '3', '35', 'X-A', '3', '0', '1', '2024/2025'),
(221, '2025-06-12', '3', '36', 'X-A', '3', '0', '1', '2024/2025'),
(222, '2025-06-12', '3', '37', 'X-A', '3', '0', '1', '2024/2025'),
(223, '2025-06-12', '3', '1', 'X-A', '3', '2', '1', '2024/2025'),
(224, '2025-06-12', '3', '2', 'X-A', '3', '0', '1', '2024/2025'),
(225, '2025-06-12', '3', '3', 'X-A', '3', '0', '1', '2024/2025'),
(226, '2025-06-12', '3', '4', 'X-A', '3', '0', '1', '2024/2025'),
(227, '2025-06-12', '3', '5', 'X-A', '3', '0', '1', '2024/2025'),
(228, '2025-06-12', '3', '6', 'X-A', '3', '0', '1', '2024/2025'),
(229, '2025-06-12', '3', '7', 'X-A', '3', '0', '1', '2024/2025'),
(230, '2025-06-12', '3', '8', 'X-A', '3', '0', '1', '2024/2025'),
(231, '2025-06-12', '3', '9', 'X-A', '3', '0', '1', '2024/2025'),
(232, '2025-06-12', '3', '10', 'X-A', '3', '0', '1', '2024/2025'),
(233, '2025-06-12', '3', '11', 'X-A', '3', '0', '1', '2024/2025'),
(234, '2025-06-12', '3', '12', 'X-A', '3', '0', '1', '2024/2025'),
(235, '2025-06-12', '3', '13', 'X-A', '3', '0', '1', '2024/2025'),
(236, '2025-06-12', '3', '14', 'X-A', '3', '0', '1', '2024/2025'),
(237, '2025-06-12', '3', '15', 'X-A', '3', '0', '1', '2024/2025'),
(238, '2025-06-12', '3', '16', 'X-A', '3', '0', '1', '2024/2025'),
(239, '2025-06-12', '3', '17', 'X-A', '3', '0', '1', '2024/2025'),
(240, '2025-06-12', '3', '18', 'X-A', '3', '0', '1', '2024/2025'),
(241, '2025-06-12', '3', '19', 'X-A', '3', '0', '1', '2024/2025'),
(242, '2025-06-12', '3', '20', 'X-A', '3', '0', '1', '2024/2025'),
(243, '2025-06-12', '3', '21', 'X-A', '3', '0', '1', '2024/2025'),
(244, '2025-06-12', '3', '22', 'X-A', '3', '0', '1', '2024/2025'),
(245, '2025-06-12', '3', '23', 'X-A', '3', '0', '1', '2024/2025'),
(246, '2025-06-12', '3', '24', 'X-A', '3', '0', '1', '2024/2025'),
(247, '2025-06-12', '3', '25', 'X-A', '3', '0', '1', '2024/2025'),
(248, '2025-06-12', '3', '26', 'X-A', '3', '0', '1', '2024/2025'),
(249, '2025-06-12', '3', '27', 'X-A', '3', '0', '1', '2024/2025'),
(250, '2025-06-12', '3', '28', 'X-A', '3', '0', '1', '2024/2025'),
(251, '2025-06-12', '3', '29', 'X-A', '3', '0', '1', '2024/2025'),
(252, '2025-06-12', '3', '30', 'X-A', '3', '0', '1', '2024/2025'),
(253, '2025-06-12', '3', '31', 'X-A', '3', '0', '1', '2024/2025'),
(254, '2025-06-12', '3', '32', 'X-A', '3', '0', '1', '2024/2025'),
(255, '2025-06-12', '3', '33', 'X-A', '3', '0', '1', '2024/2025'),
(256, '2025-06-12', '3', '34', 'X-A', '3', '0', '1', '2024/2025'),
(257, '2025-06-12', '3', '35', 'X-A', '3', '0', '1', '2024/2025'),
(258, '2025-06-12', '3', '36', 'X-A', '3', '0', '1', '2024/2025'),
(259, '2025-06-12', '3', '37', 'X-A', '3', '0', '1', '2024/2025'),
(260, '2025-06-16', '5', '1', 'X-A', '2', '80', '1', '2024/2025'),
(261, '2025-06-16', '5', '2', 'X-A', '2', '85', '1', '2024/2025'),
(262, '2025-06-16', '5', '3', 'X-A', '2', '80', '1', '2024/2025'),
(263, '2025-06-16', '5', '4', 'X-A', '2', '88', '1', '2024/2025'),
(264, '2025-06-16', '5', '5', 'X-A', '2', '86', '1', '2024/2025'),
(265, '2025-06-16', '5', '6', 'X-A', '2', '84', '1', '2024/2025'),
(266, '2025-06-16', '5', '7', 'X-A', '2', '86', '1', '2024/2025'),
(267, '2025-06-16', '5', '8', 'X-A', '2', '96', '1', '2024/2025'),
(268, '2025-06-16', '5', '9', 'X-A', '2', '95', '1', '2024/2025'),
(269, '2025-06-16', '5', '10', 'X-A', '2', '93', '1', '2024/2025'),
(270, '2025-06-16', '5', '11', 'X-A', '2', '89', '1', '2024/2025'),
(271, '2025-06-16', '5', '12', 'X-A', '2', '97', '1', '2024/2025'),
(272, '2025-06-16', '5', '13', 'X-A', '2', '92', '1', '2024/2025'),
(273, '2025-06-16', '5', '14', 'X-A', '2', '55', '1', '2024/2025'),
(274, '2025-06-16', '5', '15', 'X-A', '2', '76', '1', '2024/2025'),
(275, '2025-06-16', '5', '16', 'X-A', '2', '69', '1', '2024/2025'),
(276, '2025-06-16', '5', '17', 'X-A', '2', '89', '1', '2024/2025'),
(277, '2025-06-16', '5', '18', 'X-A', '2', '90', '1', '2024/2025'),
(278, '2025-06-16', '5', '19', 'X-A', '2', '92', '1', '2024/2025'),
(279, '2025-06-16', '5', '20', 'X-A', '2', '92', '1', '2024/2025'),
(280, '2025-06-16', '5', '21', 'X-A', '2', '90', '1', '2024/2025'),
(281, '2025-06-16', '5', '22', 'X-A', '2', '79', '1', '2024/2025'),
(282, '2025-06-16', '5', '23', 'X-A', '2', '87', '1', '2024/2025'),
(283, '2025-06-16', '5', '24', 'X-A', '2', '89', '1', '2024/2025'),
(284, '2025-06-16', '5', '25', 'X-A', '2', '75', '1', '2024/2025');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_k13`
--

CREATE TABLE `nilai_k13` (
  `id` int(11) NOT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `desmin` text DEFAULT NULL,
  `desmax` text DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  `smt` varchar(11) DEFAULT NULL,
  `tp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_proses`
--

CREATE TABLE `nilai_proses` (
  `idpros` int(11) NOT NULL,
  `idsiswa` int(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `proyek_ke` varchar(50) DEFAULT NULL,
  `catatan` mediumtext DEFAULT NULL,
  `semester` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nilai_proses`
--

INSERT INTO `nilai_proses` (`idpros`, `idsiswa`, `kelas`, `proyek_ke`, `catatan`, `semester`) VALUES
(1, 1, 'X-A', 'Proyek 1', 'Kepedulian ABIWANTA AGUNG untuk menjual barang yang berkualitas patut diapresiasi. Tidak hanya mengutamakan keuntungan, tetapi juga fungsi dari barang itu sendiri.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_proyek`
--

CREATE TABLE `nilai_proyek` (
  `idn` int(11) NOT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `idsiswa` int(11) DEFAULT NULL,
  `idproyek` int(11) DEFAULT NULL,
  `proyek` int(11) DEFAULT NULL,
  `nilai` varchar(5) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nilai_proyek`
--

INSERT INTO `nilai_proyek` (`idn`, `kelas`, `idsiswa`, `idproyek`, `proyek`, `nilai`, `semester`) VALUES
(1, 'X-A', 1, 1, 1, 'SB', 1),
(2, 'X-A', 2, 1, 1, 'MB', 1),
(3, 'X-A', 3, 1, 1, 'SB', 1),
(4, 'X-A', 4, 1, 1, 'BB', 1),
(5, 'X-A', 5, 1, 1, 'BB', 1),
(6, 'X-A', 6, 1, 1, 'BB', 1),
(7, 'X-A', 7, 1, 1, 'BB', 1),
(8, 'X-A', 8, 1, 1, 'BB', 1),
(9, 'X-A', 9, 1, 1, 'BB', 1),
(10, 'X-A', 10, 1, 1, 'BB', 1),
(11, 'X-A', 11, 1, 1, 'BB', 1),
(12, 'X-A', 12, 1, 1, 'BB', 1),
(13, 'X-A', 13, 1, 1, 'BB', 1),
(14, 'X-A', 14, 1, 1, 'BB', 1),
(15, 'X-A', 15, 1, 1, 'BB', 1),
(16, 'X-A', 16, 1, 1, 'BB', 1),
(17, 'X-A', 17, 1, 1, 'BB', 1),
(18, 'X-A', 18, 1, 1, 'BB', 1),
(19, 'X-A', 19, 1, 1, 'BB', 1),
(20, 'X-A', 20, 1, 1, 'BB', 1),
(21, 'X-A', 21, 1, 1, 'BB', 1),
(22, 'X-A', 22, 1, 1, 'BB', 1),
(23, 'X-A', 23, 1, 1, 'BB', 1),
(24, 'X-A', 24, 1, 1, 'BB', 1),
(25, 'X-A', 25, 1, 1, 'BB', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_rapor`
--

CREATE TABLE `nilai_rapor` (
  `id` int(11) NOT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `level` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  `ki` varchar(11) DEFAULT NULL,
  `nilai` varchar(11) DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `smt` varchar(11) DEFAULT NULL,
  `tp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_refleksi`
--

CREATE TABLE `nilai_refleksi` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `nilai` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nilai_refleksi`
--

INSERT INTO `nilai_refleksi` (`id`, `tanggal`, `idsiswa`, `mapel`, `nilai`) VALUES
(1, '2025-06-07', '', '3', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_sikap`
--

CREATE TABLE `nilai_sikap` (
  `id` int(11) NOT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `desmin` text DEFAULT NULL,
  `desmax` text DEFAULT NULL,
  `pred` varchar(11) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  `smt` varchar(11) DEFAULT NULL,
  `tp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_skl`
--

CREATE TABLE `nilai_skl` (
  `id` int(11) NOT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `nilai` varchar(50) DEFAULT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `ki` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nilai_skl`
--

INSERT INTO `nilai_skl` (`id`, `idsiswa`, `kelas`, `mapel`, `jurusan`, `nilai`, `kode`, `ket`, `ki`) VALUES
(1, '1', 'X-A', '1', 'UMUM', '90', 'SMT-1', 'SMT', NULL),
(2, '2', 'X-A', '1', 'UMUM', '90', 'SMT-1', 'SMT', NULL),
(3, '3', 'X-A', '1', 'UMUM', '90', 'SMT-1', 'SMT', NULL),
(4, '4', 'X-A', '1', 'UMUM', '90', 'SMT-1', 'SMT', NULL),
(5, '5', 'X-A', '1', 'UMUM', '90', 'SMT-1', 'SMT', NULL),
(6, '6', 'X-A', '1', 'UMUM', '90', 'SMT-1', 'SMT', NULL),
(7, '7', 'X-A', '1', 'UMUM', '90', 'SMT-1', 'SMT', NULL),
(8, '8', 'X-A', '1', 'UMUM', '90', 'SMT-1', 'SMT', NULL),
(9, '9', 'X-A', '1', 'UMUM', '90', 'SMT-1', 'SMT', NULL),
(10, '10', 'X-A', '1', 'UMUM', '90', 'SMT-1', 'SMT', NULL),
(11, '11', 'X-A', '1', 'UMUM', '90', 'SMT-1', 'SMT', NULL),
(12, '12', 'X-A', '1', 'UMUM', '90', 'SMT-1', 'SMT', NULL),
(13, '13', 'X-A', '1', 'UMUM', '90', 'SMT-1', 'SMT', NULL),
(14, '14', 'X-A', '1', 'UMUM', '90', 'SMT-1', 'SMT', NULL),
(15, '15', 'X-A', '1', 'UMUM', '90', 'SMT-1', 'SMT', NULL),
(16, '16', 'X-A', '1', 'UMUM', '90', 'SMT-1', 'SMT', NULL),
(17, '17', 'X-A', '1', 'UMUM', '90', 'SMT-1', 'SMT', NULL),
(18, '18', 'X-A', '1', 'UMUM', '90', 'SMT-1', 'SMT', NULL),
(19, '19', 'X-A', '1', 'UMUM', '90', 'SMT-1', 'SMT', NULL),
(20, '20', 'X-A', '1', 'UMUM', '90', 'SMT-1', 'SMT', NULL),
(21, '21', 'X-A', '1', 'UMUM', '90', 'SMT-1', 'SMT', NULL),
(22, '22', 'X-A', '1', 'UMUM', '90', 'SMT-1', 'SMT', NULL),
(23, '23', 'X-A', '1', 'UMUM', '90', 'SMT-1', 'SMT', NULL),
(24, '24', 'X-A', '1', 'UMUM', '90', 'SMT-1', 'SMT', NULL),
(25, '25', 'X-A', '1', 'UMUM', '90', 'SMT-1', 'SMT', NULL),
(26, '1', 'X-A', '1', 'UMUM', '92', 'SMT-2', 'SMT', NULL),
(27, '2', 'X-A', '1', 'UMUM', '92', 'SMT-2', 'SMT', NULL),
(28, '3', 'X-A', '1', 'UMUM', '92', 'SMT-2', 'SMT', NULL),
(29, '4', 'X-A', '1', 'UMUM', '92', 'SMT-2', 'SMT', NULL),
(30, '5', 'X-A', '1', 'UMUM', '92', 'SMT-2', 'SMT', NULL),
(31, '6', 'X-A', '1', 'UMUM', '92', 'SMT-2', 'SMT', NULL),
(32, '7', 'X-A', '1', 'UMUM', '92', 'SMT-2', 'SMT', NULL),
(33, '8', 'X-A', '1', 'UMUM', '92', 'SMT-2', 'SMT', NULL),
(34, '9', 'X-A', '1', 'UMUM', '92', 'SMT-2', 'SMT', NULL),
(35, '10', 'X-A', '1', 'UMUM', '92', 'SMT-2', 'SMT', NULL),
(36, '11', 'X-A', '1', 'UMUM', '92', 'SMT-2', 'SMT', NULL),
(37, '12', 'X-A', '1', 'UMUM', '92', 'SMT-2', 'SMT', NULL),
(38, '13', 'X-A', '1', 'UMUM', '92', 'SMT-2', 'SMT', NULL),
(39, '14', 'X-A', '1', 'UMUM', '92', 'SMT-2', 'SMT', NULL),
(40, '15', 'X-A', '1', 'UMUM', '92', 'SMT-2', 'SMT', NULL),
(41, '16', 'X-A', '1', 'UMUM', '92', 'SMT-2', 'SMT', NULL),
(42, '17', 'X-A', '1', 'UMUM', '92', 'SMT-2', 'SMT', NULL),
(43, '18', 'X-A', '1', 'UMUM', '92', 'SMT-2', 'SMT', NULL),
(44, '19', 'X-A', '1', 'UMUM', '92', 'SMT-2', 'SMT', NULL),
(45, '20', 'X-A', '1', 'UMUM', '92', 'SMT-2', 'SMT', NULL),
(46, '21', 'X-A', '1', 'UMUM', '92', 'SMT-2', 'SMT', NULL),
(47, '22', 'X-A', '1', 'UMUM', '92', 'SMT-2', 'SMT', NULL),
(48, '23', 'X-A', '1', 'UMUM', '92', 'SMT-2', 'SMT', NULL),
(49, '24', 'X-A', '1', 'UMUM', '92', 'SMT-2', 'SMT', NULL),
(50, '25', 'X-A', '1', 'UMUM', '92', 'SMT-2', 'SMT', NULL),
(51, '1', 'X-A', '1', 'UMUM', '93', 'SMT-3', 'SMT', NULL),
(52, '2', 'X-A', '1', 'UMUM', '93', 'SMT-3', 'SMT', NULL),
(53, '3', 'X-A', '1', 'UMUM', '93', 'SMT-3', 'SMT', NULL),
(54, '4', 'X-A', '1', 'UMUM', '93', 'SMT-3', 'SMT', NULL),
(55, '5', 'X-A', '1', 'UMUM', '93', 'SMT-3', 'SMT', NULL),
(56, '6', 'X-A', '1', 'UMUM', '93', 'SMT-3', 'SMT', NULL),
(57, '7', 'X-A', '1', 'UMUM', '93', 'SMT-3', 'SMT', NULL),
(58, '8', 'X-A', '1', 'UMUM', '93', 'SMT-3', 'SMT', NULL),
(59, '9', 'X-A', '1', 'UMUM', '93', 'SMT-3', 'SMT', NULL),
(60, '10', 'X-A', '1', 'UMUM', '93', 'SMT-3', 'SMT', NULL),
(61, '11', 'X-A', '1', 'UMUM', '93', 'SMT-3', 'SMT', NULL),
(62, '12', 'X-A', '1', 'UMUM', '93', 'SMT-3', 'SMT', NULL),
(63, '13', 'X-A', '1', 'UMUM', '93', 'SMT-3', 'SMT', NULL),
(64, '14', 'X-A', '1', 'UMUM', '93', 'SMT-3', 'SMT', NULL),
(65, '15', 'X-A', '1', 'UMUM', '93', 'SMT-3', 'SMT', NULL),
(66, '16', 'X-A', '1', 'UMUM', '93', 'SMT-3', 'SMT', NULL),
(67, '17', 'X-A', '1', 'UMUM', '93', 'SMT-3', 'SMT', NULL),
(68, '18', 'X-A', '1', 'UMUM', '93', 'SMT-3', 'SMT', NULL),
(69, '19', 'X-A', '1', 'UMUM', '93', 'SMT-3', 'SMT', NULL),
(70, '20', 'X-A', '1', 'UMUM', '93', 'SMT-3', 'SMT', NULL),
(71, '21', 'X-A', '1', 'UMUM', '93', 'SMT-3', 'SMT', NULL),
(72, '22', 'X-A', '1', 'UMUM', '93', 'SMT-3', 'SMT', NULL),
(73, '23', 'X-A', '1', 'UMUM', '93', 'SMT-3', 'SMT', NULL),
(74, '24', 'X-A', '1', 'UMUM', '93', 'SMT-3', 'SMT', NULL),
(75, '25', 'X-A', '1', 'UMUM', '93', 'SMT-3', 'SMT', NULL),
(76, '1', 'X-A', '1', 'UMUM', '95', 'SMT-4', 'SMT', NULL),
(77, '2', 'X-A', '1', 'UMUM', '95', 'SMT-4', 'SMT', NULL),
(78, '3', 'X-A', '1', 'UMUM', '95', 'SMT-4', 'SMT', NULL),
(79, '4', 'X-A', '1', 'UMUM', '95', 'SMT-4', 'SMT', NULL),
(80, '5', 'X-A', '1', 'UMUM', '95', 'SMT-4', 'SMT', NULL),
(81, '6', 'X-A', '1', 'UMUM', '95', 'SMT-4', 'SMT', NULL),
(82, '7', 'X-A', '1', 'UMUM', '95', 'SMT-4', 'SMT', NULL),
(83, '8', 'X-A', '1', 'UMUM', '95', 'SMT-4', 'SMT', NULL),
(84, '9', 'X-A', '1', 'UMUM', '95', 'SMT-4', 'SMT', NULL),
(85, '10', 'X-A', '1', 'UMUM', '95', 'SMT-4', 'SMT', NULL),
(86, '11', 'X-A', '1', 'UMUM', '95', 'SMT-4', 'SMT', NULL),
(87, '12', 'X-A', '1', 'UMUM', '95', 'SMT-4', 'SMT', NULL),
(88, '13', 'X-A', '1', 'UMUM', '95', 'SMT-4', 'SMT', NULL),
(89, '14', 'X-A', '1', 'UMUM', '95', 'SMT-4', 'SMT', NULL),
(90, '15', 'X-A', '1', 'UMUM', '95', 'SMT-4', 'SMT', NULL),
(91, '16', 'X-A', '1', 'UMUM', '95', 'SMT-4', 'SMT', NULL),
(92, '17', 'X-A', '1', 'UMUM', '95', 'SMT-4', 'SMT', NULL),
(93, '18', 'X-A', '1', 'UMUM', '95', 'SMT-4', 'SMT', NULL),
(94, '19', 'X-A', '1', 'UMUM', '95', 'SMT-4', 'SMT', NULL),
(95, '20', 'X-A', '1', 'UMUM', '95', 'SMT-4', 'SMT', NULL),
(96, '21', 'X-A', '1', 'UMUM', '95', 'SMT-4', 'SMT', NULL),
(97, '22', 'X-A', '1', 'UMUM', '95', 'SMT-4', 'SMT', NULL),
(98, '23', 'X-A', '1', 'UMUM', '95', 'SMT-4', 'SMT', NULL),
(99, '24', 'X-A', '1', 'UMUM', '95', 'SMT-4', 'SMT', NULL),
(100, '25', 'X-A', '1', 'UMUM', '95', 'SMT-4', 'SMT', NULL),
(101, '1', 'X-A', '1', 'UMUM', '96', 'SMT-5', 'SMT', NULL),
(102, '2', 'X-A', '1', 'UMUM', '96', 'SMT-5', 'SMT', NULL),
(103, '3', 'X-A', '1', 'UMUM', '96', 'SMT-5', 'SMT', NULL),
(104, '4', 'X-A', '1', 'UMUM', '96', 'SMT-5', 'SMT', NULL),
(105, '5', 'X-A', '1', 'UMUM', '96', 'SMT-5', 'SMT', NULL),
(106, '6', 'X-A', '1', 'UMUM', '96', 'SMT-5', 'SMT', NULL),
(107, '7', 'X-A', '1', 'UMUM', '96', 'SMT-5', 'SMT', NULL),
(108, '8', 'X-A', '1', 'UMUM', '96', 'SMT-5', 'SMT', NULL),
(109, '9', 'X-A', '1', 'UMUM', '96', 'SMT-5', 'SMT', NULL),
(110, '10', 'X-A', '1', 'UMUM', '96', 'SMT-5', 'SMT', NULL),
(111, '11', 'X-A', '1', 'UMUM', '96', 'SMT-5', 'SMT', NULL),
(112, '12', 'X-A', '1', 'UMUM', '96', 'SMT-5', 'SMT', NULL),
(113, '13', 'X-A', '1', 'UMUM', '96', 'SMT-5', 'SMT', NULL),
(114, '14', 'X-A', '1', 'UMUM', '96', 'SMT-5', 'SMT', NULL),
(115, '15', 'X-A', '1', 'UMUM', '96', 'SMT-5', 'SMT', NULL),
(116, '16', 'X-A', '1', 'UMUM', '96', 'SMT-5', 'SMT', NULL),
(117, '17', 'X-A', '1', 'UMUM', '96', 'SMT-5', 'SMT', NULL),
(118, '18', 'X-A', '1', 'UMUM', '96', 'SMT-5', 'SMT', NULL),
(119, '19', 'X-A', '1', 'UMUM', '96', 'SMT-5', 'SMT', NULL),
(120, '20', 'X-A', '1', 'UMUM', '96', 'SMT-5', 'SMT', NULL),
(121, '21', 'X-A', '1', 'UMUM', '96', 'SMT-5', 'SMT', NULL),
(122, '22', 'X-A', '1', 'UMUM', '96', 'SMT-5', 'SMT', NULL),
(123, '23', 'X-A', '1', 'UMUM', '96', 'SMT-5', 'SMT', NULL),
(124, '24', 'X-A', '1', 'UMUM', '96', 'SMT-5', 'SMT', NULL),
(125, '25', 'X-A', '1', 'UMUM', '96', 'SMT-5', 'SMT', NULL),
(126, '1', 'X-A', '1', 'UMUM', '97', 'SMT-6', 'SMT', NULL),
(127, '2', 'X-A', '1', 'UMUM', '97', 'SMT-6', 'SMT', NULL),
(128, '3', 'X-A', '1', 'UMUM', '97', 'SMT-6', 'SMT', NULL),
(129, '4', 'X-A', '1', 'UMUM', '97', 'SMT-6', 'SMT', NULL),
(130, '5', 'X-A', '1', 'UMUM', '97', 'SMT-6', 'SMT', NULL),
(131, '6', 'X-A', '1', 'UMUM', '97', 'SMT-6', 'SMT', NULL),
(132, '7', 'X-A', '1', 'UMUM', '97', 'SMT-6', 'SMT', NULL),
(133, '8', 'X-A', '1', 'UMUM', '97', 'SMT-6', 'SMT', NULL),
(134, '9', 'X-A', '1', 'UMUM', '97', 'SMT-6', 'SMT', NULL),
(135, '10', 'X-A', '1', 'UMUM', '97', 'SMT-6', 'SMT', NULL),
(136, '11', 'X-A', '1', 'UMUM', '97', 'SMT-6', 'SMT', NULL),
(137, '12', 'X-A', '1', 'UMUM', '97', 'SMT-6', 'SMT', NULL),
(138, '13', 'X-A', '1', 'UMUM', '97', 'SMT-6', 'SMT', NULL),
(139, '14', 'X-A', '1', 'UMUM', '97', 'SMT-6', 'SMT', NULL),
(140, '15', 'X-A', '1', 'UMUM', '97', 'SMT-6', 'SMT', NULL),
(141, '16', 'X-A', '1', 'UMUM', '97', 'SMT-6', 'SMT', NULL),
(142, '17', 'X-A', '1', 'UMUM', '97', 'SMT-6', 'SMT', NULL),
(143, '18', 'X-A', '1', 'UMUM', '97', 'SMT-6', 'SMT', NULL),
(144, '19', 'X-A', '1', 'UMUM', '97', 'SMT-6', 'SMT', NULL),
(145, '20', 'X-A', '1', 'UMUM', '97', 'SMT-6', 'SMT', NULL),
(146, '21', 'X-A', '1', 'UMUM', '97', 'SMT-6', 'SMT', NULL),
(147, '22', 'X-A', '1', 'UMUM', '97', 'SMT-6', 'SMT', NULL),
(148, '23', 'X-A', '1', 'UMUM', '97', 'SMT-6', 'SMT', NULL),
(149, '24', 'X-A', '1', 'UMUM', '97', 'SMT-6', 'SMT', NULL),
(150, '25', 'X-A', '1', 'UMUM', '97', 'SMT-6', 'SMT', NULL),
(151, '1', 'X-A', '3', 'UMUM', '90', 'PRAKTEK', 'US', NULL),
(152, '2', 'X-A', '3', 'UMUM', '90', 'PRAKTEK', 'US', NULL),
(153, '3', 'X-A', '3', 'UMUM', '90', 'PRAKTEK', 'US', NULL),
(154, '4', 'X-A', '3', 'UMUM', '90', 'PRAKTEK', 'US', NULL),
(155, '5', 'X-A', '3', 'UMUM', '90', 'PRAKTEK', 'US', NULL),
(156, '6', 'X-A', '3', 'UMUM', '90', 'PRAKTEK', 'US', NULL),
(157, '7', 'X-A', '3', 'UMUM', '90', 'PRAKTEK', 'US', NULL),
(158, '8', 'X-A', '3', 'UMUM', '90', 'PRAKTEK', 'US', NULL),
(159, '9', 'X-A', '3', 'UMUM', '90', 'PRAKTEK', 'US', NULL),
(160, '10', 'X-A', '3', 'UMUM', '90', 'PRAKTEK', 'US', NULL),
(161, '11', 'X-A', '3', 'UMUM', '90', 'PRAKTEK', 'US', NULL),
(162, '12', 'X-A', '3', 'UMUM', '90', 'PRAKTEK', 'US', NULL),
(163, '13', 'X-A', '3', 'UMUM', '90', 'PRAKTEK', 'US', NULL),
(164, '14', 'X-A', '3', 'UMUM', '90', 'PRAKTEK', 'US', NULL),
(165, '15', 'X-A', '3', 'UMUM', '90', 'PRAKTEK', 'US', NULL),
(166, '16', 'X-A', '3', 'UMUM', '90', 'PRAKTEK', 'US', NULL),
(167, '17', 'X-A', '3', 'UMUM', '90', 'PRAKTEK', 'US', NULL),
(168, '18', 'X-A', '3', 'UMUM', '90', 'PRAKTEK', 'US', NULL),
(169, '19', 'X-A', '3', 'UMUM', '90', 'PRAKTEK', 'US', NULL),
(170, '20', 'X-A', '3', 'UMUM', '90', 'PRAKTEK', 'US', NULL),
(171, '21', 'X-A', '3', 'UMUM', '90', 'PRAKTEK', 'US', NULL),
(172, '22', 'X-A', '3', 'UMUM', '90', 'PRAKTEK', 'US', NULL),
(173, '23', 'X-A', '3', 'UMUM', '90', 'PRAKTEK', 'US', NULL),
(174, '24', 'X-A', '3', 'UMUM', '90', 'PRAKTEK', 'US', NULL),
(175, '25', 'X-A', '3', 'UMUM', '90', 'PRAKTEK', 'US', NULL),
(176, '1', 'X-A', '3', 'UMUM', '94', 'TEORI', 'US', NULL),
(177, '2', 'X-A', '3', 'UMUM', '94', 'TEORI', 'US', NULL),
(178, '3', 'X-A', '3', 'UMUM', '94', 'TEORI', 'US', NULL),
(179, '4', 'X-A', '3', 'UMUM', '94', 'TEORI', 'US', NULL),
(180, '5', 'X-A', '3', 'UMUM', '94', 'TEORI', 'US', NULL),
(181, '6', 'X-A', '3', 'UMUM', '94', 'TEORI', 'US', NULL),
(182, '7', 'X-A', '3', 'UMUM', '94', 'TEORI', 'US', NULL),
(183, '8', 'X-A', '3', 'UMUM', '94', 'TEORI', 'US', NULL),
(184, '9', 'X-A', '3', 'UMUM', '94', 'TEORI', 'US', NULL),
(185, '10', 'X-A', '3', 'UMUM', '94', 'TEORI', 'US', NULL),
(186, '11', 'X-A', '3', 'UMUM', '94', 'TEORI', 'US', NULL),
(187, '12', 'X-A', '3', 'UMUM', '94', 'TEORI', 'US', NULL),
(188, '13', 'X-A', '3', 'UMUM', '94', 'TEORI', 'US', NULL),
(189, '14', 'X-A', '3', 'UMUM', '94', 'TEORI', 'US', NULL),
(190, '15', 'X-A', '3', 'UMUM', '94', 'TEORI', 'US', NULL),
(191, '16', 'X-A', '3', 'UMUM', '94', 'TEORI', 'US', NULL),
(192, '17', 'X-A', '3', 'UMUM', '94', 'TEORI', 'US', NULL),
(193, '18', 'X-A', '3', 'UMUM', '94', 'TEORI', 'US', NULL),
(194, '19', 'X-A', '3', 'UMUM', '94', 'TEORI', 'US', NULL),
(195, '20', 'X-A', '3', 'UMUM', '94', 'TEORI', 'US', NULL),
(196, '21', 'X-A', '3', 'UMUM', '94', 'TEORI', 'US', NULL),
(197, '22', 'X-A', '3', 'UMUM', '94', 'TEORI', 'US', NULL),
(198, '23', 'X-A', '3', 'UMUM', '94', 'TEORI', 'US', NULL),
(199, '24', 'X-A', '3', 'UMUM', '94', 'TEORI', 'US', NULL),
(200, '25', 'X-A', '3', 'UMUM', '94', 'TEORI', 'US', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_sumatif`
--

CREATE TABLE `nilai_sumatif` (
  `id` int(11) NOT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `level` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  `nilai` varchar(11) DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `smt` varchar(11) DEFAULT NULL,
  `tp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nilai_sumatif`
--

INSERT INTO `nilai_sumatif` (`id`, `mapel`, `idsiswa`, `level`, `kelas`, `guru`, `nilai`, `ket`, `smt`, `tp`) VALUES
(1, '3', '1', '10', 'X-A', '3', '73', 'PH', '1', '2024/2025'),
(2, '3', '10', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(3, '3', '11', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(4, '3', '12', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(5, '3', '13', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(6, '3', '14', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(7, '3', '15', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(8, '3', '16', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(9, '3', '17', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(10, '3', '18', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(11, '3', '19', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(12, '3', '2', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(13, '3', '20', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(14, '3', '21', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(15, '3', '22', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(16, '3', '23', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(17, '3', '24', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(18, '3', '25', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(19, '3', '26', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(20, '3', '27', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(21, '3', '28', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(22, '3', '29', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(23, '3', '3', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(24, '3', '30', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(25, '3', '31', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(26, '3', '32', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(27, '3', '33', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(28, '3', '34', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(29, '3', '35', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(30, '3', '36', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(31, '3', '37', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(32, '3', '4', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(33, '3', '5', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(34, '3', '6', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(35, '3', '7', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(36, '3', '8', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025'),
(37, '3', '9', '10', 'X-A', '3', '0', 'PH', '1', '2024/2025');

-- --------------------------------------------------------

--
-- Table structure for table `pdb`
--

CREATE TABLE `pdb` (
  `id` int(11) NOT NULL,
  `jumlah` int(11) DEFAULT 0,
  `tahun` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pdb`
--

INSERT INTO `pdb` (`id`, `jumlah`, `tahun`) VALUES
(1, 0, '2025');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `level` varchar(50) NOT NULL DEFAULT 'admin',
  `jabatan` varchar(50) DEFAULT NULL,
  `sts` int(11) NOT NULL DEFAULT 0,
  `foto` varchar(255) DEFAULT NULL,
  `jenis` varchar(50) DEFAULT NULL,
  `walas` varchar(50) DEFAULT NULL,
  `nowa` varchar(13) DEFAULT NULL,
  `tugas` varchar(255) DEFAULT NULL,
  `idjari` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `username`, `password`, `nip`, `nama`, `level`, `jabatan`, `sts`, `foto`, `jenis`, `walas`, `nowa`, `tugas`, `idjari`) VALUES
(1, 'admin', '$2y$10$t3L.GQrBJJHa5gPSooBuhOiZYk4yFgJT7TqBvqPI1bU57mJFQOrAG', NULL, 'Admin', 'admin', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'admin123', '$2y$10$SYnuj19MQvGia7KxfLj8b.SBU5RyL3ByqNkDy/sk6rsZrwol.xhUW', NULL, 'Admin', 'admin', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '196410121990102001', '123', '196410121990102001', 'Geofanny', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '0855445545445', NULL, NULL),
(11, 'alfarizi', '123', '', 'AHMAD ALFARIZI', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(12, 'khoirul', '123', '', 'Ahmad Khoirul Mufti', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(13, '199808082024211015', '123', '199808082024211015', 'ALDIAN MAHMUD', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(14, '198004032003122003', '123', '198004032003122003', 'Amalia', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(15, '199106102024211012', '123', '199106102024211012', 'Andi Prayoga', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(16, '199602082024212032', '123', '199602082024212032', 'Andika Primartati', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(17, 'ari', '123', '', 'ari fatihatul hidayah', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(18, '197810272008042003', '123', '197810272008042003', 'Ari Hartati', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(19, '197701112011012004', '123', '197701112011012004', 'Arum Wulandari', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(20, '199305032024211020', '123', '199305032024211020', 'Auzar Rifa\'i Syaer Hamta', 'guru', 'Guru', 0, NULL, 'Guru BK', NULL, '', NULL, NULL),
(21, '196812221993031006', '123', '196812221993031006', 'Dedi Supriadi', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(22, '196610141991031005', '123', '196610141991031005', 'Didi Santoso', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(23, '199805172024212026', '123', '199805172024212026', 'DIENIKE ELSARAH HANIFAH', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(24, '196601061991032004', '123', '196601061991032004', 'Dra. Hj. Umi Roviah', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(25, '196507091992032003', '123', '196507091992032003', 'Dwi Nurmawati', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(26, 'eka', '123', '', 'eka sulistiya ningsih', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(27, '196709071995122003', '123', '196709071995122003', 'Eka Susilawati', 'guru', 'Guru', 0, NULL, 'Guru BK', NULL, '', NULL, NULL),
(28, '198612042010011005', '123', '198612042010011005', 'Eko Diantoro', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(29, '197007131994032003', '123', '197007131994032003', 'Elny Sulasni', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(30, '198505232024212012', '123', '198505232024212012', 'Galuh Wiratna Dewi', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(31, '197601302014072002', '123', '197601302014072002', 'Hasanah', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(32, '196907151992032008', '123', '196907151992032008', 'Heny Trisulistyorini', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(33, '198910082024211011', '123', '198910082024211011', 'Hermi Ismanto', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(34, '196505251999031003', '123', '196505251999031003', 'Hipni', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(35, '196710201991031008', '123', '196710201991031008', 'Kustanto', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(36, '197705022024212003', '123', '197705022024212003', 'Mei Sugiyanti', 'guru', 'Guru', 0, NULL, 'Guru BK', NULL, '', NULL, NULL),
(37, '197705012006042019', '123', '197705012006042019', 'Melly Rakhmawaty', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(38, '198005152014072003', '123', '198005152014072003', 'Miftahul Jannah', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(39, 'vita', '123', '', 'NATALIA VITA RIANI', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(40, '198905092014022004', '123', '198905092014022004', 'Neni Evi Putri', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(41, 'nida', '123', '', 'NIDA AMALIYA', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(42, '196508101992032006', '123', '196508101992032006', 'Nurlaena', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(43, '198802252015032004', '123', '198802252015032004', 'Putri Pertiwi', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(44, '196903311997021002', '123', '196903311997021002', 'Rahmad Supriyadi', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(45, '199212112024212026', '123', '199212112024212026', 'Rahmatun Nisa', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(46, '199702272024212025', '123', '199702272024212025', 'renita febriana', 'guru', 'Guru', 0, NULL, 'Guru BK', NULL, '', NULL, NULL),
(47, '199603012024212034', '123', '199603012024212034', 'reystiani safitri', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(48, '196903021993011001', '123', '196903021993011001', 'Setyo Budi Utomo', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(49, 'jannah', '123', '', 'Siti Miftahul Jannah', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(50, '199610282024212036', '123', '199610282024212036', 'SITI ROHIBAH', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(51, '196501191992032002', '123', '196501191992032002', 'Sri Indras Worowati', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(52, '196705041997031006', '123', '196705041997031006', 'Suhendar', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(53, '196406251997021001', '123', '196406251997021001', 'Suyadi', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(54, '198007042024212007', '123', '198007042024212007', 'Titin Yuliarti', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(55, '196711051989032005', '123', '196711051989032005', 'Tri Harwati', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(56, '198710012024211007', '123', '198710012024211007', 'Tri Wahyudi', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(57, '196507051997032002', '123', '196507051997032002', 'Tri Yuli Astuti', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(58, '199202072024212031', '123', '199202072024212031', 'Umi Karomah Al Adawiyah', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(59, '196507041991021002', '123', '196507041991021002', 'Waluya', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(60, '199505122024212025', '123', '199505122024212025', 'Wanda Aryanti', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(61, '199706022024211009', '123', '199706022024211009', 'WILDAN DEBBIE TIANTO', 'guru', 'Guru', 0, NULL, 'Guru BK', NULL, '', NULL, NULL),
(62, '198601222024211003', '123', '198601222024211003', 'Yanuar Indra Irawan', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(63, '198607172011011007', '123', '198607172011011007', 'Yasir Sipung', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(64, '197406152024212005', '123', '197406152024212005', 'Yuni Astuti', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(65, '198506162010012020', '123', '198506162010012020', 'Zuni Purnawati', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '', NULL, NULL),
(66, '', '', '', '', 'guru', 'Guru', 0, NULL, '', NULL, '', NULL, NULL),
(67, '2025', '2025', '2025', 'GURU', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '2025', NULL, NULL),
(68, 'guru', 'guru', '050920', 'Fahrurrozi', 'guru', 'Guru', 0, 'Screenshot_20250525-214606.jpg', 'Guru Mapel', NULL, '088558', NULL, NULL),
(69, 'intan', 'intan', '12345', 'intan', 'staff', NULL, 0, NULL, NULL, NULL, '6283117760971', NULL, NULL),
(70, 'geofanny', '123', '1964101219901020201', 'Geofanny', 'guru', 'Guru', 0, NULL, 'Guru Mapel', NULL, '0855454545454', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id_aplikasi` int(11) NOT NULL,
  `jenis` int(11) NOT NULL DEFAULT 1,
  `aplikasi` varchar(50) DEFAULT NULL,
  `jenjang` varchar(50) DEFAULT NULL,
  `sekolah` varchar(50) DEFAULT NULL,
  `npsn` varchar(50) DEFAULT NULL,
  `kepsek` varchar(50) DEFAULT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `waktu` varchar(50) DEFAULT NULL,
  `semester` varchar(11) DEFAULT NULL,
  `tp` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `desa` varchar(50) DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kabupaten` varchar(50) DEFAULT NULL,
  `propinsi` varchar(50) DEFAULT NULL,
  `nowa` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `server` varchar(50) DEFAULT NULL,
  `url_api` varchar(50) DEFAULT NULL,
  `kode_server` varchar(50) DEFAULT NULL,
  `token_api` varchar(50) DEFAULT NULL,
  `header` text DEFAULT NULL,
  `pelanggaran` int(11) NOT NULL DEFAULT 0,
  `pk_ttd` int(11) NOT NULL DEFAULT 0,
  `pk_stempel` int(11) NOT NULL DEFAULT 0,
  `header_kartu` text DEFAULT NULL,
  `stempel` text DEFAULT NULL,
  `ttd` text DEFAULT NULL,
  `nama_ujian` varchar(50) DEFAULT NULL,
  `mesin` varchar(50) DEFAULT NULL,
  `jjm` varchar(11) DEFAULT NULL,
  `honor` varchar(11) DEFAULT NULL,
  `notif` varchar(50) NOT NULL DEFAULT '07:00:00',
  `tanggal_rapor` varchar(50) DEFAULT NULL,
  `yayasan` varchar(50) DEFAULT NULL,
  `ketua` varchar(50) DEFAULT NULL,
  `kkm` varchar(11) DEFAULT NULL,
  `jam` int(11) NOT NULL DEFAULT 1,
  `nss` varchar(50) DEFAULT NULL,
  `tahun_berdiri` varchar(11) DEFAULT NULL,
  `pemda` varchar(100) DEFAULT NULL,
  `akreditasi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`id_aplikasi`, `jenis`, `aplikasi`, `jenjang`, `sekolah`, `npsn`, `kepsek`, `nip`, `logo`, `waktu`, `semester`, `tp`, `alamat`, `desa`, `kecamatan`, `kabupaten`, `propinsi`, `nowa`, `email`, `server`, `url_api`, `kode_server`, `token_api`, `header`, `pelanggaran`, `pk_ttd`, `pk_stempel`, `header_kartu`, `stempel`, `ttd`, `nama_ujian`, `mesin`, `jjm`, `honor`, `notif`, `tanggal_rapor`, `yayasan`, `ketua`, `kkm`, `jam`, `nss`, `tahun_berdiri`, `pemda`, `akreditasi`) VALUES
(1, 1, 'SANDIK', 'SMK', 'SMK WIRA BUANA', '0089287354', 'Hery Saptono, ST', '-', 'logo683.png', 'Asia/Jakarta', '1', '2024/2025', 'Jln. Camat Kanang No 13 Kel Pabuaran Kec Bojongged', 'Pabuaran', 'Bojonggede', 'Bogor', 'Jawa Barat', '087780851424', 'admin@wirabuana.sch.id', 'https://new.esandik.id', 'http://server.esandik.id', 'ESANDIK-A', 'M4L4N9KJ9vUTCuZwEdis', 'KEMENTRIAN PENDIDIKAN DASAR DAN MENENGAH', 1, 0, 0, 'KARTU PESERTA ASESSMEN', '', '', 'Penilaian Akhir Tahun', '2', '35', '', '18:59:00', '20 Juni 2025', 'Pendidikan Noor Hasyim', 'Rizka Yona Paramitha, S.Psi', '70', 1, '22', '2017', 'file728.png', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `pengawas`
--

CREATE TABLE `pengawas` (
  `id_pengawas` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `level` varchar(50) NOT NULL DEFAULT 'pengawas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pengawas`
--

INSERT INTO `pengawas` (`id_pengawas`, `nama`, `nip`, `username`, `password`, `level`) VALUES
(2, 'Pengawas', NULL, 'vision', '$2y$10$NouMjUj1YN7S/V0r/cwSVOML8h/.NZRXmijXoMgyU6eBjMIsvn8R.', 'pengawas');

-- --------------------------------------------------------

--
-- Table structure for table `pesan_terkirim`
--

CREATE TABLE `pesan_terkirim` (
  `id` int(11) NOT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `nowa` varchar(14) DEFAULT NULL,
  `isi` mediumtext DEFAULT NULL,
  `sender` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `peskul`
--

CREATE TABLE `peskul` (
  `idp` int(11) NOT NULL,
  `idsiswa` varchar(50) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `eskul` varchar(50) DEFAULT NULL,
  `guru` varchar(16) DEFAULT NULL,
  `nilai` varchar(50) DEFAULT NULL,
  `ket` mediumtext DEFAULT NULL,
  `smt` varchar(12) DEFAULT NULL,
  `tp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `peskul`
--

INSERT INTO `peskul` (`idp`, `idsiswa`, `kelas`, `eskul`, `guru`, `nilai`, `ket`, `smt`, `tp`) VALUES
(1, '1', 'X-A', 'Pramuka', '3', NULL, NULL, '1', '2024/2025');

-- --------------------------------------------------------

--
-- Table structure for table `pkl_dudi`
--

CREATE TABLE `pkl_dudi` (
  `id` int(11) NOT NULL,
  `nama_dudi` varchar(50) DEFAULT NULL,
  `bidang` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `direksi` varchar(50) DEFAULT NULL,
  `logo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pkl_evaluasi`
--

CREATE TABLE `pkl_evaluasi` (
  `id` int(11) NOT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `idm` varchar(11) DEFAULT NULL,
  `jawab` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pkl_jurnal`
--

CREATE TABLE `pkl_jurnal` (
  `id` int(11) NOT NULL,
  `tanggal` varchar(11) DEFAULT NULL,
  `bulan` varchar(11) DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `idkompetensi` varchar(11) DEFAULT NULL,
  `proses` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `pulang` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pkl_jurnal`
--

INSERT INTO `pkl_jurnal` (`id`, `tanggal`, `bulan`, `idsiswa`, `kelas`, `idkompetensi`, `proses`, `status`, `pulang`) VALUES
(2, '2025-06-01', '06', '1', 'VII-A', '11', 'oo', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pkl_kegiatan`
--

CREATE TABLE `pkl_kegiatan` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `bulan` varchar(11) DEFAULT NULL,
  `jam` varchar(50) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  `lon` varchar(50) DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `kegiatan` text DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `dudi` varchar(11) DEFAULT NULL,
  `ket` varchar(1) NOT NULL DEFAULT 'H',
  `ttd` varchar(100) DEFAULT NULL,
  `instruktur` varchar(50) DEFAULT NULL,
  `pulang` varchar(50) DEFAULT NULL,
  `catatan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pkl_kegiatan`
--

INSERT INTO `pkl_kegiatan` (`id`, `tanggal`, `bulan`, `jam`, `lat`, `lon`, `idsiswa`, `kelas`, `kegiatan`, `foto`, `status`, `dudi`, `ket`, `ttd`, `instruktur`, `pulang`, `catatan`) VALUES
(1, '2025-06-01', '06', '12:03:29', '-6.92', '107.61', '1', 'VII-A', 'aaaaaaa', 'aceh.png', 1, '1', 'H', 'ttd_120521.png', '', '12:03:31', 'Baik dalam melaksanakan kegiatan hari ini');

-- --------------------------------------------------------

--
-- Table structure for table `pkl_kompetensi`
--

CREATE TABLE `pkl_kompetensi` (
  `id` int(11) NOT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `deskrip` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pkl_kompetensi`
--

INSERT INTO `pkl_kompetensi` (`id`, `jurusan`, `deskrip`) VALUES
(2, 'TKJ', 'Merakit personal computer'),
(3, 'TKJ', 'Melakukan intalasi sistem operasi dasar'),
(4, 'TKJ', 'Melakukan perbaikan dan/atau setting ulang sistem PC'),
(5, 'TKJ', 'Melakukan perbaikan periferal'),
(6, 'TKJ', 'Melakukan perawatan PC'),
(7, 'TKJ', 'Melakukan instalasi software'),
(8, 'TKJ', 'Melakukan instalasi perangkat jaringan lokal (Lokal\r\nArea Network)'),
(9, 'TKJ', 'Melakukan perbaikan dan/atau setting ulang koneksi\r\njaringan\r\n'),
(10, 'TKJ', 'Melakukan intalasi perangkat jaringan berbasis luas\r\n(Wide Area Network)'),
(11, 'semua', 'aa');

-- --------------------------------------------------------

--
-- Table structure for table `pkl_mnilai`
--

CREATE TABLE `pkl_mnilai` (
  `id` int(11) NOT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `aspek` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pkl_mnilai`
--

INSERT INTO `pkl_mnilai` (`id`, `kode`, `jurusan`, `aspek`) VALUES
(1, 'A', 'semua', 'Penampilan dan kerapihan pakaian'),
(2, 'A', 'semua', 'Komitmen dan integritas'),
(3, 'A', 'semua', ' Menghargai dan menghormati'),
(4, 'A', 'semua', 'Kreativitas'),
(5, 'A', 'semua', ' Kerja sama tim'),
(6, 'A', 'semua', ' Disiplin dan tanggung jawab'),
(7, 'B', 'semua', 'Penguasaan keilmuan'),
(8, 'B', 'semua', 'Kemampuan mengidentifikasi masalah'),
(9, 'B', 'semua', 'Kemampuan menemukan alternatif solusi secara kreatif'),
(10, 'C', 'semua', 'Keahlian dan keterampilan'),
(11, 'C', 'semua', 'Inovasi dan kreativitas'),
(12, 'C', 'semua', 'Produktivitas dan penyelesaian tugas'),
(13, 'C', 'semua', 'Penguasaan alat kerja');

-- --------------------------------------------------------

--
-- Table structure for table `pkl_monitor`
--

CREATE TABLE `pkl_monitor` (
  `id` int(11) NOT NULL,
  `monitoring` text DEFAULT NULL,
  `evaluasi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pkl_monitor`
--

INSERT INTO `pkl_monitor` (`id`, `monitoring`, `evaluasi`) VALUES
(1, 'Terdapat presensi\r\nkehadiran peserta\r\ndidik \r\n', 'Peserta didik dan pembimbing\r\nindustri melaksanakan program\r\nPKL'),
(2, 'Peserta Didik\r\nmengikuti SOP yang\r\nada di di dunia kerja', 'Materi PKL yang diikuti peserta\r\ndidik sesuai dengan hasil\r\npemetaan kompetensi dan\r\nprogram PKL'),
(3, 'Peserta didik mengisi\r\nJurnal', NULL),
(4, 'Peserta didik membuat portofolio sesuai dengan jurnal kegiatan', NULL),
(5, NULL, 'Pembelajaran PKL di Institusi\r\nPasangan/Industri menambah\r\nwawasan dan pengalaman nyata\r\npeserta didik dalam dunia kerja.'),
(6, NULL, 'Pembelajaran PKL di Institusi\r\nPasangan/Industri menambah\r\nketerampilan peserta didik sesuai\r\nprogram keahlian'),
(7, NULL, 'Pembelajaran PKL di Institusi\r\nPasangan/Industri menambah\r\npengetahuan peserta didik sesuai\r\nprogram keahlian.'),
(8, NULL, 'Pembelajaran PKL di Institusi\r\nPasangan/Industri menambah\r\nnilai-nilai disiplin, kerja keras,\r\ndan tanggung jawab.'),
(9, NULL, 'Pembimbing selama\r\npembelajaran PKL di Institusi\r\nPasangan/Industri, berperan\r\ndengan baik'),
(10, NULL, 'Selama pembelajaran di Institusi\r\nPasangan/Industri peserta didik\r\nmengalami hambatan-hambatan\r\nyang sangat berarti.');

-- --------------------------------------------------------

--
-- Table structure for table `pkl_nilai`
--

CREATE TABLE `pkl_nilai` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `ida` varchar(11) DEFAULT NULL,
  `nilai` varchar(11) DEFAULT NULL,
  `ket` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pkl_panitia`
--

CREATE TABLE `pkl_panitia` (
  `id` int(11) NOT NULL,
  `ketua` varchar(50) DEFAULT NULL,
  `nipk` varchar(50) DEFAULT NULL,
  `sekretaris` varchar(50) DEFAULT NULL,
  `nips` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `sampai` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pkl_panitia`
--

INSERT INTO `pkl_panitia` (`id`, `ketua`, `nipk`, `sekretaris`, `nips`, `dari`, `sampai`) VALUES
(1, 'Agus Mulyana', '123', 'Siti Opat Apit', '123', '31 Januari', '30 April 2025');

-- --------------------------------------------------------

--
-- Table structure for table `pkl_pembimbing`
--

CREATE TABLE `pkl_pembimbing` (
  `id` int(11) NOT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `dudi` varchar(11) DEFAULT NULL,
  `instruktur` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pkl_reg`
--

CREATE TABLE `pkl_reg` (
  `id` int(11) NOT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `folder` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pkl_reg`
--

INSERT INTO `pkl_reg` (`id`, `idsiswa`, `nama`, `folder`) VALUES
(1, '1', 'ABIWANTA RIZKY WIDYA AGUNG', '1,1');

-- --------------------------------------------------------

--
-- Table structure for table `pkl_siswa`
--

CREATE TABLE `pkl_siswa` (
  `id` int(11) NOT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `dudi` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pkl_siswa`
--

INSERT INTO `pkl_siswa` (`id`, `idsiswa`, `kelas`, `jurusan`, `dudi`) VALUES
(1, '1', 'VII-A', 'semua', '1'),
(2, '92', 'XII-ATPH', 'ATPH', '1'),
(3, '2', 'VII-A', 'semua', '1'),
(4, '81', 'IX', 'semua', '1'),
(5, '82', 'IX', 'semua', '1');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `produk_id` int(11) NOT NULL,
  `produk_toko` varchar(100) DEFAULT NULL,
  `produk_nama` varchar(255) NOT NULL,
  `produk_kategori` varchar(11) NOT NULL,
  `produk_beli` varchar(11) DEFAULT NULL,
  `produk_harga` varchar(11) NOT NULL,
  `produk_jumlah` varchar(11) NOT NULL,
  `produk_satuan` varchar(50) DEFAULT NULL,
  `produk_foto1` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`produk_id`, `produk_toko`, `produk_nama`, `produk_kategori`, `produk_beli`, `produk_harga`, `produk_jumlah`, `produk_satuan`, `produk_foto1`) VALUES
(1, '1', 'Seblak', '1', '5000', '7000', '5', 'Buah', 'download (6).jpg'),
(2, '1', 'Coffy Bob', '2', '10000', '14000', '14', 'Buah', 'download (7).jpg'),
(3, '1', 'Beng-beng', '3', '2000', '2500', '36', 'Pcs', 'download (8).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `profil_smk`
--

CREATE TABLE `profil_smk` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `bidang` varchar(50) DEFAULT NULL,
  `siup` varchar(50) DEFAULT NULL,
  `omset` varchar(50) DEFAULT NULL,
  `tanggal` varchar(50) DEFAULT NULL,
  `tahun` varchar(11) DEFAULT NULL,
  `kode` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `proyek`
--

CREATE TABLE `proyek` (
  `idp` int(11) NOT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `p_proyek` int(11) NOT NULL,
  `p_dimensi` int(11) NOT NULL,
  `p_elemen` int(11) NOT NULL,
  `p_sub` int(11) NOT NULL,
  `semester` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `proyek`
--

INSERT INTO `proyek` (`idp`, `kelas`, `p_proyek`, `p_dimensi`, `p_elemen`, `p_sub`, `semester`) VALUES
(1, 'X-A', 1, 1, 1, 1, 1),
(2, 'X-A', 1, 2, 8, 16, 1),
(3, 'X-A', 1, 3, 10, 23, 1),
(4, 'X-A', 1, 5, 16, 38, 1),
(5, 'X-A', 1, 6, 20, 42, 1),
(6, 'X-A', 2, 1, 3, 6, 1),
(7, 'X-A', 2, 1, 4, 8, 1),
(8, 'X-A', 2, 2, 8, 16, 1),
(9, 'X-A', 2, 4, 14, 33, 1),
(10, 'X-A', 2, 5, 17, 39, 1);

-- --------------------------------------------------------

--
-- Table structure for table `refleksi`
--

CREATE TABLE `refleksi` (
  `id` int(11) NOT NULL,
  `idjadwal` varchar(11) DEFAULT NULL,
  `idmapel` varchar(11) DEFAULT NULL,
  `idguru` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `soal` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rpp`
--

CREATE TABLE `rpp` (
  `id` int(11) NOT NULL,
  `kd` varchar(11) DEFAULT NULL,
  `des3` text DEFAULT NULL,
  `des4` text DEFAULT NULL,
  `materi` text DEFAULT NULL,
  `alokasi` varchar(50) DEFAULT NULL,
  `sisipan` text DEFAULT NULL,
  `mapel` varchar(11) NOT NULL,
  `level` varchar(11) DEFAULT NULL,
  `guru` varchar(11) NOT NULL,
  `smt` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `saldo`
--

CREATE TABLE `saldo` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` varchar(50) DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `debet` varchar(11) DEFAULT '0',
  `kredit` varchar(11) DEFAULT '0',
  `ket` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `saldo`
--

INSERT INTO `saldo` (`id`, `tanggal`, `jam`, `idsiswa`, `idpeg`, `debet`, `kredit`, `ket`) VALUES
(1, '2025-05-30', '13:53:17', '1', NULL, '2000000', '0', NULL),
(2, '2025-05-30', '13:54:56', '1', NULL, '0', '100000', NULL),
(3, '2025-05-30', '15:21:31', '1', NULL, '0', '120000', NULL),
(4, '2025-06-01', '14:39:11', '1', NULL, '0', '120000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sapras_ruang`
--

CREATE TABLE `sapras_ruang` (
  `id` int(11) NOT NULL,
  `jenis` varchar(50) NOT NULL DEFAULT 'umum',
  `nama_barang` varchar(50) DEFAULT NULL,
  `ruang` varchar(50) DEFAULT NULL,
  `jumlah` varchar(11) DEFAULT NULL,
  `kelengkapan` varchar(5) DEFAULT NULL,
  `keadaan` varchar(50) DEFAULT NULL,
  `luas` varchar(11) DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `baik` varchar(11) DEFAULT NULL,
  `rusak` varchar(11) DEFAULT NULL,
  `kapasitas` varchar(50) DEFAULT NULL,
  `tahun` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sapras_ruang`
--

INSERT INTO `sapras_ruang` (`id`, `jenis`, `nama_barang`, `ruang`, `jumlah`, `kelengkapan`, `keadaan`, `luas`, `ket`, `baik`, `rusak`, `kapasitas`, `tahun`) VALUES
(1, 'umum', NULL, 'Kelas', '6', 'KL', 'B', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'umum', NULL, 'Pustaka', '1', 'L', 'RR', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'umum', NULL, 'Kimia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'umum', NULL, 'IPA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'umum', NULL, 'Komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'umum', NULL, 'Bahasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'umum', NULL, 'Gambar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'umum', NULL, 'R.Praktek ', '1', 'L', 'RR', NULL, 'Lab', NULL, NULL, NULL, NULL),
(10, 'penunjang', NULL, 'Pimpinan', '1', 'L', 'B', '90', NULL, NULL, NULL, NULL, NULL),
(11, 'penunjang', NULL, 'Guru', '1', 'KL', 'B', '90', NULL, NULL, NULL, NULL, NULL),
(12, 'penunjang', NULL, 'Tata Usaha', '1', 'L', 'B', '90', NULL, NULL, NULL, NULL, NULL),
(15, 'penunjang', NULL, 'Ibadah', '1', 'L', 'B', '90', NULL, NULL, NULL, NULL, NULL),
(16, 'penunjang', NULL, 'UKS', '1', 'L', 'B', '90', NULL, NULL, NULL, NULL, NULL),
(17, 'penunjang', NULL, 'Konselling', '1', 'L', 'B', '90', NULL, NULL, NULL, NULL, NULL),
(18, 'penunjang', NULL, 'Kesiswaan', '1', 'L', 'B', '90', NULL, NULL, NULL, NULL, NULL),
(19, 'penunjang', NULL, 'Pramuka', '1', 'L', 'B', '90', NULL, NULL, NULL, NULL, NULL),
(20, 'penunjang', NULL, 'Jamban', '3', 'L', 'B', '180', NULL, NULL, NULL, NULL, NULL),
(21, 'penunjang', NULL, 'Olah raga', '1', 'L', 'B', '90', NULL, NULL, NULL, NULL, NULL),
(22, 'penunjang', NULL, 'Serbaguna', '1', 'L', 'B', '120', NULL, NULL, NULL, NULL, NULL),
(24, 'umum', NULL, 'R.Praktek Elektronika', '1', 'L', 'B', NULL, 'lab', NULL, NULL, NULL, NULL),
(25, 'it', 'Komputer ', NULL, NULL, NULL, NULL, NULL, NULL, '2', '1', NULL, '2025'),
(26, 'it', 'Laptop/netbook', NULL, NULL, NULL, NULL, NULL, NULL, '3', '0', NULL, '2025'),
(27, 'it', ' Server', NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, '2025'),
(28, 'it', 'UPS', NULL, NULL, NULL, NULL, NULL, NULL, '3', '0', NULL, '2025'),
(29, 'it', 'Proyektor', NULL, NULL, NULL, NULL, NULL, NULL, '2', '1', NULL, '2025');

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_options`
--

CREATE TABLE `savsoft_options` (
  `oid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `q_option` text NOT NULL,
  `q_option_match` varchar(1000) DEFAULT NULL,
  `score` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_options`
--

INSERT INTO `savsoft_options` (`oid`, `qid`, `q_option`, `q_option_match`, `score`) VALUES
(1, 1, ' biru', '', 1),
(2, 1, ' jinga', '', 0),
(3, 1, ' merah', '', 0),
(4, 1, ' kuning', '', 0),
(5, 2, ' biru                ', '17441902853.jpg', 1),
(6, 2, ' jinga       ', '17441902852.png', 0),
(7, 2, ' merah      ', '17441902851.png', 0),
(8, 2, ' kuning      ', '17441902855.jpg', 0),
(9, 3, ' biru', '', 0),
(10, 4, ' 10', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_qbank`
--

CREATE TABLE `savsoft_qbank` (
  `qid` int(11) NOT NULL,
  `question_type` varchar(100) NOT NULL DEFAULT 'Multiple Choice Single Answer',
  `question` text NOT NULL,
  `description` text NOT NULL,
  `cid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `no_time_served` int(11) NOT NULL DEFAULT 0,
  `no_time_corrected` int(11) NOT NULL DEFAULT 0,
  `no_time_incorrected` int(11) NOT NULL DEFAULT 0,
  `no_time_unattempted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_qbank`
--

INSERT INTO `savsoft_qbank` (`qid`, `question_type`, `question`, `description`, `cid`, `lid`, `no_time_served`, `no_time_corrected`, `no_time_incorrected`, `no_time_unattempted`) VALUES
(1, 'Multiple Choice Single Answer', '  SPEKTRUM GELOMBANG ELEKTROMAGNETIK&amp;lt;br&amp;gt;Kenny sedang melihat artikel mengenai Sains dan menemukan gambar sebagai berikut.&amp;lt;br&amp;gt;Pada gambar, disajikan berbagai macam gelombang elektromagnetik yang disusun berdasarkan frekuensinya dalam satuan Hz.&amp;lt;br&amp;gt;Warna yang memiliki frekuensi lebih tinggi daripada warna hijau, tetapi lebih rendah daripada warna ungu adalah ....     ', '17441902854.jpg', 1, 2, 0, 0, 0, 0),
(2, 'Multiple Choice Single Answer', '  SPEKTRUM GELOMBANG ELEKTROMAGNETIK&amp;lt;br&amp;gt;Kenny sedang melihat artikel mengenai Sains dan menemukan gambar sebagai berikut.&amp;lt;br&amp;gt;Pada gambar, disajikan berbagai macam gelombang elektromagnetik yang disusun berdasarkan frekuensinya dalam satuan Hz.&amp;lt;br&amp;gt;Warna yang memiliki frekuensi lebih tinggi daripada warna hijau, tetapi lebih rendah daripada warna ungu adalah ....     ', '17441902854.jpg', 1, 2, 0, 0, 0, 0),
(3, 'Multiple Choice Single Answer', '  Kenny sedang melihat artikel mengenai Sains dan menemukan gambar sebagai berikut.&amp;lt;br&amp;gt;Pada gambar, disajikan berbagai macam gelombang elektromagnetik yang disusun berdasarkan frekuensinya dalam satuan Hz.&amp;lt;br&amp;gt;Warna yang memiliki frekuensi lebih tinggi daripada warna hijau, tetapi lebih rendah daripada warna ungu adalah ............', '', 1, 2, 0, 0, 0, 0),
(4, 'Multiple Choice Single Answer', '  2 x 5', '', 1, 2, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sinkron`
--

CREATE TABLE `sinkron` (
  `id` int(11) NOT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `jumlah` varchar(50) DEFAULT '0',
  `tanggal` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sinkron`
--

INSERT INTO `sinkron` (`id`, `kode`, `jumlah`, `tanggal`) VALUES
(1, 'SISWA', '0', NULL),
(2, 'MAPEL', '0', NULL),
(3, 'BANKSOAL', '0', NULL),
(4, 'SOAL', '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(50) DEFAULT NULL,
  `nisn` varchar(50) DEFAULT NULL,
  `nopes` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `fase` varchar(11) DEFAULT NULL,
  `level` varchar(2) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `agama` varchar(50) DEFAULT NULL,
  `jk` varchar(50) DEFAULT NULL,
  `nowa` varchar(20) DEFAULT NULL,
  `nowa_ortu` varchar(50) DEFAULT NULL,
  `ruang` varchar(50) DEFAULT NULL,
  `sesi` varchar(50) DEFAULT NULL,
  `server` varchar(50) DEFAULT NULL,
  `online` int(11) NOT NULL DEFAULT 0,
  `foto` varchar(255) DEFAULT NULL,
  `blok` int(11) NOT NULL DEFAULT 0,
  `sts` int(11) NOT NULL DEFAULT 0,
  `idjari` varchar(11) DEFAULT NULL,
  `t_lahir` varchar(50) DEFAULT NULL,
  `tgl_lahir` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `ayah` varchar(50) DEFAULT NULL,
  `ibu` varchar(50) DEFAULT NULL,
  `pek_ayah` varchar(50) DEFAULT NULL,
  `pek_ibu` varchar(50) DEFAULT NULL,
  `desa` varchar(50) DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kabupaten` varchar(50) DEFAULT NULL,
  `blokir` int(11) NOT NULL DEFAULT 0,
  `sakit` int(11) NOT NULL DEFAULT 0,
  `izin` int(11) NOT NULL DEFAULT 0,
  `alpha` int(11) NOT NULL DEFAULT 0,
  `prestasi` text DEFAULT NULL,
  `tingkat` varchar(50) DEFAULT NULL,
  `juara` varchar(50) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `nokartu` varchar(50) DEFAULT NULL,
  `saldo` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nis`, `nisn`, `nopes`, `nama`, `username`, `password`, `fase`, `level`, `kelas`, `jurusan`, `agama`, `jk`, `nowa`, `nowa_ortu`, `ruang`, `sesi`, `server`, `online`, `foto`, `blok`, `sts`, `idjari`, `t_lahir`, `tgl_lahir`, `alamat`, `ayah`, `ibu`, `pek_ayah`, `pek_ibu`, `desa`, `kecamatan`, `kabupaten`, `blokir`, `sakit`, `izin`, `alpha`, `prestasi`, `tingkat`, `juara`, `catatan`, `ket`, `nokartu`, `saldo`) VALUES
(1, '20221001', '0001', 'US-SMAN-01', 'ABIWANTA RIZKY WIDYA AGUNG', 'US-1', 'US-1', 'E', '10', 'X-A', 'UMUM', 'Islam', 'L', '', '', 'X-A', '1', 'ESANDIK-A', 1, NULL, 0, 0, NULL, 'Jakarta', '10/10/2006', 'Jln. Mawar', 'Andrea Lusnito', 'Putri Sitra', 'PNS', 'WIRAUSAHA', 'Suka', 'Maju', 'Merdeka', 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(2, '20221002', '0002', 'US-SMAN-02', 'AISYAH TRI CAHYA', 'US-2', 'US-2', 'E', '10', 'X-A', 'UMUM', 'Islam', 'P', '', '', 'X-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, 'Jakarta', '10/11/2006', 'Jln. Mawar', 'Andrea Lusnito', 'Putri Sitra', 'PNS', 'WIRAUSAHA', 'Suka', 'Maju', 'Merdeka', 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2', NULL, 0),
(3, '20221003', '0003', 'US-SMAN-03', 'AISYAH VARDA URIFA', 'US-3', 'US-3', 'E', '10', 'X-A', 'UMUM', 'Islam', 'P', '', '', 'X-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, 'Jakarta', '10/12/2006', 'Jln. Mawar', 'Andrea Lusnito', 'Putri Sitra', 'PNS', 'WIRAUSAHA', 'Suka', 'Maju', 'Merdeka', 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(4, '20221004', '0004', 'US-SMAN-04', 'ALVERO DHIKO LEVANO', 'US-4', 'US-4', 'E', '10', 'X-A', 'UMUM', 'Islam', 'L', '', '', 'X-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, 'Jakarta', '10/13/2006', 'Jln. Mawar', 'Andrea Lusnito', 'Putri Sitra', 'PNS', 'WIRAUSAHA', 'Suka', 'Maju', 'Merdeka', 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(5, '20221005', '0005', 'US-SMAN-05', 'ANAVELIA FRANSISCA SIMANJUNTAK', 'US-5', 'US-5', 'E', '10', 'X-A', 'UMUM', 'Kristen', 'P', '', '', 'X-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, 'Jakarta', '10/14/2006', 'Jln. Mawar', 'Andrea Lusnito', 'Putri Sitra', 'PNS', 'WIRAUSAHA', 'Suka', 'Maju', 'Merdeka', 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(6, '20221006', '0006', 'US-SMAN-06', 'ANDREAS NOVA ANDRIANO', 'US-6', 'US-6', 'E', '10', 'X-A', 'UMUM', 'Islam', 'L', '', '', 'X-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, 'Jakarta', '10/15/2006', 'Jln. Mawar', 'Andrea Lusnito', 'Putri Sitra', 'PNS', 'WIRAUSAHA', 'Suka', 'Maju', 'Merdeka', 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(7, '20221007', '0007', 'US-SMAN-07', 'AUREL GRESIASEPTIANA', 'US-7', 'US-7', 'E', '10', 'X-A', 'UMUM', 'Kristen', 'P', '', '', 'X-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, 'Jakarta', '10/16/2006', 'Jln. Mawar', 'Andrea Lusnito', 'Putri Sitra', 'PNS', 'WIRAUSAHA', 'Suka', 'Maju', 'Merdeka', 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(8, '20221008', '0008', 'US-SMAN-08', 'AYESSHA SILVIA AMELLYA', 'US-8', 'US-8', 'E', '10', 'X-A', 'UMUM', 'Kristen', 'P', '', '', 'X-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, 'Jakarta', '10/17/2006', 'Jln. Mawar', 'Andrea Lusnito', 'Putri Sitra', 'PNS', 'WIRAUSAHA', 'Suka', 'Maju', 'Merdeka', 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2', NULL, 0),
(9, '20221009', '0009', 'US-SMAN-09', 'BELLA AYU INDAH SARI', 'US-9', 'US-9', 'E', '10', 'X-A', 'UMUM', 'Islam', 'P', '', '', 'X-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, 'Jakarta', '10/18/2006', 'Jln. Mawar', 'Andrea Lusnito', 'Putri Sitra', 'PNS', 'WIRAUSAHA', 'Suka', 'Maju', 'Merdeka', 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(10, '20221010', '0010', 'US-SMAN-10', 'DANELA CRISTIANE', 'US-10', 'US-10', 'E', '10', 'X-A', 'UMUM', 'Kristen', 'P', '', '', 'X-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, 'Jakarta', '10/19/2006', 'Jln. Mawar', 'Andrea Lusnito', 'Putri Sitra', 'PNS', 'WIRAUSAHA', 'Suka', 'Maju', 'Merdeka', 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(11, '20221011', '0011', 'US-SMAN-11', 'DANY SAFA\'AD', 'US-11', 'US-11', 'E', '10', 'X-A', 'UMUM', 'Islam', 'L', '', '', 'X-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, 'Jakarta', '10/20/2006', 'Jln. Mawar', 'Andrea Lusnito', 'Putri Sitra', 'PNS', 'WIRAUSAHA', 'Suka', 'Maju', 'Merdeka', 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(12, '20221012', '0012', 'US-SMAN-12', 'DENIS SABRINA', 'US-12', 'US-12', 'E', '10', 'X-A', 'UMUM', 'Islam', 'P', '', '', 'X-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, 'Jakarta', '10/21/2006', 'Jln. Mawar', 'Andrea Lusnito', 'Putri Sitra', 'PNS', 'WIRAUSAHA', 'Suka', 'Maju', 'Merdeka', 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(13, '20221013', '0013', 'US-SMAN-13', 'FADILLAH RAMADHANI', 'US-13', 'US-13', 'E', '10', 'X-A', 'UMUM', 'Islam', 'L', '', '', 'X-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, 'Jakarta', '10/22/2006', 'Jln. Mawar', 'Andrea Lusnito', 'Putri Sitra', 'PNS', 'WIRAUSAHA', 'Suka', 'Maju', 'Merdeka', 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(14, '20221014', '0014', 'US-SMAN-14', 'FAKHRI RAHMAD JULIAN', 'US-14', 'US-14', 'E', '10', 'X-A', 'UMUM', 'Islam', 'L', '', '', 'X-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, 'Jakarta', '10/23/2006', 'Jln. Mawar', 'Andrea Lusnito', 'Putri Sitra', 'PNS', 'WIRAUSAHA', 'Suka', 'Maju', 'Merdeka', 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(15, '20221015', '0015', 'US-SMAN-15', 'FIRA RAHAYU DWIYANING P', 'US-15', 'US-15', 'E', '10', 'X-A', 'UMUM', 'Islam', 'P', '', '', 'X-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, 'Jakarta', '10/24/2006', 'Jln. Mawar', 'Andrea Lusnito', 'Putri Sitra', 'PNS', 'WIRAUSAHA', 'Suka', 'Maju', 'Merdeka', 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2', NULL, 0),
(16, '20221016', '0016', 'US-SMAN-16', 'Gantari Sastra Paramadiwa', 'US-16', 'US-16', 'E', '10', 'X-A', 'UMUM', 'Islam', 'P', '', '', 'X-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, 'Jakarta', '10/25/2006', 'Jln. Mawar', 'Andrea Lusnito', 'Putri Sitra', 'PNS', 'WIRAUSAHA', 'Suka', 'Maju', 'Merdeka', 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(17, '20221017', '0017', 'US-SMAN-17', 'GILANG ANDRIANTAMA', 'US-17', 'US-17', 'E', '10', 'X-A', 'UMUM', 'Islam', 'L', '', '', 'X-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, 'Jakarta', '10/26/2006', 'Jln. Mawar', 'Andrea Lusnito', 'Putri Sitra', 'PNS', 'WIRAUSAHA', 'Suka', 'Maju', 'Merdeka', 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(18, '20221018', '0018', 'US-SMAN-18', 'HERI PRASETYO', 'US-18', 'US-18', 'E', '10', 'X-A', 'UMUM', 'Kristen', 'L', '', '', 'X-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, 'Jakarta', '10/27/2006', 'Jln. Mawar', 'Andrea Lusnito', 'Putri Sitra', 'PNS', 'WIRAUSAHA', 'Suka', 'Maju', 'Merdeka', 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(19, '20221019', '0019', 'US-SMAN-19', 'IRFAN ANTONY FAUZAN IBNI', 'US-19', 'US-19', 'E', '10', 'X-A', 'UMUM', 'Islam', 'L', '', '', 'X-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, 'Jakarta', '10/28/2006', 'Jln. Mawar', 'Andrea Lusnito', 'Putri Sitra', 'PNS', 'WIRAUSAHA', 'Suka', 'Maju', 'Merdeka', 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(20, '20221020', '0020', 'US-SMAN-20', 'KARINA MEGA KASIH', 'US-20', 'US-20', 'E', '10', 'X-A', 'UMUM', 'Kristen', 'P', '', '', 'X-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, 'Jakarta', '10/29/2006', 'Jln. Mawar', 'Andrea Lusnito', 'Putri Sitra', 'PNS', 'WIRAUSAHA', 'Suka', 'Maju', 'Merdeka', 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(21, '20221021', '0021', 'US-SMAN-21', 'LUTFI AVRILIA', 'US-21', 'US-21', 'E', '10', 'X-A', 'UMUM', 'Islam', 'P', '', '', 'X-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, 'Jakarta', '10/30/2006', 'Jln. Mawar', 'Andrea Lusnito', 'Putri Sitra', 'PNS', 'WIRAUSAHA', 'Suka', 'Maju', 'Merdeka', 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(22, '20221022', '0022', 'US-SMAN-22', 'MUHAMMAD ALIF WALID MAULIDDIN', 'US-22', 'US-22', 'E', '10', 'X-A', 'UMUM', 'Islam', 'L', '', '', 'X-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, 'Jakarta', '10/31/2006', 'Jln. Mawar', 'Andrea Lusnito', 'Putri Sitra', 'PNS', 'WIRAUSAHA', 'Suka', 'Maju', 'Merdeka', 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(23, '20221023', '0023', 'US-SMAN-23', 'NICO ANDREAN HASAN EFENDI', 'US-23', 'US-23', 'E', '10', 'X-A', 'UMUM', 'Islam', 'L', '', '', 'X-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, 'Jakarta', '11/1/2006', 'Jln. Mawar', 'Andrea Lusnito', 'Putri Sitra', 'PNS', 'WIRAUSAHA', 'Suka', 'Maju', 'Merdeka', 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(24, '20221024', '0024', 'US-SMAN-24', 'PURI AYU CHRISTIANI', 'US-24', 'US-24', 'E', '10', 'X-A', 'UMUM', 'Kristen', 'P', '', '', 'X-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, 'Jakarta', '11/2/2006', 'Jln. Mawar', 'Andrea Lusnito', 'Putri Sitra', 'PNS', 'WIRAUSAHA', 'Suka', 'Maju', 'Merdeka', 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(25, '20221025', '0025', 'US-SMAN-25', 'RAHMAT RENDI SANTOSO', 'US-25', 'US-25', 'E', '10', 'X-A', 'UMUM', 'Islam', 'L', '', '', 'X-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, 'Jakarta', '11/3/2006', 'Jln. Mawar', 'Andrea Lusnito', 'Putri Sitra', 'PNS', 'WIRAUSAHA', 'Suka', 'Maju', 'Merdeka', 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(26, '20221026', '0026', 'US-SMAN-26', 'RAIHAN NUR FATHONI', 'US-26', 'US-26', 'E', '10', 'X-B', 'UMUM', 'Islam', 'L', '', '', 'X-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(27, '20221027', '0027', 'US-SMAN-27', 'Riko Yoji Zebrian', 'US-27', 'US-27', 'E', '10', 'X-B', 'UMUM', 'Islam', 'L', '', '', 'X-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(28, '20221028', '0028', 'US-SMAN-28', 'ROHMAN ALFIANSYAH', 'US-28', 'US-28', 'E', '10', 'X-B', 'UMUM', 'Islam', 'L', '', '', 'X-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(29, '20221029', '0029', 'US-SMAN-29', 'RUSTALINO ADE ENDARTO', 'US-29', 'US-29', 'E', '10', 'X-B', 'UMUM', 'Islam', 'L', '', '', 'X-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2', NULL, 0),
(30, '20221030', '0030', 'US-SMAN-30', 'RYAN AHMAD AFFANDI', 'US-30', 'US-30', 'E', '10', 'X-B', 'UMUM', 'Islam', 'L', '', '', 'X-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(31, '20221031', '0031', 'US-SMAN-31', 'SEPTARIA EKA KRISTANTI', 'US-31', 'US-31', 'E', '10', 'X-B', 'UMUM', 'Kristen', 'P', '', '', 'X-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(32, '20221032', '0032', 'US-SMAN-32', 'STEVANIA HARVIANING CRISTIANI', 'US-32', 'US-32', 'E', '10', 'X-B', 'UMUM', 'Kristen', 'P', '', '', 'X-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '0', NULL, 0),
(33, '20221033', '0033', 'US-SMAN-33', 'WIDYA LESTARI', 'US-33', 'US-33', 'E', '10', 'X-B', 'UMUM', 'Islam', 'P', '', '', 'X-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(34, '20221034', '0034', 'US-SMAN-34', 'ACHMAD ARIFIN', 'US-34', 'US-34', 'E', '10', 'X-B', 'UMUM', 'Islam', 'L', '', '', 'X-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(35, '20221035', '0035', 'US-SMAN-35', 'AISAH CINDY PRATAMA', 'US-35', 'US-35', 'E', '10', 'X-B', 'UMUM', 'Islam', 'P', '', '', 'X-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(36, '20221036', '0036', 'US-SMAN-36', 'AISYAH NUR RAHMA', 'US-36', 'US-36', 'E', '10', 'X-B', 'UMUM', 'Islam', 'P', '', '', 'X-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(37, '20221037', '0037', 'US-SMAN-37', 'Aji Wahyudi', 'US-37', 'US-37', 'E', '10', 'X-B', 'UMUM', 'Islam', 'L', '', '', 'X-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(38, '20221038', '0038', 'US-SMAN-38', 'ANDRE RIZKY YULIANTO', 'US-38', 'US-38', 'E', '10', 'X-B', 'UMUM', 'Islam', 'L', '', '', 'X-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(39, '20221039', '0039', 'US-SMAN-39', 'ANGGUN RITA AMELIA', 'US-39', 'US-39', 'E', '10', 'X-B', 'UMUM', 'Islam', 'P', '', '', 'X-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(40, '20221040', '0040', 'US-SMAN-40', 'ANISA KURNIA ISTIANI', 'US-40', 'US-40', 'E', '10', 'X-B', 'UMUM', 'Islam', 'P', '', '', 'X-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(41, '20221041', '0041', 'US-SMAN-41', 'BAGAS PRASETYA', 'US-41', 'US-41', 'E', '10', 'X-B', 'UMUM', 'Islam', 'L', '', '', 'X-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(42, '20221042', '0042', 'US-SMAN-42', 'BILAL AHMAD', 'US-42', 'US-42', 'E', '10', 'X-B', 'UMUM', 'Islam', 'L', '', '', 'X-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(43, '20221043', '0043', 'US-SMAN-43', 'DARIL ALIF ZULKARNAEN', 'US-43', 'US-43', 'E', '10', 'X-B', 'UMUM', 'Islam', 'L', '', '', 'X-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(44, '20221044', '0044', 'US-SMAN-44', 'Derian Putra Pratama', 'US-44', 'US-44', 'E', '10', 'X-B', 'UMUM', 'Islam', 'L', '', '', 'X-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(45, '20221045', '0045', 'US-SMAN-45', 'ERISTA VELANICA PUTRI', 'US-45', 'US-45', 'E', '10', 'X-B', 'UMUM', 'Islam', 'P', '', '', 'X-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(46, '20221046', '0046', 'US-SMAN-46', 'FARAH NADIA TAUFIQY', 'US-46', 'US-46', 'E', '10', 'X-B', 'UMUM', 'Islam', 'P', '', '', 'X-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(47, '20221047', '0047', 'US-SMAN-47', 'FERNANDO VICKY ALVIANSAH', 'US-47', 'US-47', 'E', '10', 'X-B', 'UMUM', 'Islam', 'L', '', '', 'X-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(48, '20221048', '0048', 'US-SMAN-48', 'GABRIELLA NATAZHA SALSABILLA', 'US-48', 'US-48', 'E', '10', 'X-B', 'UMUM', 'Islam', 'P', '', '', 'X-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(49, '20221049', '0049', 'US-SMAN-49', 'GIOVANO HERNINO SAPUTRA', 'US-49', 'US-49', 'E', '10', 'X-B', 'UMUM', 'Islam', 'L', '', '', 'X-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(50, '20221050', '0050', 'US-SMAN-50', 'IQBAL JAUHAR RAVANDA', 'US-50', 'US-50', 'E', '10', 'X-B', 'UMUM', 'Islam', 'L', '', '', 'X-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0),
(51, '20221051', '0051', 'US-SMAN-51', 'IZZATUL HASANAH RAFIATUZ ZAHRO', 'US-51', 'US-51', 'F', '11', 'XI-A', 'UMUM', 'Islam', 'P', '', '', 'XI-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(52, '20221052', '0052', 'US-SMAN-52', 'LEITISYA ZEINNARA', 'US-52', 'US-52', 'F', '11', 'XI-A', 'UMUM', 'Islam', 'P', '', '', 'XI-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(53, '20221053', '0053', 'US-SMAN-53', 'M. AJI FIKI RAHMATDANI SOFIULLOH', 'US-53', 'US-53', 'F', '11', 'XI-A', 'UMUM', 'Islam', 'L', '', '', 'XI-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(54, '20221054', '0054', 'US-SMAN-54', 'MILA PUTRI MIRANDA', 'US-54', 'US-54', 'F', '11', 'XI-A', 'UMUM', 'Islam', 'P', '', '', 'XI-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(55, '20221055', '0055', 'US-SMAN-55', 'MOH. AVATAR', 'US-55', 'US-55', 'F', '11', 'XI-A', 'UMUM', 'Islam', 'L', '', '', 'XI-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(56, '20221056', '0056', 'US-SMAN-56', 'MUHAMMAD HABIBI', 'US-56', 'US-56', 'F', '11', 'XI-A', 'UMUM', 'Islam', 'L', '', '', 'XI-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(57, '20221057', '0057', 'US-SMAN-57', 'Muhhamad Rudianto', 'US-57', 'US-57', 'F', '11', 'XI-A', 'UMUM', 'Islam', 'L', '', '', 'XI-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(58, '20221058', '0058', 'US-SMAN-58', 'NABHAN RADINKA KEVAN', 'US-58', 'US-58', 'F', '11', 'XI-A', 'UMUM', 'Islam', 'L', '', '', 'XI-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(59, '20221059', '0059', 'US-SMAN-59', 'NICO ALFIANO PRATAMA', 'US-59', 'US-59', 'F', '11', 'XI-A', 'UMUM', 'Islam', 'L', '', '', 'XI-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(60, '20221060', '0060', 'US-SMAN-60', 'RAHMAD RIVALDI', 'US-60', 'US-60', 'F', '11', 'XI-A', 'UMUM', 'Islam', 'L', '', '', 'XI-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(61, '20221061', '0061', 'US-SMAN-61', 'RAISYA SOFIA BUNGA FIRDAUS', 'US-61', 'US-61', 'F', '11', 'XI-A', 'UMUM', 'Islam', 'P', '', '', 'XI-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(62, '20221062', '0062', 'US-SMAN-62', 'RANIKA ARUM PRATIWI', 'US-62', 'US-62', 'F', '11', 'XI-A', 'UMUM', 'Islam', 'P', '', '', 'XI-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(63, '20221063', '0063', 'US-SMAN-63', 'RATNA ANIZAH', 'US-63', 'US-63', 'F', '11', 'XI-A', 'UMUM', 'Islam', 'P', '', '', 'XI-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(64, '20221064', '0064', 'US-SMAN-64', 'Riski Maulana', 'US-64', 'US-64', 'F', '11', 'XI-A', 'UMUM', 'Islam', 'L', '', '', 'XI-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(65, '20221065', '0065', 'US-SMAN-65', 'SABIAN SYAUQI ARATA', 'US-65', 'US-65', 'F', '11', 'XI-A', 'UMUM', 'Islam', 'L', '', '', 'XI-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(66, '20221066', '0066', 'US-SMAN-66', 'SALSA WULAN DELIMA', 'US-66', 'US-66', 'F', '11', 'XI-A', 'UMUM', 'Islam', 'P', '', '', 'XI-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(67, '20221067', '0067', 'US-SMAN-67', 'VILWA SYEIRA EN NADIA', 'US-67', 'US-67', 'F', '11', 'XI-A', 'UMUM', 'Islam', 'P', '', '', 'XI-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(68, '20221068', '0068', 'US-SMAN-68', 'WIGNYO ADAM', 'US-68', 'US-68', 'F', '11', 'XI-A', 'UMUM', 'Islam', 'L', '', '', 'XI-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(69, '20221069', '0069', 'US-SMAN-69', 'ADELIA DWI NURFADILA', 'US-69', 'US-69', 'F', '11', 'XI-A', 'UMUM', 'Islam', 'P', '', '', 'XI-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(70, '20221070', '0070', 'US-SMAN-70', 'AHMAT', 'US-70', 'US-70', 'F', '11', 'XI-A', 'UMUM', 'Islam', 'L', '', '', 'XI-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(71, '20221071', '0071', 'US-SMAN-71', 'AIRIN KHORIZAH NUR RAHMAH', 'US-71', 'US-71', 'F', '11', 'XI-A', 'UMUM', 'Islam', 'P', '', '', 'XI-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(72, '20221072', '0072', 'US-SMAN-72', 'ANDIKA NUR FURQON NASRULLAH', 'US-72', 'US-72', 'F', '11', 'XI-A', 'UMUM', 'Islam', 'L', '', '', 'XI-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(73, '20221073', '0073', 'US-SMAN-73', 'ANITA KURNIAWATI', 'US-73', 'US-73', 'F', '11', 'XI-A', 'UMUM', 'Islam', 'P', '', '', 'XI-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(74, '20221074', '0074', 'US-SMAN-74', 'AYNA RO\'IFFATUL AZIZAH', 'US-74', 'US-74', 'F', '11', 'XI-A', 'UMUM', 'Islam', 'P', '', '', 'XI-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(75, '20221075', '0075', 'US-SMAN-75', 'BILGHIS AZZAHRA', 'US-75', 'US-75', 'F', '11', 'XI-A', 'UMUM', 'Islam', 'P', '', '', 'XI-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(76, '20221076', '0076', 'US-SMAN-76', 'DIAN ILHAM AJI ROHIM', 'US-76', 'US-76', 'F', '11', 'XI-B', 'UMUM', 'Islam', 'L', '', '', 'XI-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(77, '20221077', '0077', 'US-SMAN-77', 'ELVYN ANDHIKA PUTRA PRATAMA', 'US-77', 'US-77', 'F', '11', 'XI-B', 'UMUM', 'Islam', 'L', '', '', 'XI-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(78, '20221078', '0078', 'US-SMAN-78', 'FARHAN NUR HUDA', 'US-78', 'US-78', 'F', '11', 'XI-B', 'UMUM', 'Islam', 'L', '', '', 'XI-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(79, '20221079', '0079', 'US-SMAN-79', 'FITRAH HANUM NIMASAYU', 'US-79', 'US-79', 'F', '11', 'XI-B', 'UMUM', 'Islam', 'P', '', '', 'XI-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(80, '20221080', '0080', 'US-SMAN-80', 'GRIZTA BAYU FEBRIAN FAJAR YUWONO', 'US-80', 'US-80', 'F', '11', 'XI-B', 'UMUM', 'Islam', 'L', '', '', 'XI-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(81, '20221081', '0081', 'US-SMAN-81', 'INGGAR AYU NISWARI', 'US-81', 'US-81', 'F', '11', 'XI-B', 'UMUM', 'Islam', 'P', '', '', 'XI-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(82, '20221082', '0082', 'US-SMAN-82', 'ISYA DIKRI SUDRAJAD', 'US-82', 'US-82', 'F', '11', 'XI-B', 'UMUM', 'Islam', 'L', '', '', 'XI-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(83, '20221083', '0083', 'US-SMAN-83', 'KARUNIA EKA PUTRI', 'US-83', 'US-83', 'F', '11', 'XI-B', 'UMUM', 'Islam', 'P', '', '', 'XI-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(84, '20221084', '0084', 'US-SMAN-84', 'LALA PUTRI MAHARANI', 'US-84', 'US-84', 'F', '11', 'XI-B', 'UMUM', 'Islam', 'P', '', '', 'XI-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(85, '20221085', '0085', 'US-SMAN-85', 'M. FAKHRI ADIS AL-FIKRI', 'US-85', 'US-85', 'F', '11', 'XI-B', 'UMUM', 'Islam', 'L', '', '', 'XI-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(86, '20221086', '0086', 'US-SMAN-86', 'MOCHAMAD JUAN RAFANDA YUSWADI', 'US-86', 'US-86', 'F', '11', 'XI-B', 'UMUM', 'Islam', 'L', '', '', 'XI-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(87, '20221087', '0087', 'US-SMAN-87', 'MUHAMMAD DAVIN PRAYOGA', 'US-87', 'US-87', 'F', '11', 'XI-B', 'UMUM', 'Islam', 'L', '', '', 'XI-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(88, '20221088', '0088', 'US-SMAN-88', 'MUHAMMAD HARIS ALFARIZI', 'US-88', 'US-88', 'F', '11', 'XI-B', 'UMUM', 'Islam', 'L', '', '', 'XI-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(89, '20221089', '0089', 'US-SMAN-89', 'MUHAMMAD SYAQIF ALI MAHRUS', 'US-89', 'US-89', 'F', '11', 'XI-B', 'UMUM', 'Islam', 'L', '', '', 'XI-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(90, '20221090', '0090', 'US-SMAN-90', 'MUTIARA EQUILA KHAIRUNNISA', 'US-90', 'US-90', 'F', '11', 'XI-B', 'UMUM', 'Islam', 'P', '', '', 'XI-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(91, '20221091', '0091', 'US-SMAN-91', 'NABILA AURELIA PUTRI SUSANTO', 'US-91', 'US-91', 'F', '11', 'XI-B', 'UMUM', 'Islam', 'P', '', '', 'XI-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(92, '20221092', '0092', 'US-SMAN-92', 'NAYLA SA\'BANINA', 'US-92', 'US-92', 'F', '11', 'XI-B', 'UMUM', 'Islam', 'P', '', '', 'XI-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(93, '20221093', '0093', 'US-SMAN-93', 'NOWHA ABDUL AZIZ', 'US-93', 'US-93', 'F', '11', 'XI-B', 'UMUM', 'Islam', 'L', '', '', 'XI-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(94, '20221094', '0094', 'US-SMAN-94', 'QIBRAN AHMAD FARIQIN', 'US-94', 'US-94', 'F', '11', 'XI-B', 'UMUM', 'Islam', 'L', '', '', 'XI-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(95, '20221095', '0095', 'US-SMAN-95', 'RISA DEWI ANDINI', 'US-95', 'US-95', 'F', '11', 'XI-B', 'UMUM', 'Islam', 'P', '', '', 'XI-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(96, '20221096', '0096', 'US-SMAN-96', 'SANDI IRAWAN', 'US-96', 'US-96', 'F', '11', 'XI-B', 'UMUM', 'Islam', 'L', '', '', 'XI-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(97, '20221097', '0097', 'US-SMAN-97', 'VICHO MADA ADHYASTA', 'US-97', 'US-97', 'F', '11', 'XI-B', 'UMUM', 'Islam', 'L', '', '', 'XI-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(98, '20221098', '0098', 'US-SMAN-98', 'VIVIAN RISKY FASHA', 'US-98', 'US-98', 'F', '11', 'XI-B', 'UMUM', 'Islam', 'P', '', '', 'XI-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(99, '20221099', '0099', 'US-SMAN-99', 'WALIT HASIN AHMAD', 'US-99', 'US-99', 'F', '11', 'XI-B', 'UMUM', 'Islam', 'L', '', '', 'XI-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(100, '20221100', '0100', 'US-SMAN-100', 'Wildan Al Amin', 'US-100', 'US-100', 'F', '11', 'XI-B', 'UMUM', 'Islam', 'L', '', '', 'XI-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(101, '20221101', '0101', 'US-SMAN-101', 'NI MADE SANTI DITARIANI', 'US-101', 'US-101', 'F', '12', 'XII-A', 'UMUM', 'Islam', 'P', '', '', 'XII-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(102, '20221102', '0102', 'US-SMAN-102', 'LUH ADE SITA PUTRI MAHA YADNYA', 'US-102', 'US-102', 'F', '12', 'XII-A', 'UMUM', 'Islam', 'P', '', '', 'XII-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(103, '20221103', '0103', 'US-SMAN-103', 'NI KADEK KETHRIN NATHA QINARA', 'US-103', 'US-103', 'F', '12', 'XII-A', 'UMUM', 'Islam', 'L', '', '', 'XII-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(104, '20221104', '0104', 'US-SMAN-104', 'NI KETUT LIA CRISTIANI', 'US-104', 'US-104', 'F', '12', 'XII-A', 'UMUM', 'Islam', 'P', '', '', 'XII-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(105, '20221105', '0105', 'US-SMAN-105', 'I GEDE WINDU DITYA PRATAMA', 'US-105', 'US-105', 'F', '12', 'XII-A', 'UMUM', 'Kristen', 'L', '', '', 'XII-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(106, '20221106', '0106', 'US-SMAN-106', 'NI KADEK PUTRI DWIPAYANI', 'US-106', 'US-106', 'F', '12', 'XII-A', 'UMUM', 'Islam', 'L', '', '', 'XII-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(107, '20221107', '0107', 'US-SMAN-107', 'LUH AYU TANTRIKAYANI', 'US-107', 'US-107', 'F', '12', 'XII-A', 'UMUM', 'Kristen', 'L', '', '', 'XII-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(108, '20221108', '0108', 'US-SMAN-108', 'NI KOMANG ANGGIRA YULINDRA PUTRI', 'US-108', 'US-108', 'F', '12', 'XII-A', 'UMUM', 'Kristen', 'L', '', '', 'XII-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(109, '20221109', '0109', 'US-SMAN-109', 'I MADE GIAN LAKSANA PRADIPA', 'US-109', 'US-109', 'F', '12', 'XII-A', 'UMUM', 'Islam', 'L', '', '', 'XII-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(110, '20221110', '0110', 'US-SMAN-110', 'I KADEK PANJI GAUTAMA', 'US-110', 'US-110', 'F', '12', 'XII-A', 'UMUM', 'Kristen', 'L', '', '', 'XII-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(111, '20221111', '0111', 'US-SMAN-111', 'NI LUH GEDE NOVI ADNYANI', 'US-111', 'US-111', 'F', '12', 'XII-A', 'UMUM', 'Islam', 'P', '', '', 'XII-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(112, '20221112', '0112', 'US-SMAN-112', 'KADEK ADITYA MAHA WIJAYA', 'US-112', 'US-112', 'F', '12', 'XII-A', 'UMUM', 'Islam', 'P', '', '', 'XII-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(113, '20221113', '0113', 'US-SMAN-113', 'LUH PUTU SINTA WIDYANI PUTRI', 'US-113', 'US-113', 'F', '12', 'XII-A', 'UMUM', 'Islam', 'P', '', '', 'XII-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(114, '20221114', '0114', 'US-SMAN-114', 'DEWA AYU YULIA CARMA', 'US-114', 'US-114', 'F', '12', 'XII-A', 'UMUM', 'Islam', 'L', '', '', 'XII-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(115, '20221115', '0115', 'US-SMAN-115', 'IDA BAGUS MAHDIKARA M', 'US-115', 'US-115', 'F', '12', 'XII-A', 'UMUM', 'Islam', 'L', '', '', 'XII-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(116, '20221116', '0116', 'US-SMAN-116', 'ANAK AGUNG GEDE AGUNG PRADNYANA PUTRA', 'US-116', 'US-116', 'F', '12', 'XII-A', 'UMUM', 'Islam', 'P', '', '', 'XII-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(117, '20221117', '0117', 'US-SMAN-117', 'NI KADEK ADELIA DWIVAYANI', 'US-117', 'US-117', 'F', '12', 'XII-A', 'UMUM', 'Islam', 'P', '', '', 'XII-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(118, '20221118', '0118', 'US-SMAN-118', 'PUTU MARTINI', 'US-118', 'US-118', 'F', '12', 'XII-A', 'UMUM', 'Kristen', 'L', '', '', 'XII-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(119, '20221119', '0119', 'US-SMAN-119', 'NI KADEK AYU SWANDEWI', 'US-119', 'US-119', 'F', '12', 'XII-A', 'UMUM', 'Islam', 'P', '', '', 'XII-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(120, '20221120', '0120', 'US-SMAN-120', 'NI PUTU AYU TANTRI MAHESUARI', 'US-120', 'US-120', 'F', '12', 'XII-A', 'UMUM', 'Kristen', 'L', '', '', 'XII-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(121, '20221121', '0121', 'US-SMAN-121', 'MUHAMAD NOVA HARDIANSYAH', 'US-121', 'US-121', 'F', '12', 'XII-A', 'UMUM', 'Islam', 'P', '', '', 'XII-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(122, '20221122', '0122', 'US-SMAN-122', 'AGOES HOCKY ANANDA KRISHNA', 'US-122', 'US-122', 'F', '12', 'XII-A', 'UMUM', 'Islam', 'L', '', '', 'XII-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(123, '20221123', '0123', 'US-SMAN-123', 'NI PUTU PANDYA KAYANA PRASANTI', 'US-123', 'US-123', 'F', '12', 'XII-A', 'UMUM', 'Islam', 'P', '', '', 'XII-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(124, '20221124', '0124', 'US-SMAN-124', 'CANDRA SUGI ARISTYA DEWI', 'US-124', 'US-124', 'F', '12', 'XII-A', 'UMUM', 'Kristen', 'P', '', '', 'XII-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(125, '20221125', '0125', 'US-SMAN-125', 'NI PUTU AYUDYA NIMAS ANJANI', 'US-125', 'US-125', 'F', '12', 'XII-A', 'UMUM', 'Islam', 'P', '', '', 'XII-A', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(126, '20221126', '0126', 'US-SMAN-126', 'I GUSTI AGUNG AYU PRAMI YUSTHI ADNYASWARI', 'US-126', 'US-126', 'F', '12', 'XII-B', 'UMUM', 'Islam', 'L', '', '', 'XII-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(127, '20221127', '0127', 'US-SMAN-127', 'SANG NYOMAN ADI PUTRA', 'US-127', 'US-127', 'F', '12', 'XII-B', 'UMUM', 'Islam', 'L', '', '', 'XII-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(128, '20221128', '0128', 'US-SMAN-128', 'I PUTU SUMERTA DWIPA YUDAWARNA', 'US-128', 'US-128', 'F', '12', 'XII-B', 'UMUM', 'Islam', 'L', '', '', 'XII-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(129, '20221129', '0129', 'US-SMAN-129', 'SANG MADE TRISNA WIDYASWADANA DALEM', 'US-129', 'US-129', 'F', '12', 'XII-B', 'UMUM', 'Budha', 'P', '', '', 'XII-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(130, '20221130', '0130', 'US-SMAN-130', 'NI PUTU AYU MEI LINDA PUTRI', 'US-130', 'US-130', 'F', '12', 'XII-B', 'UMUM', 'Islam', 'L', '', '', 'XII-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(131, '20221131', '0131', 'US-SMAN-131', 'I GEDE WALI ASTAWA ADIARTHA', 'US-131', 'US-131', 'F', '12', 'XII-B', 'UMUM', 'Kristen', 'P', '', '', 'XII-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(132, '20221132', '0132', 'US-SMAN-132', 'I KADEK RENDY ADNYANA', 'US-132', 'US-132', 'F', '12', 'XII-B', 'UMUM', 'Kristen', 'L', '', '', 'XII-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(133, '20221133', '0133', 'US-SMAN-133', 'I NYOMAN PUTRA DHANANJAYA', 'US-133', 'US-133', 'F', '12', 'XII-B', 'UMUM', 'Islam', 'P', '', '', 'XII-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(134, '20221134', '0134', 'US-SMAN-134', 'I KOMANG YOGA TRI WEDANTARA', 'US-134', 'US-134', 'F', '12', 'XII-B', 'UMUM', 'Islam', 'P', '', '', 'XII-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(135, '20221135', '0135', 'US-SMAN-135', 'I KOMANG JUNIANTHARA WIRADANA', 'US-135', 'US-135', 'F', '12', 'XII-B', 'UMUM', 'Islam', 'L', '', '', 'XII-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(136, '20221136', '0136', 'US-SMAN-136', 'I WAYAN ARYA WEDA SASTRA WIRAYANA', 'US-136', 'US-136', 'F', '12', 'XII-B', 'UMUM', 'Islam', 'L', '', '', 'XII-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(137, '20221137', '0137', 'US-SMAN-137', 'I KOMANG SUARTAWAN ADI', 'US-137', 'US-137', 'F', '12', 'XII-B', 'UMUM', 'Islam', 'L', '', '', 'XII-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(138, '20221138', '0138', 'US-SMAN-138', 'NI MADE METRIA GOPI SWARI', 'US-138', 'US-138', 'F', '12', 'XII-B', 'UMUM', 'Islam', 'L', '', '', 'XII-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(139, '20221139', '0139', 'US-SMAN-139', 'I NENGAH SUKADANA', 'US-139', 'US-139', 'F', '12', 'XII-B', 'UMUM', 'Budha', 'L', '', '', 'XII-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(140, '20221140', '0140', 'US-SMAN-140', 'NI WAYAN ERSANIA ASTHA NINGSIH', 'US-140', 'US-140', 'F', '12', 'XII-B', 'UMUM', 'Islam', 'P', '', '', 'XII-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(141, '20221141', '0141', 'US-SMAN-141', 'NI PUTU NOVIANTI', 'US-141', 'US-141', 'F', '12', 'XII-B', 'UMUM', 'Islam', 'P', '', '', 'XII-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(142, '20221142', '0142', 'US-SMAN-142', 'NI MADE FEBIYANTI CHINTIADEWI PRIYATNA', 'US-142', 'US-142', 'F', '12', 'XII-B', 'UMUM', 'Islam', 'P', '', '', 'XII-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(143, '20221143', '0143', 'US-SMAN-143', 'I KOMANG TRISNAWAN', 'US-143', 'US-143', 'F', '12', 'XII-B', 'UMUM', 'Islam', 'L', '', '', 'XII-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(144, '20221144', '0144', 'US-SMAN-144', 'NI PUTU OKKY ANDREA', 'US-144', 'US-144', 'F', '12', 'XII-B', 'UMUM', 'Budha', 'L', '', '', 'XII-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(145, '20221145', '0145', 'US-SMAN-145', 'I KADEK ANGGA ADITYA', 'US-145', 'US-145', 'F', '12', 'XII-B', 'UMUM', 'Islam', 'P', '', '', 'XII-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(146, '20221146', '0146', 'US-SMAN-146', 'NI KADEK EMYA TANIA PUTERI', 'US-146', 'US-146', 'F', '12', 'XII-B', 'UMUM', 'Islam', 'L', '', '', 'XII-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(147, '20221147', '0147', 'US-SMAN-147', 'NI PUTU EMA RANIYA PUTERI', 'US-147', 'US-147', 'F', '12', 'XII-B', 'UMUM', 'Islam', 'L', '', '', 'XII-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(148, '20221148', '0148', 'US-SMAN-148', 'NI PUTU EMA DIVYA PUTRI', 'US-148', 'US-148', 'F', '12', 'XII-B', 'UMUM', 'Budha', 'P', '', '', 'XII-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(149, '20221149', '0149', 'US-SMAN-149', 'KADEK DANIA AISWARYA PRAMESWARI', 'US-149', 'US-149', 'F', '12', 'XII-B', 'UMUM', 'Islam', 'L', '', '', 'XII-B', '1', 'ESANDIK-A', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(150, '20221150', '0150', 'US-SMAN-150', 'I KETUT AGUS SETIAWAN', 'US-150', 'US-150', 'F', '12', 'XII-B', 'UMUM', 'Islam', 'L', '', '', 'XII-B', '1', 'ESANDIK-A', 0, 'WhatsApp Image 2025-07-30 at 14.15.07.jpeg', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `skkb`
--

CREATE TABLE `skkb` (
  `id` int(11) NOT NULL,
  `header` text NOT NULL,
  `fungsi` int(11) DEFAULT NULL,
  `file` text DEFAULT NULL,
  `fungsi2` int(11) DEFAULT NULL,
  `isi` longtext NOT NULL,
  `foter` text NOT NULL,
  `nosurat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skkb`
--

INSERT INTO `skkb` (`id`, `header`, `fungsi`, `file`, `fungsi2`, `isi`, `foter`, `nosurat`) VALUES
(1, 'DINAS PENDIDIKAN KABUPATEN MERDEKA', 0, '', 1, '<p>Adalah benar siswa <strong>SMA NUSANTARA</strong> dan sepanjang pengetahuan kami anak tersebut <strong>Berkelakuan Baik dan tidak pernah terlibat Narkoba</strong>.</p>', '<p>Demikian Surat Keterangan ini kami buat dengan sesungguhnya dan sebenarnya, dan agar dapat dipergunakan sesuai peruntukkannya.</p>', '432.1/STBC/VI/2025');

-- --------------------------------------------------------

--
-- Table structure for table `skl`
--

CREATE TABLE `skl` (
  `id_skl` int(11) NOT NULL,
  `tingkat` varchar(50) DEFAULT NULL,
  `no_surat` varchar(50) NOT NULL,
  `nama_surat` varchar(50) NOT NULL,
  `tgl_surat` varchar(50) NOT NULL,
  `header` mediumtext DEFAULT NULL,
  `pembuka` mediumtext NOT NULL,
  `isi_surat` mediumtext NOT NULL,
  `penutup` mediumtext NOT NULL,
  `sttd` int(1) NOT NULL,
  `sstempel` int(1) NOT NULL,
  `nilai` int(1) NOT NULL,
  `kelompok` int(1) NOT NULL,
  `dibuka` datetime DEFAULT NULL,
  `ditutup` datetime DEFAULT NULL,
  `tulisan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skl`
--

INSERT INTO `skl` (`id_skl`, `tingkat`, `no_surat`, `nama_surat`, `tgl_surat`, `header`, `pembuka`, `isi_surat`, `penutup`, `sttd`, `sstempel`, `nilai`, `kelompok`, `dibuka`, `ditutup`, `tulisan`) VALUES
(1, '10', '421/STBC/SKL/VI/2025', 'SURAT KETERANGAN LULUS', '8 Juni 2025', 'kemenlog.png', '<p>Berdasarkan hasil Rapat Dewan Guru <strong>SMA NUSANTARA</strong> tanggal 29 Mei 2025, Kepala <strong>SMA NUSANTARA</strong> Kabupaten Merdeka dengan ini menerangkan bahwa :</p>', '<p>Bahwa nama yang tersebut diatas adalah benar Siswa/Siswi <strong>SMA NUSANTARA</strong> dan telah melaksanakan Ujian Sekolah serta dinyatakan :</p>', '<p>Demikian Surat Keterangan Lulus (SKL) ini dibuat dengan sebenarnya untuk dapat digunakan sebagaimana mestinya menjelang diterbitkannya ijazah yang bersangkutan.</p>', 0, 0, 1, 1, '2025-08-21 06:00:00', '2025-08-22 09:00:00', 'tes');

-- --------------------------------------------------------

--
-- Table structure for table `sk_membaca`
--

CREATE TABLE `sk_membaca` (
  `id` int(11) NOT NULL,
  `idsk` varchar(11) DEFAULT NULL,
  `isi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sk_membaca`
--

INSERT INTO `sk_membaca` (`id`, `idsk`, `isi`) VALUES
(1, '1', 'Usulan nama Guru Tetap Yayasan (GTY) dari Dewan Guru dan Komite SMP Taruna Bakti Cikadu Kabupaten Cianjur.'),
(2, '2', 'Bahwa proses belajar mengajar merupakan inti proses penyelenggaraan pendidikan dan pelaksanaan kegiatan pada satuan Pendidikan sebagai bentuk Implementasi Kurikulum Merdeka dalam rangka pemulihan Pembelajaran.'),
(5, '2', 'Untuk menjamin kelancaran Proses Belajar Mengajar (PBM) perlu ditetapkan Pemenuhan Beban Kerja Guru dan Kepala Sekolah, Pembagian Tugas Guru dalam Proses Belajar Mengajar dan Bimbingan, dan Tugas Tambahan pada Kurikulum Merdeka');

-- --------------------------------------------------------

--
-- Table structure for table `sk_memutuskan`
--

CREATE TABLE `sk_memutuskan` (
  `id` int(11) NOT NULL,
  `idsk` varchar(11) DEFAULT NULL,
  `isi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sk_memutuskan`
--

INSERT INTO `sk_memutuskan` (`id`, `idsk`, `isi`) VALUES
(1, '2', 'Pemenuhan Beban Kerja Guru dan Kepala Sekolah Tahun Pelajaran'),
(2, '2', 'Pembagian Tugas Guru dalam Proses Belajar Mengajar dan Bimbingan Tahun Pelajaran'),
(3, '2', 'Pembagian Tugas Tambahan Pada Kurikulum Merdeka Tugas Tambahan Koordinator Projek Penguatan Profil Pelajar Pancasila Tahun Pelajaran'),
(4, '2', 'Masing-masing Guru melaporkan pelaksanaan tugasnya secara tertulis dan berkala kepada Kepala Sekolah, dan semua biaya yang timbul akibat pelaksanaan keputusan ini, dibebankan pada anggaran yang sesuai.'),
(5, '2', 'Keputusan ini berlaku sejak tanggal ditetapkan dan apabila terdapat kekeliruan akan dibetulkan sebagaiamana mestinya.');

-- --------------------------------------------------------

--
-- Table structure for table `sk_mengingat`
--

CREATE TABLE `sk_mengingat` (
  `id` int(11) NOT NULL,
  `idsk` varchar(11) DEFAULT NULL,
  `isi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sk_mengingat`
--

INSERT INTO `sk_mengingat` (`id`, `idsk`, `isi`) VALUES
(1, '1', '<p>Undang-undang RI No. 20 Tahun 2003 tentang Sistem Pendidikan Nasional.</p>'),
(2, '1', '<p>Undang-undang Nomor 14 tahun 2005 tentang Guru dan Dosen.</p>'),
(3, '1', '<p>Undang-undang Nomor 19 tahun 2005 tentang Standar Nasional Pendidikan.</p>'),
(4, '1', '<p>Keputusan Mendikbud RI:</p>\r\n<p>&nbsp; a. Nomor: 0293/K/1982<br />&nbsp; b. Nomor: 0170/O/1984<br />&nbsp; c. Nomor: 0173/O/1993<br />&nbsp; d. Nomor: 031 dan Nomor: 032/P/1994</p>'),
(5, '2', 'Pedoman Umum Penyelenggara Administrasi Sekolah. Hasil Rapat antara Kepala Sekolah, Guru dan Tenaga Kependidikan'),
(8, '2', 'Keputusan Kepala Dinas Pendidikan Provinsi Jawa Barat Nomor: 420/3250/101.1/2025 Tentang Kalender Pendidikan Bagi Satuan Pendidikan di Provinsi Jawa Barat Tahun Pelajaran'),
(9, '2', 'Hasil Rapat antara Kepala Sekolah, Guru dan Tenaga Kependidikan tentang persiapan Tahun Pelajaran');

-- --------------------------------------------------------

--
-- Table structure for table `sk_menimbang`
--

CREATE TABLE `sk_menimbang` (
  `id` int(11) NOT NULL,
  `idsk` varchar(11) DEFAULT NULL,
  `isi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sk_menimbang`
--

INSERT INTO `sk_menimbang` (`id`, `idsk`, `isi`) VALUES
(1, '1', 'Bahwa untuk lebih meningkatkan kualitas hasil belajar mengajar pada SMP Taruna Bakti Cikadu perlu diberikan bantuan tenaga kependidikan.'),
(2, '1', 'Bahwa proses belajar mengajar merupakan inti proses penyelenggaraan pendidikan dan pelaksanaan kegiatan pada satuan Pendidikan sebagai bentuk Implementasi Kurikulum Merdeka dalam rangka pemulihan Pembelajaran'),
(3, '1', 'Untuk menjamin kelancaran Proses Belajar Mengajar (PBM) perlu ditetapkan Pemenuhan Beban Kerja Guru dan Kepala Sekolah, Pembagian Tugas Guru dalam Proses Belajar Mengajar dan Bimbingan, dan Tugas Tambahan pada Kurikulum Merdeka<'),
(4, '2', 'UU Nomor 20 Tahun 2003 Tentang Sistem Pendidikan Nasional'),
(5, '2', 'UU Nomor 32 tahun 2004 tentang Pemerintah Daerah.'),
(6, '2', 'UU Nomor 14 tahun 2005 tentang Guru dan Dosen sebagai tenaga Profesional.'),
(7, '2', 'Peraturan Pemerintah Nomor 74 tahun 2008 tentang Guru'),
(8, '2', 'Peraturan Pemerintah Nomor 4 tahun 2022 tentang Standar Nasional Pendidikan.'),
(9, '2', 'Permendikbud Nomor 15 Tahun 2018 Tentang Pemenuhan Beban Kerja Guru, Kepala Sekolah, dan Pengawas Sekolah.'),
(10, '2', 'Permendikbudristek Nomor 5 Tahun 2022 Tentang Standar Kompetensi Lulusan pada Pendidikan Anak Usia Dini, Jenjang Pendidikan Dasar, dan Pendidikan Menengah.'),
(11, '2', 'Permendikbudristek Nomor 7 Tahun 2022 Tentang Standar Isi pada Pendidikan Anak Usia Dini, Jenjang Pendidikan Dasar, dan Pendidikan Menengah.'),
(12, '2', 'Permendikbudristek Nomor 16 Tahun 2022 Tentang Standar Proses pada Pendidikan Anak Usia Dini, Jenjang Pendidikan Dasar, dan Jenjang Pendidikan Menengah. '),
(13, '2', 'Permendikbudristek Nomor 21 Tahun 2022 Tentang Standar Penilaian Pendidikan pada Pendidikan Anak Usia Dini, Jenjang Pendidikan Dasar, dan Jenjang Pendidikan Menengah'),
(14, '2', 'Kepmendikbudristek Nomor 262/M/2022 Tentang Pedoman Penerapan Kurikulum dalam Rangka Pemulihan Pembelajaran.'),
(15, '2', 'Keputusan Kepala BSKAP Nomor 033/H/KR/20.. Tahun 2022 Tentang Capaian Pembelajaran pada Pendidikan Anak Usia Dini, Jenjang Pendidikan Dasar, dan Pendidikan Menengah Pada Kurikulum Merdeka.'),
(16, '2', 'Keputusan Kepala BSKAP Nomor 009/H/KR/20.. Tahun 2022 Tentang Dimensi, Elemen dan Sub Elemen Profil Pelajar Pancasila pada Kurikulum Merdeka.'),
(17, '2', 'Keputusan Kepala BSKAP Nomor 044/H/KR/20.. Tahun 2022 Tentang Satuan Pendidikan Pelaksana Implementasi Kurikulum Merdeka Melalui Jalur Mandiri pada Tahun Ajaran');

-- --------------------------------------------------------

--
-- Table structure for table `sk_peg`
--

CREATE TABLE `sk_peg` (
  `id` int(11) NOT NULL,
  `idsk` varchar(11) DEFAULT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `jk` varchar(50) DEFAULT NULL,
  `ttl` varchar(50) DEFAULT NULL,
  `pdk` varchar(50) DEFAULT NULL,
  `nomor` varchar(11) DEFAULT NULL,
  `nosk` varchar(50) DEFAULT NULL,
  `tahun` varchar(50) DEFAULT NULL,
  `tglsk` varchar(50) DEFAULT NULL,
  `tmt` varchar(50) DEFAULT NULL,
  `akhir` varchar(50) DEFAULT NULL,
  `kode` varchar(11) DEFAULT NULL,
  `mapel` text DEFAULT NULL,
  `eskul` varchar(50) DEFAULT NULL,
  `level` varchar(11) DEFAULT NULL,
  `kelas` text DEFAULT NULL,
  `jjm` varchar(11) DEFAULT NULL,
  `jenis` varchar(50) DEFAULT NULL,
  `lainnya` varchar(11) DEFAULT NULL,
  `jjm_tugas` varchar(11) DEFAULT NULL,
  `smt` varchar(11) DEFAULT NULL,
  `tp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sk_peg`
--

INSERT INTO `sk_peg` (`id`, `idsk`, `idpeg`, `jk`, `ttl`, `pdk`, `nomor`, `nosk`, `tahun`, `tglsk`, `tmt`, `akhir`, `kode`, `mapel`, `eskul`, `level`, `kelas`, `jjm`, `jenis`, `lainnya`, `jjm_tugas`, `smt`, `tp`) VALUES
(1, '1', '2', 'Laki-laki', 'Cianjur, 12 Desember 1983', 'S1', '1', '/YBS/SK.B/', '2025', '01 Juli', '01 Juli', '2025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '1', '4', 'Laki-laki', 'Cianjur, 12 Desember 1983', 'SLTA', '2', '22/YBS/SK.B/', '2025', '01 Juli', '01 Juli', '2025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '1', '5', 'Perempuan', 'Cianjur, 12 Desember 1983', 'S1', '3', '/YBS/SK.B/', '2025', '01 Juli', '01 Juli', '2025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '1', '3', 'Laki-laki', 'Cianjur, 12 Desember 1983', 'S1', '4', '/YBS/SK.B/', '2026', '01 Juli', '01 Juli', '2026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '1', '12', 'Laki-laki', 'Cianjur, 12 Desember 1983', 'D3', '5', '/YBS/SK.B/', '2025', '01 Juli', '01 Juli', '2025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'BINDO', NULL, '10', 'X-A', '8', 'GM', NULL, NULL, '1', '2024/2025'),
(7, '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'MTK', NULL, '10', 'X-A, X-B', '16', 'GM', NULL, NULL, '1', '2024/2025');

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE `soal` (
  `id_soal` int(11) NOT NULL,
  `id_bank` int(11) DEFAULT NULL,
  `nomor` int(11) DEFAULT NULL,
  `soal` longtext DEFAULT NULL,
  `jenis` int(11) DEFAULT NULL,
  `pilA` longtext DEFAULT NULL,
  `pilB` longtext DEFAULT NULL,
  `pilC` longtext DEFAULT NULL,
  `pilD` longtext DEFAULT NULL,
  `pilE` longtext DEFAULT NULL,
  `perA` text DEFAULT NULL,
  `perB` text DEFAULT NULL,
  `perC` text DEFAULT NULL,
  `perD` text DEFAULT NULL,
  `perE` text DEFAULT NULL,
  `jawaban` text DEFAULT NULL,
  `warna` text DEFAULT NULL,
  `file` longtext DEFAULT NULL,
  `file1` mediumtext DEFAULT NULL,
  `fileA` mediumtext DEFAULT NULL,
  `fileB` mediumtext DEFAULT NULL,
  `fileC` mediumtext DEFAULT NULL,
  `fileD` mediumtext DEFAULT NULL,
  `fileE` mediumtext DEFAULT NULL,
  `ket` text DEFAULT NULL,
  `sts` int(11) DEFAULT 0,
  `max_skor` int(11) DEFAULT 1,
  `jenisjawab` varchar(50) DEFAULT NULL,
  `panjang` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`id_soal`, `id_bank`, `nomor`, `soal`, `jenis`, `pilA`, `pilB`, `pilC`, `pilD`, `pilE`, `perA`, `perB`, `perC`, `perD`, `perE`, `jawaban`, `warna`, `file`, `file1`, `fileA`, `fileB`, `fileC`, `fileD`, `fileE`, `ket`, `sts`, `max_skor`, `jenisjawab`, `panjang`) VALUES
(1, 1, 1, 'SPEKTRUM GELOMBANG ELEKTROMAGNETIK\nKenny sedang melihat artikel mengenai Sains dan menemukan gambar sebagai berikutPada gambar, disajikan berbagai macam gelombang elektromagnetik yang disusun berdasarkan frekuensinya dalam satuan Hz.\nWarna yang memiliki frekuensi lebih tinggi daripada warna hijau, tetapi lebih rendah daripada warna ungu adalah .... ', 1, 'biru\n', 'jingga\n', 'merah\n', 'kuning\n', '', '', '', '', '', '', 'A', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL),
(2, 1, 2, '\"Kita sering kali melakukan olahraga. Bahkan, orang-orang di sekitar kita juga sering menyarankan kita untuk melakukan aktivitas tersebut. Rupanya, ada keterkaitan antara berolahraga dengan kesehatan fisik dan mental, misalnya terkait dengan perkembangan tubuh dan interaksi sosial.\n     Perlu diketahui bahwa olahraga bermanfaat dalam mencegah risiko berbagai penyakit. Saat tubuh jarang melakukan olahraga, lemak akan menumpuk di dalam tubuh sehingga dapat berujung pada terjadinya obesitas. Namun, dengan berolahraga secara teratur, tumpukan lemak yang ada di dalam tubuh bisa terbakar. Selain itu, saat berolahraga, terjadi kontraksi otot-otot tubuh yang menyebabkan cairan getah bening dapat mengalir dengan lancar. Cairan getah bening merupakan cairan yang mengandung sel-sel darah putih yang berkaitan dengan sistem pertahanan tubuh. Berbeda dengan pembuluh darah, cairan getah bening ini tidak mengalir karena kontraksi jantung, tetapi karena kontraksi otot-otot yang melekat pada rangka tubuh kita.\n     Selain manfaat tersebut, olahraga juga dapat meningkatkan perkembangan tubuh. Aktivitas yang dilakukan selama olahraga akan membantu tubuh untuk lebih cepat berkembang. Ketika berolahraga, terjadi kontraksi otot-otot yang menyebabkan otot lebih terlatih dan akan berkembang dengan baik. Selain itu, aktivitas olahraga yang diiringi gizi seimbang juga dapat membuat metabolisme tubuh menjadi lebih lancar karena hormon pertumbuhan bekerja lebih maksimal.\n     Selain bermanfaat bagi kesehatan fisik, olahraga juga dapat meningkatkan interaksi sosial. Ketika olahraga dilakukan dalam kelompok, misalnya saat bermain sepak bola, basket, dan futsal, terjadi proses perkenalan dengan orang lain, baik dengan orang di dalam tim maupun di luar tim. Selain itu, terjadi proses saling bekerja sama saat bermain atau bertanding. Adanya kompetisi yang sehat dalam permainan olahraga tersebut juga membuat kita menjadi lebih jujur. Akhirnya, kita menjadi terbiasa dalam melakukan \nSelain berolahraga, hal yang perlu kita lakukan untuk menjaga kesehatan fisik dan mental adalah ....  \"\n\n\n\n\n', 3, 'Mengurangi makan makanan penyebab obesitas\n', 'Meningkatkan interaksi sosial dan sikap saling bekerja sama\n', 'Mengurangi makanan berprotein dan berlemak tinggi\n', 'Memakan makanan bergizi seimbang\n', '', '', '', '', '', '', 'A, B, D', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, NULL),
(3, 1, 3, '\"Pemerintah melalui Badan Pusat Statistik telah merilis data produktivitas padi dari setiap provinsi di Indonesia. Data tersebut meliputi luas lahan persawahan yang dipanen dan produktivitas lahan panen. Adapun data jumlah produksi per tahun dapat diketahui dengan mengalikan luas lahan panen dan produktivitasnya. Angka produktivitas padi diperoleh melalui survei berupa Gabah Kering Panen (GKP) yang dikonversikan menjadi Gabah Kering Giling (GKG).\n    Pulau Jawa sebagai pulau dengan jumlah penduduk terbanyak masih memerlukan pasokan beras dari daerah lain maupun dari impor. Hal tersebut karena jumlah hasil panen belum dapat mencukupi kebutuhan pangan masyarakat. Berikut data jumlah produksi padi dari perwakilan provinsi di 5 pulau terbesar di Indonesia. \nTentukan urutan provinsi dari yang memiliki jumlah hasil panen tertinggi hingga terendah!\"\n\n\n\n\n', 5, '92.198.050,77 kuintal\n', '46.786.971,19 kuintal\n', '20.763.612,87 kuintal\n', '11.345.248,95 kuintal\n', '', 'Sumatra Utara\n', 'Jawa Barat\n', 'Kalimantan Selatan\n', 'Sulawesi Selatan\n', '', 'C, A, B, D', '#00BCD4, #F44336, #4CAF50, #FF9800', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, NULL),
(4, 1, 4, '\"Mina padi adalah suatu bentuk usaha tani gabungan yang memanfaatkan genangan air sawah yang tengah ditanami padi sebagai kolam untuk budidaya ikan. Oleh karena itu, selain mendapat hasil panen yaitu padi, petani yang menerapkan sistem mina padi juga dapat memanen ikan. Pak Made adalah salah satu petani di Bali yang menerapkan sistem mina padi di sawahnya. Pak Made mengatakan bahwa dengan menerapkan sistem mina padi, pendapatan dari hasil panen beliau meningkat. “Akan tetapi, perawatan padi dan ikan pada sistem mina padi memang gampang-gampang susah”, katanya.\nBenih ikan yang ditebar oleh Pak Made di sawah beliau yang seluas 1,5 ha adalah ikan emas dan ikan nila yang masih berukuran 5 cm sampai dengan 8 cm dengan kepadatan 5.000 ekor/ha. Perbandingan benih ikan emas dengan benih ikan nila yang ditebar oleh Pak Made adalah 3 : 2. Harga bibit ikan nila adalah Rp500,00/ekor dan harga bibit ikan emas adalah dua kali lipatnya. Setiap pagi, Pak Made memberi pakan tambahan berupa dedak halus 250 kg/ha untuk ikan yang ada di sawahnya.\nSetelah tujuh puluh hari, Pak Made memanen ikannya tersebut. Total ikan yang dipanen adalah 6.500 kg/ha. Perbandingan hasil panen ikan emas dan ikan nila sama dengan perbandingan benih ikan ketika ditebar. Harga ikan emas dan ikan nila yang dipanen oleh Pak Made berturut-turut adalah Rp30.000,00/kg dan Rp27.000,00/kg. Sekitar 2 bulan kemudian, Pak Made memanen padinya dengan hasil panen 5,7 ton/ha. Pak Made menjualnya dalam bentuk gabah kering panen (GKP) dengan harga Rp5.000,00/kg.\nTentukan benar atau salah pernyataan berikut dengan memberi tanda ? pada kolom yang sesuai!\n\"\n\n\n\n\n', 4, '• Total benih ikan emas yang ditebar di sawah Pak Made adalah 4.500 ekor\n', '• Total benih ikan nila yang ditebar di sawah Pak Made adalah 2.000 ekor\n', '• Total ikan emas yang dipanen Pak Made adalah 3.900 ekor\n', '• Total ikan nila yang dipanen Pak Made adalah 3.900 ekor\n', '', '', '', '', '', '', 'B, S, S, B', '#00BCD4, #F44336, #4CAF50, #FF9800', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, NULL),
(5, 1, 5, '\"Ayah Lisa adalah seorang petani. Selain menyikapi dampak negatif datangnya musim penghujan, ayah Lisa juga memanfaatkan dampak positif musim penghujan untuk kelangsungan pertaniannya. Menurut ayah Lisa, La Nina memberikan banyak dampak positif pada sektor pertanian. Kemudian, Lisa mencari tahu apa saja dampak positif dari La Nina.  \nDAMPAK POSITIF LA NINA\nDekan Sekolah Vokasi UGM Agus Maryono yang juga merupakan pakar Ekohidrolik dan pelopor restorasi sungai Indonesia mengatakan bahwa seharusnya tahun basah (musim penghujan) bisa dimanfaatkan. Daerah kering dan semi kering juga dapat memanfaatkan air yang berlimpah. Dengan adanya tahun basah, air tanah bisa terisi secara maksimal, begitu pula dengan danau, situ, serta telaga. Alur sungai pun dapat terbentuk dengan sempurna. Masyarakat di sekitar sungai dapat melakukan susur sungai sehingga mereka akan mengetahui sungai yang bisa digunakan untuk mitigasi serta sungai yang memiliki potensi wisata, potensi sumber air, dan potensi perikanan.\nSelain itu, Rizaldi Boer dari Pusat Pengelolaan Risiko dan Peluang Iklim Institut Pertanian Bogor (IPB) mengatakan, La Nina juga mempunyai manfaat bagi pertanian pangan. La Nina memberi peluang untuk percepatan tanam serta perluasan area tanam padi, baik di lahan sawah irigasi, tadah hujan, maupun ladang. Lebih lanjut, La Nina dapat dimanfaatkan untuk meningkatkan areal tanam pada musim hujan, khususnya untuk daerah lahan kering. Petani disarankan untuk memanfaatkan mundurnya akhir musim hujan dengan menanam tanaman umur pendek dan berekonomi tinggi. Tak hanya itu, petani juga dapat melakukan adaptasi teknik budidaya pada daerah endemik banjir dan pertanian lahan kering di lahan gambut.\nDampak positif La Nina yang lain adalah dapat meningkatkan produksi perluasan lahan pasang surut. Lahan pesisir juga akan berkembang lebih baik karena salinitas dapat dikurangi dan perikanan darat bisa dikembangkan lebih awal. Dari segi sumber daya air, menurut Direktur Bina Teknik SDA Kementerian PU-Pera Eko Winar Irianto, kondisi La Nina dapat memenuhi kapasitas energi maksimum pada operasional waduk, sementara dalam kondisi El Nino energi yang dihasilkan akan berkurang.\nBagaimana dampak positif La Nina dari segi sumber daya air?\"\n\n\n\n\n', 2, '', '', '', '', '', '', '', '', '', '', '10', '#00BCD4, #F44336, #4CAF50, #FF9800', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5, NULL, NULL),
(6, 1, 1, 'SPEKTRUM GELOMBANG ELEKTROMAGNETIK\nKenny sedang melihat artikel mengenai Sains dan menemukan gambar sebagai berikutPada gambar, disajikan berbagai macam gelombang elektromagnetik yang disusun berdasarkan frekuensinya dalam satuan Hz.\nWarna yang memiliki frekuensi lebih tinggi daripada warna hijau, tetapi lebih rendah daripada warna ungu adalah .... ', 1, 'biru\n', 'jingga\n', 'merah\n', 'kuning\n', '', '', '', '', '', '', 'A', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL),
(7, 1, 2, '\"Kita sering kali melakukan olahraga. Bahkan, orang-orang di sekitar kita juga sering menyarankan kita untuk melakukan aktivitas tersebut. Rupanya, ada keterkaitan antara berolahraga dengan kesehatan fisik dan mental, misalnya terkait dengan perkembangan tubuh dan interaksi sosial.\n     Perlu diketahui bahwa olahraga bermanfaat dalam mencegah risiko berbagai penyakit. Saat tubuh jarang melakukan olahraga, lemak akan menumpuk di dalam tubuh sehingga dapat berujung pada terjadinya obesitas. Namun, dengan berolahraga secara teratur, tumpukan lemak yang ada di dalam tubuh bisa terbakar. Selain itu, saat berolahraga, terjadi kontraksi otot-otot tubuh yang menyebabkan cairan getah bening dapat mengalir dengan lancar. Cairan getah bening merupakan cairan yang mengandung sel-sel darah putih yang berkaitan dengan sistem pertahanan tubuh. Berbeda dengan pembuluh darah, cairan getah bening ini tidak mengalir karena kontraksi jantung, tetapi karena kontraksi otot-otot yang melekat pada rangka tubuh kita.\n     Selain manfaat tersebut, olahraga juga dapat meningkatkan perkembangan tubuh. Aktivitas yang dilakukan selama olahraga akan membantu tubuh untuk lebih cepat berkembang. Ketika berolahraga, terjadi kontraksi otot-otot yang menyebabkan otot lebih terlatih dan akan berkembang dengan baik. Selain itu, aktivitas olahraga yang diiringi gizi seimbang juga dapat membuat metabolisme tubuh menjadi lebih lancar karena hormon pertumbuhan bekerja lebih maksimal.\n     Selain bermanfaat bagi kesehatan fisik, olahraga juga dapat meningkatkan interaksi sosial. Ketika olahraga dilakukan dalam kelompok, misalnya saat bermain sepak bola, basket, dan futsal, terjadi proses perkenalan dengan orang lain, baik dengan orang di dalam tim maupun di luar tim. Selain itu, terjadi proses saling bekerja sama saat bermain atau bertanding. Adanya kompetisi yang sehat dalam permainan olahraga tersebut juga membuat kita menjadi lebih jujur. Akhirnya, kita menjadi terbiasa dalam melakukan \nSelain berolahraga, hal yang perlu kita lakukan untuk menjaga kesehatan fisik dan mental adalah ....  \"\n\n\n\n\n', 3, 'Mengurangi makan makanan penyebab obesitas\n', 'Meningkatkan interaksi sosial dan sikap saling bekerja sama\n', 'Mengurangi makanan berprotein dan berlemak tinggi\n', 'Memakan makanan bergizi seimbang\n', '', '', '', '', '', '', 'A, B, D', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, NULL),
(8, 1, 3, '\"Pemerintah melalui Badan Pusat Statistik telah merilis data produktivitas padi dari setiap provinsi di Indonesia. Data tersebut meliputi luas lahan persawahan yang dipanen dan produktivitas lahan panen. Adapun data jumlah produksi per tahun dapat diketahui dengan mengalikan luas lahan panen dan produktivitasnya. Angka produktivitas padi diperoleh melalui survei berupa Gabah Kering Panen (GKP) yang dikonversikan menjadi Gabah Kering Giling (GKG).\n    Pulau Jawa sebagai pulau dengan jumlah penduduk terbanyak masih memerlukan pasokan beras dari daerah lain maupun dari impor. Hal tersebut karena jumlah hasil panen belum dapat mencukupi kebutuhan pangan masyarakat. Berikut data jumlah produksi padi dari perwakilan provinsi di 5 pulau terbesar di Indonesia. \nTentukan urutan provinsi dari yang memiliki jumlah hasil panen tertinggi hingga terendah!\"\n\n\n\n\n', 5, '92.198.050,77 kuintal\n', '46.786.971,19 kuintal\n', '20.763.612,87 kuintal\n', '11.345.248,95 kuintal\n', '', 'Sumatra Utara\n', 'Jawa Barat\n', 'Kalimantan Selatan\n', 'Sulawesi Selatan\n', '', 'C, A, B, D', '#00BCD4, #F44336, #4CAF50, #FF9800', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, NULL),
(9, 1, 4, '\"Mina padi adalah suatu bentuk usaha tani gabungan yang memanfaatkan genangan air sawah yang tengah ditanami padi sebagai kolam untuk budidaya ikan. Oleh karena itu, selain mendapat hasil panen yaitu padi, petani yang menerapkan sistem mina padi juga dapat memanen ikan. Pak Made adalah salah satu petani di Bali yang menerapkan sistem mina padi di sawahnya. Pak Made mengatakan bahwa dengan menerapkan sistem mina padi, pendapatan dari hasil panen beliau meningkat. “Akan tetapi, perawatan padi dan ikan pada sistem mina padi memang gampang-gampang susah”, katanya.\nBenih ikan yang ditebar oleh Pak Made di sawah beliau yang seluas 1,5 ha adalah ikan emas dan ikan nila yang masih berukuran 5 cm sampai dengan 8 cm dengan kepadatan 5.000 ekor/ha. Perbandingan benih ikan emas dengan benih ikan nila yang ditebar oleh Pak Made adalah 3 : 2. Harga bibit ikan nila adalah Rp500,00/ekor dan harga bibit ikan emas adalah dua kali lipatnya. Setiap pagi, Pak Made memberi pakan tambahan berupa dedak halus 250 kg/ha untuk ikan yang ada di sawahnya.\nSetelah tujuh puluh hari, Pak Made memanen ikannya tersebut. Total ikan yang dipanen adalah 6.500 kg/ha. Perbandingan hasil panen ikan emas dan ikan nila sama dengan perbandingan benih ikan ketika ditebar. Harga ikan emas dan ikan nila yang dipanen oleh Pak Made berturut-turut adalah Rp30.000,00/kg dan Rp27.000,00/kg. Sekitar 2 bulan kemudian, Pak Made memanen padinya dengan hasil panen 5,7 ton/ha. Pak Made menjualnya dalam bentuk gabah kering panen (GKP) dengan harga Rp5.000,00/kg.\nTentukan benar atau salah pernyataan berikut dengan memberi tanda ? pada kolom yang sesuai!\n\"\n\n\n\n\n', 4, '• Total benih ikan emas yang ditebar di sawah Pak Made adalah 4.500 ekor\n', '• Total benih ikan nila yang ditebar di sawah Pak Made adalah 2.000 ekor\n', '• Total ikan emas yang dipanen Pak Made adalah 3.900 ekor\n', '• Total ikan nila yang dipanen Pak Made adalah 3.900 ekor\n', '', '', '', '', '', '', 'B, S, S, B', '#00BCD4, #F44336, #4CAF50, #FF9800', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, NULL),
(10, 1, 5, '\"Ayah Lisa adalah seorang petani. Selain menyikapi dampak negatif datangnya musim penghujan, ayah Lisa juga memanfaatkan dampak positif musim penghujan untuk kelangsungan pertaniannya. Menurut ayah Lisa, La Nina memberikan banyak dampak positif pada sektor pertanian. Kemudian, Lisa mencari tahu apa saja dampak positif dari La Nina.  \nDAMPAK POSITIF LA NINA\nDekan Sekolah Vokasi UGM Agus Maryono yang juga merupakan pakar Ekohidrolik dan pelopor restorasi sungai Indonesia mengatakan bahwa seharusnya tahun basah (musim penghujan) bisa dimanfaatkan. Daerah kering dan semi kering juga dapat memanfaatkan air yang berlimpah. Dengan adanya tahun basah, air tanah bisa terisi secara maksimal, begitu pula dengan danau, situ, serta telaga. Alur sungai pun dapat terbentuk dengan sempurna. Masyarakat di sekitar sungai dapat melakukan susur sungai sehingga mereka akan mengetahui sungai yang bisa digunakan untuk mitigasi serta sungai yang memiliki potensi wisata, potensi sumber air, dan potensi perikanan.\nSelain itu, Rizaldi Boer dari Pusat Pengelolaan Risiko dan Peluang Iklim Institut Pertanian Bogor (IPB) mengatakan, La Nina juga mempunyai manfaat bagi pertanian pangan. La Nina memberi peluang untuk percepatan tanam serta perluasan area tanam padi, baik di lahan sawah irigasi, tadah hujan, maupun ladang. Lebih lanjut, La Nina dapat dimanfaatkan untuk meningkatkan areal tanam pada musim hujan, khususnya untuk daerah lahan kering. Petani disarankan untuk memanfaatkan mundurnya akhir musim hujan dengan menanam tanaman umur pendek dan berekonomi tinggi. Tak hanya itu, petani juga dapat melakukan adaptasi teknik budidaya pada daerah endemik banjir dan pertanian lahan kering di lahan gambut.\nDampak positif La Nina yang lain adalah dapat meningkatkan produksi perluasan lahan pasang surut. Lahan pesisir juga akan berkembang lebih baik karena salinitas dapat dikurangi dan perikanan darat bisa dikembangkan lebih awal. Dari segi sumber daya air, menurut Direktur Bina Teknik SDA Kementerian PU-Pera Eko Winar Irianto, kondisi La Nina dapat memenuhi kapasitas energi maksimum pada operasional waduk, sementara dalam kondisi El Nino energi yang dihasilkan akan berkurang.\nBagaimana dampak positif La Nina dari segi sumber daya air?\"\n\n\n\n\n', 2, '', '', '', '', '', '', '', '', '', '', '10', '#00BCD4, #F44336, #4CAF50, #FF9800', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5, NULL, NULL),
(11, 2, 1, 'SPEKTRUM GELOMBANG ELEKTROMAGNETIK\nKenny sedang melihat artikel mengenai Sains dan menemukan gambar sebagai berikutPada gambar, disajikan berbagai macam gelombang elektromagnetik yang disusun berdasarkan frekuensinya dalam satuan Hz.\nWarna yang memiliki frekuensi lebih tinggi daripada warna hijau, tetapi lebih rendah daripada warna ungu adalah .... ', 1, 'biru', 'jingga', 'merah', 'kuning', '', '', '', '', '', '', 'A', '', '4071.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL),
(12, 2, 2, 'Ayah Lisa adalah seorang petani. Selain menyikapi dampak negatif datangnya musim penghujan, ayah Lisa juga memanfaatkan dampak positif musim penghujan untuk kelangsungan pertaniannya. Menurut ayah Lisa, La Nina memberikan banyak dampak positif pada sektor pertanian. Kemudian, Lisa mencari tahu apa saja dampak positif dari La Nina.  \nDAMPAK POSITIF LA NINA\nDekan Sekolah Vokasi UGM Agus Maryono yang juga merupakan pakar Ekohidrolik dan pelopor restorasi sungai Indonesia mengatakan bahwa seharusnya tahun basah (musim penghujan) bisa dimanfaatkan. Daerah kering dan semi kering juga dapat memanfaatkan air yang berlimpah. Dengan adanya tahun basah, air tanah bisa terisi secara maksimal, begitu pula dengan danau, situ, serta telaga. Alur sungai pun dapat terbentuk dengan sempurna. Masyarakat di sekitar sungai dapat melakukan susur sungai sehingga mereka akan mengetahui sungai yang bisa digunakan untuk mitigasi serta sungai yang memiliki potensi wisata, potensi sumber air, dan potensi perikanan.\nSelain itu, Rizaldi Boer dari Pusat Pengelolaan Risiko dan Peluang Iklim Institut Pertanian Bogor (IPB) mengatakan, La Nina juga mempunyai manfaat bagi pertanian pangan. La Nina memberi peluang untuk percepatan tanam serta perluasan area tanam padi, baik di lahan sawah irigasi, tadah hujan, maupun ladang. Lebih lanjut, La Nina dapat dimanfaatkan untuk meningkatkan areal tanam pada musim hujan, khususnya untuk daerah lahan kering. Petani disarankan untuk memanfaatkan mundurnya akhir musim hujan dengan menanam tanaman umur pendek dan berekonomi tinggi. Tak hanya itu, petani juga dapat melakukan adaptasi teknik budidaya pada daerah endemik banjir dan pertanian lahan kering di lahan gambut.\nDampak positif La Nina yang lain adalah dapat meningkatkan produksi perluasan lahan pasang surut. Lahan pesisir juga akan berkembang lebih baik karena salinitas dapat dikurangi dan perikanan darat bisa dikembangkan lebih awal. Dari segi sumber daya air, menurut Direktur Bina Teknik SDA Kementerian PU-Pera Eko Winar Irianto, kondisi La Nina dapat memenuhi kapasitas energi maksimum pada operasional waduk, sementara dalam kondisi El Nino energi yang dihasilkan akan berkurang.\nBagaimana dampak positif La Nina dari segi sumber daya air?', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5, NULL, NULL),
(13, 2, 3, 'Kita sering kali melakukan olahraga. Bahkan, orang-orang di sekitar kita juga sering menyarankan kita untuk melakukan aktivitas tersebut. Rupanya, ada keterkaitan antara berolahraga dengan kesehatan fisik dan mental, misalnya terkait dengan perkembangan tubuh dan interaksi sosial.\n     Perlu diketahui bahwa olahraga bermanfaat dalam mencegah risiko berbagai penyakit. Saat tubuh jarang melakukan olahraga, lemak akan menumpuk di dalam tubuh sehingga dapat berujung pada terjadinya obesitas. Namun, dengan berolahraga secara teratur, tumpukan lemak yang ada di dalam tubuh bisa terbakar. Selain itu, saat berolahraga, terjadi kontraksi otot-otot tubuh yang menyebabkan cairan getah bening dapat mengalir dengan lancar. Cairan getah bening merupakan cairan yang mengandung sel-sel darah putih yang berkaitan dengan sistem pertahanan tubuh. Berbeda dengan pembuluh darah, cairan getah bening ini tidak mengalir karena kontraksi jantung, tetapi karena kontraksi otot-otot yang melekat pada rangka tubuh kita.\n     Selain manfaat tersebut, olahraga juga dapat meningkatkan perkembangan tubuh. Aktivitas yang dilakukan selama olahraga akan membantu tubuh untuk lebih cepat berkembang. Ketika berolahraga, terjadi kontraksi otot-otot yang menyebabkan otot lebih terlatih dan akan berkembang dengan baik. Selain itu, aktivitas olahraga yang diiringi gizi seimbang juga dapat membuat metabolisme tubuh menjadi lebih lancar karena hormon pertumbuhan bekerja lebih maksimal.\n     Selain bermanfaat bagi kesehatan fisik, olahraga juga dapat meningkatkan interaksi sosial. Ketika olahraga dilakukan dalam kelompok, misalnya saat bermain sepak bola, basket, dan futsal, terjadi proses perkenalan dengan orang lain, baik dengan orang di dalam tim maupun di luar tim. Selain itu, terjadi proses saling bekerja sama saat bermain atau bertanding. Adanya kompetisi yang sehat dalam permainan olahraga tersebut juga membuat kita menjadi lebih jujur. Akhirnya, kita menjadi terbiasa dalam melakukan \nSelain berolahraga, hal yang perlu kita lakukan untuk menjaga kesehatan fisik dan mental adalah ....  ', 3, 'Mengurangi makan makanan penyebab obesitas', 'Meningkatkan interaksi sosial dan sikap saling bekerja sama', 'Mengurangi makanan berprotein dan berlemak tinggi', 'Memakan makanan bergizi seimbang', '', '', '', '', '', '', 'A, B, D', '', '2779.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, NULL),
(14, 2, 4, 'Mina padi adalah suatu bentuk usaha tani gabungan yang memanfaatkan genangan air sawah yang tengah ditanami padi sebagai kolam untuk budidaya ikan. Oleh karena itu, selain mendapat hasil panen yaitu padi, petani yang menerapkan sistem mina padi juga dapat memanen ikan. Pak Made adalah salah satu petani di Bali yang menerapkan sistem mina padi di sawahnya. Pak Made mengatakan bahwa dengan menerapkan sistem mina padi, pendapatan dari hasil panen beliau meningkat. “Akan tetapi, perawatan padi dan ikan pada sistem mina padi memang gampang-gampang susah”, katanya.\nBenih ikan yang ditebar oleh Pak Made di sawah beliau yang seluas 1,5 ha adalah ikan emas dan ikan nila yang masih berukuran 5 cm sampai dengan 8 cm dengan kepadatan 5.000 ekor/ha. Perbandingan benih ikan emas dengan benih ikan nila yang ditebar oleh Pak Made adalah 3 : 2. Harga bibit ikan nila adalah Rp500,00/ekor dan harga bibit ikan emas adalah dua kali lipatnya. Setiap pagi, Pak Made memberi pakan tambahan berupa dedak halus 250 kg/ha untuk ikan yang ada di sawahnya.\nSetelah tujuh puluh hari, Pak Made memanen ikannya tersebut. Total ikan yang dipanen adalah 6.500 kg/ha. Perbandingan hasil panen ikan emas dan ikan nila sama dengan perbandingan benih ikan ketika ditebar. Harga ikan emas dan ikan nila yang dipanen oleh Pak Made berturut-turut adalah Rp30.000,00/kg dan Rp27.000,00/kg. Sekitar 2 bulan kemudian, Pak Made memanen padinya dengan hasil panen 5,7 ton/ha. Pak Made menjualnya dalam bentuk gabah kering panen (GKP) dengan harga Rp5.000,00/kg.\nTentukan benar atau salah pernyataan berikut dengan memberi tanda ? pada kolom yang sesuai!\n', 4, '• Total benih ikan emas yang ditebar di sawah Pak Made adalah 4.500 ekor', '• Total benih ikan nila yang ditebar di sawah Pak Made adalah 2.000 ekor', '• Total ikan emas yang dipanen Pak Made adalah 3.900 ekor', '• Total ikan nila yang dipanen Pak Made adalah 3.900 ekor', '', '', '', '', '', '', 'B, S, S, B', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, NULL),
(15, 2, 5, 'Pemerintah melalui Badan Pusat Statistik telah merilis data produktivitas padi dari setiap provinsi di Indonesia. Data tersebut meliputi luas lahan persawahan yang dipanen dan produktivitas lahan panen. Adapun data jumlah produksi per tahun dapat diketahui dengan mengalikan luas lahan panen dan produktivitasnya. Angka produktivitas padi diperoleh melalui survei berupa Gabah Kering Panen (GKP) yang dikonversikan menjadi Gabah Kering Giling (GKG).\n    Pulau Jawa sebagai pulau dengan jumlah penduduk terbanyak masih memerlukan pasokan beras dari daerah lain maupun dari impor. Hal tersebut karena jumlah hasil panen belum dapat mencukupi kebutuhan pangan masyarakat. Berikut data jumlah produksi padi dari perwakilan provinsi di 5 pulau terbesar di Indonesia. \nTentukan urutan provinsi dari yang memiliki jumlah hasil panen tertinggi hingga terendah!', 5, '92.198.050,77 kuintal', '46.786.971,19 kuintal', '20.763.612,87 kuintal', '11.345.248,95 kuintal', '', 'Sumatra Utara', 'Jawa Barat', 'Kalimantan Selatan', 'Sulawesi Selatan', '', 'C, A, D, B', '#00BCD4, #F44336, #4CAF50, #FF9800', '8634.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, NULL),
(16, 3, 1, 'SPEKTRUM GELOMBANG ELEKTROMAGNETIK\nKenny sedang melihat artikel mengenai Sains dan menemukan gambar sebagai berikutPada gambar, disajikan berbagai macam gelombang elektromagnetik yang disusun berdasarkan frekuensinya dalam satuan Hz.\nWarna yang memiliki frekuensi lebih tinggi daripada warna hijau, tetapi lebih rendah daripada warna ungu adalah .... ', 1, 'biru', 'jingga', 'merah', 'kuning', '', '', '', '', '', '', 'A', '', '6330.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL),
(17, 3, 2, 'Ayah Lisa adalah seorang petani. Selain menyikapi dampak negatif datangnya musim penghujan, ayah Lisa juga memanfaatkan dampak positif musim penghujan untuk kelangsungan pertaniannya. Menurut ayah Lisa, La Nina memberikan banyak dampak positif pada sektor pertanian. Kemudian, Lisa mencari tahu apa saja dampak positif dari La Nina.  \nDAMPAK POSITIF LA NINA\nDekan Sekolah Vokasi UGM Agus Maryono yang juga merupakan pakar Ekohidrolik dan pelopor restorasi sungai Indonesia mengatakan bahwa seharusnya tahun basah (musim penghujan) bisa dimanfaatkan. Daerah kering dan semi kering juga dapat memanfaatkan air yang berlimpah. Dengan adanya tahun basah, air tanah bisa terisi secara maksimal, begitu pula dengan danau, situ, serta telaga. Alur sungai pun dapat terbentuk dengan sempurna. Masyarakat di sekitar sungai dapat melakukan susur sungai sehingga mereka akan mengetahui sungai yang bisa digunakan untuk mitigasi serta sungai yang memiliki potensi wisata, potensi sumber air, dan potensi perikanan.\nSelain itu, Rizaldi Boer dari Pusat Pengelolaan Risiko dan Peluang Iklim Institut Pertanian Bogor (IPB) mengatakan, La Nina juga mempunyai manfaat bagi pertanian pangan. La Nina memberi peluang untuk percepatan tanam serta perluasan area tanam padi, baik di lahan sawah irigasi, tadah hujan, maupun ladang. Lebih lanjut, La Nina dapat dimanfaatkan untuk meningkatkan areal tanam pada musim hujan, khususnya untuk daerah lahan kering. Petani disarankan untuk memanfaatkan mundurnya akhir musim hujan dengan menanam tanaman umur pendek dan berekonomi tinggi. Tak hanya itu, petani juga dapat melakukan adaptasi teknik budidaya pada daerah endemik banjir dan pertanian lahan kering di lahan gambut.\nDampak positif La Nina yang lain adalah dapat meningkatkan produksi perluasan lahan pasang surut. Lahan pesisir juga akan berkembang lebih baik karena salinitas dapat dikurangi dan perikanan darat bisa dikembangkan lebih awal. Dari segi sumber daya air, menurut Direktur Bina Teknik SDA Kementerian PU-Pera Eko Winar Irianto, kondisi La Nina dapat memenuhi kapasitas energi maksimum pada operasional waduk, sementara dalam kondisi El Nino energi yang dihasilkan akan berkurang.\nBagaimana dampak positif La Nina dari segi sumber daya air?', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5, NULL, NULL),
(18, 3, 3, 'Kita sering kali melakukan olahraga. Bahkan, orang-orang di sekitar kita juga sering menyarankan kita untuk melakukan aktivitas tersebut. Rupanya, ada keterkaitan antara berolahraga dengan kesehatan fisik dan mental, misalnya terkait dengan perkembangan tubuh dan interaksi sosial.\n     Perlu diketahui bahwa olahraga bermanfaat dalam mencegah risiko berbagai penyakit. Saat tubuh jarang melakukan olahraga, lemak akan menumpuk di dalam tubuh sehingga dapat berujung pada terjadinya obesitas. Namun, dengan berolahraga secara teratur, tumpukan lemak yang ada di dalam tubuh bisa terbakar. Selain itu, saat berolahraga, terjadi kontraksi otot-otot tubuh yang menyebabkan cairan getah bening dapat mengalir dengan lancar. Cairan getah bening merupakan cairan yang mengandung sel-sel darah putih yang berkaitan dengan sistem pertahanan tubuh. Berbeda dengan pembuluh darah, cairan getah bening ini tidak mengalir karena kontraksi jantung, tetapi karena kontraksi otot-otot yang melekat pada rangka tubuh kita.\n     Selain manfaat tersebut, olahraga juga dapat meningkatkan perkembangan tubuh. Aktivitas yang dilakukan selama olahraga akan membantu tubuh untuk lebih cepat berkembang. Ketika berolahraga, terjadi kontraksi otot-otot yang menyebabkan otot lebih terlatih dan akan berkembang dengan baik. Selain itu, aktivitas olahraga yang diiringi gizi seimbang juga dapat membuat metabolisme tubuh menjadi lebih lancar karena hormon pertumbuhan bekerja lebih maksimal.\n     Selain bermanfaat bagi kesehatan fisik, olahraga juga dapat meningkatkan interaksi sosial. Ketika olahraga dilakukan dalam kelompok, misalnya saat bermain sepak bola, basket, dan futsal, terjadi proses perkenalan dengan orang lain, baik dengan orang di dalam tim maupun di luar tim. Selain itu, terjadi proses saling bekerja sama saat bermain atau bertanding. Adanya kompetisi yang sehat dalam permainan olahraga tersebut juga membuat kita menjadi lebih jujur. Akhirnya, kita menjadi terbiasa dalam melakukan \nSelain berolahraga, hal yang perlu kita lakukan untuk menjaga kesehatan fisik dan mental adalah ....  ', 3, 'Mengurangi makan makanan penyebab obesitas', 'Meningkatkan interaksi sosial dan sikap saling bekerja sama', 'Mengurangi makanan berprotein dan berlemak tinggi', 'Memakan makanan bergizi seimbang', '', '', '', '', '', '', 'A, B, D', '', '9286.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, NULL),
(19, 3, 4, 'Mina padi adalah suatu bentuk usaha tani gabungan yang memanfaatkan genangan air sawah yang tengah ditanami padi sebagai kolam untuk budidaya ikan. Oleh karena itu, selain mendapat hasil panen yaitu padi, petani yang menerapkan sistem mina padi juga dapat memanen ikan. Pak Made adalah salah satu petani di Bali yang menerapkan sistem mina padi di sawahnya. Pak Made mengatakan bahwa dengan menerapkan sistem mina padi, pendapatan dari hasil panen beliau meningkat. “Akan tetapi, perawatan padi dan ikan pada sistem mina padi memang gampang-gampang susah”, katanya.\nBenih ikan yang ditebar oleh Pak Made di sawah beliau yang seluas 1,5 ha adalah ikan emas dan ikan nila yang masih berukuran 5 cm sampai dengan 8 cm dengan kepadatan 5.000 ekor/ha. Perbandingan benih ikan emas dengan benih ikan nila yang ditebar oleh Pak Made adalah 3 : 2. Harga bibit ikan nila adalah Rp500,00/ekor dan harga bibit ikan emas adalah dua kali lipatnya. Setiap pagi, Pak Made memberi pakan tambahan berupa dedak halus 250 kg/ha untuk ikan yang ada di sawahnya.\nSetelah tujuh puluh hari, Pak Made memanen ikannya tersebut. Total ikan yang dipanen adalah 6.500 kg/ha. Perbandingan hasil panen ikan emas dan ikan nila sama dengan perbandingan benih ikan ketika ditebar. Harga ikan emas dan ikan nila yang dipanen oleh Pak Made berturut-turut adalah Rp30.000,00/kg dan Rp27.000,00/kg. Sekitar 2 bulan kemudian, Pak Made memanen padinya dengan hasil panen 5,7 ton/ha. Pak Made menjualnya dalam bentuk gabah kering panen (GKP) dengan harga Rp5.000,00/kg.\nTentukan benar atau salah pernyataan berikut dengan memberi tanda ? pada kolom yang sesuai!\n', 4, '• Total benih ikan emas yang ditebar di sawah Pak Made adalah 4.500 ekor', '• Total benih ikan nila yang ditebar di sawah Pak Made adalah 2.000 ekor', '• Total ikan emas yang dipanen Pak Made adalah 3.900 ekor', '• Total ikan nila yang dipanen Pak Made adalah 3.900 ekor', '', '', '', '', '', '', 'B, S, S, B', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, NULL),
(20, 3, 5, 'Pemerintah melalui Badan Pusat Statistik telah merilis data produktivitas padi dari setiap provinsi di Indonesia. Data tersebut meliputi luas lahan persawahan yang dipanen dan produktivitas lahan panen. Adapun data jumlah produksi per tahun dapat diketahui dengan mengalikan luas lahan panen dan produktivitasnya. Angka produktivitas padi diperoleh melalui survei berupa Gabah Kering Panen (GKP) yang dikonversikan menjadi Gabah Kering Giling (GKG).\n    Pulau Jawa sebagai pulau dengan jumlah penduduk terbanyak masih memerlukan pasokan beras dari daerah lain maupun dari impor. Hal tersebut karena jumlah hasil panen belum dapat mencukupi kebutuhan pangan masyarakat. Berikut data jumlah produksi padi dari perwakilan provinsi di 5 pulau terbesar di Indonesia. \nTentukan urutan provinsi dari yang memiliki jumlah hasil panen tertinggi hingga terendah!', 5, '92.198.050,77 kuintal', '46.786.971,19 kuintal', '20.763.612,87 kuintal', '11.345.248,95 kuintal', '', 'Sumatra Utara', 'Jawa Barat', 'Kalimantan Selatan', 'Sulawesi Selatan', '', 'C, A, D, B', '#00BCD4, #F44336, #4CAF50, #FF9800', '7181.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sosial`
--

CREATE TABLE `sosial` (
  `ids` int(11) NOT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  `nis` varchar(50) DEFAULT NULL,
  `ket1` mediumtext DEFAULT NULL,
  `ket2` mediumtext DEFAULT NULL,
  `pred` varchar(5) DEFAULT NULL,
  `smt` varchar(11) DEFAULT NULL,
  `tp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spiritual`
--

CREATE TABLE `spiritual` (
  `ids` int(11) NOT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  `nis` varchar(50) DEFAULT NULL,
  `ket1` mediumtext DEFAULT NULL,
  `ket2` mediumtext DEFAULT NULL,
  `pred` varchar(5) DEFAULT NULL,
  `smt` varchar(11) DEFAULT NULL,
  `tp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `mode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `mode`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `statustrx`
--

CREATE TABLE `statustrx` (
  `id` int(11) NOT NULL,
  `mode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `statustrx`
--

INSERT INTO `statustrx` (`id`, `mode`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `surat`
--

CREATE TABLE `surat` (
  `id` int(11) NOT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `file` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `surat_tugas`
--

CREATE TABLE `surat_tugas` (
  `id` int(11) NOT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `keperluan` text DEFAULT NULL,
  `tempat` text DEFAULT NULL,
  `hari` varchar(50) DEFAULT NULL,
  `waktu` varchar(50) DEFAULT NULL,
  `tgl_berangkat` date DEFAULT NULL,
  `lama` varchar(11) DEFAULT NULL,
  `kendaraan` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `s_barang`
--

CREATE TABLE `s_barang` (
  `id` int(11) NOT NULL,
  `idk` varchar(50) DEFAULT NULL,
  `idl` varchar(50) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jumlah` varchar(50) DEFAULT NULL,
  `baik` varchar(11) DEFAULT NULL,
  `rb` int(11) DEFAULT 0,
  `rs` int(11) NOT NULL DEFAULT 0,
  `rr` int(11) NOT NULL DEFAULT 0,
  `foto` text DEFAULT NULL,
  `foto_rb` text DEFAULT NULL,
  `foto_rs` text DEFAULT NULL,
  `foto_rr` text DEFAULT NULL,
  `kondisi` varchar(50) DEFAULT NULL,
  `atap` varchar(11) DEFAULT NULL,
  `lantai` varchar(11) DEFAULT NULL,
  `dinding` varchar(11) DEFAULT NULL,
  `pintu` varchar(11) DEFAULT NULL,
  `jendela` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `s_kategori`
--

CREATE TABLE `s_kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `s_kategori`
--

INSERT INTO `s_kategori` (`id`, `kategori`) VALUES
(1, 'Bangunan');

-- --------------------------------------------------------

--
-- Table structure for table `s_lokasi`
--

CREATE TABLE `s_lokasi` (
  `id` int(11) NOT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `temp_file`
--

CREATE TABLE `temp_file` (
  `id_file` int(11) NOT NULL,
  `id_bank` int(11) DEFAULT 0,
  `nama_file` varchar(50) DEFAULT NULL,
  `status_file` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `temp_finger`
--

CREATE TABLE `temp_finger` (
  `id` int(11) NOT NULL,
  `level` varchar(50) DEFAULT NULL,
  `idjari` int(11) DEFAULT NULL,
  `serial` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `temp_pil`
--

CREATE TABLE `temp_pil` (
  `id` int(11) NOT NULL,
  `idbank` int(11) NOT NULL,
  `nomor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `temp_soal`
--

CREATE TABLE `temp_soal` (
  `id` int(11) NOT NULL,
  `id_bank` int(11) NOT NULL,
  `nomor` int(11) NOT NULL,
  `idfile` int(11) NOT NULL,
  `file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tmpbayar`
--

CREATE TABLE `tmpbayar` (
  `nokartu` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tmpbayar`
--

INSERT INTO `tmpbayar` (`nokartu`) VALUES
('');

-- --------------------------------------------------------

--
-- Table structure for table `tmpbuku`
--

CREATE TABLE `tmpbuku` (
  `kode` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tmpface`
--

CREATE TABLE `tmpface` (
  `nokartu` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tmpreg`
--

CREATE TABLE `tmpreg` (
  `nokartu` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tmpsis`
--

CREATE TABLE `tmpsis` (
  `nokartu` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `id_token` int(11) NOT NULL,
  `token` varchar(6) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `masa_berlaku` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`id_token`, `token`, `time`, `masa_berlaku`) VALUES
(1, 'XYGUHC', '2025-06-08 00:37:17', '00:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `idt` int(11) NOT NULL,
  `nama_toko` varchar(100) DEFAULT NULL,
  `deskrip` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`idt`, `nama_toko`, `deskrip`) VALUES
(1, 'Kantin Super', 'Kantin Super - Jual berbagai segala kebutuhan siswa '),
(2, 'Kantin Tante Nova', 'Kantin Tante Nova - Menjual Segala Kebutuhan Makanan Anda');

-- --------------------------------------------------------

--
-- Table structure for table `tp`
--

CREATE TABLE `tp` (
  `id_tp` int(11) NOT NULL,
  `idcp` varchar(11) DEFAULT NULL,
  `idelemen` varchar(11) DEFAULT NULL,
  `kompetensi` text DEFAULT NULL,
  `lingkup` text DEFAULT NULL,
  `tujuan` text DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `tingkat` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tp`
--

INSERT INTO `tp` (`id_tp`, `idcp`, `idelemen`, `kompetensi`, `lingkup`, `tujuan`, `guru`, `mapel`, `tingkat`) VALUES
(1, '1', '1', 'Membandingkan informasi berupa\r\ngagasan yang akurat dari menyimak laporan hasil observasi dalam bentuk monolog', 'Membandingkan informasi berupa gagasan yang akurat dari menyimak laporan hasil observasi dalam bentuk monolog', 'Membandingkan informasi berupa\r\ngagasan yang akurat dari menyimak laporan hasil observasi dalam bentuk monolog Membandingkan informasi berupa gagasan yang akurat dari menyimak laporan hasil observasi dalam bentuk monolog', '3', '3', '10'),
(2, '1', '2', 'Merumuskan gagasan utama berdasarkan teks monolog laporan hasil observasi yang disimak', 'Mengevaluasi pesan dari menyimak teks monolog lawakan tunggal', 'Merumuskan gagasan utama berdasarkan teks monolog laporan hasil observasi yang disimak Mengevaluasi pesan dari menyimak teks monolog lawakan tunggal', '3', '3', '10'),
(3, '1', '1', 'Menyimpulkan pesan dan perasaan dari menyimak teks cerita fiksi dalam bentuk monolog', 'Mengevaluasi pesan dari menyimak teks monolog lawakan tunggal ', 'Menyimpulkan pesan dan perasaan dari menyimak teks cerita fiksi dalam bentuk monolog Mengevaluasi pesan dari menyimak teks monolog lawakan tunggal ', '3', '3', '10');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `idbuku` varchar(11) DEFAULT NULL,
  `jml` int(11) NOT NULL DEFAULT 1,
  `tgl_kembali` date DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_kantin`
--

CREATE TABLE `transaksi_kantin` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `idpeg` varchar(50) DEFAULT NULL,
  `idproduk` varchar(11) DEFAULT NULL,
  `jumlah` varchar(11) DEFAULT NULL,
  `harga` varchar(11) DEFAULT NULL,
  `total_harga` varchar(11) DEFAULT NULL,
  `status` varchar(5) NOT NULL DEFAULT '0',
  `ket` int(11) NOT NULL DEFAULT 0,
  `bulan` varchar(11) DEFAULT NULL,
  `tahun` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaksi_kantin`
--

INSERT INTO `transaksi_kantin` (`id`, `tanggal`, `idsiswa`, `idpeg`, `idproduk`, `jumlah`, `harga`, `total_harga`, `status`, `ket`, `bulan`, `tahun`) VALUES
(1, '2025-03-02', '1234567890', NULL, '1', '5', '3000', '15000', '2', 0, '03', '2025'),
(2, '2025-03-04', '1234567890', NULL, '1', '34', '3000', '102000', '2', 0, '03', '2025'),
(3, '2025-03-05', '6', NULL, '1', '16', '3000', '48000', '1', 1, NULL, NULL),
(4, '2025-03-05', '1234567890', NULL, '1', '16', '3000', '48000', '2', 0, '03', '2025'),
(5, '2025-03-05', '1234567890', NULL, '1', '60', '3000', '180000', '2', 0, '03', '2025'),
(6, '2025-03-23', '1234567890', NULL, '1', '2', '3000', '6000', '2', 0, '03', '2025'),
(7, '2025-03-24', '18', NULL, '1', '1', '3000', '3000', '1', 0, NULL, NULL),
(8, '2025-03-28', '2', NULL, '1', '2', '3000', '6000', '1', 0, NULL, NULL),
(10, '2025-05-01', '1234567890', NULL, '1', '7', '3000', '21000', '2', 0, '05', '2025'),
(11, '2025-05-01', '1234567890', NULL, '1', '5', '3000', '15000', '2', 0, '05', '2025'),
(12, '2025-05-16', '2', NULL, '1', '8', '3000', '24000', '1', 0, NULL, NULL),
(13, '2025-06-05', '19', NULL, '2', '1', '14000', '14000', '1', 0, NULL, NULL),
(14, '2025-06-05', '19', NULL, '2', '1', '14000', '14000', '1', 0, NULL, NULL),
(15, '2025-06-07', '100', NULL, '1', '1', '7000', '7000', '1', 1, NULL, NULL),
(16, '2025-06-07', '100', NULL, '2', '1', '14000', '14000', '1', 1, NULL, NULL),
(17, '2025-06-11', '1', NULL, '1', '1', '7000', '7000', '3', 0, NULL, NULL),
(18, '2025-06-11', '100', NULL, '2', '1', '14000', '14000', '3', 0, NULL, NULL),
(20, '2025-06-11', '1', NULL, '1', '1', '7000', '7000', '1', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trx_bayar`
--

CREATE TABLE `trx_bayar` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `blth` varchar(50) DEFAULT NULL,
  `idsiswa` int(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `idbayar` int(11) DEFAULT NULL,
  `bayar` int(11) DEFAULT NULL,
  `ke` int(11) DEFAULT NULL,
  `bukti` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trx_bayar`
--

INSERT INTO `trx_bayar` (`id`, `tanggal`, `blth`, `idsiswa`, `kelas`, `idbayar`, `bayar`, `ke`, `bukti`) VALUES
(1, '2025-05-30', '052025', 1, 'VII-A', 1, 120000, 1, 'TRX-:-20250530152131'),
(2, '2025-06-01', '062025', 1, 'VII-A', 1, 120000, 2, 'TRX-:-20250601143911'),
(3, '2025-06-04', '062025', 3, 'X-A', 1, 120000, 1, '20250604090418-1'),
(4, '2025-06-04', '062025', 47, 'XI-A', 1, 120000, 1, '20250604090439-1');

-- --------------------------------------------------------

--
-- Table structure for table `tts_files`
--

CREATE TABLE `tts_files` (
  `id` int(11) NOT NULL,
  `text_input` text DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tts_files`
--

INSERT INTO `tts_files` (`id`, `text_input`, `filename`) VALUES
(1, 'iman ruhiman', 'tts_1748710779_1232.mp3'),
(2, 'ALVERO DHIKO LEVANO', 'tts_1748710816_2508.mp3'),
(3, 'ALVERO DHIKO LEVANO', 'tts_1748710845_6638.mp3'),
(4, 'BELLA AYU INDAH SARI', 'tts_1748710852_6697.mp3'),
(5, 'ALVERO DHIKO LEVANO', 'tts_1748710885_5120.mp3'),
(6, 'iman ruhiman', 'tts_1748751374_4006.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `tugas`
--

CREATE TABLE `tugas` (
  `id_tugas` int(255) NOT NULL,
  `guru` varchar(11) DEFAULT NULL,
  `kelas` mediumtext DEFAULT NULL,
  `mapel` varchar(255) DEFAULT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `tugas` longtext DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tgl_mulai` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tugas`
--

INSERT INTO `tugas` (`id_tugas`, `guru`, `kelas`, `mapel`, `judul`, `tugas`, `file`, `tgl_mulai`, `tgl_selesai`, `tgl`, `status`) VALUES
(1, '3', 'a:2:{i:0;s:3:\"X-A\";i:1;s:3:\"X-B\";}', '3', 'Teks Anekdot', '<p>Pada kegiatan ini, kalian akan membaca laporan hasil observasi berjudul<br />&ldquo;Kunang-Kunang&rdquo;. Untuk melakukkan itu, perhatikan dan ikuti langkahlangkah berikut.</p>\r\n<p><br /><strong>Sebelum membaca</strong><br />1. Tuliskan judul teks yang akan kalian baca.</p>\r\n<p>2. Tuliskan pertanyaan Adiksimba (apa, di mana, kapan, siapa, mengapa,<br />dan bagaimana) yang muncul saat kalian membaca judul teks.<br />Setelah membaca<br />1. Tukarlah pertanyaan yang kalian buat dengan teman yang lain.<br />2. Jawablah pertanyaan yang kalian dapatkan.<br />3. Tuliskan informasi penting dari jawaban tersebut.<br />4. Buatlah ringkasan dari setiap paragraf.</p>\r\n<p>&nbsp;</p>', 'Struktur dan Kebahasaan Teks Anekdot.pdf', '2025-06-16 07:00:00', '2025-06-30 08:13:00', '2025-06-16 00:13:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tujuan`
--

CREATE TABLE `tujuan` (
  `idt` int(11) NOT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `level` varchar(11) DEFAULT NULL,
  `lm` text DEFAULT NULL,
  `tujuan` longtext DEFAULT NULL,
  `smt` varchar(11) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ujian`
--

CREATE TABLE `ujian` (
  `id_ujian` int(11) NOT NULL,
  `kode_nama` varchar(255) DEFAULT NULL,
  `id_bank` int(11) DEFAULT NULL,
  `kode_ujian` varchar(30) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jml_soal` int(11) NOT NULL DEFAULT 0,
  `jml_esai` int(11) NOT NULL DEFAULT 0,
  `jml_multi` int(11) NOT NULL DEFAULT 0,
  `jml_bs` int(11) NOT NULL DEFAULT 0,
  `jml_urut` int(11) NOT NULL DEFAULT 0,
  `tampil_bs` int(11) NOT NULL DEFAULT 0,
  `tampil_urut` int(11) NOT NULL DEFAULT 0,
  `tampil_pg` int(11) NOT NULL DEFAULT 0,
  `tampil_esai` int(11) NOT NULL DEFAULT 0,
  `tampil_multi` int(11) NOT NULL DEFAULT 0,
  `lama_ujian` int(11) NOT NULL DEFAULT 0,
  `tgl_ujian` datetime DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `waktu_ujian` time DEFAULT NULL,
  `selesai_ujian` time DEFAULT NULL,
  `level` varchar(5) DEFAULT NULL,
  `pk` mediumtext DEFAULT NULL,
  `opsi` int(11) DEFAULT 4,
  `sesi` varchar(1) DEFAULT NULL,
  `acak` int(11) DEFAULT 1,
  `token` int(11) DEFAULT 0,
  `status` int(11) DEFAULT NULL,
  `hasil` int(11) DEFAULT 0,
  `kkm` varchar(128) DEFAULT NULL,
  `ulang` int(11) DEFAULT 0,
  `soal_agama` varchar(50) DEFAULT NULL,
  `reset` int(11) DEFAULT 0,
  `pelanggaran` int(11) DEFAULT 0,
  `btnselesai` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ujian`
--

INSERT INTO `ujian` (`id_ujian`, `kode_nama`, `id_bank`, `kode_ujian`, `nama`, `jml_soal`, `jml_esai`, `jml_multi`, `jml_bs`, `jml_urut`, `tampil_bs`, `tampil_urut`, `tampil_pg`, `tampil_esai`, `tampil_multi`, `lama_ujian`, `tgl_ujian`, `tgl_selesai`, `waktu_ujian`, `selesai_ujian`, `level`, `pk`, `opsi`, `sesi`, `acak`, `token`, `status`, `hasil`, `kkm`, `ulang`, `soal_agama`, `reset`, `pelanggaran`, `btnselesai`) VALUES
(1, 'BINDO-A', 1, 'PAT', 'BINDO', 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 90, '2025-06-16 07:00:00', '2025-06-30 08:04:00', '07:00:00', NULL, '10', 'UMUM', 4, '1', 1, 0, 1, 0, NULL, 0, '', 0, 5, 0),
(2, 'MTK-A', 2, 'PAT', 'MTK', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 90, '2025-06-16 07:00:00', '2025-06-30 08:04:00', '07:00:00', NULL, '10', 'UMUM', 4, '1', 1, 0, 1, 0, NULL, 0, '', 0, 5, 0),
(3, 'IPA-B1', 3, 'PAT', 'IPA', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 90, '2025-06-16 07:00:00', '2025-06-30 08:05:00', '07:00:00', NULL, '10', 'UMUM', 4, '1', 1, 0, 1, 0, NULL, 0, '', 0, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `nowa` varchar(50) DEFAULT NULL,
  `sts` int(11) NOT NULL DEFAULT 0,
  `idjari` varchar(11) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `walas` varchar(50) DEFAULT NULL,
  `tingkat` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `ruang` varchar(50) DEFAULT NULL,
  `sesi` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `pendidikan` varchar(50) DEFAULT NULL,
  `jk` varchar(11) DEFAULT NULL,
  `golongan` varchar(50) DEFAULT NULL,
  `bank` varchar(50) DEFAULT NULL,
  `norek` varchar(50) DEFAULT NULL,
  `nokartu` varchar(50) DEFAULT NULL,
  `saldo` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nip`, `nama`, `username`, `password`, `level`, `nowa`, `sts`, `idjari`, `foto`, `jabatan`, `walas`, `tingkat`, `kelas`, `ruang`, `sesi`, `status`, `pendidikan`, `jk`, `golongan`, `bank`, `norek`, `nokartu`, `saldo`) VALUES
(1, NULL, 'Admin', 'admin', '$2y$10$t3L.GQrBJJHa5gPSooBuhOiZYk4yFgJT7TqBvqPI1bU57mJFQOrAG', 'admin', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(2, '123456', 'Olivia Andrigo, M.Pd.', 'guru1', 'guru1', 'guru', '0', 0, NULL, NULL, 'Guru', 'X-B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, '0'),
(3, '123457', 'Lionel Andreas, S.Pd. M.Si.', 'guru2', 'guru2', 'guru', '0', 0, NULL, NULL, 'Guru', 'X-A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, '0'),
(4, '123458', 'Emma Sophia, S.Pd. M.E.', 'guru3', 'guru3', 'guru', '0', 0, NULL, NULL, 'Guru', 'XI-A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, '0'),
(5, '123459', 'Amelia Isabella, S.Pd.', 'guru4', 'guru4', 'guru', '0', 0, NULL, NULL, 'Guru', 'XI-B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, '0'),
(6, '123460', 'William Liam, S.Pd.', 'guru5', 'guru5', 'guru', '0', 0, NULL, NULL, 'Guru', 'XII-A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, '0'),
(7, '123461', 'Amor Antropo, S.Pd.', 'guru6', 'guru6', 'guru', '0', 0, NULL, NULL, 'Guru', 'XII-B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, '0'),
(8, '123462', 'Lucas Amenia, S.Pd.', 'guru7', 'guru7', 'guru', '', 0, NULL, NULL, 'Guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(9, '123463', 'Alicia Aprilia, S.Pd.', 'guru8', 'guru8', 'guru', '', 0, NULL, NULL, 'Guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(10, '123464', 'Ronaldo Christiano, S.Pd.', 'guru9', 'guru9', 'guru', '', 0, NULL, NULL, 'Guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(11, '123465', 'Rizky Hanif Mahardika, M.Pd', 'guru10', 'guru10', 'guru', '', 0, NULL, NULL, 'Guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(12, '123466', 'Oky Dony, S.Pd', 'guru11', 'guru11', 'guru', '', 0, NULL, NULL, 'Guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(13, '123467', 'Dewi Anisah, S.E', 'guru12', 'guru12', 'guru', '', 0, NULL, NULL, 'Guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(14, '123468', 'Elsa Rahmawati, S.Pd', 'guru13', 'guru13', 'guru', '', 0, NULL, NULL, 'Guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(15, '123469', 'Farida Agustina, S.Pd', 'guru14', 'guru14', 'guru', '', 0, NULL, NULL, 'Guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(16, '123470', 'Eva Kurniawati, S.Pd', 'guru15', 'guru15', 'guru', '', 0, NULL, NULL, 'Guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(17, '123471', 'Fatimatuz Zahro, S.Pd', 'guru16', 'guru16', 'guru', '', 0, NULL, NULL, 'Guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(18, '123472', 'Hidayat Rahman, S.Pd', 'guru17', 'guru17', 'guru', '', 0, NULL, NULL, 'Guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(19, '123473', 'Mukhammad Ali, M.Pd', 'guru18', 'guru18', 'guru', '', 0, NULL, NULL, 'Guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(20, '123474', 'Dina Novitasari, S.Pd', 'guru19', 'guru19', 'guru', '', 0, NULL, NULL, 'Guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(21, '123475', 'Dedi Fermiansyah, S.Pd.', 'guru20', 'guru20', 'guru', '', 0, NULL, NULL, 'Guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(22, NULL, 'James George, S.Pd. M.Pd.', 'admin1', '$2y$10$E./wE5C8m21i8lhOXwbR6uv84zU9M3hQHaTqoQ.tYwkJCEA1s20DW', 'admin', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(23, '09327257612', 'Noah Andre, S.E.', 'staff1', 'staff1', 'staff', '0', 0, NULL, NULL, 'Staff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, '0'),
(24, '9505859645', 'Harry Joshua, S.Pd.', 'staff2', 'staff2', 'staff', '0', 0, NULL, NULL, 'Staff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, '0'),
(25, '2758579919', 'Oliver Amelia, S.Pd.', 'staff3', 'staff3', 'staff', '0', 0, NULL, NULL, 'Staff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, '0'),
(26, '0068502845', 'Miley Chrus, S.IP..', 'staff4', 'staff4', 'staff', '0', 0, NULL, NULL, 'Staff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, '0'),
(27, NULL, 'Revolusi, S.P.d', 'pengawas1', 'pengawas1', 'awas', '0', 0, NULL, NULL, NULL, NULL, '10', 'X-A', 'X-A', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(28, NULL, 'Andro, S.Pd.', 'pengawas2', 'pengawas2', 'awas', '0', 0, NULL, NULL, NULL, NULL, '10', 'X-B', 'X-B', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(29, '000', 'pengawas', 'pengawas', 'pengawas', 'pengawas', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(30, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `waktu`
--

CREATE TABLE `waktu` (
  `id` int(11) NOT NULL,
  `hari` varchar(50) NOT NULL,
  `masuk` varchar(50) NOT NULL,
  `pulang` varchar(50) NOT NULL,
  `batas_pulang` varchar(50) DEFAULT NULL,
  `alpha` varchar(50) NOT NULL,
  `masuk_eskul` varchar(50) DEFAULT NULL,
  `pulang_eskul` varchar(50) DEFAULT NULL,
  `batas_eskul` varchar(50) DEFAULT NULL,
  `piket_masuk` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `walas`
--

CREATE TABLE `walas` (
  `id` int(11) NOT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `idwalas` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `walas`
--

INSERT INTO `walas` (`id`, `kelas`, `idwalas`) VALUES
(1, 'X-1', '24'),
(2, 'X-2', '16'),
(3, 'XI-1', '4'),
(4, 'XII-1', '5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `absensi_daring`
--
ALTER TABLE `absensi_daring`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `absensi_les`
--
ALTER TABLE `absensi_les`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `absensi_mapel`
--
ALTER TABLE `absensi_mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `absen_daringmapel`
--
ALTER TABLE `absen_daringmapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `absen_gps`
--
ALTER TABLE `absen_gps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `absen_jjm`
--
ALTER TABLE `absen_jjm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `absen_mapel`
--
ALTER TABLE `absen_mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `absen_pesan`
--
ALTER TABLE `absen_pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `absen_tu`
--
ALTER TABLE `absen_tu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `arsip`
--
ALTER TABLE `arsip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aset`
--
ALTER TABLE `aset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `atp`
--
ALTER TABLE `atp`
  ADD PRIMARY KEY (`id_atp`);

--
-- Indexes for table `banksoal`
--
ALTER TABLE `banksoal`
  ADD PRIMARY KEY (`id_bank`),
  ADD UNIQUE KEY `kode` (`kode`);

--
-- Indexes for table `bell`
--
ALTER TABLE `bell`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bell_nada`
--
ALTER TABLE `bell_nada`
  ADD PRIMARY KEY (`idb`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `bk_kategori`
--
ALTER TABLE `bk_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bk_pelanggaran`
--
ALTER TABLE `bk_pelanggaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bk_pesan`
--
ALTER TABLE `bk_pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bk_siswa`
--
ALTER TABLE `bk_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bk_sp`
--
ALTER TABLE `bk_sp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bk_sub`
--
ALTER TABLE `bk_sub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bk_surat`
--
ALTER TABLE `bk_surat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bk_tindakan`
--
ALTER TABLE `bk_tindakan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tindakan` (`tindakan`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bulan`
--
ALTER TABLE `bulan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cetak`
--
ALTER TABLE `cetak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp`
--
ALTER TABLE `cp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_elemen`
--
ALTER TABLE `cp_elemen`
  ADD PRIMARY KEY (`id_elemen`);

--
-- Indexes for table `datareg`
--
ALTER TABLE `datareg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_luar`
--
ALTER TABLE `data_luar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deskripsi`
--
ALTER TABLE `deskripsi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `digital`
--
ALTER TABLE `digital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `digital_baca`
--
ALTER TABLE `digital_baca`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disfo`
--
ALTER TABLE `disfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_pendukung`
--
ALTER TABLE `file_pendukung`
  ADD PRIMARY KEY (`id_file`);

--
-- Indexes for table `gaji`
--
ALTER TABLE `gaji`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gtt`
--
ALTER TABLE `gtt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal_mengajar`
--
ALTER TABLE `jadwal_mengajar`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `jadwal_piket`
--
ALTER TABLE `jadwal_piket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal_refleksi`
--
ALTER TABLE `jadwal_refleksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal_tu`
--
ALTER TABLE `jadwal_tu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawaban_dup`
--
ALTER TABLE `jawaban_dup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawaban_refleksi`
--
ALTER TABLE `jawaban_refleksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawaban_tugas`
--
ALTER TABLE `jawaban_tugas`
  ADD PRIMARY KEY (`id_jawaban`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `jenis_satuan`
--
ALTER TABLE `jenis_satuan`
  ADD PRIMARY KEY (`satuan`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kode`
--
ALTER TABLE `kode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kode_jenis`
--
ALTER TABLE `kode_jenis`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konten`
--
ALTER TABLE `konten`
  ADD PRIMARY KEY (`id_konten`);

--
-- Indexes for table `kurikulum`
--
ALTER TABLE `kurikulum`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tingkat` (`tingkat`);

--
-- Indexes for table `k_bayar`
--
ALTER TABLE `k_bayar`
  ADD PRIMARY KEY (`kelas`);

--
-- Indexes for table `lampu`
--
ALTER TABLE `lampu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lingkup`
--
ALTER TABLE `lingkup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapel_ijazah`
--
ALTER TABLE `mapel_ijazah`
  ADD PRIMARY KEY (`idmapel`);

--
-- Indexes for table `mapel_rapor`
--
ALTER TABLE `mapel_rapor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`idm`);

--
-- Indexes for table `mesin_absen`
--
ALTER TABLE `mesin_absen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_bayar`
--
ALTER TABLE `m_bayar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_buku`
--
ALTER TABLE `m_buku`
  ADD PRIMARY KEY (`idm`);

--
-- Indexes for table `m_dimensi`
--
ALTER TABLE `m_dimensi`
  ADD PRIMARY KEY (`id_dimensi`);

--
-- Indexes for table `m_elemen`
--
ALTER TABLE `m_elemen`
  ADD PRIMARY KEY (`id_elemen`);

--
-- Indexes for table `m_eskul`
--
ALTER TABLE `m_eskul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_hari`
--
ALTER TABLE `m_hari`
  ADD PRIMARY KEY (`idh`);

--
-- Indexes for table `m_kurikulum`
--
ALTER TABLE `m_kurikulum`
  ADD PRIMARY KEY (`idk`);

--
-- Indexes for table `m_lemari`
--
ALTER TABLE `m_lemari`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_nilai_proyek`
--
ALTER TABLE `m_nilai_proyek`
  ADD PRIMARY KEY (`nilai`);

--
-- Indexes for table `m_pangkat`
--
ALTER TABLE `m_pangkat`
  ADD PRIMARY KEY (`golongan`);

--
-- Indexes for table `m_pesan`
--
ALTER TABLE `m_pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_proyek`
--
ALTER TABLE `m_proyek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_rapor`
--
ALTER TABLE `m_rapor`
  ADD PRIMARY KEY (`idr`);

--
-- Indexes for table `m_sk`
--
ALTER TABLE `m_sk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_spiritual`
--
ALTER TABLE `m_spiritual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_sub_elemen`
--
ALTER TABLE `m_sub_elemen`
  ADD PRIMARY KEY (`id_sub`);

--
-- Indexes for table `m_tugas`
--
ALTER TABLE `m_tugas`
  ADD PRIMARY KEY (`idt`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `nilai_formatif`
--
ALTER TABLE `nilai_formatif`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_harian`
--
ALTER TABLE `nilai_harian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_k13`
--
ALTER TABLE `nilai_k13`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_proses`
--
ALTER TABLE `nilai_proses`
  ADD PRIMARY KEY (`idpros`);

--
-- Indexes for table `nilai_proyek`
--
ALTER TABLE `nilai_proyek`
  ADD PRIMARY KEY (`idn`);

--
-- Indexes for table `nilai_rapor`
--
ALTER TABLE `nilai_rapor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_refleksi`
--
ALTER TABLE `nilai_refleksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_sikap`
--
ALTER TABLE `nilai_sikap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_skl`
--
ALTER TABLE `nilai_skl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_sumatif`
--
ALTER TABLE `nilai_sumatif`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pdb`
--
ALTER TABLE `pdb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id_aplikasi`);

--
-- Indexes for table `pengawas`
--
ALTER TABLE `pengawas`
  ADD PRIMARY KEY (`id_pengawas`);

--
-- Indexes for table `pesan_terkirim`
--
ALTER TABLE `pesan_terkirim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peskul`
--
ALTER TABLE `peskul`
  ADD PRIMARY KEY (`idp`);

--
-- Indexes for table `pkl_dudi`
--
ALTER TABLE `pkl_dudi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pkl_evaluasi`
--
ALTER TABLE `pkl_evaluasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pkl_jurnal`
--
ALTER TABLE `pkl_jurnal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pkl_kegiatan`
--
ALTER TABLE `pkl_kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pkl_kompetensi`
--
ALTER TABLE `pkl_kompetensi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pkl_mnilai`
--
ALTER TABLE `pkl_mnilai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pkl_monitor`
--
ALTER TABLE `pkl_monitor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pkl_nilai`
--
ALTER TABLE `pkl_nilai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pkl_panitia`
--
ALTER TABLE `pkl_panitia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pkl_pembimbing`
--
ALTER TABLE `pkl_pembimbing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pkl_reg`
--
ALTER TABLE `pkl_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pkl_siswa`
--
ALTER TABLE `pkl_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`produk_id`);

--
-- Indexes for table `profil_smk`
--
ALTER TABLE `profil_smk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proyek`
--
ALTER TABLE `proyek`
  ADD PRIMARY KEY (`idp`);

--
-- Indexes for table `refleksi`
--
ALTER TABLE `refleksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rpp`
--
ALTER TABLE `rpp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saldo`
--
ALTER TABLE `saldo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sapras_ruang`
--
ALTER TABLE `sapras_ruang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `savsoft_options`
--
ALTER TABLE `savsoft_options`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `savsoft_qbank`
--
ALTER TABLE `savsoft_qbank`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `sinkron`
--
ALTER TABLE `sinkron`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `skkb`
--
ALTER TABLE `skkb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skl`
--
ALTER TABLE `skl`
  ADD PRIMARY KEY (`id_skl`);

--
-- Indexes for table `sk_membaca`
--
ALTER TABLE `sk_membaca`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sk_memutuskan`
--
ALTER TABLE `sk_memutuskan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sk_mengingat`
--
ALTER TABLE `sk_mengingat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sk_menimbang`
--
ALTER TABLE `sk_menimbang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sk_peg`
--
ALTER TABLE `sk_peg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `sosial`
--
ALTER TABLE `sosial`
  ADD PRIMARY KEY (`ids`);

--
-- Indexes for table `spiritual`
--
ALTER TABLE `spiritual`
  ADD PRIMARY KEY (`ids`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statustrx`
--
ALTER TABLE `statustrx`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surat_tugas`
--
ALTER TABLE `surat_tugas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s_barang`
--
ALTER TABLE `s_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s_kategori`
--
ALTER TABLE `s_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s_lokasi`
--
ALTER TABLE `s_lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_file`
--
ALTER TABLE `temp_file`
  ADD PRIMARY KEY (`id_file`);

--
-- Indexes for table `temp_finger`
--
ALTER TABLE `temp_finger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_pil`
--
ALTER TABLE `temp_pil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_soal`
--
ALTER TABLE `temp_soal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tmpbayar`
--
ALTER TABLE `tmpbayar`
  ADD KEY `nokartu` (`nokartu`);

--
-- Indexes for table `tmpbuku`
--
ALTER TABLE `tmpbuku`
  ADD KEY `nokartu` (`kode`);

--
-- Indexes for table `tmpface`
--
ALTER TABLE `tmpface`
  ADD KEY `nokartu` (`nokartu`);

--
-- Indexes for table `tmpreg`
--
ALTER TABLE `tmpreg`
  ADD KEY `nokartu` (`nokartu`);

--
-- Indexes for table `tmpsis`
--
ALTER TABLE `tmpsis`
  ADD KEY `nokartu` (`nokartu`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id_token`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`idt`);

--
-- Indexes for table `tp`
--
ALTER TABLE `tp`
  ADD PRIMARY KEY (`id_tp`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi_kantin`
--
ALTER TABLE `transaksi_kantin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trx_bayar`
--
ALTER TABLE `trx_bayar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tts_files`
--
ALTER TABLE `tts_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`id_tugas`);

--
-- Indexes for table `tujuan`
--
ALTER TABLE `tujuan`
  ADD PRIMARY KEY (`idt`);

--
-- Indexes for table `ujian`
--
ALTER TABLE `ujian`
  ADD PRIMARY KEY (`id_ujian`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `waktu`
--
ALTER TABLE `waktu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `walas`
--
ALTER TABLE `walas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kelas` (`kelas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `absensi_daring`
--
ALTER TABLE `absensi_daring`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `absensi_les`
--
ALTER TABLE `absensi_les`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `absensi_mapel`
--
ALTER TABLE `absensi_mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `absen_daringmapel`
--
ALTER TABLE `absen_daringmapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `absen_gps`
--
ALTER TABLE `absen_gps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `absen_jjm`
--
ALTER TABLE `absen_jjm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `absen_mapel`
--
ALTER TABLE `absen_mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `absen_pesan`
--
ALTER TABLE `absen_pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `absen_tu`
--
ALTER TABLE `absen_tu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `arsip`
--
ALTER TABLE `arsip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `aset`
--
ALTER TABLE `aset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `atp`
--
ALTER TABLE `atp`
  MODIFY `id_atp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `banksoal`
--
ALTER TABLE `banksoal`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bell`
--
ALTER TABLE `bell`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bell_nada`
--
ALTER TABLE `bell_nada`
  MODIFY `idb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bk_kategori`
--
ALTER TABLE `bk_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `bk_pelanggaran`
--
ALTER TABLE `bk_pelanggaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `bk_pesan`
--
ALTER TABLE `bk_pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bk_siswa`
--
ALTER TABLE `bk_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bk_sp`
--
ALTER TABLE `bk_sp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bk_sub`
--
ALTER TABLE `bk_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `bk_surat`
--
ALTER TABLE `bk_surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bk_tindakan`
--
ALTER TABLE `bk_tindakan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bulan`
--
ALTER TABLE `bulan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cetak`
--
ALTER TABLE `cetak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cp`
--
ALTER TABLE `cp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cp_elemen`
--
ALTER TABLE `cp_elemen`
  MODIFY `id_elemen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `datareg`
--
ALTER TABLE `datareg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_luar`
--
ALTER TABLE `data_luar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `deskripsi`
--
ALTER TABLE `deskripsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `digital`
--
ALTER TABLE `digital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `digital_baca`
--
ALTER TABLE `digital_baca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `disfo`
--
ALTER TABLE `disfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `file_pendukung`
--
ALTER TABLE `file_pendukung`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gaji`
--
ALTER TABLE `gaji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gtt`
--
ALTER TABLE `gtt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `jadwal_mengajar`
--
ALTER TABLE `jadwal_mengajar`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jadwal_piket`
--
ALTER TABLE `jadwal_piket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jadwal_refleksi`
--
ALTER TABLE `jadwal_refleksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jadwal_tu`
--
ALTER TABLE `jadwal_tu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jawaban_dup`
--
ALTER TABLE `jawaban_dup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jawaban_refleksi`
--
ALTER TABLE `jawaban_refleksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jawaban_tugas`
--
ALTER TABLE `jawaban_tugas`
  MODIFY `id_jawaban` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kode`
--
ALTER TABLE `kode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `kode_jenis`
--
ALTER TABLE `kode_jenis`
  MODIFY `kd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `konten`
--
ALTER TABLE `konten`
  MODIFY `id_konten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kurikulum`
--
ALTER TABLE `kurikulum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lampu`
--
ALTER TABLE `lampu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lingkup`
--
ALTER TABLE `lingkup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mapel_ijazah`
--
ALTER TABLE `mapel_ijazah`
  MODIFY `idmapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mapel_rapor`
--
ALTER TABLE `mapel_rapor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `idm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mesin_absen`
--
ALTER TABLE `mesin_absen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `model`
--
ALTER TABLE `model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `m_bayar`
--
ALTER TABLE `m_bayar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `m_buku`
--
ALTER TABLE `m_buku`
  MODIFY `idm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `m_dimensi`
--
ALTER TABLE `m_dimensi`
  MODIFY `id_dimensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `m_elemen`
--
ALTER TABLE `m_elemen`
  MODIFY `id_elemen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `m_eskul`
--
ALTER TABLE `m_eskul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `m_hari`
--
ALTER TABLE `m_hari`
  MODIFY `idh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `m_kurikulum`
--
ALTER TABLE `m_kurikulum`
  MODIFY `idk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `m_lemari`
--
ALTER TABLE `m_lemari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `m_pesan`
--
ALTER TABLE `m_pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `m_proyek`
--
ALTER TABLE `m_proyek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `m_rapor`
--
ALTER TABLE `m_rapor`
  MODIFY `idr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `m_sk`
--
ALTER TABLE `m_sk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `m_spiritual`
--
ALTER TABLE `m_spiritual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `m_sub_elemen`
--
ALTER TABLE `m_sub_elemen`
  MODIFY `id_sub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `m_tugas`
--
ALTER TABLE `m_tugas`
  MODIFY `idt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nilai_formatif`
--
ALTER TABLE `nilai_formatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nilai_harian`
--
ALTER TABLE `nilai_harian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT for table `nilai_k13`
--
ALTER TABLE `nilai_k13`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nilai_proses`
--
ALTER TABLE `nilai_proses`
  MODIFY `idpros` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nilai_proyek`
--
ALTER TABLE `nilai_proyek`
  MODIFY `idn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `nilai_rapor`
--
ALTER TABLE `nilai_rapor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nilai_refleksi`
--
ALTER TABLE `nilai_refleksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nilai_sikap`
--
ALTER TABLE `nilai_sikap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nilai_skl`
--
ALTER TABLE `nilai_skl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `nilai_sumatif`
--
ALTER TABLE `nilai_sumatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `pdb`
--
ALTER TABLE `pdb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id_aplikasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengawas`
--
ALTER TABLE `pengawas`
  MODIFY `id_pengawas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pesan_terkirim`
--
ALTER TABLE `pesan_terkirim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `peskul`
--
ALTER TABLE `peskul`
  MODIFY `idp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pkl_dudi`
--
ALTER TABLE `pkl_dudi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pkl_evaluasi`
--
ALTER TABLE `pkl_evaluasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pkl_jurnal`
--
ALTER TABLE `pkl_jurnal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pkl_kegiatan`
--
ALTER TABLE `pkl_kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pkl_kompetensi`
--
ALTER TABLE `pkl_kompetensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pkl_mnilai`
--
ALTER TABLE `pkl_mnilai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pkl_monitor`
--
ALTER TABLE `pkl_monitor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pkl_nilai`
--
ALTER TABLE `pkl_nilai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pkl_panitia`
--
ALTER TABLE `pkl_panitia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pkl_pembimbing`
--
ALTER TABLE `pkl_pembimbing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pkl_reg`
--
ALTER TABLE `pkl_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pkl_siswa`
--
ALTER TABLE `pkl_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `produk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profil_smk`
--
ALTER TABLE `profil_smk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proyek`
--
ALTER TABLE `proyek`
  MODIFY `idp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `refleksi`
--
ALTER TABLE `refleksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rpp`
--
ALTER TABLE `rpp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saldo`
--
ALTER TABLE `saldo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sapras_ruang`
--
ALTER TABLE `sapras_ruang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `savsoft_options`
--
ALTER TABLE `savsoft_options`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `savsoft_qbank`
--
ALTER TABLE `savsoft_qbank`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sinkron`
--
ALTER TABLE `sinkron`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `skkb`
--
ALTER TABLE `skkb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sk_membaca`
--
ALTER TABLE `sk_membaca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sk_memutuskan`
--
ALTER TABLE `sk_memutuskan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sk_mengingat`
--
ALTER TABLE `sk_mengingat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sk_menimbang`
--
ALTER TABLE `sk_menimbang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sk_peg`
--
ALTER TABLE `sk_peg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sosial`
--
ALTER TABLE `sosial`
  MODIFY `ids` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spiritual`
--
ALTER TABLE `spiritual`
  MODIFY `ids` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `statustrx`
--
ALTER TABLE `statustrx`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `surat`
--
ALTER TABLE `surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `surat_tugas`
--
ALTER TABLE `surat_tugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `s_barang`
--
ALTER TABLE `s_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `s_kategori`
--
ALTER TABLE `s_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `s_lokasi`
--
ALTER TABLE `s_lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_file`
--
ALTER TABLE `temp_file`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_finger`
--
ALTER TABLE `temp_finger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_pil`
--
ALTER TABLE `temp_pil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_soal`
--
ALTER TABLE `temp_soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `id_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `idt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tp`
--
ALTER TABLE `tp`
  MODIFY `id_tp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi_kantin`
--
ALTER TABLE `transaksi_kantin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `trx_bayar`
--
ALTER TABLE `trx_bayar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tts_files`
--
ALTER TABLE `tts_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tugas`
--
ALTER TABLE `tugas`
  MODIFY `id_tugas` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tujuan`
--
ALTER TABLE `tujuan`
  MODIFY `idt` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ujian`
--
ALTER TABLE `ujian`
  MODIFY `id_ujian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `waktu`
--
ALTER TABLE `waktu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `walas`
--
ALTER TABLE `walas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
