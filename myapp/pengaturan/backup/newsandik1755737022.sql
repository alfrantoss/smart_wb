

CREATE TABLE `absen_daringmapel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idmateri` int(11) DEFAULT NULL,
  `mapel` varchar(50) DEFAULT NULL,
  `idsiswa` int(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `tanggal` date NOT NULL,
  `jam` varchar(50) DEFAULT NULL,
  `bulan` varchar(5) DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `guru` int(11) DEFAULT NULL,
  `tahun` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

INSERT INTO absen_daringmapel VALUES("4","3","BINDO","2","X-1","2025-05-15","12:55:59","05","H","1","2025");
INSERT INTO absen_daringmapel VALUES("5","3","BINDO","14","X-1","2025-05-15","15:48:58","05","H","1","2025");
INSERT INTO absen_daringmapel VALUES("6","3","BINDO","23","X-1","2025-05-16","03:33:44","05","H","1","2025");
INSERT INTO absen_daringmapel VALUES("7","3","BINDO","2","X-1","2025-05-16","17:23:11","05","H","1","2025");
INSERT INTO absen_daringmapel VALUES("8","3","BINDO","25","X-1","2025-05-16","19:27:19","05","H","1","2025");
INSERT INTO absen_daringmapel VALUES("9","3","BINDO","11","X-1","2025-05-16","20:36:36","05","H","1","2025");
INSERT INTO absen_daringmapel VALUES("10","3","BINDO","5","X-1","2025-05-19","16:08:45","05","H","1","2025");
INSERT INTO absen_daringmapel VALUES("11","5","INFO","101","XII-2","2025-05-20","09:47:16","05","H","7","2025");
INSERT INTO absen_daringmapel VALUES("12","3","BINDO","18","X-2","2025-05-20","11:49:06","05","H","1","2025");
INSERT INTO absen_daringmapel VALUES("13","3","BINDO","0","","2025-05-21","07:31:31","05","H","1","2025");
INSERT INTO absen_daringmapel VALUES("14","3","BINDO","19","X-2","2025-05-21","13:27:23","05","H","1","2025");
INSERT INTO absen_daringmapel VALUES("15","3","BINDO","18","X-2","2025-05-22","07:21:14","05","H","1","2025");
INSERT INTO absen_daringmapel VALUES("16","3","BINDO","18","X-2","2025-05-23","18:43:19","05","H","1","2025");
INSERT INTO absen_daringmapel VALUES("17","6","MTK","2","X-2","2025-05-26","09:17:27","05","H","1","2025");
INSERT INTO absen_daringmapel VALUES("18","4","INFO","102","X-2","2025-05-26","16:00:16","05","H","2","2025");
INSERT INTO absen_daringmapel VALUES("19","3","BINDO","2","X-2","2025-05-27","11:27:09","05","H","1","2025");
INSERT INTO absen_daringmapel VALUES("20","6","MTK","2","X-2","2025-05-28","08:46:30","05","H","1","2025");
INSERT INTO absen_daringmapel VALUES("21","4","INFO","2","X-2","2025-05-28","08:53:13","05","H","2","2025");
INSERT INTO absen_daringmapel VALUES("22","6","MTK","6","X-2","2025-05-29","19:47:31","05","H","1","2025");
INSERT INTO absen_daringmapel VALUES("23","6","MTK","23","X-2","2025-05-30","13:10:11","05","H","1","2025");
INSERT INTO absen_daringmapel VALUES("24","6","MTK","20","X-2","2025-05-30","13:31:51","05","H","1","2025");
INSERT INTO absen_daringmapel VALUES("25","6","MTK","27","X-2","2025-05-31","05:31:28","05","H","1","2025");



CREATE TABLE `absen_gps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `ket` varchar(11) DEFAULT NULL,
  `jenis` varchar(50) DEFAULT NULL,
  `masuk` varchar(50) DEFAULT NULL,
  `lokasi` text DEFAULT NULL,
  `bulan` varchar(11) DEFAULT NULL,
  `tahun` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `absen_jjm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `masuk` varchar(50) DEFAULT NULL,
  `ket` varchar(11) DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `jjm` varchar(11) DEFAULT NULL,
  `bulan` varchar(50) DEFAULT NULL,
  `tahun` varchar(50) DEFAULT NULL,
  `jadwal` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `absen_mapel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `ket` varchar(11) DEFAULT NULL,
  `jam` varchar(50) DEFAULT NULL,
  `bulan` varchar(50) DEFAULT NULL,
  `tahun` varchar(50) DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `absen_pesan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `absen_tu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `masuk` varchar(50) DEFAULT NULL,
  `pulang` varchar(50) DEFAULT NULL,
  `ket` varchar(11) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `bulan` varchar(50) DEFAULT NULL,
  `tahun` varchar(50) DEFAULT NULL,
  `honor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `absensi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `link` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `absensi_daring` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `ket` varchar(11) DEFAULT NULL,
  `jam` varchar(50) DEFAULT NULL,
  `bulan` varchar(50) DEFAULT NULL,
  `tahun` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `absensi_les` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `link` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `absensi_mapel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `idsiswa` int(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `ket` varchar(5) DEFAULT NULL,
  `bulan` varchar(50) DEFAULT NULL,
  `tahun` varchar(50) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;




CREATE TABLE `agenda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `guru` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO agenda VALUES("1","Mon","2025-06-16","X-A","3","Teks Anekdot","Mengidentifikasi Pengertian Teks Anekdot","06","2025","0","","","3");
INSERT INTO agenda VALUES("2","Mon","2025-06-16","X-A","4","Bilangan Bulat","Peserta Didik Mengidentifikasi Bilangan Bulat","06","2025","0","Tidak Ada","Bagus","10");



CREATE TABLE `alumni` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
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
  `ket` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `arsip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idlemari` varchar(11) DEFAULT NULL,
  `nama_arsip` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `file` text DEFAULT NULL,
  `nomor` varchar(50) DEFAULT NULL,
  `inputer` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO arsip VALUES("1","2","SS","2025-03-04","Screen Shot 2025-02-26 at 08.21.50.png","0001 / III / 2025","2");
INSERT INTO arsip VALUES("2","2","tes","2025-03-04","Screenshot 2025-01-23 at 11.15.11.png","0002 / III / 2025","7");
INSERT INTO arsip VALUES("3","2","data sakit","2025-05-20","anggur.png","0001 / V / 2025","5");
INSERT INTO arsip VALUES("4","2","Buku Presensi","2025-05-26","duarr.jpg","0001 / V / 2025","2");
INSERT INTO arsip VALUES("5","2","KArtu UJian","2025-06-04","Kartu_UMPTKIN_Dalilatul Amalia.pdf","0001 / VI / 2025","6");



CREATE TABLE `aset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `berat` varchar(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `atp` (
  `id_atp` int(11) NOT NULL AUTO_INCREMENT,
  `idcp` varchar(11) DEFAULT NULL,
  `idel` varchar(11) DEFAULT NULL,
  `waktu` varchar(11) DEFAULT NULL,
  `p5` text DEFAULT NULL,
  `ke` varchar(11) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id_atp`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO atp VALUES("1","1","1","4","Beriman, bertakwa kepada Tuhan Yang Maha Esa, dan berakhlak mulia","1","3");
INSERT INTO atp VALUES("2","1","2","3","Berkebinekaan global","2","3");
INSERT INTO atp VALUES("3","2","3","4","Bergotong royong","1","2");



CREATE TABLE `banksoal` (
  `id_bank` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) DEFAULT NULL,
  `idguru` varchar(11) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `pk` mediumtext DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `soal_agama` varchar(50) DEFAULT NULL,
  `model` int(11) DEFAULT 1,
  `groupsoal` varchar(50) DEFAULT 'AKM',
  `paket` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_bank`),
  UNIQUE KEY `kode` (`kode`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO banksoal VALUES("1","BINDO-A","3","BINDO","10","UMUM","1","","1","AKM","A");
INSERT INTO banksoal VALUES("2","MTK-A","2","MTK","10","UMUM","1","","1","AKM","B");
INSERT INTO banksoal VALUES("3","IPA-B1","10","IPA","10","UMUM","1","","1","AKM","C");



CREATE TABLE `bell` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hari` varchar(50) DEFAULT NULL,
  `nada` varchar(11) DEFAULT NULL,
  `jam` varchar(50) DEFAULT NULL,
  `ket` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO bell VALUES("1","Mon","5","07:00:49","PERSIAPAN UACARA");
INSERT INTO bell VALUES("2","Sat","1","15:24:00","tes");
INSERT INTO bell VALUES("3","Mon","2","08:30:00","Jam Ke 2");
INSERT INTO bell VALUES("4","Tue","13","21:44:00","ok");
INSERT INTO bell VALUES("5","Mon","3","07:00:00","tes");
INSERT INTO bell VALUES("6","Thu","1","11:25:00","l");



CREATE TABLE `bell_nada` (
  `idb` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idb`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

INSERT INTO bell_nada VALUES("1","JAM PERTAMA");
INSERT INTO bell_nada VALUES("2","JAM KEDUA");
INSERT INTO bell_nada VALUES("3","JAM KETIGA");
INSERT INTO bell_nada VALUES("4","JAM KEEMPAT");
INSERT INTO bell_nada VALUES("5","JAM KELIMA");
INSERT INTO bell_nada VALUES("6","JAM KEENAM");
INSERT INTO bell_nada VALUES("7","JAM KETUJUH");
INSERT INTO bell_nada VALUES("8","JAM KEDELAPAN");
INSERT INTO bell_nada VALUES("9","JAM KESEMBILAN");
INSERT INTO bell_nada VALUES("10","JAM KESEPULUH");
INSERT INTO bell_nada VALUES("11","JAM KESEBELAS");
INSERT INTO bell_nada VALUES("12","JAM KEDUABELAS");
INSERT INTO bell_nada VALUES("13","MAPEL HARI INI SELESAI");
INSERT INTO bell_nada VALUES("14","MAPEL AKHIR PEKAN SELESAI");
INSERT INTO bell_nada VALUES("15","ISTIRAHAT PERTAMA");
INSERT INTO bell_nada VALUES("16","WAKTU ISTIRAHAT PERTAMA SELESAI");
INSERT INTO bell_nada VALUES("17","ISTIRAHAT KEDUA");
INSERT INTO bell_nada VALUES("18","WAKTU ISTIRAHAT KEDUA SELESAI");
INSERT INTO bell_nada VALUES("19","WAKTU IBADAH SHOLAT");
INSERT INTO bell_nada VALUES("20","UPACARA BENDERA 5 MENIT LAGI");
INSERT INTO bell_nada VALUES("21","UPACARA BENDERA DIMUALAI");
INSERT INTO bell_nada VALUES("22","WAKTU IBADAH SHOLAT JUMAT");
INSERT INTO bell_nada VALUES("23","SELURUH PESERTA & PENGAWAS UJIAN MEMASUKI RUANGAN");
INSERT INTO bell_nada VALUES("24","PESERTA UJIAN DIPERSILAHKAN MENGERJAKAN UJIAN");
INSERT INTO bell_nada VALUES("25","WAKTU UJIAN 5 MENIT LAGI");
INSERT INTO bell_nada VALUES("26","WAKTU UJIAN TELAH HABIS");



CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL AUTO_INCREMENT,
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
  `tgl_ujian` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_berita`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO berita VALUES("1","1","1","X-A","PAT","67","32","a:2:{i:0;s:10:"US-SMAN-01";i:1;s:10:"US-SMAN-04";}","01:00","02:00","aa","2","aa","2","0","2025-08-12");



CREATE TABLE `bk_kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO bk_kategori VALUES("1","Kelakuan");
INSERT INTO bk_kategori VALUES("2","Kerapihan");
INSERT INTO bk_kategori VALUES("3","Kerajinan");



CREATE TABLE `bk_pelanggaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idkat` int(11) NOT NULL,
  `idsub` int(11) DEFAULT NULL,
  `pelanggaran` mediumtext DEFAULT NULL,
  `poin` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

INSERT INTO bk_pelanggaran VALUES("1","1","1","Terlambat hadir di sekolah 
","2");
INSERT INTO bk_pelanggaran VALUES("2","1","1","Tidak membawa buku paket/pelajaran","5");
INSERT INTO bk_pelanggaran VALUES("3","1","1","TIdak mengerjakan tugas sesuai dengan batas waktu yang ditentukan
","5");
INSERT INTO bk_pelanggaran VALUES("4","1","1","Mencontek/ menconteki","10");
INSERT INTO bk_pelanggaran VALUES("5","1","1","Keluar kelas tanpa ijin guru/kabur","10");
INSERT INTO bk_pelanggaran VALUES("6","1","1","Makan/ minum/ tidur saat PBM tanpa ijin guru/
","10");
INSERT INTO bk_pelanggaran VALUES("7","1","1","Membuat gaduh di kelas
","5");
INSERT INTO bk_pelanggaran VALUES("8","1","1","Tidak mengikuti ekstrakurikuler wajib di sekolah
","10");
INSERT INTO bk_pelanggaran VALUES("9","1","1","Tidak mengikuti upacara bendera
","10");
INSERT INTO bk_pelanggaran VALUES("12","2","3","Tidak menggunakan seragam sekolah sesuai aturan","5");
INSERT INTO bk_pelanggaran VALUES("13","2","3","Baju tidak dimasukan","5");
INSERT INTO bk_pelanggaran VALUES("14","1","6","Menggunakan Narkoba
","100");
INSERT INTO bk_pelanggaran VALUES("22","1","5","Merokok di area lingkungan sekolah","50");
INSERT INTO bk_pelanggaran VALUES("23","2","2","Rambut di cat","5");



CREATE TABLE `bk_pesan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nis` int(11) DEFAULT NULL,
  `pesan` text DEFAULT NULL,
  `waktu` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO bk_pesan VALUES("1","20221001","Assalamualaikum wr.wb

Kami Informasikan kepada Orang Tua dari

*ABIWANTA RIZKY WIDYA AGUNG*

bahwa hari ini ananda *ABIWANTA RIZKY WIDYA AGUNG*
telah melakukan pelanggaran sekolah berupa *Makan/ minum/ tidur saat PBM tanpa ijin guru/
*

Demikian Informasi yang Kami Sampaikan, Harap menjadi perhatian Bapak/Ibu selaku Orang Tua Siswa

Wasallamualaikum wr.wb.

Pesan ini otomatis disampaikan oleh Server SMA NUSANTARA","");
INSERT INTO bk_pesan VALUES("2","20221002","Assalamualaikum wr.wb

Kami Informasikan kepada Orang Tua dari

*AISYAH TRI CAHYA*

bahwa hari ini ananda *AISYAH TRI CAHYA*
telah melakukan pelanggaran sekolah berupa *Rambut di cat*

Demikian Informasi yang Kami Sampaikan, Harap menjadi perhatian Bapak/Ibu selaku Orang Tua Siswa

Wasallamualaikum wr.wb.

Pesan ini otomatis disampaikan oleh Server SMA NUSANTARA","");
INSERT INTO bk_pesan VALUES("3","20221002","Assalamualaikum wr.wb

Kami Informasikan kepada Orang Tua dari

*AISYAH TRI CAHYA*

bahwa hari ini ananda *AISYAH TRI CAHYA*
telah melakukan pelanggaran sekolah berupa *Merokok di area lingkungan sekolah*

Demikian Informasi yang Kami Sampaikan, Harap menjadi perhatian Bapak/Ibu selaku Orang Tua Siswa

Wasallamualaikum wr.wb.

Pesan ini otomatis disampaikan oleh Server SMA NUSANTARA","");
INSERT INTO bk_pesan VALUES("4","20221002","Assalamualaikum wr.wb

Kami Informasikan kepada Orang Tua dari

*AISYAH TRI CAHYA*

bahwa hari ini ananda *AISYAH TRI CAHYA*
telah melakukan pelanggaran sekolah berupa *Menggunakan Narkoba
*

Demikian Informasi yang Kami Sampaikan, Harap menjadi perhatian Bapak/Ibu selaku Orang Tua Siswa

Wasallamualaikum wr.wb.

Pesan ini otomatis disampaikan oleh Server SMA NUSANTARA","");
INSERT INTO bk_pesan VALUES("5","20221002","Assalamualaikum wr.wb

Kami Informasikan kepada Orang Tua dari

*AISYAH TRI CAHYA*

bahwa hari ini ananda *AISYAH TRI CAHYA*
telah melakukan pelanggaran sekolah berupa *Merokok di area lingkungan sekolah*

Demikian Informasi yang Kami Sampaikan, Harap menjadi perhatian Bapak/Ibu selaku Orang Tua Siswa

Wasallamualaikum wr.wb.

Pesan ini otomatis disampaikan oleh Server SMA NUSANTARA","");



CREATE TABLE `bk_siswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `sts` varchar(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO bk_siswa VALUES("1","20221001","X-A","2025-06-16","1","1","6","","2024/2025","-","10","0");
INSERT INTO bk_siswa VALUES("2","20221002","X-A","2025-06-09","2","2","23","","2024/2025","-","5","0");
INSERT INTO bk_siswa VALUES("3","20221002","X-A","2025-06-01","1","5","22","","2024/2025","-","50","0");
INSERT INTO bk_siswa VALUES("4","20221002","X-A","2025-06-12","1","6","14","","2024/2025","-","100","0");
INSERT INTO bk_siswa VALUES("5","20221002","X-A","2025-06-14","1","5","22","","2024/2025","-","50","0");



CREATE TABLE `bk_sp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nis` varchar(50) DEFAULT NULL,
  `poin` int(11) DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `tapel` varchar(50) DEFAULT NULL,
  `sts` varchar(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO bk_sp VALUES("1","20221002","55","SP2","2024/2025","0");



CREATE TABLE `bk_sub` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_kat` int(11) NOT NULL,
  `sub_kategori` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

INSERT INTO bk_sub VALUES("1","1","Kegiatan Belajar Mengajar");
INSERT INTO bk_sub VALUES("2","2","Rambut");
INSERT INTO bk_sub VALUES("3","2","Pakaian");
INSERT INTO bk_sub VALUES("4","3","Kehadiran");
INSERT INTO bk_sub VALUES("5","1","Merokok");
INSERT INTO bk_sub VALUES("6","1","Minuman keras");
INSERT INTO bk_sub VALUES("7","1","Pornogafi");
INSERT INTO bk_sub VALUES("8","1","Mencuri");
INSERT INTO bk_sub VALUES("9","1","Memeras");
INSERT INTO bk_sub VALUES("10","1","Penghinaan");



CREATE TABLE `bk_surat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nosurat` varchar(50) DEFAULT NULL,
  `nis` varchar(50) DEFAULT NULL,
  `tanggal` date NOT NULL,
  `sanksi` text NOT NULL,
  `tapel` varchar(50) DEFAULT NULL,
  `sts` varchar(11) DEFAULT '0',
  `idsp` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `bk_tindakan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tindakan` varchar(50) DEFAULT NULL,
  `ketentuan` mediumtext DEFAULT NULL,
  `minpoin` int(11) DEFAULT NULL,
  `maxpoin` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tindakan` (`tindakan`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO bk_tindakan VALUES("2","SP1","Orang Tua akan dikirim Surat Peringatan ke 1 (SP1) atas tindakan pelanggaan oleh peserta didik mmmmm","35","45");
INSERT INTO bk_tindakan VALUES("3","SP2","Orang Tua akan dikirim Surat Peringatan ke 2 (SP2) atas tindakan pelanggaan oleh peserta didik","46","74");
INSERT INTO bk_tindakan VALUES("4","SP3","Orang Tua akan dikirim Surat Peringatan ke 13(SP3) atas tindakan pelanggaan oleh peserta didik","75","100");



CREATE TABLE `buku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idkategori` int(11) DEFAULT NULL,
  `judul` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `penerbit` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `pengarang` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `barkode` text CHARACTER SET latin1 DEFAULT NULL,
  `ket` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `bulan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bln` varchar(5) NOT NULL,
  `ket` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

INSERT INTO bulan VALUES("1","01","Januari");
INSERT INTO bulan VALUES("2","02","Februari");
INSERT INTO bulan VALUES("3","03","Maret");
INSERT INTO bulan VALUES("4","04","April");
INSERT INTO bulan VALUES("5","05","Mei");
INSERT INTO bulan VALUES("6","06","Juni");
INSERT INTO bulan VALUES("7","07","Juli");
INSERT INTO bulan VALUES("8","08","Agustus");
INSERT INTO bulan VALUES("9","09","September");
INSERT INTO bulan VALUES("10","10","Oktober");
INSERT INTO bulan VALUES("11","11","Nopember");
INSERT INTO bulan VALUES("12","12","Desember");



CREATE TABLE `cetak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `header` varchar(100) DEFAULT NULL,
  `pakai` int(11) NOT NULL DEFAULT 0,
  `lebar` varchar(50) DEFAULT NULL,
  `tinggi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO cetak VALUES("1","","1","","");



CREATE TABLE `cp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tingkat` varchar(11) DEFAULT NULL,
  `fase` varchar(11) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `capaian` text DEFAULT NULL,
  `smt` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO cp VALUES("1","10","E","3","3","Peserta didik mampu mengevaluasi dan mengkreasi informasi berupa gagasan, pikiran, perasaan, pandangan, arahan, atau pesan yang akurat dari menyimak berbagai tipe teks dalam bentuk monolog, dialog","1");
INSERT INTO cp VALUES("2","10","E","2","5","Peserta didik mampu menerapkan pemahaman IPA untuk mengatasi permasalahan yang berkaitan dengan perubahan iklim. Mereka mengamati fenomena ilmiah dan mencatat hasil pengamatannya, memperhatikan ","1");



CREATE TABLE `cp_elemen` (
  `id_elemen` int(11) NOT NULL AUTO_INCREMENT,
  `idcp` varchar(11) DEFAULT NULL,
  `elemen` text DEFAULT NULL,
  `capaian` text DEFAULT NULL,
  `tingkat` varchar(11) DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  `smt` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id_elemen`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO cp_elemen VALUES("1","1","Berbicara dan Mempresentasikan","Peserta didik mampu mengolah dan menyajikan gagasan, pikiran,
pandangan, arahan, atau pesan untuk tujuan pengajuan usul,
perumusan masalah, dan solusi dalam bentuk monolog, dialog, dan
gelar wicara","10","3","3","1");
INSERT INTO cp_elemen VALUES("2","1","Menulis","Peserta didik mampu menulis gagasan, pikiran, pandangan,
arahan, atau pesan tertulis untuk berbagai tujuan secara
logis, kritis, dan kreatif dalam bentuk teks informasional dan/
atau fiksi.","10","3","3","1");
INSERT INTO cp_elemen VALUES("3","2","Menjelaskan fenomena secara ilmiah ","Peserta didik diharapkan tidak hanya memahami teori, tetapi juga mampu mengaplikasikannya dalam kehidupan sehari-hari untuk memecahkan masalah terkait perubahan iklim. ","10","5","2","1");



CREATE TABLE `data_luar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idpeg` varchar(11) DEFAULT NULL,
  `jenis` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

INSERT INTO data_luar VALUES("1","4","1");
INSERT INTO data_luar VALUES("10","6","1");
INSERT INTO data_luar VALUES("11","3","1");
INSERT INTO data_luar VALUES("12","3","1");
INSERT INTO data_luar VALUES("13","4","1");



CREATE TABLE `datareg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nokartu` varchar(50) DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `idjari` varchar(11) DEFAULT NULL,
  `serial` varchar(50) DEFAULT NULL,
  `sts` varchar(11) DEFAULT NULL,
  `folder` varchar(255) DEFAULT NULL,
  `nada` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `deskripsi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mapel` varchar(100) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `smt` int(11) DEFAULT NULL,
  `ki` varchar(11) DEFAULT NULL,
  `kd` varchar(20) DEFAULT NULL,
  `guru` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `digital` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(50) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` varchar(50) DEFAULT NULL,
  `guru` varchar(50) DEFAULT NULL,
  `ikon` varchar(50) DEFAULT NULL,
  `file` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO digital VALUES("1","Bahasa Indonesia BS Kelas X","Buku Siswa Mata Pelajaran Bahasa Indonesia untuk kelas X","2025-06-04","09:01:33","Admin","Bahasa_Indonesia_BS_KLS_X_Rev_Cover.png","Bahasa_Indonesia_BS_KLS_X_Rev.pdf");
INSERT INTO digital VALUES("2"," Bahasa Inggris: Work in Progress untuk SMA/SMK/MA","Penerbit Pusat Perbukuan
ISBN 978-602-244-897-6
Edisi
1
Penulis
Budi Hermawan, Dwi Haryanti, Nining Suryaningsih","2025-06-04","09:03:44","Admin","Bahasa-Inggris-BS-KLS-X-cover.png","Bahasa-Inggris-BS-KLS-X.pdf");
INSERT INTO digital VALUES("3","Pendidikan Pancasila untuk Kelas XI","Penerbit
Pusat Perbukuan
ISBN
978-623-194-623-2
Edisi
1
Penulis
Sri Cahyati, Siti Nurjanah, Ali Usman","2025-06-16","07:51:20","Admin","Pendidikan-Pancasila-BS-KLS-XI-Cover.png","Struktur dan Kebahasaan Teks Anekdot.pdf");
INSERT INTO digital VALUES("4","Biologi SMA Kelas XII","Penerbit
Belum ada
ISBN
978-602-427-958-5
Edisi
1
Penulis
Shilviani Dewi, Amalia Shari, Rani Elisa Purba, Remigius Gunawan Susilowarno","2025-06-16","07:54:24","Admin","Biologi_BS_KLS_XII_Cover.png","Struktur dan Kebahasaan Teks Anekdot.pdf");
INSERT INTO digital VALUES("5","Matematika untuk SMA/SMK Kelas X","Penerbit
Pusat Kurikulum dan Perbukuan
ISBN
978-602-244-526-5
Edisi
1
Penulis
Dicky Susanto, Theja Kurniawan, Savitri K. Sihombing, Eunice Salim, Marianna Magdalena Radjawane, Ummy Salmah, Ambarsari Kusuma Wardani","2025-06-16","07:55:14","Admin","Matematika-BS-KLS-X-Cover.png","Struktur dan Kebahasaan Teks Anekdot.pdf");
INSERT INTO digital VALUES("6","Informatika untuk SMK/MAK Kelas X Semester 1","Penerbit
Pusat Kurikulum dan Perbukuan
ISBN
978-623-194-071-1
Edisi
1
Penulis
Kusmadi, Imam Badrudin, Bima Laksana Putra, Wiyana Eva Cuntaka","2025-06-16","07:56:03","Admin","Informatika-KLS-X-Sem-1-Cover.png","Struktur dan Kebahasaan Teks Anekdot.pdf");



CREATE TABLE `digital_baca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsiswa` varchar(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` varchar(50) DEFAULT NULL,
  `idbuku` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

INSERT INTO digital_baca VALUES("1","1","2025-04-24","","1");
INSERT INTO digital_baca VALUES("2","1","2025-04-24","","1");
INSERT INTO digital_baca VALUES("3","1","2025-04-24","","1");
INSERT INTO digital_baca VALUES("4","1","2025-04-24","21:51:33","1");
INSERT INTO digital_baca VALUES("5","1","2025-04-24","21:51:38","1");
INSERT INTO digital_baca VALUES("6","1","2025-04-24","22:05:10","1");
INSERT INTO digital_baca VALUES("7","1","2025-06-04","09:29:38","1");
INSERT INTO digital_baca VALUES("8","1","2025-06-04","09:39:56","1");
INSERT INTO digital_baca VALUES("9","5","2025-06-04","15:41:57","1");
INSERT INTO digital_baca VALUES("10","8","2025-06-04","18:28:00","2");
INSERT INTO digital_baca VALUES("11","19","2025-06-05","09:05:35","2");
INSERT INTO digital_baca VALUES("12","19","2025-06-05","15:21:52","2");
INSERT INTO digital_baca VALUES("13","100","2025-06-07","07:45:54","1");
INSERT INTO digital_baca VALUES("14","7","2025-06-08","17:28:29","1");
INSERT INTO digital_baca VALUES("15","7","2025-06-08","17:30:25","1");
INSERT INTO digital_baca VALUES("16","7","2025-06-08","17:30:28","1");
INSERT INTO digital_baca VALUES("17","7","2025-06-08","17:31:51","1");
INSERT INTO digital_baca VALUES("18","7","2025-06-08","17:32:47","2");
INSERT INTO digital_baca VALUES("19","25","2025-06-08","17:34:25","1");
INSERT INTO digital_baca VALUES("20","14","2025-06-09","00:21:09","1");
INSERT INTO digital_baca VALUES("21","18","2025-06-10","15:25:19","1");
INSERT INTO digital_baca VALUES("22","14","2025-06-10","23:33:26","1");
INSERT INTO digital_baca VALUES("23","1","2025-06-11","06:29:15","1");
INSERT INTO digital_baca VALUES("24","100","2025-06-11","12:31:02","1");
INSERT INTO digital_baca VALUES("25","100","2025-06-11","12:31:45","1");
INSERT INTO digital_baca VALUES("26","14","2025-06-11","13:55:02","2");
INSERT INTO digital_baca VALUES("27","14","2025-06-11","13:56:49","1");
INSERT INTO digital_baca VALUES("28","18","2025-06-12","08:49:16","1");
INSERT INTO digital_baca VALUES("29","18","2025-06-12","11:45:35","1");
INSERT INTO digital_baca VALUES("30","18","2025-06-12","11:45:45","2");
INSERT INTO digital_baca VALUES("31","14","2025-06-15","21:36:41","2");
INSERT INTO digital_baca VALUES("32","1","2025-08-06","13:40:34","1");



CREATE TABLE `disfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bg` varchar(50) DEFAULT NULL,
  `file` text DEFAULT NULL,
  `teks` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO disfo VALUES("1","FOTO","file71.png","Semua Siswa harap melakukan presensi");



CREATE TABLE `download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsiswa` varchar(11) DEFAULT NULL,
  `jenis` varchar(50) DEFAULT NULL,
  `waktu` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO download VALUES("1","1","SKL","2025-02-18 10:01:36");
INSERT INTO download VALUES("2","1","SKL","2025-02-18 10:01:59");
INSERT INTO download VALUES("3","1","SKL","2025-02-18 10:03:43");
INSERT INTO download VALUES("4","1","SKL","2025-02-18 10:05:21");
INSERT INTO download VALUES("5","1","SKL","2025-02-18 10:07:49");
INSERT INTO download VALUES("6","91","SKL","2025-02-18 10:19:31");
INSERT INTO download VALUES("7","91","SKL","2025-02-21 08:29:25");



CREATE TABLE `file_pendukung` (
  `id_file` int(11) NOT NULL AUTO_INCREMENT,
  `id_bank` int(11) DEFAULT 0,
  `nama_file` varchar(50) DEFAULT NULL,
  `status_file` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_file`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO file_pendukung VALUES("1","2","4071.jpeg","");
INSERT INTO file_pendukung VALUES("2","2","2779.jpeg","");
INSERT INTO file_pendukung VALUES("3","2","8634.png","");
INSERT INTO file_pendukung VALUES("4","3","6330.jpeg","");
INSERT INTO file_pendukung VALUES("5","3","9286.jpeg","");
INSERT INTO file_pendukung VALUES("6","3","7181.png","");



CREATE TABLE `gaji` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idpeg` varchar(11) DEFAULT NULL,
  `kode` varchar(11) DEFAULT NULL,
  `tugas` varchar(50) DEFAULT NULL,
  `besar` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO gaji VALUES("1","2","1","Mengajar","20000");
INSERT INTO gaji VALUES("2","3","1","Mengajar","37000");
INSERT INTO gaji VALUES("3","3","4","Eskul","35000");
INSERT INTO gaji VALUES("4","3","1","Mengajar","1000000");
INSERT INTO gaji VALUES("5","3","1","Mengajar","2000000");



CREATE TABLE `gtt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `takhir` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `informasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `untuk` varchar(2) DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `waktu` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO informasi VALUES("1","1","WELCOME!","<p>Selamat datang di Sistem Aplikasi Pendidikan <strong>SMA Negeri 1 Nusantara!</strong></p>","2025-05-05 08:31:04");



CREATE TABLE `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `nama` varchar(50) NOT NULL,
  `total` varchar(50) DEFAULT NULL,
  `reff` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

INSERT INTO invoice VALUES("1","2025-02-19","91","","NABILA AURELIA PUTRI SUSANTO","","20250219213722");
INSERT INTO invoice VALUES("2","2025-02-19","91","","NABILA AURELIA PUTRI SUSANTO","","20250219213935");
INSERT INTO invoice VALUES("3","2025-02-19","91","","NABILA AURELIA PUTRI SUSANTO","","20250219214319");
INSERT INTO invoice VALUES("4","2025-02-19","91","","NABILA AURELIA PUTRI SUSANTO","","20250219214415");
INSERT INTO invoice VALUES("5","2025-02-19","1","","ABIWANTA RIZKY WIDYA AGUNG","","20250219215252");
INSERT INTO invoice VALUES("6","2025-02-19","1","","ABIWANTA RIZKY WIDYA AGUNG","","20250219222626");
INSERT INTO invoice VALUES("7","2025-02-19","1","","ABIWANTA RIZKY WIDYA AGUNG","","20250219222626");
INSERT INTO invoice VALUES("8","2025-02-19","91","","NABILA AURELIA PUTRI SUSANTO","","20250219222729");
INSERT INTO invoice VALUES("9","2025-02-19","91","","NABILA AURELIA PUTRI SUSANTO","","20250219222729");
INSERT INTO invoice VALUES("10","2025-02-19","1","","ABIWANTA RIZKY WIDYA AGUNG","","20250219223032");
INSERT INTO invoice VALUES("11","2025-02-19","1","","ABIWANTA RIZKY WIDYA AGUNG","","20250219223032");
INSERT INTO invoice VALUES("12","2025-02-19","1","","ABIWANTA RIZKY WIDYA AGUNG","","20250219223032");
INSERT INTO invoice VALUES("13","2025-03-05","6","","ANDREAS NOVA ANDRIANO","","20250305121013");
INSERT INTO invoice VALUES("14","2025-03-24","18","","HERI PRASETYO","","20250324194853");
INSERT INTO invoice VALUES("15","2025-03-28","2","","AISYAH TRI CAHYA","","20250328105946");
INSERT INTO invoice VALUES("16","2025-03-31","14","","FAKHRI RAHMAD JULIAN","","20250331111408");
INSERT INTO invoice VALUES("17","2025-05-16","2","","AISYAH TRI CAHYA","","20250516165313");
INSERT INTO invoice VALUES("18","2025-06-05","19","","IRFAN ANTONY FAUZAN IBNI","14000","20250605144118");
INSERT INTO invoice VALUES("19","2025-06-05","19","","IRFAN ANTONY FAUZAN IBNI","14000","20250605152646");
INSERT INTO invoice VALUES("20","2025-06-07","100","","Wildan Al Amin","7000","20250607074722");
INSERT INTO invoice VALUES("21","2025-06-07","100","","Wildan Al Amin","14000","20250607074805");
INSERT INTO invoice VALUES("22","2025-06-11","1","","ABIWANTA RIZKY WIDYA AGUNG","7000","20250611111636");
INSERT INTO invoice VALUES("23","2025-06-11","100","","Wildan Al Amin","14000","20250611132204");
INSERT INTO invoice VALUES("24","2025-06-11","14","","FAKHRI RAHMAD JULIAN","7000","20250611135940");
INSERT INTO invoice VALUES("25","2025-06-11","1","","ABIWANTA RIZKY WIDYA AGUNG","7000","20250611141946");
INSERT INTO invoice VALUES("26","2025-06-12","14","","FAKHRI RAHMAD JULIAN","7000","20250612083523");



CREATE TABLE `jadwal_mengajar` (
  `id_jadwal` int(11) NOT NULL AUTO_INCREMENT,
  `hari` varchar(50) DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  `tingkat` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `sampai` varchar(50) DEFAULT NULL,
  `jamke` varchar(11) DEFAULT NULL,
  `jjm` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_jadwal`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO jadwal_mengajar VALUES("1","Mon","3","3","10","X-A","00:00","23:00","","39.428571428571");
INSERT INTO jadwal_mengajar VALUES("2","Tue","3","3","10","X-B","00:00","23:00","","39.428571428571");
INSERT INTO jadwal_mengajar VALUES("3","Wed","3","3","10","X-A","00:00","23:00","","39.428571428571");
INSERT INTO jadwal_mengajar VALUES("4","Mon","3","3","10","X-B","12:00","13:00","","1.7142857142857");
INSERT INTO jadwal_mengajar VALUES("5","Mon","5","2","10","X-A","09:00","12:00","","5.1428571428571");
INSERT INTO jadwal_mengajar VALUES("6","Mon","4","10","10","X-A","08:00","13:00","","8.5714285714286");



CREATE TABLE `jadwal_piket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hari` varchar(50) DEFAULT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `level` varchar(50) NOT NULL DEFAULT 'staff',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO jadwal_piket VALUES("1","Wed","4","staff");



CREATE TABLE `jadwal_refleksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idmapel` varchar(11) DEFAULT NULL,
  `idguru` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO jadwal_refleksi VALUES("1","3","3","X-A","2025-06-16");



CREATE TABLE `jadwal_tu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hari` varchar(50) DEFAULT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `level` varchar(50) NOT NULL DEFAULT 'staff',
  `jjk` varchar(11) DEFAULT NULL,
  `honor` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO jadwal_tu VALUES("1","Mon","6","staff","2","5000");



CREATE TABLE `jawaban` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `skor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `jawaban_dup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `skor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `jawaban_refleksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(11) DEFAULT NULL,
  `idmapel` int(11) NOT NULL,
  `idsoal` varchar(50) DEFAULT NULL,
  `jawaban` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




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




CREATE TABLE `jawaban_tugas` (
  `id_jawaban` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `id_tugas` int(11) DEFAULT NULL,
  `jawaban` longtext DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tgl_dikerjakan` datetime DEFAULT NULL,
  `tgl_update` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nilai` varchar(5) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id_jawaban`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `jenis` (
  `id_jenis` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO jenis VALUES("PAS","Penilaian Akhir Semester","tidak");
INSERT INTO jenis VALUES("PAT","Penilaian Akhir Tahun","aktif");



CREATE TABLE `jenis_satuan` (
  `satuan` varchar(50) NOT NULL,
  PRIMARY KEY (`satuan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO jenis_satuan VALUES("Buah");
INSERT INTO jenis_satuan VALUES("Dus");
INSERT INTO jenis_satuan VALUES("Kg");
INSERT INTO jenis_satuan VALUES("Lusin");
INSERT INTO jenis_satuan VALUES("Meter");
INSERT INTO jenis_satuan VALUES("Pcs");
INSERT INTO jenis_satuan VALUES("Rim");



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




CREATE TABLE `k_bayar` (
  `kelas` varchar(50) NOT NULL,
  `idb` varchar(11) NOT NULL,
  PRIMARY KEY (`kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO k_bayar VALUES("X-2","1");
INSERT INTO k_bayar VALUES("XI-A","1");



CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_nama` varchar(255) NOT NULL,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO kategori VALUES("1","Makanan");
INSERT INTO kategori VALUES("2","Minuman");
INSERT INTO kategori VALUES("3","Snack");



CREATE TABLE `kelas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(50) DEFAULT NULL,
  `fase` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `kuri` varchar(11) DEFAULT NULL,
  `mode_kkm` varchar(50) DEFAULT NULL,
  `kelompok` varchar(11) DEFAULT NULL,
  `bk` varchar(50) DEFAULT NULL,
  `pk` varchar(50) DEFAULT NULL,
  `kk` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO kelas VALUES("1","10","E","X-A","UMUM","2","","","","","");
INSERT INTO kelas VALUES("2","10","E","X-B","UMUM","2","","","","","");
INSERT INTO kelas VALUES("3","11","F","XI-A","UMUM","2","","","","","");
INSERT INTO kelas VALUES("4","11","F","XI-B","UMUM","2","","","","","");
INSERT INTO kelas VALUES("5","12","F","XII-A","UMUM","2","","","","","");
INSERT INTO kelas VALUES("6","12","F","XII-B","UMUM","2","","","","","");
INSERT INTO kelas VALUES("7","","F","","semua","","","","","","");



CREATE TABLE `keranjang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsiswa` varchar(11) DEFAULT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `idproduk` varchar(11) DEFAULT NULL,
  `jumlah` varchar(11) DEFAULT NULL,
  `harga` varchar(11) DEFAULT NULL,
  `total` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO keranjang VALUES("1","","2","1","1","7000","");
INSERT INTO keranjang VALUES("6","","3","3","1","2500","");



CREATE TABLE `kode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenjang` varchar(50) DEFAULT NULL,
  `jenis` varchar(11) DEFAULT NULL,
  `kd` varchar(50) DEFAULT NULL,
  `ket` text DEFAULT NULL,
  `sub` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

INSERT INTO kode VALUES("1","SMK","1","A","A. Muatan Nasional","");
INSERT INTO kode VALUES("2","SMK","1","B","B. Muatan Kewilayahan","");
INSERT INTO kode VALUES("3","SMK","1","C1","C1. Dasar Bidang Keahlian","C. Muatan Peminatan Kejuruan");
INSERT INTO kode VALUES("4","SMK","1","C2","C2. Dasar Program Keahlian","");
INSERT INTO kode VALUES("5","SMK","1","C3","C3. Kompetensi Keahlian","");
INSERT INTO kode VALUES("6","SMP","1","A","A. Umum","");
INSERT INTO kode VALUES("7","SMP","1","B","B. Muatan Lokal","");
INSERT INTO kode VALUES("8","SMA","1","A","A. Umum","");
INSERT INTO kode VALUES("9","SMA","1","B","B. Umum","");
INSERT INTO kode VALUES("10","SMA","1","C","C. Peminatan","");
INSERT INTO kode VALUES("11","SD","1","A","A. Umum","");
INSERT INTO kode VALUES("12","SD","1","B","B. Muatan Lokal","");
INSERT INTO kode VALUES("13","SMK","2","A","A. Muatan Nasional","");
INSERT INTO kode VALUES("14","SMK","2","B","B. Muatan Kewilayahan","");
INSERT INTO kode VALUES("15","SMK","2","C1","C1. Dasar Bidang Keahlian","C. Muatan Peminatan Kejuruan");
INSERT INTO kode VALUES("16","SMK","2","C2","C2. Dasar Program Keahlian","");
INSERT INTO kode VALUES("17","SMK","2","C3","C3. Kompetensi Keahlian","");
INSERT INTO kode VALUES("18","SMP","2","A","A. Umum","");
INSERT INTO kode VALUES("19","SMP","2","B","B. Muatan Lokal","");
INSERT INTO kode VALUES("20","SMA","2","A","A. Umum","");
INSERT INTO kode VALUES("21","SMA","2","B","B. Umum","");
INSERT INTO kode VALUES("22","SMA","2","C","C. Peminatan","");
INSERT INTO kode VALUES("23","SD","2","A","A. Umum","");
INSERT INTO kode VALUES("24","SD","2","B","B. Muatan Lokal","");



CREATE TABLE `kode_jenis` (
  `kd` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kd`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO kode_jenis VALUES("1","Mengajar");
INSERT INTO kode_jenis VALUES("2","Staff");
INSERT INTO kode_jenis VALUES("3","Piket Malam");
INSERT INTO kode_jenis VALUES("4","Eskul");
INSERT INTO kode_jenis VALUES("5","Tugas Lainnya");



CREATE TABLE `komentar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `id_materi` int(11) DEFAULT NULL,
  `komentar` text DEFAULT NULL,
  `balasan` text CHARACTER SET latin1 DEFAULT NULL,
  `jenis` tinyint(2) DEFAULT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `guru` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO komentar VALUES("1","102","4","link tidak bisa dibuka pak","","1","2025-05-26 16:00:31","2");



CREATE TABLE `konten` (
  `id_konten` int(11) NOT NULL AUTO_INCREMENT,
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
  `guru` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id_konten`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO konten VALUES("1","1","1","1","MENGUNGKAPKAN KRITIK LEWAT HUMOR","Di bawah tema “Mengungkapkan Kritik Lewat Humor”, pembelajaran pada bab ini akan mengulas hal-hal yang berhubungan dengan kegiatan menyampaikan kritik secara jenaka.","Peserta didik diajak menyelami lebih dalam tema tersebut melalui ragam materi yang tersaji dan berbagai aktivitas yang menarik.","Kertas, Laptop, Canva","Buku Siswa, Intenet","3","10","3");



CREATE TABLE `kunci_soal` (
  `id_bank` int(11) DEFAULT NULL,
  `id_soal` int(11) DEFAULT NULL,
  `id_jawab` varchar(50) DEFAULT NULL,
  `jawaban` text DEFAULT NULL,
  `skor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO kunci_soal VALUES("1","1","1.1","A","1");
INSERT INTO kunci_soal VALUES("1","2","2.1","A","1");
INSERT INTO kunci_soal VALUES("1","2","2.2","B","1");
INSERT INTO kunci_soal VALUES("1","2","2.3","D","1");
INSERT INTO kunci_soal VALUES("1","3","3.1","C","1");
INSERT INTO kunci_soal VALUES("1","3","3.2","A","1");
INSERT INTO kunci_soal VALUES("1","3","3.3","B","1");
INSERT INTO kunci_soal VALUES("1","3","3.4","D","1");
INSERT INTO kunci_soal VALUES("1","4","4.1","B","1");
INSERT INTO kunci_soal VALUES("1","4","4.2","S","1");
INSERT INTO kunci_soal VALUES("1","4","4.3","S","1");
INSERT INTO kunci_soal VALUES("1","4","4.4","B","1");
INSERT INTO kunci_soal VALUES("1","5","5.1","10","5");
INSERT INTO kunci_soal VALUES("1","6","6.1","A","1");
INSERT INTO kunci_soal VALUES("1","7","7.1","A","1");
INSERT INTO kunci_soal VALUES("1","7","7.2","B","1");
INSERT INTO kunci_soal VALUES("1","7","7.3","D","1");
INSERT INTO kunci_soal VALUES("1","8","8.1","C","1");
INSERT INTO kunci_soal VALUES("1","8","8.2","A","1");
INSERT INTO kunci_soal VALUES("1","8","8.3","B","1");
INSERT INTO kunci_soal VALUES("1","8","8.4","D","1");
INSERT INTO kunci_soal VALUES("1","9","9.1","B","1");
INSERT INTO kunci_soal VALUES("1","9","9.2","S","1");
INSERT INTO kunci_soal VALUES("1","9","9.3","S","1");
INSERT INTO kunci_soal VALUES("1","9","9.4","B","1");
INSERT INTO kunci_soal VALUES("1","10","10.1","10","5");
INSERT INTO kunci_soal VALUES("2","11","11.1","A","1");
INSERT INTO kunci_soal VALUES("2","12","12.1","10","5");
INSERT INTO kunci_soal VALUES("2","13","13.1","A","1");
INSERT INTO kunci_soal VALUES("2","13","13.2","B","1");
INSERT INTO kunci_soal VALUES("2","13","13.3","D","1");
INSERT INTO kunci_soal VALUES("2","14","14.1","B","1");
INSERT INTO kunci_soal VALUES("2","14","14.2","S","1");
INSERT INTO kunci_soal VALUES("2","14","14.3","S","1");
INSERT INTO kunci_soal VALUES("2","14","14.4","B","1");
INSERT INTO kunci_soal VALUES("2","15","15.1","C","1");
INSERT INTO kunci_soal VALUES("2","15","15.2","A","1");
INSERT INTO kunci_soal VALUES("2","15","15.3","D","1");
INSERT INTO kunci_soal VALUES("2","15","15.4","B","1");
INSERT INTO kunci_soal VALUES("3","16","16.1","A","1");
INSERT INTO kunci_soal VALUES("3","17","17.1","10","5");
INSERT INTO kunci_soal VALUES("3","18","18.1","A","1");
INSERT INTO kunci_soal VALUES("3","18","18.2","B","1");
INSERT INTO kunci_soal VALUES("3","18","18.3","D","1");
INSERT INTO kunci_soal VALUES("3","19","19.1","B","1");
INSERT INTO kunci_soal VALUES("3","19","19.2","S","1");
INSERT INTO kunci_soal VALUES("3","19","19.3","S","1");
INSERT INTO kunci_soal VALUES("3","19","19.4","B","1");
INSERT INTO kunci_soal VALUES("3","20","20.1","C","1");
INSERT INTO kunci_soal VALUES("3","20","20.2","A","1");
INSERT INTO kunci_soal VALUES("3","20","20.3","D","1");
INSERT INTO kunci_soal VALUES("3","20","20.4","B","1");



CREATE TABLE `kurikulum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tingkat` varchar(11) DEFAULT NULL,
  `kuri` varchar(1) DEFAULT NULL,
  `model_rapor` varchar(1) DEFAULT NULL,
  `model_kkm` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tingkat` (`tingkat`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO kurikulum VALUES("1","10","2","2","");
INSERT INTO kurikulum VALUES("2","11","2","2","");
INSERT INTO kurikulum VALUES("3","12","2","","");



CREATE TABLE `lampu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'OF',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO lampu VALUES("1","Lampu Kantor","OF");
INSERT INTO lampu VALUES("2","Lampu2","OF");
INSERT INTO lampu VALUES("3","Lampu3","OF");
INSERT INTO lampu VALUES("4","Lampu4","OF");
INSERT INTO lampu VALUES("5","Lampu5","OF");
INSERT INTO lampu VALUES("6","Lampu6","OF");



CREATE TABLE `lingkup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mapel` varchar(11) DEFAULT NULL,
  `level` varchar(11) DEFAULT NULL,
  `materi` text DEFAULT NULL,
  `smt` varchar(11) DEFAULT NULL,
  `lm` varchar(11) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO lingkup VALUES("6","9","10","Pengenalan Komputer dan Perangkat Keras","2","1","4");
INSERT INTO lingkup VALUES("7","9","10","Sistem Operasi Komputer","2","2","4");
INSERT INTO lingkup VALUES("8","9","12","tentang komputer dan perangkatnya","2","1","7");
INSERT INTO lingkup VALUES("9","9","12","softwer ","2","2","7");
INSERT INTO lingkup VALUES("10","9","10","Jaringan","2","1","10");



CREATE TABLE `log` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` varchar(11) DEFAULT NULL,
  `id_user` varchar(11) DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `text` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `level` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `m_bayar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `model` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `angsuran` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO m_bayar VALUES("1","SPP","SPP","2","10","1200000","120000");
INSERT INTO m_bayar VALUES("2","PEM","PEMBANGUNAN","2","2","400000","200000");



CREATE TABLE `m_buku` (
  `idm` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `rak` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`idm`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO m_buku VALUES("1","000","RAK A 1-2");
INSERT INTO m_buku VALUES("2","100","RAK A 3-4");
INSERT INTO m_buku VALUES("3","200","RAK B 1-5");



CREATE TABLE `m_dimensi` (
  `id_dimensi` int(11) NOT NULL AUTO_INCREMENT,
  `dimensi` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_dimensi`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO m_dimensi VALUES("1","Beriman, Bertakwa Kepada Tuhan Yang Maha Esa, dan Berakhlak Mulia");
INSERT INTO m_dimensi VALUES("2","Berkebhinekaan Global");
INSERT INTO m_dimensi VALUES("3","Bergotong-Royong");
INSERT INTO m_dimensi VALUES("4","Mandiri");
INSERT INTO m_dimensi VALUES("5","Bernalar Kritis");
INSERT INTO m_dimensi VALUES("6","Kreatif");



CREATE TABLE `m_elemen` (
  `id_elemen` int(11) NOT NULL AUTO_INCREMENT,
  `iddimensi` int(11) NOT NULL,
  `elemen` varchar(100) NOT NULL,
  PRIMARY KEY (`id_elemen`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

INSERT INTO m_elemen VALUES("1","1","Akhlak Beragama");
INSERT INTO m_elemen VALUES("2","1","Akhlak Pribadi");
INSERT INTO m_elemen VALUES("3","1","Akhlak Kepada Manusia");
INSERT INTO m_elemen VALUES("4","1","Akhlak Kepada Alam");
INSERT INTO m_elemen VALUES("5","1","Akhlak Bernegara");
INSERT INTO m_elemen VALUES("6","2","Mengenal dan menghargai budaya");
INSERT INTO m_elemen VALUES("7","2","Komunikasi dan interaksi antar budaya");
INSERT INTO m_elemen VALUES("8","2","Refleksi dan bertanggung jawab terhadap pengalaman kebinekaan");
INSERT INTO m_elemen VALUES("9","2","Berkeadilan Sosial");
INSERT INTO m_elemen VALUES("10","3","Kolaborasi");
INSERT INTO m_elemen VALUES("11","3","Kepedulian");
INSERT INTO m_elemen VALUES("12","3","Berbagi");
INSERT INTO m_elemen VALUES("13","4","Pemahaman diri dan situasi yang dihadap");
INSERT INTO m_elemen VALUES("14","4","Regulasi Diri");
INSERT INTO m_elemen VALUES("15","5","Memperoleh dan memproses informasi dan gagasan");
INSERT INTO m_elemen VALUES("16","5","Menganalisis dan mengevaluasi penalaran dan prosedurnya");
INSERT INTO m_elemen VALUES("17","5","Refleksi pemikiran dan proses berpikir");
INSERT INTO m_elemen VALUES("18","6","Menghasilkan gagasan yang orisinal");
INSERT INTO m_elemen VALUES("19","6","Menghasilkan karya dan tindakan yang orisinal");
INSERT INTO m_elemen VALUES("20","6","Memiliki keluwesan berpikir dalam mencari alternatif solusi permasalahan");



CREATE TABLE `m_eskul` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eskul` varchar(100) DEFAULT NULL,
  `guru` int(11) DEFAULT NULL,
  `jam` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO m_eskul VALUES("7","Pramuka","3","");
INSERT INTO m_eskul VALUES("8","Palang Merah Remaja (PMR)","2","");
INSERT INTO m_eskul VALUES("9","Atletik","4","");
INSERT INTO m_eskul VALUES("10","Teater","6","");



CREATE TABLE `m_hari` (
  `idh` int(11) NOT NULL AUTO_INCREMENT,
  `hari` varchar(50) NOT NULL,
  `inggris` varchar(50) NOT NULL,
  PRIMARY KEY (`idh`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO m_hari VALUES("1","Senin","Mon");
INSERT INTO m_hari VALUES("2","Selasa","Tue");
INSERT INTO m_hari VALUES("3","Rabu","Wed");
INSERT INTO m_hari VALUES("4","Kamis","Thu");
INSERT INTO m_hari VALUES("5","Jumat","Fri");
INSERT INTO m_hari VALUES("6","Sabtu","Sat");
INSERT INTO m_hari VALUES("7","Minggu","Sun");



CREATE TABLE `m_kurikulum` (
  `idk` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kurikulum` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idk`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO m_kurikulum VALUES("1","K-13");
INSERT INTO m_kurikulum VALUES("2","K-Merdeka");



CREATE TABLE `m_lemari` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `lokasi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO m_lemari VALUES("2","LM-I","LEMARI I","KANTOR");



CREATE TABLE `m_nilai_proyek` (
  `nilai` varchar(3) NOT NULL,
  `ket` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO m_nilai_proyek VALUES("BB","Belum Berkembang");
INSERT INTO m_nilai_proyek VALUES("BSH","Berkembang Sesuai Harapan");
INSERT INTO m_nilai_proyek VALUES("MB","Mulai Berkembang");
INSERT INTO m_nilai_proyek VALUES("SB","Sangat Berkembang");



CREATE TABLE `m_pangkat` (
  `golongan` varchar(50) NOT NULL,
  PRIMARY KEY (`golongan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO m_pangkat VALUES("-");
INSERT INTO m_pangkat VALUES("III/a");
INSERT INTO m_pangkat VALUES("III/b");
INSERT INTO m_pangkat VALUES("III/c");
INSERT INTO m_pangkat VALUES("III/d");
INSERT INTO m_pangkat VALUES("IV/a");
INSERT INTO m_pangkat VALUES("IV/b");



CREATE TABLE `m_pesan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pesan1` mediumtext DEFAULT NULL,
  `pesan2` mediumtext DEFAULT NULL,
  `pesan3` mediumtext DEFAULT NULL,
  `pesan4` mediumtext DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO m_pesan VALUES("1","Assalamualaikum wr.wb","Kami informasikan Bahwa Ananda :","Telah hadir dalam KBM SMP NEW SANDIK menggunakan Absesi Digital pada ","Demikian Informasi kami sampaikan untuk menjadi Sarana Monitoring Orang Tua Siswa terhadap putra putrinya. Terima kasih dan salam hangat dari Kami,Pesan ini tidak perlu dibalas dikirim via *SERVER WA GATEWAY SMP NEW SANDIK*","");
INSERT INTO m_pesan VALUES("2","Assalamualaikum wr.wb.......","Kami informasikan Bahwa Ananda :","Telah selesai melaksanakan KBM SMP NEW SANDIK menggunakan Absesi Digital pada","Demikian Informasi kami sampaikan untuk menjadi Sarana Monitoring Orang Tua Siswa terhadap putra putrinya. Terima kasih dan salam hangat dari Kami,Pesan ini tidak perlu dibalas dikirim via *SERVER WA GATEWAY SMP NEW SANDIK*","");
INSERT INTO m_pesan VALUES("3","Assalamualaikum wr.wb.","Kami informasikan kepada Kepala Sekolah SMP NEW SANDIK Bahwa Sdr/i :","Telah hadir dalam KBM SMP NEW SANDIK menggunakan Absesi Digital pada","Demikian Informasi kami sampaikan untuk menjadi Sarana Monitoring Kepala Sekolah terhadap para pegawai. Terima kasih dan salam hangat dari Kami,Pesan ini tidak perlu dibalas dikirim via *SERVER WA GATEWAY SMP NEW SANDIK*","");
INSERT INTO m_pesan VALUES("4","Assalamualaikum wr.wb.......","Kami informasikan kepada Kepala Sekolah SMP NEW SANDIK Bahwa Sdr/i :","Telah selesai dalam KBM SMP NEW SANDIK menggunakan Absesi Digital pada","Demikian Informasi kami sampaikan untuk menjadi Sarana Monitoring Kepala Sekolah terhadap para pegawai. Terima kasih dan salam hangat dari Kami,Pesan ini tidak perlu dibalas dikirim via *SERVER WA GATEWAY SMP NEW SANDIK*","");
INSERT INTO m_pesan VALUES("5","Assalamualaikum wr.wb","Kami informasikan Bahwa Ananda","Telah hadir dalam Kegiatan Ekstrakurikuler menggunakan Absesi Digital pada ","Demikian Informasi kami sampaikan untuk menjadi Sarana Monitoring Orang Tua Siswa terhadap putra putrinya. Terima kasih dan salam hangat dari Kami,Pesan ini tidak perlu dibalas dikirim via *SERVER WA GATEWAY SMP NEW SANDIK*","");
INSERT INTO m_pesan VALUES("6","Assalamualaikum wr.wb.......","Kami informasikan Bahwa Ananda","Telah selesai dalam mengikuti Kegiatan Ekstrakurikuler menggunakan Absesi Digital pada ","Demikian Informasi kami sampaikan untuk menjadi Sarana Monitoring Orang Tua Siswa terhadap putra putrinya. Terima kasih dan salam hangat dari Kami,Pesan ini tidak perlu dibalas dikirim via *SERVER WA GATEWAY SMP NEW SANDIK*","");
INSERT INTO m_pesan VALUES("7","Assalamualaikum wr.wb","Kami informasikan kepada Kepala Sekolah SMP NEW SANDIK Bahwa Sdr/i :","Telah hadir dalam Kegiatan Ekstrakurikuler SMP NEW SANDIK menggunakan Absesi Digital *RFID* pada","Demikian Informasi kami sampaikan untuk menjadi Sarana Monitoring Kepala Sekolah terhadap para pegawai. Terima kasih dan salam hangat dari Kami,Pesan ini tidak perlu dibalas dikirim via *SERVER WA GATEWAY SMP NEW SANDIK*","");
INSERT INTO m_pesan VALUES("8","Assalamualaikum wr.wb.......","Kami informasikan kepada Kepala Sekolah SMP NEW SANDIK Bahwa Sdr/i :","Telah selesai dalam Kegiatan Ekstrakurikuler SMP NEW SANDIK menggunakan Absesi Digital pada","Demikian Informasi kami sampaikan untuk menjadi Sarana Monitoring Kepala Sekolah terhadap para pegawai. Terima kasih dan salam hangat dari Kami,Pesan ini tidak perlu dibalas dikirim via *SERVER WA GATEWAY SMP NEW SANDIK*","");



CREATE TABLE `m_proyek` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ke` varchar(50) NOT NULL,
  `tingkat` varchar(50) DEFAULT NULL,
  `fase` varchar(1) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `judul` mediumtext DEFAULT NULL,
  `deskripsi` mediumtext DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO m_proyek VALUES("1","Proyek 1","10","E","X-A"," Memahami Dampak Bullying terhadap Kesehatan Mental","Dalam projek ini peserta didik akan mengeksplorasi isu bullying dan dampaknya terhadap kesehatan mental. Mereka akan merancang aturan kelas untuk mencegah bullying dan menumbuhkan interaksi yang penuh hormat antar sesama. Projek ini bertujuan untuk meningkatkan kesadaran terhadap pentingnya menjaga kesehatan mental melalui tindakan preventif terhadap perundungan.","1");
INSERT INTO m_proyek VALUES("2","Proyek 2","10","E","X-A","Mengatasi Dampak Negatif Narkoba di Sekolah","Peserta didik akan melakukan penelitian tentang dampak negatif narkoba terhadap kesehatan fisik dan mental, serta mencari solusi untuk mengatasi penyalahgunaan narkoba di lingkungan sekolah. Projek ini bertujuan untuk meningkatkan kesadaran akan bahaya narkoba dan memperkuat budaya hidup sehat.","1");



CREATE TABLE `m_rapor` (
  `idr` int(11) NOT NULL AUTO_INCREMENT,
  `kuri` int(11) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idr`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO m_rapor VALUES("1","1","Model 2016");
INSERT INTO m_rapor VALUES("2","2","Model Kurmer");



CREATE TABLE `m_sk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` text DEFAULT NULL,
  `nosk` varchar(50) DEFAULT NULL,
  `tempat` varchar(50) DEFAULT NULL,
  `tglsk` varchar(50) DEFAULT NULL,
  `tahun` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO m_sk VALUES("1","SK PENGANGKATAN GTT / GTY","","Bandung","","");
INSERT INTO m_sk VALUES("2","PEMBAGIAN TUGAS","221/424.SMKSC.a/VI/","Jakarta","07 Juli 2026","");
INSERT INTO m_sk VALUES("3","KET AKTIF MENGAJAR","527/421.5-SMKSC/VII/","Jakarta","07 Juli 2025","");
INSERT INTO m_sk VALUES("4","SURAT TUGAS","613/421.5-SMKSC/","Jakarta","07 Juli 2025","");



CREATE TABLE `m_spiritual` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ket` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO m_spiritual VALUES("1","berdoa sebelum dan sesudah melakukan kegiatan");
INSERT INTO m_spiritual VALUES("2","menjalankan ibadah sesuai dengan agamanya");
INSERT INTO m_spiritual VALUES("3","memberi salam pada saat awal dan akhir kegiatan");
INSERT INTO m_spiritual VALUES("4","bersyukur atas nikmat dan karunia Tuhan Yang Maha Esa");
INSERT INTO m_spiritual VALUES("5","bersyukur ketika berhasil mengerjakan sesuatu");
INSERT INTO m_spiritual VALUES("6","berserah diri (tawakal) kepada Tuhan setelah berikhtiar atau melakukan usaha");
INSERT INTO m_spiritual VALUES("7","memelihara hubungan baik dengan sesama umat");



CREATE TABLE `m_sub_elemen` (
  `id_sub` int(11) NOT NULL AUTO_INCREMENT,
  `iddimensi` int(11) NOT NULL,
  `idelemen` int(11) NOT NULL,
  `sub_elemen` varchar(100) NOT NULL,
  `A` mediumtext DEFAULT NULL,
  `B` mediumtext DEFAULT NULL,
  `C` mediumtext DEFAULT NULL,
  `D` mediumtext DEFAULT NULL,
  `E` mediumtext DEFAULT NULL,
  `F` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_sub`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

INSERT INTO m_sub_elemen VALUES("1","1","1","Mengenal dan Mencintai Tuhan Yang Maha Esa","Mengenali sifat-sifat utama Tuhan bahwa Ia Maha Esa dan Ia adalah Sang Pencipta yang Maha Pengasih dan Maha Penyayang dan mengenali kebaikan dirinya sebagai cerminan sifat Tuhan","Memahami sifat-sifat Tuhan utama lainnya dan mengaitkan sifatsifat tersebut dengan konsep dirinya dan ciptaan-Nya","Memahami berbagai kualitas atau sifat-sifat Tuhan yang diutarakan dalam kitab suci agama masing-masing dan menghubungkan kualitas-kualitas positif Tuhan dengan sikap pribadinya, serta meyakini firman Tuhan sebagai kebenaran","Memahami kehadiran Tuhan dalam kehidupan sehari-hari serta mengaitkan pemahamannya tentang kualitas atau sifat-sifat Tuhan dengan konsep peran manusia di bumi sebagai makhluk Tuhan yang bertanggung jawab","Menerapkan pemahamannya tentang kualitas atau sifat-sifat Tuhan dalam ritual ibadahnya baik ibadah yang bersifat personal maupun sosial.","");
INSERT INTO m_sub_elemen VALUES("2","1","1","Pemahaman Agama/Kepercayaan","Mengenali unsur-unsur utama agama/kepercayaan (ajaran, ritual keagamaan, kitab suci, dan orang suci/ utusan Tuhan YME).","Mengenali unsur-unsur utama agama/kepercayaan (simbol-simbol keagamaan dan sejarah agama/ kepercayaan)","Memahami berbagai kualitas atau sifat-sifat Tuhan yang diutarakan dalam kitab suci agama masing-masing dan menghubungkan kualitas-kualitas positif Tuhan dengan sikap pribadinya, serta meyakini firman Tuhan sebagai kebenaran","Memahami kehadiran Tuhan dalam kehidupan sehari-hari serta mengaitkan pemahamannya tentang kualitas atau sifat-sifat Tuhan dengan konsep peran manusia di bumi sebagai makhluk Tuhan yang bertanggung jawab","Memahami struktur organisasi, unsur-unsur utama agama /kepercayaan dalam konteks Indonesia, memahami kontribusi agama/kepercayaan terhadap peradaban dunia.","");
INSERT INTO m_sub_elemen VALUES("3","1","1","Pelaksanaan Ritual Ibadah","Terbiasa melaksanakan ibadah sesuai ajaran agama/kepercayaannya","Terbiasa melaksanakan ibadah wajib sesuai tuntunan agama/kepercayaannya","Melaksanakan ibadah secara rutin sesuai dengan tuntunan agama/kepercayaan, berdoa mandiri, merayakan, dan memahami makna hari-hari besarnya","Melaksanakan ibadah secara rutin dan mandiri sesuai dengan tuntunan agama/kepercayaan, serta berpartisipasi pada perayaan hari-hari besarnya
","Melaksanakan ibadah secara rutin dan mandiri serta menyadari arti penting ibadah tersebut dan berpartisipasi aktif pada kegiatan keagamaan atau kepercayaan","");
INSERT INTO m_sub_elemen VALUES("4","1","2","Integritas","Membiasakan bersikap jujur terhadap diri sendiri dan orang lain dan berani menyampaikan kebenaran atau fakta","Membiasakan melakukan refleksi tentang pentingnya bersikap jujur dan berani menyampaikan kebenaran atau fakta","Berani dan konsisten menyampaikan kebenaran atau fakta serta memahami konsekuensi-konsekuensinya untuk diri sendiri","Berani dan konsisten menyampaikan kebenaran atau fakta serta memahami konsekuensi-konsekuensinya untuk diri sendiri dan orang lain","Menyadari bahwa aturan agama dan sosial merupakan aturan yang baik dan menjadi bagian dari diri sehingga bisa menerapkannya secara bijak dan kontekstual","");
INSERT INTO m_sub_elemen VALUES("5","1","2","Merawat Diri secara Fisik, Mental dan Spiritual","Memiliki rutinitas sederhana yang diatur secara mandiri dan dijalankan sehari-hari serta menjaga kesehatan dan keselamatan/keamanan diri dalam semua aktivitas kesehariannya.
","Mulai membiasakan diri untuk disiplin, rapi, membersihkan dan merawat tubuh, menjaga tingkah laku dan perkataan dalam semua aktivitas kesehariannya","Memperhatikan kesehatan jasmani, mental, dan rohani dengan melakukan aktivitas fisik, sosial, dan ibadah","Mengidentifikasi pentingnya menjaga keseimbangan kesehatan jasmani, mental, dan rohani serta berupaya menyeimbangkan aktivitas fisik, sosial dan ibadah","Melakukan aktivitas fisik, sosial, dan ibadah secara seimbang.","");
INSERT INTO m_sub_elemen VALUES("6","1","3","Mengutamakan persamaan dengan orang lain dan menghargai perbedaan","Mengenali hal-hal yang sama dan berbeda yang dimiliki diri dan temannya dalam berbagai hal, serta memberikan respon secara positif.","Terbiasa mengidentifikasi hal-hal yang sama dan berbeda yang dimiliki diri dan temannya dalam berbagai hal serta memberikan respon secara positif.","Mengidentifikasi kesamaan dengan orang lain sebagai perekat hubungan sosial dan mewujudkannya dalam aktivitas kelompok. Mulai mengenal berbagai kemungkinan interpretasi dan cara pandang yang berbeda ketika dihadapkan dengan dilema.","Mengenal perspektif dan emosi/perasaan dari sudut pandang orang atau kelompok lain yang tidak pernah dijumpai atau dikenalnya. Mengutamakan persamaan dan menghargai perbedaan sebagai alat pemersatu dalam keadaan konflik atau perdebatan.","Mengidentifikasi hal yang menjadi permasalahan bersama, memberikan alternatif solusi untuk menjembatani perbedaan dengan mengutamakan kemanusiaan.","");
INSERT INTO m_sub_elemen VALUES("7","1","3","Berempati kepada orang lain","Mengidentifikasi emosi, minat dan kebutuhan orang-orang terdekat dan meresponnya secara positif.","Terbiasa memberikan apresiasi di lingkungan sekolah dan masyarakat","Mulai memandang sesuatu dari perspektif orang lain serta mengidentifikasi kebaikan dan kelebihan orang sekitarnya.","Memahami perasaan dan sudut pandang orang dan/atau kelompok lain yang tidak pernah dikenalnya","Memahami dan menghargai perasaan dan sudut pandang orang dan/atau kelompok lain.","");
INSERT INTO m_sub_elemen VALUES("8","1","4","Memahami Keterhubungan Ekosistem Bumi","Mengidentifikasi berbagai ciptaan Tuhan","Memahami keterhubungan antara satu ciptaan dengan ciptaan Tuhan yang lainnya","Memahami konsep harmoni dan mengidentifikasi adanya saling ketergantungan antara berbagai ciptaan Tuhan","Memahami konsep sebab-akibat di antara berbagai ciptaan Tuhan dan mengidentifikasi berbagai sebab yang mempunyai dampak baik atau buruk, langsung maupun tidak langsung, terhadap alam semesta.
","Mengidentifikasi masalah lingkungan hidup di tempat ia tinggal dan melakukan langkah-langkah konkrit yang bisa dilakukan untuk menghindari kerusakan dan menjaga keharmonisan ekosistem yang ada di lingkungannya.","");
INSERT INTO m_sub_elemen VALUES("9","1","4","Menjaga Lingkungan Alam Sekitar","Membiasakan bersyukur atas lingkungan alam sekitar dan berlatih untuk menjaganya
","Terbiasa memahami tindakan-tindakan yang ramah dan tidak ramah lingkungan serta membiasakan diri untuk berperilaku ramah lingkungan
","Mewujudkan rasa syukur dengan terbiasa berperilaku ramah lingkungan dan memahami akibat perbuatan tidak ramah lingkungan dalam lingkup kecil maupun besar.
","Mewujudkan rasa syukur dengan berinisiatif untuk menyelesaikan permasalahan lingkungan alam sekitarnya dengan mengajukan alternatif solusi dan mulai menerapkan solusi tersebut.
","Mewujudkan rasa syukur dengan membangun kesadaran peduli lingkungan alam dengan menciptakan dan mengimplementasikan solusi dari permasalahan lingkungan yang ada.","");
INSERT INTO m_sub_elemen VALUES("10","1","5","Melaksanakan Hak dan Kewajiban sebagai Warga Negara Indonesia","Mengidentifikasi hak dan tanggung jawabnya di rumah, sekolah, dan lingkungan sekitar serta kaitannya dengan keimanan kepada Tuhan YME.

","Mengidentifikasi hak dan tanggung jawab orang-orang di sekitarnya serta kaitannya dengan keimanan kepada Tuhan YME.
","Mengidentifikasi dan memahami peran, hak, dan kewajiban dasar sebagai warga negara serta kaitannya dengan keimanan kepada Tuhan YME dan secara sadar mempraktikkannya dalam kehidupan sehari-hari.
","Menganalisa peran, hak, dan kewajiban sebagai warga negara, memahami perlunya mengutamakan kepentingan umum di atas kepentingan pribadi sebagai wujud dari keimanannya kepada Tuhan YME.
","Memperoleh hak dan melaksanakan kewajiban kewarganegaraan dan terbiasa mendahulukan kepentingan umum di atas kepentingan pribadi sebagai wujud dari keimanannya kepada Tuhan YME.","");
INSERT INTO m_sub_elemen VALUES("11","2","6","Mendalami budaya dan identitas budaya","Mengidentifikasi dan mendeskripsikan ide-ide tentang dirinya dan beberapa macam kelompok di lingkungan sekitarnya
","Mengidentifikasi dan mendeskripsikan ide-ide tentang dirinya dan berbagai macam kelompok di lingkungan sekitarnya, serta cara orang lain berperilaku dan berkomunikasi dengannya.
","Mengidentifikasi dan mendeskripsikan keragaman budaya di sekitarnya; serta menjelaskan peran budaya dan Bahasa dalam membentuk identitas dirinya.
","Menjelaskan perubahan budaya seiring waktu dan sesuai konteks, baik dalam skala lokal, regional, dan nasional. Menjelaskan identitas diri yang terbentuk dari budaya bangsa.
","Menganalisis pengaruh keanggotaan kelompok lokal, regional, nasional, dan global terhadap pembentukan identitas, termasuk identitas dirinya. Mulai menginternalisasi identitas diri sebagai bagian dari budaya bangsa.","");
INSERT INTO m_sub_elemen VALUES("12","2","6","Mengeksplorasi dan membandingkan pengetahuan budaya, kepercayaan, serta praktiknya","Mengidentifikasi dan mendeskripsikan praktik keseharian diri dan budayanya
","Mengidentifikasi dan membandingkan praktik keseharian diri dan budayanya dengan orang lain di tempat dan waktu/era yang berbeda.
","Mendeskripsikan dan membandingkan pengetahuan, kepercayaan, dan praktik dari berbagai kelompok budaya.
","Memahami dinamika budaya yang mencakup pemahaman, kepercayaan, dan praktik keseharian dalam konteks personal dan sosial.
","Menganalisis dinamika budaya yang mencakup pemahaman, kepercayaan, dan praktik keseharian dalam rentang waktu yang panjang dan konteks yang luas.","");
INSERT INTO m_sub_elemen VALUES("13","2","6","Menumbuhkan rasa menghormati terhadap keanekaragaman budaya","Mendeskripsikan pengalaman dan pemahaman hidup bersama-sama dalam kemajemukan.
","Memahami bahwa kemajemukan dapat memberikan kesempatan untuk mendapatkan pengalaman dan pemahaman yang baru.
","Mengidentifikasi peluang dan tantangan yang muncul dari keragaman budaya di Indonesia.
","Memahami pentingnya melestarikan dan merayakan tradisi budaya untuk mengembangkan identitas pribadi, sosial, dan bangsa Indonesia serta mulai berupaya melestarikan budaya dalam kehidupan sehari-hari.
","Memahami pentingnya saling menghormati dalam mempromosikan pertukaran budaya dan kolaborasi dalam dunia yang saling terhubung serta menunjukkannya dalam perilaku.","");
INSERT INTO m_sub_elemen VALUES("14","2","7","Berkomunikasi antar budaya","Mengenali bahwa diri dan orang lain menggunakan kata, gambar, dan bahasa tubuh yang dapat memiliki makna yang berbeda di lingkungan sekitarnya
","Mendeskripsikan penggunaan kata, tulisan dan bahasa tubuh yang memiliki makna yang berbeda di lingkungan sekitarnya dan dalam suatu budaya tertentu.
","Memahami persamaan dan perbedaan cara komunikasi baik di dalam maupun antar kelompok budaya.
","Mengeksplorasi pengaruh budaya terhadap penggunaan bahasa serta dapat mengenali risiko dalam berkomunikasi antar budaya.
","Menganalisis hubungan antara bahasa, pikiran, dan konteks untuk memahami dan meningkatkan komunikasi antar budaya yang berbeda-beda.","");
INSERT INTO m_sub_elemen VALUES("15","2","7","Mempertimbangkan dan menumbuhkan berbagai perspektif","Mengekspresikan pandangannya terhadap topik yang umum dan mendengarkan sudut pandang orang lain yang berbeda dari dirinya dalam lingkungan keluarga dan sekolah
","Mengekspresikan pandangannya terhadap topik yang umum dan dapat mengidentifikasi sudut pandang orang lain. Mendengarkan dan membayangkan sudut pandang orang lain yang berbeda dari dirinya pada situasi di ranah sekolah, keluarga, dan lingkungan sekitar.
","Membandingkan beragam perspektif untuk memahami permasalahan sehari-hari. Membayangkan dan mendeskripsikan situasi komunitas yang berbeda dengan dirinya ke dalam situasi dirinya dalam konteks lokal dan regional.
","Menjelaskan asumsi-asumsi yang mendasari perspektif tertentu. Membayangkan dan mendeskripsikan perasaan serta motivasi komunitas yang berbeda dengan dirinya yang berada dalam situasi yang sulit.
","Menyajikan pandangan yang seimbang mengenai permasalahan yang dapat menimbulkan pertentangan pendapat. Memperlakukan orang lain dan budaya yang berbeda darinya dalam posisi setara dengan diri dan budayanya, serta bersedia memberikan pertolongan ketika orang lain berada dalam situasi sulit.","");
INSERT INTO m_sub_elemen VALUES("16","2","8","Refleksi terhadap pengalaman kebinekaan","Menyebutkan apa yang telah dipelajari tentang orang lain dari interaksinya dengan kemajemukan budaya di lingkungan sekolah dan rumah
","Menyebutkan apa yang telah dipelajari tentang orang lain dari interaksinya dengan kemajemukan budaya di lingkungan sekitar.
","Menjelaskan apa yang telah dipelajari dari interaksi dan pengalaman dirinya dalam lingkungan yang beragam.
","Merefleksikan secara kritis gambaran berbagai kelompok budaya yang ditemui dan cara meresponnya.
","Merefleksikan secara kritis dampak dari pengalaman hidup di lingkungan yang beragam terkait dengan perilaku, kepercayaan serta tindakannya terhadap orang lain.","");
INSERT INTO m_sub_elemen VALUES("17","2","8","Menghilangkan stereotip dan prasangka","Mengenali perbedaan tiap orang atau kelompok dan menganggapnya sebagai kewajaran
","Mengkonfirmasi dan mengklarifikasi stereotip dan prasangka yang dimilikinya tentang orang atau kelompokdi sekitarnya untuk mendapatkan pemahaman yang lebih baik
","Mengkonfirmasi dan mengklarifikasi stereotip dan prasangka yang dimilikinya tentang orang atau kelompok di sekitarnya untuk mendapatkan pemahaman yang lebih baik serta mengidentifikasi pengaruhnya terhadap individu dan kelompok di lingkungan sekitarnya
","Mengkonfirmasi, mengklarifikasi dan menunjukkan sikapmenolak stereotip serta prasangka tentang gambaran identitas kelompok dan suku bangsa.
","Mengkritik dan menolak stereotip serta prasangka tentang gambaran identitas kelompok dan suku bangsa serta berinisiatif mengajak orang lain untuk menolak stereotip dan prasangka.","");
INSERT INTO m_sub_elemen VALUES("18","2","8","Menyelaraskan perbedaan budaya","Mengidentifikasi perbedaan-perbedaan budaya yang konkrit di lingkungan sekitar
","Mengenali bahwa perbedaan budaya mempengaruhi pemahaman antarindividu.
","Mencari titik temu nilai budaya yang beragam untuk menyelesaikan permasalahan bersama.
","Mengkonfirmasi, mengklarifikasi dan menunjukkan sikapmenolak stereotip serta prasangka tentang gambaran identitas kelompok dan suku bangsa.
","Mengetahui tantangan dan keuntungan hidup dalam lingkungan dengan budaya yang beragam, serta memahami pentingnya kerukunan antar budaya dalam kehidupan bersama yang harmonis.","");
INSERT INTO m_sub_elemen VALUES("19","2","9","Aktif membangun masyarakat yang inklusif, adil, dan berkelanjutan
","Menjalin pertemanan tanpa memandang perbedaan agama, suku, ras, jenis kelamin, dan perbedaan lainnya, dan mengenal masalah-masalah sosial, ekonomi, dan lingkungan di lingkungan sekitarnya
","Mengidentifikasi cara berkontribusi terhadap lingkungan sekolah, rumah dan lingkungan sekitarnya yang inklusif, adil dan berkelanjutan
","Membandingkan beberapa tindakan dan praktik perbaikan lingkungan sekolah yang inklusif, adil, dan berkelanjutan, dengan mempertimbangkan dampaknya secara jangka panjang terhadap manusia, alam, dan masyarakat
","Mengidentifikasi masalah yang ada di sekitarnya sebagai akibat dari pilihan yang dilakukan oleh manusia, serta dampak masalah tersebut terhadap sistem ekonomi, sosial dan lingkungan, serta mencari solusi yang memperhatikan prinsip-prinsip keadilan terhadap manusia, alam dan masyarakat
","Berinisiatif melakukan suatu tindakan berdasarkan identifikasi masalah untuk mempromosikan keadilan, keamanan ekonomi, menopang ekologi dan demokrasi sambil menghindari kerugian jangka panjang terhadap manusia, alam ataupun masyarakat.
","");
INSERT INTO m_sub_elemen VALUES("20","2","9","Berpartisipasi dalam proses pengambilan keputusan bersama","Mengidentifikasi pilihan-pilihan berdasarkan kebutuhan dirinya dan orang lain ketika membuat keputusan
","Berpartisipasi menentukan beberapa pilihan untuk keperluan bersama berdasarkan kriteria sederhana
","Berpartisipasi dalam menentukan kriteria yang disepakati bersama untuk menentukan pilihan dan keputusan untuk kepentingan bersama
","Berpartisipasi dalam menentukan kriteria dan metode yang disepakati bersama untuk menentukan pilihan dan keputusan untuk kepentingan bersama melalui proses bertukar pikiran secara cermat dan terbuka dengan panduan pendidik
","Berpartisipasi menentukan pilihan dan keputusan untuk kepentingan bersama melalui proses bertukar pikiran secara cermat dan terbuka secara mandiri
","");
INSERT INTO m_sub_elemen VALUES("21","2","9","Memahami peran individu dalam demokrasi","Mengidentifikasi peran, hak dan kewajiban warga dalam masyarakat demokratis
","Memahami konsep hak dan kewajiban, serta implikasinya terhadap perilakunya.
","Memahami konsep hak dan kewajiban, serta implikasinya terhadap perilakunya. Menggunakan konsep ini untuk menjelaskan perilaku diri dan orang sekitarnya
","Memahami konsep hak dan kewajiban serta implikasinya terhadap ekspresi dan perilakunya. Mulai aktif mengambil sikap dan langkah untuk melindungi hak orang/kelompok lain.
","Memahami konsep hak dan kewajiban, serta implikasinya terhadap ekspresi dan perilakunya. Mulai mencari solusi untuk dilema terkait konsep hak dan kewajibannya.
","");
INSERT INTO m_sub_elemen VALUES("22","3","10","Kerja sama","Menerima dan melaksanakan tugas serta peran yang diberikan kelompok dalam sebuah kegiatan bersama.
","Menampilkan tindakan yang sesuai dengan harapan dan tujuan kelompok.
","Menunjukkan ekspektasi (harapan) positif kepada orang lain dalam rangka mencapai tujuan kelompok di lingkungan sekitar (sekolah dan rumah).
","Menyelaraskan tindakan sendiri dengan tindakan orang lain untuk melaksanakan kegiatan dan mencapai tujuan kelompok di lingkungan sekitar, serta memberi semangat kepada orang lain untuk bekerja efektif dan mencapai tujuan bersama.
","Membangun tim dan mengelola kerjasama untuk mencapai tujuan bersama sesuai dengan target yang sudah ditentukan.
","");
INSERT INTO m_sub_elemen VALUES("23","3","10","Komunikasi untuk mencapai tujuan bersama","Memahami informasi sederhana dari orang lain dan menyampaikan informasi sederhana kepada orang lain menggunakan kata-katanya sendiri.
","Memahami informasi yang disampaikan (ungkapan pikiran, perasaan, dan keprihatinan) orang lain dan menyampaikan informasi secara akurat menggunakan berbagai simbol dan media
","Memahami informasi dari berbagai sumber dan menyampaikan pesan menggunakan berbagai simbol dan media secara efektif kepada orang lain untuk mencapai tujuan bersama
","Memahami informasi, gagasan, emosi, keterampilan dan keprihatinan yang diungkapkan oleh orang lain menggunakan berbagai simbol dan media secara efektif, serta memanfaatkannya untuk meningkatkan kualitas hubungan interpersonal guna mencapai tujuan bersama.
","Aktif menyimak untuk memahami dan menganalisis informasi, gagasan, emosi, keterampilan dan keprihatinan yang disampaikan oleh orang lain dan kelompok menggunakan berbagai simbol dan media secara efektif, serta menggunakan berbagai strategi komunikasi untuk menyelesaikan masalah guna mencapai berbagai tujuan bersama.
","");
INSERT INTO m_sub_elemen VALUES("24","3","10","Saling-ketergantungan positif","Mengenali kebutuhan-kebutuhan diri sendiri yang memerlukan orang lain dalam pemenuhannya.
","Menyadari bahwa setiap orang membutuhkan orang lain dalam memenuhi kebutuhannya dan perlunya saling membantu
","Menyadari bahwa meskipun setiap orang memiliki otonominya masing-masing, setiap orang membutuhkan orang lain dalam memenuhi kebutuhannya.
","Mendemonstrasikan kegiatan kelompok yang menunjukkan bahwa anggota kelompok dengan kelebihan dan kekurangannya masing-masing perlu dan dapat saling membantu memenuhi kebutuhan.
","Menyelaraskan kapasitas kelompok agar para anggota kelompok dapat saling membantu satu sama lain memenuhi kebutuhan mereka baik secara individual maupun kolektif.
","");
INSERT INTO m_sub_elemen VALUES("25","3","10","Koordinasi Sosial","Melaksanakan aktivitas kelompok sesuai dengan kesepakatan bersama dengan bimbingan, dan saling mengingatkan adanya kesepakatan tersebut.
","Menyadari bahwa dirinya memiliki peran yang berbeda dengan orang lain/temannya, serta mengetahui konsekuensi perannya terhadap ketercapaian tujuan.
","Menyelaraskan tindakannya sesuai dengan perannya dan mempertimbangkan peran orang lain untuk mencapai tujuan bersama.
","Membagi peran dan menyelaraskan tindakan dalam kelompok serta menjaga tindakan agar selaras untuk mencapai tujuan bersama.
","Menyelaraskan dan menjaga tindakan diri dan anggota kelompok agar sesuai antara satu dengan lainnya serta menerima konsekuensi tindakannya dalam rangka mencapai tujuan bersama.
","");
INSERT INTO m_sub_elemen VALUES("26","3","11","Tanggap terhadap lingkungan Sosial","Peka dan mengapresiasi orang-orang di lingkungan sekitar, kemudian melakukan tindakan sederhana untuk mengungkapkannya.
","Peka dan mengapresiasi orang-orang di lingkungan sekitar, kemudian melakukan tindakan untuk menjaga keselarasan dalam berelasi dengan orang lain.
","Tanggap terhadap lingkungan sosial sesuai dengan tuntutan peran sosialnya dan menjaga keselarasan dalam berelasi dengan orang lain.
","Tanggap terhadap lingkungan sosial sesuai dengan tuntutan peran sosialnya dan berkontribusi sesuai dengan kebutuhan masyarakat.
","Tanggap terhadap lingkungan sosial sesuai dengan tuntutan peran sosialnya dan berkontribusi sesuai dengan kebutuhan masyarakat untuk menghasilkan keadaan yang lebih baik.
","");
INSERT INTO m_sub_elemen VALUES("27","3","11","Persepsi sosial","Mengenali berbagai reaksi orang lain di lingkungan sekitar dan penyebabnya.
","Memahami berbagai alasan orang lain menampilkan respon tertentu
","Menerapkan pengetahuan mengenai berbagai reaksi orang lain dan penyebabnya dalam konteks keluarga, sekolah, serta pertemanan dengan sebaya.
","Menggunakan pengetahuan tentang sebab dan alasan orang lain menampilkan reaksi tertentu untuk menentukan tindakan yang tepat agar orang lain menampilkan respon yang diharapkan.
","Melakukan tindakan yang tepat agar orang lain merespon sesuai dengan yang diharapkan dalam rangka penyelesaian pekerjaan dan pencapaian tujuan.
","");
INSERT INTO m_sub_elemen VALUES("28","3","12","Berbagi","Memberi dan menerima hal yang dianggap berharga dan penting kepada/dari orang-orang di lingkungan sekitar.
",""
Memberi dan menerima hal yang dianggap penting dan berharga kepada/dari orang-orang di lingkungan sekitar baik yang dikenal maupun tidak dikenal."
","Memberi dan menerima hal yang dianggap penting dan berharga kepada/dari orang-orang di lingkungan luas/masyarakat baik yang dikenal maupun tidak dikenal.
",""
Mengupayakan memberi hal yang dianggap penting dan berharga kepada masyarakat yang membutuhkan bantuan di sekitar tempat tinggal"
","Mengupayakan memberi hal yang dianggap penting dan berharga kepada orang-orang yang membutuhkan di masyarakat yang lebih luas (negara, dunia).
","");
INSERT INTO m_sub_elemen VALUES("29","4","13","Mengenali kualitas dan minat diri serta tantangan yang dihadapi","Mengidentifikasi dan menggambarkan kemampuan, prestasi, dan ketertarikannya secara subjektif
","Mengidentifikasi kemampuan, prestasi, dan ketertarikannya serta tantangan yang dihadapi berdasarkan kejadian-kejadian yang dialaminya dalam kehidupan sehari-hari.
","Menggambarkan pengaruh kualitas dirinya terhadap pelaksanaan dan hasil belajar; serta mengidentifikasi kemampuan yang ingin dikembangkan dengan mempertimbangkan tantangan yang dihadapinya dan umpan balik dari orang dewasa
","Membuat penilaian yang realistis terhadap kemampuan dan minat , serta prioritas pengembangan diri berdasarkan pengalaman belajar dan aktivitas lain yang dilakukannya.
","Mengidentifikasi kekuatan dan tantangan-tantangan yang akan dihadapi pada konteks pembelajaran, sosial dan pekerjaan yang akan dipilihnya di masa depan.
","");
INSERT INTO m_sub_elemen VALUES("30","4","13","Mengembangkan refleksi diri","Melakukan refleksi untuk mengidentifikasi kekuatan dan kelemahan, serta prestasi dirinya.
","Melakukan refleksi untuk mengidentifikasi kekuatan, kelemahan, dan prestasi dirinya, serta situasi yang dapat mendukung dan menghambat pembelajaran dan pengembangan dirinya
","Melakukan refleksi untuk mengidentifikasi faktor-faktor di dalam maupun di luar dirinya yang dapat mendukung/menghambatnya dalam belajar dan mengembangkan diri; serta mengidentifikasi cara-cara untuk mengatasi kekurangannya.
","Memonitor kemajuan belajar yang dicapai serta memprediksi tantangan pribadi dan akademik yang akan muncul berlandaskan pada pengalamannya untuk mempertimbangkan strategi belajar yang sesuai.
","Melakukan refleksi terhadap umpan balik dari teman, guru, dan orang dewasa lainnya, serta informasi-informasi karir yang akan dipilihnya untuk menganalisis karakteristik dan keterampilan yang dibutuhkan dalam menunjang atau menghambat karirnya di masa depan.
","");
INSERT INTO m_sub_elemen VALUES("31","4","14","Regulasi emosi","Mengidentifikasi perbedaan emosi yang dirasakannya dan situasi-situasi yang menyebabkan-nya; serta mengekspresi-kan secara wajar
","Mengetahui adanya pengaruh orang lain, situasi, dan peristiwa yang terjadi terhadap emosi yang dirasakannya; serta berupaya untuk mengekspresikan emosi secara tepat dengan mempertimbangkan perasaan dan kebutuhan orang lain disekitarnya
","Memahami perbedaan emosi yang dirasakan dan dampaknya terhadap proses belajar dan interaksinya dengan orang lain; serta mencoba cara-cara yang sesuai untuk mengelola emosi agar dapat menunjang aktivitas belajar dan interaksinya dengan orang lain.
","Memahami dan memprediksi konsekuensi dari emosi dan pengekspresiannya dan menyusun langkah-langkah untuk mengelola emosinya dalam pelaksanaan belajar dan berinteraksi dengan orang lain.
","Mengendalikan dan menyesuaikan emosi yang dirasakannya secara tepat ketika menghadapi situasi yang menantang dan menekan pada konteks belajar, relasi, dan pekerjaan.
","");
INSERT INTO m_sub_elemen VALUES("32","4","14","Penetapan tujuan belajar, prestasi, dan pengembangan diri serta rencana strategis untuk mencapainya","Menetapkan target belajar dan merencanakan waktu dan tindakan belajar yang akan dilakukannya.
","Menjelaskan pentingnya memiliki tujuan dan berkomitmen dalam mencapainya serta mengeksplorasi langkah-langkah yang sesuai untuk mencapainya
","Menilai faktor-faktor (kekuatan dan kelemahan) yang ada pada dirinya dalam upaya mencapai tujuan belajar, prestasi, dan pengembangan dirinya serta mencoba berbagai strategi untuk mencapainya.
","Merancang strategi yang sesuai untuk menunjang pencapaian tujuan belajar, prestasi, dan pengembangan diri dengan mempertimbangkan kekuatan dan kelemahan dirinya, serta situasi yang dihadapi.
","Mengevaluasi efektivitas strategi pembelajaran digunakannya, serta menetapkan tujuan belajar, prestasi, dan pengembangan diri secara spesifik dan merancang strategi yang sesuai untuk menghadapi tantangan-tantangan yang akan dihadapi pada konteks pembelajaran, sosial dan pekerjaan yang akan dipilihnya di masa depan.
","");
INSERT INTO m_sub_elemen VALUES("33","4","14","Menunjukkan inisiatif dan bekerja secara mandiri","Berinisiatif untuk mengerjakan tugas-tugas rutin secara mandiri dibawah pengawasan dan dukungan orang dewasa
","Mempertimbangkan, memilih dan mengadopsi berbagai strategi dan mengidentifikasi sumber bantuan yang diperlukan serta berinisiatif menjalankannya untuk mendapatkan hasil belajar yang diinginkan.
","Memahami arti penting bekerja secara mandiri serta inisiatif untuk melakukannya dalam menunjang pembelajaran dan pengembangan dirinya
","Mengkritisi efektivitas dirinya dalam bekerja secara mandiri dengan mengidentifikasi hal-hal yang menunjang maupun menghambat dalam mencapai tujuan.
","Menentukan prioritas pribadi, berinisiatif mencari dan mengembangkan pengetahuan dan keterampilan yang spesifik sesuai tujuan di masa depan.
","");
INSERT INTO m_sub_elemen VALUES("34","4","14","Mengembangkan pengendalian dan disiplin diri","Melaksanakan kegiatan belajar di kelas dan menyelesaikan tugas-tugas dalam waktu yang telah disepakati.
","Menjelaskan pentingnya mengatur diri secara mandiri dan mulai menjalankan kegiatan dan tugas yang telah sepakati secara mandiri
","Mengidentifikasi faktor-faktor yang dapat mempengaruhi kemampuan dalam mengelola diri dalam pelaksanaan aktivitas belajar dan pengembangan dirinya.
","Berkomitmen dan menjaga konsistensi pencapaian tujuan yang telah direncanakannya untuk mencapai tujuan belajar dan pengembangan diri yang diharapkannya
","Melakukan tindakan-tindakan secara konsisten guna mencapai tujuan karir dan pengembangan dirinya di masa depan, serta berusaha mencari dan melakukan alternatif tindakan lain yang dapat dilakukan ketika menemui hambatan.
","");
INSERT INTO m_sub_elemen VALUES("35","4","14","Percaya diri, tangguh (resilient), dan adaptif","Berani mencoba dan adaptif menghadapi situasi baru serta bertahan mengerjakan tugas-tugas yang disepakati hingga tuntas
","Tetap bertahan mengerjakan tugas ketika dihadapkan dengan tantangan dan berusaha menyesuaikan strateginya ketika upaya sebelumnya tidak berhasil.
","Menyusun, menyesuaikan, dan mengujicobakan berbagai strategi dan cara kerjanya untuk membantu dirinya dalam penyelesaian tugas yang menantang
","Membuat rencana baru dengan mengadaptasi, dan memodifikasi strategi yang sudah dibuat ketika upaya sebelumnya tidak berhasil, serta menjalankan kembali tugasnya dengan keyakinan baru.
","Menyesuaikan dan mulai menjalankan rencana dan strategi pengembangan dirinya dengan mempertimbangkan minat dan tuntutan pada konteks belajar maupun pekerjaan yang akan dijalaninya di masa depan, serta berusaha untuk mengatasi tantangan-tantangan yang ditemui.


Profil Pelajar Pancasila
Pilih Fase


Fase E

Dimensi & Elemen
Beriman, Bertakwa Kepada Tuhan Yang Maha Esa, dan Berakhlak Mulia
Berkebinekaan Global
Bergotong-Royong
Mandiri
Elemen


Pemahaman diri dan situasi yang dihadapi


Regulasi Diri

Bernalar Kritis
Kreatif"
","");
INSERT INTO m_sub_elemen VALUES("36","5","15","Mengajukan pertanyaan","Mengajukan pertanyaan untuk menjawab keingintahuannya dan untuk mengidentifikasi suatu permasalahan mengenai dirinya dan lingkungan sekitarnya.
","Mengajukan pertanyaan untuk mengidentifikasi suatu permasalahan dan mengkonfirmasi pemahaman terhadap suatu permasalahan mengenai dirinya dan lingkungan sekitarnya.
","Mengajukan pertanyaan untuk membandingkan berbagai informasi dan untuk menambah pengetahuannya.
","Mengajukan pertanyaan untuk klarifikasi dan interpretasi informasi, serta mencari tahu penyebab dan konsekuensi dari informasi tersebut.
","Mengajukan pertanyaan untuk menganalisis secara kritis permasalahan yang kompleks dan abstrak.
","");
INSERT INTO m_sub_elemen VALUES("37","5","15","Mengidentifikasi, mengklarifikasi, dan mengolah informasi dan gagasan","Mengidentifikasi dan mengolah informasi dan gagasan
","Mengumpulkan, mengklasifikasikan, membandingkan dan memilih informasi dan gagasan dari berbagai sumber.
","Mengumpulkan, mengklasifikasikan, membandingkan, dan memilih informasi dari berbagai sumber, serta memperjelas informasi dengan bimbingan orang dewasa.
","Mengidentifikasi, mengklarifikasi, dan menganalisis informasi yang relevan serta memprioritaskan beberapa gagasan tertentu.
","Secara kritis mengklarifikasi serta menganalisis gagasan dan informasi yang kompleks dan abstrak dari berbagai sumber. Memprioritaskan suatu gagasan yang paling relevan dari hasil klarifikasi dan analisis.
","");
INSERT INTO m_sub_elemen VALUES("38","5","16","Menganalisis dan mengevaluasi penalaran dan prosedurnya","Melakukan penalaran konkrit dan memberikan alasan dalam menyelesaikan masalah dan mengambil keputusan
","Menjelaskan alasan yang relevan dalam penyelesaian masalah dan pengambilan keputusan
","Menjelaskan alasan yang relevan dan akurat dalam penyelesaian masalah dan pengambilan keputusan
","Membuktikan penalaran dengan berbagai argumen dalam mengambil suatu simpulan atau keputusan.
","Menganalisis dan mengevaluasi penalaran yang digunakannya dalam menemukan dan mencari solusi serta mengambil keputusan.
","");
INSERT INTO m_sub_elemen VALUES("39","5","17","Merefleksi dan mengevaluasi pemikirannya sendiri","Menyampaikan apa yang sedang dipikirkan secara terperinci
","Menyampaikan apa yang sedang dipikirkan dan menjelaskan alasan dari hal yang dipikirkan
","Memberikan alasan dari hal yang dipikirkan, serta menyadari kemungkinan adanya bias pada pemikirannya sendiri

Profil Pelajar Pancasila
Pilih Fase


Fase C

Dimensi & Elemen"
","Menjelaskan asumsi yang digunakan, menyadari kecenderungan dan konsekuensi bias pada pemikirannya, serta berusaha mempertimbangkan perspektif yang berbeda.
","Menjelaskan alasan untuk mendukung pemikirannya dan memikirkan pandangan yang mungkin berlawanan dengan pemikirannya dan mengubah pemikirannya jika diperlukan.
","");
INSERT INTO m_sub_elemen VALUES("40","6","18","Menghasilkan gagasan yang orisinal","Menggabungkan beberapa gagasan menjadi ide atau gagasan imajinatif yang bermakna untuk mengekspresikan pikiran dan/atau perasaannya.
","Memunculkan gagasan imajinatif baru yang bermakna dari beberapa gagasan yang berbeda sebagai ekspresi pikiran dan/atau perasaannya.
","Mengembangkan gagasan yang ia miliki untuk membuat kombinasi hal yang baru dan imajinatif untuk mengekspresikan pikiran dan/atau perasaannya.
","Menghubungkan gagasan yang ia miliki dengan informasi atau gagasan baru untuk menghasilkan kombinasi gagasan baru dan imajinatif untuk mengekspresikan pikiran dan/atau perasaannya.
","Menghasilkan gagasan yang beragam untuk mengekspresikan pikiran dan/atau perasaannya, menilai gagasannya, serta memikirkan segala risikonya dengan mempertimbangkan banyak perspektif seperti etika dan nilai kemanusiaan ketika gagasannya direalisasikan.
","");
INSERT INTO m_sub_elemen VALUES("41","6","19","Menghasilkan karya dan tindakan yang orisinal","Mengeksplorasi dan mengekspresikan pikiran dan/atau perasaannya dalam bentuk karya dan/atau tindakan serta mengapresiasi karya dan tindakan yang dihasilkan
","Mengeksplorasi dan mengekspresikan pikiran dan/atau perasaannya sesuai dengan minat dan kesukaannya dalam bentuk karya dan/atau tindakan serta mengapresiasi karya dan tindakan yang dihasilkan
","Mengeksplorasi dan mengekspresikan pikiran dan/atau perasaannya sesuai dengan minat dan kesukaannya dalam bentuk karya dan/atau tindakan serta mengapresiasi dan mengkritik karya dan tindakan yang dihasilkan
","Mengeksplorasi dan mengekspresikan pikiran dan/atau perasaannya dalam bentuk karya dan/atau tindakan, serta mengevaluasinya dan mempertimbangkan dampaknya bagi orang lain
","Mengeksplorasi dan mengekspresikan pikiran dan/atau perasaannya dalam bentuk karya dan/atau tindakan, serta mengevaluasinya dan mempertimbangkan dampak dan risikonya bagi diri dan lingkungannya dengan menggunakan berbagai perspektif.
","");
INSERT INTO m_sub_elemen VALUES("42","6","20","Memiliki keluwesan berpikir dalam mencari alternatif solusi permasalahan","Mengidentifikasi gagasan-gagasan kreatif untuk menghadapi situasi dan permasalahan.
","Membandingkan gagasan-gagasan kreatif untuk menghadapi situasi dan permasalahan.
","berupaya mencari solusi alternatif saat pendekatan yang diambil tidak berhasil berdasarkan identifikasi terhadap situasi
","Menghasilkan solusi alternatif dengan mengadaptasi berbagai gagasan dan umpan balik untuk menghadapi situasi dan permasalahan
","Bereksperimen dengan berbagai pilihan secara kreatif untuk memodifikasi gagasan sesuai dengan perubahan situasi.
","");



CREATE TABLE `m_tugas` (
  `idt` int(11) NOT NULL AUTO_INCREMENT,
  `tugas` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idt`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO m_tugas VALUES("1","MENGAJAR");
INSERT INTO m_tugas VALUES("2","KURIKULUM");
INSERT INTO m_tugas VALUES("3","BENDAHARA");
INSERT INTO m_tugas VALUES("4","OPERATOR");
INSERT INTO m_tugas VALUES("5","ESKUL");
INSERT INTO m_tugas VALUES("6","WALI KELAS");
INSERT INTO m_tugas VALUES("7","BK");
INSERT INTO m_tugas VALUES("8","PEMBINA OSIS");



CREATE TABLE `mapel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(50) DEFAULT NULL,
  `nama_mapel` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

INSERT INTO mapel VALUES("1","PABP","Penddidikan Agama dan Budi Pekerti");
INSERT INTO mapel VALUES("2","PPKn","Pendidikan Pancasila dan Kewarganegaraan");
INSERT INTO mapel VALUES("3","BINDO","Bahasa Indonesia");
INSERT INTO mapel VALUES("4","MTK","Matematika");
INSERT INTO mapel VALUES("5","IPA","Ilmu Pengetahuan Alam");
INSERT INTO mapel VALUES("6","IPS","Ilmu Pengetahuan Sosial");
INSERT INTO mapel VALUES("7","BING","Bahasa Inggris");
INSERT INTO mapel VALUES("8","PJOK","Pendidikan Jasmani Olahraga dan Kesehatan");
INSERT INTO mapel VALUES("9","INFO","Informatika");
INSERT INTO mapel VALUES("10","PRK","Prakarya");
INSERT INTO mapel VALUES("11","BSUND","Bahasa Sunda");
INSERT INTO mapel VALUES("12","TIK","Tekhnologi Indormasi dan Komunikasi");



CREATE TABLE `mapel_ijazah` (
  `idmapel` int(11) NOT NULL AUTO_INCREMENT,
  `tingkat` varchar(50) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `namamapel` varchar(100) DEFAULT NULL,
  `kelompok` varchar(50) DEFAULT NULL,
  `urut` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmapel`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO mapel_ijazah VALUES("1","12","UMUM","PABP","Penddidikan Agama dan Budi Pekerti","A","1");



CREATE TABLE `mapel_rapor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nourut` int(11) DEFAULT NULL,
  `idmapel` varchar(50) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `level` varchar(11) DEFAULT NULL,
  `kelompok` varchar(11) DEFAULT NULL,
  `sikap` varchar(11) DEFAULT NULL,
  `kuri` varchar(11) DEFAULT NULL,
  `kkm` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO mapel_rapor VALUES("1","1","1","UMUM","10","A","","","");
INSERT INTO mapel_rapor VALUES("2","2","2","UMUM","10","A","","","");
INSERT INTO mapel_rapor VALUES("3","3","3","UMUM","10","A","","","");
INSERT INTO mapel_rapor VALUES("4","4","4","UMUM","10","A","","","");
INSERT INTO mapel_rapor VALUES("5","5","5","UMUM","10","A","","","");
INSERT INTO mapel_rapor VALUES("6","6","6","UMUM","10","A","","","");
INSERT INTO mapel_rapor VALUES("7","7","7","UMUM","10","A","","","");
INSERT INTO mapel_rapor VALUES("8","8","8","UMUM","10","A","","","");
INSERT INTO mapel_rapor VALUES("9","9","9","UMUM","10","A","","","");
INSERT INTO mapel_rapor VALUES("10","10","12","UMUM","10","A","","","");



CREATE TABLE `materi` (
  `idm` int(11) NOT NULL AUTO_INCREMENT,
  `mapel` varchar(11) DEFAULT NULL,
  `kelas` text DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `isimateri` longtext DEFAULT NULL,
  `file` text DEFAULT NULL,
  `youtube` text DEFAULT NULL,
  `link` text DEFAULT NULL,
  `dari` date DEFAULT NULL,
  `sampai` date DEFAULT NULL,
  PRIMARY KEY (`idm`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO materi VALUES("1","3","a:2:{i:0;s:3:"X-A";i:1;s:3:"X-B";}","3","Teks Anekdot","<h2>Pengertian Teks Anekdot</h2>
<p>Sederhananya,&nbsp;<strong>anekdot adalah cerita yang berisi rangkaian kalimat-kalimat lucu</strong>. Tapi,&nbsp;<strong>nggak semua cerita lucu bisa dikategorikan sebagai anekdot</strong>, lho!</p>
<p>Berdasarkan Kamus Besar Bahasa Indonesia (KBBI),&nbsp;<strong>teks anekdot adalah cerita singkat yang menarik karena lucu dan menghibur</strong>. Biasanya, teks anekdot menceritakan orang penting atau orang terkenal, dan berdasarkan kejadian sebenarnya.</p>
<p>Jadi, teks anekdot tidak hanya sembarang cerita lucu saja ya, melainkan&nbsp;<strong>berdasarkan kejadian nyata</strong>. Selain itu, teks anekdot juga membicarakan topik secara spesifik dan kadang kala&nbsp;<strong>dibuat berdasarkan&nbsp;pengalaman pribadi</strong>.</p>
<p>Biasanya, teks anekdot tidak menjelaskan cerita secara detail, sehingga dampak dari cerita yang ditampilkan pun berjangka pendek.</p>
<h2>Ciri-Ciri Teks Anekdot</h2>
<p>Berikut ciri-ciri teks anekdot yang perlu kamu tahu. Di antaranya:</p>
<ol>
<li>Bersifat lucu,</li>
<li>Bersifat menggelitik,</li>
<li>Bersifat menyindir,</li>
<li>Bisa berdasarkan pengalaman pribadi/tokoh,</li>
<li>Memiliki tujuan tertentu,</li>
<li>Hampir menyerupai dongeng,</li>
<li>Bisa menceritakan hubungan antara manusia dan hewan.</li>
</ol>
<p>&nbsp;</p>
<p>Nah, untuk penjelasan lengkapnya, kamu bisa perhatikan infografik berikut:</p>
<p><img class="aligncenter size-medium" src="https://cdn-web-2.ruangguru.com/landing-pages/assets/de6f56e0-6618-495b-accd-7afc26f77218.png" alt="ciri ciri teks anekdot" /></p>","Struktur dan Kebahasaan Teks Anekdot.pdf","QgpSSZBvTjE?si=EKLksvgNwiQWuUrO","https://drive.google.com/file/d/1j79uCbiojSrsEgDWkz24itwLzgl0Rj67/view?usp=drive_link","2025-06-16","2025-06-30");
INSERT INTO materi VALUES("2","4","a:2:{i:0;s:3:"X-A";i:1;s:3:"X-B";}","2","Mengenal Statistika dan Diagram Penyajian Data","<h2>Pengertian Data dan Statistika</h2>
<p><strong>Data</strong>&nbsp;<strong>adalah kumpulan informasi yang diperoleh dari suatu pengamatan</strong>. Informasi ini bisa berupa&nbsp;<strong>angka, lambang, atau keadaan objek yang sedang diamati</strong>. Misalnya, pada percobaan Biologi, kamu disuruh mengamati pertumbuhan tanaman kacang hijau.</p>
<p>Setiap beberapa hari sekali, kamu akan mencatat panjang batang tanaman untuk diamati pertumbuhannya. Dari hasil pengamatan itu, diperoleh catatan angka-angka panjang batang tanaman kacang hijau.&nbsp;<em>Nah</em>, angka-angka itulah yang kita sebut sebagai data.</p>
<p>Tabel Pertumbuhan Tanaman Kacang Hijau</p>
<p><img src="https://cdn-web.ruangguru.com/landing-pages/assets/hs/tabel%20kacang%20hijau.png" alt="tabel kacang hijau" width="286" /></p>
<p>&nbsp;</p>
<p>Berdasarkan jenisnya, data dikelompokkan menjadi dua, yaitu:</p>
<p>&nbsp;</p>
<h3><strong>1. Data Kualitatif</strong>&nbsp;</h3>
<p><strong>Data kualitatif adalah</strong>&nbsp;data yang menunjukkan&nbsp;<strong>sifat atau keadaan suatu objek</strong>&nbsp;dan tidak bisa diukur secara numerik.&nbsp;Contoh data, data kualitas beras bulan Februari 2020 yang kurang baik.&nbsp;<em>Nah</em>, data itu menunjukkan keadaan beras yang kurang baik, tapi kita&nbsp;<em>nggak</em>&nbsp;bisa mengukur keadaan kurang baik itu dengan angka.</p>
<p>&nbsp;</p>
<h3><strong>2. Data Kuantitatif</strong>&nbsp;</h3>
<p><strong>Data kuantitatif adalah</strong>&nbsp;data yang menunjukkan<strong>&nbsp;ukuran suatu objek</strong>, disajikan dalam bentuk angka, dan nilainya dapat berubah-ubah.&nbsp;<strong>Contoh data misalnya</strong>, data pertumbuhan panjang tanaman kacang hijau pada tabel di atas. Dari data itu, kita bisa mengetahui perubahan panjang batang kacang hijau dari angka yang diperoleh.</p>
<p>Setelah data terkumpul, data-data itu kemudian akan disusun, diolah, dan dianalisis untuk diperoleh sebuah kesimpulan.<em>&nbsp;Nah</em>, ilmu yang mempelajari bagaimana&nbsp;<strong>cara mengumpulkan, menyusun, menyajikan, menganalisis, dan merepresentasikan data adalah</strong>&nbsp;<strong>statistika</strong>.</p>
<p>Statistika ini banyak diterapkan di banyak bidang,<em>&nbsp;loh</em>. Misalnya dalam bidang ilmu sosial dan kependudukan, statistika dapat digunakan untuk berbagai tujuan, salah satunya sensus penduduk. Selain itu, dalam bidang ekonomi, statistika juga dapat digunakan untuk mengetahui perkembangan ekonomi suatu negara.</p>
<p><img src="https://cdn-web.ruangguru.com/landing-pages/assets/hs/sensus%20penduduk.jpg" alt="contoh pengambilan data sensus penduduk" width="600" /></p>
<p><em>Pelaksanaan sensus penduduk di suatu wilayah (sumber: bisnis.tempo.co)</em></p>
<p>&nbsp;</p>
<p><em>Nah</em>, dari penjelasan di atas, kita jadi tahu&nbsp;<em>nih</em>&nbsp;kalau untuk mengumpulkan dan mengolah data, kita perlu objek yang mau kita amati. Objek ini dibedakan menjadi dua, yaitu populasi dan sampel. Penjelasan lebih lengkapnya bisa kita simak di bawah ini, ya.</p>
<h2>Perbedaan Populasi dan Sampel</h2>
<p><strong>Populasi</strong>&nbsp;<strong>adalah keseluruhan objek yang menjadi sumber data penelitian</strong>. Populasi ini bisa berupa manusia, hewan, tumbuhan, peristiwa, dan lain sebagainya.</p>
<p>Sementara itu,&nbsp;<strong>sampel</strong>&nbsp;<strong>adalah bagian dari populasi yang dapat menggambarkan sifat atau ciri populasi tersebut</strong>. Sampel harus benar-benar dapat mewakili dan mencerminkan karakteristik dari populasi yang menjadi objek penelitian.</p>
<p>Sebagai contoh populasi atau contoh sampel, jikatabel kamu ingin melakukan penelitian terhadap siswa di sekolahmu mengenai kegiatan ekstrakurikuler yang mereka pilih. Oleh karena itu, yang menjadi populasi adalah seluruh siswa di sekolahmu.</p>
<p>Tapi, untuk memudahkan dan mempersingkat waktu, kamu juga masih bisa melakukan penelitian dengan mengambil beberapa sampel saja. Asal, sampel itu masih mewakili populasi yang menjadi objek penelitianmu. Misalnya, yang menjadi sampel adalah teman-teman sekelasmu.</p>","stati_mat2_2.pdf","bRFsxrujQI?si=4F42ZOX1qRD6QBgX","https://drive.google.com/file/d/1j79uCbiojSrsEgDWkz24itwLzgl0Rj67/view?usp=drive_link","2025-06-16","2025-06-30");



CREATE TABLE `menjodohkan` (
  `idbank` varchar(50) DEFAULT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `nomor` varchar(50) DEFAULT NULL,
  `jawab` varchar(50) DEFAULT NULL,
  `warna` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `mesin_absen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mesin` varchar(100) DEFAULT NULL,
  `depan` text DEFAULT NULL,
  `belakang` text DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO mesin_absen VALUES("1","RFID","KARTU.png","KARTU.png","Landscape");
INSERT INTO mesin_absen VALUES("2","BARCODE","KARTU.png","KARTU.png","Landscape");
INSERT INTO mesin_absen VALUES("3","FINGER PRINT","KARTU.png","KARTU.png","Landscape");
INSERT INTO mesin_absen VALUES("4","FACE RECOGNITION","KARTU.png","KARTU.png","Landscape");



CREATE TABLE `model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mode` int(11) NOT NULL,
  `jml` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

INSERT INTO model VALUES("1","1","1");
INSERT INTO model VALUES("2","2","1");
INSERT INTO model VALUES("3","2","2");
INSERT INTO model VALUES("4","2","3");
INSERT INTO model VALUES("5","2","4");
INSERT INTO model VALUES("6","2","5");
INSERT INTO model VALUES("7","2","6");
INSERT INTO model VALUES("8","2","7");
INSERT INTO model VALUES("9","2","8");
INSERT INTO model VALUES("10","2","9");
INSERT INTO model VALUES("11","2","10");
INSERT INTO model VALUES("12","2","11");
INSERT INTO model VALUES("13","2","12");



CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
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
  `hapus` int(11) DEFAULT 0,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `nilai_formatif` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `mapel` varchar(50) DEFAULT NULL,
  `tinggi` longtext DEFAULT NULL,
  `rendah` longtext DEFAULT NULL,
  `smt` varchar(11) DEFAULT NULL,
  `tp` varchar(50) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `nilai_harian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(11) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  `nilai` varchar(11) DEFAULT NULL,
  `smt` varchar(11) DEFAULT NULL,
  `tp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8;

INSERT INTO nilai_harian VALUES("1","2025-06-12","3","1","X-A","3","85","1","2024/2025");
INSERT INTO nilai_harian VALUES("2","2025-06-12","3","2","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("3","2025-06-12","3","3","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("4","2025-06-12","3","4","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("5","2025-06-12","3","5","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("6","2025-06-12","3","6","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("7","2025-06-12","3","7","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("8","2025-06-12","3","8","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("9","2025-06-12","3","9","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("10","2025-06-12","3","10","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("11","2025-06-12","3","11","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("12","2025-06-12","3","12","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("13","2025-06-12","3","13","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("14","2025-06-12","3","14","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("15","2025-06-12","3","15","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("16","2025-06-12","3","16","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("17","2025-06-12","3","17","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("18","2025-06-12","3","18","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("19","2025-06-12","3","19","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("20","2025-06-12","3","20","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("21","2025-06-12","3","21","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("22","2025-06-12","3","22","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("23","2025-06-12","3","23","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("24","2025-06-12","3","24","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("25","2025-06-12","3","25","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("26","2025-06-12","3","26","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("27","2025-06-12","3","27","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("28","2025-06-12","3","28","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("29","2025-06-12","3","29","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("30","2025-06-12","3","30","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("31","2025-06-12","3","31","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("32","2025-06-12","3","32","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("33","2025-06-12","3","33","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("34","2025-06-12","3","34","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("35","2025-06-12","3","35","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("36","2025-06-12","3","36","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("37","2025-06-12","3","37","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("38","2025-06-12","3","1","X-A","3","85","1","2024/2025");
INSERT INTO nilai_harian VALUES("39","2025-06-12","3","2","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("40","2025-06-12","3","3","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("41","2025-06-12","3","4","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("42","2025-06-12","3","5","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("43","2025-06-12","3","6","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("44","2025-06-12","3","7","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("45","2025-06-12","3","8","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("46","2025-06-12","3","9","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("47","2025-06-12","3","10","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("48","2025-06-12","3","11","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("49","2025-06-12","3","12","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("50","2025-06-12","3","13","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("51","2025-06-12","3","14","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("52","2025-06-12","3","15","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("53","2025-06-12","3","16","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("54","2025-06-12","3","17","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("55","2025-06-12","3","18","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("56","2025-06-12","3","19","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("57","2025-06-12","3","20","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("58","2025-06-12","3","21","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("59","2025-06-12","3","22","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("60","2025-06-12","3","23","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("61","2025-06-12","3","24","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("62","2025-06-12","3","25","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("63","2025-06-12","3","26","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("64","2025-06-12","3","27","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("65","2025-06-12","3","28","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("66","2025-06-12","3","29","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("67","2025-06-12","3","30","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("68","2025-06-12","3","31","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("69","2025-06-12","3","32","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("70","2025-06-12","3","33","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("71","2025-06-12","3","34","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("72","2025-06-12","3","35","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("73","2025-06-12","3","36","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("74","2025-06-12","3","37","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("75","2025-06-12","3","1","X-A","3","85","1","2024/2025");
INSERT INTO nilai_harian VALUES("76","2025-06-12","3","2","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("77","2025-06-12","3","3","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("78","2025-06-12","3","4","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("79","2025-06-12","3","5","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("80","2025-06-12","3","6","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("81","2025-06-12","3","7","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("82","2025-06-12","3","8","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("83","2025-06-12","3","9","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("84","2025-06-12","3","10","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("85","2025-06-12","3","11","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("86","2025-06-12","3","12","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("87","2025-06-12","3","13","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("88","2025-06-12","3","14","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("89","2025-06-12","3","15","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("90","2025-06-12","3","16","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("91","2025-06-12","3","17","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("92","2025-06-12","3","18","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("93","2025-06-12","3","19","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("94","2025-06-12","3","20","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("95","2025-06-12","3","21","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("96","2025-06-12","3","22","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("97","2025-06-12","3","23","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("98","2025-06-12","3","24","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("99","2025-06-12","3","25","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("100","2025-06-12","3","26","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("101","2025-06-12","3","27","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("102","2025-06-12","3","28","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("103","2025-06-12","3","29","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("104","2025-06-12","3","30","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("105","2025-06-12","3","31","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("106","2025-06-12","3","32","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("107","2025-06-12","3","33","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("108","2025-06-12","3","34","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("109","2025-06-12","3","35","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("110","2025-06-12","3","36","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("111","2025-06-12","3","37","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("112","2025-06-12","3","1","X-A","3","85","1","2024/2025");
INSERT INTO nilai_harian VALUES("113","2025-06-12","3","2","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("114","2025-06-12","3","3","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("115","2025-06-12","3","4","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("116","2025-06-12","3","5","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("117","2025-06-12","3","6","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("118","2025-06-12","3","7","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("119","2025-06-12","3","8","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("120","2025-06-12","3","9","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("121","2025-06-12","3","10","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("122","2025-06-12","3","11","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("123","2025-06-12","3","12","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("124","2025-06-12","3","13","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("125","2025-06-12","3","14","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("126","2025-06-12","3","15","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("127","2025-06-12","3","16","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("128","2025-06-12","3","17","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("129","2025-06-12","3","18","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("130","2025-06-12","3","19","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("131","2025-06-12","3","20","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("132","2025-06-12","3","21","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("133","2025-06-12","3","22","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("134","2025-06-12","3","23","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("135","2025-06-12","3","24","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("136","2025-06-12","3","25","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("137","2025-06-12","3","26","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("138","2025-06-12","3","27","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("139","2025-06-12","3","28","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("140","2025-06-12","3","29","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("141","2025-06-12","3","30","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("142","2025-06-12","3","31","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("143","2025-06-12","3","32","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("144","2025-06-12","3","33","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("145","2025-06-12","3","34","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("146","2025-06-12","3","35","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("147","2025-06-12","3","36","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("148","2025-06-12","3","37","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("149","2025-06-12","3","1","X-A","3","85","1","2024/2025");
INSERT INTO nilai_harian VALUES("150","2025-06-12","3","2","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("151","2025-06-12","3","3","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("152","2025-06-12","3","4","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("153","2025-06-12","3","5","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("154","2025-06-12","3","6","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("155","2025-06-12","3","7","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("156","2025-06-12","3","8","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("157","2025-06-12","3","9","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("158","2025-06-12","3","10","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("159","2025-06-12","3","11","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("160","2025-06-12","3","12","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("161","2025-06-12","3","13","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("162","2025-06-12","3","14","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("163","2025-06-12","3","15","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("164","2025-06-12","3","16","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("165","2025-06-12","3","17","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("166","2025-06-12","3","18","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("167","2025-06-12","3","19","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("168","2025-06-12","3","20","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("169","2025-06-12","3","21","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("170","2025-06-12","3","22","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("171","2025-06-12","3","23","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("172","2025-06-12","3","24","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("173","2025-06-12","3","25","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("174","2025-06-12","3","26","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("175","2025-06-12","3","27","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("176","2025-06-12","3","28","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("177","2025-06-12","3","29","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("178","2025-06-12","3","30","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("179","2025-06-12","3","31","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("180","2025-06-12","3","32","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("181","2025-06-12","3","33","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("182","2025-06-12","3","34","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("183","2025-06-12","3","35","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("184","2025-06-12","3","36","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("185","2025-06-12","3","37","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("186","2025-06-12","3","1","X-A","3","85","1","2024/2025");
INSERT INTO nilai_harian VALUES("187","2025-06-12","3","2","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("188","2025-06-12","3","3","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("189","2025-06-12","3","4","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("190","2025-06-12","3","5","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("191","2025-06-12","3","6","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("192","2025-06-12","3","7","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("193","2025-06-12","3","8","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("194","2025-06-12","3","9","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("195","2025-06-12","3","10","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("196","2025-06-12","3","11","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("197","2025-06-12","3","12","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("198","2025-06-12","3","13","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("199","2025-06-12","3","14","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("200","2025-06-12","3","15","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("201","2025-06-12","3","16","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("202","2025-06-12","3","17","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("203","2025-06-12","3","18","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("204","2025-06-12","3","19","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("205","2025-06-12","3","20","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("206","2025-06-12","3","21","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("207","2025-06-12","3","22","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("208","2025-06-12","3","23","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("209","2025-06-12","3","24","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("210","2025-06-12","3","25","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("211","2025-06-12","3","26","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("212","2025-06-12","3","27","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("213","2025-06-12","3","28","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("214","2025-06-12","3","29","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("215","2025-06-12","3","30","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("216","2025-06-12","3","31","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("217","2025-06-12","3","32","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("218","2025-06-12","3","33","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("219","2025-06-12","3","34","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("220","2025-06-12","3","35","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("221","2025-06-12","3","36","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("222","2025-06-12","3","37","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("223","2025-06-12","3","1","X-A","3","2","1","2024/2025");
INSERT INTO nilai_harian VALUES("224","2025-06-12","3","2","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("225","2025-06-12","3","3","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("226","2025-06-12","3","4","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("227","2025-06-12","3","5","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("228","2025-06-12","3","6","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("229","2025-06-12","3","7","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("230","2025-06-12","3","8","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("231","2025-06-12","3","9","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("232","2025-06-12","3","10","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("233","2025-06-12","3","11","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("234","2025-06-12","3","12","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("235","2025-06-12","3","13","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("236","2025-06-12","3","14","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("237","2025-06-12","3","15","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("238","2025-06-12","3","16","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("239","2025-06-12","3","17","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("240","2025-06-12","3","18","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("241","2025-06-12","3","19","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("242","2025-06-12","3","20","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("243","2025-06-12","3","21","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("244","2025-06-12","3","22","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("245","2025-06-12","3","23","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("246","2025-06-12","3","24","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("247","2025-06-12","3","25","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("248","2025-06-12","3","26","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("249","2025-06-12","3","27","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("250","2025-06-12","3","28","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("251","2025-06-12","3","29","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("252","2025-06-12","3","30","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("253","2025-06-12","3","31","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("254","2025-06-12","3","32","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("255","2025-06-12","3","33","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("256","2025-06-12","3","34","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("257","2025-06-12","3","35","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("258","2025-06-12","3","36","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("259","2025-06-12","3","37","X-A","3","0","1","2024/2025");
INSERT INTO nilai_harian VALUES("260","2025-06-16","5","1","X-A","2","80","1","2024/2025");
INSERT INTO nilai_harian VALUES("261","2025-06-16","5","2","X-A","2","85","1","2024/2025");
INSERT INTO nilai_harian VALUES("262","2025-06-16","5","3","X-A","2","80","1","2024/2025");
INSERT INTO nilai_harian VALUES("263","2025-06-16","5","4","X-A","2","88","1","2024/2025");
INSERT INTO nilai_harian VALUES("264","2025-06-16","5","5","X-A","2","86","1","2024/2025");
INSERT INTO nilai_harian VALUES("265","2025-06-16","5","6","X-A","2","84","1","2024/2025");
INSERT INTO nilai_harian VALUES("266","2025-06-16","5","7","X-A","2","86","1","2024/2025");
INSERT INTO nilai_harian VALUES("267","2025-06-16","5","8","X-A","2","96","1","2024/2025");
INSERT INTO nilai_harian VALUES("268","2025-06-16","5","9","X-A","2","95","1","2024/2025");
INSERT INTO nilai_harian VALUES("269","2025-06-16","5","10","X-A","2","93","1","2024/2025");
INSERT INTO nilai_harian VALUES("270","2025-06-16","5","11","X-A","2","89","1","2024/2025");
INSERT INTO nilai_harian VALUES("271","2025-06-16","5","12","X-A","2","97","1","2024/2025");
INSERT INTO nilai_harian VALUES("272","2025-06-16","5","13","X-A","2","92","1","2024/2025");
INSERT INTO nilai_harian VALUES("273","2025-06-16","5","14","X-A","2","55","1","2024/2025");
INSERT INTO nilai_harian VALUES("274","2025-06-16","5","15","X-A","2","76","1","2024/2025");
INSERT INTO nilai_harian VALUES("275","2025-06-16","5","16","X-A","2","69","1","2024/2025");
INSERT INTO nilai_harian VALUES("276","2025-06-16","5","17","X-A","2","89","1","2024/2025");
INSERT INTO nilai_harian VALUES("277","2025-06-16","5","18","X-A","2","90","1","2024/2025");
INSERT INTO nilai_harian VALUES("278","2025-06-16","5","19","X-A","2","92","1","2024/2025");
INSERT INTO nilai_harian VALUES("279","2025-06-16","5","20","X-A","2","92","1","2024/2025");
INSERT INTO nilai_harian VALUES("280","2025-06-16","5","21","X-A","2","90","1","2024/2025");
INSERT INTO nilai_harian VALUES("281","2025-06-16","5","22","X-A","2","79","1","2024/2025");
INSERT INTO nilai_harian VALUES("282","2025-06-16","5","23","X-A","2","87","1","2024/2025");
INSERT INTO nilai_harian VALUES("283","2025-06-16","5","24","X-A","2","89","1","2024/2025");
INSERT INTO nilai_harian VALUES("284","2025-06-16","5","25","X-A","2","75","1","2024/2025");



CREATE TABLE `nilai_k13` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `desmin` text DEFAULT NULL,
  `desmax` text DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  `smt` varchar(11) DEFAULT NULL,
  `tp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `nilai_proses` (
  `idpros` int(11) NOT NULL AUTO_INCREMENT,
  `idsiswa` int(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `proyek_ke` varchar(50) DEFAULT NULL,
  `catatan` mediumtext DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  PRIMARY KEY (`idpros`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO nilai_proses VALUES("1","1","X-A","Proyek 1","Kepedulian ABIWANTA AGUNG untuk menjual barang yang berkualitas patut diapresiasi. Tidak hanya mengutamakan keuntungan, tetapi juga fungsi dari barang itu sendiri.","1");



CREATE TABLE `nilai_proyek` (
  `idn` int(11) NOT NULL AUTO_INCREMENT,
  `kelas` varchar(50) DEFAULT NULL,
  `idsiswa` int(11) DEFAULT NULL,
  `idproyek` int(11) DEFAULT NULL,
  `proyek` int(11) DEFAULT NULL,
  `nilai` varchar(5) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  PRIMARY KEY (`idn`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

INSERT INTO nilai_proyek VALUES("1","X-A","1","1","1","SB","1");
INSERT INTO nilai_proyek VALUES("2","X-A","2","1","1","MB","1");
INSERT INTO nilai_proyek VALUES("3","X-A","3","1","1","SB","1");
INSERT INTO nilai_proyek VALUES("4","X-A","4","1","1","BB","1");
INSERT INTO nilai_proyek VALUES("5","X-A","5","1","1","BB","1");
INSERT INTO nilai_proyek VALUES("6","X-A","6","1","1","BB","1");
INSERT INTO nilai_proyek VALUES("7","X-A","7","1","1","BB","1");
INSERT INTO nilai_proyek VALUES("8","X-A","8","1","1","BB","1");
INSERT INTO nilai_proyek VALUES("9","X-A","9","1","1","BB","1");
INSERT INTO nilai_proyek VALUES("10","X-A","10","1","1","BB","1");
INSERT INTO nilai_proyek VALUES("11","X-A","11","1","1","BB","1");
INSERT INTO nilai_proyek VALUES("12","X-A","12","1","1","BB","1");
INSERT INTO nilai_proyek VALUES("13","X-A","13","1","1","BB","1");
INSERT INTO nilai_proyek VALUES("14","X-A","14","1","1","BB","1");
INSERT INTO nilai_proyek VALUES("15","X-A","15","1","1","BB","1");
INSERT INTO nilai_proyek VALUES("16","X-A","16","1","1","BB","1");
INSERT INTO nilai_proyek VALUES("17","X-A","17","1","1","BB","1");
INSERT INTO nilai_proyek VALUES("18","X-A","18","1","1","BB","1");
INSERT INTO nilai_proyek VALUES("19","X-A","19","1","1","BB","1");
INSERT INTO nilai_proyek VALUES("20","X-A","20","1","1","BB","1");
INSERT INTO nilai_proyek VALUES("21","X-A","21","1","1","BB","1");
INSERT INTO nilai_proyek VALUES("22","X-A","22","1","1","BB","1");
INSERT INTO nilai_proyek VALUES("23","X-A","23","1","1","BB","1");
INSERT INTO nilai_proyek VALUES("24","X-A","24","1","1","BB","1");
INSERT INTO nilai_proyek VALUES("25","X-A","25","1","1","BB","1");



CREATE TABLE `nilai_rapor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mapel` varchar(11) DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `level` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  `ki` varchar(11) DEFAULT NULL,
  `nilai` varchar(11) DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `smt` varchar(11) DEFAULT NULL,
  `tp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `nilai_refleksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `nilai` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO nilai_refleksi VALUES("1","2025-06-07","","3","A");



CREATE TABLE `nilai_sikap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `desmin` text DEFAULT NULL,
  `desmax` text DEFAULT NULL,
  `pred` varchar(11) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  `smt` varchar(11) DEFAULT NULL,
  `tp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `nilai_skl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `nilai` varchar(50) DEFAULT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `ki` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

INSERT INTO nilai_skl VALUES("1","1","X-A","1","UMUM","90","SMT-1","SMT","");
INSERT INTO nilai_skl VALUES("2","2","X-A","1","UMUM","90","SMT-1","SMT","");
INSERT INTO nilai_skl VALUES("3","3","X-A","1","UMUM","90","SMT-1","SMT","");
INSERT INTO nilai_skl VALUES("4","4","X-A","1","UMUM","90","SMT-1","SMT","");
INSERT INTO nilai_skl VALUES("5","5","X-A","1","UMUM","90","SMT-1","SMT","");
INSERT INTO nilai_skl VALUES("6","6","X-A","1","UMUM","90","SMT-1","SMT","");
INSERT INTO nilai_skl VALUES("7","7","X-A","1","UMUM","90","SMT-1","SMT","");
INSERT INTO nilai_skl VALUES("8","8","X-A","1","UMUM","90","SMT-1","SMT","");
INSERT INTO nilai_skl VALUES("9","9","X-A","1","UMUM","90","SMT-1","SMT","");
INSERT INTO nilai_skl VALUES("10","10","X-A","1","UMUM","90","SMT-1","SMT","");
INSERT INTO nilai_skl VALUES("11","11","X-A","1","UMUM","90","SMT-1","SMT","");
INSERT INTO nilai_skl VALUES("12","12","X-A","1","UMUM","90","SMT-1","SMT","");
INSERT INTO nilai_skl VALUES("13","13","X-A","1","UMUM","90","SMT-1","SMT","");
INSERT INTO nilai_skl VALUES("14","14","X-A","1","UMUM","90","SMT-1","SMT","");
INSERT INTO nilai_skl VALUES("15","15","X-A","1","UMUM","90","SMT-1","SMT","");
INSERT INTO nilai_skl VALUES("16","16","X-A","1","UMUM","90","SMT-1","SMT","");
INSERT INTO nilai_skl VALUES("17","17","X-A","1","UMUM","90","SMT-1","SMT","");
INSERT INTO nilai_skl VALUES("18","18","X-A","1","UMUM","90","SMT-1","SMT","");
INSERT INTO nilai_skl VALUES("19","19","X-A","1","UMUM","90","SMT-1","SMT","");
INSERT INTO nilai_skl VALUES("20","20","X-A","1","UMUM","90","SMT-1","SMT","");
INSERT INTO nilai_skl VALUES("21","21","X-A","1","UMUM","90","SMT-1","SMT","");
INSERT INTO nilai_skl VALUES("22","22","X-A","1","UMUM","90","SMT-1","SMT","");
INSERT INTO nilai_skl VALUES("23","23","X-A","1","UMUM","90","SMT-1","SMT","");
INSERT INTO nilai_skl VALUES("24","24","X-A","1","UMUM","90","SMT-1","SMT","");
INSERT INTO nilai_skl VALUES("25","25","X-A","1","UMUM","90","SMT-1","SMT","");
INSERT INTO nilai_skl VALUES("26","1","X-A","1","UMUM","92","SMT-2","SMT","");
INSERT INTO nilai_skl VALUES("27","2","X-A","1","UMUM","92","SMT-2","SMT","");
INSERT INTO nilai_skl VALUES("28","3","X-A","1","UMUM","92","SMT-2","SMT","");
INSERT INTO nilai_skl VALUES("29","4","X-A","1","UMUM","92","SMT-2","SMT","");
INSERT INTO nilai_skl VALUES("30","5","X-A","1","UMUM","92","SMT-2","SMT","");
INSERT INTO nilai_skl VALUES("31","6","X-A","1","UMUM","92","SMT-2","SMT","");
INSERT INTO nilai_skl VALUES("32","7","X-A","1","UMUM","92","SMT-2","SMT","");
INSERT INTO nilai_skl VALUES("33","8","X-A","1","UMUM","92","SMT-2","SMT","");
INSERT INTO nilai_skl VALUES("34","9","X-A","1","UMUM","92","SMT-2","SMT","");
INSERT INTO nilai_skl VALUES("35","10","X-A","1","UMUM","92","SMT-2","SMT","");
INSERT INTO nilai_skl VALUES("36","11","X-A","1","UMUM","92","SMT-2","SMT","");
INSERT INTO nilai_skl VALUES("37","12","X-A","1","UMUM","92","SMT-2","SMT","");
INSERT INTO nilai_skl VALUES("38","13","X-A","1","UMUM","92","SMT-2","SMT","");
INSERT INTO nilai_skl VALUES("39","14","X-A","1","UMUM","92","SMT-2","SMT","");
INSERT INTO nilai_skl VALUES("40","15","X-A","1","UMUM","92","SMT-2","SMT","");
INSERT INTO nilai_skl VALUES("41","16","X-A","1","UMUM","92","SMT-2","SMT","");
INSERT INTO nilai_skl VALUES("42","17","X-A","1","UMUM","92","SMT-2","SMT","");
INSERT INTO nilai_skl VALUES("43","18","X-A","1","UMUM","92","SMT-2","SMT","");
INSERT INTO nilai_skl VALUES("44","19","X-A","1","UMUM","92","SMT-2","SMT","");
INSERT INTO nilai_skl VALUES("45","20","X-A","1","UMUM","92","SMT-2","SMT","");
INSERT INTO nilai_skl VALUES("46","21","X-A","1","UMUM","92","SMT-2","SMT","");
INSERT INTO nilai_skl VALUES("47","22","X-A","1","UMUM","92","SMT-2","SMT","");
INSERT INTO nilai_skl VALUES("48","23","X-A","1","UMUM","92","SMT-2","SMT","");
INSERT INTO nilai_skl VALUES("49","24","X-A","1","UMUM","92","SMT-2","SMT","");
INSERT INTO nilai_skl VALUES("50","25","X-A","1","UMUM","92","SMT-2","SMT","");
INSERT INTO nilai_skl VALUES("51","1","X-A","1","UMUM","93","SMT-3","SMT","");
INSERT INTO nilai_skl VALUES("52","2","X-A","1","UMUM","93","SMT-3","SMT","");
INSERT INTO nilai_skl VALUES("53","3","X-A","1","UMUM","93","SMT-3","SMT","");
INSERT INTO nilai_skl VALUES("54","4","X-A","1","UMUM","93","SMT-3","SMT","");
INSERT INTO nilai_skl VALUES("55","5","X-A","1","UMUM","93","SMT-3","SMT","");
INSERT INTO nilai_skl VALUES("56","6","X-A","1","UMUM","93","SMT-3","SMT","");
INSERT INTO nilai_skl VALUES("57","7","X-A","1","UMUM","93","SMT-3","SMT","");
INSERT INTO nilai_skl VALUES("58","8","X-A","1","UMUM","93","SMT-3","SMT","");
INSERT INTO nilai_skl VALUES("59","9","X-A","1","UMUM","93","SMT-3","SMT","");
INSERT INTO nilai_skl VALUES("60","10","X-A","1","UMUM","93","SMT-3","SMT","");
INSERT INTO nilai_skl VALUES("61","11","X-A","1","UMUM","93","SMT-3","SMT","");
INSERT INTO nilai_skl VALUES("62","12","X-A","1","UMUM","93","SMT-3","SMT","");
INSERT INTO nilai_skl VALUES("63","13","X-A","1","UMUM","93","SMT-3","SMT","");
INSERT INTO nilai_skl VALUES("64","14","X-A","1","UMUM","93","SMT-3","SMT","");
INSERT INTO nilai_skl VALUES("65","15","X-A","1","UMUM","93","SMT-3","SMT","");
INSERT INTO nilai_skl VALUES("66","16","X-A","1","UMUM","93","SMT-3","SMT","");
INSERT INTO nilai_skl VALUES("67","17","X-A","1","UMUM","93","SMT-3","SMT","");
INSERT INTO nilai_skl VALUES("68","18","X-A","1","UMUM","93","SMT-3","SMT","");
INSERT INTO nilai_skl VALUES("69","19","X-A","1","UMUM","93","SMT-3","SMT","");
INSERT INTO nilai_skl VALUES("70","20","X-A","1","UMUM","93","SMT-3","SMT","");
INSERT INTO nilai_skl VALUES("71","21","X-A","1","UMUM","93","SMT-3","SMT","");
INSERT INTO nilai_skl VALUES("72","22","X-A","1","UMUM","93","SMT-3","SMT","");
INSERT INTO nilai_skl VALUES("73","23","X-A","1","UMUM","93","SMT-3","SMT","");
INSERT INTO nilai_skl VALUES("74","24","X-A","1","UMUM","93","SMT-3","SMT","");
INSERT INTO nilai_skl VALUES("75","25","X-A","1","UMUM","93","SMT-3","SMT","");
INSERT INTO nilai_skl VALUES("76","1","X-A","1","UMUM","95","SMT-4","SMT","");
INSERT INTO nilai_skl VALUES("77","2","X-A","1","UMUM","95","SMT-4","SMT","");
INSERT INTO nilai_skl VALUES("78","3","X-A","1","UMUM","95","SMT-4","SMT","");
INSERT INTO nilai_skl VALUES("79","4","X-A","1","UMUM","95","SMT-4","SMT","");
INSERT INTO nilai_skl VALUES("80","5","X-A","1","UMUM","95","SMT-4","SMT","");
INSERT INTO nilai_skl VALUES("81","6","X-A","1","UMUM","95","SMT-4","SMT","");
INSERT INTO nilai_skl VALUES("82","7","X-A","1","UMUM","95","SMT-4","SMT","");
INSERT INTO nilai_skl VALUES("83","8","X-A","1","UMUM","95","SMT-4","SMT","");
INSERT INTO nilai_skl VALUES("84","9","X-A","1","UMUM","95","SMT-4","SMT","");
INSERT INTO nilai_skl VALUES("85","10","X-A","1","UMUM","95","SMT-4","SMT","");
INSERT INTO nilai_skl VALUES("86","11","X-A","1","UMUM","95","SMT-4","SMT","");
INSERT INTO nilai_skl VALUES("87","12","X-A","1","UMUM","95","SMT-4","SMT","");
INSERT INTO nilai_skl VALUES("88","13","X-A","1","UMUM","95","SMT-4","SMT","");
INSERT INTO nilai_skl VALUES("89","14","X-A","1","UMUM","95","SMT-4","SMT","");
INSERT INTO nilai_skl VALUES("90","15","X-A","1","UMUM","95","SMT-4","SMT","");
INSERT INTO nilai_skl VALUES("91","16","X-A","1","UMUM","95","SMT-4","SMT","");
INSERT INTO nilai_skl VALUES("92","17","X-A","1","UMUM","95","SMT-4","SMT","");
INSERT INTO nilai_skl VALUES("93","18","X-A","1","UMUM","95","SMT-4","SMT","");
INSERT INTO nilai_skl VALUES("94","19","X-A","1","UMUM","95","SMT-4","SMT","");
INSERT INTO nilai_skl VALUES("95","20","X-A","1","UMUM","95","SMT-4","SMT","");
INSERT INTO nilai_skl VALUES("96","21","X-A","1","UMUM","95","SMT-4","SMT","");
INSERT INTO nilai_skl VALUES("97","22","X-A","1","UMUM","95","SMT-4","SMT","");
INSERT INTO nilai_skl VALUES("98","23","X-A","1","UMUM","95","SMT-4","SMT","");
INSERT INTO nilai_skl VALUES("99","24","X-A","1","UMUM","95","SMT-4","SMT","");
INSERT INTO nilai_skl VALUES("100","25","X-A","1","UMUM","95","SMT-4","SMT","");
INSERT INTO nilai_skl VALUES("101","1","X-A","1","UMUM","96","SMT-5","SMT","");
INSERT INTO nilai_skl VALUES("102","2","X-A","1","UMUM","96","SMT-5","SMT","");
INSERT INTO nilai_skl VALUES("103","3","X-A","1","UMUM","96","SMT-5","SMT","");
INSERT INTO nilai_skl VALUES("104","4","X-A","1","UMUM","96","SMT-5","SMT","");
INSERT INTO nilai_skl VALUES("105","5","X-A","1","UMUM","96","SMT-5","SMT","");
INSERT INTO nilai_skl VALUES("106","6","X-A","1","UMUM","96","SMT-5","SMT","");
INSERT INTO nilai_skl VALUES("107","7","X-A","1","UMUM","96","SMT-5","SMT","");
INSERT INTO nilai_skl VALUES("108","8","X-A","1","UMUM","96","SMT-5","SMT","");
INSERT INTO nilai_skl VALUES("109","9","X-A","1","UMUM","96","SMT-5","SMT","");
INSERT INTO nilai_skl VALUES("110","10","X-A","1","UMUM","96","SMT-5","SMT","");
INSERT INTO nilai_skl VALUES("111","11","X-A","1","UMUM","96","SMT-5","SMT","");
INSERT INTO nilai_skl VALUES("112","12","X-A","1","UMUM","96","SMT-5","SMT","");
INSERT INTO nilai_skl VALUES("113","13","X-A","1","UMUM","96","SMT-5","SMT","");
INSERT INTO nilai_skl VALUES("114","14","X-A","1","UMUM","96","SMT-5","SMT","");
INSERT INTO nilai_skl VALUES("115","15","X-A","1","UMUM","96","SMT-5","SMT","");
INSERT INTO nilai_skl VALUES("116","16","X-A","1","UMUM","96","SMT-5","SMT","");
INSERT INTO nilai_skl VALUES("117","17","X-A","1","UMUM","96","SMT-5","SMT","");
INSERT INTO nilai_skl VALUES("118","18","X-A","1","UMUM","96","SMT-5","SMT","");
INSERT INTO nilai_skl VALUES("119","19","X-A","1","UMUM","96","SMT-5","SMT","");
INSERT INTO nilai_skl VALUES("120","20","X-A","1","UMUM","96","SMT-5","SMT","");
INSERT INTO nilai_skl VALUES("121","21","X-A","1","UMUM","96","SMT-5","SMT","");
INSERT INTO nilai_skl VALUES("122","22","X-A","1","UMUM","96","SMT-5","SMT","");
INSERT INTO nilai_skl VALUES("123","23","X-A","1","UMUM","96","SMT-5","SMT","");
INSERT INTO nilai_skl VALUES("124","24","X-A","1","UMUM","96","SMT-5","SMT","");
INSERT INTO nilai_skl VALUES("125","25","X-A","1","UMUM","96","SMT-5","SMT","");
INSERT INTO nilai_skl VALUES("126","1","X-A","1","UMUM","97","SMT-6","SMT","");
INSERT INTO nilai_skl VALUES("127","2","X-A","1","UMUM","97","SMT-6","SMT","");
INSERT INTO nilai_skl VALUES("128","3","X-A","1","UMUM","97","SMT-6","SMT","");
INSERT INTO nilai_skl VALUES("129","4","X-A","1","UMUM","97","SMT-6","SMT","");
INSERT INTO nilai_skl VALUES("130","5","X-A","1","UMUM","97","SMT-6","SMT","");
INSERT INTO nilai_skl VALUES("131","6","X-A","1","UMUM","97","SMT-6","SMT","");
INSERT INTO nilai_skl VALUES("132","7","X-A","1","UMUM","97","SMT-6","SMT","");
INSERT INTO nilai_skl VALUES("133","8","X-A","1","UMUM","97","SMT-6","SMT","");
INSERT INTO nilai_skl VALUES("134","9","X-A","1","UMUM","97","SMT-6","SMT","");
INSERT INTO nilai_skl VALUES("135","10","X-A","1","UMUM","97","SMT-6","SMT","");
INSERT INTO nilai_skl VALUES("136","11","X-A","1","UMUM","97","SMT-6","SMT","");
INSERT INTO nilai_skl VALUES("137","12","X-A","1","UMUM","97","SMT-6","SMT","");
INSERT INTO nilai_skl VALUES("138","13","X-A","1","UMUM","97","SMT-6","SMT","");
INSERT INTO nilai_skl VALUES("139","14","X-A","1","UMUM","97","SMT-6","SMT","");
INSERT INTO nilai_skl VALUES("140","15","X-A","1","UMUM","97","SMT-6","SMT","");
INSERT INTO nilai_skl VALUES("141","16","X-A","1","UMUM","97","SMT-6","SMT","");
INSERT INTO nilai_skl VALUES("142","17","X-A","1","UMUM","97","SMT-6","SMT","");
INSERT INTO nilai_skl VALUES("143","18","X-A","1","UMUM","97","SMT-6","SMT","");
INSERT INTO nilai_skl VALUES("144","19","X-A","1","UMUM","97","SMT-6","SMT","");
INSERT INTO nilai_skl VALUES("145","20","X-A","1","UMUM","97","SMT-6","SMT","");
INSERT INTO nilai_skl VALUES("146","21","X-A","1","UMUM","97","SMT-6","SMT","");
INSERT INTO nilai_skl VALUES("147","22","X-A","1","UMUM","97","SMT-6","SMT","");
INSERT INTO nilai_skl VALUES("148","23","X-A","1","UMUM","97","SMT-6","SMT","");
INSERT INTO nilai_skl VALUES("149","24","X-A","1","UMUM","97","SMT-6","SMT","");
INSERT INTO nilai_skl VALUES("150","25","X-A","1","UMUM","97","SMT-6","SMT","");
INSERT INTO nilai_skl VALUES("151","1","X-A","3","UMUM","90","PRAKTEK","US","");
INSERT INTO nilai_skl VALUES("152","2","X-A","3","UMUM","90","PRAKTEK","US","");
INSERT INTO nilai_skl VALUES("153","3","X-A","3","UMUM","90","PRAKTEK","US","");
INSERT INTO nilai_skl VALUES("154","4","X-A","3","UMUM","90","PRAKTEK","US","");
INSERT INTO nilai_skl VALUES("155","5","X-A","3","UMUM","90","PRAKTEK","US","");
INSERT INTO nilai_skl VALUES("156","6","X-A","3","UMUM","90","PRAKTEK","US","");
INSERT INTO nilai_skl VALUES("157","7","X-A","3","UMUM","90","PRAKTEK","US","");
INSERT INTO nilai_skl VALUES("158","8","X-A","3","UMUM","90","PRAKTEK","US","");
INSERT INTO nilai_skl VALUES("159","9","X-A","3","UMUM","90","PRAKTEK","US","");
INSERT INTO nilai_skl VALUES("160","10","X-A","3","UMUM","90","PRAKTEK","US","");
INSERT INTO nilai_skl VALUES("161","11","X-A","3","UMUM","90","PRAKTEK","US","");
INSERT INTO nilai_skl VALUES("162","12","X-A","3","UMUM","90","PRAKTEK","US","");
INSERT INTO nilai_skl VALUES("163","13","X-A","3","UMUM","90","PRAKTEK","US","");
INSERT INTO nilai_skl VALUES("164","14","X-A","3","UMUM","90","PRAKTEK","US","");
INSERT INTO nilai_skl VALUES("165","15","X-A","3","UMUM","90","PRAKTEK","US","");
INSERT INTO nilai_skl VALUES("166","16","X-A","3","UMUM","90","PRAKTEK","US","");
INSERT INTO nilai_skl VALUES("167","17","X-A","3","UMUM","90","PRAKTEK","US","");
INSERT INTO nilai_skl VALUES("168","18","X-A","3","UMUM","90","PRAKTEK","US","");
INSERT INTO nilai_skl VALUES("169","19","X-A","3","UMUM","90","PRAKTEK","US","");
INSERT INTO nilai_skl VALUES("170","20","X-A","3","UMUM","90","PRAKTEK","US","");
INSERT INTO nilai_skl VALUES("171","21","X-A","3","UMUM","90","PRAKTEK","US","");
INSERT INTO nilai_skl VALUES("172","22","X-A","3","UMUM","90","PRAKTEK","US","");
INSERT INTO nilai_skl VALUES("173","23","X-A","3","UMUM","90","PRAKTEK","US","");
INSERT INTO nilai_skl VALUES("174","24","X-A","3","UMUM","90","PRAKTEK","US","");
INSERT INTO nilai_skl VALUES("175","25","X-A","3","UMUM","90","PRAKTEK","US","");
INSERT INTO nilai_skl VALUES("176","1","X-A","3","UMUM","94","TEORI","US","");
INSERT INTO nilai_skl VALUES("177","2","X-A","3","UMUM","94","TEORI","US","");
INSERT INTO nilai_skl VALUES("178","3","X-A","3","UMUM","94","TEORI","US","");
INSERT INTO nilai_skl VALUES("179","4","X-A","3","UMUM","94","TEORI","US","");
INSERT INTO nilai_skl VALUES("180","5","X-A","3","UMUM","94","TEORI","US","");
INSERT INTO nilai_skl VALUES("181","6","X-A","3","UMUM","94","TEORI","US","");
INSERT INTO nilai_skl VALUES("182","7","X-A","3","UMUM","94","TEORI","US","");
INSERT INTO nilai_skl VALUES("183","8","X-A","3","UMUM","94","TEORI","US","");
INSERT INTO nilai_skl VALUES("184","9","X-A","3","UMUM","94","TEORI","US","");
INSERT INTO nilai_skl VALUES("185","10","X-A","3","UMUM","94","TEORI","US","");
INSERT INTO nilai_skl VALUES("186","11","X-A","3","UMUM","94","TEORI","US","");
INSERT INTO nilai_skl VALUES("187","12","X-A","3","UMUM","94","TEORI","US","");
INSERT INTO nilai_skl VALUES("188","13","X-A","3","UMUM","94","TEORI","US","");
INSERT INTO nilai_skl VALUES("189","14","X-A","3","UMUM","94","TEORI","US","");
INSERT INTO nilai_skl VALUES("190","15","X-A","3","UMUM","94","TEORI","US","");
INSERT INTO nilai_skl VALUES("191","16","X-A","3","UMUM","94","TEORI","US","");
INSERT INTO nilai_skl VALUES("192","17","X-A","3","UMUM","94","TEORI","US","");
INSERT INTO nilai_skl VALUES("193","18","X-A","3","UMUM","94","TEORI","US","");
INSERT INTO nilai_skl VALUES("194","19","X-A","3","UMUM","94","TEORI","US","");
INSERT INTO nilai_skl VALUES("195","20","X-A","3","UMUM","94","TEORI","US","");
INSERT INTO nilai_skl VALUES("196","21","X-A","3","UMUM","94","TEORI","US","");
INSERT INTO nilai_skl VALUES("197","22","X-A","3","UMUM","94","TEORI","US","");
INSERT INTO nilai_skl VALUES("198","23","X-A","3","UMUM","94","TEORI","US","");
INSERT INTO nilai_skl VALUES("199","24","X-A","3","UMUM","94","TEORI","US","");
INSERT INTO nilai_skl VALUES("200","25","X-A","3","UMUM","94","TEORI","US","");



CREATE TABLE `nilai_sumatif` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mapel` varchar(11) DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `level` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  `nilai` varchar(11) DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `smt` varchar(11) DEFAULT NULL,
  `tp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

INSERT INTO nilai_sumatif VALUES("1","3","1","10","X-A","3","73","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("2","3","10","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("3","3","11","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("4","3","12","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("5","3","13","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("6","3","14","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("7","3","15","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("8","3","16","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("9","3","17","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("10","3","18","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("11","3","19","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("12","3","2","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("13","3","20","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("14","3","21","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("15","3","22","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("16","3","23","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("17","3","24","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("18","3","25","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("19","3","26","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("20","3","27","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("21","3","28","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("22","3","29","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("23","3","3","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("24","3","30","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("25","3","31","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("26","3","32","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("27","3","33","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("28","3","34","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("29","3","35","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("30","3","36","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("31","3","37","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("32","3","4","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("33","3","5","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("34","3","6","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("35","3","7","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("36","3","8","10","X-A","3","0","PH","1","2024/2025");
INSERT INTO nilai_sumatif VALUES("37","3","9","10","X-A","3","0","PH","1","2024/2025");



CREATE TABLE `pdb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jumlah` int(11) DEFAULT 0,
  `tahun` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO pdb VALUES("1","0","2025");



CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL AUTO_INCREMENT,
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
  `idjari` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id_pegawai`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

INSERT INTO pegawai VALUES("1","admin","$2y$10$t3L.GQrBJJHa5gPSooBuhOiZYk4yFgJT7TqBvqPI1bU57mJFQOrAG","","Admin","admin","","0","","","","","","");
INSERT INTO pegawai VALUES("6","admin123","$2y$10$SYnuj19MQvGia7KxfLj8b.SBU5RyL3ByqNkDy/sk6rsZrwol.xhUW","","Admin","admin","","0","","","","","","");
INSERT INTO pegawai VALUES("10","196410121990102001","123","196410121990102001","Geofanny","guru","Guru","0","","Guru Mapel","","0855445545445","","");
INSERT INTO pegawai VALUES("11","alfarizi","123","","AHMAD ALFARIZI","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("12","khoirul","123","","Ahmad Khoirul Mufti","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("13","199808082024211015","123","199808082024211015","ALDIAN MAHMUD","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("14","198004032003122003","123","198004032003122003","Amalia","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("15","199106102024211012","123","199106102024211012","Andi Prayoga","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("16","199602082024212032","123","199602082024212032","Andika Primartati","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("17","ari","123","","ari fatihatul hidayah","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("18","197810272008042003","123","197810272008042003","Ari Hartati","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("19","197701112011012004","123","197701112011012004","Arum Wulandari","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("20","199305032024211020","123","199305032024211020","Auzar Rifa'i Syaer Hamta","guru","Guru","0","","Guru BK","","","","");
INSERT INTO pegawai VALUES("21","196812221993031006","123","196812221993031006","Dedi Supriadi","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("22","196610141991031005","123","196610141991031005","Didi Santoso","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("23","199805172024212026","123","199805172024212026","DIENIKE ELSARAH HANIFAH","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("24","196601061991032004","123","196601061991032004","Dra. Hj. Umi Roviah","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("25","196507091992032003","123","196507091992032003","Dwi Nurmawati","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("26","eka","123","","eka sulistiya ningsih","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("27","196709071995122003","123","196709071995122003","Eka Susilawati","guru","Guru","0","","Guru BK","","","","");
INSERT INTO pegawai VALUES("28","198612042010011005","123","198612042010011005","Eko Diantoro","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("29","197007131994032003","123","197007131994032003","Elny Sulasni","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("30","198505232024212012","123","198505232024212012","Galuh Wiratna Dewi","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("31","197601302014072002","123","197601302014072002","Hasanah","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("32","196907151992032008","123","196907151992032008","Heny Trisulistyorini","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("33","198910082024211011","123","198910082024211011","Hermi Ismanto","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("34","196505251999031003","123","196505251999031003","Hipni","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("35","196710201991031008","123","196710201991031008","Kustanto","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("36","197705022024212003","123","197705022024212003","Mei Sugiyanti","guru","Guru","0","","Guru BK","","","","");
INSERT INTO pegawai VALUES("37","197705012006042019","123","197705012006042019","Melly Rakhmawaty","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("38","198005152014072003","123","198005152014072003","Miftahul Jannah","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("39","vita","123","","NATALIA VITA RIANI","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("40","198905092014022004","123","198905092014022004","Neni Evi Putri","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("41","nida","123","","NIDA AMALIYA","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("42","196508101992032006","123","196508101992032006","Nurlaena","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("43","198802252015032004","123","198802252015032004","Putri Pertiwi","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("44","196903311997021002","123","196903311997021002","Rahmad Supriyadi","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("45","199212112024212026","123","199212112024212026","Rahmatun Nisa","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("46","199702272024212025","123","199702272024212025","renita febriana","guru","Guru","0","","Guru BK","","","","");
INSERT INTO pegawai VALUES("47","199603012024212034","123","199603012024212034","reystiani safitri","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("48","196903021993011001","123","196903021993011001","Setyo Budi Utomo","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("49","jannah","123","","Siti Miftahul Jannah","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("50","199610282024212036","123","199610282024212036","SITI ROHIBAH","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("51","196501191992032002","123","196501191992032002","Sri Indras Worowati","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("52","196705041997031006","123","196705041997031006","Suhendar","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("53","196406251997021001","123","196406251997021001","Suyadi","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("54","198007042024212007","123","198007042024212007","Titin Yuliarti","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("55","196711051989032005","123","196711051989032005","Tri Harwati","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("56","198710012024211007","123","198710012024211007","Tri Wahyudi","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("57","196507051997032002","123","196507051997032002","Tri Yuli Astuti","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("58","199202072024212031","123","199202072024212031","Umi Karomah Al Adawiyah","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("59","196507041991021002","123","196507041991021002","Waluya","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("60","199505122024212025","123","199505122024212025","Wanda Aryanti","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("61","199706022024211009","123","199706022024211009","WILDAN DEBBIE TIANTO","guru","Guru","0","","Guru BK","","","","");
INSERT INTO pegawai VALUES("62","198601222024211003","123","198601222024211003","Yanuar Indra Irawan","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("63","198607172011011007","123","198607172011011007","Yasir Sipung","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("64","197406152024212005","123","197406152024212005","Yuni Astuti","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("65","198506162010012020","123","198506162010012020","Zuni Purnawati","guru","Guru","0","","Guru Mapel","","","","");
INSERT INTO pegawai VALUES("66","","","","","guru","Guru","0","","","","","","");
INSERT INTO pegawai VALUES("67","2025","2025","2025","GURU","guru","Guru","0","","Guru Mapel","","2025","","");
INSERT INTO pegawai VALUES("68","guru","guru","050920","Fahrurrozi","guru","Guru","0","Screenshot_20250525-214606.jpg","Guru Mapel","","088558","","");
INSERT INTO pegawai VALUES("69","intan","intan","12345","intan","staff","","0","","","","6283117760971","","");
INSERT INTO pegawai VALUES("70","geofanny","123","1964101219901020201","Geofanny","guru","Guru","0","","Guru Mapel","","0855454545454","","");



CREATE TABLE `pengaturan` (
  `id_aplikasi` int(11) NOT NULL AUTO_INCREMENT,
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
  `akreditasi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_aplikasi`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO pengaturan VALUES("1","1","SANDIK","SMA","SMK WIRA BUANA","0089287354","Dr. George Washington, S.Pd. M.Pd.","56387487284368784","logo583.png","Asia/Jakarta","1","2024/2025","Jln. Merdeka Barat No. 02","Suka","Maju","Merdeka","Nusantara","0882021733186","new@esandik.my.id","https://new.esandik.my.id","http://server.esandik.my.id","ESANDIK-A","M4L4N9KJ9vUTCuZwEdis","KEMENTRIAN PENDIDIKAN DASAR DAN MENENGAH","1","0","0","KARTU PESERTA ASESSMEN","","","Penilaian Akhir Tahun","2","35","","18:59:00","20 Juni 2025","-","-","70","1","22","2017","file728.png","B");



CREATE TABLE `pengawas` (
  `id_pengawas` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `level` varchar(50) NOT NULL DEFAULT 'pengawas',
  PRIMARY KEY (`id_pengawas`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO pengawas VALUES("2","Pengawas","","vision","$2y$10$NouMjUj1YN7S/V0r/cwSVOML8h/.NZRXmijXoMgyU6eBjMIsvn8R.","pengawas");



CREATE TABLE `pesan_terkirim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsiswa` varchar(11) DEFAULT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `nowa` varchar(14) DEFAULT NULL,
  `isi` mediumtext DEFAULT NULL,
  `sender` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `peskul` (
  `idp` int(11) NOT NULL AUTO_INCREMENT,
  `idsiswa` varchar(50) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `eskul` varchar(50) DEFAULT NULL,
  `guru` varchar(16) DEFAULT NULL,
  `nilai` varchar(50) DEFAULT NULL,
  `ket` mediumtext DEFAULT NULL,
  `smt` varchar(12) DEFAULT NULL,
  `tp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idp`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO peskul VALUES("1","1","X-A","Pramuka","3","","","1","2024/2025");



CREATE TABLE `pkl_dudi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dudi` varchar(50) DEFAULT NULL,
  `bidang` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `direksi` varchar(50) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `pkl_evaluasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `idm` varchar(11) DEFAULT NULL,
  `jawab` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `pkl_jurnal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` varchar(11) DEFAULT NULL,
  `bulan` varchar(11) DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `idkompetensi` varchar(11) DEFAULT NULL,
  `proses` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `pulang` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO pkl_jurnal VALUES("2","2025-06-01","06","1","VII-A","11","oo","1","");



CREATE TABLE `pkl_kegiatan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `catatan` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO pkl_kegiatan VALUES("1","2025-06-01","06","12:03:29","-6.92","107.61","1","VII-A","aaaaaaa","aceh.png","1","1","H","ttd_120521.png","","12:03:31","Baik dalam melaksanakan kegiatan hari ini");



CREATE TABLE `pkl_kompetensi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jurusan` varchar(50) DEFAULT NULL,
  `deskrip` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO pkl_kompetensi VALUES("2","TKJ","Merakit personal computer");
INSERT INTO pkl_kompetensi VALUES("3","TKJ","Melakukan intalasi sistem operasi dasar");
INSERT INTO pkl_kompetensi VALUES("4","TKJ","Melakukan perbaikan dan/atau setting ulang sistem PC");
INSERT INTO pkl_kompetensi VALUES("5","TKJ","Melakukan perbaikan periferal");
INSERT INTO pkl_kompetensi VALUES("6","TKJ","Melakukan perawatan PC");
INSERT INTO pkl_kompetensi VALUES("7","TKJ","Melakukan instalasi software");
INSERT INTO pkl_kompetensi VALUES("8","TKJ","Melakukan instalasi perangkat jaringan lokal (Lokal
Area Network)");
INSERT INTO pkl_kompetensi VALUES("9","TKJ","Melakukan perbaikan dan/atau setting ulang koneksi
jaringan
");
INSERT INTO pkl_kompetensi VALUES("10","TKJ","Melakukan intalasi perangkat jaringan berbasis luas
(Wide Area Network)");
INSERT INTO pkl_kompetensi VALUES("11","semua","aa");



CREATE TABLE `pkl_mnilai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(50) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `aspek` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

INSERT INTO pkl_mnilai VALUES("1","A","semua","Penampilan dan kerapihan pakaian");
INSERT INTO pkl_mnilai VALUES("2","A","semua","Komitmen dan integritas");
INSERT INTO pkl_mnilai VALUES("3","A","semua"," Menghargai dan menghormati");
INSERT INTO pkl_mnilai VALUES("4","A","semua","Kreativitas");
INSERT INTO pkl_mnilai VALUES("5","A","semua"," Kerja sama tim");
INSERT INTO pkl_mnilai VALUES("6","A","semua"," Disiplin dan tanggung jawab");
INSERT INTO pkl_mnilai VALUES("7","B","semua","Penguasaan keilmuan");
INSERT INTO pkl_mnilai VALUES("8","B","semua","Kemampuan mengidentifikasi masalah");
INSERT INTO pkl_mnilai VALUES("9","B","semua","Kemampuan menemukan alternatif solusi secara kreatif");
INSERT INTO pkl_mnilai VALUES("10","C","semua","Keahlian dan keterampilan");
INSERT INTO pkl_mnilai VALUES("11","C","semua","Inovasi dan kreativitas");
INSERT INTO pkl_mnilai VALUES("12","C","semua","Produktivitas dan penyelesaian tugas");
INSERT INTO pkl_mnilai VALUES("13","C","semua","Penguasaan alat kerja");



CREATE TABLE `pkl_monitor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monitoring` text DEFAULT NULL,
  `evaluasi` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO pkl_monitor VALUES("1","Terdapat presensi
kehadiran peserta
didik 
","Peserta didik dan pembimbing
industri melaksanakan program
PKL");
INSERT INTO pkl_monitor VALUES("2","Peserta Didik
mengikuti SOP yang
ada di di dunia kerja","Materi PKL yang diikuti peserta
didik sesuai dengan hasil
pemetaan kompetensi dan
program PKL");
INSERT INTO pkl_monitor VALUES("3","Peserta didik mengisi
Jurnal","");
INSERT INTO pkl_monitor VALUES("4","Peserta didik membuat portofolio sesuai dengan jurnal kegiatan","");
INSERT INTO pkl_monitor VALUES("5","","Pembelajaran PKL di Institusi
Pasangan/Industri menambah
wawasan dan pengalaman nyata
peserta didik dalam dunia kerja.");
INSERT INTO pkl_monitor VALUES("6","","Pembelajaran PKL di Institusi
Pasangan/Industri menambah
keterampilan peserta didik sesuai
program keahlian");
INSERT INTO pkl_monitor VALUES("7","","Pembelajaran PKL di Institusi
Pasangan/Industri menambah
pengetahuan peserta didik sesuai
program keahlian.");
INSERT INTO pkl_monitor VALUES("8","","Pembelajaran PKL di Institusi
Pasangan/Industri menambah
nilai-nilai disiplin, kerja keras,
dan tanggung jawab.");
INSERT INTO pkl_monitor VALUES("9","","Pembimbing selama
pembelajaran PKL di Institusi
Pasangan/Industri, berperan
dengan baik");
INSERT INTO pkl_monitor VALUES("10","","Selama pembelajaran di Institusi
Pasangan/Industri peserta didik
mengalami hambatan-hambatan
yang sangat berarti.");



CREATE TABLE `pkl_nilai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `ida` varchar(11) DEFAULT NULL,
  `nilai` varchar(11) DEFAULT NULL,
  `ket` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `pkl_panitia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ketua` varchar(50) DEFAULT NULL,
  `nipk` varchar(50) DEFAULT NULL,
  `sekretaris` varchar(50) DEFAULT NULL,
  `nips` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `sampai` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO pkl_panitia VALUES("1","Agus Mulyana","123","Siti Opat Apit","123","31 Januari","30 April 2025");



CREATE TABLE `pkl_pembimbing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idpeg` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `dudi` varchar(11) DEFAULT NULL,
  `instruktur` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `pkl_reg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsiswa` varchar(11) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `folder` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO pkl_reg VALUES("1","1","ABIWANTA RIZKY WIDYA AGUNG","1,1");



CREATE TABLE `pkl_siswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `dudi` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO pkl_siswa VALUES("1","1","VII-A","semua","1");
INSERT INTO pkl_siswa VALUES("2","92","XII-ATPH","ATPH","1");
INSERT INTO pkl_siswa VALUES("3","2","VII-A","semua","1");
INSERT INTO pkl_siswa VALUES("4","81","IX","semua","1");
INSERT INTO pkl_siswa VALUES("5","82","IX","semua","1");



CREATE TABLE `produk` (
  `produk_id` int(11) NOT NULL AUTO_INCREMENT,
  `produk_toko` varchar(100) DEFAULT NULL,
  `produk_nama` varchar(255) NOT NULL,
  `produk_kategori` varchar(11) NOT NULL,
  `produk_beli` varchar(11) DEFAULT NULL,
  `produk_harga` varchar(11) NOT NULL,
  `produk_jumlah` varchar(11) NOT NULL,
  `produk_satuan` varchar(50) DEFAULT NULL,
  `produk_foto1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`produk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO produk VALUES("1","1","Seblak","1","5000","7000","5","Buah","download (6).jpg");
INSERT INTO produk VALUES("2","1","Coffy Bob","2","10000","14000","14","Buah","download (7).jpg");
INSERT INTO produk VALUES("3","1","Beng-beng","3","2000","2500","36","Pcs","download (8).jpg");



CREATE TABLE `profil_smk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `bidang` varchar(50) DEFAULT NULL,
  `siup` varchar(50) DEFAULT NULL,
  `omset` varchar(50) DEFAULT NULL,
  `tanggal` varchar(50) DEFAULT NULL,
  `tahun` varchar(11) DEFAULT NULL,
  `kode` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `proyek` (
  `idp` int(11) NOT NULL AUTO_INCREMENT,
  `kelas` varchar(50) DEFAULT NULL,
  `p_proyek` int(11) NOT NULL,
  `p_dimensi` int(11) NOT NULL,
  `p_elemen` int(11) NOT NULL,
  `p_sub` int(11) NOT NULL,
  `semester` int(11) DEFAULT NULL,
  PRIMARY KEY (`idp`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO proyek VALUES("1","X-A","1","1","1","1","1");
INSERT INTO proyek VALUES("2","X-A","1","2","8","16","1");
INSERT INTO proyek VALUES("3","X-A","1","3","10","23","1");
INSERT INTO proyek VALUES("4","X-A","1","5","16","38","1");
INSERT INTO proyek VALUES("5","X-A","1","6","20","42","1");
INSERT INTO proyek VALUES("6","X-A","2","1","3","6","1");
INSERT INTO proyek VALUES("7","X-A","2","1","4","8","1");
INSERT INTO proyek VALUES("8","X-A","2","2","8","16","1");
INSERT INTO proyek VALUES("9","X-A","2","4","14","33","1");
INSERT INTO proyek VALUES("10","X-A","2","5","17","39","1");



CREATE TABLE `refleksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idjadwal` varchar(11) DEFAULT NULL,
  `idmapel` varchar(11) DEFAULT NULL,
  `idguru` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `soal` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `rpp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kd` varchar(11) DEFAULT NULL,
  `des3` text DEFAULT NULL,
  `des4` text DEFAULT NULL,
  `materi` text DEFAULT NULL,
  `alokasi` varchar(50) DEFAULT NULL,
  `sisipan` text DEFAULT NULL,
  `mapel` varchar(11) NOT NULL,
  `level` varchar(11) DEFAULT NULL,
  `guru` varchar(11) NOT NULL,
  `smt` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `s_barang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `jendela` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `s_kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO s_kategori VALUES("1","Bangunan");



CREATE TABLE `s_lokasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `saldo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `jam` varchar(50) DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `debet` varchar(11) DEFAULT '0',
  `kredit` varchar(11) DEFAULT '0',
  `ket` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO saldo VALUES("1","2025-05-30","13:53:17","1","","2000000","0","");
INSERT INTO saldo VALUES("2","2025-05-30","13:54:56","1","","0","100000","");
INSERT INTO saldo VALUES("3","2025-05-30","15:21:31","1","","0","120000","");
INSERT INTO saldo VALUES("4","2025-06-01","14:39:11","1","","0","120000","");



CREATE TABLE `sapras_ruang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `tahun` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

INSERT INTO sapras_ruang VALUES("1","umum","","Kelas","6","KL","B","","","","","","");
INSERT INTO sapras_ruang VALUES("2","umum","","Pustaka","1","L","RR","","","","","","");
INSERT INTO sapras_ruang VALUES("4","umum","","Kimia","","","","","","","","","");
INSERT INTO sapras_ruang VALUES("5","umum","","IPA","","","","","","","","","");
INSERT INTO sapras_ruang VALUES("6","umum","","Komputer","","","","","","","","","");
INSERT INTO sapras_ruang VALUES("7","umum","","Bahasa","","","","","","","","","");
INSERT INTO sapras_ruang VALUES("8","umum","","Gambar","","","","","","","","","");
INSERT INTO sapras_ruang VALUES("9","umum","","R.Praktek ","1","L","RR","","Lab","","","","");
INSERT INTO sapras_ruang VALUES("10","penunjang","","Pimpinan","1","L","B","90","","","","","");
INSERT INTO sapras_ruang VALUES("11","penunjang","","Guru","1","KL","B","90","","","","","");
INSERT INTO sapras_ruang VALUES("12","penunjang","","Tata Usaha","1","L","B","90","","","","","");
INSERT INTO sapras_ruang VALUES("15","penunjang","","Ibadah","1","L","B","90","","","","","");
INSERT INTO sapras_ruang VALUES("16","penunjang","","UKS","1","L","B","90","","","","","");
INSERT INTO sapras_ruang VALUES("17","penunjang","","Konselling","1","L","B","90","","","","","");
INSERT INTO sapras_ruang VALUES("18","penunjang","","Kesiswaan","1","L","B","90","","","","","");
INSERT INTO sapras_ruang VALUES("19","penunjang","","Pramuka","1","L","B","90","","","","","");
INSERT INTO sapras_ruang VALUES("20","penunjang","","Jamban","3","L","B","180","","","","","");
INSERT INTO sapras_ruang VALUES("21","penunjang","","Olah raga","1","L","B","90","","","","","");
INSERT INTO sapras_ruang VALUES("22","penunjang","","Serbaguna","1","L","B","120","","","","","");
INSERT INTO sapras_ruang VALUES("24","umum","","R.Praktek Elektronika","1","L","B","","lab","","","","");
INSERT INTO sapras_ruang VALUES("25","it","Komputer ","","","","","","","2","1","","2025");
INSERT INTO sapras_ruang VALUES("26","it","Laptop/netbook","","","","","","","3","0","","2025");
INSERT INTO sapras_ruang VALUES("27","it"," Server","","","","","","","1","0","","2025");
INSERT INTO sapras_ruang VALUES("28","it","UPS","","","","","","","3","0","","2025");
INSERT INTO sapras_ruang VALUES("29","it","Proyektor","","","","","","","2","1","","2025");



CREATE TABLE `savsoft_options` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `qid` int(11) NOT NULL,
  `q_option` text NOT NULL,
  `q_option_match` varchar(1000) DEFAULT NULL,
  `score` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO savsoft_options VALUES("1","1"," biru","","1");
INSERT INTO savsoft_options VALUES("2","1"," jinga","","0");
INSERT INTO savsoft_options VALUES("3","1"," merah","","0");
INSERT INTO savsoft_options VALUES("4","1"," kuning","","0");
INSERT INTO savsoft_options VALUES("5","2"," biru                ","17441902853.jpg","1");
INSERT INTO savsoft_options VALUES("6","2"," jinga       ","17441902852.png","0");
INSERT INTO savsoft_options VALUES("7","2"," merah      ","17441902851.png","0");
INSERT INTO savsoft_options VALUES("8","2"," kuning      ","17441902855.jpg","0");
INSERT INTO savsoft_options VALUES("9","3"," biru","","0");
INSERT INTO savsoft_options VALUES("10","4"," 10","","0");



CREATE TABLE `savsoft_qbank` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `question_type` varchar(100) NOT NULL DEFAULT 'Multiple Choice Single Answer',
  `question` text NOT NULL,
  `description` text NOT NULL,
  `cid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `no_time_served` int(11) NOT NULL DEFAULT 0,
  `no_time_corrected` int(11) NOT NULL DEFAULT 0,
  `no_time_incorrected` int(11) NOT NULL DEFAULT 0,
  `no_time_unattempted` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO savsoft_qbank VALUES("1","Multiple Choice Single Answer","  SPEKTRUM GELOMBANG ELEKTROMAGNETIK&amp;lt;br&amp;gt;Kenny sedang melihat artikel mengenai Sains dan menemukan gambar sebagai berikut.&amp;lt;br&amp;gt;Pada gambar, disajikan berbagai macam gelombang elektromagnetik yang disusun berdasarkan frekuensinya dalam satuan Hz.&amp;lt;br&amp;gt;Warna yang memiliki frekuensi lebih tinggi daripada warna hijau, tetapi lebih rendah daripada warna ungu adalah ....     ","17441902854.jpg","1","2","0","0","0","0");
INSERT INTO savsoft_qbank VALUES("2","Multiple Choice Single Answer","  SPEKTRUM GELOMBANG ELEKTROMAGNETIK&amp;lt;br&amp;gt;Kenny sedang melihat artikel mengenai Sains dan menemukan gambar sebagai berikut.&amp;lt;br&amp;gt;Pada gambar, disajikan berbagai macam gelombang elektromagnetik yang disusun berdasarkan frekuensinya dalam satuan Hz.&amp;lt;br&amp;gt;Warna yang memiliki frekuensi lebih tinggi daripada warna hijau, tetapi lebih rendah daripada warna ungu adalah ....     ","17441902854.jpg","1","2","0","0","0","0");
INSERT INTO savsoft_qbank VALUES("3","Multiple Choice Single Answer","  Kenny sedang melihat artikel mengenai Sains dan menemukan gambar sebagai berikut.&amp;lt;br&amp;gt;Pada gambar, disajikan berbagai macam gelombang elektromagnetik yang disusun berdasarkan frekuensinya dalam satuan Hz.&amp;lt;br&amp;gt;Warna yang memiliki frekuensi lebih tinggi daripada warna hijau, tetapi lebih rendah daripada warna ungu adalah ............","","1","2","0","0","0","0");
INSERT INTO savsoft_qbank VALUES("4","Multiple Choice Single Answer","  2 x 5","","1","2","0","0","0","0");



CREATE TABLE `sinkron` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(50) DEFAULT NULL,
  `jumlah` varchar(50) DEFAULT '0',
  `tanggal` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO sinkron VALUES("1","SISWA","0","");
INSERT INTO sinkron VALUES("2","MAPEL","0","");
INSERT INTO sinkron VALUES("3","BANKSOAL","0","");
INSERT INTO sinkron VALUES("4","SOAL","0","");



CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
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
  `saldo` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_siswa`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;

INSERT INTO siswa VALUES("1","20221001","0001","US-SMAN-01","ABIWANTA RIZKY WIDYA AGUNG","US-1","US-1","E","10","X-A","UMUM","Islam","L","","","X-A","1","ESANDIK-A","1","","0","0","","Jakarta","10/10/2006","Jln. Mawar","Andrea Lusnito","Putri Sitra","PNS","WIRAUSAHA","Suka","Maju","Merdeka","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("2","20221002","0002","US-SMAN-02","AISYAH TRI CAHYA","US-2","US-2","E","10","X-A","UMUM","Islam","P","","","X-A","1","ESANDIK-A","0","","0","0","","Jakarta","10/11/2006","Jln. Mawar","Andrea Lusnito","Putri Sitra","PNS","WIRAUSAHA","Suka","Maju","Merdeka","0","0","0","0","","","","","2","","0");
INSERT INTO siswa VALUES("3","20221003","0003","US-SMAN-03","AISYAH VARDA URIFA","US-3","US-3","E","10","X-A","UMUM","Islam","P","","","X-A","1","ESANDIK-A","0","","0","0","","Jakarta","10/12/2006","Jln. Mawar","Andrea Lusnito","Putri Sitra","PNS","WIRAUSAHA","Suka","Maju","Merdeka","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("4","20221004","0004","US-SMAN-04","ALVERO DHIKO LEVANO","US-4","US-4","E","10","X-A","UMUM","Islam","L","","","X-A","1","ESANDIK-A","0","","0","0","","Jakarta","10/13/2006","Jln. Mawar","Andrea Lusnito","Putri Sitra","PNS","WIRAUSAHA","Suka","Maju","Merdeka","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("5","20221005","0005","US-SMAN-05","ANAVELIA FRANSISCA SIMANJUNTAK","US-5","US-5","E","10","X-A","UMUM","Kristen","P","","","X-A","1","ESANDIK-A","0","","0","0","","Jakarta","10/14/2006","Jln. Mawar","Andrea Lusnito","Putri Sitra","PNS","WIRAUSAHA","Suka","Maju","Merdeka","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("6","20221006","0006","US-SMAN-06","ANDREAS NOVA ANDRIANO","US-6","US-6","E","10","X-A","UMUM","Islam","L","","","X-A","1","ESANDIK-A","0","","0","0","","Jakarta","10/15/2006","Jln. Mawar","Andrea Lusnito","Putri Sitra","PNS","WIRAUSAHA","Suka","Maju","Merdeka","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("7","20221007","0007","US-SMAN-07","AUREL GRESIASEPTIANA","US-7","US-7","E","10","X-A","UMUM","Kristen","P","","","X-A","1","ESANDIK-A","0","","0","0","","Jakarta","10/16/2006","Jln. Mawar","Andrea Lusnito","Putri Sitra","PNS","WIRAUSAHA","Suka","Maju","Merdeka","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("8","20221008","0008","US-SMAN-08","AYESSHA SILVIA AMELLYA","US-8","US-8","E","10","X-A","UMUM","Kristen","P","","","X-A","1","ESANDIK-A","0","","0","0","","Jakarta","10/17/2006","Jln. Mawar","Andrea Lusnito","Putri Sitra","PNS","WIRAUSAHA","Suka","Maju","Merdeka","0","0","0","0","","","","","2","","0");
INSERT INTO siswa VALUES("9","20221009","0009","US-SMAN-09","BELLA AYU INDAH SARI","US-9","US-9","E","10","X-A","UMUM","Islam","P","","","X-A","1","ESANDIK-A","0","","0","0","","Jakarta","10/18/2006","Jln. Mawar","Andrea Lusnito","Putri Sitra","PNS","WIRAUSAHA","Suka","Maju","Merdeka","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("10","20221010","0010","US-SMAN-10","DANELA CRISTIANE","US-10","US-10","E","10","X-A","UMUM","Kristen","P","","","X-A","1","ESANDIK-A","0","","0","0","","Jakarta","10/19/2006","Jln. Mawar","Andrea Lusnito","Putri Sitra","PNS","WIRAUSAHA","Suka","Maju","Merdeka","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("11","20221011","0011","US-SMAN-11","DANY SAFA'AD","US-11","US-11","E","10","X-A","UMUM","Islam","L","","","X-A","1","ESANDIK-A","0","","0","0","","Jakarta","10/20/2006","Jln. Mawar","Andrea Lusnito","Putri Sitra","PNS","WIRAUSAHA","Suka","Maju","Merdeka","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("12","20221012","0012","US-SMAN-12","DENIS SABRINA","US-12","US-12","E","10","X-A","UMUM","Islam","P","","","X-A","1","ESANDIK-A","0","","0","0","","Jakarta","10/21/2006","Jln. Mawar","Andrea Lusnito","Putri Sitra","PNS","WIRAUSAHA","Suka","Maju","Merdeka","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("13","20221013","0013","US-SMAN-13","FADILLAH RAMADHANI","US-13","US-13","E","10","X-A","UMUM","Islam","L","","","X-A","1","ESANDIK-A","0","","0","0","","Jakarta","10/22/2006","Jln. Mawar","Andrea Lusnito","Putri Sitra","PNS","WIRAUSAHA","Suka","Maju","Merdeka","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("14","20221014","0014","US-SMAN-14","FAKHRI RAHMAD JULIAN","US-14","US-14","E","10","X-A","UMUM","Islam","L","","","X-A","1","ESANDIK-A","0","","0","0","","Jakarta","10/23/2006","Jln. Mawar","Andrea Lusnito","Putri Sitra","PNS","WIRAUSAHA","Suka","Maju","Merdeka","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("15","20221015","0015","US-SMAN-15","FIRA RAHAYU DWIYANING P","US-15","US-15","E","10","X-A","UMUM","Islam","P","","","X-A","1","ESANDIK-A","0","","0","0","","Jakarta","10/24/2006","Jln. Mawar","Andrea Lusnito","Putri Sitra","PNS","WIRAUSAHA","Suka","Maju","Merdeka","0","0","0","0","","","","","2","","0");
INSERT INTO siswa VALUES("16","20221016","0016","US-SMAN-16","Gantari Sastra Paramadiwa","US-16","US-16","E","10","X-A","UMUM","Islam","P","","","X-A","1","ESANDIK-A","0","","0","0","","Jakarta","10/25/2006","Jln. Mawar","Andrea Lusnito","Putri Sitra","PNS","WIRAUSAHA","Suka","Maju","Merdeka","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("17","20221017","0017","US-SMAN-17","GILANG ANDRIANTAMA","US-17","US-17","E","10","X-A","UMUM","Islam","L","","","X-A","1","ESANDIK-A","0","","0","0","","Jakarta","10/26/2006","Jln. Mawar","Andrea Lusnito","Putri Sitra","PNS","WIRAUSAHA","Suka","Maju","Merdeka","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("18","20221018","0018","US-SMAN-18","HERI PRASETYO","US-18","US-18","E","10","X-A","UMUM","Kristen","L","","","X-A","1","ESANDIK-A","0","","0","0","","Jakarta","10/27/2006","Jln. Mawar","Andrea Lusnito","Putri Sitra","PNS","WIRAUSAHA","Suka","Maju","Merdeka","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("19","20221019","0019","US-SMAN-19","IRFAN ANTONY FAUZAN IBNI","US-19","US-19","E","10","X-A","UMUM","Islam","L","","","X-A","1","ESANDIK-A","0","","0","0","","Jakarta","10/28/2006","Jln. Mawar","Andrea Lusnito","Putri Sitra","PNS","WIRAUSAHA","Suka","Maju","Merdeka","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("20","20221020","0020","US-SMAN-20","KARINA MEGA KASIH","US-20","US-20","E","10","X-A","UMUM","Kristen","P","","","X-A","1","ESANDIK-A","0","","0","0","","Jakarta","10/29/2006","Jln. Mawar","Andrea Lusnito","Putri Sitra","PNS","WIRAUSAHA","Suka","Maju","Merdeka","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("21","20221021","0021","US-SMAN-21","LUTFI AVRILIA","US-21","US-21","E","10","X-A","UMUM","Islam","P","","","X-A","1","ESANDIK-A","0","","0","0","","Jakarta","10/30/2006","Jln. Mawar","Andrea Lusnito","Putri Sitra","PNS","WIRAUSAHA","Suka","Maju","Merdeka","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("22","20221022","0022","US-SMAN-22","MUHAMMAD ALIF WALID MAULIDDIN","US-22","US-22","E","10","X-A","UMUM","Islam","L","","","X-A","1","ESANDIK-A","0","","0","0","","Jakarta","10/31/2006","Jln. Mawar","Andrea Lusnito","Putri Sitra","PNS","WIRAUSAHA","Suka","Maju","Merdeka","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("23","20221023","0023","US-SMAN-23","NICO ANDREAN HASAN EFENDI","US-23","US-23","E","10","X-A","UMUM","Islam","L","","","X-A","1","ESANDIK-A","0","","0","0","","Jakarta","11/1/2006","Jln. Mawar","Andrea Lusnito","Putri Sitra","PNS","WIRAUSAHA","Suka","Maju","Merdeka","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("24","20221024","0024","US-SMAN-24","PURI AYU CHRISTIANI","US-24","US-24","E","10","X-A","UMUM","Kristen","P","","","X-A","1","ESANDIK-A","0","","0","0","","Jakarta","11/2/2006","Jln. Mawar","Andrea Lusnito","Putri Sitra","PNS","WIRAUSAHA","Suka","Maju","Merdeka","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("25","20221025","0025","US-SMAN-25","RAHMAT RENDI SANTOSO","US-25","US-25","E","10","X-A","UMUM","Islam","L","","","X-A","1","ESANDIK-A","0","","0","0","","Jakarta","11/3/2006","Jln. Mawar","Andrea Lusnito","Putri Sitra","PNS","WIRAUSAHA","Suka","Maju","Merdeka","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("26","20221026","0026","US-SMAN-26","RAIHAN NUR FATHONI","US-26","US-26","E","10","X-B","UMUM","Islam","L","","","X-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("27","20221027","0027","US-SMAN-27","Riko Yoji Zebrian","US-27","US-27","E","10","X-B","UMUM","Islam","L","","","X-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("28","20221028","0028","US-SMAN-28","ROHMAN ALFIANSYAH","US-28","US-28","E","10","X-B","UMUM","Islam","L","","","X-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("29","20221029","0029","US-SMAN-29","RUSTALINO ADE ENDARTO","US-29","US-29","E","10","X-B","UMUM","Islam","L","","","X-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","2","","0");
INSERT INTO siswa VALUES("30","20221030","0030","US-SMAN-30","RYAN AHMAD AFFANDI","US-30","US-30","E","10","X-B","UMUM","Islam","L","","","X-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("31","20221031","0031","US-SMAN-31","SEPTARIA EKA KRISTANTI","US-31","US-31","E","10","X-B","UMUM","Kristen","P","","","X-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("32","20221032","0032","US-SMAN-32","STEVANIA HARVIANING CRISTIANI","US-32","US-32","E","10","X-B","UMUM","Kristen","P","","","X-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","0","","0");
INSERT INTO siswa VALUES("33","20221033","0033","US-SMAN-33","WIDYA LESTARI","US-33","US-33","E","10","X-B","UMUM","Islam","P","","","X-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("34","20221034","0034","US-SMAN-34","ACHMAD ARIFIN","US-34","US-34","E","10","X-B","UMUM","Islam","L","","","X-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("35","20221035","0035","US-SMAN-35","AISAH CINDY PRATAMA","US-35","US-35","E","10","X-B","UMUM","Islam","P","","","X-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("36","20221036","0036","US-SMAN-36","AISYAH NUR RAHMA","US-36","US-36","E","10","X-B","UMUM","Islam","P","","","X-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("37","20221037","0037","US-SMAN-37","Aji Wahyudi","US-37","US-37","E","10","X-B","UMUM","Islam","L","","","X-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("38","20221038","0038","US-SMAN-38","ANDRE RIZKY YULIANTO","US-38","US-38","E","10","X-B","UMUM","Islam","L","","","X-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("39","20221039","0039","US-SMAN-39","ANGGUN RITA AMELIA","US-39","US-39","E","10","X-B","UMUM","Islam","P","","","X-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("40","20221040","0040","US-SMAN-40","ANISA KURNIA ISTIANI","US-40","US-40","E","10","X-B","UMUM","Islam","P","","","X-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("41","20221041","0041","US-SMAN-41","BAGAS PRASETYA","US-41","US-41","E","10","X-B","UMUM","Islam","L","","","X-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("42","20221042","0042","US-SMAN-42","BILAL AHMAD","US-42","US-42","E","10","X-B","UMUM","Islam","L","","","X-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("43","20221043","0043","US-SMAN-43","DARIL ALIF ZULKARNAEN","US-43","US-43","E","10","X-B","UMUM","Islam","L","","","X-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("44","20221044","0044","US-SMAN-44","Derian Putra Pratama","US-44","US-44","E","10","X-B","UMUM","Islam","L","","","X-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("45","20221045","0045","US-SMAN-45","ERISTA VELANICA PUTRI","US-45","US-45","E","10","X-B","UMUM","Islam","P","","","X-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("46","20221046","0046","US-SMAN-46","FARAH NADIA TAUFIQY","US-46","US-46","E","10","X-B","UMUM","Islam","P","","","X-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("47","20221047","0047","US-SMAN-47","FERNANDO VICKY ALVIANSAH","US-47","US-47","E","10","X-B","UMUM","Islam","L","","","X-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("48","20221048","0048","US-SMAN-48","GABRIELLA NATAZHA SALSABILLA","US-48","US-48","E","10","X-B","UMUM","Islam","P","","","X-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("49","20221049","0049","US-SMAN-49","GIOVANO HERNINO SAPUTRA","US-49","US-49","E","10","X-B","UMUM","Islam","L","","","X-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("50","20221050","0050","US-SMAN-50","IQBAL JAUHAR RAVANDA","US-50","US-50","E","10","X-B","UMUM","Islam","L","","","X-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","1","","0");
INSERT INTO siswa VALUES("51","20221051","0051","US-SMAN-51","IZZATUL HASANAH RAFIATUZ ZAHRO","US-51","US-51","F","11","XI-A","UMUM","Islam","P","","","XI-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("52","20221052","0052","US-SMAN-52","LEITISYA ZEINNARA","US-52","US-52","F","11","XI-A","UMUM","Islam","P","","","XI-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("53","20221053","0053","US-SMAN-53","M. AJI FIKI RAHMATDANI SOFIULLOH","US-53","US-53","F","11","XI-A","UMUM","Islam","L","","","XI-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("54","20221054","0054","US-SMAN-54","MILA PUTRI MIRANDA","US-54","US-54","F","11","XI-A","UMUM","Islam","P","","","XI-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("55","20221055","0055","US-SMAN-55","MOH. AVATAR","US-55","US-55","F","11","XI-A","UMUM","Islam","L","","","XI-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("56","20221056","0056","US-SMAN-56","MUHAMMAD HABIBI","US-56","US-56","F","11","XI-A","UMUM","Islam","L","","","XI-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("57","20221057","0057","US-SMAN-57","Muhhamad Rudianto","US-57","US-57","F","11","XI-A","UMUM","Islam","L","","","XI-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("58","20221058","0058","US-SMAN-58","NABHAN RADINKA KEVAN","US-58","US-58","F","11","XI-A","UMUM","Islam","L","","","XI-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("59","20221059","0059","US-SMAN-59","NICO ALFIANO PRATAMA","US-59","US-59","F","11","XI-A","UMUM","Islam","L","","","XI-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("60","20221060","0060","US-SMAN-60","RAHMAD RIVALDI","US-60","US-60","F","11","XI-A","UMUM","Islam","L","","","XI-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("61","20221061","0061","US-SMAN-61","RAISYA SOFIA BUNGA FIRDAUS","US-61","US-61","F","11","XI-A","UMUM","Islam","P","","","XI-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("62","20221062","0062","US-SMAN-62","RANIKA ARUM PRATIWI","US-62","US-62","F","11","XI-A","UMUM","Islam","P","","","XI-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("63","20221063","0063","US-SMAN-63","RATNA ANIZAH","US-63","US-63","F","11","XI-A","UMUM","Islam","P","","","XI-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("64","20221064","0064","US-SMAN-64","Riski Maulana","US-64","US-64","F","11","XI-A","UMUM","Islam","L","","","XI-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("65","20221065","0065","US-SMAN-65","SABIAN SYAUQI ARATA","US-65","US-65","F","11","XI-A","UMUM","Islam","L","","","XI-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("66","20221066","0066","US-SMAN-66","SALSA WULAN DELIMA","US-66","US-66","F","11","XI-A","UMUM","Islam","P","","","XI-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("67","20221067","0067","US-SMAN-67","VILWA SYEIRA EN NADIA","US-67","US-67","F","11","XI-A","UMUM","Islam","P","","","XI-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("68","20221068","0068","US-SMAN-68","WIGNYO ADAM","US-68","US-68","F","11","XI-A","UMUM","Islam","L","","","XI-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("69","20221069","0069","US-SMAN-69","ADELIA DWI NURFADILA","US-69","US-69","F","11","XI-A","UMUM","Islam","P","","","XI-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("70","20221070","0070","US-SMAN-70","AHMAT","US-70","US-70","F","11","XI-A","UMUM","Islam","L","","","XI-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("71","20221071","0071","US-SMAN-71","AIRIN KHORIZAH NUR RAHMAH","US-71","US-71","F","11","XI-A","UMUM","Islam","P","","","XI-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("72","20221072","0072","US-SMAN-72","ANDIKA NUR FURQON NASRULLAH","US-72","US-72","F","11","XI-A","UMUM","Islam","L","","","XI-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("73","20221073","0073","US-SMAN-73","ANITA KURNIAWATI","US-73","US-73","F","11","XI-A","UMUM","Islam","P","","","XI-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("74","20221074","0074","US-SMAN-74","AYNA RO'IFFATUL AZIZAH","US-74","US-74","F","11","XI-A","UMUM","Islam","P","","","XI-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("75","20221075","0075","US-SMAN-75","BILGHIS AZZAHRA","US-75","US-75","F","11","XI-A","UMUM","Islam","P","","","XI-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("76","20221076","0076","US-SMAN-76","DIAN ILHAM AJI ROHIM","US-76","US-76","F","11","XI-B","UMUM","Islam","L","","","XI-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("77","20221077","0077","US-SMAN-77","ELVYN ANDHIKA PUTRA PRATAMA","US-77","US-77","F","11","XI-B","UMUM","Islam","L","","","XI-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("78","20221078","0078","US-SMAN-78","FARHAN NUR HUDA","US-78","US-78","F","11","XI-B","UMUM","Islam","L","","","XI-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("79","20221079","0079","US-SMAN-79","FITRAH HANUM NIMASAYU","US-79","US-79","F","11","XI-B","UMUM","Islam","P","","","XI-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("80","20221080","0080","US-SMAN-80","GRIZTA BAYU FEBRIAN FAJAR YUWONO","US-80","US-80","F","11","XI-B","UMUM","Islam","L","","","XI-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("81","20221081","0081","US-SMAN-81","INGGAR AYU NISWARI","US-81","US-81","F","11","XI-B","UMUM","Islam","P","","","XI-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("82","20221082","0082","US-SMAN-82","ISYA DIKRI SUDRAJAD","US-82","US-82","F","11","XI-B","UMUM","Islam","L","","","XI-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("83","20221083","0083","US-SMAN-83","KARUNIA EKA PUTRI","US-83","US-83","F","11","XI-B","UMUM","Islam","P","","","XI-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("84","20221084","0084","US-SMAN-84","LALA PUTRI MAHARANI","US-84","US-84","F","11","XI-B","UMUM","Islam","P","","","XI-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("85","20221085","0085","US-SMAN-85","M. FAKHRI ADIS AL-FIKRI","US-85","US-85","F","11","XI-B","UMUM","Islam","L","","","XI-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("86","20221086","0086","US-SMAN-86","MOCHAMAD JUAN RAFANDA YUSWADI","US-86","US-86","F","11","XI-B","UMUM","Islam","L","","","XI-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("87","20221087","0087","US-SMAN-87","MUHAMMAD DAVIN PRAYOGA","US-87","US-87","F","11","XI-B","UMUM","Islam","L","","","XI-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("88","20221088","0088","US-SMAN-88","MUHAMMAD HARIS ALFARIZI","US-88","US-88","F","11","XI-B","UMUM","Islam","L","","","XI-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("89","20221089","0089","US-SMAN-89","MUHAMMAD SYAQIF ALI MAHRUS","US-89","US-89","F","11","XI-B","UMUM","Islam","L","","","XI-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("90","20221090","0090","US-SMAN-90","MUTIARA EQUILA KHAIRUNNISA","US-90","US-90","F","11","XI-B","UMUM","Islam","P","","","XI-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("91","20221091","0091","US-SMAN-91","NABILA AURELIA PUTRI SUSANTO","US-91","US-91","F","11","XI-B","UMUM","Islam","P","","","XI-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("92","20221092","0092","US-SMAN-92","NAYLA SA'BANINA","US-92","US-92","F","11","XI-B","UMUM","Islam","P","","","XI-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("93","20221093","0093","US-SMAN-93","NOWHA ABDUL AZIZ","US-93","US-93","F","11","XI-B","UMUM","Islam","L","","","XI-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("94","20221094","0094","US-SMAN-94","QIBRAN AHMAD FARIQIN","US-94","US-94","F","11","XI-B","UMUM","Islam","L","","","XI-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("95","20221095","0095","US-SMAN-95","RISA DEWI ANDINI","US-95","US-95","F","11","XI-B","UMUM","Islam","P","","","XI-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("96","20221096","0096","US-SMAN-96","SANDI IRAWAN","US-96","US-96","F","11","XI-B","UMUM","Islam","L","","","XI-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("97","20221097","0097","US-SMAN-97","VICHO MADA ADHYASTA","US-97","US-97","F","11","XI-B","UMUM","Islam","L","","","XI-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("98","20221098","0098","US-SMAN-98","VIVIAN RISKY FASHA","US-98","US-98","F","11","XI-B","UMUM","Islam","P","","","XI-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("99","20221099","0099","US-SMAN-99","WALIT HASIN AHMAD","US-99","US-99","F","11","XI-B","UMUM","Islam","L","","","XI-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("100","20221100","0100","US-SMAN-100","Wildan Al Amin","US-100","US-100","F","11","XI-B","UMUM","Islam","L","","","XI-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("101","20221101","0101","US-SMAN-101","NI MADE SANTI DITARIANI","US-101","US-101","F","12","XII-A","UMUM","Islam","P","","","XII-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("102","20221102","0102","US-SMAN-102","LUH ADE SITA PUTRI MAHA YADNYA","US-102","US-102","F","12","XII-A","UMUM","Islam","P","","","XII-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("103","20221103","0103","US-SMAN-103","NI KADEK KETHRIN NATHA QINARA","US-103","US-103","F","12","XII-A","UMUM","Islam","L","","","XII-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("104","20221104","0104","US-SMAN-104","NI KETUT LIA CRISTIANI","US-104","US-104","F","12","XII-A","UMUM","Islam","P","","","XII-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("105","20221105","0105","US-SMAN-105","I GEDE WINDU DITYA PRATAMA","US-105","US-105","F","12","XII-A","UMUM","Kristen","L","","","XII-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("106","20221106","0106","US-SMAN-106","NI KADEK PUTRI DWIPAYANI","US-106","US-106","F","12","XII-A","UMUM","Islam","L","","","XII-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("107","20221107","0107","US-SMAN-107","LUH AYU TANTRIKAYANI","US-107","US-107","F","12","XII-A","UMUM","Kristen","L","","","XII-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("108","20221108","0108","US-SMAN-108","NI KOMANG ANGGIRA YULINDRA PUTRI","US-108","US-108","F","12","XII-A","UMUM","Kristen","L","","","XII-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("109","20221109","0109","US-SMAN-109","I MADE GIAN LAKSANA PRADIPA","US-109","US-109","F","12","XII-A","UMUM","Islam","L","","","XII-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("110","20221110","0110","US-SMAN-110","I KADEK PANJI GAUTAMA","US-110","US-110","F","12","XII-A","UMUM","Kristen","L","","","XII-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("111","20221111","0111","US-SMAN-111","NI LUH GEDE NOVI ADNYANI","US-111","US-111","F","12","XII-A","UMUM","Islam","P","","","XII-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("112","20221112","0112","US-SMAN-112","KADEK ADITYA MAHA WIJAYA","US-112","US-112","F","12","XII-A","UMUM","Islam","P","","","XII-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("113","20221113","0113","US-SMAN-113","LUH PUTU SINTA WIDYANI PUTRI","US-113","US-113","F","12","XII-A","UMUM","Islam","P","","","XII-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("114","20221114","0114","US-SMAN-114","DEWA AYU YULIA CARMA","US-114","US-114","F","12","XII-A","UMUM","Islam","L","","","XII-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("115","20221115","0115","US-SMAN-115","IDA BAGUS MAHDIKARA M","US-115","US-115","F","12","XII-A","UMUM","Islam","L","","","XII-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("116","20221116","0116","US-SMAN-116","ANAK AGUNG GEDE AGUNG PRADNYANA PUTRA","US-116","US-116","F","12","XII-A","UMUM","Islam","P","","","XII-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("117","20221117","0117","US-SMAN-117","NI KADEK ADELIA DWIVAYANI","US-117","US-117","F","12","XII-A","UMUM","Islam","P","","","XII-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("118","20221118","0118","US-SMAN-118","PUTU MARTINI","US-118","US-118","F","12","XII-A","UMUM","Kristen","L","","","XII-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("119","20221119","0119","US-SMAN-119","NI KADEK AYU SWANDEWI","US-119","US-119","F","12","XII-A","UMUM","Islam","P","","","XII-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("120","20221120","0120","US-SMAN-120","NI PUTU AYU TANTRI MAHESUARI","US-120","US-120","F","12","XII-A","UMUM","Kristen","L","","","XII-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("121","20221121","0121","US-SMAN-121","MUHAMAD NOVA HARDIANSYAH","US-121","US-121","F","12","XII-A","UMUM","Islam","P","","","XII-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("122","20221122","0122","US-SMAN-122","AGOES HOCKY ANANDA KRISHNA","US-122","US-122","F","12","XII-A","UMUM","Islam","L","","","XII-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("123","20221123","0123","US-SMAN-123","NI PUTU PANDYA KAYANA PRASANTI","US-123","US-123","F","12","XII-A","UMUM","Islam","P","","","XII-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("124","20221124","0124","US-SMAN-124","CANDRA SUGI ARISTYA DEWI","US-124","US-124","F","12","XII-A","UMUM","Kristen","P","","","XII-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("125","20221125","0125","US-SMAN-125","NI PUTU AYUDYA NIMAS ANJANI","US-125","US-125","F","12","XII-A","UMUM","Islam","P","","","XII-A","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("126","20221126","0126","US-SMAN-126","I GUSTI AGUNG AYU PRAMI YUSTHI ADNYASWARI","US-126","US-126","F","12","XII-B","UMUM","Islam","L","","","XII-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("127","20221127","0127","US-SMAN-127","SANG NYOMAN ADI PUTRA","US-127","US-127","F","12","XII-B","UMUM","Islam","L","","","XII-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("128","20221128","0128","US-SMAN-128","I PUTU SUMERTA DWIPA YUDAWARNA","US-128","US-128","F","12","XII-B","UMUM","Islam","L","","","XII-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("129","20221129","0129","US-SMAN-129","SANG MADE TRISNA WIDYASWADANA DALEM","US-129","US-129","F","12","XII-B","UMUM","Budha","P","","","XII-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("130","20221130","0130","US-SMAN-130","NI PUTU AYU MEI LINDA PUTRI","US-130","US-130","F","12","XII-B","UMUM","Islam","L","","","XII-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("131","20221131","0131","US-SMAN-131","I GEDE WALI ASTAWA ADIARTHA","US-131","US-131","F","12","XII-B","UMUM","Kristen","P","","","XII-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("132","20221132","0132","US-SMAN-132","I KADEK RENDY ADNYANA","US-132","US-132","F","12","XII-B","UMUM","Kristen","L","","","XII-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("133","20221133","0133","US-SMAN-133","I NYOMAN PUTRA DHANANJAYA","US-133","US-133","F","12","XII-B","UMUM","Islam","P","","","XII-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("134","20221134","0134","US-SMAN-134","I KOMANG YOGA TRI WEDANTARA","US-134","US-134","F","12","XII-B","UMUM","Islam","P","","","XII-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("135","20221135","0135","US-SMAN-135","I KOMANG JUNIANTHARA WIRADANA","US-135","US-135","F","12","XII-B","UMUM","Islam","L","","","XII-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("136","20221136","0136","US-SMAN-136","I WAYAN ARYA WEDA SASTRA WIRAYANA","US-136","US-136","F","12","XII-B","UMUM","Islam","L","","","XII-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("137","20221137","0137","US-SMAN-137","I KOMANG SUARTAWAN ADI","US-137","US-137","F","12","XII-B","UMUM","Islam","L","","","XII-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("138","20221138","0138","US-SMAN-138","NI MADE METRIA GOPI SWARI","US-138","US-138","F","12","XII-B","UMUM","Islam","L","","","XII-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("139","20221139","0139","US-SMAN-139","I NENGAH SUKADANA","US-139","US-139","F","12","XII-B","UMUM","Budha","L","","","XII-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("140","20221140","0140","US-SMAN-140","NI WAYAN ERSANIA ASTHA NINGSIH","US-140","US-140","F","12","XII-B","UMUM","Islam","P","","","XII-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("141","20221141","0141","US-SMAN-141","NI PUTU NOVIANTI","US-141","US-141","F","12","XII-B","UMUM","Islam","P","","","XII-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("142","20221142","0142","US-SMAN-142","NI MADE FEBIYANTI CHINTIADEWI PRIYATNA","US-142","US-142","F","12","XII-B","UMUM","Islam","P","","","XII-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("143","20221143","0143","US-SMAN-143","I KOMANG TRISNAWAN","US-143","US-143","F","12","XII-B","UMUM","Islam","L","","","XII-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("144","20221144","0144","US-SMAN-144","NI PUTU OKKY ANDREA","US-144","US-144","F","12","XII-B","UMUM","Budha","L","","","XII-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("145","20221145","0145","US-SMAN-145","I KADEK ANGGA ADITYA","US-145","US-145","F","12","XII-B","UMUM","Islam","P","","","XII-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("146","20221146","0146","US-SMAN-146","NI KADEK EMYA TANIA PUTERI","US-146","US-146","F","12","XII-B","UMUM","Islam","L","","","XII-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("147","20221147","0147","US-SMAN-147","NI PUTU EMA RANIYA PUTERI","US-147","US-147","F","12","XII-B","UMUM","Islam","L","","","XII-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("148","20221148","0148","US-SMAN-148","NI PUTU EMA DIVYA PUTRI","US-148","US-148","F","12","XII-B","UMUM","Budha","P","","","XII-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("149","20221149","0149","US-SMAN-149","KADEK DANIA AISWARYA PRAMESWARI","US-149","US-149","F","12","XII-B","UMUM","Islam","L","","","XII-B","1","ESANDIK-A","0","","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");
INSERT INTO siswa VALUES("150","20221150","0150","US-SMAN-150","I KETUT AGUS SETIAWAN","US-150","US-150","F","12","XII-B","UMUM","Islam","L","","","XII-B","1","ESANDIK-A","0","WhatsApp Image 2025-07-30 at 14.15.07.jpeg","0","0","","","","","","","","","","","","0","0","0","0","","","","","","","0");



CREATE TABLE `sk_membaca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsk` varchar(11) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO sk_membaca VALUES("1","1","Usulan nama Guru Tetap Yayasan (GTY) dari Dewan Guru dan Komite SMP Taruna Bakti Cikadu Kabupaten Cianjur.");
INSERT INTO sk_membaca VALUES("2","2","Bahwa proses belajar mengajar merupakan inti proses penyelenggaraan pendidikan dan pelaksanaan kegiatan pada satuan Pendidikan sebagai bentuk Implementasi Kurikulum Merdeka dalam rangka pemulihan Pembelajaran.");
INSERT INTO sk_membaca VALUES("5","2","Untuk menjamin kelancaran Proses Belajar Mengajar (PBM) perlu ditetapkan Pemenuhan Beban Kerja Guru dan Kepala Sekolah, Pembagian Tugas Guru dalam Proses Belajar Mengajar dan Bimbingan, dan Tugas Tambahan pada Kurikulum Merdeka");



CREATE TABLE `sk_memutuskan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsk` varchar(11) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO sk_memutuskan VALUES("1","2","Pemenuhan Beban Kerja Guru dan Kepala Sekolah Tahun Pelajaran");
INSERT INTO sk_memutuskan VALUES("2","2","Pembagian Tugas Guru dalam Proses Belajar Mengajar dan Bimbingan Tahun Pelajaran");
INSERT INTO sk_memutuskan VALUES("3","2","Pembagian Tugas Tambahan Pada Kurikulum Merdeka Tugas Tambahan Koordinator Projek Penguatan Profil Pelajar Pancasila Tahun Pelajaran");
INSERT INTO sk_memutuskan VALUES("4","2","Masing-masing Guru melaporkan pelaksanaan tugasnya secara tertulis dan berkala kepada Kepala Sekolah, dan semua biaya yang timbul akibat pelaksanaan keputusan ini, dibebankan pada anggaran yang sesuai.");
INSERT INTO sk_memutuskan VALUES("5","2","Keputusan ini berlaku sejak tanggal ditetapkan dan apabila terdapat kekeliruan akan dibetulkan sebagaiamana mestinya.");



CREATE TABLE `sk_mengingat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsk` varchar(11) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO sk_mengingat VALUES("1","1","<p>Undang-undang RI No. 20 Tahun 2003 tentang Sistem Pendidikan Nasional.</p>");
INSERT INTO sk_mengingat VALUES("2","1","<p>Undang-undang Nomor 14 tahun 2005 tentang Guru dan Dosen.</p>");
INSERT INTO sk_mengingat VALUES("3","1","<p>Undang-undang Nomor 19 tahun 2005 tentang Standar Nasional Pendidikan.</p>");
INSERT INTO sk_mengingat VALUES("4","1","<p>Keputusan Mendikbud RI:</p>
<p>&nbsp; a. Nomor: 0293/K/1982<br />&nbsp; b. Nomor: 0170/O/1984<br />&nbsp; c. Nomor: 0173/O/1993<br />&nbsp; d. Nomor: 031 dan Nomor: 032/P/1994</p>");
INSERT INTO sk_mengingat VALUES("5","2","Pedoman Umum Penyelenggara Administrasi Sekolah. Hasil Rapat antara Kepala Sekolah, Guru dan Tenaga Kependidikan");
INSERT INTO sk_mengingat VALUES("8","2","Keputusan Kepala Dinas Pendidikan Provinsi Jawa Barat Nomor: 420/3250/101.1/2025 Tentang Kalender Pendidikan Bagi Satuan Pendidikan di Provinsi Jawa Barat Tahun Pelajaran");
INSERT INTO sk_mengingat VALUES("9","2","Hasil Rapat antara Kepala Sekolah, Guru dan Tenaga Kependidikan tentang persiapan Tahun Pelajaran");



CREATE TABLE `sk_menimbang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsk` varchar(11) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

INSERT INTO sk_menimbang VALUES("1","1","Bahwa untuk lebih meningkatkan kualitas hasil belajar mengajar pada SMP Taruna Bakti Cikadu perlu diberikan bantuan tenaga kependidikan.");
INSERT INTO sk_menimbang VALUES("2","1","Bahwa proses belajar mengajar merupakan inti proses penyelenggaraan pendidikan dan pelaksanaan kegiatan pada satuan Pendidikan sebagai bentuk Implementasi Kurikulum Merdeka dalam rangka pemulihan Pembelajaran");
INSERT INTO sk_menimbang VALUES("3","1","Untuk menjamin kelancaran Proses Belajar Mengajar (PBM) perlu ditetapkan Pemenuhan Beban Kerja Guru dan Kepala Sekolah, Pembagian Tugas Guru dalam Proses Belajar Mengajar dan Bimbingan, dan Tugas Tambahan pada Kurikulum Merdeka<");
INSERT INTO sk_menimbang VALUES("4","2","UU Nomor 20 Tahun 2003 Tentang Sistem Pendidikan Nasional");
INSERT INTO sk_menimbang VALUES("5","2","UU Nomor 32 tahun 2004 tentang Pemerintah Daerah.");
INSERT INTO sk_menimbang VALUES("6","2","UU Nomor 14 tahun 2005 tentang Guru dan Dosen sebagai tenaga Profesional.");
INSERT INTO sk_menimbang VALUES("7","2","Peraturan Pemerintah Nomor 74 tahun 2008 tentang Guru");
INSERT INTO sk_menimbang VALUES("8","2","Peraturan Pemerintah Nomor 4 tahun 2022 tentang Standar Nasional Pendidikan.");
INSERT INTO sk_menimbang VALUES("9","2","Permendikbud Nomor 15 Tahun 2018 Tentang Pemenuhan Beban Kerja Guru, Kepala Sekolah, dan Pengawas Sekolah.");
INSERT INTO sk_menimbang VALUES("10","2","Permendikbudristek Nomor 5 Tahun 2022 Tentang Standar Kompetensi Lulusan pada Pendidikan Anak Usia Dini, Jenjang Pendidikan Dasar, dan Pendidikan Menengah.");
INSERT INTO sk_menimbang VALUES("11","2","Permendikbudristek Nomor 7 Tahun 2022 Tentang Standar Isi pada Pendidikan Anak Usia Dini, Jenjang Pendidikan Dasar, dan Pendidikan Menengah.");
INSERT INTO sk_menimbang VALUES("12","2","Permendikbudristek Nomor 16 Tahun 2022 Tentang Standar Proses pada Pendidikan Anak Usia Dini, Jenjang Pendidikan Dasar, dan Jenjang Pendidikan Menengah. ");
INSERT INTO sk_menimbang VALUES("13","2","Permendikbudristek Nomor 21 Tahun 2022 Tentang Standar Penilaian Pendidikan pada Pendidikan Anak Usia Dini, Jenjang Pendidikan Dasar, dan Jenjang Pendidikan Menengah");
INSERT INTO sk_menimbang VALUES("14","2","Kepmendikbudristek Nomor 262/M/2022 Tentang Pedoman Penerapan Kurikulum dalam Rangka Pemulihan Pembelajaran.");
INSERT INTO sk_menimbang VALUES("15","2","Keputusan Kepala BSKAP Nomor 033/H/KR/20.. Tahun 2022 Tentang Capaian Pembelajaran pada Pendidikan Anak Usia Dini, Jenjang Pendidikan Dasar, dan Pendidikan Menengah Pada Kurikulum Merdeka.");
INSERT INTO sk_menimbang VALUES("16","2","Keputusan Kepala BSKAP Nomor 009/H/KR/20.. Tahun 2022 Tentang Dimensi, Elemen dan Sub Elemen Profil Pelajar Pancasila pada Kurikulum Merdeka.");
INSERT INTO sk_menimbang VALUES("17","2","Keputusan Kepala BSKAP Nomor 044/H/KR/20.. Tahun 2022 Tentang Satuan Pendidikan Pelaksana Implementasi Kurikulum Merdeka Melalui Jalur Mandiri pada Tahun Ajaran");



CREATE TABLE `sk_peg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `tp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO sk_peg VALUES("1","1","2","Laki-laki","Cianjur, 12 Desember 1983","S1","1","/YBS/SK.B/","2025","01 Juli","01 Juli","2025","","","","","","","","","","","");
INSERT INTO sk_peg VALUES("2","1","4","Laki-laki","Cianjur, 12 Desember 1983","SLTA","2","22/YBS/SK.B/","2025","01 Juli","01 Juli","2025","","","","","","","","","","","");
INSERT INTO sk_peg VALUES("3","1","5","Perempuan","Cianjur, 12 Desember 1983","S1","3","/YBS/SK.B/","2025","01 Juli","01 Juli","2025","","","","","","","","","","","");
INSERT INTO sk_peg VALUES("4","1","3","Laki-laki","Cianjur, 12 Desember 1983","S1","4","/YBS/SK.B/","2026","01 Juli","01 Juli","2026","","","","","","","","","","","");
INSERT INTO sk_peg VALUES("5","1","12","Laki-laki","Cianjur, 12 Desember 1983","D3","5","/YBS/SK.B/","2025","01 Juli","01 Juli","2025","","","","","","","","","","","");
INSERT INTO sk_peg VALUES("6","2","3","","","","","","","","","","1","BINDO","","10","X-A","8","GM","","","1","2024/2025");
INSERT INTO sk_peg VALUES("7","2","3","","","","","","","","","","1","MTK","","10","X-A, X-B","16","GM","","","1","2024/2025");



CREATE TABLE `skkb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `header` text NOT NULL,
  `fungsi` int(11) DEFAULT NULL,
  `file` text DEFAULT NULL,
  `fungsi2` int(11) DEFAULT NULL,
  `isi` longtext NOT NULL,
  `foter` text NOT NULL,
  `nosurat` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO skkb VALUES("1","DINAS PENDIDIKAN KABUPATEN MERDEKA","0","","1","<p>Adalah benar siswa <strong>SMA NUSANTARA</strong> dan sepanjang pengetahuan kami anak tersebut <strong>Berkelakuan Baik dan tidak pernah terlibat Narkoba</strong>.</p>","<p>Demikian Surat Keterangan ini kami buat dengan sesungguhnya dan sebenarnya, dan agar dapat dipergunakan sesuai peruntukkannya.</p>","432.1/STBC/VI/2025");



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
  `tulisan` text DEFAULT NULL,
  PRIMARY KEY (`id_skl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO skl VALUES("1","10","421/STBC/SKL/VI/2025","SURAT KETERANGAN LULUS","8 Juni 2025","kemenlog.png","<p>Berdasarkan hasil Rapat Dewan Guru <strong>SMA NUSANTARA</strong> tanggal 29 Mei 2025, Kepala <strong>SMA NUSANTARA</strong> Kabupaten Merdeka dengan ini menerangkan bahwa :</p>","<p>Bahwa nama yang tersebut diatas adalah benar Siswa/Siswi <strong>SMA NUSANTARA</strong> dan telah melaksanakan Ujian Sekolah serta dinyatakan :</p>","<p>Demikian Surat Keterangan Lulus (SKL) ini dibuat dengan sebenarnya untuk dapat digunakan sebagaimana mestinya menjelang diterbitkannya ijazah yang bersangkutan.</p>","0","0","1","1","2025-06-16 06:00:00","2025-06-30 09:00:00","tes");



CREATE TABLE `soal` (
  `id_soal` int(11) NOT NULL AUTO_INCREMENT,
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
  `panjang` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id_soal`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

INSERT INTO soal VALUES("1","1","1","SPEKTRUM GELOMBANG ELEKTROMAGNETIK
Kenny sedang melihat artikel mengenai Sains dan menemukan gambar sebagai berikutPada gambar, disajikan berbagai macam gelombang elektromagnetik yang disusun berdasarkan frekuensinya dalam satuan Hz.
Warna yang memiliki frekuensi lebih tinggi daripada warna hijau, tetapi lebih rendah daripada warna ungu adalah .... ","1","biru
","jingga
","merah
","kuning
","","","","","","","A","","","","","","","","","","0","1","","");
INSERT INTO soal VALUES("2","1","2",""Kita sering kali melakukan olahraga. Bahkan, orang-orang di sekitar kita juga sering menyarankan kita untuk melakukan aktivitas tersebut. Rupanya, ada keterkaitan antara berolahraga dengan kesehatan fisik dan mental, misalnya terkait dengan perkembangan tubuh dan interaksi sosial.
     Perlu diketahui bahwa olahraga bermanfaat dalam mencegah risiko berbagai penyakit. Saat tubuh jarang melakukan olahraga, lemak akan menumpuk di dalam tubuh sehingga dapat berujung pada terjadinya obesitas. Namun, dengan berolahraga secara teratur, tumpukan lemak yang ada di dalam tubuh bisa terbakar. Selain itu, saat berolahraga, terjadi kontraksi otot-otot tubuh yang menyebabkan cairan getah bening dapat mengalir dengan lancar. Cairan getah bening merupakan cairan yang mengandung sel-sel darah putih yang berkaitan dengan sistem pertahanan tubuh. Berbeda dengan pembuluh darah, cairan getah bening ini tidak mengalir karena kontraksi jantung, tetapi karena kontraksi otot-otot yang melekat pada rangka tubuh kita.
     Selain manfaat tersebut, olahraga juga dapat meningkatkan perkembangan tubuh. Aktivitas yang dilakukan selama olahraga akan membantu tubuh untuk lebih cepat berkembang. Ketika berolahraga, terjadi kontraksi otot-otot yang menyebabkan otot lebih terlatih dan akan berkembang dengan baik. Selain itu, aktivitas olahraga yang diiringi gizi seimbang juga dapat membuat metabolisme tubuh menjadi lebih lancar karena hormon pertumbuhan bekerja lebih maksimal.
     Selain bermanfaat bagi kesehatan fisik, olahraga juga dapat meningkatkan interaksi sosial. Ketika olahraga dilakukan dalam kelompok, misalnya saat bermain sepak bola, basket, dan futsal, terjadi proses perkenalan dengan orang lain, baik dengan orang di dalam tim maupun di luar tim. Selain itu, terjadi proses saling bekerja sama saat bermain atau bertanding. Adanya kompetisi yang sehat dalam permainan olahraga tersebut juga membuat kita menjadi lebih jujur. Akhirnya, kita menjadi terbiasa dalam melakukan 
Selain berolahraga, hal yang perlu kita lakukan untuk menjaga kesehatan fisik dan mental adalah ....  "




","3","Mengurangi makan makanan penyebab obesitas
","Meningkatkan interaksi sosial dan sikap saling bekerja sama
","Mengurangi makanan berprotein dan berlemak tinggi
","Memakan makanan bergizi seimbang
","","","","","","","A, B, D","","","","","","","","","","0","3","","");
INSERT INTO soal VALUES("3","1","3",""Pemerintah melalui Badan Pusat Statistik telah merilis data produktivitas padi dari setiap provinsi di Indonesia. Data tersebut meliputi luas lahan persawahan yang dipanen dan produktivitas lahan panen. Adapun data jumlah produksi per tahun dapat diketahui dengan mengalikan luas lahan panen dan produktivitasnya. Angka produktivitas padi diperoleh melalui survei berupa Gabah Kering Panen (GKP) yang dikonversikan menjadi Gabah Kering Giling (GKG).
    Pulau Jawa sebagai pulau dengan jumlah penduduk terbanyak masih memerlukan pasokan beras dari daerah lain maupun dari impor. Hal tersebut karena jumlah hasil panen belum dapat mencukupi kebutuhan pangan masyarakat. Berikut data jumlah produksi padi dari perwakilan provinsi di 5 pulau terbesar di Indonesia. 
Tentukan urutan provinsi dari yang memiliki jumlah hasil panen tertinggi hingga terendah!"




","5","92.198.050,77 kuintal
","46.786.971,19 kuintal
","20.763.612,87 kuintal
","11.345.248,95 kuintal
","","Sumatra Utara
","Jawa Barat
","Kalimantan Selatan
","Sulawesi Selatan
","","C, A, B, D","#00BCD4, #F44336, #4CAF50, #FF9800","","","","","","","","","0","4","","");
INSERT INTO soal VALUES("4","1","4",""Mina padi adalah suatu bentuk usaha tani gabungan yang memanfaatkan genangan air sawah yang tengah ditanami padi sebagai kolam untuk budidaya ikan. Oleh karena itu, selain mendapat hasil panen yaitu padi, petani yang menerapkan sistem mina padi juga dapat memanen ikan. Pak Made adalah salah satu petani di Bali yang menerapkan sistem mina padi di sawahnya. Pak Made mengatakan bahwa dengan menerapkan sistem mina padi, pendapatan dari hasil panen beliau meningkat. “Akan tetapi, perawatan padi dan ikan pada sistem mina padi memang gampang-gampang susah”, katanya.
Benih ikan yang ditebar oleh Pak Made di sawah beliau yang seluas 1,5 ha adalah ikan emas dan ikan nila yang masih berukuran 5 cm sampai dengan 8 cm dengan kepadatan 5.000 ekor/ha. Perbandingan benih ikan emas dengan benih ikan nila yang ditebar oleh Pak Made adalah 3 : 2. Harga bibit ikan nila adalah Rp500,00/ekor dan harga bibit ikan emas adalah dua kali lipatnya. Setiap pagi, Pak Made memberi pakan tambahan berupa dedak halus 250 kg/ha untuk ikan yang ada di sawahnya.
Setelah tujuh puluh hari, Pak Made memanen ikannya tersebut. Total ikan yang dipanen adalah 6.500 kg/ha. Perbandingan hasil panen ikan emas dan ikan nila sama dengan perbandingan benih ikan ketika ditebar. Harga ikan emas dan ikan nila yang dipanen oleh Pak Made berturut-turut adalah Rp30.000,00/kg dan Rp27.000,00/kg. Sekitar 2 bulan kemudian, Pak Made memanen padinya dengan hasil panen 5,7 ton/ha. Pak Made menjualnya dalam bentuk gabah kering panen (GKP) dengan harga Rp5.000,00/kg.
Tentukan benar atau salah pernyataan berikut dengan memberi tanda ? pada kolom yang sesuai!
"




","4","• Total benih ikan emas yang ditebar di sawah Pak Made adalah 4.500 ekor
","• Total benih ikan nila yang ditebar di sawah Pak Made adalah 2.000 ekor
","• Total ikan emas yang dipanen Pak Made adalah 3.900 ekor
","• Total ikan nila yang dipanen Pak Made adalah 3.900 ekor
","","","","","","","B, S, S, B","#00BCD4, #F44336, #4CAF50, #FF9800","","","","","","","","","0","4","","");
INSERT INTO soal VALUES("5","1","5",""Ayah Lisa adalah seorang petani. Selain menyikapi dampak negatif datangnya musim penghujan, ayah Lisa juga memanfaatkan dampak positif musim penghujan untuk kelangsungan pertaniannya. Menurut ayah Lisa, La Nina memberikan banyak dampak positif pada sektor pertanian. Kemudian, Lisa mencari tahu apa saja dampak positif dari La Nina.  
DAMPAK POSITIF LA NINA
Dekan Sekolah Vokasi UGM Agus Maryono yang juga merupakan pakar Ekohidrolik dan pelopor restorasi sungai Indonesia mengatakan bahwa seharusnya tahun basah (musim penghujan) bisa dimanfaatkan. Daerah kering dan semi kering juga dapat memanfaatkan air yang berlimpah. Dengan adanya tahun basah, air tanah bisa terisi secara maksimal, begitu pula dengan danau, situ, serta telaga. Alur sungai pun dapat terbentuk dengan sempurna. Masyarakat di sekitar sungai dapat melakukan susur sungai sehingga mereka akan mengetahui sungai yang bisa digunakan untuk mitigasi serta sungai yang memiliki potensi wisata, potensi sumber air, dan potensi perikanan.
Selain itu, Rizaldi Boer dari Pusat Pengelolaan Risiko dan Peluang Iklim Institut Pertanian Bogor (IPB) mengatakan, La Nina juga mempunyai manfaat bagi pertanian pangan. La Nina memberi peluang untuk percepatan tanam serta perluasan area tanam padi, baik di lahan sawah irigasi, tadah hujan, maupun ladang. Lebih lanjut, La Nina dapat dimanfaatkan untuk meningkatkan areal tanam pada musim hujan, khususnya untuk daerah lahan kering. Petani disarankan untuk memanfaatkan mundurnya akhir musim hujan dengan menanam tanaman umur pendek dan berekonomi tinggi. Tak hanya itu, petani juga dapat melakukan adaptasi teknik budidaya pada daerah endemik banjir dan pertanian lahan kering di lahan gambut.
Dampak positif La Nina yang lain adalah dapat meningkatkan produksi perluasan lahan pasang surut. Lahan pesisir juga akan berkembang lebih baik karena salinitas dapat dikurangi dan perikanan darat bisa dikembangkan lebih awal. Dari segi sumber daya air, menurut Direktur Bina Teknik SDA Kementerian PU-Pera Eko Winar Irianto, kondisi La Nina dapat memenuhi kapasitas energi maksimum pada operasional waduk, sementara dalam kondisi El Nino energi yang dihasilkan akan berkurang.
Bagaimana dampak positif La Nina dari segi sumber daya air?"




","2","","","","","","","","","","","10","#00BCD4, #F44336, #4CAF50, #FF9800","","","","","","","","","0","5","","");
INSERT INTO soal VALUES("6","1","1","SPEKTRUM GELOMBANG ELEKTROMAGNETIK
Kenny sedang melihat artikel mengenai Sains dan menemukan gambar sebagai berikutPada gambar, disajikan berbagai macam gelombang elektromagnetik yang disusun berdasarkan frekuensinya dalam satuan Hz.
Warna yang memiliki frekuensi lebih tinggi daripada warna hijau, tetapi lebih rendah daripada warna ungu adalah .... ","1","biru
","jingga
","merah
","kuning
","","","","","","","A","","","","","","","","","","0","1","","");
INSERT INTO soal VALUES("7","1","2",""Kita sering kali melakukan olahraga. Bahkan, orang-orang di sekitar kita juga sering menyarankan kita untuk melakukan aktivitas tersebut. Rupanya, ada keterkaitan antara berolahraga dengan kesehatan fisik dan mental, misalnya terkait dengan perkembangan tubuh dan interaksi sosial.
     Perlu diketahui bahwa olahraga bermanfaat dalam mencegah risiko berbagai penyakit. Saat tubuh jarang melakukan olahraga, lemak akan menumpuk di dalam tubuh sehingga dapat berujung pada terjadinya obesitas. Namun, dengan berolahraga secara teratur, tumpukan lemak yang ada di dalam tubuh bisa terbakar. Selain itu, saat berolahraga, terjadi kontraksi otot-otot tubuh yang menyebabkan cairan getah bening dapat mengalir dengan lancar. Cairan getah bening merupakan cairan yang mengandung sel-sel darah putih yang berkaitan dengan sistem pertahanan tubuh. Berbeda dengan pembuluh darah, cairan getah bening ini tidak mengalir karena kontraksi jantung, tetapi karena kontraksi otot-otot yang melekat pada rangka tubuh kita.
     Selain manfaat tersebut, olahraga juga dapat meningkatkan perkembangan tubuh. Aktivitas yang dilakukan selama olahraga akan membantu tubuh untuk lebih cepat berkembang. Ketika berolahraga, terjadi kontraksi otot-otot yang menyebabkan otot lebih terlatih dan akan berkembang dengan baik. Selain itu, aktivitas olahraga yang diiringi gizi seimbang juga dapat membuat metabolisme tubuh menjadi lebih lancar karena hormon pertumbuhan bekerja lebih maksimal.
     Selain bermanfaat bagi kesehatan fisik, olahraga juga dapat meningkatkan interaksi sosial. Ketika olahraga dilakukan dalam kelompok, misalnya saat bermain sepak bola, basket, dan futsal, terjadi proses perkenalan dengan orang lain, baik dengan orang di dalam tim maupun di luar tim. Selain itu, terjadi proses saling bekerja sama saat bermain atau bertanding. Adanya kompetisi yang sehat dalam permainan olahraga tersebut juga membuat kita menjadi lebih jujur. Akhirnya, kita menjadi terbiasa dalam melakukan 
Selain berolahraga, hal yang perlu kita lakukan untuk menjaga kesehatan fisik dan mental adalah ....  "




","3","Mengurangi makan makanan penyebab obesitas
","Meningkatkan interaksi sosial dan sikap saling bekerja sama
","Mengurangi makanan berprotein dan berlemak tinggi
","Memakan makanan bergizi seimbang
","","","","","","","A, B, D","","","","","","","","","","0","3","","");
INSERT INTO soal VALUES("8","1","3",""Pemerintah melalui Badan Pusat Statistik telah merilis data produktivitas padi dari setiap provinsi di Indonesia. Data tersebut meliputi luas lahan persawahan yang dipanen dan produktivitas lahan panen. Adapun data jumlah produksi per tahun dapat diketahui dengan mengalikan luas lahan panen dan produktivitasnya. Angka produktivitas padi diperoleh melalui survei berupa Gabah Kering Panen (GKP) yang dikonversikan menjadi Gabah Kering Giling (GKG).
    Pulau Jawa sebagai pulau dengan jumlah penduduk terbanyak masih memerlukan pasokan beras dari daerah lain maupun dari impor. Hal tersebut karena jumlah hasil panen belum dapat mencukupi kebutuhan pangan masyarakat. Berikut data jumlah produksi padi dari perwakilan provinsi di 5 pulau terbesar di Indonesia. 
Tentukan urutan provinsi dari yang memiliki jumlah hasil panen tertinggi hingga terendah!"




","5","92.198.050,77 kuintal
","46.786.971,19 kuintal
","20.763.612,87 kuintal
","11.345.248,95 kuintal
","","Sumatra Utara
","Jawa Barat
","Kalimantan Selatan
","Sulawesi Selatan
","","C, A, B, D","#00BCD4, #F44336, #4CAF50, #FF9800","","","","","","","","","0","4","","");
INSERT INTO soal VALUES("9","1","4",""Mina padi adalah suatu bentuk usaha tani gabungan yang memanfaatkan genangan air sawah yang tengah ditanami padi sebagai kolam untuk budidaya ikan. Oleh karena itu, selain mendapat hasil panen yaitu padi, petani yang menerapkan sistem mina padi juga dapat memanen ikan. Pak Made adalah salah satu petani di Bali yang menerapkan sistem mina padi di sawahnya. Pak Made mengatakan bahwa dengan menerapkan sistem mina padi, pendapatan dari hasil panen beliau meningkat. “Akan tetapi, perawatan padi dan ikan pada sistem mina padi memang gampang-gampang susah”, katanya.
Benih ikan yang ditebar oleh Pak Made di sawah beliau yang seluas 1,5 ha adalah ikan emas dan ikan nila yang masih berukuran 5 cm sampai dengan 8 cm dengan kepadatan 5.000 ekor/ha. Perbandingan benih ikan emas dengan benih ikan nila yang ditebar oleh Pak Made adalah 3 : 2. Harga bibit ikan nila adalah Rp500,00/ekor dan harga bibit ikan emas adalah dua kali lipatnya. Setiap pagi, Pak Made memberi pakan tambahan berupa dedak halus 250 kg/ha untuk ikan yang ada di sawahnya.
Setelah tujuh puluh hari, Pak Made memanen ikannya tersebut. Total ikan yang dipanen adalah 6.500 kg/ha. Perbandingan hasil panen ikan emas dan ikan nila sama dengan perbandingan benih ikan ketika ditebar. Harga ikan emas dan ikan nila yang dipanen oleh Pak Made berturut-turut adalah Rp30.000,00/kg dan Rp27.000,00/kg. Sekitar 2 bulan kemudian, Pak Made memanen padinya dengan hasil panen 5,7 ton/ha. Pak Made menjualnya dalam bentuk gabah kering panen (GKP) dengan harga Rp5.000,00/kg.
Tentukan benar atau salah pernyataan berikut dengan memberi tanda ? pada kolom yang sesuai!
"




","4","• Total benih ikan emas yang ditebar di sawah Pak Made adalah 4.500 ekor
","• Total benih ikan nila yang ditebar di sawah Pak Made adalah 2.000 ekor
","• Total ikan emas yang dipanen Pak Made adalah 3.900 ekor
","• Total ikan nila yang dipanen Pak Made adalah 3.900 ekor
","","","","","","","B, S, S, B","#00BCD4, #F44336, #4CAF50, #FF9800","","","","","","","","","0","4","","");
INSERT INTO soal VALUES("10","1","5",""Ayah Lisa adalah seorang petani. Selain menyikapi dampak negatif datangnya musim penghujan, ayah Lisa juga memanfaatkan dampak positif musim penghujan untuk kelangsungan pertaniannya. Menurut ayah Lisa, La Nina memberikan banyak dampak positif pada sektor pertanian. Kemudian, Lisa mencari tahu apa saja dampak positif dari La Nina.  
DAMPAK POSITIF LA NINA
Dekan Sekolah Vokasi UGM Agus Maryono yang juga merupakan pakar Ekohidrolik dan pelopor restorasi sungai Indonesia mengatakan bahwa seharusnya tahun basah (musim penghujan) bisa dimanfaatkan. Daerah kering dan semi kering juga dapat memanfaatkan air yang berlimpah. Dengan adanya tahun basah, air tanah bisa terisi secara maksimal, begitu pula dengan danau, situ, serta telaga. Alur sungai pun dapat terbentuk dengan sempurna. Masyarakat di sekitar sungai dapat melakukan susur sungai sehingga mereka akan mengetahui sungai yang bisa digunakan untuk mitigasi serta sungai yang memiliki potensi wisata, potensi sumber air, dan potensi perikanan.
Selain itu, Rizaldi Boer dari Pusat Pengelolaan Risiko dan Peluang Iklim Institut Pertanian Bogor (IPB) mengatakan, La Nina juga mempunyai manfaat bagi pertanian pangan. La Nina memberi peluang untuk percepatan tanam serta perluasan area tanam padi, baik di lahan sawah irigasi, tadah hujan, maupun ladang. Lebih lanjut, La Nina dapat dimanfaatkan untuk meningkatkan areal tanam pada musim hujan, khususnya untuk daerah lahan kering. Petani disarankan untuk memanfaatkan mundurnya akhir musim hujan dengan menanam tanaman umur pendek dan berekonomi tinggi. Tak hanya itu, petani juga dapat melakukan adaptasi teknik budidaya pada daerah endemik banjir dan pertanian lahan kering di lahan gambut.
Dampak positif La Nina yang lain adalah dapat meningkatkan produksi perluasan lahan pasang surut. Lahan pesisir juga akan berkembang lebih baik karena salinitas dapat dikurangi dan perikanan darat bisa dikembangkan lebih awal. Dari segi sumber daya air, menurut Direktur Bina Teknik SDA Kementerian PU-Pera Eko Winar Irianto, kondisi La Nina dapat memenuhi kapasitas energi maksimum pada operasional waduk, sementara dalam kondisi El Nino energi yang dihasilkan akan berkurang.
Bagaimana dampak positif La Nina dari segi sumber daya air?"




","2","","","","","","","","","","","10","#00BCD4, #F44336, #4CAF50, #FF9800","","","","","","","","","0","5","","");
INSERT INTO soal VALUES("11","2","1","SPEKTRUM GELOMBANG ELEKTROMAGNETIK
Kenny sedang melihat artikel mengenai Sains dan menemukan gambar sebagai berikutPada gambar, disajikan berbagai macam gelombang elektromagnetik yang disusun berdasarkan frekuensinya dalam satuan Hz.
Warna yang memiliki frekuensi lebih tinggi daripada warna hijau, tetapi lebih rendah daripada warna ungu adalah .... ","1","biru","jingga","merah","kuning","","","","","","","A","","4071.jpeg","","","","","","","","0","1","","");
INSERT INTO soal VALUES("12","2","2","Ayah Lisa adalah seorang petani. Selain menyikapi dampak negatif datangnya musim penghujan, ayah Lisa juga memanfaatkan dampak positif musim penghujan untuk kelangsungan pertaniannya. Menurut ayah Lisa, La Nina memberikan banyak dampak positif pada sektor pertanian. Kemudian, Lisa mencari tahu apa saja dampak positif dari La Nina.  
DAMPAK POSITIF LA NINA
Dekan Sekolah Vokasi UGM Agus Maryono yang juga merupakan pakar Ekohidrolik dan pelopor restorasi sungai Indonesia mengatakan bahwa seharusnya tahun basah (musim penghujan) bisa dimanfaatkan. Daerah kering dan semi kering juga dapat memanfaatkan air yang berlimpah. Dengan adanya tahun basah, air tanah bisa terisi secara maksimal, begitu pula dengan danau, situ, serta telaga. Alur sungai pun dapat terbentuk dengan sempurna. Masyarakat di sekitar sungai dapat melakukan susur sungai sehingga mereka akan mengetahui sungai yang bisa digunakan untuk mitigasi serta sungai yang memiliki potensi wisata, potensi sumber air, dan potensi perikanan.
Selain itu, Rizaldi Boer dari Pusat Pengelolaan Risiko dan Peluang Iklim Institut Pertanian Bogor (IPB) mengatakan, La Nina juga mempunyai manfaat bagi pertanian pangan. La Nina memberi peluang untuk percepatan tanam serta perluasan area tanam padi, baik di lahan sawah irigasi, tadah hujan, maupun ladang. Lebih lanjut, La Nina dapat dimanfaatkan untuk meningkatkan areal tanam pada musim hujan, khususnya untuk daerah lahan kering. Petani disarankan untuk memanfaatkan mundurnya akhir musim hujan dengan menanam tanaman umur pendek dan berekonomi tinggi. Tak hanya itu, petani juga dapat melakukan adaptasi teknik budidaya pada daerah endemik banjir dan pertanian lahan kering di lahan gambut.
Dampak positif La Nina yang lain adalah dapat meningkatkan produksi perluasan lahan pasang surut. Lahan pesisir juga akan berkembang lebih baik karena salinitas dapat dikurangi dan perikanan darat bisa dikembangkan lebih awal. Dari segi sumber daya air, menurut Direktur Bina Teknik SDA Kementerian PU-Pera Eko Winar Irianto, kondisi La Nina dapat memenuhi kapasitas energi maksimum pada operasional waduk, sementara dalam kondisi El Nino energi yang dihasilkan akan berkurang.
Bagaimana dampak positif La Nina dari segi sumber daya air?","2","","","","","","","","","","","10","","","","","","","","","","0","5","","");
INSERT INTO soal VALUES("13","2","3","Kita sering kali melakukan olahraga. Bahkan, orang-orang di sekitar kita juga sering menyarankan kita untuk melakukan aktivitas tersebut. Rupanya, ada keterkaitan antara berolahraga dengan kesehatan fisik dan mental, misalnya terkait dengan perkembangan tubuh dan interaksi sosial.
     Perlu diketahui bahwa olahraga bermanfaat dalam mencegah risiko berbagai penyakit. Saat tubuh jarang melakukan olahraga, lemak akan menumpuk di dalam tubuh sehingga dapat berujung pada terjadinya obesitas. Namun, dengan berolahraga secara teratur, tumpukan lemak yang ada di dalam tubuh bisa terbakar. Selain itu, saat berolahraga, terjadi kontraksi otot-otot tubuh yang menyebabkan cairan getah bening dapat mengalir dengan lancar. Cairan getah bening merupakan cairan yang mengandung sel-sel darah putih yang berkaitan dengan sistem pertahanan tubuh. Berbeda dengan pembuluh darah, cairan getah bening ini tidak mengalir karena kontraksi jantung, tetapi karena kontraksi otot-otot yang melekat pada rangka tubuh kita.
     Selain manfaat tersebut, olahraga juga dapat meningkatkan perkembangan tubuh. Aktivitas yang dilakukan selama olahraga akan membantu tubuh untuk lebih cepat berkembang. Ketika berolahraga, terjadi kontraksi otot-otot yang menyebabkan otot lebih terlatih dan akan berkembang dengan baik. Selain itu, aktivitas olahraga yang diiringi gizi seimbang juga dapat membuat metabolisme tubuh menjadi lebih lancar karena hormon pertumbuhan bekerja lebih maksimal.
     Selain bermanfaat bagi kesehatan fisik, olahraga juga dapat meningkatkan interaksi sosial. Ketika olahraga dilakukan dalam kelompok, misalnya saat bermain sepak bola, basket, dan futsal, terjadi proses perkenalan dengan orang lain, baik dengan orang di dalam tim maupun di luar tim. Selain itu, terjadi proses saling bekerja sama saat bermain atau bertanding. Adanya kompetisi yang sehat dalam permainan olahraga tersebut juga membuat kita menjadi lebih jujur. Akhirnya, kita menjadi terbiasa dalam melakukan 
Selain berolahraga, hal yang perlu kita lakukan untuk menjaga kesehatan fisik dan mental adalah ....  ","3","Mengurangi makan makanan penyebab obesitas","Meningkatkan interaksi sosial dan sikap saling bekerja sama","Mengurangi makanan berprotein dan berlemak tinggi","Memakan makanan bergizi seimbang","","","","","","","A, B, D","","2779.jpeg","","","","","","","","0","3","","");
INSERT INTO soal VALUES("14","2","4","Mina padi adalah suatu bentuk usaha tani gabungan yang memanfaatkan genangan air sawah yang tengah ditanami padi sebagai kolam untuk budidaya ikan. Oleh karena itu, selain mendapat hasil panen yaitu padi, petani yang menerapkan sistem mina padi juga dapat memanen ikan. Pak Made adalah salah satu petani di Bali yang menerapkan sistem mina padi di sawahnya. Pak Made mengatakan bahwa dengan menerapkan sistem mina padi, pendapatan dari hasil panen beliau meningkat. “Akan tetapi, perawatan padi dan ikan pada sistem mina padi memang gampang-gampang susah”, katanya.
Benih ikan yang ditebar oleh Pak Made di sawah beliau yang seluas 1,5 ha adalah ikan emas dan ikan nila yang masih berukuran 5 cm sampai dengan 8 cm dengan kepadatan 5.000 ekor/ha. Perbandingan benih ikan emas dengan benih ikan nila yang ditebar oleh Pak Made adalah 3 : 2. Harga bibit ikan nila adalah Rp500,00/ekor dan harga bibit ikan emas adalah dua kali lipatnya. Setiap pagi, Pak Made memberi pakan tambahan berupa dedak halus 250 kg/ha untuk ikan yang ada di sawahnya.
Setelah tujuh puluh hari, Pak Made memanen ikannya tersebut. Total ikan yang dipanen adalah 6.500 kg/ha. Perbandingan hasil panen ikan emas dan ikan nila sama dengan perbandingan benih ikan ketika ditebar. Harga ikan emas dan ikan nila yang dipanen oleh Pak Made berturut-turut adalah Rp30.000,00/kg dan Rp27.000,00/kg. Sekitar 2 bulan kemudian, Pak Made memanen padinya dengan hasil panen 5,7 ton/ha. Pak Made menjualnya dalam bentuk gabah kering panen (GKP) dengan harga Rp5.000,00/kg.
Tentukan benar atau salah pernyataan berikut dengan memberi tanda ? pada kolom yang sesuai!
","4","• Total benih ikan emas yang ditebar di sawah Pak Made adalah 4.500 ekor","• Total benih ikan nila yang ditebar di sawah Pak Made adalah 2.000 ekor","• Total ikan emas yang dipanen Pak Made adalah 3.900 ekor","• Total ikan nila yang dipanen Pak Made adalah 3.900 ekor","","","","","","","B, S, S, B","","","","","","","","","","0","4","","");
INSERT INTO soal VALUES("15","2","5","Pemerintah melalui Badan Pusat Statistik telah merilis data produktivitas padi dari setiap provinsi di Indonesia. Data tersebut meliputi luas lahan persawahan yang dipanen dan produktivitas lahan panen. Adapun data jumlah produksi per tahun dapat diketahui dengan mengalikan luas lahan panen dan produktivitasnya. Angka produktivitas padi diperoleh melalui survei berupa Gabah Kering Panen (GKP) yang dikonversikan menjadi Gabah Kering Giling (GKG).
    Pulau Jawa sebagai pulau dengan jumlah penduduk terbanyak masih memerlukan pasokan beras dari daerah lain maupun dari impor. Hal tersebut karena jumlah hasil panen belum dapat mencukupi kebutuhan pangan masyarakat. Berikut data jumlah produksi padi dari perwakilan provinsi di 5 pulau terbesar di Indonesia. 
Tentukan urutan provinsi dari yang memiliki jumlah hasil panen tertinggi hingga terendah!","5","92.198.050,77 kuintal","46.786.971,19 kuintal","20.763.612,87 kuintal","11.345.248,95 kuintal","","Sumatra Utara","Jawa Barat","Kalimantan Selatan","Sulawesi Selatan","","C, A, D, B","#00BCD4, #F44336, #4CAF50, #FF9800","8634.png","","","","","","","","0","4","","");
INSERT INTO soal VALUES("16","3","1","SPEKTRUM GELOMBANG ELEKTROMAGNETIK
Kenny sedang melihat artikel mengenai Sains dan menemukan gambar sebagai berikutPada gambar, disajikan berbagai macam gelombang elektromagnetik yang disusun berdasarkan frekuensinya dalam satuan Hz.
Warna yang memiliki frekuensi lebih tinggi daripada warna hijau, tetapi lebih rendah daripada warna ungu adalah .... ","1","biru","jingga","merah","kuning","","","","","","","A","","6330.jpeg","","","","","","","","0","1","","");
INSERT INTO soal VALUES("17","3","2","Ayah Lisa adalah seorang petani. Selain menyikapi dampak negatif datangnya musim penghujan, ayah Lisa juga memanfaatkan dampak positif musim penghujan untuk kelangsungan pertaniannya. Menurut ayah Lisa, La Nina memberikan banyak dampak positif pada sektor pertanian. Kemudian, Lisa mencari tahu apa saja dampak positif dari La Nina.  
DAMPAK POSITIF LA NINA
Dekan Sekolah Vokasi UGM Agus Maryono yang juga merupakan pakar Ekohidrolik dan pelopor restorasi sungai Indonesia mengatakan bahwa seharusnya tahun basah (musim penghujan) bisa dimanfaatkan. Daerah kering dan semi kering juga dapat memanfaatkan air yang berlimpah. Dengan adanya tahun basah, air tanah bisa terisi secara maksimal, begitu pula dengan danau, situ, serta telaga. Alur sungai pun dapat terbentuk dengan sempurna. Masyarakat di sekitar sungai dapat melakukan susur sungai sehingga mereka akan mengetahui sungai yang bisa digunakan untuk mitigasi serta sungai yang memiliki potensi wisata, potensi sumber air, dan potensi perikanan.
Selain itu, Rizaldi Boer dari Pusat Pengelolaan Risiko dan Peluang Iklim Institut Pertanian Bogor (IPB) mengatakan, La Nina juga mempunyai manfaat bagi pertanian pangan. La Nina memberi peluang untuk percepatan tanam serta perluasan area tanam padi, baik di lahan sawah irigasi, tadah hujan, maupun ladang. Lebih lanjut, La Nina dapat dimanfaatkan untuk meningkatkan areal tanam pada musim hujan, khususnya untuk daerah lahan kering. Petani disarankan untuk memanfaatkan mundurnya akhir musim hujan dengan menanam tanaman umur pendek dan berekonomi tinggi. Tak hanya itu, petani juga dapat melakukan adaptasi teknik budidaya pada daerah endemik banjir dan pertanian lahan kering di lahan gambut.
Dampak positif La Nina yang lain adalah dapat meningkatkan produksi perluasan lahan pasang surut. Lahan pesisir juga akan berkembang lebih baik karena salinitas dapat dikurangi dan perikanan darat bisa dikembangkan lebih awal. Dari segi sumber daya air, menurut Direktur Bina Teknik SDA Kementerian PU-Pera Eko Winar Irianto, kondisi La Nina dapat memenuhi kapasitas energi maksimum pada operasional waduk, sementara dalam kondisi El Nino energi yang dihasilkan akan berkurang.
Bagaimana dampak positif La Nina dari segi sumber daya air?","2","","","","","","","","","","","10","","","","","","","","","","0","5","","");
INSERT INTO soal VALUES("18","3","3","Kita sering kali melakukan olahraga. Bahkan, orang-orang di sekitar kita juga sering menyarankan kita untuk melakukan aktivitas tersebut. Rupanya, ada keterkaitan antara berolahraga dengan kesehatan fisik dan mental, misalnya terkait dengan perkembangan tubuh dan interaksi sosial.
     Perlu diketahui bahwa olahraga bermanfaat dalam mencegah risiko berbagai penyakit. Saat tubuh jarang melakukan olahraga, lemak akan menumpuk di dalam tubuh sehingga dapat berujung pada terjadinya obesitas. Namun, dengan berolahraga secara teratur, tumpukan lemak yang ada di dalam tubuh bisa terbakar. Selain itu, saat berolahraga, terjadi kontraksi otot-otot tubuh yang menyebabkan cairan getah bening dapat mengalir dengan lancar. Cairan getah bening merupakan cairan yang mengandung sel-sel darah putih yang berkaitan dengan sistem pertahanan tubuh. Berbeda dengan pembuluh darah, cairan getah bening ini tidak mengalir karena kontraksi jantung, tetapi karena kontraksi otot-otot yang melekat pada rangka tubuh kita.
     Selain manfaat tersebut, olahraga juga dapat meningkatkan perkembangan tubuh. Aktivitas yang dilakukan selama olahraga akan membantu tubuh untuk lebih cepat berkembang. Ketika berolahraga, terjadi kontraksi otot-otot yang menyebabkan otot lebih terlatih dan akan berkembang dengan baik. Selain itu, aktivitas olahraga yang diiringi gizi seimbang juga dapat membuat metabolisme tubuh menjadi lebih lancar karena hormon pertumbuhan bekerja lebih maksimal.
     Selain bermanfaat bagi kesehatan fisik, olahraga juga dapat meningkatkan interaksi sosial. Ketika olahraga dilakukan dalam kelompok, misalnya saat bermain sepak bola, basket, dan futsal, terjadi proses perkenalan dengan orang lain, baik dengan orang di dalam tim maupun di luar tim. Selain itu, terjadi proses saling bekerja sama saat bermain atau bertanding. Adanya kompetisi yang sehat dalam permainan olahraga tersebut juga membuat kita menjadi lebih jujur. Akhirnya, kita menjadi terbiasa dalam melakukan 
Selain berolahraga, hal yang perlu kita lakukan untuk menjaga kesehatan fisik dan mental adalah ....  ","3","Mengurangi makan makanan penyebab obesitas","Meningkatkan interaksi sosial dan sikap saling bekerja sama","Mengurangi makanan berprotein dan berlemak tinggi","Memakan makanan bergizi seimbang","","","","","","","A, B, D","","9286.jpeg","","","","","","","","0","3","","");
INSERT INTO soal VALUES("19","3","4","Mina padi adalah suatu bentuk usaha tani gabungan yang memanfaatkan genangan air sawah yang tengah ditanami padi sebagai kolam untuk budidaya ikan. Oleh karena itu, selain mendapat hasil panen yaitu padi, petani yang menerapkan sistem mina padi juga dapat memanen ikan. Pak Made adalah salah satu petani di Bali yang menerapkan sistem mina padi di sawahnya. Pak Made mengatakan bahwa dengan menerapkan sistem mina padi, pendapatan dari hasil panen beliau meningkat. “Akan tetapi, perawatan padi dan ikan pada sistem mina padi memang gampang-gampang susah”, katanya.
Benih ikan yang ditebar oleh Pak Made di sawah beliau yang seluas 1,5 ha adalah ikan emas dan ikan nila yang masih berukuran 5 cm sampai dengan 8 cm dengan kepadatan 5.000 ekor/ha. Perbandingan benih ikan emas dengan benih ikan nila yang ditebar oleh Pak Made adalah 3 : 2. Harga bibit ikan nila adalah Rp500,00/ekor dan harga bibit ikan emas adalah dua kali lipatnya. Setiap pagi, Pak Made memberi pakan tambahan berupa dedak halus 250 kg/ha untuk ikan yang ada di sawahnya.
Setelah tujuh puluh hari, Pak Made memanen ikannya tersebut. Total ikan yang dipanen adalah 6.500 kg/ha. Perbandingan hasil panen ikan emas dan ikan nila sama dengan perbandingan benih ikan ketika ditebar. Harga ikan emas dan ikan nila yang dipanen oleh Pak Made berturut-turut adalah Rp30.000,00/kg dan Rp27.000,00/kg. Sekitar 2 bulan kemudian, Pak Made memanen padinya dengan hasil panen 5,7 ton/ha. Pak Made menjualnya dalam bentuk gabah kering panen (GKP) dengan harga Rp5.000,00/kg.
Tentukan benar atau salah pernyataan berikut dengan memberi tanda ? pada kolom yang sesuai!
","4","• Total benih ikan emas yang ditebar di sawah Pak Made adalah 4.500 ekor","• Total benih ikan nila yang ditebar di sawah Pak Made adalah 2.000 ekor","• Total ikan emas yang dipanen Pak Made adalah 3.900 ekor","• Total ikan nila yang dipanen Pak Made adalah 3.900 ekor","","","","","","","B, S, S, B","","","","","","","","","","0","4","","");
INSERT INTO soal VALUES("20","3","5","Pemerintah melalui Badan Pusat Statistik telah merilis data produktivitas padi dari setiap provinsi di Indonesia. Data tersebut meliputi luas lahan persawahan yang dipanen dan produktivitas lahan panen. Adapun data jumlah produksi per tahun dapat diketahui dengan mengalikan luas lahan panen dan produktivitasnya. Angka produktivitas padi diperoleh melalui survei berupa Gabah Kering Panen (GKP) yang dikonversikan menjadi Gabah Kering Giling (GKG).
    Pulau Jawa sebagai pulau dengan jumlah penduduk terbanyak masih memerlukan pasokan beras dari daerah lain maupun dari impor. Hal tersebut karena jumlah hasil panen belum dapat mencukupi kebutuhan pangan masyarakat. Berikut data jumlah produksi padi dari perwakilan provinsi di 5 pulau terbesar di Indonesia. 
Tentukan urutan provinsi dari yang memiliki jumlah hasil panen tertinggi hingga terendah!","5","92.198.050,77 kuintal","46.786.971,19 kuintal","20.763.612,87 kuintal","11.345.248,95 kuintal","","Sumatra Utara","Jawa Barat","Kalimantan Selatan","Sulawesi Selatan","","C, A, D, B","#00BCD4, #F44336, #4CAF50, #FF9800","7181.png","","","","","","","","0","4","","");



CREATE TABLE `sosial` (
  `ids` int(11) NOT NULL AUTO_INCREMENT,
  `kelas` varchar(50) DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  `nis` varchar(50) DEFAULT NULL,
  `ket1` mediumtext DEFAULT NULL,
  `ket2` mediumtext DEFAULT NULL,
  `pred` varchar(5) DEFAULT NULL,
  `smt` varchar(11) DEFAULT NULL,
  `tp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `spiritual` (
  `ids` int(11) NOT NULL AUTO_INCREMENT,
  `kelas` varchar(50) DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  `nis` varchar(50) DEFAULT NULL,
  `ket1` mediumtext DEFAULT NULL,
  `ket2` mediumtext DEFAULT NULL,
  `pred` varchar(5) DEFAULT NULL,
  `smt` varchar(11) DEFAULT NULL,
  `tp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mode` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO status VALUES("1","1");



CREATE TABLE `statustrx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mode` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO statustrx VALUES("1","3");



CREATE TABLE `surat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsiswa` varchar(11) DEFAULT NULL,
  `idpeg` varchar(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `file` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `surat_tugas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idpeg` varchar(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `keperluan` text DEFAULT NULL,
  `tempat` text DEFAULT NULL,
  `hari` varchar(50) DEFAULT NULL,
  `waktu` varchar(50) DEFAULT NULL,
  `tgl_berangkat` date DEFAULT NULL,
  `lama` varchar(11) DEFAULT NULL,
  `kendaraan` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `temp_file` (
  `id_file` int(11) NOT NULL AUTO_INCREMENT,
  `id_bank` int(11) DEFAULT 0,
  `nama_file` varchar(50) DEFAULT NULL,
  `status_file` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_file`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `temp_finger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(50) DEFAULT NULL,
  `idjari` int(11) DEFAULT NULL,
  `serial` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `temp_pil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idbank` int(11) NOT NULL,
  `nomor` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `temp_soal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_bank` int(11) NOT NULL,
  `nomor` int(11) NOT NULL,
  `idfile` int(11) NOT NULL,
  `file` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `tmpbayar` (
  `nokartu` varchar(100) DEFAULT NULL,
  KEY `nokartu` (`nokartu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO tmpbayar VALUES("");



CREATE TABLE `tmpbuku` (
  `kode` varchar(100) DEFAULT NULL,
  KEY `nokartu` (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `tmpface` (
  `nokartu` varchar(100) DEFAULT NULL,
  KEY `nokartu` (`nokartu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `tmpreg` (
  `nokartu` varchar(100) DEFAULT NULL,
  KEY `nokartu` (`nokartu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `tmpsis` (
  `nokartu` varchar(100) DEFAULT NULL,
  KEY `nokartu` (`nokartu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `token` (
  `id_token` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(6) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `masa_berlaku` time NOT NULL,
  PRIMARY KEY (`id_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO token VALUES("1","XYGUHC","2025-06-08 07:37:17","00:15:00");



CREATE TABLE `toko` (
  `idt` int(11) NOT NULL AUTO_INCREMENT,
  `nama_toko` varchar(100) DEFAULT NULL,
  `deskrip` text DEFAULT NULL,
  PRIMARY KEY (`idt`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO toko VALUES("1","Kantin Super","Kantin Super - Jual berbagai segala kebutuhan siswa ");
INSERT INTO toko VALUES("2","Kantin Tante Nova","Kantin Tante Nova - Menjual Segala Kebutuhan Makanan Anda");



CREATE TABLE `tp` (
  `id_tp` int(11) NOT NULL AUTO_INCREMENT,
  `idcp` varchar(11) DEFAULT NULL,
  `idelemen` varchar(11) DEFAULT NULL,
  `kompetensi` text DEFAULT NULL,
  `lingkup` text DEFAULT NULL,
  `tujuan` text DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  `mapel` varchar(11) DEFAULT NULL,
  `tingkat` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id_tp`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO tp VALUES("1","1","1","Membandingkan informasi berupa
gagasan yang akurat dari menyimak laporan hasil observasi dalam bentuk monolog","Membandingkan informasi berupa gagasan yang akurat dari menyimak laporan hasil observasi dalam bentuk monolog","Membandingkan informasi berupa
gagasan yang akurat dari menyimak laporan hasil observasi dalam bentuk monolog Membandingkan informasi berupa gagasan yang akurat dari menyimak laporan hasil observasi dalam bentuk monolog","3","3","10");
INSERT INTO tp VALUES("2","1","2","Merumuskan gagasan utama berdasarkan teks monolog laporan hasil observasi yang disimak","Mengevaluasi pesan dari menyimak teks monolog lawakan tunggal","Merumuskan gagasan utama berdasarkan teks monolog laporan hasil observasi yang disimak Mengevaluasi pesan dari menyimak teks monolog lawakan tunggal","3","3","10");
INSERT INTO tp VALUES("3","1","1","Menyimpulkan pesan dan perasaan dari menyimak teks cerita fiksi dalam bentuk monolog","Mengevaluasi pesan dari menyimak teks monolog lawakan tunggal ","Menyimpulkan pesan dan perasaan dari menyimak teks cerita fiksi dalam bentuk monolog Mengevaluasi pesan dari menyimak teks monolog lawakan tunggal ","3","3","10");



CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `idsiswa` varchar(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `idbuku` varchar(11) DEFAULT NULL,
  `jml` int(11) NOT NULL DEFAULT 1,
  `tgl_kembali` date DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `transaksi_kantin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `tahun` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

INSERT INTO transaksi_kantin VALUES("1","2025-03-02","1234567890","","1","5","3000","15000","2","0","03","2025");
INSERT INTO transaksi_kantin VALUES("2","2025-03-04","1234567890","","1","34","3000","102000","2","0","03","2025");
INSERT INTO transaksi_kantin VALUES("3","2025-03-05","6","","1","16","3000","48000","1","1","","");
INSERT INTO transaksi_kantin VALUES("4","2025-03-05","1234567890","","1","16","3000","48000","2","0","03","2025");
INSERT INTO transaksi_kantin VALUES("5","2025-03-05","1234567890","","1","60","3000","180000","2","0","03","2025");
INSERT INTO transaksi_kantin VALUES("6","2025-03-23","1234567890","","1","2","3000","6000","2","0","03","2025");
INSERT INTO transaksi_kantin VALUES("7","2025-03-24","18","","1","1","3000","3000","1","0","","");
INSERT INTO transaksi_kantin VALUES("8","2025-03-28","2","","1","2","3000","6000","1","0","","");
INSERT INTO transaksi_kantin VALUES("10","2025-05-01","1234567890","","1","7","3000","21000","2","0","05","2025");
INSERT INTO transaksi_kantin VALUES("11","2025-05-01","1234567890","","1","5","3000","15000","2","0","05","2025");
INSERT INTO transaksi_kantin VALUES("12","2025-05-16","2","","1","8","3000","24000","1","0","","");
INSERT INTO transaksi_kantin VALUES("13","2025-06-05","19","","2","1","14000","14000","1","0","","");
INSERT INTO transaksi_kantin VALUES("14","2025-06-05","19","","2","1","14000","14000","1","0","","");
INSERT INTO transaksi_kantin VALUES("15","2025-06-07","100","","1","1","7000","7000","1","1","","");
INSERT INTO transaksi_kantin VALUES("16","2025-06-07","100","","2","1","14000","14000","1","1","","");
INSERT INTO transaksi_kantin VALUES("17","2025-06-11","1","","1","1","7000","7000","3","0","","");
INSERT INTO transaksi_kantin VALUES("18","2025-06-11","100","","2","1","14000","14000","3","0","","");
INSERT INTO transaksi_kantin VALUES("20","2025-06-11","1","","1","1","7000","7000","1","0","","");



CREATE TABLE `trx_bayar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `blth` varchar(50) DEFAULT NULL,
  `idsiswa` int(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `idbayar` int(11) DEFAULT NULL,
  `bayar` int(11) DEFAULT NULL,
  `ke` int(11) DEFAULT NULL,
  `bukti` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO trx_bayar VALUES("1","2025-05-30","052025","1","VII-A","1","120000","1","TRX-:-20250530152131");
INSERT INTO trx_bayar VALUES("2","2025-06-01","062025","1","VII-A","1","120000","2","TRX-:-20250601143911");
INSERT INTO trx_bayar VALUES("3","2025-06-04","062025","3","X-A","1","120000","1","20250604090418-1");
INSERT INTO trx_bayar VALUES("4","2025-06-04","062025","47","XI-A","1","120000","1","20250604090439-1");



CREATE TABLE `tts_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text_input` text DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO tts_files VALUES("1","iman ruhiman","tts_1748710779_1232.mp3");
INSERT INTO tts_files VALUES("2","ALVERO DHIKO LEVANO","tts_1748710816_2508.mp3");
INSERT INTO tts_files VALUES("3","ALVERO DHIKO LEVANO","tts_1748710845_6638.mp3");
INSERT INTO tts_files VALUES("4","BELLA AYU INDAH SARI","tts_1748710852_6697.mp3");
INSERT INTO tts_files VALUES("5","ALVERO DHIKO LEVANO","tts_1748710885_5120.mp3");
INSERT INTO tts_files VALUES("6","iman ruhiman","tts_1748751374_4006.mp3");



CREATE TABLE `tugas` (
  `id_tugas` int(255) NOT NULL AUTO_INCREMENT,
  `guru` varchar(11) DEFAULT NULL,
  `kelas` mediumtext DEFAULT NULL,
  `mapel` varchar(255) DEFAULT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `tugas` longtext DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tgl_mulai` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tugas`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO tugas VALUES("1","3","a:2:{i:0;s:3:"X-A";i:1;s:3:"X-B";}","3","Teks Anekdot","<p>Pada kegiatan ini, kalian akan membaca laporan hasil observasi berjudul<br />&ldquo;Kunang-Kunang&rdquo;. Untuk melakukkan itu, perhatikan dan ikuti langkahlangkah berikut.</p>
<p><br /><strong>Sebelum membaca</strong><br />1. Tuliskan judul teks yang akan kalian baca.</p>
<p>2. Tuliskan pertanyaan Adiksimba (apa, di mana, kapan, siapa, mengapa,<br />dan bagaimana) yang muncul saat kalian membaca judul teks.<br />Setelah membaca<br />1. Tukarlah pertanyaan yang kalian buat dengan teman yang lain.<br />2. Jawablah pertanyaan yang kalian dapatkan.<br />3. Tuliskan informasi penting dari jawaban tersebut.<br />4. Buatlah ringkasan dari setiap paragraf.</p>
<p>&nbsp;</p>","Struktur dan Kebahasaan Teks Anekdot.pdf","2025-06-16 07:00:00","2025-06-30 08:13:00","2025-06-16 07:13:56","");



CREATE TABLE `tujuan` (
  `idt` int(11) NOT NULL AUTO_INCREMENT,
  `mapel` varchar(11) DEFAULT NULL,
  `level` varchar(11) DEFAULT NULL,
  `lm` text DEFAULT NULL,
  `tujuan` longtext DEFAULT NULL,
  `smt` varchar(11) DEFAULT NULL,
  `guru` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`idt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `ujian` (
  `id_ujian` int(11) NOT NULL AUTO_INCREMENT,
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
  `btnselesai` int(11) DEFAULT 0,
  PRIMARY KEY (`id_ujian`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO ujian VALUES("1","BINDO-A","1","PAT","BINDO","2","2","2","2","2","2","2","2","2","2","90","2025-06-16 07:00:00","2025-06-30 08:04:00","07:00:00","","10","UMUM","4","1","1","0","1","0","","0","","0","5","0");
INSERT INTO ujian VALUES("2","MTK-A","2","PAT","MTK","1","1","1","1","1","1","1","1","1","1","90","2025-06-16 07:00:00","2025-06-30 08:04:00","07:00:00","","10","UMUM","4","1","1","0","1","0","","0","","0","5","0");
INSERT INTO ujian VALUES("3","IPA-B1","3","PAT","IPA","1","1","1","1","1","1","1","1","1","1","90","2025-06-16 07:00:00","2025-06-30 08:05:00","07:00:00","","10","UMUM","4","1","1","0","1","0","","0","","0","5","0");



CREATE TABLE `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
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
  `saldo` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

INSERT INTO users VALUES("1","","Admin","admin","$2y$10$t3L.GQrBJJHa5gPSooBuhOiZYk4yFgJT7TqBvqPI1bU57mJFQOrAG","admin","","2","","","","","","","","","","","","","","","","0");
INSERT INTO users VALUES("2","123456","Olivia Andrigo, M.Pd.","guru1","guru1","guru","0","0","","","Guru","X-B","","","","","","","","","0","0","","0");
INSERT INTO users VALUES("3","123457","Lionel Andreas, S.Pd. M.Si.","guru2","guru2","guru","0","0","","","Guru","X-A","","","","","","","","","0","0","","0");
INSERT INTO users VALUES("4","123458","Emma Sophia, S.Pd. M.E.","guru3","guru3","guru","0","0","","","Guru","XI-A","","","","","","","","","0","0","","0");
INSERT INTO users VALUES("5","123459","Amelia Isabella, S.Pd.","guru4","guru4","guru","0","0","","","Guru","XI-B","","","","","","","","","0","0","","0");
INSERT INTO users VALUES("6","123460","William Liam, S.Pd.","guru5","guru5","guru","0","0","","","Guru","XII-A","","","","","","","","","0","0","","0");
INSERT INTO users VALUES("7","123461","Amor Antropo, S.Pd.","guru6","guru6","guru","0","0","","","Guru","XII-B","","","","","","","","","0","0","","0");
INSERT INTO users VALUES("8","123462","Lucas Amenia, S.Pd.","guru7","guru7","guru","","0","","","Guru","","","","","","","","","","","","","0");
INSERT INTO users VALUES("9","123463","Alicia Aprilia, S.Pd.","guru8","guru8","guru","","0","","","Guru","","","","","","","","","","","","","0");
INSERT INTO users VALUES("10","123464","Ronaldo Christiano, S.Pd.","guru9","guru9","guru","","0","","","Guru","","","","","","","","","","","","","0");
INSERT INTO users VALUES("11","123465","Rizky Hanif Mahardika, M.Pd","guru10","guru10","guru","","0","","","Guru","","","","","","","","","","","","","0");
INSERT INTO users VALUES("12","123466","Oky Dony, S.Pd","guru11","guru11","guru","","0","","","Guru","","","","","","","","","","","","","0");
INSERT INTO users VALUES("13","123467","Dewi Anisah, S.E","guru12","guru12","guru","","0","","","Guru","","","","","","","","","","","","","0");
INSERT INTO users VALUES("14","123468","Elsa Rahmawati, S.Pd","guru13","guru13","guru","","0","","","Guru","","","","","","","","","","","","","0");
INSERT INTO users VALUES("15","123469","Farida Agustina, S.Pd","guru14","guru14","guru","","0","","","Guru","","","","","","","","","","","","","0");
INSERT INTO users VALUES("16","123470","Eva Kurniawati, S.Pd","guru15","guru15","guru","","0","","","Guru","","","","","","","","","","","","","0");
INSERT INTO users VALUES("17","123471","Fatimatuz Zahro, S.Pd","guru16","guru16","guru","","0","","","Guru","","","","","","","","","","","","","0");
INSERT INTO users VALUES("18","123472","Hidayat Rahman, S.Pd","guru17","guru17","guru","","0","","","Guru","","","","","","","","","","","","","0");
INSERT INTO users VALUES("19","123473","Mukhammad Ali, M.Pd","guru18","guru18","guru","","0","","","Guru","","","","","","","","","","","","","0");
INSERT INTO users VALUES("20","123474","Dina Novitasari, S.Pd","guru19","guru19","guru","","0","","","Guru","","","","","","","","","","","","","0");
INSERT INTO users VALUES("21","123475","Dedi Fermiansyah, S.Pd.","guru20","guru20","guru","","0","","","Guru","","","","","","","","","","","","","0");
INSERT INTO users VALUES("22","","James George, S.Pd. M.Pd.","admin1","$2y$10$E./wE5C8m21i8lhOXwbR6uv84zU9M3hQHaTqoQ.tYwkJCEA1s20DW","admin","","0","","","","","","","","","","","","","","","","0");
INSERT INTO users VALUES("23","09327257612","Noah Andre, S.E.","staff1","staff1","staff","0","0","","","Staff","","","","","","","","","","0","0","","0");
INSERT INTO users VALUES("24","9505859645","Harry Joshua, S.Pd.","staff2","staff2","staff","0","0","","","Staff","","","","","","","","","","0","0","","0");
INSERT INTO users VALUES("25","2758579919","Oliver Amelia, S.Pd.","staff3","staff3","staff","0","0","","","Staff","","","","","","","","","","0","0","","0");
INSERT INTO users VALUES("26","0068502845","Miley Chrus, S.IP..","staff4","staff4","staff","0","0","","","Staff","","","","","","","","","","0","0","","0");
INSERT INTO users VALUES("27","","Revolusi, S.P.d","pengawas1","pengawas1","awas","0","0","","","","","10","X-A","X-A","1","","","","","","","","0");
INSERT INTO users VALUES("28","","Andro, S.Pd.","pengawas2","pengawas2","awas","0","0","","","","","10","X-B","X-B","1","","","","","","","","0");



CREATE TABLE `waktu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hari` varchar(50) NOT NULL,
  `masuk` varchar(50) NOT NULL,
  `pulang` varchar(50) NOT NULL,
  `batas_pulang` varchar(50) DEFAULT NULL,
  `alpha` varchar(50) NOT NULL,
  `masuk_eskul` varchar(50) DEFAULT NULL,
  `pulang_eskul` varchar(50) DEFAULT NULL,
  `batas_eskul` varchar(50) DEFAULT NULL,
  `piket_masuk` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `walas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kelas` varchar(50) DEFAULT NULL,
  `idwalas` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kelas` (`kelas`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO walas VALUES("1","X-1","24");
INSERT INTO walas VALUES("2","X-2","16");
INSERT INTO walas VALUES("3","XI-1","4");
INSERT INTO walas VALUES("4","XII-1","5");

