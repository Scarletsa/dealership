-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2018 at 12:08 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dealership`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `did` int(11) NOT NULL,
  `budget` double NOT NULL,
  `dname` char(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`did`, `budget`, `dname`) VALUES
(101, 95000, 'Sales'),
(102, 25000, 'Finance'),
(103, 150000, 'Service');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empid` int(15) NOT NULL,
  `SSN` int(10) NOT NULL,
  `name` char(30) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `email` char(50) NOT NULL,
  `address` char(75) NOT NULL,
  `DoB` date NOT NULL,
  `salary` double NOT NULL,
  `password` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empid`, `SSN`, `name`, `phone`, `email`, `address`, `DoB`, `salary`, `password`) VALUES
(10002, 645023164, 'Kenisha Troxler', 6515551704, 'Kenisha.Troxler@CenturyMazda.com', '11 9th Street White Bear Lake MN 55110', '1984-07-06', 60456, '12345'),
(10003, 862564239, 'Donny Overman', 6515559327, 'Donny.Overman@CenturyMazda.com', '3356 W Ave White Bear Lake MN 55110', '1988-03-18', 66089, '12345'),
(10004, 223588217, 'Tonette Yarberry', 6515558343, 'Tonette.Yarberry@CenturyMazda.com', '512 Drury Lane White Bear Lake MN 55110', '1991-11-20', 58531, '12345'),
(10005, 608838161, 'Sumiko Obermiller', 6515554623, 'Sumiko.Obermiller@CenturyMazda.com', '987 3rd Street White Bear Lake MN 55110', '1982-12-25', 59326, '12345'),
(10006, 800962252, 'Beverly Garbarino', 6515552149, 'Beverly.Garbarino@CenturyMazda.com', '610 7th Street White Bear Lake MN 55110', '1986-05-10', 52248, '12345'),
(10008, 503766168, 'Luciana Difiore', 6515558916, 'Luciana.Difiore@CenturyMazda.com', '69 NW Lane White Bear Lake MN 55110', '1980-07-28', 46456, '12345'),
(10010, 416210705, 'Maritza Waltz', 6515557477, 'Maritza.Waltz@CenturyMazda.com', '963 2nd Street White Bear Lake MN 55110', '1985-11-29', 56891, '12345'),
(10011, 590945802, 'Leonard Goodnight', 6515557090, 'Leonard.Goodnight@CenturyMazda.com', '441 1st Street White Bear Lake MN 55110', '1989-09-30', 59539, '12345'),
(10012, 574081804, 'Christina Tegeler', 6515558666, 'Christina.Tegeler@CenturyMazda.com', '951 Grand Ave White Bear Lake MN 55110', '1982-10-31', 47505, '12345'),
(10013, 612448403, 'Salina Lavelle', 6515559427, 'Salina.Lavelle@CenturyMazda.com', '753 Main Street White Bear Lake MN 55110', '1988-07-24', 69972, '12345'),
(10014, 926532681, 'Lisha Merck', 6515559743, 'Lisha.Merck@CenturyMazda.com', '652 6th Street White Bear Lake MN 55110', '1993-05-07', 57855, '12345'),
(10093, 423659832, 'Calvin Bishop', 6515558945, 'Calvin.Bishop@CenturyMazda.com', '564 Plymouth Blvd', '1990-03-25', 53487, '12345'),
(15902, 456781245, 'Stephen Henry', 6515554567, 'Stephen.Henry@CenturyMazda.com', '2056 Ontario Ave E', '1995-12-03', 56234, '12345'),
(19070, 861469732, 'Jack Johnson', 6515558911, 'Jack.Johnson@CenturyMazda.com', '789 Baker St SE', '1985-08-16', 55786, '12345'),
(50001, 404917608, 'Shaniqua Creasman', 6515556741, 'Shaniqua.Creasman@CenturyMazda.com', '444 4th Street White Bear Lake MN 55110', '1962-09-14', 86927, '12345'),
(50002, 419602678, 'Marty Wardwell', 6515554471, 'Marty.Wardwell@CenturyMazda.com', '555 5th Street White Bear Lake MN 55110', '1958-05-26', 88382, '12345'),
(54090, 583628431, 'Loris muro', 6515553214, 'Loris.Muro@CenturyMazda.com', '123 Fake St', '1984-11-03', 88753, '12345');

-- --------------------------------------------------------

--
-- Table structure for table `installed`
--

CREATE TABLE `installed` (
  `level` varchar(10) DEFAULT NULL,
  `Oname` varchar(50) DEFAULT NULL,
  `Vin` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `installed`
--

INSERT INTO `installed` (`level`, `Oname`, `Vin`) VALUES
('SED-GT', 'AWD', 'CX0WQ0994K7761881'),
('SED-GT', 'Automatic', 'OL1LX9559F4951498'),
('SED-GT', 'Matts', 'OL1LX9559F4951498'),
('SED-GT', 'Premium', 'OL1LX9559F4951498'),
('SED-GT', 'Premium', 'HN4RI4778X4378714'),
('SED-GT', 'Paint', 'UG3BW7337T4736717'),
('SED-T', 'Paint', 'NR2RX6462E7124755'),
('SED-T', 'Wheels', 'NR2RX6462E7124755'),
('SED-T', 'Automatic', 'UF9EO5805B7636963'),
('SED-T', 'Paint', 'UF9EO5805B7636963'),
('SED-T', 'Wheels', 'UF9EO5805B7636963'),
('SED-T', 'Automatic', 'CR9HF3393D1449856'),
('SED-T', 'AWD', 'CR9HF3393D1449856'),
('SED-T', 'Sunroof', 'CR9HF3393D1449856'),
('SED-T', 'Matts', 'CR9HF3393D1449856'),
('SED-T', 'Automatic', 'BH3FU7674R1142251'),
('SED-T', 'Premium', 'BH3FU7674R1142251'),
('SED-T', 'XMRadio', 'BH3FU7674R1142251'),
('SED-T', 'Matts', 'BH3FU7674R1142251'),
('SED-T', 'Paint', 'SX9ES0540Q1457949'),
('SED-T', 'Premium', 'SX9ES0540Q1457949'),
('SED-T', 'Wheels', 'SX9ES0540Q1457949'),
('SED-T', 'Matts', 'QQ5QM1437W9947521'),
('SED-T', 'Paint', 'QQ5QM1437W9947521'),
('SED-T', 'Automatic', 'ME5IC4160H1694579'),
('SED-T', 'Matts', 'ME5IC4160H1694579'),
('SED-T', 'Premium', 'ME5IC4160H1694579'),
('SED-T', 'AWD', 'FR7JR4558G3395864'),
('SED-T', 'Sunroof', 'FR7JR4558G3395864'),
('SED-T', 'Premium', 'FR7JR4558G3395864'),
('SED-T', 'Automatic', 'MZ0LT5127I3948746'),
('SED-T', 'Sunroof', 'MZ0LT5127I3948746'),
('SED-T', 'Matts', 'MZ0LT5127I3948746'),
('SED-T', 'Wheels', 'MZ0LT5127I3948746'),
('SED-T', 'Automatic', 'TW1PI0484S4344959'),
('SED-T', 'Paint', 'TW1PI0484S4344959'),
('SED-T', 'Wheels', 'TW1PI0484S4344959'),
('SED-S', 'Automatic', 'HL6ZU2478Z2711744'),
('SED-S', 'Wheels', 'HL6ZU2478Z2711744'),
('SED-S', 'Matts', 'HL6ZU2478Z2711744'),
('SED-S', 'Automatic', 'FN0BA3450T4889775'),
('SED-S', 'Sunroof', 'FN0BA3450T4889775'),
('SED-S', 'Paint', 'FN0BA3450T4889775'),
('SED-S', 'Wheels', 'FN0BA3450T4889775'),
('SED-S', 'Automatic', 'PH8VA5290T4519916'),
('SED-S', 'Matts', 'PH8VA5290T4519916'),
('SED-S', 'Premium', 'PH8VA5290T4519916'),
('SED-S', 'XMRadio', 'PH8VA5290T4519916'),
('SED-S', 'Automatic', 'YJ9FF6617E5758747'),
('SED-S', 'Wheels', 'YJ9FF6617E5758747'),
('SED-S', 'XMRadio', 'YJ9FF6617E5758747'),
('SED-S', 'Paint', 'YJ9FF6617E5758747'),
('SED-GT', 'Automatic', 'NR1MR5838X8838959'),
('SED-GT', 'Automatic', 'GA9BM2551Q9358674'),
('SED-GT', 'Premium', 'GA9BM2551Q9358674'),
('SED-GT', 'XMRadio', 'GA9BM2551Q9358674'),
('SED-T', 'Premium', 'PV2AC0214K9943755'),
('SED-T', 'Automatic', 'NB2LH9979U2137384'),
('SED-T', 'Sunroof', 'NB2LH9979U2137384'),
('SED-T', 'Paint', 'NB2LH9979U2137384'),
('SED-T', 'Premium', 'NB2LH9979U2137384'),
('SED-S', 'Automatic', 'DJ0HZ3377K6679913'),
('SED-S', 'XMRadio', 'DJ0HZ3377K6679913'),
('SED-S', 'Premium', 'DJ0HZ3377K6679913'),
('SED-S', 'AWD', 'DJ0HZ3377K6679913'),
('SED-S', 'XMRadio', 'XJ5NU4044H7715443'),
('SED-S', 'AWD', 'XJ5NU4044H7715443'),
('SED-GT', 'Automatic', 'OF1LV5769K3949983'),
('SED-GT', 'Paint', 'OF1LV5769K3949983'),
('SED-GT', 'AWD', 'OF1LV5769K3949983'),
('SED-GT', 'Automatic', 'MD7FN6351S1791155'),
('SED-GT', 'Paint', 'MD7FN6351S1791155'),
('SED-GT', 'Premium', 'MM6HA2805E1453538'),
('SED-GT', 'XMRadio', 'MM6HA2805E1453538'),
('SED-GT', 'AWD', 'GW5DB6590R2443114'),
('SED-GT', 'Automatic', 'JK0PM8923V6855368'),
('SED-GT', 'XMRadio', 'JK0PM8923V6855368'),
('SED-GT', 'Premium', 'ZO9UY9051L7728993'),
('SED-GT', 'AWD', 'WV5MG6413M5359358'),
('SED-GT', 'Paint', 'TL2NV1432M1853916'),
('SED-GT', 'XMRadio', 'TL2NV1432M1853916'),
('SED-GT', 'Automatic', 'TX1CP3022E4318955'),
('SED-T', 'Automatic', 'FM0FE5946Z4928169'),
('SED-T', 'Sunroof', 'FM0FE5946Z4928169'),
('SED-T', 'Matts', 'FM0FE5946Z4928169'),
('SED-T', 'Paint', 'FM0FE5946Z4928169'),
('SED-T', 'Wheels', 'XF0TR0578T1525216'),
('SED-T', 'Matts', 'XF0TR0578T1525216'),
('SED-S', 'Premium', 'GA3ST4261X1924195'),
('SED-S', 'Wheels', 'GA3ST4261X1924195'),
('SED-S', 'Sunroof', 'GA3ST4261X1924195'),
('SED-S', 'Automatic', 'VB1BH1295O3636438'),
('SED-S', 'Wheels', 'VB1BH1295O3636438'),
('SED-S', 'Paint', 'VB1BH1295O3636438'),
('SED-GT', 'XMRadio', 'XJ9DY2417J9963158'),
('SED-GT', 'Paint', 'XJ9DY2417J9963158'),
('SED-GT', 'AWD', 'XJ9DY2417J9963158'),
('SED-S', 'Wheels', 'RD9PW3972K3792631'),
('SED-S', 'AWD', 'RD9PW3972K3792631'),
('SED-S', 'Sunroof', 'RD9PW3972K3792631'),
('SED-GT', 'Automatic', 'OD0UN9947S7777326'),
('SED-GT', 'Premium', 'OD0UN9947S7777326'),
('SED-GT', 'Automatic', 'QT8ES7817L4378339'),
('SED-GT', 'AWD', 'QT8ES7817L4378339'),
('SED-S', 'Automatic', 'PF2EN3182O6366959'),
('SED-S', 'Sunroof', 'PF2EN3182O6366959'),
('SED-S', 'Matts', 'PF2EN3182O6366959'),
('SED-S', 'AWD', 'PF2EN3182O6366959'),
('SED-S', 'Automatic', 'VT5KO6957N5577183'),
('SED-S', 'Paint', 'VT5KO6957N5577183'),
('SED-S', 'Premium', 'VT5KO6957N5577183'),
('SED-S', 'Automatic', 'SL7GG1334K6389728'),
('SED-S', 'Wheels', 'SL7GG1334K6389728'),
('SED-S', 'Paint', 'SL7GG1334K6389728'),
('SED-T', 'Automatic', 'PU2FW8042B8946147'),
('SED-T', 'Paint', 'PU2FW8042B8946147'),
('SED-T', 'AWD', 'PU2FW8042B8946147'),
('SUV-GT', 'Automatic', 'RA5GU3907C4534398'),
('SUV-GT', 'Paint', 'RA5GU3907C4534398'),
('SUV-GT', 'Automatic', 'IH5EV0698C8755657'),
('SUV-GT', 'Paint', 'IH5EV0698C8755657'),
('SUV-GT', 'Automatic', 'PL7PT3650E6565457'),
('SUV-GT', 'AWD', 'PL7PT3650E6565457'),
('SUV-GT', 'AWD', 'QQ5YU4634D9835796'),
('SUV-GT', 'Premium', 'GJ3DM3781B8328275'),
('SUV-GT', 'XMRadio', 'GJ3DM3781B8328275'),
('SUV-GT', 'AWD', 'GJ3DM3781B8328275'),
('SUV-GT', 'Automatic', 'ML2ZZ9098I9167343'),
('SUV-GT', 'Paint', 'ML2ZZ9098I9167343'),
('SUV-GT', 'AWD', 'ML2ZZ9098I9167343'),
('SUV-GT', 'Premium', 'ML2ZZ9098I9167343'),
('SUV-GT', 'Automatic', 'YY0LQ7590C2148311'),
('SUV-GT', 'Paint', 'YY0LQ7590C2148311'),
('SUV-GT', 'AWD', 'YY0LQ7590C2148311'),
('SUV-T', 'Automatic', 'AS5KO9274R9324785'),
('SUV-T', 'Paint', 'AS5KO9274R9324785'),
('SUV-T', 'AWD', 'AS5KO9274R9324785'),
('SUV-T', 'Automatic', 'PA2GZ7960W5131223'),
('SUV-T', 'Paint', 'PA2GZ7960W5131223'),
('SUV-T', 'Paint', 'IB4SP6297O8477312'),
('SUV-T', 'Matts', 'IB4SP6297O8477312'),
('SUV-S', 'Automatic', 'AW5WV4594K5789113'),
('SUV-S', 'XMRadio', 'AW5WV4594K5789113'),
('SUV-S', 'Paint', 'AW5WV4594K5789113'),
('SUV-S', 'Sunroof', 'AW5WV4594K5789113'),
('SUV-S', 'Automatic', 'NJ7UA6009B2974282'),
('SUV-S', 'Paint', 'NJ7UA6009B2974282'),
('SUV-S', 'Sunroof', 'NJ7UA6009B2974282'),
('SUV-T', 'Automatic', 'PJ5LT4822E7773466'),
('SUV-T', 'Paint', 'PJ5LT4822E7773466'),
('SUV-T', 'Premium', 'PJ5LT4822E7773466'),
('SUV-GT', 'Automatic', 'RY4EL3850G2253922'),
('SUV-GT', 'Premium', 'RY4EL3850G2253922'),
('SUV-GT', 'Automatic', 'GT2YX6694B7363186'),
('SUV-GT', 'XMRadio', 'GT2YX6694B7363186'),
('SUV-GT', 'Paint', 'GT2YX6694B7363186'),
('SUV-GT', 'Automatic', 'VP2EC3071L5716928'),
('SUV-GT', 'Premium', 'VP2EC3071L5716928'),
('SUV-GT', 'XMRadio', 'VP2EC3071L5716928'),
('SUV-GT', 'Automatic', 'EH9QZ4809D1246188'),
('SUV-GT', 'AWD', 'EH9QZ4809D1246188'),
('SUV-T', 'Automatic', 'RN3ED9067E3636215'),
('SUV-T', 'Wheels', 'RN3ED9067E3636215'),
('SUV-T', 'Premium', 'RN3ED9067E3636215'),
('SUV-T', 'XMRadio', 'RN3ED9067E3636215'),
('SUV-T', 'AWD', 'IW3UJ6230K2685758'),
('SUV-T', 'Sunroof', 'IW3UJ6230K2685758'),
('SUV-T', 'Wheels', 'IW3UJ6230K2685758'),
('SUV-T', 'Automatic', 'XN4OK6759G9771382'),
('SUV-T', 'Wheels', 'XN4OK6759G9771382'),
('SUV-T', 'Automatic', 'DC4PP9823V4153295'),
('SUV-T', 'Paint', 'DC4PP9823V4153295'),
('SUV-T', 'Wheels', 'DC4PP9823V4153295'),
('SUV-S', 'Automatic', 'HW0DL7010M2691881'),
('SUV-S', 'Paint', 'HW0DL7010M2691881'),
('SUV-S', 'AWD', 'HW0DL7010M2691881'),
('SUV-S', 'Automatic', 'FD4SD7177N5768579'),
('SUV-S', 'Premium', 'FD4SD7177N5768579'),
('SUV-S', 'Wheels', 'FD4SD7177N5768579'),
('SUV-S', 'Matts', 'FD4SD7177N5768579'),
('SUV-T', 'XMRadio', 'ZR7OV9887F1557328'),
('SUV-T', 'Paint', 'ZR7OV9887F1557328'),
('SUV-T', 'Automatic', 'LG1KO4262N3292967'),
('SUV-T', 'Wheels', 'LG1KO4262N3292967'),
('SUV-T', 'Matts', 'LG1KO4262N3292967'),
('SUV-T', 'Sunroof', 'LG1KO4262N3292967'),
('SUV-S', 'Automatic', 'UZ8KH9414O8613314'),
('SUV-S', 'Matts', 'UZ8KH9414O8613314'),
('SUV-S', 'Wheels', 'UZ8KH9414O8613314'),
('SUV-GT', 'AWD', 'GY2HQ9368V9998442'),
('SUV-GT', 'Automatic', 'WJ6OP4202Q3983638'),
('SUV-GT', 'Premium', 'WJ6OP4202Q3983638'),
('SUV-S', 'AWD', 'PY0SC2820X7161917'),
('SUV-S', 'Matts', 'PY0SC2820X7161917'),
('SED-GT', 'Automatic', '2B3HD46R22H251459'),
('SED-GT', 'Matts', '2B3HD46R22H251459'),
('SED-GT', 'Paint', '2B3HD46R22H251459'),
('SED-GT', 'Sunroof', '2B3HD46R22H251459'),
('SED-GT', 'Wheels', '2B3HD46R22H251459');

-- --------------------------------------------------------

--
-- Table structure for table `manages`
--

CREATE TABLE `manages` (
  `empid` int(20) NOT NULL,
  `did` int(20) NOT NULL,
  `started` date NOT NULL,
  `ended` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manages`
--

INSERT INTO `manages` (`empid`, `did`, `started`, `ended`) VALUES
(50001, 102, '2018-01-01', '0000-00-00'),
(50002, 101, '2018-01-01', '0000-00-00'),
(50002, 103, '2018-01-01', '0000-00-00'),
(54090, 101, '2018-04-24', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `on_lot`
--

CREATE TABLE `on_lot` (
  `Vin` varchar(20) NOT NULL,
  `Spot` int(11) DEFAULT NULL,
  `Since` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `on_lot`
--

INSERT INTO `on_lot` (`Vin`, `Spot`, `Since`) VALUES
('2B3HD46R22H251459', 12, '2018-04-26'),
('AS5KO9274R9324785', 49, '2018-01-01'),
('AW5WV4594K5789113', 52, '2018-01-01'),
('BH3FU7674R1142251', 7, '2018-01-01'),
('CR9HF3393D1449856', 6, '2018-01-01'),
('CX0WQ0994K7761881', 1, '2018-01-01'),
('DC4PP9823V4153295', 61, '2018-01-01'),
('EH9QZ4809D1246188', 57, '2018-01-01'),
('FD4SD7177N5768579', 63, '2018-01-01'),
('FM0FE5946Z4928169', 31, '2018-01-01'),
('FN0BA3450T4889775', 14, '2018-01-01'),
('FR7JR4558G3395864', 11, '2018-01-01'),
('GA3ST4261X1924195', 33, '2018-01-01'),
('GA9BM2551Q9358674', 18, '2018-01-01'),
('GJ3DM3781B8328275', 46, '2018-01-01'),
('GT2YX6694B7363186', 56, '2018-01-01'),
('GY2HQ9368V9998442', 67, '2018-01-01'),
('HN4RI4778X4378714', 3, '2018-01-01'),
('HW0DL7010M2691881', 62, '2018-01-01'),
('IB4SP6297O8477312', 51, '2018-01-01'),
('IW3UJ6230K2685758', 59, '2018-01-01'),
('JK0PM8923V6855368', 26, '2018-01-01'),
('LG1KO4262N3292967', 65, '2018-01-01'),
('MD7FN6351S1791155', 24, '2018-01-01'),
('ME5IC4160H1694579', 10, '2018-01-01'),
('ML2ZZ9098I9167343', 47, '2018-01-01'),
('NB2LH9979U2137384', 20, '2018-01-01'),
('NJ7UA6009B2974282', 53, '2018-01-01'),
('NR1MR5838X8838959', 17, '2018-01-01'),
('NR2RX6462E7124755', 5, '2018-01-01'),
('OD0UN9947S7777326', 37, '2018-01-01'),
('OF1LV5769K3949983', 23, '2018-01-01'),
('OL1LX9559F4951498', 2, '2018-01-01'),
('PA2GZ7960W5131223', 50, '2018-01-01'),
('PF2EN3182O6366959', 39, '2018-01-01'),
('PH8VA5290T4519916', 15, '2018-01-01'),
('PJ5LT4822E7773466', 54, '2018-01-01'),
('PL7PT3650E6565457', 44, '2018-01-01'),
('PV2AC0214K9943755', 19, '2018-01-01'),
('PY0SC2820X7161917', 68, '2018-01-01'),
('QQ5QM1437W9947521', 9, '2018-01-01'),
('QT8ES7817L4378339', 38, '2018-01-01'),
('RA5GU3907C4534398', 42, '2018-01-01'),
('RN3ED9067E3636215', 58, '2018-01-01'),
('RY4EL3850G2253922', 55, '2018-01-01'),
('SL7GG1334K6389728', 41, '2018-01-01'),
('SX9ES0540Q1457949', 8, '2018-01-01'),
('TL2NV1432M1853916', 29, '2018-01-01'),
('TW1PI0484S4344959', 13, '2018-01-01'),
('TX1CP3022E4318955', 30, '2018-01-01'),
('UZ8KH9414O8613314', 66, '2018-01-01'),
('VB1BH1295O3636438', 34, '2018-01-01'),
('VT5KO6957N5577183', 40, '2018-01-01'),
('WV5MG6413M5359358', 28, '2018-01-01'),
('XF0TR0578T1525216', 32, '2018-01-01'),
('XJ5NU4044H7715443', 22, '2018-01-01'),
('XJ9DY2417J9963158', 35, '2018-01-01'),
('XN4OK6759G9771382', 60, '2018-01-01'),
('YJ9FF6617E5758747', 16, '2018-01-01'),
('YY0LQ7590C2148311', 48, '2018-01-01'),
('ZO9UY9051L7728993', 27, '2018-01-01'),
('ZR7OV9887F1557328', 64, '2018-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `description` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `Oname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`description`, `price`, `Oname`) VALUES
('Automatic Transmission', 500, 'Automatic'),
('All Wheel Drive', 1200, 'AWD'),
('Floor Matts', 100, 'Matts'),
('Higher quality paint', 150, 'Paint'),
('Monitors blind spots; Upgrade Seats', 1500, 'Premium'),
('Sunroof added', 900, 'Sunroof'),
('Upgrade to  a higher tire grade', 600, 'Wheels'),
('Serious Satellite Radio', 250, 'XMRadio');

-- --------------------------------------------------------

--
-- Table structure for table `sold`
--

CREATE TABLE `sold` (
  `DateSold` date NOT NULL,
  `empid` int(15) NOT NULL,
  `invoiceNum` bigint(15) NOT NULL,
  `daysOnLot` int(11) NOT NULL,
  `priceSold` double NOT NULL,
  `Vin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sold`
--

INSERT INTO `sold` (`DateSold`, `empid`, `invoiceNum`, `daysOnLot`, `priceSold`, `Vin`) VALUES
('2018-02-23', 10011, 10006589231, 83, 38700, 'WJ6OP4202Q3983638'),
('2018-04-26', 10002, 10410986922, 116, 22500, 'UG3BW7337T4736717'),
('2018-04-26', 10002, 10505907419, 116, 22500, 'UG3BW7337T4736717'),
('2018-04-19', 10001, 10823986762, 109, 20000, 'DJ0HZ3377K6679913'),
('2018-01-18', 10006, 12025004870, 4, 27000, 'GW5DB6590R2443114'),
('2018-01-23', 10001, 22658894133, 64, 25500, 'PU2FW8042B8946147'),
('2018-01-15', 10001, 65217943258, 61, 21300, 'UF9EO5805B7636963'),
('2018-02-18', 10002, 65874123005, 37, 33000, 'VP2EC3071L5716928'),
('2018-02-10', 10004, 96633258741, 32, 19000, 'HL6ZU2478Z2711744');

--
-- Triggers `sold`
--
DELIMITER $$
CREATE TRIGGER `sellVehicle` BEFORE INSERT ON `sold` FOR EACH ROW BEGIN

DELETE FROM on_lot

WHERE on_lot.Vin=NEW.Vin;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `sold_by`
--

CREATE TABLE `sold_by` (
  `empid` int(15) NOT NULL,
  `invoiceNum` bigint(15) NOT NULL,
  `loanNum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sold_by`
--

INSERT INTO `sold_by` (`empid`, `invoiceNum`, `loanNum`) VALUES
(10011, 10006589231, 200145),
(10002, 10410986922, 0),
(10001, 10823986762, 668555),
(10006, 12025004870, 0),
(10001, 22658894133, 325910),
(10001, 65217943258, 652398),
(10002, 65874123005, 998321),
(10004, 96633258741, 102487);

-- --------------------------------------------------------

--
-- Table structure for table `trim_level`
--

CREATE TABLE `trim_level` (
  `level` varchar(10) NOT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trim_level`
--

INSERT INTO `trim_level` (`level`, `price`) VALUES
('SED-GT', 4500),
('SED-S', 0),
('SED-T', 2500),
('SUV-GT', 6500),
('SUV-S', 0),
('SUV-T', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `Vin` varchar(20) NOT NULL,
  `boughtPrice` double DEFAULT NULL,
  `listedPrice` double DEFAULT NULL,
  `lowestPrice` double DEFAULT NULL,
  `make` varchar(20) DEFAULT NULL,
  `model` varchar(20) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `Type` enum('On_Lot','Sold') NOT NULL DEFAULT 'On_Lot'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`Vin`, `boughtPrice`, `listedPrice`, `lowestPrice`, `make`, `model`, `color`, `year`, `Type`) VALUES
('2B3HD46R22H251459', 18250, 25250, 22000, 'Mazda', 'Mazda3', 'Silver', 2018, 'On_Lot'),
('AS5KO9274R9324785', 18825, 25100, 21648.75, 'Mazda', 'CX3', 'Blue', 2018, 'On_Lot'),
('AW5WV4594K5789113', 16537.5, 22050, 19018.12, 'Mazda', 'CX3', 'Red', 2018, 'On_Lot'),
('BH3FU7674R1142251', 17325, 23100, 19923.75, 'Mazda', 'Mazda3', 'Silver', 2018, 'On_Lot'),
('CR9HF3393D1449856', 17587.5, 23450, 20225.62, 'Mazda', 'Mazda3', 'Silver', 2018, 'On_Lot'),
('CX0WQ0994K7761881', 17775, 23700, 20441.25, 'Mazda', 'Mazda3', 'Red', 2018, 'On_Lot'),
('DC4PP9823V4153295', 21375, 28500, 24581.25, 'Mazda', 'CX5', 'Blue', 2018, 'On_Lot'),
('DJ0HZ3377K6679913', 15150, 20200, 17422.5, 'Mazda', 'Mazda3', 'Silver', 2017, 'Sold'),
('EH9QZ4809D1246188', 24337.5, 32450, 27988.13, 'Mazda', 'CX5', 'Black', 2018, 'On_Lot'),
('FD4SD7177N5768579', 20212.5, 26950, 23244.38, 'Mazda', 'CX5', 'Red', 2018, 'On_Lot'),
('FM0FE5946Z4928169', 19800, 26400, 22770, 'Mazda', 'Mazda6', 'Black', 2018, 'On_Lot'),
('FN0BA3450T4889775', 15300, 20400, 17595, 'Mazda', 'Mazda3', 'Red', 2018, 'On_Lot'),
('FR7JR4558G3395864', 18075, 24100, 20786.25, 'Mazda', 'Mazda3', 'Red', 2018, 'On_Lot'),
('GA3ST4261X1924195', 18750, 25000, 21562.5, 'Mazda', 'Mazda6', 'Silver', 2018, 'On_Lot'),
('GA9BM2551Q9358674', 17625, 23500, 20268.75, 'Mazda', 'Mazda3', 'Black', 2017, 'On_Lot'),
('GJ3DM3781B8328275', 22087.5, 29450, 25400.65, 'Mazda', 'CX3', 'Titanium', 2018, 'On_Lot'),
('GT2YX6694B7363186', 23737.5, 31650, 27298.13, 'Mazda', 'CX5', 'Black', 2018, 'On_Lot'),
('GW5DB6590R2443114', 20775, 27700, 23891.25, 'Mazda', 'Mazda6', 'Blue', 2018, 'Sold'),
('GY2HQ9368V9998442', 29775, 39700, 34241.25, 'Mazda', 'CX9', 'Titanium', 2018, 'On_Lot'),
('HL6ZU2478Z2711744', 14587.5, 19450, 16775.62, 'Mazda', 'Mazda3', 'Red', 2018, 'Sold'),
('HN4RI4778X4378714', 18000, 24000, 20700, 'Mazda', 'Mazda3', 'Black', 2018, 'On_Lot'),
('HW0DL7010M2691881', 19575, 26100, 22511.25, 'Mazda', 'CX5', 'Red', 2018, 'On_Lot'),
('IB4SP6297O8477312', 17437.5, 23250, 20053.12, 'Mazda', 'CX3', 'Red', 2018, 'On_Lot'),
('IH5EV0698C8755657', 20550, 27400, 23632.5, 'Mazda', 'CX3', 'Silver', 2018, 'Sold'),
('IW3UJ6230K2685758', 22275, 29700, 25616.25, 'Mazda', 'CX5', 'Blue', 2018, 'On_Lot'),
('JK0PM8923V6855368', 20625, 27500, 23718.75, 'Mazda', 'Mazda6', 'Blue', 2018, 'On_Lot'),
('LG1KO4262N3292967', 20887.5, 27850, 24020.62, 'Mazda', 'CX5', 'Silver', 2017, 'On_Lot'),
('MD7FN6351S1791155', 20550, 27400, 23632.5, 'Mazda', 'Mazda6', 'Titanium', 2018, 'On_Lot'),
('ME5IC4160H1694579', 17137.5, 22850, 19708.15, 'Mazda', 'Mazda3', 'Blue', 2018, 'On_Lot'),
('ML2ZZ9098I9167343', 22575, 30100, 25961.25, 'Mazda', 'CX3', 'Blue', 2018, 'On_Lot'),
('MM6HA2805E1453538', 21187.5, 28250, 24365.65, 'Mazda', 'Mazda6', 'Titanium', 2018, 'Sold'),
('MZ0LT5127I3948746', 17137.5, 22850, 19708.15, 'Mazda', 'Mazda3', 'Red', 2018, 'Sold'),
('NB2LH9979U2137384', 16725, 22300, 19233.75, 'Mazda', 'Mazda3', 'Silver', 2017, 'On_Lot'),
('NJ7UA6009B2974282', 16350, 21800, 18802.5, 'Mazda', 'CX3', 'Red', 2018, 'On_Lot'),
('NR1MR5838X8838959', 16312.5, 21750, 18759.35, 'Mazda', 'Mazda3', 'Black', 2017, 'On_Lot'),
('NR2RX6462E7124755', 15937.5, 21250, 18328.12, 'Mazda', 'Mazda3', 'Silver', 2018, 'On_Lot'),
('OD0UN9947S7777326', 20437.5, 27250, 23503.15, 'Mazda', 'Miata', 'Titanium', 2018, 'On_Lot'),
('OF1LV5769K3949983', 21450, 28600, 24667.5, 'Mazda', 'Mazda6', 'Titanium', 2018, 'On_Lot'),
('OL1LX9559F4951498', 18637.5, 24850, 21433.15, 'Mazda', 'Mazda3', 'Black', 2018, 'On_Lot'),
('PA2GZ7960W5131223', 17925, 23900, 20613.75, 'Mazda', 'CX3', 'Red', 2018, 'On_Lot'),
('PF2EN3182O6366959', 20962.5, 27950, 24106.85, 'Mazda', 'Miata', 'Red', 2018, 'On_Lot'),
('PH8VA5290T4519916', 15450, 20600, 17767.5, 'Mazda', 'Mazda3', 'Red', 2018, 'On_Lot'),
('PJ5LT4822E7773466', 17925, 23900, 20613.75, 'Mazda', 'CX3', 'Red', 2017, 'On_Lot'),
('PL7PT3650E6565457', 21337.5, 28450, 24538.25, 'Mazda', 'CX3', 'Silver', 2018, 'On_Lot'),
('PU2FW8042B8946147', 19200, 25600, 22080, 'Mazda', 'Miata', 'Black', 2017, 'Sold'),
('PV2AC0214K9943755', 15375, 20500, 17681.25, 'Mazda', 'Mazda3', 'Silver', 2017, 'On_Lot'),
('PY0SC2820X7161917', 23850, 31800, 27427.5, 'Mazda', 'CX9', 'Blue', 2017, 'On_Lot'),
('QQ5QM1437W9947521', 15562.5, 20750, 17896.85, 'Mazda', 'Mazda3', 'Blue', 2018, 'On_Lot'),
('QQ5YU4634D9835796', 20775, 27700, 23891.25, 'Mazda', 'CX3', 'Silver', 2018, 'Sold'),
('QT8ES7817L4378339', 20212.5, 26950, 23244.35, 'Mazda', 'Miata', 'Blue', 2018, 'On_Lot'),
('RA5GU3907C4534398', 20550, 27400, 23632.5, 'Mazda', 'CX3', 'Black', 2018, 'On_Lot'),
('RD9PW3972K3792631', 17400, 23200, 20010, 'Mazda', 'Mazda6', 'Gold', 2017, 'Sold'),
('RN3ED9067E3636215', 22575, 30100, 25961.25, 'Mazda', 'CX5', 'Titanium', 2018, 'On_Lot'),
('RY4EL3850G2253922', 24562.5, 32750, 28246.87, 'Mazda', 'CX5', 'Red', 2018, 'On_Lot'),
('SL7GG1334K6389728', 19875, 26500, 22856.25, 'Mazda', 'Miata', 'Red', 2018, 'On_Lot'),
('SX9ES0540Q1457949', 17062.5, 22750, 19621.85, 'Mazda', 'Mazda3', 'Gold', 2018, 'On_Lot'),
('TL2NV1432M1853916', 20175, 26900, 23201.25, 'Mazda', 'Mazda6', 'Red', 2018, 'On_Lot'),
('TW1PI0484S4344959', 16500, 22000, 18975, 'Mazda', 'Mazda3', 'Red', 2018, 'On_Lot'),
('TX1CP3022E4318955', 20437.5, 27250, 23503.15, 'Mazda', 'Mazda6', 'Red', 2018, 'On_Lot'),
('UF9EO5805B7636963', 16125, 21500, 18543.75, 'Mazda', 'Mazda3', 'Silver', 2018, 'Sold'),
('UG3BW7337T4736717', 16987.5, 22650, 19535.65, 'Mazda', 'Mazda3', 'Black', 2018, 'Sold'),
('UZ8KH9414O8613314', 17962.5, 23950, 20656.88, 'Mazda', 'CX5', 'Gold', 2017, 'On_Lot'),
('VB1BH1295O3636438', 17625, 23500, 20268.75, 'Mazda', 'Mazda6', 'Silver', 2018, 'On_Lot'),
('VP2EC3071L5716928', 24750, 33000, 28462.5, 'Mazda', 'CX5', 'Black', 2018, 'Sold'),
('VT5KO6957N5577183', 20550, 27400, 23632.5, 'Mazda', 'Miata', 'Red', 2018, 'On_Lot'),
('WJ6OP4202Q3983638', 29062.5, 38750, 33421.88, 'Mazda', 'CX9', 'Blue', 2017, 'Sold'),
('WV5MG6413M5359358', 20775, 27700, 23891.25, 'Mazda', 'Mazda6', 'Red', 2018, 'On_Lot'),
('XF0TR0578T1525216', 18900, 25200, 21735, 'Mazda', 'Mazda6', 'Black', 2018, 'On_Lot'),
('XJ5NU4044H7715443', 13462.5, 17950, 15481.87, 'Mazda', 'Mazda3', 'Silver', 2017, 'On_Lot'),
('XJ9DY2417J9963158', 19950, 26600, 22942.5, 'Mazda', 'Mazda6', 'Silver', 2017, 'On_Lot'),
('XN4OK6759G9771382', 21262.5, 28350, 24451.88, 'Mazda', 'CX5', 'Blue', 2018, 'On_Lot'),
('YJ9FF6617E5758747', 14812.5, 19750, 17034.35, 'Mazda', 'Mazda3', 'Black', 2018, 'On_Lot'),
('YY0LQ7590C2148311', 21450, 28600, 24667.5, 'Mazda', 'CX3', 'Blue', 2018, 'On_Lot'),
('ZO9UY9051L7728993', 21000, 28000, 24150, 'Mazda', 'Mazda6', 'Blue', 2018, 'On_Lot'),
('ZR7OV9887F1557328', 19425, 25900, 22338.75, 'Mazda', 'CX5', 'Black', 2017, 'On_Lot');

-- --------------------------------------------------------

--
-- Table structure for table `worksin`
--

CREATE TABLE `worksin` (
  `empid` int(20) NOT NULL,
  `did` int(20) NOT NULL,
  `started` date NOT NULL,
  `ended` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `worksin`
--

INSERT INTO `worksin` (`empid`, `did`, `started`, `ended`) VALUES
(10002, 101, '2018-01-01', '0000-00-00'),
(10003, 101, '2018-01-01', '0000-00-00'),
(10004, 101, '2018-01-01', '0000-00-00'),
(10005, 101, '2018-01-01', '2018-04-02'),
(10006, 101, '2018-01-01', '0000-00-00'),
(10008, 101, '2018-01-01', '0000-00-00'),
(10010, 102, '2018-01-01', '2018-02-12'),
(10011, 102, '2018-01-01', '0000-00-00'),
(10012, 103, '2018-01-01', '0000-00-00'),
(10013, 103, '2018-01-01', '0000-00-00'),
(10014, 103, '2018-01-01', '0000-00-00'),
(10093, 101, '2018-04-24', '0000-00-00'),
(15902, 101, '2018-04-24', '0000-00-00'),
(19070, 101, '2018-04-24', '0000-00-00'),
(54090, 101, '2018-04-24', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`did`),
  ADD UNIQUE KEY `dname` (`dname`),
  ADD KEY `did` (`did`,`dname`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empid`),
  ADD UNIQUE KEY `SSN` (`SSN`),
  ADD KEY `name` (`name`,`phone`,`email`),
  ADD KEY `empid` (`empid`,`name`,`phone`,`email`);

--
-- Indexes for table `installed`
--
ALTER TABLE `installed`
  ADD KEY `level` (`level`),
  ADD KEY `Oname` (`Oname`),
  ADD KEY `Vin` (`Vin`);

--
-- Indexes for table `manages`
--
ALTER TABLE `manages`
  ADD PRIMARY KEY (`empid`,`did`),
  ADD KEY `did` (`did`) USING BTREE,
  ADD KEY `empid` (`empid`) USING BTREE;

--
-- Indexes for table `on_lot`
--
ALTER TABLE `on_lot`
  ADD PRIMARY KEY (`Vin`),
  ADD UNIQUE KEY `Spot` (`Spot`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`Oname`);

--
-- Indexes for table `sold`
--
ALTER TABLE `sold`
  ADD PRIMARY KEY (`invoiceNum`),
  ADD KEY `Vin` (`Vin`),
  ADD KEY `empid` (`empid`,`Vin`);

--
-- Indexes for table `sold_by`
--
ALTER TABLE `sold_by`
  ADD UNIQUE KEY `invoiceNum` (`invoiceNum`),
  ADD KEY `empid` (`empid`,`invoiceNum`);

--
-- Indexes for table `trim_level`
--
ALTER TABLE `trim_level`
  ADD PRIMARY KEY (`level`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`Vin`),
  ADD KEY `Vin` (`Vin`,`listedPrice`,`make`,`model`,`color`,`year`),
  ADD KEY `make` (`make`),
  ADD KEY `model` (`model`);

--
-- Indexes for table `worksin`
--
ALTER TABLE `worksin`
  ADD PRIMARY KEY (`empid`,`did`),
  ADD UNIQUE KEY `empid` (`empid`),
  ADD KEY `did` (`did`) USING BTREE;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `installed`
--
ALTER TABLE `installed`
  ADD CONSTRAINT `installed_ibfk_1` FOREIGN KEY (`level`) REFERENCES `trim_level` (`level`),
  ADD CONSTRAINT `installed_ibfk_2` FOREIGN KEY (`Oname`) REFERENCES `options` (`Oname`),
  ADD CONSTRAINT `installed_ibfk_3` FOREIGN KEY (`Vin`) REFERENCES `vehicle` (`Vin`);

--
-- Constraints for table `manages`
--
ALTER TABLE `manages`
  ADD CONSTRAINT `manages_ibfk_1` FOREIGN KEY (`empid`) REFERENCES `employee` (`empid`),
  ADD CONSTRAINT `manages_ibfk_2` FOREIGN KEY (`did`) REFERENCES `department` (`did`);

--
-- Constraints for table `on_lot`
--
ALTER TABLE `on_lot`
  ADD CONSTRAINT `on_lot_ibfk_1` FOREIGN KEY (`Vin`) REFERENCES `vehicle` (`Vin`);

--
-- Constraints for table `sold`
--
ALTER TABLE `sold`
  ADD CONSTRAINT `sold_ibfk_1` FOREIGN KEY (`Vin`) REFERENCES `vehicle` (`Vin`);

--
-- Constraints for table `worksin`
--
ALTER TABLE `worksin`
  ADD CONSTRAINT `worksin_ibfk_1` FOREIGN KEY (`empid`) REFERENCES `employee` (`empid`),
  ADD CONSTRAINT `worksin_ibfk_2` FOREIGN KEY (`did`) REFERENCES `department` (`did`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
