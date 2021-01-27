-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 01 May 2020, 20:15:58
-- Sunucu sürümü: 10.4.11-MariaDB
-- PHP Sürümü: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `wwttms`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `chiefinfo`
--

CREATE TABLE `chiefinfo` (
  `Username` text CHARACTER SET utf16 COLLATE utf16_turkish_ci NOT NULL,
  `Password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `chiefinfo`
--

INSERT INTO `chiefinfo` (`Username`, `Password`) VALUES
('mercan', 1234);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `customerinfo`
--

CREATE TABLE `customerinfo` (
  `TT` int(11) NOT NULL,
  `Name` text CHARACTER SET utf16 COLLATE utf16_turkish_ci NOT NULL,
  `Email` text CHARACTER SET utf16 COLLATE utf16_turkish_ci NOT NULL,
  `Address` text CHARACTER SET utf16 COLLATE utf16_turkish_ci NOT NULL,
  `Description` text CHARACTER SET utf16 COLLATE utf16_turkish_ci NOT NULL,
  `Team` text CHARACTER SET utf16 COLLATE utf16_turkish_ci DEFAULT NULL,
  `Status` text CHARACTER SET utf16 COLLATE utf16_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `customerinfo`
--

INSERT INTO `customerinfo` (`TT`, `Name`, `Email`, `Address`, `Description`, `Team`, `Status`) VALUES
(2, 'Ezgi', 'c1611056@student.cankaya.edu.tr', 'Batıkent', 'Umutyolu sitesi su arızası', 'Team A', 'solved'),
(3, 'Gözde', 'c1611027@student.cankaya.edu.tr', 'Çankaya', 'Defne apartmanı su arızası', 'Team B', 'Solved'),
(4, 'Berke ', 'c1611019@student.cankaya.edu.tr', 'Çankaya', 'Şendemir apartmanı su arızası', 'Team B', 'Solved'),
(5, 'Emrecan', 'c1611049@student.cankaya.edu.tr', 'Çayyolu', 'Yıldız 88 sitesi su arızası', 'Team C', 'Solved'),
(7, 'Ege', 'c1611062@student.cankaya.edu.tr', 'Çayyolu', 'su arızası', 'TeamC', 'Solved');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `teaminfo`
--

CREATE TABLE `teaminfo` (
  `Username` text CHARACTER SET utf16 COLLATE utf16_turkish_ci NOT NULL,
  `Password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `teaminfo`
--

INSERT INTO `teaminfo` (`Username`, `Password`) VALUES
('TeamA', 111),
('TeamB', 222),
('TeamC', 333);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `customerinfo`
--
ALTER TABLE `customerinfo`
  ADD PRIMARY KEY (`TT`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `customerinfo`
--
ALTER TABLE `customerinfo`
  MODIFY `TT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
