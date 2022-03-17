-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 03 月 17 日 18:25
-- 伺服器版本： 10.4.19-MariaDB
-- PHP 版本： 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `graduatedb`
--

-- --------------------------------------------------------

--
-- 資料表結構 `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `uname` varchar(150) NOT NULL,
  `pswd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `admin`
--

INSERT INTO `admin` (`id`, `uname`, `pswd`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- 資料表結構 `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `catname` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `categories`
--

INSERT INTO `categories` (`id`, `catname`, `created_on`) VALUES
(6, 'NIKE', '2021-10-12 08:29:05'),
(7, 'ADIDAS', '2021-10-12 08:29:15'),
(8, '亞瑟士 Asics', '2021-10-12 08:29:39'),
(9, 'Mizuno', '2021-10-12 08:30:36');

-- --------------------------------------------------------

--
-- 資料表結構 `guest_cart`
--

CREATE TABLE `guest_cart` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `create_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ip_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `guest_cart`
--

INSERT INTO `guest_cart` (`id`, `pid`, `qty`, `create_on`, `ip_address`) VALUES
(32, 43, 1, '2021-12-14 06:24:41', '::1');

-- --------------------------------------------------------

--
-- 資料表結構 `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `sprice` float NOT NULL,
  `short_desc` varchar(255) NOT NULL,
  `long_desc` text NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `pimage` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `products`
--

INSERT INTO `products` (`id`, `cat_id`, `subcat_id`, `pname`, `mrp`, `sprice`, `short_desc`, `long_desc`, `keywords`, `pimage`, `status`, `create_at`) VALUES
(32, 6, 3, 'Nike React Infinity Run Flyknit ', 5500, 5000, 'Nike React Infinity Run Flyknit 2 秉持設計初心，讓你暢跑直前。', '新版鞋面結合 Flywire 技術與 Flyknit 材質，為關鍵部位提供所需支撐力和透氣性。加厚泡棉鞋底，提供柔軟靈敏度和持久舒適感；前足加寬，腳感更穩定。這款跑鞋仍是當前 Nike 測試量最大的鞋款，讓你一起跑就能感受無窮潛力。', 'Nike React', 'NIKE REACT.jpg', 1, '2021-12-06 02:55:14'),
(33, 6, 3, 'Nike Pegasus Trail 3', 5800, 4400, '在越野暢跑時邁步如飛。', 'Nike Pegasus Trail 3 保留你喜愛的舒適腳感，並沿用經典 Pegasus 造型設計。Nike React 泡棉，締造柔軟緩震效能；強悍抓地機能，即使地形崎嶇也能順暢前行。提升中足周圍的支撐力，讓你跑步全程都有穩固感受。顯示顏色： Total Orange/Wolf Grey/Obsidian/Signal Blue', 'Nike Pegasus', 'Nike Pegasus.jpg', 1, '2021-12-06 02:15:27'),
(34, 6, 3, 'Nike Revolution 5 FlyEase', 3000, 2200, '顯示顏色： 黑/Cave Purple/Lilac/Hyper Pink 款式： BQ3212-014', 'Nike Revolution 5 FlyEase 採用中足束帶固定的拉鍊扣合設計，可讓你在享受跑步前快速而輕鬆地著裝。柔軟泡棉為你的步伐提供出色緩衝，而極簡設計也可讓你自然融入各種場合。', 'Nike Revolution', 'Nike Revolution.jpg', 1, '2021-12-06 02:23:52'),
(35, 6, 3, 'NIKE Precision 5', 3400, 2500, '顯示顏色： 黑/Anthracite/白 款式： CW3403-003', '快速起步是致勝關鍵。Nike Precision 5 鞋款採用結構化材質與柔韌泡棉，可牢牢固定足部。簡約立體的外型，有助快速切入並展現刁鑽傾斜動作，掌握進攻先機。', 'NIKE Precision', 'NIKE Precision 5.jpg', 1, '2021-12-06 02:27:44'),
(36, 6, 3, 'NIKE FLY.BY中筒2 ', 3000, 2100, '顯示顏色： 黑/Anthracite/白 款式： CU3503-004', 'Nike Fly.By 中筒 2 籃球鞋，設計簡單不繁複，讓你自信踏上球場。無論是多向抓地力、靈敏緩震機能，還是耐磨鞋面，都有助你在場上對於包覆性和掌控力的需求。', 'NIKE FLY.BY', 'NIKE FLY.BY.jpg', 1, '2021-12-06 02:38:37'),
(37, 6, 3, 'NIKE Lebron witness 5 EP', 4000, 3200, '顯示顏色： 黑/Fierce Purple/Metallic Gold 款式： CQ9381-001', 'LeBron Witness 5 經過精心設計，輕盈卻強韌，讓你用疾速造型提升比賽表現。硬實的鞋跟飾片搭配前足鎖定系統，實現卓越支撐力。結合緩震與多向抓地力機能，有助於穩定腳步上籃得分。此款 EP 版本搭載超耐久外底設計，適合室外球場。', 'LEBRON witness', 'NIKE LEBRON witness.jpg', 1, '2021-12-06 02:45:37'),
(38, 6, 3, 'NIKE kyrie flytrap 4 EP', 2900, 2239, '顯示顏色： 黑/Anthracite/Metallic Gold 款式： CT1973-005', 'Kyrie Flytrap 4 鞋款採用輕盈支撐設計，方便好穿脫，啟動疾速爆發力。第 4 代 Flytrap 鞋款的抓地與靈敏機能再升級，為 Kyrie 的制霸球場新增戰備。較前一代更厚的加大 Zoom Air 氣墊，可提供更多回彈能量。前足內側鬆緊帶將足部穩固於鞋床上，助你快速轉換切入和切出動作。此款 EP 版本搭載超耐久外底設計，適合室外球場。', 'kyrie flytrap', 'NIKE kyrie flytrap.jpg', 1, '2021-12-06 02:49:22'),
(39, 6, 3, 'NIKE Revolution 5', 2500, 2100, '顯示顏色： Thunder Blue/Grey Fog/Light Photo Blue/黑 款式： BQ3204-404', '穿上輕盈鞋款奔馳不懈，喚起心中的路跑魂。 柔軟泡棉，步步緩震；強化鞋跟，帶來平穩流暢的騁馳體驗。 精選針織材質，打造透氣支撐力；極簡設計，可駕馭各種行程。', 'NIKE Revolution 5', 'NIKE Revolution 5.jpg', 1, '2021-12-06 02:54:01'),
(40, 6, 1, 'Nike Swoosh', 900, 880, '顯示顏色： 黑 款式： DJ1555-010', '數位風格，活力滿點。此款來自 Nike 籃球系列的 Swoosh T 恤，運用懷舊電玩風格重新演繹經典標誌。', 'Nike Swoosh', 'Nike Swoosh.jpg', 1, '2021-12-06 02:59:47'),
(41, 6, 1, 'Nike Dri-FIT Freak', 1180, 1048, '短袖T恤 BV8266-010', 'Nike Dri-FIT T 恤採用柔軟排汗材質，使你常保乾爽舒適。酸洗渲染印花搭配龜裂效果的印製圖樣，引爆健身熱力。', 'Nike Dri-FIT', 'Nike Dri-FIT Freak.jpg', 1, '2021-12-06 03:05:44'),
(42, 6, 1, 'NIKE JDI HOODIE PO FLCBSTR ', 1560, 1280, '運動時尚搭配首選，街頭休閒運動風，正常版型版俐落風格', 'NIKE運動服JDI Parker的保暖設計帶有極少的細節和保暖的設計。即使在寒冷的天氣裡，厚實的毛料也可以使您感到舒適和舒適。', 'NIKE M NSW JDI HOODIE', 'Nike M NSW JDI HOODIE.jpg', 1, '2021-12-06 03:16:58'),
(43, 6, 1, 'NIKE NSW SS TEE UNI ATHLTC ', 980, 830, '經典舒適，大學風尚', '07AS M NSW SS TEE UNI ATHLTC男 訓練 休閒運動 短T BV7572010', 'NIKE NSW', 'NIKE NSW SS TEE UNI ATHLTC.jpg', 1, '2021-12-06 03:27:41');

-- --------------------------------------------------------

--
-- 資料表結構 `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL,
  `subname` varchar(150) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `subcategories`
--

INSERT INTO `subcategories` (`id`, `subname`, `created_on`) VALUES
(1, 'NIKE上衣', '2021-11-30 07:43:16'),
(2, 'NIKE下著', '2021-11-30 07:43:23'),
(3, 'NIKE鞋子', '2021-11-30 07:43:30'),
(4, 'NIKE配件', '2021-11-30 07:43:40'),
(5, 'ADIDAS上衣', '2021-11-30 07:44:09'),
(6, 'ADIDAS下著', '2021-11-30 07:59:12'),
(7, 'ADIDAS鞋子', '2021-11-30 07:59:24'),
(8, 'ADIDAS配件', '2021-11-30 07:59:36'),
(9, 'Asics上衣', '2021-11-30 08:01:16'),
(10, 'Asics下著', '2021-11-30 08:01:31'),
(11, 'Asics鞋子', '2021-11-30 08:01:41'),
(12, 'Asics配件', '2021-11-30 08:01:51'),
(13, 'Mizuno上衣', '2021-11-30 08:02:38'),
(14, 'Mizuno下著', '2021-11-30 08:02:57'),
(15, 'Mizuno鞋子', '2021-11-30 08:03:09'),
(16, 'Mizuno配件', '2021-11-30 08:03:17');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `guest_cart`
--
ALTER TABLE `guest_cart`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `guest_cart`
--
ALTER TABLE `guest_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
