-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Anamakine: localhost
-- Üretim Zamanı: 23 Ara 2018, 19:42:09
-- Sunucu sürümü: 5.6.37
-- PHP Sürümü: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `hotel`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
  `id` int(11) NOT NULL,
  `date` varchar(45) NOT NULL,
  `day` varchar(45) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `reservation`
--

INSERT INTO `reservation` (`id`, `date`, `day`, `user_id`, `room_id`) VALUES
(1, '23/12/2018', '3', 10, 1),
(2, '24/12/2018', '12', 10, 2),
(3, '30/12/2018', '16', 2, 2),
(4, '23/12/2018', '44', 11, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `properties` text NOT NULL,
  `person` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `room`
--

INSERT INTO `room` (`id`, `name`, `properties`, `person`) VALUES
(1, 'Room 1', 'Wifi, TV', '2'),
(2, 'Room 2', 'Wifi', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `status`) VALUES
(1, 'admin', 'admin', '123456', '0'),
(2, 'Fatih', 'fatihc', '123', '1'),
(3, 'Emre', 'memre', '1234', '1'),
(4, 'ali', 'ali1', '555', '1'),
(5, 'test', 'test1', '123', '1'),
(6, 'test22', 'test2', '213', '1'),
(7, 'ahmet', '123', '3', '1'),
(8, 'kd', '12312', '213', '1'),
(9, 'Test', 'test01', '1213', '1'),
(10, 'Onur Çaml&#305;bal', 'onurcamlibal', '12', '1'),
(11, 'Emre', 'emre', '61', '1');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkres` (`user_id`),
  ADD KEY `reservations1` (`room_id`);

--
-- Tablo için indeksler `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Tablo için AUTO_INCREMENT değeri `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `fkres` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `reservations1` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
