-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2022 at 06:30 PM
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
-- Database: `cse311_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `produts_id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders_pending`
--

CREATE TABLE `orders_pending` (
  `oder_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `products_id` int(11) NOT NULL,
  `quantity` int(255) NOT NULL,
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `owner_info`
--

CREATE TABLE `owner_info` (
  `username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owner_info`
--

INSERT INTO `owner_info` (`username`, `password`) VALUES
('Opee', 'yeahboi23'),
('Munna', 'yomunna202');

-- --------------------------------------------------------

--
-- Table structure for table `products_info`
--

CREATE TABLE `products_info` (
  `ID` int(5) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Type` varchar(15) NOT NULL,
  `Brand` varchar(10) NOT NULL,
  `Specifications` varchar(2000) NOT NULL,
  `Price($)` int(10) NOT NULL,
  `Quantity` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_info`
--

INSERT INTO `products_info` (`ID`, `Name`, `Type`, `Brand`, `Specifications`, `Price($)`, `Quantity`) VALUES
(101, 'iPhone 13', 'Mobile Phone', 'Apple', 'Dimensions:146.7 x 71.5 x 7.7 mm (5.78 x 2.81 x 0.30 in)\r\nWeight:174 g (6.14 oz)\r\nBuild:Glass front (Gorilla Glass), glass back (Gorilla \r\n      Glass), aluminum frame\r\nDisplay:6.1 inches Super Retina XDR OLED, HDR10, Dolby \r\n        Vision \r\nOS:iOS 15, up to iOS 15.6\r\nChipset:Apple A15 Bionic (5 nm)\r\nCPU:Hexa-core (2x3.23 GHz Avalanche + 4x1.82 GHz Blizzard)\r\nGPU:Apple GPU (4-core graphics)\r\nMemory:128GB 4GB RAM, 256GB 4GB RAM, 512GB 4GB RAM\r\nMain camera:Dual 12 MP, f/1.6, 26 mm (wide), 1.7 um, dual \r\n            pixel PDAF, sensor-shift OIS\r\n            12 MP, f/2.4, 120 degrees, 13 mm (ultrawide)\r\nSelfie camera:12 MP, f/2.2, 23 mm (wide)\r\nBattery:Li-Ion 3240 mAh non-removable\r\nCharge:Fast charging (23W), MagSafe wireless charging 15W\r\nUSB:Lightning, USB 2.0', 799, 50),
(102, 'iPhone 13 Pro', 'Mobile Phone', 'Apple', 'Dimensions:146.7 x 71.5 x 7.7 mm (5.78 x 2.81 x 0.30 in)\r\nWeight:204 g (7.20 oz)\r\nBuild:Glass front (Gorilla Glass), glass back (Gorilla \r\n      Glass), stainless steel frame\r\nDisplay:6.1 inches Super Retina XDR OLED, 120 Hz, HDR10, \r\n        Dolby Vision \r\nOS:iOS 15, up to iOS 15.6\r\nChipset:Apple A15 Bionic (5 nm)\r\nCPU:Hexa-core (2x3.23 GHz Avalanche + 4x1.82 GHz Blizzard)\r\nGPU:Apple GPU (5-core graphics)\r\nMemory:128GB 6GB RAM, 256GB 6GB RAM, 512GB 6GB RAM, 1TB \r\n       6GB RAM\r\nMain camera:Triple 12 MP, f/1.5, 26 mm (wide), 1.9 um, \r\n            dual pixel PDAF, sensor-shift OIS\r\n            12 MP, f/2.8, 77 mm (telephoto), PDAF, OIS, 3x \r\n            optical zoom\r\n            12 MP, f/1.8, 13 mm, 120 degrees (ultrawide), \r\n            PDAF\r\nSelfie camera:12 MP, f/2.2, 23 mm (wide), 1/3.6\"\r\nBattery:Li-Ion 3095 mAh non-removable\r\nCharge:Fast charging (23W), MagSafe wireless charging 15W\r\nUSB:Lightning, USB 2.0', 999, 50),
(103, 'iPhone 13 Pro Max', 'Mobile Phone', 'Apple', 'Dimensions:160.8 x 78.1 x 7.7 mm (6.33 x 3.07 x 0.30 in)\r\nWeight:240 g (8.47 oz)\r\nBuild:Glass front (Gorilla Glass), glass back (Gorilla \r\n      Glass), stainless steel frame\r\nDisplay:6.7 inches Super Retina XDR OLED, 120 Hz, HDR10, \r\n        Dolby Vision \r\nOS:iOS 15, up to iOS 15.6\r\nChipset:Apple A15 Bionic (5 nm)\r\nCPU:Hexa-core (2x3.23 GHz Avalanche + 4x1.82 GHz Blizzard)\r\nGPU:Apple GPU (5-core graphics)\r\nMemory:128GB 6GB RAM, 256GB 6GB RAM, 512GB 6GB RAM, 1TB \r\n       6GB RAM\r\nMain camera:Triple 12 MP, f/1.5, 26 mm (wide), 1.9 um, \r\n            dual pixel PDAF, sensor-shift OIS\r\n            12 MP, f/2.8, 77 mm (telephoto), PDAF, OIS, 3x \r\n            optical zoom\r\n            12 MP, f/1.8, 13 mm, 120 degrees (ultrawide), \r\n            PDAF\r\nSelfie camera:12 MP, f/2.2, 23 mm (wide), 1/3.6\"\r\nBattery:Li-Ion 4352 mAh non-removable\r\nCharge:Fast charging (27W), MagSafe wireless charging 15W\r\nUSB:Lightning, USB 2.0', 1099, 50),
(104, 'iPhone 12', 'Mobile Phone', 'Apple', 'Dimensions:146.7 x 71.5 x 7.4 mm (5.78 x 2.81 x 0.29 in)\r\nWeight:164 g (5.78 oz)\r\nBuild:Glass front (Gorilla Glass), glass back (Gorilla \r\n      Glass), aluminum frame\r\nDisplay:6.1 inches Super Retina XDR OLED, HDR10, Dolby \r\n        Vision \r\nOS:iOS 14.1, up to iOS 15.6\r\nChipset:Apple A14 Bionic (5 nm)\r\nCPU:Hexa-core (2x3.1 GHz Firestorm + 4x1.8 GHz Icestorm)\r\nGPU:Apple GPU (4-core graphics)\r\nMemory:64GB 4GB RAM, 128GB 4GB RAM, 256GB 4GB RAM\r\nMain camera:Dual 12 MP, f/1.6, 26 mm (wide), 1.4 um, dual \r\n            pixel PDAF, OIS\r\n            12 MP, f/2.4, 120 degrees, 13 mm (ultrawide), \r\n            1/3.6\"\r\nSelfie camera:12 MP, f/2.2, 23 mm (wide), 1/3.6\"\r\nBattery:Li-Ion 2815 mAh non-removable\r\nCharge:Fast charging (20W), MagSafe wireless charging 15W\r\nUSB:Lightning, USB 2.0', 469, 50),
(105, 'iPhone 12 Pro', 'Mobile Phone', 'Apple', 'Dimensions:146.7 x 71.5 x 7.4 mm (5.78 x 2.81 x 0.29 in)\r\nWeight:189 g (6.64 oz)\r\nBuild:Glass front (Gorilla Glass), glass back (Gorilla \r\n      Glass), stainless steel frame\r\nDisplay:6.1 inches Super Retina XDR OLED, HDR10, \r\n        Dolby Vision \r\nOS:iOS 14.1, up to iOS 15.6\r\nChipset:Apple A14 Bionic (5 nm)\r\nCPU:Hexa-core (2x3.1 GHz Firestorm + 4x1.8 GHz Icestorm)\r\nGPU:Apple GPU (4-core graphics)\r\nMemory:128GB 6GB RAM, 256GB 6GB RAM, 512GB 6GB RAM\r\nMain camera:Triple 12 MP, f/1.6, 26 mm (wide), 1.4 um, \r\n            dual pixel PDAF, OIS\r\n            12 MP, f/2.0, 52 mm (telephoto), 1/3.4\", 1.0 \r\n            um, PDAF, OIS, 2x optical zoom\r\n            12 MP, f/2.4, 13 mm, 120 degrees (ultrawide), \r\n            1/3.6\"\r\nSelfie camera:12 MP, f/2.2, 23 mm (wide), 1/3.6\"\r\nBattery:Li-Ion 2815 mAh non-removable\r\nCharge:Fast charging (20W), MagSafe wireless charging 15W\r\nUSB:Lightning, USB 2.0', 899, 50),
(106, 'iPhone 12 Pro Max', 'Mobile Phone', 'Apple', 'Dimensions:160.8 x 78.1 x 7.4 mm (6.33 x 3.07 x 0.29 in)\r\nWeight:228 g (8.04 oz)\r\nBuild:Glass front (Gorilla Glass), glass back (Gorilla \r\n      Glass), stainless steel frame\r\nDisplay:6.7 inches Super Retina XDR OLED, HDR10, \r\n        Dolby Vision \r\nOS:iOS 14.1, up to iOS 15.6\r\nChipset:Apple A14 Bionic (5 nm)\r\nCPU:Hexa-core (2x3.1 GHz Firestorm + 4x1.8 GHz Icestorm)\r\nGPU:Apple GPU (4-core graphics)\r\nMemory:128GB 6GB RAM, 256GB 6GB RAM, 512GB 6GB RAM\r\nMain camera:Triple 12 MP, f/1.6, 26mm (wide), 1.7µm, dual \r\n            pixel PDAF, sensor-shift OIS\r\n            12 MP, f/2.2, 65mm (telephoto), 1/3.4\", 1.0µm, \r\n            PDAF, OIS, 2.5x optical zoom\r\n            12 MP, f/2.4, 13mm, 120˚ (ultrawide), 1/3.6\"\r\nSelfie camera:12 MP, f/2.2, 23 mm (wide), 1/3.6\"\r\nBattery:Li-Ion 3687 mAh non-removable\r\nCharge:Fast charging (22W), MagSafe wireless charging 15W\r\nUSB:Lightning, USB 2.0', 900, 50),
(110, 'SONY BRAVIA KLV-40W652D 40 INCH LED FULL HD TV', 'TV', 'Sony', 'HDMI Ports:1(Side), 1(Rear)\r\nUSB supports:Audio, Video, Image\r\nEthernet sockets:1(Bottom)\r\nUSB ports:2(side)\r\nVoltage Requirement:100 - 240 V\r\nPower Consmption Standby:0.5W\r\nPower Saving Mode:Yes\r\nPower Consmption Running:59.4W\r\nFrequency Requirement:50 - 60 Hz\r\nLed Backlight Type:Direct LED\r\nAspect Ratio:16 : 9\r\nSizediagonal:40 Inch\r\nDisplay features:X Reality-PRO, Dynamic Backlight Control\r\nResolution:Full HD, 1920 x 1080 Pixels\r\nHorizontal Viewing Angles:178 Degrees\r\nVertical Viewing Angles:178 Degrees\r\nWeight Without Stand:7.7 Kg\r\nDimensions With Standwxhxd:924 x 589 x 212 mm\r\nStand Weight:0.4 Kg\r\nWeight With Stand:8.1 Kg\r\nDimensions Without Standwxhxd:924 x 549 x 66 mm\r\nVideo Signals:HDMI, Component\r\nAnalog Tv Reception Formats:PAL, NTSC, SECAM\r\nDigital Tv Reception Formats:DVB\r\nImage Formats Supported:JPEG, PNG\r\nVideo Formats Supported:3GP, AVI, FLV, MP4, MPEG, MPEG-1, \r\n                        MPEG-2, MPEG-4, MPO\r\nAudio Formats Supported:AAC, AC3(Dolby Digital), MP3, WAV\r\nSound Technology:Dolby Digital, Dolby Digital Plus, Dolby \r\n                 Pulse\r\nTotal Speaker Output:10W\r\nOutput Per Speaker:5W\r\nOther Smart Audio Features:Auto volume leveller: Balance, \r\n                           Bass reflex speaker\r\nSpeakers:2\r\nSound Type:2.0\r\nRemote Type:RF (Radio frequency)\r\nInbuilt apps:Yes\r\nCamera:Yes\r\nMicrophone:Yes', 440, 15),
(111, 'SONY KDL-40W600B 40 INCH LED FULL HD TV', 'TV', 'Sony', 'HDMI Ports:1(Side), 3(Bottom)\r\nUSB supports:Audio, Video, Image\r\nEthernet Sockets:1(Rear)\r\nUSB Ports:2(Side)\r\nVoltage Requirement:110 - 240 V\r\nPower Consmption Standby:0.5W\r\nPower Saving Mode:Yes\r\nFrequency Requirement:50 - 60 Hz\r\nAspect Ratio:16 : 9\r\nSizediagonal:40 Inch\r\nOther Display Features:X Reality-PRO, Dynamic Backlight \r\n                       Control\r\nResolution:Full HD, 1920 x 1080 Pixels\r\nHorizontal Viewing Angles:178 Degrees\r\nVertical Viewing Angles:178 Degrees\r\nWeight Without Stand:7.40 Kg\r\nDimensions With Standwxhxd:926.08 x 584.2 x 162.05 mm\r\nStand Weight:0.5 Kg\r\nWeight With Stand:7.90 Kg\r\nDimensions Without Standwxhxd:926.08 x 556 x 88.9 mm\r\nVideo Signals:HDMI\r\nAnalog Tv Reception Formats:PAL, NTSC, SECAM\r\nDigital Tv Reception Formats:DVB\r\nImage Formats Supported:JPEG, MPO\r\nVideo Formats Supported:AVCHD, AVI, MKV, MOV, MP4, MPEG, \r\n                        MPEG-1, MPEG-2, MPEG2TS, WEBM, \r\n                        WMV, Xvid\r\nAudio Formats Supported:AC3(Dolby Digital), MP3, WMA\r\nSound Technology:Dolby Digital, Dolby Digital Plus, Dolby \r\n                 Pulse\r\nTotal Speaker Output:16W\r\nOutput Per Speaker:8W\r\nOther Smart Audio Features:Auto volume leveller: Balance, \r\n                           Clear Sound\r\nSpeakers:2\r\nSound Type:Stereo\r\nRemote Type:RF (Radio frequency)\r\nInbuilt apps:Yes\r\nCamera:Yes\r\nMicrophone:Yes', 799, 10),
(120, 'MacBook Pro 15 (2019)', 'Laptop', 'Apple', 'Weight:1.83 kg (4.04 lbs)\r\nDimensions:349.3 x 240.7 x 15.5 mm (13.75 x 9.48 x 0.61 in)\r\nArea:841 cm2 (130.4 sq in)\r\nSide bezels:8.8 mm\r\nOpening angle:135°\r\nCooling system:Active\r\nNumber of fans:2\r\nMax. fan speed (RPM):6500 RPM\r\nDisplay:15.4 inches IPS LCD, 60 Hz, HDR10\r\nAspect ratio:16 : 10\r\nBattery:83.6 Wh Li-Po\r\nVoltage:11.4 V\r\nCPU:Intel Core i7 9750H, Intel Core i9 9880H,         \r\n    Intel Core i9 9980HK\r\nIntegrated GPU:Intel UHD Graphics 630\r\nMemory:16GB, 32GB RAM\r\nMemory type:DDR4\r\nStorage: 256GB, 512GB, 1024GB, 2048GB, 4096GB\r\nStorage type:SSD (M2)\r\nSpeakers:2.0, Dolby Atmos\r\nMicrophones:3\r\nWebcam:Above the display\r\nUSB:USB Type-C, USB 3.1\r\nKeyboard type:Island\r\nKey travel:0.6 mm\r\nTouchpad size:15.4 x 9.9 cm\r\nTouchpad surface:Glass', 1799, 5),
(130, 'Haier 1.5 Ton Virus Killer UVCool Inverter AC', 'Air Conditioner', 'Haier', 'Dimensions:Indoor-930 x 375 x 278 mm\r\n           Outdoor-930 x 375 x 278 mm\r\nWeight:1.5 tons\r\nType:Wall mount, Inverter\r\nDisplay:Hidden LED Display\r\nCapacity:18000 BTU\r\nPower Input:1800W\r\nRunning current:8.1A\r\nPower supply:220V\r\nAir circulation:800 cubic meters per hour\r\nRefrigerant type:R32\r\nGross Weight:Indoor-13.5 kg\r\n             Outdoor-32.9 kg\r\nSound level:Indoor-46dB (High)/42dB (Medium)/38dB (Low)\r\n            Outdoor-55dB', 780, 5),
(140, 'Apple Watch Series 7 Aluminum', 'Smart Watch', 'Apple', 'Dimensions:45 x 38 x 10.7 mm (1.77 x 1.50 x 0.42 in)\r\nWeight:32 g (41mm), 38.8 g (45mm) (1.13 oz)\r\nBuild:Glass front, ceramic/sapphire crystal back, aluminum \r\n      frame\r\nDisplay:1.9 inches Retina LTPO OLED\r\nOS:watchOS 8.0, up to 8.7\r\nChipset:Apple S7\r\nCPU:Dual-core\r\nGPU:PowerVR\r\nMemory:1GB RAM\r\nStorage:32GB\r\nBattery:Li-Ion 309 mAh (1.19 Wh), non-removable\r\nCharge:Wireless Charging', 399, 10),
(150, 'JBL T450BT Wireless Headphones', 'Headphone', 'JBL', 'Weight:320 g\r\nType:On-Ear Wireless Headphones\r\nMicrophone:Yes\r\nSound Impedance:32 Ohms\r\nBattery Life:11 hours', 23, 10),
(201, 'Galaxy S22 5G', 'Mobile Phone', 'Samsung', 'Dimensions:146 x 70.6 x 7.6 mm (5.75 x 2.78 x 0.30 in)\r\nWeight:167 g / 168 g (mmWave) (5.89 oz)\r\nBuild:Glass front (Gorilla Glass Victus+), glass back \r\n      (Gorilla Glass Victus+), aluminum frame\r\nDisplay:6.1 inches Dynamic AMOLED 2X, 120 Hz, HDR10+\r\nOS:Android 12, One UI 4.1\r\nChipset:Exynos 2200 (4 nm) - Europe\r\n        Qualcomm SM8450 Snapdragon 8 Gen 1 (4 nm) - ROW\r\nCPU:Octa-core (1x2.8 GHz Cortex-X2 & 3x2.50 GHz Cortex- \r\n    A710 & 4x1.8 GHz Cortex-A510) - Europe\r\n    Octa-core (1x3.00 GHz Cortex-X2 & 3x2.40 GHz Cortex- \r\n    A710 & 4x1.70 GHz Cortex-A510) - ROW\r\nGPU:Xclipse 920 - Europe\r\n    Adreno 730 - ROW\r\nMemory:128GB 8GB RAM, 256GB 8GB RAM\r\n       UFS 3.1\r\nMain camera:Triple 50 MP, f/1.8, 23mm (wide), 1/1.56\", \r\n            1.0µm, Dual Pixel PDAF, OIS\r\n            10 MP, f/2.4, 70mm (telephoto), 1/3.94\", \r\n            1.0µm, PDAF, OIS, 3x optical zoom\r\n            12 MP, f/2.2, 13mm, 120˚ (ultrawide), 1/2.55\" \r\n            1.4µm, Super Steady video\r\nSelfie camera:10 MP, f/2.2, 26mm (wide), 1/3.24\", 1.22µm, \r\n              Dual Pixel PDAF\r\nBattery:Li-Ion 3700 mAh, non-removable\r\nCharge:Fast charging 25W\r\n       Reverse wireless charging 4.5W\r\nUSB:USB Type-C 3.2, USB On-The-Go', 800, 50),
(202, 'Galaxy S22 Ultra 5G', 'Mobile Phone', 'Samsung', 'Dimensions:163.3 x 77.9 x 8.9 mm (6.43 x 3.07 x 0.35 in)\r\nWeight:228 g / 229 g (mmWave) (8.04 oz)\r\nBuild:Glass front (Gorilla Glass Victus+), glass back \r\n      (Gorilla Glass Victus+), aluminum frame\r\nDisplay:6.1 inches Dynamic AMOLED 2X, 120 Hz, HDR10+\r\nOS:Android 12, One UI 4.1\r\nChipset:Exynos 2200 (4 nm) - Europe\r\n        Qualcomm SM8450 Snapdragon 8 Gen 1 (4 nm) - ROW\r\nCPU:Octa-core (1x2.8 GHz Cortex-X2 & 3x2.50 GHz Cortex- \r\n    A710 & 4x1.8 GHz Cortex-A510) - Europe\r\n    Octa-core (1x3.00 GHz Cortex-X2 & 3x2.40 GHz Cortex- \r\n    A710 & 4x1.70 GHz Cortex-A510) - ROW\r\nGPU:Xclipse 920 - Europe\r\n    Adreno 730 - ROW\r\nMemory:128GB 8GB RAM, 256GB 12GB RAM, 512GB 12GB RAM,   \r\n       1TB 12GB RAM\r\n       UFS 3.1\r\nMain camera:Quad 108 MP, f/1.8, 23mm (wide), 1/1.33\", \r\n            0.8µm, PDAF, Laser AF, OIS\r\n            10 MP, f/4.9, 230mm (periscope telephoto), \r\n            1/3.52\", 1.12µm, dual pixel PDAF, OIS,      \r\n            10x optical zoom\r\n            10 MP, f/2.4, 70mm (telephoto), 1/3.52\", \r\n            1.12µm, dual pixel PDAF, OIS, 3x optical zoom\r\n            12 MP, f/2.2, 13mm, 120˚ (ultrawide), 1/2.55\", \r\n            1.4µm, dual pixel PDAF, Super Steady video\r\nSelfie camera:40 MP, f/2.2, 26mm (wide), 1/2.82\", 0.7µm, \r\n              PDAF\r\nBattery:Li-Ion 5000 mAh, non-removable\r\nCharge:Fast charging 45W\r\n       Reverse wireless charging 4.5W\r\nUSB:USB Type-C 3.2, USB On-The-Go', 1200, 50),
(203, 'Galaxy S21 5G', 'Mobile Phone', 'Samsung', 'Dimensions:151.7 x 71.2 x 7.9 mm (5.97 x 2.80 x 0.31 in)\r\nWeight:169 g (Sub6), 171 g (mmWave) (5.96 oz)\r\nBuild:Glass front (Gorilla Glass Victus), plastic back, \r\n      aluminum frame\r\nDisplay:6.2 inches Dynamic AMOLED 2X, 120Hz, HDR10+\r\nOS:Android 11, One UI 3.1\r\nChipset:Exynos 2100 (5 nm) - International\r\n        Qualcomm SM8350 Snapdragon 888 5G (5 nm) - \r\n        USA/China\r\nCPU:Octa-core (1x2.9 GHz Cortex-X1 & 3x2.80 GHz     \r\n    Cortex-A78 & 4x2.2 GHz Cortex-A55) - International\r\n    Octa-core (1x2.84 GHz Cortex-X1 & 3x2.42 GHz    \r\n    Cortex-A78 & 4x1.80 GHz Cortex-A55) - USA/China\r\nGPU:Mali-G78 MP14 - International\r\n    Adreno 660 - USA/China\r\nMemory:128GB 8GB RAM, 256GB 8GB RAM\r\n       UFS 3.1\r\nMain camera:Triple 12 MP, f/1.8, 26mm (wide), 1/1.76\", \r\n            1.8µm, Dual Pixel PDAF, OIS\r\n            64 MP, f/2.0, 29mm (telephoto), 1/1.72\", \r\n            0.8µm, PDAF, OIS, 1.1x optical zoom, 3x hybrid \r\n            zoom\r\n            12 MP, f/2.2, 13mm, 120˚ (ultrawide), 1/2.55\", \r\n            1.4µm, Super Steady video\r\nSelfie camera:10 MP, f/2.2, 26mm (wide), 1/3.24\", 1.22µm, \r\n              Dual Pixel PDAF\r\nBattery:Li-Ion 4000 mAh, non-removable\r\nCharge:Fast charging 25W\r\n       Reverse wireless charging 4.5W\r\nUSB:USB Type-C 3.2, USB On-The-Go', 670, 50),
(204, 'Galaxy S21 Ultra 5G', 'Mobile Phone', 'Samsung', 'Dimensions:165.1 x 75.6 x 8.9 mm (6.5 x 2.98 x 0.35 in)\r\nWeight:227 g (Sub6), 229 g (mmWave) (8.01 oz)\r\nBuild:Glass front (Gorilla Glass Victus), glass back \r\n      (Gorilla Glass Victus), aluminum frame\r\nDisplay:6.8 inches Dynamic AMOLED 2X, 120Hz, HDR10+\r\nOS:Android 11, upgradable to Android 12, One UI 3.1\r\nChipset:Exynos 2100 (5 nm) - International\r\n        Qualcomm SM8350 Snapdragon 888 5G (5 nm) - \r\n        USA/China\r\nCPU:Octa-core (1x2.9 GHz Cortex-X1 & 3x2.80 GHz     \r\n    Cortex-A78 & 4x2.2 GHz Cortex-A55) - International\r\n    Octa-core (1x2.84 GHz Cortex-X1 & 3x2.42 GHz    \r\n    Cortex-A78 & 4x1.80 GHz Cortex-A55) - USA/China\r\nGPU:Mali-G78 MP14 - International\r\n    Adreno 660 - USA/China\r\nMemory:128GB 12GB RAM, 256GB 12GB RAM, 256GB 16GB RAM, \r\n       512GB 12GB RAM, 512GB 16GB RAM\r\n       UFS 3.1\r\nMain camera:Quad 108 MP, f/1.8, 24mm (wide), 1/1.33\", \r\n            0.8µm, PDAF, Laser AF, OIS\r\n            10 MP, f/4.9, 240mm (periscope telephoto), \r\n            1/3.24\", 1.22µm, dual pixel PDAF, OIS, 10x \r\n            optical zoom\r\n            10 MP, f/2.4, 72mm (telephoto), 1/3.24\", \r\n            1.22µm, dual pixel PDAF, OIS, 3x optical zoom\r\n            12 MP, f/2.2, 13mm (ultrawide), 1/2.55\", \r\n            1.4µm, dual pixel PDAF, Super Steady video\r\nSelfie camera:40 MP, f/2.2, 26mm (wide), 1/2.8\", 0.7µm, \r\n              PDAF\r\nBattery:Li-Ion 5000 mAh, non-removable\r\nCharge:Fast charging 25W\r\n       Reverse wireless charging 4.5W\r\nUSB:USB Type-C 3.2, USB On-The-Go', 1000, 50),
(205, 'Galaxy S21 FE 5G', 'Mobile Phone', 'Samsung', 'Dimensions:155.7 x 74.5 x 7.9 mm (6.13 x 2.93 x 0.31 in)\r\nWeight:177 g (6.24 oz)\r\nBuild:Glass front (Gorilla Glass Victus), plastic back, aluminum frame\r\nDisplay:6.4 inches Dynamic AMOLED 2X, 120Hz, HDR10+\r\nOS:Android 12, One UI 4\r\nChipset:Qualcomm SM8350 Snapdragon 888 5G (5 nm) -  \r\n        Version 1\r\n        Exynos 2100 (5 nm) - Version 2\r\nCPU:Octa-core (1x2.84 GHz Cortex-X1 & 3x2.42 GHz    \r\n    Cortex- A78 & 4x1.80 GHz Cortex-A55) - Version 1\r\n    Octa-core (1x2.9 GHz Cortex-X1 & 3x2.80 GHz Cortex-A78 \r\n    & 4x2.2 GHz Cortex-A55) - Version 2\r\nGPU:Adreno 660 - Version 1\r\n    Mali-G78 MP14 - Version 2\r\nMemory:128GB 6GB RAM, 128GB 8GB RAM, 256GB 8GB RAM\r\nMain camera:Triple 12 MP, f/1.8, 26mm (wide), 1/1.76\", \r\n            1.8µm, Dual Pixel PDAF, OIS\r\n            8 MP, f/2.4, 76mm (telephoto), 1/4.5\", 1.0µm, \r\n            PDAF, OIS, 3x optical zoom\r\n            12 MP, f/2.2, 13mm, 123˚ (ultrawide), 1/3.0\", \r\n            1.12µm\r\nSelfie camera:32 MP, f/2.2, 26mm (wide), 1/2.74\", 0.8µm\r\nBattery:Li-Ion 4500 mAh, non-removable\r\nCharge:Fast charging 25W\r\n       Fast wireless charging 15W\r\n       Reverse wireless charging\r\nUSB:USB Type-C, USB On-The-Go', 569, 40),
(210, 'LG 43UH750T 43 INCH LED 4K TV ', 'TV', 'LG', 'HDMI Ports:2(Side), 1(Rear)\r\nUSB Supports:Audio, Video, Image\r\nEthernet Sockets:1(Rear)\r\nUSB Ports:1(Side), 1(Rear)\r\nVoltage Requirement:100 - 240 V\r\nPower Consmption Standby:0.3W\r\nPower Saving Mode:Yes\r\nFrequency Requirement:50 - 60 Hz\r\nLED Backlight Type:Slim LED\r\nAspect Ratio:16 : 9\r\nSizediagonal:43 Inch\r\nResolution:4K, 3840 x 2160 Pixels\r\nHorizontal Viewing Angles:178 Degrees\r\nVertical Viewing Angles:178 Degrees\r\nWeight Without Stand:11.7 Kg\r\nDimensions With Standwxhxd:971 x 630 x 176 mm\r\nStand Weight:0.4 Kg\r\nWeight With Stand:12.1 Kg\r\nDimensions Without Standwxhxd:971 x 577 x 51 mm\r\nAnalog Tv Reception Formats:PAL, NTSC, SECAM\r\nDigital Tv Reception Formats:DVB\r\nImage Formats Supported:JPEG, JPS, MPO\r\nVideo Formats Supported:DivX HD\r\nAudio Formats Supported:AAC, AC3(Dolby Digital), DTS, \r\n                        EAC3, HEAAC, MP2, MP3, PCM, WMA\r\nTotal Speaker Output:20W\r\nOutput Per Speaker:10W\r\nOther Smart Audio Features:Auto volume leveller: Balance, \r\n                           Clear Voice 3\r\nSpeakers:2\r\nSound Type:2.0\r\nRemote Type:RF (Radio frequency)\r\nOther Remote Features:Magic Remote\r\nUniversal Control Present:Yes\r\nInbuilt Apps:Yes\r\nFacial Recognition:Yes\r\nVoice Recognition:Yes\r\nGesture Recognition:Yes\r\nCamera:Yes\r\nMicrophone:Yes', 620, 10),
(220, 'ASUS ROG STRIX SCAR 17 (G733) G733ZX-LL106X', 'Laptop', 'Asus', 'Dimensions:39.5 x 28.2 x 2.34 ~ 2.83 cm (15.55 x 11.10 x \r\n           0.92 ~ 1.11 in)\r\nWeight:2.90 Kg (6.39 lbs)\r\nDisplay:17.3 inch 240 Hz WQHD anti-glare IPS\r\nAspect Ratio:16 : 9\r\nOS:Windows 11 Pro\r\nCPU:12th Gen Intel Core i9-12900H\r\nGPU:NVIDIA GeForce RTX 3080 Ti\r\nMemory:32GB RAM, upgradable to 64GB\r\nStorage:2TB\r\nBattery:90WHrs, 4S1P, 4-cell Li-ion\r\nSpeakers:4 with smart amplifier\r\nKeyboard:Backlit Chiclet Keyboard Per-Key RGB\r\nUSB:USB 3.2 Gen 1 Type-A (2)\r\n    USB 3.2 Gen 2 Type-C', 1999, 5),
(230, 'General 2 Ton ASGA24SEFTZ AC', 'Air Conditioner', 'General', 'Dimensions:Indoor-685 x 725 x 465 mm\r\n           Outdoor-830 X 320 X 650 mm\r\nWeight:2 tons\r\nType:Wall-mount, Inverter\r\nCapacity of cooling:24000 BTU\r\nPower type:220-240V\r\nRefrigerant Type:R-410A\r\nGross Weight:Indoor-19 kg\r\n             Outdoor-55 kg\r\nSound level:Indoor-≤ 39dB\r\n            Outdoor-≤ 46dB\r\n', 1050, 2),
(240, 'Xiaomi Mi Watch Lite', 'Smart Watch', 'Xiaomi', 'Dimensions:41 x 35 x 11.9 mm (1.61 x 1.38 x 0.47 in)\r\nWeight:35 g (1.23 oz)\r\nBuild:Plastic back, plastic frame\r\nDisplay:1.4 inches IPS LCD\r\nOS:Proprietary OS\r\nBattery:Li-Ion 230 mAh, non-removable', 78, 5),
(250, 'Apple AirPods Pro', 'Headphone', 'Apple', 'Headset Weight:AirPods-5.4 g\r\n               Charging case-45.6 g\r\nType:Wireless earphones\r\nBattery life:4.5 hours\r\nCharging time:3 hours of charge in 15 minutes\r\nMusic time:Up to 4.5 hours\r\nDriver Unit:Custom high-excursion Apple driver', 249, 5),
(301, 'OnePlus 9 Pro', 'Mobile Phone', 'OnePlus', 'Dimensions:163.2 x 73.6 x 8.7 mm (6.43 x 2.90 x 0.34 in)\r\nWeight:197 g (6.95 oz)\r\nBuild:Glass front (Gorilla Glass 5), glass back (Gorilla \r\n      Glass 5), aluminum frame\r\nDisplay:6.7 inches LTPO Fluid2 AMOLED, 1B colors, 120Hz, \r\n        HDR10+\r\nOS:Android 11, upgradable to Android 12, OxygenOS 12\r\nChipset:Qualcomm SM8350 Snapdragon 888 5G (5 nm)\r\nCPU:Octa-core (1x2.84 GHz Cortex-X1 & 3x2.42 GHz Cortex- \r\n    A78 & 4x1.80 GHz Cortex-A55)\r\nGPU:Adreno 660\r\nMemory:128GB 8GB RAM, 256GB 8GB RAM, 256GB 12GB RAM\r\n       UFS 3.1\r\nMain camera:Quad 48 MP, f/1.8, 23mm (wide), 1/1.43\", \r\n            1.12µm, multi-directional PDAF, Laser AF, OIS\r\n            8 MP, f/2.4, 77mm (telephoto), 1.0µm, PDAF, \r\n            OIS, 3.3x optical zoom\r\n            50 MP, f/2.2, 14mm (ultrawide), 1/1.56\", \r\n            1.0µm, AF\r\n            2 MP, f/2.4, (monochrome)\r\nSelfie camera:16 MP, f/2.4, (wide), 1/3.06\", 1.0µm\r\nBattery:Li-Po 4500 mAh, non-removable\r\nCharge:Fast charging 65W\r\n       Fast wireless charging 50W\r\nUSB:USB Type-C 3.1, USB On-The-Go', 623, 30),
(302, 'OnePlus 8T', 'Mobile Phone', 'OnePlus', 'Dimensions:160.7 x 74.1 x 8.4 mm (6.33 x 2.92 x 0.33 in)\r\nWeight:188 g (6.63 oz)\r\nBuild:Glass front (Gorilla Glass 5), glass back (Gorilla \r\n      Glass 5), aluminum frame\r\nDisplay:6.55 inches Fluid AMOLED, 120Hz, HDR10+\r\nOS:Android 11, upgradable to Android 12, OxygenOS 12\r\nChipset:Qualcomm SM8250 Snapdragon 865 5G (7 nm+)\r\nCPU:Octa-core (1x2.84 GHz Cortex-A77 & 3x2.42 GHz Cortex- \r\n    A77 & 4x1.80 GHz Cortex-A55)\r\nGPU:Adreno 650\r\nMemory:128GB 8GB RAM, 256GB 12GB RAM\r\n       UFS 3.1\r\nMain camera:Quad 48 MP, f/1.7, 26mm (wide), 1/2.0\", 0.8µm, \r\n            PDAF, OIS\r\n            16 MP, f/2.2, 14mm, 123˚ (ultrawide), 1/3.6\", \r\n            1.0µm\r\n            5 MP, f/2.4, (macro)\r\n            2 MP, f/2.4, (monochrome)\r\nSelfie camera:16 MP, f/2.4, (wide), 1/3.06\", 1.0µm\r\nBattery:Li-Po 4500 mAh, non-removable\r\nCharge:Fast charging 65W\r\nUSB:USB Type-C 3.1, USB On-The-Go', 439, 30),
(303, 'OnePlus Nord CE 2 5G', 'Mobile Phone', 'OnePlus', 'Dimensions:160.6 x 73.2 x 7.8 mm (6.32 x 2.88 x 0.31 in)\r\nWeight:173 g (6.10 oz)\r\nBuild:Corning Gorilla Glass 5\r\nOS:Android 11, upgradable to Android 12, OxygenOS 12\r\nChipset:MediaTek MT6877 Dimensity 900 (6 nm)\r\nCPU:Octa-core (2x2.4 GHz Cortex-A78 & 6x2.0 GHz Cortex- \r\n    A55)\r\nGPU:Mali-G68 MC4\r\nMemory:128GB 6GB RAM, 128GB 8GB RAM\r\n       UFS 2.2\r\nMain camera:Triple 64 MP, f/1.8, 26mm (wide), 1/1.97\", \r\n            0.7µm, PDAF\r\n            8 MP, f/2.2, 119˚ (ultrawide)\r\n            2 MP, f/2.4, (macro)\r\nSelfie camera:16 MP, f/2.4, 27mm (wide), 1.0µm\r\nBattery:Li-Po 4500 mAh, non-removable\r\nCharge:Fast charging 65W\r\n       Reverse charging\r\nUSB:USB Type-C 2.0, USB On-The-Go', 338, 20),
(310, 'HP Chromebook x360-14c-ca0053dx', 'Laptop', 'HP', 'Dimensions:32.57 x 21.85 x 1.78 cm\r\nWeight:1.64 kg\r\nDisplay:14 inches diagonal FHD IPS micro-edge WLED-backlit \r\n        multitouch-enabled edge-to-edge glass with Corning \r\n        Gorilla Glass NBT\r\nOS:Chrome OS\r\nCPU:Intel Core i3-10110U\r\nIntegrated GPU:Intel UHD\r\nMemory:8GB DDR4-2666 SDRAM\r\nStorage:64GB\r\nBattery:3-cell, 60.9 Wh Li-ion\r\nSpeakers:2\r\nWebcam:HP Wide Vision HD Camera with integrated dual array \r\n       digital microphone\r\nPre-installed software:Biometric Fingerprint Reader, \r\n                       Google Play Store, Google Assistant\r\nUSB:USB Type-C (2)\r\n    USB Type-A (1)', 589, 5),
(320, 'Bose Sport Earbuds', 'Headphone', 'Bose', 'Dimensions:Earbuds-0.74 x 1.05 x 0.83 in\r\n           Charging case-1.18 x 3.6 x 1.63 in\r\nType:Wireless Earbuds\r\nBattery life:5 hours\r\nCharge time:15 minutes for 2 hours\r\n', 179, 5),
(405, 'Google Pixel 6', 'Mobile Phone', 'Google', 'none', 899, 10);

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `oder_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount_due` int(255) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `total_products` int(100) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_reg_table`
--

CREATE TABLE `user_reg_table` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_reg_table`
--

INSERT INTO `user_reg_table` (`user_id`, `username`, `user_email`, `user_password`, `user_contact`) VALUES
(1, 'mun', 'munna.khairul@northsouth.edu', '$2y$10$GKCpR9nSGlP4UK3r5U1j1O1azdws8ptybcWhJislnQK0J37bVQ0di', '1234'),
(2, 'ope', 'ope@gmail.com', '$2y$10$8/6CJ.2MakTuBIkE2tbCgeQaLOgNPNwhSbk4u5RpSwQfhkT9PPO7S', '1234'),
(3, 'aaa', 'aaaa@gmail.com', '$2y$10$tP6vczCNywtvGYUpHuvYZeBNPwMk5upeJv5NqY9t1CG6TR9.He5V.', '1234'),
(4, 'a', 'a@gmail.com', '$2y$10$DCBzFi73hV6Ld0k9hDHiMOYX5TBpjCEDGWx/CLVYpLMer2tJ80p6q', '1234'),
(5, 'abcd', 'abcd@gmail.com', '$2y$10$dM8UXEKMWRyA95ySLfMG1.wuLo9IMFycD0zidk.leS.L/eoA3XhP2', '1234'),
(6, 'Munna', 'munna75757575@gmail.com', '$2y$10$/XTFJ.vfoNryaPnpT.be0uiu.0tqAOo4O9J5iawnohJW32wjxtWmm', '01771043993');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`produts_id`);

--
-- Indexes for table `orders_pending`
--
ALTER TABLE `orders_pending`
  ADD PRIMARY KEY (`oder_id`);

--
-- Indexes for table `products_info`
--
ALTER TABLE `products_info`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`oder_id`);

--
-- Indexes for table `user_reg_table`
--
ALTER TABLE `user_reg_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `produts_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_pending`
--
ALTER TABLE `orders_pending`
  MODIFY `oder_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `oder_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_reg_table`
--
ALTER TABLE `user_reg_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
