-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 04 Oca 2024, 19:29:55
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `rest`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_number` varchar(11) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `phone_number`, `message`) VALUES
(6, 'Sefa ', 'xutkpn@outlook.com', '5441156320', 'ASDSADAS');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `price` float NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`id`, `title`, `content`, `price`, `image`) VALUES
(1, 'Serpme Kahvaltı', 'Sucuk, Pastırma, Sigara Böreği, Zeytin, Yeşil Zeytin, Beyaz peynir, Kaşar peyniri, Domates, Salatalık, Reçel,Bal, Tereyağı,Haşlanmış yumurta, Termos çay', 350, 'card4'),
(2, 'Margarita Pizza', 'Domates, Mozerella, Fesleğen, Zeytinyağı, Tuz\r\n\r\nİsteğe bağlı: Parmesan, Mantar, Jambon, Ekstra Mozerella', 150, 'card1'),
(3, 'Penne Makarna', 'Domates Sosu, Krema, Karabiber, Parmesan, Sarımsak, Soğa, Fesleğen\r\n\r\nİsteğe Bağlı: Tavuk, Mantar, Karides, Brokoli, Nane', 60, 'card2'),
(4, 'CupCake ', 'Kakaolu Kek Üzerine Krema, Çikolata Parçacıkları\r\nİsteğe Bağlı: Limonlu Kek, Çilekli Kek, Kivi, Çilek, Çikolata, Çilek sosu', 60, 'card3');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rezervasyon`
--

CREATE TABLE `rezervasyon` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `table_number` tinyint(4) NOT NULL,
  `date` datetime NOT NULL,
  `meal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `rezervasyon`
--

INSERT INTO `rezervasyon` (`id`, `name`, `email`, `phone_number`, `table_number`, `date`, `meal`) VALUES
(9, 'Sefa ', 'xutkpn@outlook.com', '5441156320', 1, '2023-12-28 18:41:00', 'kahvalti'),
(10, 'Sefa ', 'xutkpn@outlook.com', '5441156320', 4, '2023-12-27 18:42:00', 'aksam-yemegi'),
(11, 'Sefa ', 'xutkpn@outlook.com', '5441156320', 6, '2023-12-27 18:42:00', 'aksam-yemegi'),
(12, 'Sefa ', 'xutkpn@outlook.com', '5441156320', 10, '2023-12-29 18:42:00', 'aksam-yemegi'),
(13, 'Sefa ', 'xutkpn@outlook.com', '5441156320', 1, '2023-12-29 18:42:00', 'aksam-yemegi'),
(14, 'Sefa ', 'xutkpn@outlook.com', '5441156320', 10, '2023-12-28 18:42:00', 'aksam-yemegi'),
(15, 'Sefa ', 'xutkpn@outlook.com', '5441156320', 1, '2023-12-28 18:42:00', 'aksam-yemegi');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `rezervasyon`
--
ALTER TABLE `rezervasyon`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `rezervasyon`
--
ALTER TABLE `rezervasyon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
