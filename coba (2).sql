-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2019 at 11:27 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coba`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(30) NOT NULL,
  `password` varchar(12) NOT NULL,
  `level` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `level`) VALUES
('ahklis', '1234', 'user'),
('ivo1', 'ivo1', ''),
('wayan', 'wayan', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `login1`
--

CREATE TABLE `login1` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `hak_akses` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login1`
--

INSERT INTO `login1` (`username`, `password`, `hak_akses`) VALUES
('admin', 'admin', 'admin'),
('au', 'au', 'user'),
('ivo', 'ivo', 'user'),
('oji', 'oji', 'user'),
('oky', 'oky', 'user'),
('ulung', 'ulung', 'user'),
('wayan', 'wayan', 'user'),
('wayan22', 'wayan22', 'user'),
('wibi', 'wibi', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `mhs`
--

CREATE TABLE `mhs` (
  `no` int(3) DEFAULT NULL,
  `nama` varchar(30) NOT NULL,
  `npm` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mhs`
--

INSERT INTO `mhs` (`no`, `nama`, `npm`) VALUES
(4, 'aa', '10416004'),
(5, 'ab', '10416005'),
(1, 'nor', '1041601'),
(2, 'fuad', '1041602'),
(3, 'ahlis', '10416069');

-- --------------------------------------------------------

--
-- Table structure for table `mhs1`
--

CREATE TABLE `mhs1` (
  `nama` varchar(30) NOT NULL,
  `npm` varchar(8) NOT NULL,
  `kelas` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mhs1`
--

INSERT INTO `mhs1` (`nama`, `npm`, `kelas`) VALUES
('nor', '10416011', '304'),
('fuad', '10416012', '304'),
('z', '10416013', '304'),
('aa', '10416014', '304'),
('qq', '10416015', '304'),
('ww', '10416016', '304'),
('ss', '10416017', '304'),
('xx', '10416018', '304'),
('ee', '10416020', '304'),
('rr', '10416021', '304'),
('td', '10416022', '304'),
('tr', '10416023', '304'),
('uy', '10416025', '304'),
('uu', '10416026', '304'),
('cx', '10416027', '304'),
('cv', '10416028', '304'),
('ahlis', '10416079', '304'),
('moh', '10416089', '304'),
('mm', '10416099', '304'),
('nn', '10416100', '304');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_komen`
--

CREATE TABLE `tbl_komen` (
  `id_komen` int(10) NOT NULL,
  `user_komen` varchar(30) NOT NULL,
  `isi_komen` varchar(1000) NOT NULL,
  `id_posting` int(4) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_komen`
--

INSERT INTO `tbl_komen` (`id_komen`, `user_komen`, `isi_komen`, `id_posting`, `waktu`) VALUES
(9, 'wayan', 'wow', 6, '2018-12-29 14:53:09'),
(10, 'wayan', 'wow aja', 3, '2018-12-29 14:55:15'),
(11, 'oji', 'wiw ', 3, '2018-12-29 14:55:40'),
(12, '', 'aaaa', 7, '2018-12-29 15:04:33'),
(13, '', 'aaaaa', 8, '2018-12-29 16:02:15'),
(14, 'wayan', '', 9, '2018-12-29 16:11:57'),
(15, 'wayan', 'uuuuuuuuuu', 9, '2018-12-29 16:12:05'),
(18, 'oji', '', 9, '2018-12-29 17:10:23'),
(19, 'oji', 'aaaaaaa', 9, '2018-12-29 17:10:34'),
(20, 'ivo', '', 9, '2018-12-29 18:53:34'),
(21, 'ivo', 'wow bagus', 9, '2018-12-29 18:53:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_like`
--

CREATE TABLE `tbl_like` (
  `id_like` int(11) NOT NULL,
  `id_user` varchar(30) NOT NULL,
  `id_post` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_like`
--

INSERT INTO `tbl_like` (`id_like`, `id_user`, `id_post`) VALUES
(27, 'wayan', '8'),
(28, 'wayan', '8'),
(29, 'wayan', '7'),
(30, 'wayan', '10'),
(31, 'oji', '10'),
(33, 'wayan', '6'),
(38, 'wayan', '9'),
(39, 'ahlis', '9'),
(44, 'ivo', '16'),
(45, 'ivo', '16');

-- --------------------------------------------------------

--
-- Table structure for table `tb_post`
--

CREATE TABLE `tb_post` (
  `id_post` int(11) NOT NULL,
  `judul_post` varchar(50) NOT NULL,
  `id_author` varchar(8) NOT NULL,
  `tgl_post` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isi_post` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `lihat` int(11) NOT NULL,
  `suka` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_post`
--

INSERT INTO `tb_post` (`id_post`, `judul_post`, `id_author`, `tgl_post`, `isi_post`, `gambar`, `lihat`, `suka`) VALUES
(3, 'Yamaha YZF-R1', 'ahlis', '2019-01-04 11:30:31', 'Mempunyai mesin yang unik karena menggunakan crankshaft tipe crossplane. Keuntungannya output tenaganya tersalur secara merata sehingga mendapat tenaga yang selalu berisi tiap putaran mesin. \r\n\r\nSeri ini punya tipe limited edition bernama R1M, bedanya dengan R1 yang biasa:\r\n-Premium Ohlins Electronic Racing Suspension (ERS)\r\n-Communication Control Unit (CCU) - Data logger & vehicle info via Wi-Fi\r\n-Wider 200 series rear tire (200/55ZR17)\r\n-Carbon fiber front fender and fairing\r\n-Polished & clear coated aluminum fuel tank (unpainted)\r\n-Polished & clear coated aluminum swingarm (unpainted)\r\n\r\n\r\nSpec:\r\nEngine Type 998cc, liquid-cooled inline 4 cylinder DOHC 16 valves\r\nBore x Stroke 79.00 x 50.9mm\r\nCompression Ratio 13.0:1\r\nFuel Delivery Fuel Injection with YCC-T and YCC-I\r\nIgnition TCI: Transistor Controlled Ignition\r\nTransmission 6-speed w/multiplate slipper clutch\r\nFinal Drive O-ring chain', 'r1.png', 49, 1),
(6, 'Yamaha YZF-R6', 'ahlis', '2019-01-04 21:26:52', 'Ini motor sudah masuk ranah supersport, bersaing melawan kawasaki ZX-6R, CBR600RR, Suzuki GSX-600R. Memiliki tenaga yang lumayan besar hingga top speed sanggup menembus 250KM/J emoticon-Belo\r\n\r\nSpek:\r\nEngine Type 599cc liquid-cooled inline 4-cylinder; DOHC, 16 titanium valves\r\nBore x Stroke 67.0 x 42.5mm\r\nCompression Ratio 13.1:1\r\nFuel Delivery Fuel Injection with YCC-T and YCC-I\r\nIgnition TCI: Transistor Controlled Ignition\r\nTransmission 6-speed w/multiplate slipper clutch\r\nFinal Drive O-ring chain\r\n', 'r6.png', 30, 1),
(7, ' Yamaha YZF-R15', 'ahlis', '2019-01-04 12:01:05', 'Motor ini memiliki saudara yang bernama v-ixion yang setulang semesin, hanya dibedakan di bentuk bodi, fairing, jumlah gear, tenaga mesin, bentuk velg. Sisanya masih ada kemiripan dengan v-ixion di bagian tulangnya dan mesinnya. \r\n\r\nSpek:\r\nEngine type Liquid-cooled, 4-stroke, SOHC, 4-valve\r\nCylinder arrangement Single cylinder\r\nDisplacement 149.8cc\r\nBore & Stroke 57 Ã— 58.7mm\r\nCompression ratio 10.4:1\r\nMaximum power 17PS/ 8,500rpm\r\nMaximum torque 15N.m / 7,500rpmm\r\nStarting system Electric start\r\nLubrication wet sump\r\nFuel tank capacity 12 liters\r\nFuel supply system Fuel Injection\r\nIgnition system T.C.I\r\nPrimary / Secondary reduction ratio 3.042 / 3.133\r\nClutch type Wet Multiple-disc\r\nTransmission type Return type 6-speed\r\nGear ratios \r\n\r\n1st=2.833, 2ndï¼1.875, 3rd=1.364,\r\n\r\n4th=1.143, 5th=0.957, 6th=0.84', 'r15.jpg', 12, 3),
(8, 'Yamaha YZF-R125', 'ahlis', '2019-01-04 13:37:44', 'Oke ini sport yamaha yang memiliki mesin paling kecil di antara saudaranya, motor ini dihadirkan khusus untuk rider yang masih memiliki SIM A1 atau rider pemula di benua eropa sana. Memiliki mesin 124.66cc, liquid-cooled, 4-stroke, single-cylinder, 4-valve, SOHC, rasio kompresi 11.2:1.\r\nMotor ini bersaing dengan honda cbr 125r, kunci keunggulannya daripada cbr adalah penggunaan USD pada sok depan dan swing arm banana.\r\n\r\nSpek:\r\nEngine type: Single cylinder, 4-stroke, liquid-cooled, SOHC, 4-valves\r\nDisplacement: 124.7cc\r\nBore x stroke: 52.0 mm x 58.6 mm\r\nCompression ratio: 11.2 : 1\r\nMaximum power: 11.0 kW (15.0PS) @ 9,000 rpm\r\nMaximum torque: 12.4 Nm (1.25 kg-m) @ 8,000 rpm\r\nLubrication system: Wet sump\r\nClutch type: Wet, multiple-disc coil spring\r\nFuel system: Electronic Fuel Injection\r\nIgnition system: TCI (digital)\r\nStarter system: Electric\r\nTransmission system: Constant Mesh, 6-speed\r\nFinal transmission: Chain\r\n', 'r125.jpg', 163, 18),
(9, 'Honda CBR 1000RR', 'ahlis', '2019-01-03 19:46:15', 'Desain dan Dimensi\r\n\r\nMemiliki bentuk tubuh yang besar dengan dimensi ukuran 2.080 x 720 x 1.141 mm, membuat para pengguna yang memiliki tubuh kecil akan terasa sulit ketika mawal menggunakannya, apalagi dengan apa saja yang dimilikinya, mulai dari mesin berukuran besar hingga semua aksesoris yang melengkapinya, motor Big Bike dari honda ini memiliki bobot cuku berat hingga 210 kg untuk versi ABS, sedangkan untuk versi reguler atau hanya memiliki tampilan standard motor sport, memiliki bobot 199kg. Cukup berat bukan sob?.\r\n\r\n  \r\nTapi dari beratnya tersebut, membuat keseimbangan dari CBR1000RR SP lebih meningkat, apalagi dengan di gunakannya rangka jenis Diamon Frame, yang merupakan rangka standrad dunia, lengkap berikut dengan jarak summbu roda yang memiliki ukuran 1.410mm, serta jarak terhadap tanah yang meraih angka 130 mm, menghasilkan keseimbangan lebih sewaktu digunakan. Tapi hasil dari rangkanya yang lebar dan luas, menjadikan Honda memiliki tangki cukup besar, yang mampu menampung bahan bakar hingga kapasitas maksimal hingga 17,5 liter.\r\n\r\nNamun bila melihat lebih mndetail lagi akan bentuk tubuhnya yang besar, motor premium dari honda ini menyimpan kenyamanan yang terbilang tinggi, dimana pada bagian kemudi telah di pasangkan stang jepit jenis Under Yorke, dengan desain tempat duduk lebih kebelakang, yang dapat memberikan rasa nyaman lebih sewaktu menempuh perjalanan jauh. Disamping itu, untuk urusan tampilan dan desain, dibagian depan didapati head lamp dengan desain Dual Keen eyes, lengkap beserta lampu LED Proyektor, yang dapat memaksimlkan pencahaayaan di waktu gelap.\r\n\r\nKemudian, pada bagian atasnya lagi, disematkan dua buah spion yang di integrasikan bersama Lampu Sein, sehingga terlihat kompak, dan taklupa untuk bagian sisi samping, Honda membalutnya dengan fullfairing, yang mana sampai pada bagian belakang di buat runcing, dengan model spatbor gantung dan lampu belakang yang mengikuti alur body, membuat dirinya terlihat lebih sporty dan gagah. Selain itu, untuk bagian dashboard, Honda membekalinya dengan panel layar full digital.\r\n\r\nAdvertisement\r\n\r\n  \r\nDimana untuk isinya sendiri, seperti indikator kecepatan putaran mesin, indikator letak gigi, indikator perpindahan tingkat gigi yang dapat disesuaikan dengan keinginan serta selera dari si pengguna, dan tampilan RPMberbentuk bargraph, yang semuanya itu tampil lebih user friendly dan mudah di pahami untuk mengetahui tentang keadaan motor pada waktu di gunakan.\r\n\r\nPerforma Mesin\r\n\r\nGahar dan tangguh, kedua kata tersebut mewakili akan performa yang dimiliki oleh CBR1000RR SP, jadi pantas saja Harga Honda CBR1000RR SP dibanderol sangat mahal. Terlebih jika sobat ketahui jeroan dapur pacu yang dimilikinya, Honda meggunakan mesin 4 tak dengan tipe DOHC yang memiliki 4 silinder segaris, dan kubikasi mesin yang mncapai angka 999.8cc, yang dijalankan pada sistem bahan bakar berupa PGM-DFSI (Programmed Dual Stage Fuel Injection), sedangkan untuk perbandingan kompresi mesin, Honda CBR1000RR SP menggunakan 12,3 : 1, yang didukung penuh transmisi manual 6-speed.\r\n\r\n\r\nDari racikan mesin seperti itu, Honda dapat menyumbulkan performa yang cukup mantap, hingga maksimum power sampai dengan 133 kW pada setiap putaran mesin 12.250 RPM, sedangkan untuk nilai torsi yang di raihnya mendapat perolehan angka 114 NM pada setiap 10.500 RPM. Meskipun dapat meghasilkan power yang sangat besar, berkat adanya teknologi bahan bakar yang digunakannya, membuat Honda CBR1000RR SP HAnya menghabiskan 17,85 km / liter saja, dan itu masih bisa dikatakan irit untuk seukuran motor besar dengan mesin 1000 cc.\r\n\r\nMenariknya lagi, dari olehan kecepatan dan torsi yang dimilikinya, Honda bisa memposisikan diri untuk menghasilkan kecepatan yang sungguh fantastis, karena untuk bisa mendapatkan kecepatan 0 km sampai dengan 160 km/h, Honda CBR1000RR SP hanya membutuhkan waktu sekitar 4.8 detik saja, dan dari cuplikan hasil kecepatan yang diraihnya saja, sobat otomotif bisa emmperkirakan, betapa cepatnya motor terbaru hasil inovasi dari Honda dengan nama CBR1000RR SP.\r\n\r\nRangka dan Suspensi\r\n\r\nSeperti yang kami bilang waktu di atas, bahwasanya Honda CBR1000RR SP menggunakan rangka jenis Diamond yang dissusun dari material pilihan berupa Aluminum Composite Twin-Spar, yang menjadikannya tetap ringan meskipun tampil dengan bentuk lebar dan besar. Selanjutnya mengungkap akan kokohnya kaki-kaki yang dibawa oleh Honda CBR 1000RR SP. Motor ala super bika dari honda ini menanamkan jkenis suspensi telescopic with an Inner Tube dengan diameter 43mm dan NIX30 Front Fork with Preload dari OHLINS.\r\n\r\nLalu pada bagian belakang, untuk dapat tetap memberikan keseimbangan dalam berbagai kondisi dan keadaan, Honda juga menyematkan Unit Pro-Link with Gas-Charged TTX36, yang juga di adopsinya dari OHLINS, yang mana kedua suspesni tersebut nantinya dapat memberikan kenyaman lebih terhadap penggun, serta dapat emredam getaran dari mesin serta jalan berlubah dihadapannya, yang ber efek pada pemakaian akan lebih menyenangkan.\r\n\r\nFitur\r\n\r\nBukan saja performa yang optimal, tetapi juga Honda CBR1000RR SP kaya akan fitur didalmnya, diantaranya adalah, adanya Fitur HESD ( Honda Electronic Steering Damper), yang dapat mengontrol daya redam dengan berdasarkan akan kecepatan dan akselerasi yang dihasilkan oleh CBR 1000RR SP, lalu ditambahkan pulan HISS (Honda Ignition Security System), diaman fitur tersebut memiliki cara kerja untuk tetap dapat memberikan rasa aman terhadap pengguna ketika menggunakan motor di parkiran ataupun tempat sepi.\r\n\r\nKarena dengan danya fitur tersebut, Honda CBR1000RR SP hanya bisa di hidupkan oleh kunci alsi bawaan dari pertama kali si pengguna membelinya, dan tidak bisa di bajak oleh kunci duplikat apapun. Kemudian di sisi bagian pengereman, honda melengkapi kedua kaki-kakinya tersebut dengan Dual Hydraulic Disc yang masing-masing memiliki diameter seluas 320 x 4.5 mm dengan 4-Piston Brembo Monobloc Caliper, sementara di bagian belakang, honda menambahkan Hydraulic Disc berukuran 220 x 5 mm lengkap bersama kaliper tunggal yang dibuat dari bahan metal.\r\n\r\nTak hanya itu saja, untuk dapat elbih membuat pengereman pada Honda CBR1000RR SP lebih sempurna, pihaknya mensinkronasikan kedua pengereman tersebut dengan teknologi revolusioner eC-ABS, yang dapat menyesuaikan keras atau tidaknya sewaktu penggguna menarik ktuas rem di tangan, yangb bila demikian, pengguna akan lebih aman meskipun melakuakn pengereman secara mendadak pada kecepatan tinggi. Teknologi canggih dan fitur yang kaya, cukup pantas rasanya jika Harga Honda CBR1000RR SP dilabeli nominal angka tinggi.\r\n', 'cb.png', 75, 1),
(10, 'HONDA CBR-600RR', 'ahlis', '2019-01-03 13:55:52', 'Ini adalah varian terkini dari Honda CBR 600. Motor yang belum lama di-launching ini terlihat sangat berbeda dari varian-varian sebelumnya. Perbedaan paling kentara ada pada sektor bodywork, desain motor yang tadinya elegan dan manis kini berubah radikal menjadi sangat agresif dengan model fairing baru yang diklaim mampu memperbaiki aerodinamis motor.\r\n\r\nBagian juga terdapat pada model velg yang tadinya palang 3, kini berganti menjadi palang 12 mengikuti sang kakak (Honda CBR1000RR) yang sudah lebih dulu launching pada tahun 2012. Bukan hanya pada ECU, Ram-Air pun juga ikut direvisi untuk meningkatkan torsi motor. Dan di motor ini juga sudah ditanam fitur Electronic Combined Anti-Lock Braking System (C-ABS), menjadikan motor ini sebagai motor di kelas supersport pertama yang menggunakan teknologi itu.\r\n\r\nSpesifikasi:\r\n\r\nModel: Honda CBR600RR\r\nYear: 2013\r\nCategory: Sport\r\nRating: 64.2 out of 100\r\n\r\nDisplacement: 599.00 ccm (36.55 cubic inches)\r\nEngine type: In-line four, four-stroke\r\nCo', 'cbr6.jpg', 8, 0),
(11, 'HONDA CBR-250RR', 'admin', '2019-01-03 14:04:20', 'Tenaga mesin Parallel Twin Cylinder 249,7 cc-nya juga besar. Tenaga maksimalnya 38,3 dk / 12.500 rpm, sedang torsi maksimal mencapai 23,3 Nm / 11.000 rpm.\r\n\r\nSelain itu, fitur mesin DOHC 8-klep ini juga mutakhir, misalnya memakai Throttle-By-Wire (TBW) System, sehingga kontrol gasnya menggunakan sensor.\r\n\r\nKarena sudah TBW, CBR250RR punya 3 riding mode, yaitu Comfort, Sport & Sport+, yang setiap mode punya perbedaan kurva tenaganya.\r\n\r\nSecara riding position dan konsumsi BBM, memang CBR250RR tidak senyaman dan irit seperti All New Ninja 250.\r\n\r\nNamun dengan harga mulai dari 59,9 juta Rupiah, OTR Jakarta, CBR250RR unggul di sisi value for money.\r\n\r\nKarena itulah, Honda CBR250RR menjadi sport 250 cc terbaik, menurut GridOto Award 2018!\r\n\r\nData Spesifikasi Honda CBR250RR 2018\r\n\r\nDimensi\r\nP x L x T : 2.060 x 724 x 1.098 mm\r\nWheelbase : 1.389 mm\r\nGround Clearance : 145 mm\r\nTinggi jok : 790 mm\r\nBobot kering : 165 kg (STD), 168 kg (ABS)\r\nKapasitas tangki BBM : 14,5 liter\r\n\r\nMesin\r\nTipe mesin: 4-Stroke, 8-Valve, Parallel Twin Cylinder PGM-FI\r\nPendinginan : Liquid Cooled With Auto Electric Fan\r\nSistem katup : DOHC 8 katup\r\nKapasitas : 249.7 cc\r\nThrottle System : Throttle-By-Wire System with Accelerator Position Sensor\r\nBore x Stroke : 62.0 x 41.4 mm\r\nValve In Diameter : 24.5 mm\r\nValve x Diameter : 21 mm\r\nThrottle Body Size : 32 mm\r\nRasio kompresi : 11.5 : 1\r\nTenaga maksimal: 38,3 dk / 12.500 rpm\r\nTorsi maksimal: 23,3 Nm / 11.000 rpm\r\nTransmission : Manual 6 Speed\r\nClutch System : Multiplate Wet Clutch with Coil Spring\r\nGear Shift Pattern : 1-N-2-3-4-5-6\r\nSistem starter : Electric\r\nLubricant Type : Wet (Pressing and Spray)\r\nOil Capacity : 1.9 L (Exchange)\r\nIgnition Type : Full Transisterized\r\nBattery : MF 12V â€“ 7Ah\r\nSpark Plug Type : NGK SILMAR8C-9 (Iridium Spark Plug)\r\n\r\nRangka\r\nTipe sasis : Truss Frame\r\nRem depan : Hydraulic Disc, Dual Piston (STD Type & ABS Type)\r\nRem belakang : Hydraulic Disc, Single Piston (STD Type & ABS Type)\r\nSuspensi depan : Showa upside-down \r\nSuspensi belakang : Aluminum Swing Arm (5 Adjustable Mono Suspension with Pro-Link System)\r\nBan depan: IRC RX-01F 110/70 â€“ 17 54S (Tubeless)\r\nBan belakang: IRC RX-01R 140/70 â€“ 17 66S (Tubeless)\r\nLampu utama : LED dengan DRL\r\nLampu rem : LED', 'cbr2.jpg', 2, 0),
(12, 'HONDA CBR-150R', 'admin', '2019-01-03 18:41:41', 'CBR 150R menggunakan sasis Truss Diamond Frame dan aluminium engine hanger baru yang dikatakan mampu mengoptimalkan kesimbangan antara tenaga dan fleksibilitas berkendara.\r\n\r\nPada sasis, Kawai menyatakan yang mereka lakukan adalah mengurangi berat motor, sentralisasi bobot hingga lebih dekat pada pusat gravitasi, serta mengatur posisi duduk agar pengendalian bisa dilakukan dengan lebih baik.\r\n\r\nBerat kosong CBR 150R kini 135kg, lebih ringan 5 kg ketimbang versi lama. Tinggi batang kemudi berkurang 24mm menjadi 686mm, sementara lengan ayun lebih panjang 13mm menjadi 513mm. Demikian dijelaskan Kawai seperti dikutip Dapurpacu.com.\r\n\r\nDengan pusat gravitasi yang lebih baik dan bobot lebih ringan, pengendara bisa lebih lincah saat bermanuver di jalan raya. Oleh karena itu All-New CBR 150R diklaim sangat cocok untuk digunakan sehari-hari.\r\n\r\nKenyamanan untuk pengemudi juga bertambah dengan perbaikan pada sistem peredam getaran, meliputi uniaxial primary balancer, offset cylinder, dan roller rocker arm.\r\n\r\nMesin\r\n\r\nHonda membekali motor ini dengan mesin Core Sport ENG DOHC 6 speed L/C 150 cc dengan rasio kompresi 11,3:1, sedikit lebih besar dari versi lama yang 11:1.\r\n\r\nTenaga maksimal yang dihasilkan sama dengan mesin lama, 17,1 hp, namun torsinya bertambah 0,7 Nm menjadi 13,7 Nm. Oleh karena itu kepada Liputan6, Kawai mengklaim mesin ini lebih baik dalam putaran bawah dan menengah, akselerasi lebih cepat, dan bisa menembus kecepatan maksimal 130 km/jam.\r\n\r\nKapasitas tangki bahan bakar berkurang dari 13,2 liter menjadi 12 liter, tetapi Honda menyatakan jarak tempuhnya justru lebih jauh karena CBR 150R 2016 lebih irit. Kawai menyatakan versi baru ini bisa menempuh 39,72 km/liter sementara konsumsi bbm versi lama adalah 33,47 km/liter.\r\n\r\nGaya\r\n\r\nDari sisi styling (gaya), Honda menggunakan desain yang lebih langsing, segaris dengan bodi, dan lampu depan LED lebih bersudut tajam. Penempatan hidung yang lebih rendah juga membuat visibilitas pengendara menjadi lebih baik.\r\n\r\nDesain tampilan kokpit hadir dengan panelmeter yang lebih ramping dilengkapi dengan indikator digital yang mudah dilihat dan Aeroplane Fuel Cap semakin mempertegas karakter racing agresif. Singkatnya, menurut Sriwijaya Post, All-New CBR 150R ini lebih macho dan bergaya.\r\n\r\nUkuran ban masih sama dengan versi lama, yakni roda depan 100/80 dengan pelek 17 inci, dan belakang berukuran 130/70 yang juga membalut pelek 17 inci.\r\n\r\nSatu fitur baru yang disematkan adalah passing beam (lampu jauh) yang tombolnya diletakkan di sebelah kiri. Akan tetapi blogger Yogas Erlangga menyayangkan belum terdapatnya tombol engine cut-off.', 'CB1.jpg', 91, 0),
(14, 'KAWASAKI ZX-10R', 'admin', '2019-01-03 14:18:26', 'Rangka motor : deltabox yang dibuat dengan bahan alumunium yang kuat dan ringan ( Twin Spar - Cast Alumunium ).\r\nSudut kemudi kiri & kanan : 27 derajat.\r\nSuspensi depan : garpu terbalik ( inverted fork ) berdiameter 43 mm yang bisa diatur kenyamanannya hingga 3 setelan\r\nSuspensi belakang : horisontal back-link dengan gas -charged shock yang bisa diatur tingkat kenyamanannya hingga 4 setelan.\r\nBan depan : 120/70ZR17M/C ( 58W )\r\nBan belakang : 190/55ZR17M/C ( 75W ).\r\nRem depan : cakram ganda 4 kaliber piiston berukuran 310 mm\r\nRem belakang : cakram tunggal 1 kaliber piston yang berukuran 220 mm.\r\n\r\n\r\nMESIN\r\nMesin berkapasitas : 988 cc, 4 Tak, 16 Katup, 6 kecepatan, DOHC ( Double Overhead Camshaft ) dengan sistem pendinginan berupa cairan.\r\nDiameter x Langkahnya : 76 mm x 55 mm.\r\nRasio komprehensi mesin : 13 : 1.\r\nPengapiannya jenis : digital dengan sistem bahan bakar Fuel Injection ( f47 mm x 4 ( Keihin ) ).\r\nMenyalakan mesin hanya dengan menggunakan satu cara yakni Electric.\r\nDaya maksimum : 147,1 kW ( 200PS ) / 13000 rpm ( Dengan RAM Air mencapai 154,4 kW ( 209,9 PS ) / 13000 rpm )\r\nTorsi maksimumnya : 112 Nm ( 11.4 kgf.m ) / 11500 rpm.\r\n\r\n\r\nDIMENSI\r\nPanjang x lebar : 2075 mm x 715 mm\r\nTinggi : 1115 mm.\r\nJarak sumbu antar kedua roda : 1425 mm.\r\nJarak terendah ke permukaan tanah : 135 mm.\r\nTinggi dari tempat duduk : 813 mm.\r\nBerat kosong motor : 198 kg untuk varian standar & 201 kg untuk versi ABS.\r\nKapasitas bahan bakar : 17 liter.\r\n', 'k.jpg', 2, 0),
(15, 'KAWASAKI H2', 'admin', '2019-01-03 14:24:42', 'Beralih ke ukuran dimensi dari spesifikasi Kawasaki Ninja H2R ini sedikit lebih kecil dibandingkan versi jalanan yaitu sebesar 2070 x 770 x 1160 mm dan memiliki berat lebih ringan yakni 216 kg. Dengan dimensi yang lebih ringan tersebut maka Kawasaki Ninja H2R ini akan lebih cepat untuk meraih top speed di lintasan balap. Namun juga memiliki kestabilan yang baik pada saat melaju pada kecepatan tinggi. Ukuran tangki yang disematkan pada spesifikasi Kawasaki Ninja H2R sanggup menampung bahan bakar maksimal berkapasitas 17 liter dirasa cukup banyak untuk mengitari puluhan lap pada sirkuit tertentu.\r\n\r\nSuspensi\r\nKaki-Kaki yang Handal\r\n\r\nSelanjutnya untuk kaki-kaki dari spesifikasi Kawasaki Ninja H2R ini menggunakan ban gambot berukuran besar namun lebih kecil dibandingkan Kawasaki Ninja H2 yaitu 120/60 pada roda depan dan 190/65 pada roda belakang dengan menggunakan velg berukuran 17 inci akan menghasilkan kestabilan pada saat melaju di kecepatan tinggi di lintasan balap. Untuk urusan handling atau bermanuver Kawasaki Ninja H2R ini sangat bisa diandalkan untuk melahap tikungan dengan kecepatan tinggi karena motor super sport Kawasaki ini menggunakan Swing Arm model mounting plate dan komponen suspensi yang sangat canggih yang dapat diatur sesuai dengan kondisi jalan atau keinginan pengendara. Pada bagian depannya, spesifikasi Kawasaki Ninja H2R menggunakan suspensi berjenis Fork Up Side Down berukuran 43 mm dan bagian belakangnya mengandalkan New Uni-Trak with Gas Charged Shock akan memantulkan goncangan yang tidak kencang sehingga menjaga kondisi yang stabil baik itu pada saat masuk atau keluar tikungan. Sedangkan untuk sistem pengeremannya, Kawasaki Ninja H2R menggunakan piringan cakram jenis dual disk brake semi floating berukuran 330 mm dengan 4 piston kaliber pada bagian depannya dan single disk brake berukuran 250 mm dengan 2 piston kaliber dapat mengurangi laju Kawasaki Ninja H2R dengan baik  dan stabil saat akan masuk tikungan tertentu yang membutuhkan pengereman', 'K2.jpg', 14, 0),
(16, 'KAWASAKI ZX-6R', 'admin', '2019-01-04 11:52:22', 'Secara mesin, tidak banyak perubahan di mesin 4 silinder inline, DOHC, 16-valve, liquid-cooled berkapasitas 636 cc.\r\n\r\nTenaganya tetap besar, 127,3 dk / 13.500 rpm, namun dibanding versi sebelumnya, tenaga ZX-6R 2019 lebih kecil dibanding pendahulunya yang memiliki tenaga 129,3 dk.\r\n\r\n\"Karena sekarang mesinnya sudah lulus standar emisi Euro-4, membuat emisinya lebih rendah dan lebih ramah lingkungan,\" pungkas Michael.\r\n\r\nMeski tenaga lebih kecil, mesin ZX-6R 2019 lebih mudah dikendalikan, dengan final gear turun 1 mata menjadi 15/43.\r\n\r\nMembuat torsi sebesar 70,8 Nm / 11.000 rpm diklaim lebih halus di putaran bawah, cocok untuk pemakaian harian.\r\nAgar makin mudah dikendalikan di jalanan & sirkuit, Kawasaki menambahkan fitur dari superbike ZX-10R pada ZX-6R 2019.\r\n\r\n\"Selain kontrol traksi KTRC, sekarang ada KQS atau Kawasaki Quick Shifter, jadi menaikan gigi tidak perlu menarik tuas kopling,\" jelas Michael.\r\n\r\nSuspensi masih memakai upside down Showa SFF Big Piston Fork, dengan diameter 41 mm.\r\n\r\nUntuk belakangnya memakai monoshock Uni-Trak khas Ninja, dan agar sesuai dengan karakter rider-nya, suspensi depan-belakangnya bisa diatur.\r\n\r\nMulai dari spring preload, rebound dan high-/low-speed compression damping-nya, mantap!\r\n\r\nBannya juga baru, sekarang pakai Bridgestone Battlax Hypersport S22, yang diklaim membuat handlingnya lebih ringan, dengan grip lebih lengket aspal.\r\n\r\n\"Ban ini pertama kali dipakai motor yang dijual di Indonesia, baru oleh ZX-6R 2019 saja,\" bangga Michael\r\nTidak hanya mesin dan kaki-kaki, banyak juga fitur bertambah di ZX-6R 2019, dimulai dari panel instrumennya.\r\n\r\nSekarang ada fuel meter, dan fuel average consumption, serta informasi seperti shift light yang bisa disetel kapan lampunya menyala.\r\n\r\nAda perubahan juga di sektor riding position, semisal handle kopling yang sekarang bisa disetel 5-arah.\r\n\r\nBagian joknya juga dibuat lebih tirus, agar kaki pengendara lebih mudah menapak saat berhenti.\r\n\r\nKarena desain fairingnya baru, windshield-nya juga dibuat agar lebih mengakomodir posisi rider yang sekarang lebih dekat ke setang.\r\n\r\nTerakhir, ada soket DC di area bawah jok, agar bisa ditambahkan aksesoris seperti power outler 12 volt, untuk charging gadget seperti GPS', 'K6.jpg', 22, 2),
(17, 'KAWASAKI ZX-636', 'admin', '2019-01-04 12:16:32', 'Untuk fiturnya, Kawasaki Ninja ZX-6R punya update tambahan diantaranya sbb :\r\n\r\nKQS (Kawasaki Quick Shifter)\r\nRem ABS KIBS (Kawasaki Intelligent anti-lock Brake System)\r\nKTRC (Kawasaki TRaction Control)\r\nSuspensi depan Upside down dari SHOwa dengan SFF-BP (Separate Function Fork â€“ Big Piston)\r\nLED Hedlight dan Tailight\r\nSpeedometer kombinasi Analog dan Digital\r\nAssist & Slipper Clutch\r\nBan Bridgestone Battlax Hypersport S22\r\ndan ada aksesories tambahan berupa Ã–hlins steering damper, Frame Slider dan jok motif warna\r\nSPESIFIKASI KAWASAKI NINJA ZX6R 636 2018\r\nTipe Mesin : 4 tak, DOHC 4 silinder segaris, 16 klep berpendingin cairan\r\nKubikasi mesin : 636cc\r\nBore x Stroke : 67 mm x 45.1 mm\r\nRasio Kompresi : 12.9:1\r\nPower maks : 130 PS (136 PS pakai RAM Air) pada 13,500 rpm\r\nTorsi maks : 70,8 Nm pada 11,000 rpm\r\nTransmisi : 6 speed\r\nPengapian : Digital\r\nStarter : Electric\r\nTipe Kopling : Basah\r\nTipe Rangka : Twin Spar, Alumunium Casting\r\nP x L x T : 2,025 x 710 x 1,100 mm\r\nGroud Clearance : 130 mm\r\nTiggi jok : 830 mm\r\nKapasitas tanki : 17 liter\r\nBerat : 196 kg\r\nBan depan : 120/70ZR17M/C (58W)\r\nBan belakang :180/55ZR17M/C (75W)\r\nRem depan : Dual semi-floating 310 mm (x t5 mm) petal discs. Caliper: dual radial-mount, monobloc, opposed 4-piston\r\nRem belakang : Single 220 mm (x t5 mm) petal disc. Caliper: single-bore pin-slide, aluminium piston\r\nSuspensi depan : 41 mm inverted fork (SFF-BP) with rebound and compression damping and spring preload adjustability, and top-out springs\r\nSuspensi belakang : Bottom-Link Uni Trak, gas-charged shock with piggyback reservoir, compression and rebound damping and spring preload adjustability', 'zx63.jpg', 21, 0),
(18, 'DUCATI PANIGALE-1299R', 'admin', '2019-01-03 14:48:11', 'Ducati akhirnya meluncurkan Panigale 1299 R Final Edition (FE), (8/7/2017), di Peeble Beach, California. Model ini â€diaspalkanâ€ berbarengan dengan seri balap World Superbike di Mazda Raceway Laguna Seca, akhir pekan ini. Sepeda motor itu pun menjadi penanda terakhir Ducati Panigale yang menggunakan mesin L-Twin. Panigale 1299 R-FE meluncur untuk kemudian digantikan dengan generasi baru mesin V4 yang akan disematkan pada generasi selanjutnya. Peluncuran ini dilakukan langsung oleh CEO Ducati Claudio Domenicali, didampingi pebalap Ducati di World Superbike, Marco Melandri dan Chaz Davies. â€Kita merayakan sejarah datangnya era baru sistem desmodromic pada mesin generasi V4 yang diturunkan dari pengalaman berharga MotoGP. Tapi itu adalah masa depan, dan hari ini kita menikmati mesin silinder kembar, dan beterima kasih untuk torsi luar biasa serta ukuran yang compact,â€ ujar Domenicali. Ubahan visual yang paling tampak adalah corak warna dan knalpot titanium.(Asphaltandrubber) Panigale 1299 R-FE sebenarnya adalah Panigale R yang mesin 1.198 cc-nya sudah diganti dengan tipe 1.285 cc plus beberapa ubahan signifikan. Ducati tidak akan memproduksi secara masif, tapi bukan termasuk edisi terbatas. Ada beberapa komponen yang digunakan Superleggera pada R-FE, namun blok mesinnya besi baja (bukan titanium), dipadu dengan katup dan connecting rod titanium. Tenaganya naik, jadi 209 tk. Bandingkan dengan Panigale 1299 S atau R yang berada di level 196 tk. Torsi juga naik dari 136,9 Nm menjadi 141 Nm. Instalasi pipa gas buang terbuat dari titanium, sama seperti Panigale untuk WSBK. Bobot berkurang dari 166,4 kg menjadi 161,9 kg. Secara visual, perbedaan terbesar dari R-FE ini adalah livery tiga warna dan penampakan pipa gas buang titanium. Secara umum hampir sama, meski perubahan secra kasat mata menunjukkan identitas berbeda dan layak untuk dijadikan tunggangan yang bisa dibanggakan.\r\n', 'dc12.jpg', 1, 0),
(19, 'DUCATI PANIGALE-899', 'admin', '2019-01-03 14:57:21', 'Motor dari Ducati dengan jenis supersport telah resmi di luncurkan, untuk ikut meramaikan jajaran motor sport tanah air. Motor dengan kapasitas mesin 899 cc ini dipasarkan di pasar dalam negri dengan harga yang mencapai Rp 400 juta. Harga tersebut sangat pantas untuk sebuah motor sportbike asal Italia ini, mengingat motor-motor buatan negri Pizza ini terkenal akan ketangguhannya.\r\n\r\nHadir dengan disain motor yang full fairing, motor ducati panigalle ini makin terkesan gagah dan garang untuk para pengendaranya. Motor yang merupakan varian terbaru dari ducati ini memiliki beberapa keunggulan yang akan menjadi daya tarik tersendiri bagi para pecinta motor sportbike. Ducati memang mendisain khusus motor terbarunya ini layaknya motor balap di ajang bergensi moto Gp. Sehingga tidak menutup kemungkinan jika pihak ducati akan membanderol produknya ini dengan harga yang cukup mahal.\r\n\r\nNamun dengan harga ducati panigalle 899 yang terkesan cukup mahal ini, tidak menghalangi para peminatnya untuk memiliki motor dengan cc yang besar ini. Bahkan bagi para pecinta motor-motor besar dengan jenis sportbike motor ini menjadi salah satu buruan utamanya, mengingat motor ducati panigalle ini memiliki perfoma mesin yang cukup tangguh untuk sekelas motor super sport. Apalagi ducati membekali produk terbarunya ini dengan mesin yang berjenis Superquadro L Twin dengan sistem pendingin berupa cairan.\r\n\r\nTipe : Superquadro, 4 katup silinder, Desmodromic, L-Twin Silinder, Liquid Cooled\r\nMaksimum Power : 143 kW (195 hp) / 10.750rpm\r\nTorsi Maksimum : 132 Nm / 9.000 rpm\r\nDiameter x Langkah : 112 mm x 60,8 mm\r\nVolume Silinder : 899 cc\r\nPerbandingan Kompresi : 12,5 : 1\r\nSistem bahan bakar : Injection Electronik\r\nTransmisi : 6 speed\r\nKopling : Wet multiplate with hydraulic control\r\nDimensi	\r\nP x L x T : â€“\r\nBerat Kering Motor : 164 kg\r\nBerat Basah dengan ABS : 188 kg\r\nKapasitas Tangki : 17 liter\r\nJarak Poros Roda : 1.437 mm\r\nJumplah kursi : ganda\r\nTinggi Jok : 825 mm\r\nRangka	\r\nTipe : Monocoque Alumunium\r\nSuspensi Depan : Marzocchi 50 mm\r\nSuspensi Belakang : Aluminium swingarm\r\nRem Depan : 2 x 330mm semi-floating discs,  dengan model rem cakram ABS, 4 kaliber piston dari Bremo + 2,5 kg\r\nRem Belakang : 245mm disc, 2-piston calliper\r\nBan Depan : Pirelli Diablo Supercorsa SP 120/70 ZR17\r\nBan Belakang : Pirelli Diablo Supercorsa SP 200/55 ZR17', 'dc8.jpg', 0, 0),
(21, 'DUCATI MONSTER-797', 'admin', '2019-01-04 13:38:08', 'Kelas pemula yang dimaksud, tentu saja adalah versi Ducati. Harga, misalnya, masih sulit dijangkau oleh sebagian besar penduduk Indonesia. GES membanderol Monster 797 Red Rp299 juta, serta Rp309 juta untuk varian warna Star White Silk dan Dark Stealth. Kedua harga itu off the road --belum termasuk pajak-- di Jakarta.\r\n\r\nTapi, memang, harga tersebut menjadi yang paling murah dalam dereta produk pabrik yang bermarkas di Bologna, Italia, itu. Duo Scrambler, sebagai contoh, dijual dengan harga Rp379 juta, sementara Multistrada 950 Rp479 juta --kedua harga off the road.\r\n\r\nMonster 797 dirancang Ducati sebagai naked bike yang sederhana, mengenang desain awal keluarga Monster yang pertama lahir 25 tahun lalu.\r\n\r\nSecara tampilan, Monster 797 didesain dengan gaya modern, terlihat dari lampu depan bulat yang futuristis. Ia menggunakan rangka tubular-steel trellis untuk menggendong mesin 803cc Desmodue L-Twin berpendingin udara. Tenaga yang dihasilkan diklaim mencapai 75 hp pada 8.250 rpm dan torsi 68,8 Nm pada 5.750 rpm.\r\n\r\nPada bagian depan motor dilengkapi dengan suspensi up-side down (USD) berukuran 43mm, yang menopang ban Pirelli Diablo Rosso II 120/70 ZR7. Sementara di belakang ada suspensi monoshock yang bisa disetel. Jenis ban belakang sama dengan ban depan tapi dengan ukuran lebih besar 180/55 ZR17.\r\n\r\nTeknologi terbaru tampak dengan penggunaan panel instrumen LCD untuk odometer, lampu indikator dan lampu belakang LED, serta USB port yang diletakkan di bawah jok.\r\n\r\nMotor ini memiliki berat total 192,7 kg dengan tinggi jok dari permukaan jalan mencapai 80,5 cm.\r\n\r\nMeski murah, Cycle World dan Motorcyclist, yang sudah menguji Monster 797, menyatakan naked bike ini sama sekali tidak murahan.\r\n\r\nTenaga yang disalurkan dengan mulus dan suspensi yang dipasang dengan sempurna memberikan umpan balik dan kontrol luar biasa, kata Tom Montano dari Cycle World.\r\n\r\nIa melanjutkan, Monster 797 memang pas untuk dijadikan sebagai awal masuk ke dunia Ducati bagi mereka yang baru mengemudikan moge.\r\n\r\nPenulis Motorcyclist, Julia LaPalme, juga memberi penilaian serupa setelah mencobanya di French Riviera.\r\n', 'dc7.jpeg', 8, 0),
(22, 'DUCATI MONSTER-1200', 'admin', '2019-01-04 11:47:54', 'Di mata pemotor, Monster merupakan teman berkendara yang sangat ikonik. Basis produksinya di Bologna, dikenalkan pertama kali pada 1993. Ducati mengklaim ada 325 ribuan unit yang terjual sampai sekarang ke berbagai penjuru dunia.\r\n\r\nWalau sudah banyak pemiliknya, namun Monster 1200 25th Anniversario berbeda. Kuda besi ini bahkan cocok untuk kolektor, lantaran tidak diproduksi massal. Ducati cuma menjualnya 500 unit. Tampilannya juga beda dari Monster lain. Bodi dibalut warna khas Italia, Tricolore (kombinasi merah, putih dan hijau). Pelek forged buatan Marchesini yang dipakai berlapis cat emas. Kelir rangkanya pun senada pelek.\r\n\r\n\r\n\r\nMonster 1200 25th Anniversario juga dilengkapi kover pelindung dan logo yang menunjukkannya sebagai edisi terbatas, seperti dikutip laman resmi Ducati.\r\n\r\nSosoknya semakin beda lewat penggunaan nose fairing yang menjadikan parasnya lebih gagah. Komponen carbon fibre juga tersemat di kover lubang kunci, pelindung knalpot dan sepatbor. Bukan cuma itu, joknya dibubuhkan angka 25. Di bagian rangka, tertulis pula nomor seri dari motor yang Anda miliki (misal: 0001/500).\r\n\r\n\r\n\r\nPerbedaan lain, Ducati memberi steering damper produksi Ohlins untuk pengendalian yang presisi. Sisanya, persis Monster 1200. Mesin mengandalkan Testastretta 11 DS yang mampu menghasilkan rasa berkendara maksimal. Jantung mekanis dua silinder itu sanggup memuntahkan torsi puncak 124 Nm pada 7.750 rpm dan tenaga maksimal 149 PS pada 9.250 rpm.\r\n\r\nFitur Monster 1200 juga sangat lengkap. Ada tiga pilihan berkendara (sport, touring dan urban). Sebagai peranti keselamatan terdapat ABS Cornering, Ducati Wheelie Control (DWC) dan Ducati Traction Control (DTC). Disematkan pula Ducati Quick Shift Up and Down (DQS) yang memungkinkan perpindahan gigi transmisi tanpa menekan kopling.\r\n\r\nMonster 1200 25th Anniversario dikirim ke Eropa pada September, Jepang Oktober, Amerika Serikat November dan Australia Desember. Tapi sudah bisa dipesan dari sekarang di seluruh diler Ducati, ujar laman resmi Ducati. (Lod/Odi)\r\n\r\n', 'd12.jpg', 22, 0),
(23, 'BMW-S1000RR HP4', 'admin', '2019-01-03 15:24:43', 'Serat karbon sebagai material bodi motor, sudah biasa. BMW Motorrad sanggup membuatnya lebih ekstrem. Menjadikan serat karbon sebagai rangka utama dan velg untuk motor balap terbarunya, BMW HP4 Race.\r\n\r\nDiperkenalkan pertama kali di Shanghai Auto Show yang berlangsung mulai hari ini, sampai 28 April 2017. Menariknya lagi, kuda besi pabrikan Jerman ini hanya dipasarkan 750 unit saja. Kabarnya sudah ada satu konsumen asal Indonesia yang melakukan pemesanan.\r\n\r\n\"Apakah sepadan untuk harga $87 ribu dolar (Sekitar Rp 1,15 Miliar)? Nampaknya pertanyaan itu tidak perlu dijawab, karena konsumen yang membelinya sudah tentu tidak peduli. Dan siapapun yang tidak termasuk dalam 750 orang hanya bisa berkomentar,\" seperti dikutip dari laman cycleworld.\r\n\r\nBMW HP untuk Superbike\r\n\r\nDengan material serat karbon, rangka utama BMW HP4 Race berbobot 7,8 kg. Sementara velg serat karbon beratnya berkurang 30 persen, dibanding velg alloy forged biasa. Alhasil bobot total motor edisi spesial ini hanya 171 kg, sudah termasuk diisi bahan bakar penuh.\r\n\r\nAgar menunjang kemampuan balapnya, BMW Motorrad menyematkan suspensi ohlins di kaki-kakinya. Suspensi depannya menggunakan FGR 300 upside down, sementara belakangnya TTX 36 GP monoschock. Suspensi tadi digunakan pula oleh motor-motor yang berlaga di Superbike World Championship dan MotoGP. Sistem pengereman dipercayakan pada Brembo GP4 PR monoblock dengan cakram 320 T-type racing untuk roda depannya.\r\n\r\nMesinnya pun sangat buas. BMW HP4 Race dibekali mesin empat silinder berkapasitas 999 cc. Mampu memuntahkan torsi puncak 120 Nm pada 10.000 rpm dan tenaga maksimal 217,98 ps pada 13.900 rpm. Mesinnya sanggup menahan putaran mesin sampai 14.500 rpm, lebih baik dari BMW S1000RR yang juga dibekali mesin serupa. Supaya performanya tersalurkan dengan baik, depot daya itu dipasangkan dengan transmisi 6-percepatan.', 'bm.jpg', 1, 0),
(24, 'BMW R9T', 'admin', '2019-01-03 15:28:10', 'BMW R nine T Scrambler yang berkarakter down to earth, menjadi tunggangan pilihan penggemar roda dua dari semua kalangan, mulai bintang film, hingga peselancar yang hobi berkendara dengan kecepatan tinggi dengan handling yang baik berkat penggunaan mesin boxer khas BMW Motorrad. Mulai jalan pegunungan yang berkelok dan tanah off-road, hingga pasir di pantai.\r\n\r\nCiri khas Scrambler, ban pacul, pipa exhaust di atas , ride height tinggi, dan posisi berkendara nyaman, memberikan pengendaranya kesenangan berkendara, baik di jalan raya maupun medan off-road sejak era 1950an hingga 1970an.\r\n\r\n\r\n\r\nâ€œInilah Scrambler sesungguhnya, yang memiliki desain khas dari sebuah sepeda motor Scrambler. R Nine T Scrambler merupakan perpaduan sempurna desain klasik dengan teknologi terkini seperti fitur ABS dan ASC (Automatic Stability Control) sebagai fitur standar serta mesin boxer 1200cc khas BMW yang menghasilkan low center of gravity sehingga handling dan kenyamanan menjadi salah satu dari banyak keunggulan R Nine T Scrambler,â€ ujar Karim Rachman, Marketing & PR Manager, BMW Motorrad Indonesia â€“ Maxindo Moto.\r\n\r\nModel Scrambler ini menampilkan desain bentuk mesin flat twin, boxer berpendingin udara klasik, dengan tenaga dan torsi besar dan tentunya suara khas BMW yang sudah terkenal sepanjang 9 dekade terakhir. Mesin boxer berkapasitas 1.170 cc ini mampu menghasilkan tenaga sebesar 110 hp (81 kw) mulai 7.750 rpm juga torsi sebesar 116 Nm di 6.600 rpm, dengan bantuan engine mapping baru juga fuel system, termasuk carbon fiber canister. Sistem bahan bakar ini juga telah memenuhi syarat Euro 4.\r\n\r\n\r\n\r\nBMW Motorrad menjawab keinginan para penggemarnya untuk bisa memodifikasi kendaraannya, sesuai dengan selera masing-masing. BMW R nine T Scrambler hadir dengan aksesori resmi, khusus untuknya yang dirancang oleh desainer terkenal untuk menciptakan sebuah motor unik, sesuai dengan gaya dan karakter pemiliknya.\r\n\r\nSementara pipa knalpot yang ditempatkan tinggi, dengan silencer terpasang vertikal, memenuhi standar untuk menjadi motor bergaya Scrambler. Sistem ini terpasang sangat dekat dengan bodi motor, yang sekaligus tetap membuat siluetnya ramping. Selain menegaskan suara mesin boxer, ia juga memenuhi regulasi batas suara ECE R41-04. Catalytic converter berukuran besar juga memastikan minimnya emisi gas buang.', 'bmr.jpg', 0, 0),
(25, 'BMW-GS1200', 'admin', '2019-01-03 15:34:40', 'BMW baru-baru ini memperkenalkan  R 1200 GS bermesin  1.170cc  yang menyimpan 125 tenaga kuda. Versi  lebih \"garang\" yaitu R 1200 GS Adventure punya beberapa perbedaan.\r\n\r\nBMW R 1200 GS Adventure punya kapasitas tangki alumunium 30 liter.\r\n\r\nTerdapat pelindung angin tambahan, suspensi lebih panjang, dan perangkat elektronik lengkap.\r\n\r\nAdventure juga dilengkapi ABS, kendali stabilitas dan dua mode berkendara yaitu standar atau hujan.\r\n\r\nTersedia opsional untuk mode berkendara ketiga yaitu untuk off-road dengan berbagai bantuan kemudahan dari fitur-fitur elektronik.\r\n\r\nBMW merevisi sasis geometri  untuk meningkatkan  kemampuan handling pada R 1200 GS Adventure.\r\n\r\nPada versi Adventure terdapat penambahan massa flywheel serta tambahan peredam getar demi berkendara yang lebih halus namun berkemampuan tinggi.\r\n \r\nSpring travel lebih panjang 20 milimeter pada bagian depan dan belakang jika dibandingkan dengan R 1200 GS. \r\n\r\nGround cleearance juga 10 sentimeter lebih tinggi, dengan tambahan pelindung tangki dan mesin serta tempat duduk yang makin  nyaman berkat fitur tilt-adjustable', 'GS.jpg', 2, 0),
(26, 'BMW S1000RR', 'admin', '2019-01-03 18:41:50', 'Pada ajang pencatatan rekor dunia ini memang diikuti berbagai kategori. Namun untuk kelas motor 1.000cc, Andy Sills berhasil catat rekor kecepatan 329,567 km/h.\r\n\r\nDan pencapaian ini telah melebih dari rekor lama pada tahun 2011. Namun pada hari dan motor yang sama hanya dikemudikan Erin Hunter rekor kecepatan baru terpecahkan. Sebab Erin Hunter berhasil capai kecepatan 330,808 km/h.\r\n\r\nKami memang mendapat kesempatan baik untuk mencoba berbagai motor di sepanjang karir. Dan termasuk bisa merasakan motor sport terbaru BMW S1000RR 2012 yang memiliki kecepatan puncak yang luar biasa. Keberhasilan ini juga karena motor ini memiliki platform yang lebih stabil sehingga saat melaju dengan kecepatan tinggi kami bisa lebih fokus. Dengan kata lain percayakan performa dan ketangguhan seutuhnya pada motor dan Anda hanya fokus berkendara', 'S1.jpg', 2, 0),
(27, 'Suzuki GSX1300R Hayabusa', 'admin', '2019-01-03 15:49:43', 'Kepopuleran nama Suzuki di kancah dunia menjadikan penjualan motor yang satu ini juga diangap cukup apik karena hampir semua orang sudah tahu bagaimana dan seperti apa kualitas dari motor keluaran Suzuki. Mengusung mesin bertenaga 1340 cc membuatnya menjadi motor sport yang tak ada lawannya. Selain mesin bertenaga super besar pada sektor dapur pacunya, motor ini juga menggunakan mesin yang bisa di katakan legendaris sehingga menambah nilai jualnya sendiri. Nah bagi sobat otomotif yang penasaran spesifikasi dan harga Suzuki Hayabusa terbarunya dibawah ini.\r\n\r\nMesin	\r\nType : 4-Stroke, 4-Cylinder, Liquid-Cooled, DOHC\r\nBore x Stroke : 81.0 mm x 65.0 mm\r\nDisplacement : 1340 cm3 (81.8 cu. in)\r\nCompression ratio : 12.5:1\r\nFuel system : Fuel injection\r\nIgnition system : Electronic ignition (Transistorized)\r\nStarter system : Electric\r\nKopling : Manual\r\nTransmisi : 6-Speed constan mesh\r\nDimensi	\r\nP x L x T : 2190 x 735 x 1165 mm\r\nJarak Poros Roda : 1480 mm\r\nJarak ke Tanah : 120 mm\r\nBerat : 266 kg\r\nKapasitas Bensin : 21.0 L\r\nRangka	\r\nType : Aluminum perimeter\r\nSuspensi Depan : telescopic, coil spring, oil damped\r\nSuspensi Belakang : Link type, coil spring, oil damped\r\nRem Depan : Twin Disc\r\nRem Belakang : Single Disc\r\nUkuran Ban / Velg Depan : 120/70ZR1M/C (58W), tubeless\r\nUkuran Ban / Velg Belakang : 190/50ZR17M/C (73W), tubeless', 'haya.jpg', 1, 0),
(28, 'Suzuki GSX R750', 'admin', '2019-01-03 15:51:42', 'Mahalnya harga Suzuki GSX R750 yang satu ini bisa dibilang menjadi salah satu alasan mengapa banyak masyarakat yang tak menjadikannya sebagai pilihan, namun bagi sebagaian besar orang yang menggilai motor sport dengan performa dan kualitas mesin yang unggul tentunya Suzuki GSX R750 ini banyak di eluh-eluhkan dan siap di jadikan pilihan. Nah bagi sobat otomotif yang juga tertarik atau hanya sekedar penasaranyuk simak spesifikasi dan Harga Suzuki GSX R750 terbaru berikut ini.\r\n\r\nSpesifikasi dan Harga Suzuki GSX R750\r\nSpesifikasi dan Harga Suzuki GSX R750\r\nSpesifikasi Suzuki GSX R750\r\nMesin	\r\nTipe mesin : 4 Tak, 4 Silinder, DOHC, sistem pendingin cairan (Liquid Cooled)\r\nDiplacement : 750cc\r\nBore x Stroke : 70 mm x 48,7 mm\r\nPerbandingan kompresi : 12,5 : 1\r\nPower Tertinggi : 150 Hp (110 KW) / 13200 rpm\r\nTorsi tertinggi : 64 lbf ft (87 Nm) / 11200 rpm\r\nSistem bahan bakar : Injeksi (Fuel Injection System)\r\nTipe starter : electric\r\nPelumasan : basah\r\nSistem pengapian : Electronic Ignition (Transistorized)\r\nTransmisi : 6 kecepatan, constant mesh\r\nFinal drive : RK525ROZ5Y, 116 links, chain\r\nDimensi	\r\nPanjang : 2030 mm\r\nLebar : 710 mm\r\nTinggi : 1135 mm\r\nJarak sumbu roda : 1390 mm\r\nJarak terendah ketanah : 130 mm\r\nTinggi tempat duduk : 810 mm\r\nBerat basah : 190 kg\r\nKapasitas bahan bakar : 17 liter\r\nRangka / kaki-kaki	\r\nSuspensi depan : 41 mm Showa Inverted Big Piston Type Forks (BPF)\r\nSuspensi belakang : monoshock, link type, Showa Shock, Fully adjustable\r\nRem depan : Cakram ganda radial mount monobloc caliper 310 mm dari Brembo\r\nRem belakang : Cakram tunggal 1 kaliper piston 220 mm dari Nissin\r\nBan depan : 120/70ZR17M/C (58W) Tubeless\r\nBan belakang : 180/55ZR17M/C (73W) Tubeless', 'gx.jpg', 0, 0),
(29, 'Suzuki GSX-250R ABS', 'admin', '2019-01-03 15:54:13', 'Akhirnya Suzuki merilis motor sport 250cc yang mereka namai â€œSuzuki GSX-250Râ€. Motor ini pertama kali diperkenalkan di China dan siap menantang dominasi Kawasaki, Yamaha, dan Honda yang selama ini dikenal sebagai produsen motor sport 250cc terbaik di dunia. Beragam fitur telah dipersiapkan untuk menarik minat konsumen, sehingga motor ini diharapkan mampu mengalahkan rival-rivalnya yang terlebih dahulu dipasarkan dengan harga melebihi 50 Juta Rupih.\r\n\r\nSpesifikasi Suzuki GSX-250R ABS\r\nMesin	\r\nTipe : 4-stroke, 2-cylinder, liquid-cooled, DOHC\r\nVolume Silinder : 248 cc\r\nBore x Stroke (mm) : 535 x 55,2 mm\r\nRasio kompresi : 11,5: 1\r\nPower maksimum : 24,6 dk / 8.000 rpm\r\nTorsi maksimum : 23,4 Nm / 6.500 rpm\r\nSistem Bahan Bakar : Fuel Injection\r\nTipe Starter : Electric\r\nTipe Transmsi : 6-speed\r\nDimensi	\r\nDimensi (L x W x H mm) : 2.085 x 740 x 1.110 mm\r\nWheelbase (mm) : 1.430 mm\r\nBerat: 178 kg\r\nTinggi jok : 790 mm\r\nKapasitas tangki : 15 liter\r\nRangka	\r\nSuspensi depan : Telescopic, coil spring, oil damped\r\nSuspensi belakang : Link type, coil spring, oil damped\r\nUkuran Ban Depan : 110/80-17, tubeless\r\nUkuran Ban Belakang : 140/70-17, tubeless\r\nRem Depan : 290 mm disc twin piston caliper\r\nRem Belakang : 240 mm disc single piston caliper', 'gx1.jpg', 0, 0),
(30, 'Suzuki Katana', 'admin', '2019-01-03 18:37:35', 'Suzuki tetap mempertanahkan ciri khas Suzuki Katana yang memiliki headlamp berbentuk kotak. Lampu tersebut berpadu dengan garis-garis tajam yang mengelilingi sekujur body Suzuki Katana. Desainnya benar-benar baru, meski bentuk lampunya tetap kotak. Tak hanya itu, Suzuki juga membekalinya dengan mesin baru yang memiliki performa jauh lebih bertenaga. Nah untuk mengetahui bagaimana performanya, silahkan simak di bawah ini.\r\n\r\n\r\nSpesifikasi Suzuki Katana 2019\r\nDesain \r\nDimensi (PxLxT)	2.125 mm x 1.110 mm x 830 mm\r\nWheelbase	1.460 mm\r\nGround clearance	140 mm\r\nTinggi Jok	825 mm\r\nTangki	12 Liter\r\nBerat	215 kg\r\nMesin\r\nTipe Mesin	DOHC, 4 Tak, 4 Silinder Berpendingin Cairan\r\nKapasitas	999 cc\r\nTenaga Maksimum	110 kW @ 10,000 rpm\r\nTorsi Maksimum	108.0 Nm @ 9,500rpm\r\nKompresi	12.2 : 1\r\nSistem Pembakaran	Fuel Injection\r\nStarter	Electric\r\nSistem Pengapian	Electronic ignition\r\nTransmisi	Manual 6-speed\r\nKaki-Kaki\r\nRem Depan	Double Disk Brake + Kaliper Brembo\r\nRem Belakang	Disk Brake\r\nBan Depan	120/70ZR17M/C (58W)\r\nBan Belakang	190/50ZR17M/C (73W)\r\nSuspensi Depan	Upside Down 43 mm\r\nSuspensi Belakang	Link type, coil spring, oil damped\r\nSistem Pengereman	ABS (Anti-Lock Breaking System)', 'kata.jpg', 8, 0),
(31, 'MV-AGUSTA BRUTALE 800', 'admin', '2019-01-04 02:46:30', 'MV Agusta Motorcycle.\r\n\r\nProdusen motor asal Italia tahun 2017 ini memperkenalkan produk bernama MV Agusta Brutale 800.\r\n\r\nMotor ini didesain layaknya hewan yang siap menerkam mangsa di jalan.\r\n\r\n(BACA JUGA : Ini Dia Motor Kolaborasi Antara Lewis Hamilton Dengan MV Agusta, Tenaganya Sampai 205 dk)\r\n\r\nDengan konsep street fighter, motor ini sangat cocok untuk touring jarak jauh. \r\n\r\nMotor ini dibekali mesin 798 cc dengan 3 silinder.\r\n\r\nTenaga yang dimiliki motor ini sebesar 115 dk dengan torsi 83 Nm.\r\n\r\nTransmisi 6 speed membuat motor ini makin mampu melaju kencang. \r\n\r\nDesain motor ini memang sangat menawan.\r\n\r\n\r\n(BACA JUGA : Suzuki Bandit GSF-1200 Dimodifikasi Lebih Berotot Gaya Street Fighter, Buntutnya Nongol Keatas)\r\n\r\nDengan dimensi 2045 mm x 875 mm x 830 mm dan dibekali headlamp dengan konsep Elliptical dan teknologi LED proyektor, motor ini terlihat gagah dan siap tempur di jalan. \r\n\r\nMotor ini dibenderol dengan harga $ 18.198 atau setara dengan Rp 246 jutaan. ', 'mv.jpg', 1, 0),
(32, 'MV-AGUSTA BRUTALE 1000', 'admin', '2019-01-04 10:51:56', 'MV Agusta mengklaim jika Brutale 1000 Serie Oro ini adalah motor naked bike paling kuat di dunia untuk kelas 1000cc, bayangan saja yang dipakai moge Italia ini adalah basic mesin MV Agusta F4 RC yang menjadi motor superbike terkencang didunia saat ini(Baca : 10 Superbike tercepat 2018 ). Tentunya dengan mesin 4 silinder 1000cc akan sangat mudah membuat motor telanjang ini mencapai topspeed 300 km per jam karena memiliki power maksimum hingga 208 hp.\r\n\r\n\r\n\r\nUntuk fiturnya sendiri, Brutale 1000cc versi 2019 ini sudah pakai lampu depan LED yang masih mempertahankan desain klasik dengan headlamp berbentuk oval, suspensi depa dan belakang dari Ohlins TTX36 rema ABS dari Bosch 9.1. ada juga 8 tingkat Traction Control serta fitur anti wheelie, IMU, speedometer full TFT LCD Digtal yang membuat motor naked baru MV Agusta ini terlihat lebih futuristik.', 'mv1.jpg', 0, 0),
(33, 'MV-AGUSTA F3 675', 'admin', '2019-01-04 11:17:22', 'Menggunakan desain full fairing, superbike ini memiliki peforma yang cukup menggiurkan.\r\n\r\nDisusun dari rangka berjenis teralis/ ALS Steel Tubular Trellis yang terkinal ringan tapi sangat kuat. Dengan dibenamkanya kerangka jenis ini, MV Agusta F3 800 akan semakin tangguh ketika saat digunakan akselerasi tingkat tinggi.\r\n\r\nSementara itu untuk sektor peformanya, MV Agusta F3 800 mengusung mesin berkapasitas 798 cc, menggunakan sistem teknologi DOHC, 4 tak dengan 12 valve, 6 kecepatan serta mengadopsi mesin berpendingin cairan. Kehebatan mesin tersebut semakin nampak ketika MV Agusta membenamkan 3 silinder pada engine MV Agusta F3 800 ini.\r\n\r\nKomparasi mesin apik bongsor tersebut mampu menyemburkan tenaga sebesar 108,8 kw/ 148 tenaga kuda/ Hp pada putaran 13000 rpm. Dan torsi puncak yang mampu dicapai adalah 88 Nm/ 8,97 kgf.m di putaran 10600 rpm. Ketangguhan semakin tampak ketika MV Agusta F3 800 diuji coba mampu  berlari dengan kecepatan maksimal 269 km/ jam. Sementara untuk akselerasinya mampu mencapai 0 â€“ 100 km/ jam hanya membutuhkan waktu 5,87 detik.', 'mv6.jpg', 1, 0);
INSERT INTO `tb_post` (`id_post`, `judul_post`, `id_author`, `tgl_post`, `isi_post`, `gambar`, `lihat`, `suka`) VALUES
(34, 'MV AGUSTA-BRUTALE 675', 'admin', '2019-01-04 11:23:32', 'Mesin dan Performa\r\nJika F3 bisa dibilang sebagai hot headed bike terutama saat sudah terjebak di kemacetan, apakah Brutale 675 memiliki karakter â€˜cepat emosiâ€™ yang serupa pula? Nyaris setali tiga uang lads, panasnya mantap, hanya kalah 1 level di bawah sang saudaranya F3 675  sebagaimana yang KBY ulas pada artikel sebelumnya.\r\n\r\nSaat membesut gasnya yang sangat ringan akibat throttle by wire itu, gigi 1 lalu ke dua diiringin letupan knalpot Zero yang membahana ala MotoGPâ€¦ Nguunggâ€¦you just dont wanna stopâ€¦ I tell you yet againâ€¦ Dont wanna stop..and I consciously mean it..! Mesin 3 silinder counter-rotating crankshaft-nya yang memuntahkan tenaga sebesar 108,5 HP pada 12,500 RPM dan torsi sebesar 65 Nm pada 12,000 terasa bersahabat bagi KBY, asal dapat mengatur throttle-nya yang ringan maka tenaga kapanpun siap dilecutkan. Exhaust Zero slip on yang diadopsi konon menambah tenaganya sekitar 2-3 HP menjadi 111,5 HP, artinya tenaganya lebih besar dari Honda Jazz VTEC yang 110 PS dengan berat hanya 167 kg!! Wowâ€¦\r\n\r\n\r\n \r\nMeskipun mampu digeber hingga 12,500 RPM untuk dapat meraih tenaga puncaknya, adalah konyol jika harus memaksakan power sebesar 108,5 HP keluar di jalan raya.. Rentang RPM 8000-9000 sudah lebih dari cukup untuk mengetahui performanya. Dibandingkan saudaranya F3 675, Brutale justru tak sebrutal namanya, torsi sudah memadai dibawah 4000 RPM dan akan mulai terasa membesar saat melewati 4000 RPM, memudahkan saat harus menemui kondisi stop dan go. Di sisi lain, F3 akan membuat lads frustasi saat menemui kebuntuan alias kemacetan, karakternya yang meledak-ledak saat bermain di atas 4000 RPM membuat lads sedikit kebingungan mengatur ritme gas di kondisi stop dan go, belum lagi koplingnya yang cukup keras.\r\n\r\nAsiknya Brutale adalah tidak ditemui gejala ndut-ndutan pada kecepatan rendah sebagaimana yang KBY temui pada Ducati Monster, tentu ini menjadi benefit tersendiri bagi rider karena dapat menikmati kecepatan rendah tanpa harus berkonsentrasi dalam mengatur kopling dan besaran gas. Mau turing atau fun race? Brutale siap digeber.\r\n\r\nJalanan, terlebih lagi yang lengang, terasa bagaikan sirkuitâ€¦ Letupan demi letupan dari exhaust saat memindahkan gigi dengan quick shift membuat jalanan selalu terasa kurang panjang dan kurang sepi.. Ngguungggâ€¦ Orang orang akan menepi dan memberikan jalan bahkan dari jarak 100 m sebelum Brutale lewatâ€¦ Dahsyat!! KBY setuju akan klaim MV Agusta yang bilang Brutale 675 akan dapat memuaskan hasrat rider bahkan hasrat seorang demanding rider sekalipunâ€¦\r\n\r\nSuspensi dan Rem\r\nMotor dengan pengendalian hebat harus ditunjang suspensi dan rem yang hebat pula. Marzocchi USD 43 mm non adjustable di depan dan monoshock Sachs dengan link plus pre-load adjustment di belakang, menjamin handling yang prima plus kestabilan papan atas. Sayangnya jika sendiri terasa lebih keras dari Monster.\r\n\r\nPiranti pembuat berhenti Brutale diadopsi dari kolaborasi Brembo dan nissin (master rem), 320 mm cakram, 4 piston x 2 dengan radial caliper disematkan di depan, sedangkan belakang cukup 220 mm cakram dengan 2 piston. Sepatu dibalut ban Pirelli Diablo Rosso 120/70/17 di depan dan 180/55/17 dibelakang, menjamin gigitan ke aspal semakin yahud.', 'MV67.jpg', 102, 0),
(35, 'HARLEY DAVIDSON-CVO STREET GLIDE', 'admin', '2019-01-04 13:05:17', 'Bagi yang suka touring atau berkendara jarak jauh, maka Harley Davidson CVO Street Glide adalah pilihan paling tepat. Sayangnya harga motor Harley Davdison ini melebihi Rp. 1.4 Miliar (Off The Road), sehingga hanya kalangan konglomerat saja yang bisa membelinya. Menariknya lagi, motor ini telah dilengkapi sistem infotainment yang bisa kita gunakan untuk mendengarkan musik dan sebagai sistem navigasi. Selain itu, motor ini dilengkapi fairing yang membuat berkendara jarak jauh semakin nyaman. Sedangkan untuk mesinnya mengusung mesin Twin-Cooled Milwaukee-Eight 114 berkapasitas 1.868cc yang bisa mengeluarkan tenaga sebeasr 165 Nm pada 3.250 rpm.', 'hd.jpg', 1, 0),
(36, 'HARLEY DAVIDSON-SOFTAIL', 'admin', '2019-01-04 21:28:54', 'Tak tanggung-tanggung, Harley-Davidson langsung melahirkan Softail terbaru dalam delapan varian. Mereka, Fat Boy, Heritage Classic, Low Rider, Softail Slim, Deluxe, Breakout, Fat Bob dan Street Bob. Pabrikan Amerika juga menawarkan mesin baru untuk motor seharga Rp 900an juta itu.\r\n\r\nHarley Softail 01\r\n\r\nAda dua pilihan jantung mekanis untuk konsumen, Milwaukee Eight 107 dan 114. Kapasitas lebih kecil, 1.745 cc dimiliki oleh Milwaukee Eight 107. Mesin itu sanggup memuntahkan torsi puncak 145 Nm dan dikawinkan dengan sistem transmisi 6-percepatan manual cruise drive. Sementara Milwaukee Eight 114 berkapsitas 1.868 cc yang mampu melontarkan torsi lebih hebat, mencapai 155 Nm.\r\n\r\nSelain punya mesin buas, Harley-Davidson Softail terbaru juga diklaim lebih ringan dan pintar. Bobot varian Breakout, misalnya, berhasil dikurangi timbangannya sebanyak 15,87 kg lewat rangka baru. Terkait teknologi pintar yang tersemat antara lain: LED hemat daya, USB untuk charger smartphone dan panel instrumen digital. Tampilan Breakout pun lebih segar dengan tangki bensin mungil, tujuannya agar mesin Milwaukee Eigth gres yang digendongnya tampak mentereng.\r\n\r\nBila Anda menginginkan tampilan motor yang lebih spesial, Softail edisi khusus ulang tahun Harley-Davidson ke 115 bisa dipilih. Selain jumlahnya terbatas, kuda besi ini punya balutan warna keren dan hanya tiga varian saja: Breakout, Fat Boy dan Heritage Classic. Keunikan sosok Fat Boy 115th Anniversary tampak pada balutan warna legend blue denim pada bodinya. Lalu ada gambar elang di tangki bensinnya. Jok Fat Boy juga dijahit dengan benang biru.\r\n\r\n\"Softail baru hasil program pengembangan yang paling besar dalam sejarah kami. Ribuan jam pengujian kami lakukan untuk menyelesaikan rancang ulang cruiser terbaru ini. Kami fokus mencari pengalaman berkendara ke level yang lebih tinggi, ketika kemurnian, warisan budaya dan nyawa bertemu dengan era teknologi modern untuk rasa berkendara yang menjanjikan,\" ujar Manager of Product Portofolio Harley-Davidson, Paul James seperti dikutip dari rilis resmi yang kami terima, hari ini.\r\n\r\nHarley Softail 02\r\n\r\nDi samping Softail, pabrikan berlambang elang menyodorkan model Touring terbaru termasuk Street Glide Special dan Road Glide Special. Kemudian ada pula CVO model yang ditenagai mesin anyar 117 ci Milwaukee Eight, paling bertenaga di antara jantung mekanis lain milik Harley-Davidson. Depot daya ini berkapasitas 1.923 cc yang mampu menyemburkan torsi puncak sampai 166 Nm.', 'hd1.png', 35, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `login1`
--
ALTER TABLE `login1`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `mhs`
--
ALTER TABLE `mhs`
  ADD PRIMARY KEY (`npm`);

--
-- Indexes for table `mhs1`
--
ALTER TABLE `mhs1`
  ADD PRIMARY KEY (`npm`);

--
-- Indexes for table `tbl_komen`
--
ALTER TABLE `tbl_komen`
  ADD PRIMARY KEY (`id_komen`);

--
-- Indexes for table `tbl_like`
--
ALTER TABLE `tbl_like`
  ADD PRIMARY KEY (`id_like`);

--
-- Indexes for table `tb_post`
--
ALTER TABLE `tb_post`
  ADD PRIMARY KEY (`id_post`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_komen`
--
ALTER TABLE `tbl_komen`
  MODIFY `id_komen` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_like`
--
ALTER TABLE `tbl_like`
  MODIFY `id_like` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tb_post`
--
ALTER TABLE `tb_post`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
