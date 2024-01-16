-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2024 at 07:48 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recipes_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `htm` varchar(20) DEFAULT NULL,
  `tutorial` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `name`, `htm`, `tutorial`, `image`) VALUES
(8, 'Sambal Kentang Goreng', '20k', 'Bahan-bahan:\n1.	500 gram kentang,\n2.	3 lembar daun jeruk,\n3.	1 batang serai (memarkan),\n4.	1 bawang bombai (iris tipis),\n5.	Lengkuas (memarkan),\n6.	Garam secukupnya,\n7.	Gula secukupnya, dan\n8.	Penyedap rasa secukupnya.\n9.	20 buah cabai merah,\n10.	10 siung bawang merah,\n11.	8 buah cabai rawit,\n12.	6 siung bawang putih,\n13.	2 butir kemiri,\n14.	1 buah tomat merah, dan\n15.	terasi secukupnya.\nCara membuat:\n1.	Potong kentang menjadi dadu, kemudian goreng hingga matang;\n2.	Rebus cabai merah, cabai rawit, bawang merah, bawang putih, dan tomat supaya lebih mudah dihaluskan;\n3.	Haluskan cabai merah, bawang merah, cabai rawit, bawang putih, kemiri, tomat merah dan terasi dengan blender ataupun cobek;\n4.	Tumis bawang bombai sampai harum. Kemudian, tuang campuran bumbu lalu dan tumis kembali;\n5.	Tambahkan pula garam, gula, dan penyedap rasa;\n6.	Masukkan kentang yang sudah digoreng. Aduk hingga merata;\n7.	Cicipi apakah rasanya sudah sesuai selera. Kalau sudah, sajikan sambal kentang goreng bersama nasi hangat!', '659bdc3e60710_IMG-20240108-WA0005.jpg'),
(10, 'Sambal Terong Ikan Teri ', '25k', '\nBahan-bahan:\n1.	5 buah terung ungu,\n2.	1 ons teri asin,\n3.	5 siung bawang merah (iris tipis),\n4.	2 lembar daun jeruk (robek menjadi dua),\n5.	1 lembar kecil daun kunyit (simpulkan),\n6.	garam secukupnya,\n7.	penyedap rasa secukupnya, dan\n8.	minyak goreng secukupnya.\n9.	10 buah cabai merah besar atau keriting,\n10.	5 buah cabai rawit,\n11.	2 siung bawang putih, dan\n12.	1 buah tomat merah besar.\nCara membuat:\n1.	Potong terung sesuai selera, lalu cuci bersih dan tiriskan. Kemudian, lumuri terung dengan garam;\n2.	Bersihkan ikan teri dari kotoran dan kepalanya, lalu cuci dan tiriskan;\n3.	Ulek cabai merah besar, cabai rawit, bawang putih, dan tomat sampai agak halus. Beri sedikit garam;\n4.	Goreng terung hingga kecokelatan. Kemudian, goreng ikan teri sampai agak sedikit kering dan berwarna kuning-keemasan;\n5.	Tumis irisan bawang merah sampai wangi. Tambahkan daun jeruk dan daun kunyit serta masak sampai cukup layu;\n6.	Tuang cabus halus dan tambahkan penyedap sesuai selera. Masak dengan api sedang sampai matang;\n7.	Diamkan sebentar selama lima menit sambal yang sudah matang;\n8.	Tambahkan terung dan teri goreng. Aduk hingga merata, lalu sajikan.', '659be372072e7_IMG-20240108-WA0006.jpg'),
(13, 'Orek Tempe Teri', '20k', 'Bahan-bahan:\n1.	170 gram tempe (diiris),\n2.	100 gram ikan teri,\n3.	5 gram kaldu bubuk,\n4.	9 buah cabai merah keriting (iris tipis),\n5.	3 siung bawang putih (iris tipis),\n6.	1 sdt gula pasir, dan\n7.	70 ml minyak goreng.\nCara membuat:\n1.	Goreng tempe sampai matang, lalu tiriskan;\n2.	Ke dalam minyak panas, goreng ikan teri hingga matang;\n3.	Selanjutnya, tambahkan irisan cabai merah keriting, irisan bawang putih, kaldu bubuk, dan gula pasir. Aduk merata;\n4.	Terakhir, masukkan tempe goreng dan aduk sampai semua bahannya tercampur. Angkat, lalu sajikan.', '659be3e19d316_IMG-20240108-WA0004.jpg'),
(16, 'Banana 2', '10k', 'Bahan-bahan:\n- Pisang kepok\n- Tepung terigu\n- Tepung maizena\n- Gula secukupnya\n- Tepung roti\n- Air\n- Minyak goreng\nCara membuat:\n1. Potong pisang kepok horizontal hingga membentuk bulat-bulat\n2. Campurkan tepung terigu dan tepung maizena dengan perbandingan (3:1), gula dan air secukupnya hingga menjadi adonan cair. Sisakan tepung terigu sedikit untuk bahan balur\n3. Balurkan pisang dengan sisa tepung terigu tadi, celupkan ke adonan cair, balurkan dengan tepung roti\n4. Panaskan minyak, goreng pisang dengan api sedang. Jika sudah berwarna kuning keemasan angkat, tiriskan\n5. Sajikan.', '659ca67bcbe16_IMG20231022160732.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `created_at`) VALUES
(1, 'Siti Masyitoh', 'sitimasyitoh01@gmail.com', 'siti123', '', '2024-01-03 05:09:44'),
(2, 'Lutviana', 'luthvianna41@gmail.com', '3a383a8b76349afa76566eb24e1e475c343cdec5', 'Admin', '2024-01-03 06:35:59'),
(3, 'cek', 'cek@gmail.com', 'd65a33afae78815950c9b1056f3226b1d09243ae', '', '2024-01-03 07:15:34'),
(4, 'Lina Afifah', 'lina@gmail.co.', '18da98f85612af4bdc39d81d66a20c577c0c7caf', '', '2024-01-03 07:54:07'),
(5, 'cek', 'cekcek@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '', '2024-01-08 07:28:00'),
(6, 'Hani Istiqomah', 'hani', '2cb2642f808e68681691f3df74d366c6fe3e44e9', '', '2024-01-09 01:39:40'),
(7, 'Sari Andini', 'sari@gmail.com', '4be30d9814c6d4e9800e0d2ea9ec9fb00efa887b', '', '2024-01-09 01:45:05'),
(8, 'Ria Suci', 'ria@gmail.com', 'dece2f3ff4ca588aa2b8bd9d516fdb06bd9c3895', '', '2024-01-09 02:18:01'),
(9, 'Ulan', 'ulan@gmail.com', '5ffc73034be5c67eeb5418471b0067db61c5aedf', 'User', '2024-01-09 03:34:34'),
(10, 'Ariefah', 'ariefah@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'User', '2024-01-09 03:59:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
