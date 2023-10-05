-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 05 Eki 2023, 11:40:35
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `sanaltrabzon`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mekanlar`
--

CREATE TABLE `mekanlar` (
  `mekanAdi` varchar(100) NOT NULL,
  `baslik` text NOT NULL,
  `ses` varchar(100) NOT NULL,
  `adres` text NOT NULL,
  `altBaslik` text NOT NULL,
  `metin` text NOT NULL,
  `adres_link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `mekanlar`
--

INSERT INTO `mekanlar` (`mekanAdi`, `baslik`, `ses`, `adres`, `altBaslik`, `metin`, `adres_link`) VALUES
('Atatürk Köşkü', 'Atatürk Köşkü olarak anılan bu bina 1943 yılında müzeye dönüştürülerek hizmete açılmıştır.', 'https://youtu.be/tJIdLqvvX4Q?feature=shared', 'Soğuksu, Ata Cd. No:1, 61040 Ortahisar/Trabzon', 'Atatürk Köşkü - Trabzon', 'Atatürk, 1924 yılında Trabzon\'a ilk ziyaretini gerçekleştirdiğinde bu köşkte ağırlanmış ancak konaklamamıştır. İkinci kez Kasım 1930\'da Trabzon\'u tekrar onurlandırdığında köşkte ağırlanmış ve çok memnun kalmıştır. Haziran 1937\'de kendisi için düzenlenen köşkte iki gece kalmış ve 11 Haziran gecesi bu köşkte bütün mal varlığını, canından çok sevdiği Türk ulusuna armağan etme kararı almış ve mal varlığının bir listesini hazırlayarak gereğinin yapılması için başbakana göndermiştir. Atatürk Trabzon\'daki köşkten mal varlığını milletine adarken şöyle demiştir: \"Mal ve mülk bana ağırlık veriyor. Bunları milletime bağışlamakla ferahlık duyacağım. İnsanın serveti kendi manevi kişiliğinde olmalıdır. Ben büyük milletime daha çok şeyler vermek istiyorum.\"', 'https://goo.gl/maps/sFwHm3CXsRkByGen9'),
('İskenderpaşa Cami', '16. yüzyılda inşa edilmiş bir Osmanlı camisidir.', 'https://youtu.be/ZK3NbxLwoM0?feature=shared', 'İskenderpaşa, Meydan Cami Sk. No:15, 61100 Trabzon Merkez/Trabzon', 'Caminin Tarihçesi', 'İskender Paşa Camii, Trabzon\'nun Ortahisar ilçesinde 16. yüzyılda inşa edilmiş bir Osmanlı camisidir. Avlusundaki medreseler artık kalmamış, batıdaki eski mezarlık kaldırılmış, geriye sadece İskender Paşa\'nın mezarı kalmıştır. Çeşitli zamanlarda bir dizi genişletme yapılmış ve bu, restorasyonlarla birleşince, taş işçiliği en yüksek kalitede olan caminin orijinalliğini bozmuştur. Minarede tuğla ve renkli taş sıraları vardır. Caminin ana planı İznik\'teki Yeşil Camii\'ninkine benzemektedir. Kapının üzerindeki kitabede caminin 1559 yılında yapıldığı, diğer kitabede ise camiye bugünkü şeklini veren onarımların 1882 yılında yapıldığı bilgisi verilmektedir.', 'https://goo.gl/maps/xihwoDRLV3eBzZWUA'),
('Sümela Manastırı', 'Sümela Manastırı Tarihi Bilgileri Ve Mimarisi ', 'https://youtu.be/_P8X1YdCLS4?feature=shared', 'Altındere, Altındere Vadisi Milli Parkı, 61750 Maçka/Trabzon', 'Tarihçe', 'Kilisenin MS 365-395 tarihleri arasında inşa edildiği sanılmaktadır. Anadolu\'da sıkça rastlanılan Kapadokya kiliseleri tarzında yapılmıştır; hatta Trabzon\'da Maşatlık mevkiinde benzeri bir mağara kilisesi daha vardır. Kilisenin ilk kuruluşu ile manastır haline dönüşümü arasındaki bin yıllık dönem hakkında fazla bir şey bilinmemektedir. Karadeniz Rumları arasında anlatılan bir efsaneye göre Atina\'lı Barnabas ile Sophronios adlı iki keşiş aynı rüyayı görmüşler; rüyalarında, İsa’nın öğrencilerinden Aziz Luka’nın yaptığı üç Panagia ikonundan, Meryem\'in bebek İsa’yı kollarında tuttuğu ikonun bulunduğu yer olarak Sümela\'nın yerini görmüşler. Bunun üzerine birbirlerinden habersiz olarak deniz yoluyla Trabzon\'a gelmiş, orada karşılaşıp gördükleri rüyaları birbirlerine anlatmış ve ilk kilisenin temelini atmışlardır. Bununla birlikte manastırdaki fresklerde sıkça yer alıp, özel bir önem verilen Trabzon İmparatoru III. Aleksios\'un (1349-1390) manastırın gerçek kurucusu olduğu sanılmaktadır.', 'https://goo.gl/maps/t2BcUdVMtmbtuTgz9');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `resimler`
--

CREATE TABLE `resimler` (
  `resim-id` varchar(50) NOT NULL,
  `resim` varchar(100) NOT NULL,
  `aciklama` varchar(100) NOT NULL,
  `mekanAdi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `resimler`
--

INSERT INTO `resimler` (`resim-id`, `resim`, `aciklama`, `mekanAdi`) VALUES
('atatürkköşkü1', 'https://i.pinimg.com/originals/bc/83/1c/bc831cb3177303038a49505427c80582.jpg', '8.11.2021', 'Atatürk Köşkü'),
('iskender1', 'https://seyyahdefteri.com/wp-content/uploads/2019/11/iskenderpa%C5%9Fa-cami-trabzon.png', '15.09.2015', 'İskenderpaşa Cami'),
('iskender2', 'https://pbs.twimg.com/media/Eq9TeAHXAAATM7A.jpg:large', '12.06.2020', 'İskenderpaşa Cami'),
('iskender3', 'https://upload.wikimedia.org/wikipedia/commons/c/c6/Iskender_Pasha_Mosque_Trabzon.jpg', '', 'İskenderpaşa Cami'),
('sümela1', 'https://i4.hurimg.com/i/hurriyet/75/1110x740/5db957252269a22b1055668c.jpg', '14.05.2000', 'Sümela Manastırı'),
('sümela2', 'https://www.bizevdeyokuz.com/wp-content/uploads/sumela-manastiri-trabzon-1155x675.jpg', '06.07.2014', 'Sümela Manastırı'),
('sümela3', 'https://trthaberstatic.cdn.wp.trt.com.tr/resimler/1636000/sumela-manastiri-ayin-aa-1636344.jpg', '28.03.2015', 'Sümela Manastırı');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `mekanlar`
--
ALTER TABLE `mekanlar`
  ADD PRIMARY KEY (`mekanAdi`);

--
-- Tablo için indeksler `resimler`
--
ALTER TABLE `resimler`
  ADD PRIMARY KEY (`resim-id`),
  ADD KEY `mekanAdi` (`mekanAdi`);

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `resimler`
--
ALTER TABLE `resimler`
  ADD CONSTRAINT `resimler_ibfk_1` FOREIGN KEY (`mekanAdi`) REFERENCES `mekanlar` (`mekanAdi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
