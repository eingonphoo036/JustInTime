-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2023 at 07:39 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `floatfry`
--

-- --------------------------------------------------------

--
-- Table structure for table `certification_table`
--

CREATE TABLE `certification_table` (
  `Certification_Table_ID` int(20) NOT NULL,
  `Certification_ID` varchar(20) NOT NULL,
  `Stamper_ID` varchar(20) DEFAULT NULL,
  `Machine_Type` varchar(20) DEFAULT NULL,
  `Product_ID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `certification_table`
--

INSERT INTO `certification_table` (`Certification_Table_ID`, `Certification_ID`, `Stamper_ID`, `Machine_Type`, `Product_ID`) VALUES
(1, 'C01', '101', 'A1', 'P01'),
(2, 'C01', '101', 'A2', 'P02'),
(3, 'C01', '101', 'A3', 'P03'),
(4, 'C01', '101', 'A4', 'P04'),
(5, 'C02', '102', 'A5', 'P03'),
(6, 'C02', '102', 'A6', 'P01'),
(7, 'C02', '102', 'A7', 'P04'),
(8, 'C02', '102', 'A1', 'P02'),
(9, 'C03', '103', 'A2', 'P01'),
(10, 'C03', '103', 'A3', 'P03'),
(11, 'C03', '103', 'A4', 'P04'),
(12, 'C03', '103', 'A5', 'P02'),
(13, 'C04', '104', 'A6', 'P03'),
(14, 'C04', '104', 'A7', 'P02'),
(15, 'C04', '104', 'A1', 'P04'),
(16, 'C04', '104', 'A2', 'P01'),
(17, 'C05', '105', 'A3', 'P02'),
(18, 'C05', '105', 'A4', 'P04'),
(19, 'C05', '105', 'A5', 'P03'),
(20, 'C05', '105', 'A6', 'P01'),
(21, 'C06', '106', 'A7', 'P03'),
(22, 'C06', '106', 'A1', 'P02'),
(23, 'C06', '106', 'A2', 'P01'),
(24, 'C06', '106', 'A3', 'P04'),
(25, 'C07', '107', 'A4', 'P04'),
(26, 'C07', '107', 'A5', 'P01'),
(27, 'C07', '107', 'A6', 'P03'),
(28, 'C07', '107', 'A7', 'P02'),
(29, 'C08', '108', 'A7', 'P01'),
(30, 'C08', '108', 'A1', 'P03'),
(31, 'C08', '108', 'A5', 'P02'),
(32, 'C08', '108', 'A4', 'P04');

-- --------------------------------------------------------

--
-- Table structure for table `customerorder`
--

CREATE TABLE `customerorder` (
  `Product_Line` varchar(20) NOT NULL,
  `quantity` int(20) DEFAULT NULL,
  `Materials` text DEFAULT NULL,
  `design_pattern` text DEFAULT NULL,
  `status` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customerorder`
--

INSERT INTO `customerorder` (`Product_Line`, `quantity`, `Materials`, `design_pattern`, `status`) VALUES
('Cardamon', 3, 'Gold', 'dding Handaler', 'In Progress'),
('Chive TX5', 5, 'Stainless Steel', 'Trimming', 'In Progress'),
('Clove TM4', 3, 'Cast Iron', 'Logo Pasting', 'Done'),
('Saffron', 5, 'Irons', 'Trimming', 'In Progress');

-- --------------------------------------------------------

--
-- Table structure for table `machines`
--

CREATE TABLE `machines` (
  `Machine_Table_ID` int(11) NOT NULL,
  `Machine_ID` varchar(14) NOT NULL,
  `Machine_Type` varchar(12) NOT NULL,
  `Machine_Name` tinytext NOT NULL,
  `Machine_Capacity_PerHour` int(11) NOT NULL,
  `Machine_Quantity` int(11) NOT NULL,
  `Machine_Status` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `machines`
--

INSERT INTO `machines` (`Machine_Table_ID`, `Machine_ID`, `Machine_Type`, `Machine_Name`, `Machine_Capacity_PerHour`, `Machine_Quantity`, `Machine_Status`) VALUES
(1, 'M001', 'A1', 'ConveyingComponents', 100, 15, 'running'),
(2, 'M002', 'A1', 'ConveyingComponents', 100, 15, 'running'),
(3, 'M003', 'A1', 'ConveyingComponents', 100, 15, 'running'),
(4, 'M004', 'A1', 'ConveyingComponents', 100, 15, 'running'),
(5, 'M005', 'A1', 'ConveyingComponents', 100, 15, 'running'),
(6, 'M006', 'A1', 'ConveyingComponents', 100, 15, 'running'),
(7, 'M007', 'A1', 'ConveyingComponents', 100, 15, 'running'),
(8, 'M008', 'A1', 'ConveyingComponents', 100, 15, 'running'),
(9, 'M009', 'A1', 'ConveyingComponents', 100, 15, 'running'),
(10, 'M010', 'A1', 'ConveyingComponents', 100, 15, 'running'),
(11, 'M011', 'A1', 'ConveyingComponents', 100, 15, 'running'),
(12, 'M012', 'A1', 'ConveyingComponents', 100, 15, 'running'),
(13, 'M013', 'A1', 'ConveyingComponents', 100, 15, 'running'),
(14, 'M014', 'A1', 'ConveyingComponents', 100, 15, 'running'),
(15, 'M015', 'A1', 'ConveyingComponents', 100, 15, 'running'),
(16, 'M016', 'A2', 'Assembling Bases', 80, 15, 'running'),
(17, 'M017', 'A2', 'Assembling Bases', 80, 15, 'running'),
(18, 'M018', 'A2', 'Assembling Bases', 80, 15, 'running'),
(19, 'M019', 'A2', 'Assembling Bases', 80, 15, 'running'),
(20, 'M020', 'A2', 'Assembling Bases', 80, 15, 'running'),
(21, 'M021', 'A2', 'Assembling Bases', 80, 15, 'running'),
(22, 'M022', 'A2', 'Assembling Bases', 80, 15, 'running'),
(23, 'M023', 'A2', 'Assembling Bases', 80, 15, 'running'),
(24, 'M024', 'A2', 'Assembling Bases', 80, 15, 'running'),
(25, 'M025', 'A2', 'Assembling Bases', 80, 15, 'running'),
(26, 'M026', 'A2', 'Assembling Bases', 80, 15, 'running'),
(27, 'M027', 'A2', 'Assembling Bases', 80, 15, 'running'),
(28, 'M028', 'A2', 'Assembling Bases', 80, 15, 'running'),
(29, 'M029', 'A2', 'Assembling Bases', 80, 15, 'running'),
(30, 'M030', 'A2', 'Assembling Bases', 80, 15, 'running'),
(31, 'M031', 'A3', 'Pressing', 90, 15, 'running'),
(32, 'M032', 'A3', 'Pressing', 90, 15, 'running'),
(33, 'M033', 'A3', 'Pressing', 90, 15, 'running'),
(34, 'M034', 'A3', 'Pressing', 90, 15, 'running'),
(35, 'M035', 'A3', 'Pressing', 90, 15, 'running'),
(36, 'M036', 'A3', 'Pressing', 90, 15, 'running'),
(37, 'M037', 'A3', 'Pressing', 90, 15, 'running'),
(38, 'M038', 'A3', 'Pressing', 90, 15, 'running'),
(39, 'M039', 'A3', 'Pressing', 90, 15, 'running'),
(40, 'M040', 'A3', 'Pressing', 90, 15, 'running'),
(41, 'M041', 'A3', 'Pressing', 90, 15, 'running'),
(42, 'M042', 'A3', 'Pressing', 90, 15, 'running'),
(43, 'M043', 'A3', 'Pressing', 90, 15, 'running'),
(44, 'M044', 'A3', 'Pressing', 90, 15, 'running'),
(45, 'M045', 'A3', 'Pressing', 90, 15, 'running'),
(46, 'M046', 'A4', 'Coating Machines', 70, 15, 'running'),
(47, 'M047', 'A4', 'Coating Machines', 70, 15, 'running'),
(48, 'M048', 'A4', 'Coating Machines', 70, 15, 'running'),
(49, 'M049', 'A4', 'Coating Machines', 70, 15, 'running'),
(50, 'M050', 'A4', 'Coating Machines', 70, 15, 'running'),
(51, 'M051', 'A4', 'Coating Machines', 70, 15, 'running'),
(52, 'M052', 'A4', 'Coating Machines', 70, 15, 'running'),
(53, 'M053', 'A4', 'Coating Machines', 70, 15, 'running'),
(54, 'M054', 'A4', 'Coating Machines', 70, 15, 'running'),
(55, 'M055', 'A4', 'Coating Machines', 70, 15, 'running'),
(56, 'M056', 'A4', 'Coating Machines', 70, 15, 'running'),
(57, 'M057', 'A4', 'Coating Machines', 70, 15, 'running'),
(58, 'M058', 'A4', 'Coating Machines', 70, 15, 'running'),
(59, 'M059', 'A4', 'Coating Machines', 70, 15, 'running'),
(60, 'M060', 'A4', 'Coating Machines', 70, 15, 'running'),
(61, 'M061', 'A5', 'Platter Printing', 100, 15, 'running'),
(62, 'M062', 'A5', 'Platter Printing', 100, 15, 'running'),
(63, 'M063', 'A5', 'Platter Printing', 100, 15, 'running'),
(64, 'M064', 'A5', 'Platter Printing', 100, 15, 'running'),
(65, 'M065', 'A5', 'Platter Printing', 100, 15, 'running'),
(66, 'M066', 'A5', 'Platter Printing', 100, 15, 'running'),
(67, 'M067', 'A5', 'Platter Printing', 100, 15, 'running'),
(68, 'M068', 'A5', 'Platter Printing', 100, 15, 'running'),
(69, 'M069', 'A5', 'Platter Printing', 100, 15, 'running'),
(70, 'M070', 'A5', 'Platter Printing', 100, 15, 'running'),
(71, 'M071', 'A5', 'Platter Printing', 100, 15, 'running'),
(72, 'M072', 'A5', 'Platter Printing', 100, 15, 'running'),
(73, 'M073', 'A5', 'Platter Printing', 100, 15, 'running'),
(74, 'M074', 'A5', 'Platter Printing', 100, 15, 'running'),
(75, 'M075', 'A5', 'Platter Printing', 100, 15, 'running'),
(76, 'M076', 'A6', 'Cutting', 90, 15, 'running'),
(77, 'M077', 'A6', 'Cutting', 90, 15, 'running'),
(78, 'M078', 'A6', 'Cutting', 90, 15, 'running'),
(79, 'M079', 'A6', 'Cutting', 90, 15, 'running'),
(80, 'M080', 'A6', 'Cutting', 90, 15, 'running'),
(81, 'M081', 'A6', 'Cutting', 90, 15, 'running'),
(82, 'M082', 'A6', 'Cutting', 90, 15, 'running'),
(83, 'M083', 'A6', 'Cutting', 90, 15, 'running'),
(84, 'M084', 'A6', 'Cutting', 90, 15, 'running'),
(85, 'M085', 'A6', 'Cutting', 90, 15, 'running'),
(86, 'M086', 'A6', 'Cutting', 90, 15, 'running'),
(87, 'M087', 'A6', 'Cutting', 90, 15, 'running'),
(88, 'M088', 'A6', 'Cutting', 90, 15, 'running'),
(89, 'M089', 'A6', 'Cutting', 90, 15, 'running'),
(90, 'M090', 'A6', 'Cutting', 90, 15, 'running'),
(91, 'M091', 'A7', 'Heat Seal Joining', 80, 15, 'running'),
(92, 'M092', 'A7', 'Heat Seal Joining', 80, 15, 'running'),
(93, 'M093', 'A7', 'Heat Seal Joining', 80, 15, 'running'),
(94, 'M094', 'A7', 'Heat Seal Joining', 80, 15, 'running'),
(95, 'M095', 'A7', 'Heat Seal Joining', 80, 15, 'running'),
(96, 'M096', 'A7', 'Heat Seal Joining', 80, 15, 'running'),
(97, 'M097', 'A7', 'Heat Seal Joining', 80, 15, 'running'),
(98, 'M098', 'A7', 'Heat Seal Joining', 80, 15, 'running'),
(99, 'M099', 'A7', 'Heat Seal Joining', 80, 15, 'running'),
(100, 'M100', 'A7', 'Heat Seal Joining', 80, 15, 'running'),
(101, 'M101', 'A7', 'Heat Seal Joining', 80, 15, 'running'),
(102, 'M102', 'A7', 'Heat Seal Joining', 80, 15, 'running'),
(103, 'M103', 'A7', 'Heat Seal Joining', 80, 15, 'running'),
(104, 'M104', 'A7', 'Heat Seal Joining', 80, 15, 'running'),
(105, 'M105', 'A7', 'Heat Seal Joining', 80, 15, 'running');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `Material_Table_ID` int(11) NOT NULL,
  `Material_ID` varchar(14) NOT NULL,
  `Material_Type` tinytext NOT NULL,
  `Material_Quantity` int(11) NOT NULL,
  `Material_Availability` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`Material_Table_ID`, `Material_ID`, `Material_Type`, `Material_Quantity`, `Material_Availability`) VALUES
(1, 'T01', 'Aluminum', 150, 'In stock'),
(2, 'T02', 'Carbon Steel', 145, 'On the way'),
(3, 'T03', 'Stainless Steel', 130, 'On the way'),
(4, 'T04', 'Cast Iron', 120, 'In stock');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Product_ID` int(11) NOT NULL,
  `colour` text DEFAULT NULL,
  `size` text DEFAULT NULL,
  `material` text DEFAULT NULL,
  `machine` text DEFAULT NULL,
  `Technical_Specification` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_ID`, `colour`, `size`, `material`, `machine`, `Technical_Specification`) VALUES
(4, 'Yellow', '5 inches', 'steel', 'Ploter', 'Must have two handler'),
(5, 'grey', '7\"', 'Steel', 'Assembling Bases', 'beautiful');

-- --------------------------------------------------------

--
-- Table structure for table `productline`
--

CREATE TABLE `productline` (
  `Product_Line_ID` varchar(20) NOT NULL,
  `Product_ID` varchar(20) DEFAULT NULL,
  `Material_ID` varchar(20) DEFAULT NULL,
  `First_MachineType` varchar(20) DEFAULT NULL,
  `Second_MachineType` varchar(20) DEFAULT NULL,
  `Third_MachineType` varchar(20) DEFAULT NULL,
  `Fourth_MachineType` varchar(20) DEFAULT NULL,
  `Fifth_MachineType` varchar(20) DEFAULT NULL,
  `Sixth_MachineType` varchar(20) DEFAULT NULL,
  `Seventh_MachineType` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productline`
--

INSERT INTO `productline` (`Product_Line_ID`, `Product_ID`, `Material_ID`, `First_MachineType`, `Second_MachineType`, `Third_MachineType`, `Fourth_MachineType`, `Fifth_MachineType`, `Sixth_MachineType`, `Seventh_MachineType`) VALUES
('1', 'P01', 'T01', 'A1', 'A2', 'A3', 'A7', 'A5', 'A6', 'A4'),
('2', 'P02', 'T02', 'A2', 'A1', 'A7', 'A3', 'A4', 'A5', 'A6'),
('3', 'P03', 'T01', 'A3', 'A2', 'A5', 'A6', 'A7', 'A4', 'A1'),
('4', 'P04', 'T02', 'A4', 'A6', 'A2', 'A1', 'A5', 'A3', 'A7');

-- --------------------------------------------------------

--
-- Table structure for table `shifttable`
--

CREATE TABLE `shifttable` (
  `Shift_Table_ID` int(11) NOT NULL,
  `Stamper_ID` varchar(20) DEFAULT NULL,
  `Stamper_Name` text DEFAULT NULL,
  `Machine_Type` text DEFAULT NULL,
  `Machine_ID` varchar(20) DEFAULT NULL,
  `Shift` text DEFAULT NULL,
  `Day` text DEFAULT NULL,
  `product` varchar(20) DEFAULT NULL,
  `Time` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shifttable`
--

INSERT INTO `shifttable` (`Shift_Table_ID`, `Stamper_ID`, `Stamper_Name`, `Machine_Type`, `Machine_ID`, `Shift`, `Day`, `product`, `Time`) VALUES
(2, '106', 'Lizzy_Squire', 'A1', 'M007', 'AM', '2023-11-27', 'Cardamon', '06:00-14:00'),
(3, '104', 'Sevval_Isikirik', 'A6', 'M079', 'PM', '2023-11-29', 'Saffron XP', '14:00-22:00'),
(4, '101', 'Mattie_Float', 'A2', 'M016', 'AM', '2023-11-08', 'Saffron XP', '06:00-14:00');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `Staff_ID` int(6) NOT NULL,
  `Staff_Name` text DEFAULT NULL,
  `Staff_UserName` text DEFAULT NULL,
  `Staff_Password` varchar(6) DEFAULT NULL,
  `Job_Title` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Staff_ID`, `Staff_Name`, `Staff_UserName`, `Staff_Password`, `Job_Title`) VALUES
(1, 'Fmattie', 'Mattie_Float', 'M123', 'stamper'),
(2, 'Walton', 'Alton_Wright', 'A123', 'stamper'),
(3, 'Cmichael', 'Michael_Cook', 'MI123', 'stamper'),
(4, 'Isevval', 'Sevval_Isikirik', 'S123', 'stamper'),
(5, 'Kbeth', 'Beth_Knight', 'B123', 'stamper'),
(6, 'Slizzy', 'Lizzy_Squire', 'L123', 'stamper'),
(7, 'Tsmith', 'Smith_Turner', 'SI123', 'stamper'),
(8, 'Tadam', 'Adam_Taylor', 'AD123', 'stamper'),
(9, 'Fabby', 'Abby_Float', 'AB123', 'Floor_Manager'),
(10, 'Fally', 'Ally_Float', 'AL123', 'prodees'),
(11, 'Kemily', 'Emily_Knight', 'E123', 'prodees'),
(12, 'Ijoelle', 'Joelle_Ibrahim', 'J123', 'prodees'),
(13, 'Tjack', 'Jack_Turner', 'JA123', 'prodees'),
(14, 'Njakub', 'Jakub_Nowicki', 'JAK123', 'POs'),
(15, 'Pyoon', 'Yoon_Phyo', 'Y123', 'POs'),
(16, 'Pei', 'Ei_Phoo', 'EI123', 'POs'),
(17, 'Fannabel', 'Annabel_Float', 'AN123', 'Production_Manager'),
(18, 'Pkarina', 'Karina_Panesar', 'K123', 'Production_Manager'),
(19, 'Ferick', 'Erick_Fletcher', 'ER123', 'Production_Manager'),
(20, 'david', 'David_Float', 'D123', 'Marketing_Manager');

-- --------------------------------------------------------

--
-- Table structure for table `stamper`
--

CREATE TABLE `stamper` (
  `Stamper_ID` int(20) NOT NULL,
  `Staff_Username` varchar(20) DEFAULT NULL,
  `Stamper_Name` text NOT NULL,
  `Certification_ID` varchar(20) DEFAULT NULL,
  `Shift_ID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stamper`
--

INSERT INTO `stamper` (`Stamper_ID`, `Staff_Username`, `Stamper_Name`, `Certification_ID`, `Shift_ID`) VALUES
(101, 'Fmattie', 'Mattie_Float', 'C01', 'H01'),
(102, 'Walton', 'Alton_Wright', 'C02', 'H02'),
(103, 'Cmichael', 'Michael_Cook', 'C03', 'H01'),
(104, 'Isevval', 'Sevval_Isikirik', 'C04', 'H02'),
(105, 'Kbeth', 'Beth_Knight', 'C05', 'H01'),
(106, 'Slizzy', 'Lizzy_Squire', 'C06', 'H02'),
(107, 'Tsmith', 'Smith_Turner', 'C07', 'H01'),
(108, 'Tadam', 'Adam_Taylor', 'C08', 'H02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `certification_table`
--
ALTER TABLE `certification_table`
  ADD PRIMARY KEY (`Certification_Table_ID`);

--
-- Indexes for table `customerorder`
--
ALTER TABLE `customerorder`
  ADD PRIMARY KEY (`Product_Line`);

--
-- Indexes for table `machines`
--
ALTER TABLE `machines`
  ADD PRIMARY KEY (`Machine_Table_ID`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`Material_Table_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_ID`);

--
-- Indexes for table `productline`
--
ALTER TABLE `productline`
  ADD PRIMARY KEY (`Product_Line_ID`);

--
-- Indexes for table `shifttable`
--
ALTER TABLE `shifttable`
  ADD PRIMARY KEY (`Shift_Table_ID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`Staff_ID`);

--
-- Indexes for table `stamper`
--
ALTER TABLE `stamper`
  ADD PRIMARY KEY (`Stamper_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `machines`
--
ALTER TABLE `machines`
  MODIFY `Machine_Table_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `Material_Table_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Product_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shifttable`
--
ALTER TABLE `shifttable`
  MODIFY `Shift_Table_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
