-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2021 年 6 月 26 日 01:53
-- サーバのバージョン： 10.4.19-MariaDB
-- PHP のバージョン: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `agusys`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `flood_damage_photo_table`
--

CREATE TABLE `flood_damage_photo_table` (
  `file_id` int(14) NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `flood_damage_photo_table`
--

INSERT INTO `flood_damage_photo_table` (`file_id`, `file_name`, `file_path`, `caption`, `created_at`, `updated_at`) VALUES
(1, 'hisai1.jpeg', 'imgs/20210626010630hisai1.jpeg', '甲斐　潮　/ 宮ノ陣', '2021-06-26 08:06:30', '2021-06-26 08:06:30'),
(2, 'hisai8.jpg', 'imgs/20210626010724hisai8.jpg', '甲斐　潮　/ 宮ノ陣', '2021-06-26 08:07:24', '2021-06-26 08:07:24'),
(3, 'hisai2.jpeg', 'imgs/20210626011223hisai2.jpeg', '松田　太陽 / 長門石', '2021-06-26 08:12:23', '2021-06-26 08:12:23'),
(4, 'hisai10.jpeg', 'imgs/20210626012417hisai10.jpeg', '松田　太陽 / 長門石', '2021-06-26 08:24:17', '2021-06-26 08:24:17'),
(5, 'hisai3.jpg', 'imgs/20210626012653hisai3.jpg', '田中　一郎 / 善導寺', '2021-06-26 08:26:53', '2021-06-26 08:26:53'),
(6, 'hisai9.jpeg', 'imgs/20210626012908hisai9.jpeg', '中島　大地 / 大橋', '2021-06-26 08:29:08', '2021-06-26 08:29:08'),
(7, 'hisai4.jpg', 'imgs/20210626013030hisai4.jpg', '久保山　畑実 / 善導寺', '2021-06-26 08:30:30', '2021-06-26 08:30:30'),
(8, 'hisai5.jpg', 'imgs/20210626013154hisai5.jpg', '山田　菜摘 / 荒木町', '2021-06-26 08:31:54', '2021-06-26 08:31:54'),
(9, 'hisai6.jpg', 'imgs/20210626013242hisai6.jpg', '木下　胡瓜 / 宮ノ陣', '2021-06-26 08:32:42', '2021-06-26 08:32:42'),
(10, 'hisai7.jpg', 'imgs/20210626013327hisai7.jpg', '太田　めろん / 長門石', '2021-06-26 08:33:27', '2021-06-26 08:33:27');

-- --------------------------------------------------------

--
-- テーブルの構造 `flood_damage_table`
--

CREATE TABLE `flood_damage_table` (
  `id` int(12) NOT NULL,
  `cause` date NOT NULL,
  `jaBranch` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reqName` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kana` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth` date NOT NULL,
  `zip` int(7) NOT NULL,
  `addr` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` int(11) NOT NULL,
  `email` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldAddr` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldArea` int(10) NOT NULL,
  `levels` int(10) NOT NULL,
  `damages` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amounts` int(30) NOT NULL,
  `memo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `flood_damage_table`
--

INSERT INTO `flood_damage_table` (`id`, `cause`, `jaBranch`, `reqName`, `kana`, `birth`, `zip`, `addr`, `tel`, `email`, `item`, `fieldAddr`, `fieldArea`, `levels`, `damages`, `amounts`, `memo`, `created_at`, `updated_at`) VALUES
(1, '2020-07-06', '北部', '甲斐　潮', 'かい　うしお', '1970-01-15', 8390801, '福岡県久留米市宮ノ陣', 99998888, 'mow@mow.gyu', 'リーフレタス', '久留米市', 60, 60, '機械', 500000, '管理機ほか', '2021-06-24 21:56:10', '2021-06-24 21:56:10'),
(2, '2020-07-06', '西部', '松田　太陽', 'まつだ　たいよう', '1989-10-17', 8300027, '福岡県久留米市長門石\r\n', 11112233, 'sun@sun.sun', 'きゅうり', '久留米市', 50, 50, '附帯施設', 500000, '排水ポンプほか', '2021-06-24 21:51:50', '2021-06-24 21:51:50'),
(3, '2020-07-06', '東部', '田中　一郎', 'たなか　いちろう', '1972-06-06', 8390823, '福岡県久留米市善導寺町与田1111', 0, 'hoge@test.com', '小松菜', '久留米市善導寺町', 40, 60, 'ハウス', 1000000, '止水シート破損', '2021-06-24 02:22:00', '2021-06-24 02:22:00'),
(4, '2020-07-06', '東部', '中島　大地', 'なかしま　だいち', '1970-05-06', 8390831, '福岡県久留米市大橋町蜷川', 0, 'piyo@test.com', 'サラダ菜', '久留米市', 40, 60, '機械', 1200000, '管理機修理不能', '2021-06-24 21:37:59', '2021-06-24 21:37:59'),
(5, '2020-07-06', '東部', '久保山　畑実', 'くぼやま　はたみ', '1971-09-16', 8390824, '福岡県久留米市善導寺町飯田', 11112222, 'tomato@test.com', 'トマト', '久留米市', 40, 60, '附帯施設', 1500000, '被覆、加温機', '2021-06-24 21:42:41', '2021-06-24 21:42:41'),
(6, '2020-07-06', '南部', '山田　菜摘', 'やまだ　なつみ', '1985-07-10', 8300066, '福岡県久留米市荒木町下荒木', 33332222, 'mmm@test.com', 'いちご', '久留米市', 30, 70, 'ハウス', 2000000, '被覆、パイプ', '2021-06-24 21:45:02', '2021-06-24 21:45:02'),
(7, '2020-07-06', '北部', '木下　胡瓜', 'きのした　きゅうり', '1970-01-01', 8390801, '福岡県久留米市宮ノ陣', 44445555, 'bbb@exam.com', 'きゅうり', '久留米市', 40, 90, 'ハウス', 800000, '止水シート、被覆', '2021-06-24 21:47:33', '2021-06-24 21:47:33'),
(10, '2020-07-06', '西部', '太田　めろん', 'おおた　めろん', '1966-02-08', 8300027, '福岡県久留米市長門石', 77776666, 'water@melon.jp', 'ほうれんそう', '久留米市', 60, 50, 'ハウス', 900000, '止水シート破損', '2021-06-24 21:59:06', '2021-06-24 21:59:06');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `flood_damage_photo_table`
--
ALTER TABLE `flood_damage_photo_table`
  ADD PRIMARY KEY (`file_id`);

--
-- テーブルのインデックス `flood_damage_table`
--
ALTER TABLE `flood_damage_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `flood_damage_photo_table`
--
ALTER TABLE `flood_damage_photo_table`
  MODIFY `file_id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- テーブルの AUTO_INCREMENT `flood_damage_table`
--
ALTER TABLE `flood_damage_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
