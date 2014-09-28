-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2013 at 12:03 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wilo`
--
CREATE DATABASE IF NOT EXISTS `wilo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wilo`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`Id`, `Name`) VALUES
(1, 'Incalzire, climatizare, racire'),
(2, 'alimentare cu apa'),
(3, 'apa uzata'),
(4, 'grupuri de incendii');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) DEFAULT NULL,
  `Icon` varchar(200) DEFAULT NULL,
  `Graphic` varchar(200) DEFAULT NULL,
  `Table` varchar(200) DEFAULT NULL,
  `SubcategoryId` bigint(20) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `SubcategoryId` (`SubcategoryId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Id`, `Title`, `Icon`, `Graphic`, `Table`, `SubcategoryId`) VALUES
(1, 'Wilo-Stratos PICO', 'Images/Pompe/wilo_stratos_pico.png', 'Images/Pompe/Grafice/wilo_stratos_pico.png', 'Images/Pompe/Tabele/wilo_stratos_pico.png', 1),
(2, 'Wilo-Yonos PICO', 'Images/Pompe/Wilo_Yonos_PICO.png', 'Images/Pompe/Grafice/Wilo_Yonos_PICO.png', 'Images/Pompe/Tabele/Wilo_Yonos_PICO.png', 1),
(3, 'Wilo-Yonos MAXO', 'Images/Pompe/Wilo_Yonos_MAXO.png', 'Images/Pompe/Grafice/Wilo_Yonos_MAXO.png', 'Images/Pompe/Tabele/Wilo_Yonos_MAXO.png', 1),
(4, 'Wilo-Stratos ECO-?BMS', 'Images/Pompe/Wilo_Stratos_ECO_BMS.png', 'Images/Pompe/Grafice/Wilo_Stratos_ECO_BMS.png', 'Images/Pompe/Tabele/Wilo_Stratos_ECO_BMS.png', 1),
(5, 'Wilo-Stratos', 'Images/Pompe/wilo_stratos.png', 'Images/Pompe/Grafice/wilo_stratos.png', 'Images/Pompe/Tabele/wilo_stratos.png', 1),
(6, 'Wilo-Stratos ECO-STG', 'Images/Pompe/Wilo_Stratos_ECO_STG.png', 'Images/Pompe/Grafice/Wilo_Stratos_ECO_STG.png', 'Images/Pompe/Tabele/Wilo_Stratos_ECO_STG.png', 8),
(7, 'Wilo-Stratos ECO-STG', 'Images/Pompe/Wilo_Stratos_ECO_STG.png', 'Images/Pompe/Grafice/Wilo_Stratos_ECO_STG.png', 'Images/Pompe/Tabele/Wilo_Stratos_ECO_STG.png', 8),
(8, 'Wilo-Star-STG', 'Images/Pompe/Wilo_Star_STG.png', 'Images/Pompe/Grafice/Wilo_Star_STG.png', 'Images/Pompe/Tabele/Wilo_Star_STG.png', 8),
(9, 'Wilo-TOP-STG', 'Images/Pompe/Wilo_TOP_STG.png', 'Images/Pompe/Grafice/Wilo_TOP_STG.png', 'Images/Pompe/Tabele/Wilo_TOP_STG.png', 8),
(10, 'Wilo-Star-Z NOVA', 'Images/Pompe/Wilo_Star_Z_NOVA.png', 'Images/Pompe/Grafice/Wilo_Star_Z_NOVA.png', 'Images/Pompe/Tabele/Wilo_Star_Z_NOVA.png', 3),
(11, 'Wilo-Stratos ECO-Z', 'Images/Pompe/Wilo_Stratos_ECO_Z.png', 'Images/Pompe/Grafice/Wilo_Stratos_ECO_Z.png', 'Images/Pompe/Tabele/Wilo_Stratos_ECO_Z.png', 3),
(12, 'Wilo-Stratos-Z', 'Images/Pompe/Wilo_Stratos_Z.png', 'Images/Pompe/Grafice/Wilo_Stratos_Z.png', 'Images/Pompe/Tabele/Wilo_Stratos_Z.png', 3),
(13, 'Wilo-Star-Z', 'Images/Pompe/Wilo_Star_Z.png', 'Images/Pompe/Grafice/Wilo_Star_Z.png', 'Images/Pompe/Tabele/Wilo_Star_Z.png', 3),
(14, 'Wilo-TOP-Z', 'Images/Pompe/Wilo_TOP_Z.png', 'Images/Pompe/Grafice/Wilo_TOP_Z.png', 'Images/Pompe/Tabele/Wilo_TOP_Z.png', 3),
(15, 'Wilo-Jet WJ', 'Images/Pompe/Wilo_Jet_WJ.png', 'Images/Pompe/Grafice/Wilo_Jet_WJ.png', 'Images/Pompe/Tabele/Wilo_Jet_WJ.png', 4),
(16, 'Wilo-Jet FWJ', 'Images/Pompe/Wilo_Jet_FWJ.png', 'Images/Pompe/Grafice/Wilo_Jet_FWJ.png', 'Images/Pompe/Tabele/Wilo_Jet_FWJ.png', 4),
(17, 'Wilo-Jet HWJ', 'Images/Pompe/Wilo_Jet_HWJ.png', 'Images/Pompe/Grafice/Wilo_Jet_HWJ.png', 'Images/Pompe/Tabele/Wilo_Jet_HWJ.png', 4),
(18, 'Wilo-Multicargo MC', 'Images/Pompe/Wilo_Multicargo_MC.png', 'Images/Pompe/Grafice/Wilo_Multicargo_MC.png', 'Images/Pompe/Tabele/Wilo_Multicargo_MC.png', 4),
(19, 'Wilo-MultiCargo FMC', 'Images/Pompe/Wilo_MultiCargo_FMC.png', 'Images/Pompe/Grafice/Wilo_MultiCargo_FMC.png', 'Images/Pompe/Tabele/Wilo_MultiCargo_FMC.png', 4),
(20, 'Wilo-MultiCargo HMC', 'Images/Pompe/Wilo_MultiCargo_HMC.png', 'Images/Pompe/Grafice/Wilo_MultiCargo_HMC.png', 'Images/Pompe/Tabele/Wilo_MultiCargo_HMC.png', 4),
(21, 'Wilo-Multipress MP', 'Images/Pompe/Wilo_Multipress_MP.png', 'Images/Pompe/Grafice/Wilo_Multipress_MP.png', 'Images/Pompe/Tabele/Wilo_Multipress_MP.png', 5),
(22, 'Wilo-MultiPress FMP', 'Images/Pompe/Wilo_MultiPress_FMP.png', 'Images/Pompe/Grafice/Wilo_MultiPress_FMP.png', 'Images/Pompe/Tabele/Wilo_MultiPress_FMP.png', 5),
(23, 'Wilo-MultiPress HMP', 'Images/Pompe/Wilo_MultiPress_HMP.png', 'Images/Pompe/Grafice/Wilo_MultiPress_HMP.png', 'Images/Pompe/Tabele/Wilo_MultiPress_HMP.png', 5),
(24, 'Wilo-EMHIL', 'Images/Pompe/Wilo_EMHIL.png', 'Images/Pompe/Grafice/Wilo_EMHIL.png', 'Images/Pompe/Tabele/Wilo_EMHIL.png', 5),
(25, 'Wilo-Electronic control', 'Images/Pompe/Wilo_Electronic_control.png', 'Images/Pompe/Grafice/Wilo_Electronic_control.png', 'Images/Pompe/Tabele/Wilo_Electronic_control.png', 5),
(26, 'Wilo-Sub TWI 5/TWI 5-SE', 'Images/Pompe/Wilo_Sub_TWI_5_TWI_5_SE.png', 'Images/Pompe/Grafice/Wilo_Sub_TWI_5_TWI_5_SE.png', 'Images/Pompe/Tabele/Wilo_Sub_TWI_5_TWI_5_SE.png', 5),
(27, 'Wilo-Sub TWI 5-SE Plug & Pump', 'Images/Pompe/Wilo_Sub_TWI_5_SE_Plug&Pump.png', 'Images/Pompe/Grafice/Wilo_Sub_TWI_5_SE_Plug&Pump.png', 'Images/Pompe/Tabele/Wilo_Sub_TWI_5_SE_Plug&Pump.png', 5),
(28, 'Wilo-Economy COE-2 TWI 5', 'Images/Pompe/Wilo_Economy_COE_2_TWI_5.png', 'Images/Pompe/Grafice/Wilo_Economy_COE_2_TWI_5.png', 'Images/Pompe/Tabele/Wilo_Economy_COE_2_TWI_5.png', 5),
(29, 'Wilo-Sub TWU 3 Plug & Pump', 'Images/Pompe/Wilo_Sub_TWU_3_Plug&Pump.png', 'Images/Pompe/Grafice/Wilo_Sub_TWU_3_Plug&Pump.png', 'Images/Pompe/Tabele/Wilo_Sub_TWU_3_Plug&Pump.png', 6),
(30, 'Wilo-Sub TWU 4 Plug & Pump', 'Images/Pompe/Wilo_Sub_TWU_4_Plug&Pump.png', 'Images/Pompe/Grafice/Wilo_Sub_TWU_4_Plug&Pump.png', 'Images/Pompe/Tabele/Wilo_Sub_TWU_4_Plug&Pump.png', 6),
(31, 'Wilo-Sub TWU 3 Plug & Pump', 'Images/Pompe/Wilo_DrainLift_TMP_32.png', 'Images/Pompe/Grafice/Wilo_DrainLift_TMP_32.png', 'Images/Pompe/Tabele/Wilo_DrainLift_TMP_32.png', 7),
(32, 'Wilo-DrainLift TMP 40', 'Images/Pompe/Wilo_DrainLift_TMP_40.png', 'Images/Pompe/Grafice/Wilo_DrainLift_TMP_40.png', 'Images/Pompe/Tabele/Wilo_DrainLift_TMP_40.png', 7),
(33, 'Wilo-DrainLift Box', 'Images/Pompe/Wilo_DrainLift_Box.png', 'Images/Pompe/Grafice/Wilo_DrainLift_Box.png', 'Images/Pompe/Tabele/Wilo_DrainLift_Box.png', 7);

-- --------------------------------------------------------

--
-- Table structure for table `product_properties`
--

CREATE TABLE IF NOT EXISTS `product_properties` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `product_properties`
--

INSERT INTO `product_properties` (`Id`, `Name`) VALUES
(1, 'Tip constructiv'),
(2, 'Domenii de utilizare'),
(3, 'Date tehnice'),
(4, 'Particularitati/Avantaje ale produsului'),
(5, 'Optiuni');

-- --------------------------------------------------------

--
-- Table structure for table `product_property_texts`
--

CREATE TABLE IF NOT EXISTS `product_property_texts` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Text` varchar(1000) DEFAULT NULL,
  `productPropertyId` bigint(20) NOT NULL,
  `ProductId` bigint(20) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `ProductId` (`ProductId`),
  KEY `productPropertyId` (`productPropertyId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `product_property_texts`
--

INSERT INTO `product_property_texts` (`Id`, `Text`, `productPropertyId`, `ProductId`) VALUES
(1, 'Pompa de recirculare cu rotor umed, cu racord filetat sau cu flansa, motor EC si reglare automata a puterii', 1, 1),
(2, 'Instalatii de incalzire cu apa calda, de toate tipurile, instalatii de climatizare, circuite inchise de racire, instalatii industriale de recirculare.', 2, 1),
(3, 'Domeniul de temperatura admis intre -10°C si +110°C', 3, 1),
(4, 'Alimentare 1~230 V, 50/60 Hz', 3, 1),
(5, 'Grad de protectie IP X4D', 3, 1),
(6, 'Racord cu fiting sau cu flansa (in functie de model) Rp 1 ?i DN 100', 3, 1),
(7, 'Presiune maxima de lucru, model standard: 6/10 bar sau 6 bar (model special: 10 bar sau 16 bar)', 3, 1),
(8, 'Presiune maxima de lucru, model standard: 6/10 bar sau 6 bar (model special: 10 bar sau 16 bar)', 3, 1),
(9, 'Clasa de eficienta energetica A', 4, 1),
(10, 'Grad de eficienta maxim datorit? tehnologiei ECM', 4, 1),
(11, 'Pana la 80% economie de curent fata de pompele de recirculare nereglabile', 4, 1),
(12, 'Utilizare optima datorita comenzii frontale si accesului frontal la compartimentul bornelor, pozitii de montaj variabile, display independent de pozitie', 4, 1),
(13, 'Modalitate simpla de montaj datorita flansei combinate PN 6/PN 10 (la DN 32 pân? la DN 65)', 4, 1),
(14, 'Utilizarea in instalatii de racire/climatizare posibila, fara limitare a temperaturii de ambianta', 4, 1),
(15, 'Carcasa pompei cu strat de acoperire prin cataforeza (KTL), pentru evitarea coroziunii la formarea condensului', 4, 1),
(16, 'Extinderea sistemului cu module de comunicare LON, CAN, PLR etc., ce pot fi montate ulterior.', 4, 1),
(17, 'Comanda de la distanta prin interfata cu raze infrarosii (modul IR/telecomanda IR)', 4, 1),
(18, 'Modele speciale pentru o presiune de lucru de PN 16', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_subproducts`
--

CREATE TABLE IF NOT EXISTS `product_subproducts` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Text` varchar(100) NOT NULL,
  `ProductId` bigint(20) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `ProductId` (`ProductId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `product_subproducts`
--

INSERT INTO `product_subproducts` (`Id`, `Text`, `ProductId`) VALUES
(1, '763', 1),
(2, '896', 1),
(3, '976', 1),
(4, '1024', 1),
(5, '773', 1),
(6, '958', 1),
(7, '1047', 1),
(8, '1093', 1),
(9, '1289', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE IF NOT EXISTS `subcategories` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CategoryId` bigint(20) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `CategoryId` (`CategoryId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`Id`, `Name`, `CategoryId`) VALUES
(1, 'Pompe de inalta eficienta', 1),
(2, 'Pompe economice', 1),
(3, 'Pompe speciale', 1),
(4, 'Pompe autoamorsante', 2),
(5, 'Pompe cu amorsare normala', 2),
(6, 'Sisteme', 2),
(7, 'Module de pompare pentru ape murdare', 3),
(8, 'Sisteme solare termice, geotermale', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_subcategory` FOREIGN KEY (`SubcategoryId`) REFERENCES `subcategories` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_property_texts`
--
ALTER TABLE `product_property_texts`
  ADD CONSTRAINT `Product_product_propertty_text` FOREIGN KEY (`ProductId`) REFERENCES `products` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Product_property_product_property_text` FOREIGN KEY (`productPropertyId`) REFERENCES `product_properties` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_subproducts`
--
ALTER TABLE `product_subproducts`
  ADD CONSTRAINT `product_subProduct` FOREIGN KEY (`ProductId`) REFERENCES `categories` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `category_subcategory` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
