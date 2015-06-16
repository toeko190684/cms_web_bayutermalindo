-- phpMyAdmin SQL Dump
-- version 3.4.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 16, 2012 at 10:57 AM
-- Server version: 5.0.95
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bayuterm_dbkabar`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE IF NOT EXISTS `agenda` (
  `id_agenda` int(5) NOT NULL auto_increment,
  `tema` varchar(100) collate latin1_general_ci NOT NULL,
  `tema_seo` varchar(100) collate latin1_general_ci NOT NULL,
  `isi_agenda` text collate latin1_general_ci NOT NULL,
  `tempat` varchar(100) collate latin1_general_ci NOT NULL,
  `pengirim` varchar(100) collate latin1_general_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tgl_posting` date NOT NULL,
  `username` varchar(50) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_agenda`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=32 ;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `tema`, `tema_seo`, `isi_agenda`, `tempat`, `pengirim`, `tgl_mulai`, `tgl_selesai`, `tgl_posting`, `username`) VALUES
(30, 'Seminar "Membangun Portal Berita ala Detik.com"', 'seminar-membangun-portal-berita-ala-detikcom', 'Seminar ini akan membahas tentang konsep, proses, dan implementasi dalam membangun portal berita sekelas detik.com.<br>', 'Lab. Universitas Atmajaya Yogyakarta', 'HMJ TI (081843092580)', '2009-03-14', '2009-03-14', '2009-01-31', 'admin'),
(31, 'Bedah Buku "Membongkar Trik Rahasia Master PHP"', 'bedah-buku-membongkar-trik-rahasia-master-php', 'Acara bedah buku terbaru dari Lukmanul Hakim yang berjudul Membongkar Trik Rahasia Para Master PHP.<br>', 'Masih dalam konfirmasi', 'Enda (08192839849)', '2009-03-28', '2009-03-28', '2009-01-31', 'admin'),
(29, 'Workshop "3 Hari Menjadi Master PHP"', 'workshop-3-hari-menjadi-master-php', 'Workshop ini bertujuan untuk bla .. bla .. bla<br>', 'Jogja Expo Center', 'Adi (081893274848)', '2009-02-21', '2009-02-23', '2009-01-31', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `id_banner` int(5) NOT NULL auto_increment,
  `judul` varchar(100) collate latin1_general_ci NOT NULL,
  `url` varchar(100) collate latin1_general_ci NOT NULL,
  `gambar` varchar(100) collate latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY  (`id_banner`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id_banner`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(7, 'Fresh Book', 'http://freshbooks.com', 'freshbook.jpg', '2009-02-05'),
(3, 'Telkomsel', 'http://www.telkomsel.com', 'telkomsel.gif', '2008-02-09');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE IF NOT EXISTS `berita` (
  `id_berita` int(5) NOT NULL auto_increment,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) collate latin1_general_ci NOT NULL,
  `judul` varchar(100) collate latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) collate latin1_general_ci NOT NULL,
  `isi_berita` text collate latin1_general_ci NOT NULL,
  `hari` varchar(20) collate latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) collate latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL default '1',
  `tag` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_berita`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=112 ;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `judul_seo`, `isi_berita`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`) VALUES
(103, 0, 'admin', 'Launching Web PT Bayu Thermalindo Utama', '', '<br>', 'Minggu', '2011-08-14', '10:18:30', '', 1, ''),
(104, 29, 'admin', 'Kebakaran dijakarta Meningkat Tajam', '', 'Kasus kebakaran di DKI Jakarta ternyata masih cukup tinggi. sepanjang Januari 9 Juni 2009, dinas pemadam kebakaran dan penangulangan bencana DKI Jakarta mencatat sudah terjadi 300 kasus..<br><br>korban meniggal dunia akibat kebakaran tercatat sebanyak 17 orang, dan korban luka luka 22 orang. warga jakarta diminta terus meningkatkan kewaspadaan terhadap terjadinya peristiwa kebakaran.<br><br>kasus kebakaran paling banyak terjadi di jakarta selatan, yakni 71 kasus, kemudian jakarta barat 70 kasus, jakarta timur 61 kasus, jakarta pusat 52 kasus, dan jakarta utara 46 kasus.<br><br>Jika dilakukan rata rata, maka frekuensi kebakaran di DKI jakarta setiap hari bisa terjadi dua kasus. "dalam kurun waktu enam bulan ini rata rata terjadi&nbsp; dua kasus. dalam kurun waktu enam bulan ini rata rata terjadi dua kasus kebakaran per hari, kata kepala dinas dimkar dan PB DKI paimin napitupulu seperti dikutip situs pemerintah DKI, Rabu 10 juni 2009.<br><br>sedangkan penyebabnya, korsleting arus listrik/hubungan arus pendek 183 kasus. sedangkan penyebab lain, seperti mobil terbakar, bus terbakar atau kejadian kecelakaan lainnya, yaitu 73 kasus. kemudian disebabkan kompor meledak 33 kasus, lampu tempel 3 kasus dan rokok 8 kasus.<br><br>menurut waktu terjadinya, kebakaran yang terjadi pada pagi hari sebanyak 6 kali, siang hari 95 kali , malam hari 80 kali dan dini hari 56 kali.<br><br>untuk objek yang terbakar, bangunan perumahan 135 unit, bangunan umum 56 unit, bangunan industri 11 unit, kendaraan 25 unit dan benda lainnya 73 unit.<br><br>sedangkan penghuni yang kehilangan tempat tinggal sebanyak 6.425 jiwa atau 1.708 KK. luas areal yang terbakar yaitu 84.566 meter persegi dan kerugian diperkirakan sejumlah Rp. 80 juta.<br><br>dari sejumlah kasus tersebut, peristiwa kebakaran yang palng menonjol , menurut paimin hanya ada dua, yakni peristiwa kebakaran depo pertamina di plumpang, jakarta&nbsp; utara, dan kebakaran bank BTN di Harmoni, Jakarta Pusat.<br><br>Kasus kebakaran di plumpang merupakan kasus kebakaran terbesar yang membutuhkan ratusan petugas damkar untuk memadamkan api. kemudian di harmoni. petugas pemadam kebakaran bisa menyelamatkan seorang pekerja bank yang pingsan di lantai 19.<br><br>lalu mampu mengamankan delapan orang pekerja yang berusaha mengambil dokumen di lantai 8.<br><br>', 'Minggu', '2011-08-14', '10:18:49', '', 124, ''),
(105, 0, 'admin', 'Tips Jika terjadi kebakaran', '', '<div style="font-family: Arial,Helvetica,sans-serif;"><span style="font-size: small;"><b>Berikut tips jika terjadi kebakaran pada rumah atau gedung yang kita tempati</b> :</span></div><ul style="font-family: Arial,Helvetica,sans-serif; text-align: justify;"><li><span style="font-size: small;">Tetap tenang saat menghadapi kebakaran.</span></li><li><span style="font-size: small;">Jika kebakaran kecil dan masih bisa \r\ndiatasi, segera padamkan dengan  alat pemadam yang ada seperti APAR \r\n(Alat Pemadam Api Ringan) atau dengan  karung goni yang dibasahi air.</span></li><li><span style="font-size: small;">Jika kebakaran disebabkan oleh korsleting listrik segera </span><span style="font-size: small;">matikan listrik di rumah atau gedung.</span></li><li><span style="font-size: small;">Tutup ruangan yang terjadi kebakaran\r\n agar tidak menjalar ke ruang  lain tetapi jangan dikunci, untuk \r\nmemudahkan jika akan memadamkan  kobaran api.</span></li><li><span style="font-size: small;">Jika kebakaran besar, segera keluar \r\nrumah dan ajak semua keluarga  meninggalkan rumah segera. Jangan \r\nsibukkan diri untuk mengumpulkan  barang di dalam rumah.</span></li><li><span style="font-size: small;">Berjalanlah dengan tenang, jangan lari, perhatian penuh dan tidak panik.</span></li><li><span style="font-size: small;">Jika menemukan asap tebal dijalan \r\natau suatu ruangan, hindari jangan  sampai menghirup asap, misalnya \r\ndengan cara merangkak dan bernafas  dengan mendekatkan muka ke lantai, \r\ngunakan kain basah sebagai penutup  hidung, hal ini akan membantu untuk \r\nbernafas.</span></li><li><span style="font-size: small;">Jika anda melalui pintu yang \r\ntertutup, periksalah dengan seksama  suhu daun pintu dengan menempelkan \r\nbelakang telapak tangan Anda.  Kemudian periksa handle pintu. Jika panas\r\n pindah melaui jalur lain.</span></li><li><span style="font-size: small;">Jika perlu lakukan latihan evakuasi jika terjadi kebaran agar upaya penyelamatan dapat berjalan lebih cepat.</span></li><li style="text-align: justify;"><span style="font-size: small;">Segera hubungi pemadam kebaran 113 jika api tidak dapat anda kendalikan sendiri.</span></li></ul><div style="overflow: hidden; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); text-align: left; text-decoration: none; border: medium none;"><br>sumber: <span style="color: #003399;">hxxp://manajubelz.blogspot.com/2011/01/tips-jika-terjadi-kebakaran-di-rumah.html#ixzz1lekqLt7n</span><br></div>', 'Minggu', '2011-08-14', '10:19:09', '', 180, ''),
(106, 29, 'admin', 'Sekilas Online Marketing', '', '<span class="copy04">online marketing pada dasarnya adalah kegiatan komunikasi pemasaran dengan menggunakan median internet. pada awalnya menggunakan halaman berformat HTML yang bisa diakses oleh pengguna internet. itulah awal dari website yang kemudian menjadi rumah kedua bagi perusahaan perusahaan yang sudah eksis untuk menampilkan jati diri.<br><br>Pada perkembangannya online marketing tidak hanya menggunakan media website, namun juga email dan aplikasi aplikasi lain yang berja daalan diatas protocol internet.<br><br>Sebagai bagian dari kegiatan marketing dengan menggunakan media Internet, online advertising (periklanan di internet ) menjadi kajian yang menarik bagi para marketer khususnya dan dunia usaha umumnya.<br><br>Apa sebenarnya periklanan di internet itu?<br>pada awalnya periklanan di media internet adalah memindahkan materi iklan yang sudah berjalan di median konvensional ( televisi, majalah, surat kabar) kedalam website. namun pada perkembangannya. pemanfaatan karakteristik media internet mampu memaksimalkan hasil yang didapat melalui aktifitas periklanan diinternet. hal tersebut menjadikan media internet kini dipakai sebagai bagian dari bauran pemasaran dengan pendekatan yang berbeda sesuai dengan karakterikstik media dan target audiens yang ingin dicapai.<br><br>aktifitas yang lazim dipakai dalam perikalanan di media internet adalah memasang banner (banner ad). Namun tuntutan komunikasi pemasaran yang makin kompleks tidak cukup hanya dengna cara seperti itu, dibutuhkan strategi, kreatifitas dan pengukuran yang akurat serta mengkonvergensikan kemungkinan yang ada. misalnya, menggunakan strategi viral melalui email marketing, membangun situs khusus produk yang terpisah dari corporate site, merancang webtorial pages, membuat advent-gaming, mensinergikan dengan mobile marketing, online survey/poling dan strategi lainnya.<br><br>Masih banyak kemungkinan penegembangan lain pada periklanan diinternet. bersama online marketing consultant detik.com. kami siap mewujudkan tercapainya online marketing campaign anda dengan pendekatan yang spesifik dan akurat.<br><br>dengna menggunakan detik.com, portal berita terbesar diindonesi, sebgai media untuk&nbsp; mendistribusikan online marketing campaign anda , adalah pilihan yang tepat. karena dengna cara tersebut campaign anda akan dilihat&nbsp; oleh sebagian besar pengguna internet diindonesia.<br>\r\n<br>\r\n</span>', 'Minggu', '2011-08-14', '10:19:30', '', 284, ''),
(107, 29, 'admin', 'Kebakaran Di RSCM mengakibatkan 3 Orang luka ringan', '', '<div style="text-align: justify;"><strong>Jakarta </strong> -\r\n                RSCM menelan kerugian sekitar Rp 1 miliar akibat \r\nkebakaran yang melanda ruang Hemodialisa di lantai 8. Pasien cuci darah \r\ndirujuk ke RS JMC dan RSPAD Gatot Subroto.<br><br>"Kerugian di luar alat\r\n kurang lebih Rp 1 miliar. Sistem tata udara, sistem kelistrikan, sistem\r\n air. Tidak ada korban jiwa dalam peristiwa ini," kata Direktur Umum dan\r\n Operasional RSCM, Dr Omo Abdul Madjid, di RSCM, Jakarta, Senin \r\n(6/2/2012).<br><br>Dijelaskan dia, ruang yang terbakar Hemodialisa (HD),\r\n adalah jenis pelayanan untuk cuci darah. Di ruang itu, ada 36 mesin \r\npelayanan. Pelayanan ini dilakukan pada hari kerja mulai pukul 08.00 \r\nWIB. Ada dua shift pagi dan siang.<br><br>Menurut dia, kejadian \r\nkebakaran diketahui terjadi pukul 06.00 WIB ketika petugas cleaning \r\nservice melihat ada asap di ruang tersebut. Kebakaran diduga akibat \r\nkorsleting listrik.<br><br>"2 Mesin terbakar, masih utuh tetapi \r\nkerangkanya terbakar. 1 Tempat tidur dan 3 buah AC. Kebakaran bisa \r\ndipadamkan pukul 07.20 WIB," ujar dia.<br><br>Omo mengatakan akibat kebakaran maka HD sementara tidak bisa melayani pasien. Untunglah kebakaran tidak mengganggu unit lainnya.<br><br>"Kita\r\n sudah berkoordinasi dengan rumah sakit yang melayani hemodialisa di \r\nsekitar Jakarta. Semoga 1 minggu, pelayanan sudah bisa dilaksanakan \r\nkembali," kata Omo.<br><br>Kepala Divisi Ginjal dan Hipertensi, dr Dharmaizar, menambahkan 36 pasien sudah disalurkan ke rumah sakit di sekitar Jakarta. <br><br>"Untuk\r\n shift siang, sudah dikoordinasikan untuk dikerjakan pada sore hari. \r\nUntuk yang shift pagi, kita sudah antar 10 orang untuk ditampung dulu di\r\n JMC, Buncit. Nanti sore, 26 orang lagi kita antarkan ke sana," kata \r\nDharmaizar.<br><br>"Pasien yang shift siang akan dilayani di RSPAD. Besok dan selanjutnya, siang ini kami akan rapat," lanjut dia.<br><br>Sumber&nbsp; : http://www.detiknews.com/read/2012/02/06/112131/1834954/10/kebakaran-rscm-telan-kerugian-rp-1-miliar<br></div>', 'Minggu', '2011-08-14', '10:19:57', '', 336, ''),
(108, 29, 'admin', 'Alat Pemadam Api', '', '<p style="text-align: justify;"><b>Alat Pemadam Api</b> adalah alat perlindungan kebakaran aktif yang digunakan untuk memadamkan <a href="http://id.wikipedia.org/wiki/Api" title="Api">api</a> atau mengendalikan <a href="http://id.wikipedia.org/wiki/Kebakaran" title="Kebakaran" class="mw-redirect">kebakaran</a>\r\n kecil, umumnya dalam situasi darurat. Pemadam api tidak dirancang untuk\r\n digunakan pada kebakaran yang sudah tidak terkontrol, misalnya ketika \r\napi sudah membakar <a href="http://id.wikipedia.org/wiki/Langit-langit" title="Langit-langit">langit-langit</a>. Umumnya alat pemadam api terdiri dari sebuah <a href="http://id.wikipedia.org/wiki/Tabung" title="Tabung">tabung</a> ber <a href="http://id.wikipedia.org/w/index.php?title=Tekanan_tinggi&amp;action=edit&amp;redlink=1" class="new" title="Tekanan tinggi (halaman belum tersedia)">tekanan tinggi</a> yang berisi <a href="http://id.wikipedia.org/wiki/Bahan" title="Bahan">bahan</a> pemadam api.</p>\r\n<p style="text-align: justify;">Ada dua jenis utama alat pemadam kebakaran&nbsp;: yaitu bertekanan di \r\ndalam dan dioperasikan oleh cartridge. Dalam unit bertekanan di dalam, \r\ngas penyembur disimpan pada ruang yang sama dengan bahan pemadam \r\nkebakaran tersebut. Tergantung pada bahan yang digunakan, jika berbeda \r\nmaka bahan pendorong yang digunakan juga berbeda. Pada alat pemadam \r\nberisi bahan kimia kering, umumnya digunakan nitrogen; alat pemadam air \r\ndan busa biasanya menggunakan udara. Alat pemadam api bertekanan di \r\ndalam adalah jenis yang paling umum. Sedangkan jenis Alat pemadam yang \r\ndioperasikan Cartridge gas penyembur berisi dalam cartridge yang \r\nterpisah yang harus ditekan lebih dulu sebelum mengalir keluar, \r\nmendorong bahan pemadam.</p>\r\n<p style="text-align: justify;">Jenis ini tidak seperti biasa, digunakan terutama untuk fasilitas \r\nindustri, di mana memerlukan penggunaan dengan kemampuan yang lebih \r\ntinggi dari yang biasa. serta memiliki keuntungan karena lebih sederhana\r\n sehingga memungkinkan pemakai untuk cepat melaksanakan pemadaman, \r\nhingga mampu mengendalikan api dalam kurun waktu yang cepat. Tidak \r\nseperti jenis bertekanan di dalam yang menggunakan nitrogen, alat \r\npemadam ini menggunakan pendorong karbon dioksida bukan nitrogen, \r\nmeskipun model cartridge nitrogen juga kadang digunakan pada temperatur \r\nrendah.</p>\r\n<p style="text-align: justify;">Jenis alat pemadam yang digunakan di seluruh dunia dioperasikan oleh \r\nCartridge tersedia dalam bahan kimia kering dan jenis serbuk kering \r\nserta berbahan basah seperti air, busa, kimia kering (kelas ABC dan BC),\r\n dan bubuk kering (kelas D) .</p>\r\n<p style="text-align: justify;">Alat Pemadam api selanjutnya terbagi lagi menjadi pemadam genggam \r\nportable yang juga disebut alat pemadam genggam dengan berat antara \r\n0,5-14 kilogram (1 sampai 30 pon), karena mudah dibawa dengan tangan. \r\nberikutnya adalah Alat pemadam api beroda biasanya memiliki berat badan \r\n23 + kilogram (50 + pound). Model beroda ini yang paling sering \r\nditemukan di lokasi bangunan, bandar udara, heliports, Serta Dok dan \r\npelabuhan.</p>', 'Minggu', '2011-08-14', '10:20:12', '', 42, '');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `id_client` int(5) NOT NULL auto_increment,
  `nama_client` varchar(50) collate latin1_general_ci NOT NULL,
  `client_seo` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_client`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=69 ;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id_client`, `nama_client`, `client_seo`) VALUES
(38, 'NOVOTEL BOGOR', 'HOTEL'),
(36, 'GRAN MAHAKAM', 'HOTEL'),
(37, 'ARYA DUTA', 'HOTEL'),
(39, 'AQUA GOLDEN MISISIPPI', 'INDUSTRI'),
(40, 'AUTOCOMP SYSTEM INDONESI', 'INDUSTRI'),
(41, 'PT. YOKOGAWA', 'INDUSTRI'),
(42, 'DHARMA POLY METAL GROUP', 'INDUSTRI'),
(43, 'DARMA POLY PLAS', 'INDUSTRI'),
(44, 'INDOKORDSA TBK', 'INDUSTRI'),
(45, 'SERASI AUTO RAYA', 'INDUSTRI'),
(46, 'TIRTA INVESTAMA', 'INDUSTRI'),
(47, 'TRAKTOR NUSANTARA', 'INDUSTRI'),
(48, 'SOHO INDUSTRI PHARMASI', 'INDUSTRI'),
(49, 'KIMIA FARMA', 'INDUSTRI'),
(50, 'ASTRA NISA INTERNASIONAL', 'INDUSTRI'),
(51, 'ELECTRONIK CITY', 'INDUSTRI'),
(52, 'ASABRI (PERSERO)', 'INDUSTRI'),
(53, 'TOKAI DHARMA INDONESIA', 'INDUSTRI'),
(54, 'PERTAMINA T & C SIMPRUG', 'INDUSTRI'),
(55, 'SENAYAN TRIKARYA', 'INDUSTRI'),
(56, 'NUTRIFOOD INDONESIA', 'INDUSTRI'),
(57, 'JAGAT BAJA PRIMA UTAMA', 'INDUSTRI'),
(58, 'LION MENTARI ,AIR LINES', 'INDUSTRI'),
(59, 'MAL ARTHA GADING', 'MALL'),
(60, 'PLAZA SENAYAN', 'MALL'),
(61, 'PLAZA ATRIUM ADIKA LESTARI', 'MALL'),
(62, 'BANK BII', 'BUILDING'),
(63, 'BANK BNI', 'BUILDING'),
(64, 'BRITISH EMBASSY', 'BUILDING'),
(65, 'IKATAN AKUTANSI INDONESIA', 'BUILDING'),
(66, 'GEDUNG BANK EXIM', 'BUILDING'),
(67, 'RS. IBU DAN ANAK AULIA', 'HOSPITAL'),
(68, 'RS. HAJI PONDOK GEDE', 'HOSPITAL');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE IF NOT EXISTS `download` (
  `id_download` int(5) NOT NULL auto_increment,
  `judul` varchar(100) collate latin1_general_ci NOT NULL,
  `nama_file` varchar(100) collate latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY  (`id_download`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `judul`, `nama_file`, `tgl_posting`) VALUES
(9, 'Colour dome Camera', 'Colur%20Dome%20Camera.zip', '2012-02-07'),
(10, 'Fire Extinguisher', 'fire%20extinguisher.zip', '2012-02-10'),
(11, 'Fire Hose Hydrant', 'FIRE%20HOSE%20HYDRANT.pdf', '2012-02-10'),
(12, 'DVR & IT Camera', 'DVR%20&%20IT%20Product.zip', '2012-02-10'),
(14, 'Monochrome Camera', 'Monocrome%20Camera.zip', '2012-02-10'),
(15, 'IR Camera', 'IR%20Camera.zip', '2012-02-10'),
(16, 'Fire Killer', 'fire%20killer.zip', '2012-02-10'),
(17, 'Thermatic fire Extinguisher', 'thermatic%20fire%20extinguisher.zip', '2012-02-10'),
(18, 'CO2 System', 'cosystem.zip', '2012-02-10');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(5) NOT NULL auto_increment,
  `nama_kategori` varchar(50) collate latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_kategori`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=32 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `kategori_seo`) VALUES
(25, 'Fire Extinguisher', ''),
(26, 'Fire Hose Hydrant', ''),
(27, 'Camera CCTV', ''),
(28, 'Suppression System', ''),
(29, 'Berita', ''),
(31, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE IF NOT EXISTS `modul` (
  `id_modul` int(5) NOT NULL auto_increment,
  `nama_modul` varchar(50) collate latin1_general_ci NOT NULL,
  `link` varchar(100) collate latin1_general_ci NOT NULL,
  `static_content` text collate latin1_general_ci NOT NULL,
  `gambar` varchar(100) collate latin1_general_ci NOT NULL,
  `publish` enum('Y','N') collate latin1_general_ci NOT NULL,
  `status` enum('user','admin') collate latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') collate latin1_general_ci NOT NULL,
  `urutan` int(5) NOT NULL,
  PRIMARY KEY  (`id_modul`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=41 ;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `link`, `static_content`, `gambar`, `publish`, `status`, `aktif`, `urutan`) VALUES
(2, 'Manajemen User', '?module=user', '', '', 'N', 'admin', 'Y', 1),
(18, 'Berita', '?module=berita', '', '', 'Y', 'user', 'Y', 5),
(10, 'Manajemen Modul', '?module=modul', '', '', 'N', 'admin', 'Y', 2),
(31, 'Kategori', '?module=kategori', '', '', 'Y', 'admin', 'Y', 4),
(40, 'tag', '?module=tag', '', '', 'Y', 'user', 'Y', 15),
(36, 'Download', '?module=download', '', '', 'Y', 'admin', 'Y', 11),
(37, 'Profile', '?module=profil', '', '', 'Y', 'user', 'Y', 12),
(38, 'Product', '?module=product', '', '', 'Y', 'user', 'Y', 13),
(39, 'Client', '?module=client', '', '', 'Y', 'user', 'Y', 14);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id_product` int(5) NOT NULL auto_increment,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) collate latin1_general_ci NOT NULL,
  `judul` varchar(100) collate latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) collate latin1_general_ci NOT NULL,
  `isi_product` text collate latin1_general_ci NOT NULL,
  `hari` varchar(20) collate latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) collate latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL default '1',
  `tag` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_product`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=143 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `id_kategori`, `username`, `judul`, `judul_seo`, `isi_product`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`) VALUES
(82, 25, 'admin', 'ABC Powder', '', '<img alt="" src="images/abcpowder.jpg" align="none"><br><br><img alt="" src="http://bayutermalindoutama.co.id/images/tombol_03.jpg/bmi_orig_img/tombol_03.jpg" align="none"><br>FEATURES <br><ul><li>Large Filling opening for extremely easy maintenance</li><li>Captive nut head cap closure provides for easy alignment of pressure gauge and instructions after servicing.</li><li>Highest efficiency dry powder with abrupt extinguishing effect.</li><li>All stell epoxy coated cylinders have a phophate under treatment to resist corrosion.</li><li>Brass chrome plated valve with steel handles wide operational temperature range.</li></ul>TECHNICAL DATA <br><br><img style="width: 632px; height: 223px;" title="" alt="undefined" src="/images/abcpowdertabel.jpg" align="none"><br><br><br><br><div style="text-align: left;"><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/fire%20extinguisher.zip"><font size="3">Download Brosur</font></a><br></div>', 'Minggu', '2011-08-14', '10:14:04', '', 1, ''),
(84, 25, 'admin', 'CO2', '', '<img style="width: 147px; height: 282px;" alt="" src="http://www.bayutermalindoutama.co.id/images/co2.jpg" align="none"><br><br>FEATURES :<br><ul><li>CO2 Extinguishers are for class B (flamable liquid)fire and safer for live electrical fires.</li><li>It offers clean action and ideal for industry environment.</li><li>Available for alloy-steel cylinder &amp; alumunium-alloy cylinder.</li><li>According to BS EN3 standard</li></ul><br>TECHNICAL DATA <br><br><img title="" alt="" src="/images/co2tabel.jpg" align="none"><br><br><br><div style="text-align: left;"><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/fire%20extinguisher.zip"><font size="3">Download Brosur</font></a><a target="" title="download here" href="http://www.bayutermalindoutama.co.id/images/fire%20extinguisher.pdf"><br></a></div>', 'Minggu', '2011-08-14', '10:14:33', '', 1, ''),
(85, 25, 'admin', 'FE100', '', '<img style="width: 271px; height: 253px;" alt="" src="http://www.bayutermalindoutama.co.id/images/abcpowder.jpg" align="none"><br><br>FEATURES :<br><br><ul><li>Environment Friendly Non Halon &amp; Non CFC</li><li>Cleant Agent</li><li>Non Corrosive</li><li>Lower Toxicity</li><li>Extinguishers are for class A, B, C</li><li>Liquid gas, expired 5-7 years.</li><li>5 years guaranted</li></ul><br>TECHNICAL DATA :<br><br><img title="" alt="" src="/images/abcpowdertabel.jpg" align="none"><br><br><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/fire%20extinguisher.zip"><font size="3">Download brosur</font></a><br>', 'Minggu', '2011-08-14', '10:14:47', '', 1, ''),
(87, 26, 'admin', 'Syntec Unidur Red', '', '<img alt="" src="/images/syntecunidurred.jpg" align="none"><img alt="" src="/images/syntexunidurred.jpg" align="none"><br>Contruction :<br>- 100% hight tenacity synthetic yarn, circular -woven (reinforcement)<br>- totally embedded in the rubber compound, excellent protected against mechanical damage<br><br>features :<br>- tough, durable and very abrasion resistant.<br>- resistance to oil, fuel and a wide range of chemicals<br>- resistance to heat, UV and ozone.<br>- very low friction loss and low elongation <br>- excelent adhesion between rubber and textile<br><br>Aplications :<br>- refineries<br>- chemical industry<br>- military<br>- fire brigades<br>- marine and soffshore installations<br>- fire hose for usage under tough conditions<br><br><img alt="" src="http://bayutermalindoutama.co.id/images/sintec%20unidur%20red.jpg" align="none"><br><br>All diameters are available in length of 120 mtr. at least<br><br><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/FIRE%20HOSE%20HYDRANT.zip"><font size="3">Download brosur</font></a><br><br>', 'Minggu', '2011-08-14', '10:15:25', '', 1, ''),
(88, 26, 'admin', 'Syntec 500 - Red', '', '<img title="" alt="" src="/images/syntec%20500%20red.jpg" align="none"><br><br><br>contruction :<br>- 100% high tenacity polyester yarn, circular-woven twill weave, warp threads multiple twisted<br>- high quality, very light synthetic rubber on the basis of EPDM<br>- outside synthetic PU-coating for better abrasion resistance<br><br>features :<br>- Very lightweight and highly flexible (even at low temperature)<br>- excellent resistance to heat, weathering and ozone.<br>- inner lining excellent resistant to sea water and a wide range of chemicals<br>- synthetic coating for better oil, fuel and flame resistance.<br><br>applications :<br>- industrial and municipal fire brigades<br>- military<br>- marine fire fighting<br>- commercial and civil engineering<br>- shipboard<br>- offshore<br>approvals :DIN 14811:2008;M.E.D. 96/98/EC (cert.No.222.031); Germanischer Lioyd<br><br><br><img alt="" src="http://bayutermalindoutama.co.id/images/sintec%20unidur%20red.jpg" align="none"><br><br><br>Diameters from 3/4" to 4 1/3" are available in length of 1.000 mtr. at least<br><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/FIRE%20HOSE%20HYDRANT.zip"><font size="3">Download brosur</font></a><br>', 'Minggu', '2011-08-14', '10:15:40', '', 1, ''),
(89, 26, 'admin', 'Syntec 500 - White', '', '<img alt="" src="/images/syntec%20500%20white.jpg" align="none"><img alt="" src="/images/syntex%20500%20white.jpg" align="none"><br>contruction :<br>- 100% high tenacity polyester yarn, circular-woven twill weave, warps threads multiple twisted.<br>- high quality, very light synthetic rubber on the basis of EPDM.<br><br>features :<br>- very lightweight and highly flexible (even at low temperature )<br>- excellent resistance to heat, weathering and ozone.<br>- inner lining excellent resistant to sea water and a wide range of chemicals.<br><br>applications :<br>- industrial and municipal fire brigades.<br>- military.<br>- marine fire fighting.<br>- commercial and civil engineering.<br>- shipboard<br>- offshore<br><br>approvals :DIN 14811:2008; M.E.D. 96/98/EC (Cert, - No. 222.031); Germanischer Lloyd.<br><br><img alt="" src="http://bayutermalindoutama.co.id/images/sintec%20unidur%20red.jpg" align="none"><br><br>Diameters from 3/4" to 4 1/3" are available in length of 1.000 mtr. at least 5" and 8" are available in lengths of 60 mtr. at least.<br><br><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/FIRE%20HOSE%20HYDRANT.zip"><font size="3">Download brosur</font></a><br>', 'Minggu', '2011-08-14', '10:15:53', '', 1, ''),
(90, 28, 'admin', 'Fire Killer', '', '<img alt="" src="/images/fire%20killer.jpg" align="none"><br>This system will work automatically with zero maintenance, cost, effective and always activates to protect yours valuable. The application are typically between 1 - 10 m3 of total volume area. WISSEN@FIRE KILLER can be install with audio/visual alarm output.<br><br>WISSEN FIRE KILLER ADVANTAGES<br><br>&gt;&gt; 24 hours protection for your equipment<br>&gt;&gt; Varrety of agent such us dry chemical hallon replacement ( Fe100, FM 200, etc )<br>&gt;&gt; Cost effective and reasonable<br>&gt;&gt; Easly installation<br>&gt;&gt; Available in capacity 3 - 30 kg.<br><br><span style="color: rgb(255, 102, 51);">HOW DOES WISSEN FIRE KILLER WORK</span><br><br><img alt="" src="/images/indirect%20system.jpg" align="none"><br><br><br><span style="color: rgb(255, 102, 51);">SOME EXAMPLE WISSEN FIRE KILLER</span><br><br><img style="width: 429px; height: 137px;" alt="" src="/images/wissen%20fire%20killer.jpg" align="none"><br><br><br><font size="3"><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/fire%20killer.zip">Download brosur</a></font><br>', 'Minggu', '2011-08-14', '10:16:27', '71fire killer.jpg', 1, ''),
(91, 28, 'admin', 'Thermatic Fire Extinguisher', '', '<img alt="" src="/images/thermatic1.jpg" align="none"><br>This innovative product contains FE 100, it is ideal for unmanned areas such as machine rooms, boiler houses and flammable liquid stores. Once the temperature reaches 68 C the unit activates automatically extinguishing the fire. Elliptical in shape this unit is ideal for mounting in low ceilling areas.<br><br>&gt;&gt; Epoxy coated cylinders with phosphate under threatment for added protection against corrosion.<br>&gt;&gt; Complete with ceiling bracket.<br>&gt;&gt; Highly visible pressure indicator.<br>&gt;&gt; Other ambient temperatures for activation available ( to order only )<br><img style="width: 455px; height: 102px;" alt="" src="/images/tabelthermatic1.jpg" align="none"><br><br><br><img alt="" src="/images/thermatic2.jpg" align="none"><br>This innovative product contains FE 100, it is ideal for unmanned areas \r\nsuch as machine rooms, boiler houses and flammable liquid stores. Once \r\nthe temperature reaches 68 C the unit activates automatically \r\nextinguishing the fire. Elliptical in shape this unit is ideal for \r\nmounting in low ceilling areas.<br><br>&gt;&gt; Epoxy coated cylinders with phosphate under threatment for added protection against corrosion.<br>&gt;&gt; Complete with ceiling bracket.<br>&gt;&gt; Highly visible pressure indicator.<br>&gt;&gt; Other ambient temperatures for activation available ( to order only )<br><img style="width: 462px; height: 77px;" alt="" src="/images/tabelthermatic2.jpg" align="none"><br><br><font size="3"><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/thermatic%20fire%20extinguisher.zip"><br>Download brosur</a></font><br>', 'Minggu', '2011-08-14', '10:16:44', '', 1, ''),
(92, 28, 'admin', 'CO2 System', '', '<img style="width: 109px; height: 209px;" alt="" src="http://www.bayutermalindoutama.co.id/images/co2.jpg" align="none"><br><br><span style="color: rgb(0, 51, 153); font-weight: bold;">FEATURES :</span><br><ul><li>CO2 Extinguishers are for class B ( flammable liquid)fire and safe for live electrical fires.</li><li>It offers clean action and ideal for industry environment.</li><li>Available for alloy-steel cylinder &amp; alumunium-alloy cylinder.</li><li>According to BS EN3 standard</li></ul><span style="font-weight: bold; color: rgb(0, 51, 153);">TECHNICAL DATA :</span><br><br><img title="" alt="" src="/images/co2tabel.jpg" align="none"><br><br><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/cosystem.zip"><font size="3">Download brosur</font></a><br>', 'Minggu', '2011-08-14', '10:17:02', '', 1, ''),
(110, 27, 'admin', 'DVR & IT Product', '', '<a target="" title="" href="http://www.bayutermalindoutama.co.id/main.php?module=detailproduct&amp;id=117"><br>DVR-1651&nbsp; 16CH.DVR with CD-RW</a><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/main.php?module=detailproduct&amp;id=118">DVR-411A \\ DVR-411UA \\ DVR-411UNA</a><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/main.php?module=detailproduct&amp;id=119">CC-8828B \\ CC-8223B</a><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/main.php?module=detailproduct&amp;id=120">DVR-3000 \\ DVR-5000</a><br>', 'Sabtu', '2011-08-20', '10:22:42', '', 1, ''),
(111, 27, 'admin', 'Colour Dome Camera', '', '<a target="" title="" href="http://www.bayutermalindoutama.co.id/?module=detailproduct&amp;id=121"><br></a><a target="" title="" href="http://www.bayutermalindoutama.co.id/main.php?module=detailproduct&amp;id=121">CHQ-18909BVF</a><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/main.php?module=detailproduct&amp;id=122">CC-28909BVF3 \\ CC-8909BVF3 \\ CC-8709BVF3 \\ CC-18809BVF3</a><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/main.php?module=detailproduct&amp;id=123">CC-28909DVF \\ CC-8909DVF \\ CC-8709DVF</a><a target="" title="" href="http://www.bayutermalindoutama.co.id/main.php?module=detailproduct&amp;id=124"><br>CC-28914B \\ CC-8914B \\ CC-8714B \\ CC-8614B \\ CC-18814B \\ CC-9614B</a><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/main.php?module=detailproduct&amp;id=125">CC-28931B \\ CC-8931B \\ CC-8831B \\ CC-18831B</a><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/main.php?module=detailproduct&amp;id=126">CC-9611B \\ CC-8211B</a><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/main.php?module=detailproduct&amp;id=127">CC-28910BVF \\ CC-8910BVF \\ CC-8810BVF \\ CC-18810BVF \\ CC-8610BVF</a><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/main.php?module=detailproduct&amp;id=128">CC-8731B \\ CC-8631B \\ CC-9631B</a><br><br>', 'Sabtu', '2011-08-20', '10:23:07', '', 1, ''),
(112, 27, 'admin', 'Monocrome Camera', '', '<a target="" title="" href="http://www.bayutermalindoutama.co.id/main.php?module=detailproduct&amp;id=129"><br>CB-23803S \\ CB-3803S \\ CB-2803S </a><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/main.php?module=detailproduct&amp;id=130">CB-23831B \\ CB-3831B \\ CB-2831B</a><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/main.php?module=detailproduct&amp;id=131">CB-2804B \\ CB-2818B</a><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/main.php?module=detailproduct&amp;id=132">CB-3820B \\ CB-2820B</a><br>', 'Sabtu', '2011-08-20', '10:23:24', '', 1, ''),
(113, 27, 'admin', 'IR Camera', '', '<br><a target="" title="" href="http://www.bayutermalindoutama.co.id/main.php?module=detailproduct&amp;id=133">CC-28925DVF \\ CC-8925DVF \\ CC-8825DVF \\ CC-18825DVF</a><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/main.php?module=detailproduct&amp;id=134">CC-28917DVXT \\ CC-8917DVXT \\ CC-8817DVXT</a><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/main.php?module=detailproduct&amp;id=135">CC-28917DVFX \\ CC-8917DVFX \\ CC-8817DVFX \\ CC-1881DVFX</a><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/main.php?module=detailproduct&amp;id=136">CC-28917BIRHD \\ CC-8917BIRHD \\ CC-871BIRHD \\ CC-8617BIRHD \\ CC-18817BIRHD</a><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/main.php?module=detailproduct&amp;id=137">CC-28926TIR \\ CC-8926TIR \\ CC-8726TIR \\ CC-8626TIR \\ CC-8826TIR \\ CC-18826TIR</a><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/main.php?module=detailproduct&amp;id=138">CC-18822BIR \\ CC-9622BIR \\ CC-8222BIR \\ CC-82308BIR</a><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/main.php?module=detailproduct&amp;id=139">CC-18822BVF</a><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/main.php?module=detailproduct&amp;id=140">CC-8720BIR \\ CC-8620BIR \\ CC-9620BIR \\ CC-18820BIR</a><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/main.php?module=detailproduct&amp;id=141">CC-8712BIR \\ CC-8612BIR \\ CC-9612BIR \\ CC-18812BIR</a><br><br>', 'Sabtu', '2011-08-20', '10:23:44', '', 1, ''),
(117, 0, 'admin', 'DVR-1651  16CH.DVR with CD-RW', '', '<img alt="" src="/images/dvr1651rw.jpg" align="none"><br><img alt="" src="http://www.bayutermalindoutama.co.id/images/DVR1651RW.jpg" align="none"><br><br style="color: rgb(51, 0, 204);"><span style="color: rgb(51, 0, 204);">APPLICATIONS</span><br><br>Elevator, Bank, Department store, Hospital, Hotel , Restaurant, School, Office Building , Train, etc.<br><br>Features<br><ul><li>JPEG2000 compression</li><li>Multilingual OSD</li><li>PIP function (picture in picture display)</li><li>2x Digital zoom</li><li>CD-RW backup/ USB backup</li><li>PTZ control via RS-485</li><li>Recording mode (continuous/ Motion detection / Alarm sensor)</li><li>VGA Output (Optional)</li><li>2 audio inputs / outputs</li><li>2 x HDD ( 1 x removable HDD, 1 x embedded HDD)</li><li>HDD full warning LED/Operation indicating LED</li><li>Password protection</li><li>IR Remote control</li><li>Network support through fixed or dynamic IP (PDNS / PPOE/ DHCP) (Optional)</li></ul><img style="width: 394px; height: 76px;" alt="" src="/images/dvr1651part.jpg" align="none"><br><br><br><font size="3"><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/DVR%20&amp;%20IT%20Product.zip">Download brosur</a></font><br><br>', 'Sabtu', '2011-08-27', '05:41:14', '', 1, ''),
(118, 0, 'admin', 'DVR-411A \\ DVR-411UA \\ DVR-411UNA', '', '<img style="width: 414px; height: 179px;" alt="" src="http://www.bayutermalindoutama.co.id/images/DVR411A.jpg" align="none"><br><br>SPESIFICATION<br><br><img style="width: 739px; height: 352px;" alt="" src="/images/dvr411aspec.jpg" align="none"><br><br><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/DVR%20&amp;%20IT%20Product.zip"><font size="3">Download brosur</font></a><br>', 'Sabtu', '2011-08-27', '05:47:31', '', 1, ''),
(119, 0, 'admin', 'CC-8828B \\ CC-8223B', '', '<img alt="" src="http://www.bayutermalindoutama.co.id/images/cc8828b.jpg" align="none"><img alt="" src="http://www.bayutermalindoutama.co.id/images/CC8828B.jpg" align="none"><br><br><span style="color: rgb(51, 0, 204);">FEATURES</span><br><ul><li>ARM 9 processor</li><li>Linux-based operating system</li><li>High speed hardware based image compression, generating high quality MJEPG / MPEG1 /MPEG2 / MPEG4 / DivX 5.0 streams</li><li>Up to 30 frames/sec (D1, 4CIF, VGA, CIF, QVGA)</li><li>Variable bandwidth control prevents the data saturation on the network</li><li>Proprietary AnyUSB service interface</li><li>Built in video viewer</li><li>Event triggered remote image storage via e-mail and FTP</li><li>Stream based motion detection</li><li>OSD support</li><li>Secure password / username protection restricts access to single users, or the whole internet community.</li></ul><span style="color: rgb(51, 0, 204);">SYSTEM SPECIFICATIONS</span><br style="color: rgb(51, 0, 204);"><span style="color: rgb(51, 0, 204);">Connection Interface</span><br><ul><li>RJ45 twisted pair direct network connection for 10/100 base-T Ethernet.</li><li>RS485 for external device control (Ex. part/Tilt/ Zoom control )</li><li>External power supply : DC 12 V 800mA</li></ul><br><span style="color: rgb(51, 0, 204);">Video Streams</span><br><ul><li>JPEG still images and Motion JPEG video</li><li>MPEG1 Encoding</li><li>MPEG2 MP@ML Encoding</li><li>MPEG4 SP Encoding</li><li>DivX 5.0 Encoding</li><li>Image frame rate : up to 30 frames/ sec at D1 resolution</li></ul><span style="color: rgb(51, 0, 204);">Audio Features</span><br><ul><li>Compession codec ADPCM / MP3</li><li>Audio data communication</li><li>1 x audio-in /1 x audio out (D3.5 mm stereo jack)</li><li>Full Duplex (BI-directional communication allows simultaneous transmission in both directions)</li></ul><span style="color: rgb(51, 0, 204);">Protocols</span><br><ul><li>TCP/IP, ICMP, HTTP, FTP, SMTP, ARP, PPP, DHCP, PPPoE</li><li>Camera Control : Pelco-D, Pelco-P, Transparent, etc</li></ul><span style="color: rgb(51, 0, 204);">Certification</span><br><ul><li>CE (EMC:EN 55022;1998+A2-2003, EN 50130-4;1995+A2;2003)</li><li>FCC (part 15 subpart B. Class A /&nbsp; ANSI C63,4-2001)</li></ul><font size="3"><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/DVR%20&amp;%20IT%20Product.zip"><br>Download brosur</a></font><br>', 'Sabtu', '2011-08-27', '06:03:07', '', 1, ''),
(121, 0, 'admin', 'CHQ-18909BVF 1/3" Color HQ1 Vandal-Proof Dome Camera', '', '<img style="width: 283px; height: 233px;" alt="" src="/images/CHQ18909BVF.jpg" align="none"><br><br><span style="color: rgb(51, 0, 204);">APPLICATIONS</span><br>Elevator , Bank, Department store, Hospital, Hotel , Restaurant, School, Office Building . etc.<br><br><span style="color: rgb(51, 0, 204);">FEATURES</span><br><ul><li>Sony HQ1</li><li>580 TV lines.</li><li>Min. illumination at 0.5 Lux, F 1.4</li><li>ALC Adjustable.</li><li>Line Lock.</li><li>ATW / AWB</li><li>IP 66 Waterproof Resistance.</li><li>Vandal-proof resist to 45 kg Rating.</li><li>Unique security screw.</li></ul><span style="color: rgb(51, 0, 204);">DIMENTIONS</span><br><br><img style="width: 443px; height: 181px;" alt="" src="http://www.bayutermalindoutama.co.id/images/CHQ18909BVFdimention.jpg" align="none"><br><br><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/Colur%20Dome%20Camera.zip"><font size="3">Download Brosur</font></a><br>', 'Sabtu', '2011-08-27', '06:37:35', '', 1, ''),
(120, 0, 'admin', '  DVR-3000 \\ DVR-5000', '', '<img alt="" src="/images/dvr3000.jpg" align="none"><br><img alt="" src="http://www.bayutermalindoutama.co.id/images/DVR3000.jpg" align="none"><br><br><img alt="" src="/images/dvr3001.jpg" align="none"><img alt="" src="/images/dvr3001.jpg" align="none"><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/DVR%20&amp;%20IT%20Product.zip"><font size="3">Download Brosur</font></a><br>', 'Sabtu', '2011-08-27', '06:07:38', '', 1, ''),
(122, 0, 'admin', 'CC-28909BVF3 \\ CC-8909BVF3 \\ CC-8709BVF3 \\ CC-18809BVF3', '', '<img style="width: 334px; height: 251px;" alt="" src="/images/CC28909BVF3.jpg" align="none"><br><span style="color: rgb(51, 0, 204);">APPLICATIONS</span><br>Elevator, bank, department store , hospital, hotel, restaurant, school , office building, train, etc<br><br><span style="color: rgb(51, 0, 204);">FEATURES</span><br><ul><li>1/3" Sony CCD 1/3" panasonic CCD</li><li>550 TV Lines</li><li>4.0 mm to 8.00 mm Manual Iris Varl-focal Lens.</li><li>Auto Back Light Compensation</li><li>Auto Electronics Shutter.</li><li>Indestructible Metal Vandal-Proof Housing Design.</li><li>Vandal-Proof Rating 300N</li><li>Line Lock is available for AC 24V Sony Chipped Camera</li><li>IP 66</li><li>3-Axis.</li></ul><img style="width: 501px; height: 153px;" alt="" src="/images/CC28909BVF3dimention.jpg" align="none"><br><br><br><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/Colur%20Dome%20Camera.zip"><font size="3">Download brosur</font></a><br>', 'Sabtu', '2011-08-27', '06:46:47', '', 1, ''),
(123, 0, 'admin', 'CC-28909DVF \\ CC-8909DVF \\ CC-8709DVF', '', '<img style="width: 276px; height: 225px;" alt="" src="/images/CC28909DVF.jpg" align="none"><br><br><span style="color: rgb(51, 0, 204);">APPLICATIONS</span><br>Elevator , Bank, Department store, Hospital, Hotel, Restaurant, School, Office Building, Train, etc.<br><br><span style="color: rgb(51, 0, 204);">FEATURES</span><br><ul><li>1/3" Sony CCD. 1/3" Panasonic CCD</li><li>550 TV Lines.</li><li>4.0 mm to 9.0mm Auto Iris Varl-focal Lens. (Standard) 4.0mm to 8.0 mm Manual Iris Vari-Focal Lens. (Optional)</li><li>Auto Back Light Compensation.</li><li>Auto electronics shutter.</li><li>Indestructible Metal Vandal-Proof Housing Design.</li><li>Vandal&nbsp; Proof Rating 300N</li><li>Line Lock is available for AC 24V sony Chipped Camera.</li><li>IP 66<br></li></ul><br><br><br><font size="3"><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/Colur%20Dome%20Camera.zip">Download brosur</a></font><br>', 'Sabtu', '2011-08-27', '06:54:43', '', 1, ''),
(126, 0, 'admin', 'CC-9611B \\ CC-8211B', '', 'CC-9611B&nbsp; 1/4" Color CCD Dome Camera ( Small size )<br><br>CC-8211B&nbsp; 1/3" Color CCD Dome Camera (small size )<br><br><img style="width: 193px; height: 153px;" alt="" src="/images/CC9611B.jpg" align="none"><br><br><span style="color: rgb(51, 0, 204);">DIMENSION</span><br><img style="width: 359px; height: 202px;" alt="" src="/images/CC9611Bdimention.jpg" align="none"><br><br><img style="width: 430px; height: 67px;" alt="" src="/images/CC9611Bpart.jpg" align="none"><br><br><br><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/Colur%20Dome%20Camera.zip"><font size="3">Download brosur</font></a><br><br>', 'Sabtu', '2011-08-27', '09:04:43', '', 1, ''),
(124, 0, 'admin', 'CC-28914B \\ CC-8914B \\ CC-8714B \\ CC-8614B \\ CC-18814B \\ CC-9614B', '', '<img style="width: 254px; height: 220px;" alt="" src="/images/CC28914B.jpg" align="none"><br><br><br><span style="color: rgb(51, 0, 204);">APPLICATIONS</span><br>Elevator, Bank, Department Store, Hospital, Hotel, Restaurant, School, Office building. etc<br><br><span style="color: rgb(51, 0, 204);">FEATURES</span><br><ul><li>1/3" Sony CCD, 1/3" Panasonic CCD</li><li>550 TV Lines &amp; 420 TV Lines.</li><li>Auto Back Light compensation.</li><li>Auto electronics shutter</li><li>Gain control</li><li>Vandal-proof rating 300N</li><li>Line locak is available for AC 24V Sony chipped camera</li><li>IP 66</li></ul><p><br></p><p><font size="3"><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/Colur%20Dome%20Camera.zip">Download brosur</a></font><br></p>', 'Sabtu', '2011-08-27', '07:15:46', '', 1, ''),
(125, 0, 'admin', 'CC-28931B \\ CC-8931B \\ CC-8831B \\ CC-18831B', '', '<img style="width: 118px; height: 96px;" alt="" src="/images/CC28931B.jpg" align="none"><img style="width: 190px; height: 96px;" alt="" src="/images/CC28931Bx.jpg" align="none"><img style="width: 72px; height: 95px;" alt="" src="/images/CC28931Bxx.jpg" align="none"><br><br><br><span style="color: rgb(51, 0, 204);">APPLICATIONS</span><br>Elevator, Bank, Department store, Hospital, Hotel, Restaurant, School, Office building, etc<br><br><span style="color: rgb(51, 0, 204);">FEATURES</span><br><ul><li>1/3" Sony CCD</li><li>550 TV Lines &amp; 420 TV Lines</li><li>Dome Case can be rotated 360 degreed.</li><li>Min. Illumination at 0.03 Lux, F 1.4/0.5Lux Fi.4</li><li>Auto back light compensation</li><li>Auto electronics shutter</li><li>Gain control</li><li>Line lock</li><li>AC/DC (12-24)V,DC 12</li><li>By using the additional RCA Jack, user/installer is able to test video easily after installation</li></ul><p><br></p><p><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/Colur%20Dome%20Camera.zip"><font size="3">Donload brosur</font></a><br></p>', 'Sabtu', '2011-08-27', '07:26:37', '', 1, ''),
(127, 0, 'admin', 'CC-28910BVF \\ CC-8910BVF \\ CC-8810BVF \\ CC-18810BVF \\ CC-8610BVF', '', 'CC-9612BVF&nbsp;&nbsp; 1/4" Color Vari-Focal Dome Camera<br><br><img style="width: 231px; height: 183px;" alt="" src="/images/cc9612bvf.jpg" align="none"><br><br><span style="color: rgb(51, 0, 204);">DIMENSIONS</span><br><br><img style="width: 484px; height: 284px;" alt="" src="/images/cc9612bvfpart.jpg" align="none"><br><br><br><img style="width: 463px; height: 75px;" alt="" src="/images/cc9612bvfdimension.jpg" align="none"><br><br><br><font size="3"><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/Colur%20Dome%20Camera.zip">Download brosur</a></font><br>', 'Sabtu', '2011-08-27', '09:32:25', '', 1, ''),
(128, 0, 'admin', 'CC-8731B \\ CC-8631B \\ CC-9631B', '', 'CC-8731B<br>1/3" Color High Resolution CCD Dome Camera<br><br>CC-8631B<br>1/3" Dome Camera<br><br>CC-9631B<br>1/4" Color CCD Dome Camera<br><br><img style="width: 231px; height: 185px;" alt="" src="/images/CC8731B.jpg" align="none"><br><br>APPLICATIONS<br>Elevator, Bank, Department Store, Hospital, Hotel, Restaurant, School, Office building, etc<br><br>FEATURES<br><ul><li>1/3" Sony CCD</li><li>550 TV Lines &amp; 420 TV Lines</li><li>Dome Case can be rotated 360 degreed.</li><li>Min. illumination at 0.03 Lux, F 1.4/0.5Lux, F14</li><li>Auto back Light compensation</li><li>Auto Electronics Shutter</li><li>Gain control</li><li>Line Lock</li><li>AC/DC (12-24)V.DC 12V</li><li>By using the additional RCA Jack, user/installer is able to test video easily after installation.</li></ul><br><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/Colur%20Dome%20Camera.zip"><font size="3">Download brosur</font></a><br>', 'Sabtu', '2011-08-27', '09:42:50', '', 1, ''),
(129, 0, 'admin', ' CB-23803S \\ CB-3803S \\ CB-2803S ', '', '<span style="color: rgb(51, 0, 204);"></span><br><img style="width: 248px; height: 140px;" alt="" src="/images/cb23803s.jpg" align="none"><br><br><span style="color: rgb(51, 0, 204);"></span><br><br><span style="color: rgb(51, 0, 204);">SPESIFICATION </span><br><br style="font-weight: bold;"><span style="font-weight: bold;">CB-23803S-10" B/W Ex View high Resolution CCD Camera</span><br><span style="color: rgb(51, 0, 204);"></span><span style="color: rgb(51, 0, 204);"></span><br><ul><li>Description : CB-23803S (1/3" B/W Ex-View High Resolution CCD Camera)</li><li>Description :<span style="color: rgb(0, 0, 0);"> CB-3803S ( 1/3 B/W HIgh Resolution CCD Camera )</span></li><li style="color: rgb(0, 0, 0);">Description : CB-2803S ( 1/3 B/W CCD Camera )</li><li>Pickup element : CB-23803S(Sony Ex-View CCD Image Sensor) ,<span style="color: rgb(0, 0, 0);">CB-3803S\\</span>CB-2803S ( Sony CCD Image Sensor )<br></li><li>Number of Pixels : <span style="color: rgb(0, 0, 0);"><eia> </eia></span><eia>788(H) x 494(V),<ccir> <ccir>752(H) x 582(V)(</ccir></ccir></eia>CB-23803S\\<span style="color: rgb(0, 0, 0);">CB-3803S</span><eia><ccir>) ,</ccir></eia><span style="color: rgb(0, 0, 0);"><eia> </eia></span>510(H) x 492(V),<ccir> 512(H) x 582(V)(CB-2803S )<br></ccir></li><li>Back Ligh : compensation : on:off (CB-23803S\\CB-3803S), ON (CB-2803S)<br></li><li>Video DC Drive Auto Iris Lens : On</li><li>Auto Electronics Shutter :<span style="color: rgb(0, 0, 0);"></span> Low-High (CB-23803S\\<span style="color: rgb(0, 0, 0);">CB-3803S)</span></li><li>AGC : Internal Sync</li><li>ALC : 2:1 Interface</li><li>Scanning System : More than 46dB</li><li>Resolution : 0.45</li><li>S/N Ratio : 0.003 Lux, F 1.4</li><li>Gamma : <eia> 15,734 KHz</eia></li><li>Minimum illumination : <ccir> 15,625 KHz</ccir></li><li>Horizontal sync : 60 Hz (50Hz)</li><li>Frequency : 1-0Vp-0, 75 ohm</li><li>Vertical Sync Freqency : DC / AC ( 12-24 ) V, AC 99V-240V</li><li>Video Output : 1.5 W</li><li>Power Source : -10 C to + 60 C</li><li>Power Consumtion C/CS Mount</li><li>Operating Temperature : <eia>1/60-1/100,000 sec</eia></li><li>Lens Amount : <ccir> 1/50 - 1/100,000 sec</ccir></li><li>Dimension : 117(L) x 57(H) mm</li><li>Net Weight : <ac type="">0.7kg <dc type="">0.4kg<br></dc></ac></li></ul><span style="color: rgb(51, 0, 204);">DIMENSIONS </span><br><br><img alt="" src="http://www.bayutermalindoutama.co.id/images/cb23803sdimension.jpg" align="none"><br><img alt="" src="/images/cb23803sdimension.JPG" align="none"><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/Monocrome%20Camera.zip"><font size="3">Download brosur</font></a><br>', 'Sabtu', '2011-08-27', '09:51:14', '', 1, ''),
(130, 0, 'admin', 'CB-23831B \\ CB-3831B \\ CB-2831B', '', '<img alt="" src="/images/23831b.jpg" align="none"><br><img alt="" src="/images/cb23831b.jpg" align="none"><br style="color: rgb(51, 0, 204);"><span style="color: rgb(51, 0, 204);">DIMENSIONS </span><br><br><img alt="" src="/images/cb23831bdimension.jpg" align="none"><br><br><span style="color: rgb(51, 0, 204);">SPESIFICATION </span><br><br><img alt="" src="/images/cb23831bspesification.jpg" align="none"><br><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/Monocrome%20Camera.zip"><font size="3">Download brosur</font></a><br>', 'Minggu', '2011-08-28', '15:39:26', '', 1, ''),
(131, 0, 'admin', 'CB-2804B \\ CB-2818B', '', '<img alt="" src="/images/cb2804b.jpg" align="none"> &nbsp; &nbsp; <img alt="" src="/images/cb2818b.jpg" align="none"><br><br>CB-2804B- 1/3" B/W Smoke Detector Camera&nbsp;&nbsp;&nbsp; CB-2818B 1/3" B/W Mini Camera<br><br><span style="color: rgb(51, 0, 204);">DIMENSION</span><br><br><img alt="" src="/images/cb2804bdimension.jpg" align="none"><br><br><span style="color: rgb(51, 0, 204);">SPESIFICATION </span><br><br><img alt="" src="/images/cb2804bspesification.jpg" align="none"><br><br><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/Monocrome%20Camera.zip"><font size="3">Download brosur</font></a><br>', 'Minggu', '2011-08-28', '15:52:21', '', 1, ''),
(132, 0, 'admin', 'CB-3820B \\ CB-2820B', '', '<img alt="" src="http://www.bayutermalindoutama/images/cb3820b.jpg" align="none"><img alt="" src="http://www.bayutermalindoutama.co.id/images/cb3820b.jpg" align="none"><br><br><span style="color: rgb(51, 0, 204);">DIMENSION </span><br><img alt="" src="http://www.bayutermalindoutama.co.id/images/cb3820bdimension.jpg" align="none"><br><img alt="" src="http://www.bayutermalindoutama/images/cb3820bdimension.jpg" align="none"><br><br style="color: rgb(51, 0, 204);"><span style="color: rgb(51, 0, 204);">SPESIFICATION </span><br><br><img alt="" src="http://www.bayutermalindoutama/images/cb3820bspesification.jpg" align="none"><img alt="" src="http://www.bayutermalindoutama.co.id/images/cb3820bspesification.jpg" align="none"><br><br><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/Monocrome%20Camera.zip"><font size="3">Download brosur</font></a><br>', 'Minggu', '2011-08-28', '15:59:29', '', 1, ''),
(133, 0, 'admin', ' CC-28925DVF \\ CC-8925DVF \\ CC-8825DVF \\ CC-18825DVF', '', '<span style="color: rgb(51, 0, 204);">CC-28925DVF</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1/3" Color High Resolution Weatherproof Infrared Vari-FocalCamera<br><span style="color: rgb(51, 0, 204);">CC-8925DVF</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1/3" Color High Resolution Weatherproof Infrared Vari-Focal Camera<br><span style="color: rgb(51, 0, 204);">CC-8825DVF</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1/3" Color Weatherproof Infrared Vari-Focal Camera<br><span style="color: rgb(51, 0, 204);">CC-18825DVF</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1/3" Color Weatherproof Infrared Vari-Focal Camera<br><br><img alt="" src="/images/cc8925.jpg" align="none"><br><br><br style="color: rgb(51, 0, 204);"><span style="color: rgb(51, 0, 204);">APPLICATIONS</span><br>Bank, Department Store, Hospital, Hotel, Restaurant, School, Office Building, Traffic, Outdoor, etc.<br><br><span style="color: rgb(51, 0, 204);">FEATURES</span><br><ul><li>1/3" Sony CCD</li><li>Outdoor Installation</li><li>28 IR LEDs.</li><li>Radiant distance 35 meters.</li><li>4-9 Auto Iris Vari-Focal Lens.</li><li>550 TV Lines or 420 TV Lines.</li><li>Focus of Lens is adjusted by Outer Controller.</li><li>Excellent Color Images During the Day and Excellent Quality Black &amp; White images at night.</li><li>IP 66 Waterproof Rasistance.</li><li>Line Lock.</li><li>Hidden-cable bracket included</li><li>Cables come out from bracket.</li></ul><span style="color: rgb(51, 0, 204);">SPESIFICATION </span><br><br><img style="width: 738px; height: 620px;" alt="" src="/images/cc28925dvfspesification.jpg" align="none"><br><br><br><font size="3"><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/IR%20Camera.zip">Download brosur</a></font><br>', 'Minggu', '2011-08-28', '16:20:18', '', 1, ''),
(134, 0, 'admin', 'CC-28917DVXT \\ CC-8917DVXT \\ CC-8817DVXT', '', '<span style="color: rgb(51, 0, 204);">CC-28917DVXT</span>&nbsp;&nbsp; 1/3" Color High Rsolution Weatherproof Infrared Vari-Focal Camera with ICR<br><span style="color: rgb(51, 0, 204);">CC-8917DVXT&nbsp;</span>&nbsp; &nbsp; 1/3" Color High Resolution Weatherproof Infrared Vari-Focal Camera with ICR<br><span style="color: rgb(51, 0, 204);">CC-8817DVX</span>T&nbsp;&nbsp;&nbsp;&nbsp; 1/3" Color Weatherproof Infrared Vari-Focal Camera with ICR<br><br><img style="width: 283px; height: 166px;" alt="" src="/images/cc28917dvxt.jpg" align="none"><br><br><span style="color: rgb(51, 0, 204);">APPLICATIONS</span><br>Bank, Department Store, Hospital, Hotel, Restaurant, School, Office Building, Traffic, Outdoor, etc.<br><br><span style="color: rgb(51, 0, 204);">FEATURES</span><br><ul><li>1/3" Sony CCD</li><li>Outdoor Installation</li><li>Mecahanical Removed IR Cut Filter</li><li>28 IR LEDs</li><li>Radiant distance 30 meters.</li><li>Built in Auto Iris Vari-Focal Lens.</li><li>550 TV Lines or 420 TV lines</li><li>Focus of Lens is adjusted by Outer Controller.</li><li>Monochrome image at low light condition, no color noise.</li><li>Tough weatherproof metal housing design</li><li>IP 66 Waterproof Resistance.</li><li>Line Lock.</li><li>Heater</li></ul><span style="color: rgb(51, 0, 204);">SPESIFICATION</span> <br><br><img style="width: 638px; height: 557px;" alt="" src="/images/cc28917.jpg" align="none"><br><br><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/IR%20Camera.zip"><font size="3">Download brosur</font></a><br>', 'Minggu', '2011-08-28', '16:31:24', '', 1, ''),
(135, 0, 'admin', ' CC-28917DVFX \\ CC-8917DVFX \\ CC-8817DVFX \\ CC-1881DVFX', '', '<br>CC-28917DVFX&nbsp;&nbsp; 1/3" Color High Resolution Weatherproof Infrared Vari-Focal Camera<br>CC-8917DVFX&nbsp; &nbsp; 1/3" Color High Resolution Weatherproof Infrared Vari-Focal Camera<br>CC-8817DVFX&nbsp;&nbsp;&nbsp; 1/3" Color Weatherproof Infrared Vari-Focal Camera<br>CC-18817DVFX&nbsp; 1/3" Color Weatherproof Infrared Vari-focal Camera<br><br><br><img style="width: 329px; height: 194px;" alt="" src="/images/cc28917dvxt.jpg" align="none"><br><br><br>DIMENSION <br><br><img style="width: 550px; height: 183px;" alt="" src="/images/CC28917DVFX.jpg" align="none"><br><br><br><font size="3"><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/IR%20Camera.zip">Download brosur</a></font><br>', 'Senin', '2011-08-29', '16:24:58', '', 1, ''),
(136, 0, 'admin', 'CC-28917BIRHD \\ CC-8917BIRHD \\ CC-871BIRHD \\ CC-8617BIRHD \\ CC-18817BIRHD', '', 'CC-28917BIRHD&nbsp;&nbsp; 1/3" Color High Resolution Weatherproof Infrared Camera<br>CC-8917BIRHD&nbsp;&nbsp;&nbsp;&nbsp; 1/3" Color High Resolution weatherproof Infrared Camera<br>CC-8717BIRHD&nbsp;&nbsp;&nbsp; 1/3"&nbsp; Color High Resolution weatherproof Infrared Camera<br>CC-8617BIRHD&nbsp;&nbsp; 1/3" Color Weatherproof Infrared Camera<br>CC-18817BIRHD&nbsp; 1/3" Color Weatherproof Infrared Camera<br><br><img style="width: 242px; height: 118px;" alt="" src="/images/cc28917birhd2.jpg" align="none"><img style="width: 238px; height: 111px;" alt="" src="/images/cc28917birhd1.jpg" align="none"><br><br><span style="color: rgb(51, 0, 204);">APPLICATIONS</span><br>Bank, Department Store, Hospital, Hotel, Restaurant, School, Office Building, Outdoor, etc.<br><br><span style="color: rgb(51, 0, 204);">FEATURES</span><br><ul><li>1/3" Sony CCD, 1/3" Panasonic CCd.</li><li>Outdoor Installation.</li><li>64 LEDs</li><li>Radiant Distance 25 Meters. (at least)</li><li>Built in 6.0 mm Board Lens</li><li>550 TV Lines &amp; 420 TV Lines.</li><li>Monochrome Image at Night, No color Noise.</li><li>Tough Weatherproof Metal Housing Design.</li><li>IP 66 Waterproof Metal Housing Design.</li><li>IP 66 Waterproof Resistance.</li><li>Line Lock is available only for sony Chipped Camera.</li><li>Heater ( Optional )</li></ul><span style="color: rgb(51, 0, 204);">SPESIFICATION</span><br><img style="width: 593px; height: 535px;" alt="" src="/images/cc28917birhd.jpg" align="none"><br><br><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/IR%20Camera.zip"><font size="3">Download brosur</font></a><br>', 'Senin', '2011-08-29', '16:38:16', '', 1, ''),
(137, 30, 'admin', 'CC-28926TIR \\ CC-8926TIR \\ CC-8726TIR \\ CC-8626TIR \\ CC-8826TIR \\ CC-18826TIR', '', 'CC-28926TIR&nbsp;&nbsp; 1/3" Color Ex-View High Resolution Vari-Focal Infrared&nbsp; Camera<br>CC-8926TIR&nbsp; 1/3" Color High Resolution Vari-Focal Infrared Camera<br>CC-8726TIR&nbsp; 1/3" Color High Resolution Vari-Focal Infrared Camera<br>CC-8626TIR&nbsp; 1/3" Color Vari-Focal Infrared Camera<br>CC-18826TIR 1/3" Color Vari-Focal Infrared Camera<br><br><img style="width: 273px; height: 156px;" alt="" src="/images/cc28926tir.jpg" align="none"><br><br>APPLICATIONS<br>Elevator, Bank, Department Store, Hospital, Hotel , Restaurant , School, Office Building, etc.<br><br>FEATURES<br><ul><li>1/3" Sony CCD, 1/3" Panasonic CCD</li><li>550 TV Lines &amp; 420 TV Lines/</li><li>Mechanically Removed IR Cut Filter, Brings True Color in Daytime and excellent sensitive picture in Low Lux condition.</li><li>Built in Auto Iris Vari-Focal Lens.</li><li>LIne Lock is available for Sony chipped Camera</li><li>Available IR Distance : 10 Meters (at least)</li><li>ATW / AWB</li><li>Provide Crisp &amp; Clear Picture Image Both Dark and Bright Area.</li><li>18 LEDs</li></ul>SPESIFICATION<br><br><img style="width: 653px; height: 568px;" alt="" src="/images/cc28926tirspesifikation.jpg" align="none"><br><a target="" title="" href="http://bayutermalindoutama.co.id/CAMERA%20CCTV.doc"><br></a><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/IR%20Camera.zip"><font size="3">Download Brosur</font></a><br>', 'Senin', '2011-08-29', '16:49:46', '', 1, ''),
(138, 0, 'admin', 'CC-18822BIR \\ CC-9622BIR \\ CC-8222BIR \\ CC-82308BIR', '', 'CC-18822BIR&nbsp; 1/3" Color Weatherproof Infrared Camera<br>CC-9622BIR&nbsp;&nbsp; 1/4" Color Weatherproof Infrared Camera<br>CC-8222BIR &nbsp; 1/3" Color Weatherproof Infrared Camera <br><img alt="" src="/images/cc18822bir.jpg" align="none"><br><br><span style="color: rgb(51, 0, 204);">DIMENSION</span><br><br><img style="width: 337px; height: 290px;" alt="" src="/images/cc18822birdimension.jpg" align="none"><br><br><span style="color: rgb(51, 0, 204);">SPESIFICATION</span><br><br><img alt="" src="/images/cc18822birspesification.jpg" align="none"><br><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/IR%20Camera.zip"><font size="3">Download brosur</font></a><br>', 'Senin', '2011-08-29', '16:59:26', '', 1, ''),
(139, 0, 'admin', 'CC-18822BVF', '', '<img style="width: 287px; height: 143px;" alt="" src="/images/cc82308bir.jpg" align="none"><br><br><br><span style="color: rgb(51, 0, 204);">DIMENSION</span><br><br><img alt="" src="/images/cc18822birdimension.jpg" align="none"><br><br><span style="color: rgb(51, 0, 204);">SPESIFICATION</span><br><br><img alt="" src="/images/cc18822birspesification.jpg" align="none"><br><br><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/IR%20Camera.zip"><font size="3">Download brosur</font></a><br>', 'Senin', '2011-08-29', '17:07:12', '', 1, ''),
(140, 0, 'admin', 'CC-8720BIR \\ CC-8620BIR \\ CC-9620BIR \\ CC-18820BIR', '', 'CC-8720BIR&nbsp; 1/3" Color High Resolution Infrared Waterproof Camera<br>CC-8620BIR 1/3" Color Infrared Waterproof Camera<br>CC-9620BIR 1/4" Color Infrared Waterproof Camera<br>CC-18820BIR 1/3" Color Infrared Waterproof Camera<br><img style="width: 335px; height: 253px;" alt="" src="/images/cc8720bir1.jpg" align="none"><br><br><span style="color: rgb(51, 0, 204);">APPLICATIONS</span><br>Yard, Street, Department Store, Hospital, Hotel, Restaurant , School, Office Building, etc.<br><br>FEATURES<br><ul><li>1/3" &amp; 1/4" Panasonic CCD, 1/3" Sony CCD</li><li>12 IR LEDs.</li><li>Radiant distance 5 meters. ( at least)</li><li>6.0 mm Board Lens (Standard)</li><li>550 TV Lines &amp; 420 TV Lines.</li><li>Provide Crisp &amp; Clear Picture Image Both Dark and Bright Area.</li><li>IP 66 Waterproof Resistance.</li></ul><span style="color: rgb(51, 0, 204);">DIMENSION</span><br><img alt="" src="/images/cc8720bir1dimension.jpg" align="none"><br><br><span style="color: rgb(51, 0, 204);">SPESIFICATION</span><br><img alt="" src="/images/cc8720bir1spesification.jpg" align="none"><img alt="" src="/images/cc8720bir1spesification.jpg" align="none"><br><br><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/IR%20Camera.zip"><font size="3">Download Brosur</font></a><br>', 'Senin', '2011-08-29', '17:24:43', '', 1, ''),
(141, 0, 'admin', 'CC-8712BIR \\ CC-8612BIR \\ CC-9612BIR \\ CC-18812BIR', '', 'CC-8712BIR 1/3" Color High Resolution Infrared Dome Camera<br>CC-8612BIR 1/3" Color Infrared Dome Camera<br>CC-9612BIR 1/3 Color Infrared Dome Camera<br>CC-18812BIR 1/3"Color Infrared Dome camera<br><br><img style="width: 214px; height: 172px;" alt="" src="/images/cc8712bir2.jpg" align="none"><br><br><br style="color: rgb(51, 0, 204);"><span style="color: rgb(51, 0, 204);">APPLICATIONS</span><br>Elevator, Bank, Department store, Hospital, Hotel, Restaurant , School, Office Building, etc.<br><br style="color: rgb(51, 0, 204);"><span style="color: rgb(51, 0, 204);">FEATURES</span><br><ul><li>1/3" &amp; 1/4" Panasonic CCD, 1/3" Sony CCD</li><li>18 IR LEDs</li><li>Radiant distance 10 meters. ( at least )</li><li>6.0 mm Board Lens. (Standard)</li><li>550 TV Lines &amp; 420 TV Lines</li><li>Provide Crisp &amp; Clear Picture Image Both Dark and Bright Area.</li></ul><span style="color: rgb(51, 0, 204);">DIMENSION</span><br><img alt="" src="/images/CC8712bir1.jpg" align="none"><br><br><span style="color: rgb(51, 0, 204);">SPESIFICATIONS</span><br><img alt="" src="/images/CC8712BIRspesification.jpg" align="none"><br><a target="" title="Download Brosur" href="http://bayutermalindoutama/CAMERA%20CCTV.doc"><br></a><a target="" title="" href="http://www.bayutermalindoutama.co.id/images/IR%20Camera.zip"><font size="3">Download Brosur</font><font size="3"><br></font></a><br>', 'Senin', '2011-08-29', '17:36:52', '', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE IF NOT EXISTS `profil` (
  `id_profil` int(5) NOT NULL auto_increment,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) collate latin1_general_ci NOT NULL,
  `judul` varchar(100) collate latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) collate latin1_general_ci NOT NULL,
  `isi_profil` text collate latin1_general_ci NOT NULL,
  `hari` varchar(20) collate latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) collate latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL default '1',
  `tag` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_profil`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=85 ;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id_profil`, `id_kategori`, `username`, `judul`, `judul_seo`, `isi_profil`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`) VALUES
(81, 0, 'admin', 'Profil', '', '<span style="font-weight: bold; color: rgb(0, 0, 0);">PT. Bayu Termalindo Utama</span><br style="font-weight: bold; color: rgb(255, 0, 51);"><br style="font-weight: bold; color: rgb(255, 0, 51);"><span style="font-weight: bold; color: rgb(0, 51, 0);">Komplek Perkantoran Cempaka Putih. </span><br style="font-weight: bold; color: rgb(0, 51, 0);"><span style="font-weight: bold; color: rgb(0, 51, 0);">Jln Letjen suprapto No.160 blok A15, Jakarta Pusat</span><br style="font-weight: bold; color: rgb(0, 51, 0);"><span style="font-weight: bold; color: rgb(0, 51, 0);">Telpon : (021) 4220902, 422017, facsimile : (021) 4220917</span><br><br style="font-weight: bold;"><span style="font-weight: bold;"></span>', 'Sabtu', '2011-08-27', '07:34:03', '', 1, ''),
(82, 0, 'admin', 'Welcome to our website', '', '<img alt="" src="/images/fire%20killer.jpg" align="none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img style="width: 182px; height: 136px;" alt="" src="/images/CC28909BVF3.jpg" align="none">&nbsp;&nbsp;&nbsp; <img style="width: 319px; height: 138px;" alt="" src="/images/DVR411A.jpg" align="none"><br><br><br><br>PT. BAYU TERMALINDO UTAMA didirikan pada tahun 2011&nbsp; sebagai perusahaan yang menyediakan alat alat pemadam api&nbsp; (fire fighting) , alat alat safety, dan security system. dengan merk terdaftar "WISSEN"<br><br>Business type : Trading company<br>Business scope : <br><ul><li>Fire fighting system</li><li>Safety Equipment</li><li>Security System<br></li></ul>', 'Sabtu', '2011-08-27', '08:10:29', '', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `id_tag` int(5) NOT NULL auto_increment,
  `nama_tag` varchar(100) collate latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) collate latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL,
  PRIMARY KEY  (`id_tag`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id_tag`, `nama_tag`, `tag_seo`, `count`) VALUES
(16, 'ire extinguisher', 'ire-extinguisher', 2),
(17, 'alat pemadam api', 'alat-pemadam-api', 2),
(18, ' bayu thermalindo utama', '-bayu-thermalindo-utama', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(50) collate latin1_general_ci NOT NULL,
  `password` varchar(50) collate latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) collate latin1_general_ci NOT NULL,
  `email` varchar(100) collate latin1_general_ci NOT NULL,
  `no_telp` varchar(20) collate latin1_general_ci NOT NULL,
  `level` varchar(20) collate latin1_general_ci NOT NULL default 'user',
  `blokir` enum('Y','N') collate latin1_general_ci NOT NULL default 'N',
  PRIMARY KEY  (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`, `blokir`) VALUES
('bayuterm', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'admin@detik.com', '08238923848', 'admin', 'N');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
