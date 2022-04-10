-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2021 at 06:38 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database cw er diagram amazon imandi`
--

-- --------------------------------------------------------

--
-- Table structure for table `0rder`
--

CREATE TABLE `0rder` (
  `OrdId` char(6) NOT NULL,
  `ShipDate` date DEFAULT NULL,
  `OrdDate` date DEFAULT NULL,
  `ProdAmount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `0rder`
--

INSERT INTO `0rder` (`OrdId`, `ShipDate`, `OrdDate`, `ProdAmount`) VALUES
('1', '2020-09-14', '2020-09-01', 20.24),
('2', '2019-08-11', '2019-07-29', 50),
('3', '2018-09-28', '2018-09-20', 80),
('4', '2019-05-15', '2019-05-10', 100),
('5', '2020-11-01', '2020-10-29', 10);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustId` char(4) NOT NULL,
  `MemId` char(4) NOT NULL,
  `MemName` varchar(30) DEFAULT NULL,
  `CountryAddr` varchar(40) DEFAULT NULL,
  `EmailAddr` varchar(30) DEFAULT NULL,
  `Password` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustId`, `MemId`, `MemName`, `CountryAddr`, `EmailAddr`, `Password`) VALUES
('1', '1', 'Jeff', 'No34 Mallikarama Rd Ratmalana SL', 'jeff@jovadoq.com', 'abc123'),
('2', '2', 'Colin', 'No52 West Cross Lane NYC USA', 'colin@gmail.com', 'hey123'),
('3', '3', 'Mary', 'No8 Central Park Lane NYC USA', 'mary@gmail.com', 'Mary@123'),
('4', '4', 'Elsa', 'No 10 Krishana Rd IDA', 'elsa@gmail.com', 'elsaH'),
('5', '5', 'Jennifer', 'No2 Lavender Lane Paris France', 'jennifer12@gmail.com', 'Jeny12');

-- --------------------------------------------------------

--
-- Table structure for table `customer_payment_orders`
--

CREATE TABLE `customer_payment_orders` (
  `CustId` char(4) NOT NULL,
  `PayId` char(6) NOT NULL,
  `OrdId` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_payment_orders`
--

INSERT INTO `customer_payment_orders` (`CustId`, `PayId`, `OrdId`) VALUES
('1', '1', '1'),
('2', '2', '2'),
('3', '3', '3'),
('4', '4', '4'),
('5', '5', '5');

-- --------------------------------------------------------

--
-- Table structure for table `customer_premium`
--

CREATE TABLE `customer_premium` (
  `CustId` char(4) NOT NULL,
  `LoyaltyPoints` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_premium`
--

INSERT INTO `customer_premium` (`CustId`, `LoyaltyPoints`) VALUES
('1', 20),
('2', 100),
('3', 1000),
('4', 500),
('5', 80);

-- --------------------------------------------------------

--
-- Table structure for table `customer_product_reviews`
--

CREATE TABLE `customer_product_reviews` (
  `CustId` char(4) NOT NULL,
  `ProdId` char(1) NOT NULL,
  `RevId` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_product_reviews`
--

INSERT INTO `customer_product_reviews` (`CustId`, `ProdId`, `RevId`) VALUES
('1', '1', '1'),
('2', '2', '2'),
('3', '3', '3'),
('4', '4', '4'),
('5', '5', '5');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `ProdId` char(1) NOT NULL,
  `OrdId` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`ProdId`, `OrdId`) VALUES
('1', '1'),
('2', '2'),
('3', '3'),
('4', '4'),
('5', '5');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PayId` char(6) NOT NULL,
  `TotPay` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PayId`, `TotPay`) VALUES
('1', 100),
('2', 200),
('3', 350),
('4', 20),
('5', 90);

-- --------------------------------------------------------

--
-- Table structure for table `paymethod`
--

CREATE TABLE `paymethod` (
  `PayMethod` varchar(30) DEFAULT NULL,
  `PayId` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paymethod`
--

INSERT INTO `paymethod` (`PayMethod`, `PayId`) VALUES
('Credit card', '1'),
('Cash', '2'),
('Cash', '3'),
('Credit Card', '4'),
('Credit Card', '5');

-- --------------------------------------------------------

--
-- Table structure for table `phoneno_customer`
--

CREATE TABLE `phoneno_customer` (
  `CustId` char(4) DEFAULT NULL,
  `PhoneNo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phoneno_customer`
--

INSERT INTO `phoneno_customer` (`CustId`, `PhoneNo`) VALUES
('1', '+932244317891'),
('2', '+551374865911'),
('3', '+339876511213'),
('4', '+947799327110'),
('5', '+215963227112');

-- --------------------------------------------------------

--
-- Table structure for table `phoneno_seller`
--

CREATE TABLE `phoneno_seller` (
  `RegNo` char(4) DEFAULT NULL,
  `PhoneNo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phoneno_seller`
--

INSERT INTO `phoneno_seller` (`RegNo`, `PhoneNo`) VALUES
('1', '+947714843212'),
('2', '+445569892111'),
('3', '+991034561421'),
('4', '+331987567111'),
('5', '+211547699891');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProdId` char(1) NOT NULL,
  `LongDescrip` varchar(50) DEFAULT NULL,
  `ShortDescrip` varchar(20) DEFAULT NULL,
  `ProdImg` blob DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `ProdName` varchar(30) DEFAULT NULL,
  `StockQty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProdId`, `LongDescrip`, `ShortDescrip`, `ProdImg`, `Price`, `ProdName`, `StockQty`) VALUES
('1', 'This product is used in heat stuff and very resist', 'used with heat', 0x3130323334, 20.24, 'heat burner', 5),
('2', 'Used when cleaning house utensils', 'cleaning utensils', 0x3330393536, 50, 'cleaning cloth', 6),
('3', 'used when washing clothes', 'dry cleaning', 0x3132393637, 80, 'washing machine', 1),
('4', 'this trampoline is stretching and water resistant', 'kids play item', 0x3334353637, 100, 'Trampoline', 3),
('5', 'used to cut pizzas', 'kitchen utensils', 0x3233393836, 10, 'pizza cutter', 4);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `RevId` char(10) NOT NULL,
  `Rating` varchar(10) DEFAULT NULL,
  `Description` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`RevId`, `Rating`, `Description`) VALUES
('1', '8/10', 'Excellent product'),
('2', '9/10', 'Amazing Product'),
('3', '6/10', 'sometimes it doesnt work'),
('4', '7/10', 'Good product'),
('5', '2/10', 'Needs Improvement');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `RegNo` char(4) NOT NULL,
  `MemName` varchar(20) DEFAULT NULL,
  `CountryAddr` varchar(40) DEFAULT NULL,
  `EmailAddr` varchar(30) DEFAULT NULL,
  `Password` varchar(8) DEFAULT NULL,
  `MemId` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`RegNo`, `MemName`, `CountryAddr`, `EmailAddr`, `Password`, `MemId`) VALUES
('1', 'Monica', 'No3 Marrison Lane UK', 'monica@gmail.com', 'MON123', '6'),
('2', 'Chandler', 'No7 Harry Lane USA', 'chandler@gmail.com', 'chand@12', '7'),
('3', 'Rachel', 'No1 Westminister Avenue DA USA', 'rachel@gmail.com', 'RachFas', '8'),
('4', 'Joey', 'No1 Pizza Lane USA', 'joey@gmail.com', 'pizzfood', '9'),
('5', 'Ross', 'No56 Phebs Lane IND', 'ross@gmail.com', 'rossgall', '10');

-- --------------------------------------------------------

--
-- Table structure for table `seller_product`
--

CREATE TABLE `seller_product` (
  `RegNo` char(4) NOT NULL,
  `ProdId` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller_product`
--

INSERT INTO `seller_product` (`RegNo`, `ProdId`) VALUES
('1', '1'),
('2', '2'),
('3', '3'),
('4', '4'),
('5', '5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `0rder`
--
ALTER TABLE `0rder`
  ADD PRIMARY KEY (`OrdId`) USING BTREE;

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustId`) USING BTREE;

--
-- Indexes for table `customer_payment_orders`
--
ALTER TABLE `customer_payment_orders`
  ADD PRIMARY KEY (`CustId`,`PayId`,`OrdId`),
  ADD KEY `PayId` (`PayId`),
  ADD KEY `OrdId` (`OrdId`);

--
-- Indexes for table `customer_premium`
--
ALTER TABLE `customer_premium`
  ADD PRIMARY KEY (`CustId`);

--
-- Indexes for table `customer_product_reviews`
--
ALTER TABLE `customer_product_reviews`
  ADD PRIMARY KEY (`CustId`,`ProdId`,`RevId`),
  ADD KEY `ProdId` (`ProdId`),
  ADD KEY `RevId` (`RevId`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`ProdId`,`OrdId`),
  ADD KEY `OrdId` (`OrdId`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PayId`);

--
-- Indexes for table `paymethod`
--
ALTER TABLE `paymethod`
  ADD PRIMARY KEY (`PayId`);

--
-- Indexes for table `phoneno_customer`
--
ALTER TABLE `phoneno_customer`
  ADD KEY `CustId` (`CustId`);

--
-- Indexes for table `phoneno_seller`
--
ALTER TABLE `phoneno_seller`
  ADD KEY `RegNo` (`RegNo`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProdId`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`RevId`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`RegNo`) USING BTREE;

--
-- Indexes for table `seller_product`
--
ALTER TABLE `seller_product`
  ADD PRIMARY KEY (`RegNo`,`ProdId`),
  ADD KEY `ProdId` (`ProdId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_payment_orders`
--
ALTER TABLE `customer_payment_orders`
  ADD CONSTRAINT `customer_payment_orders_ibfk_1` FOREIGN KEY (`CustId`) REFERENCES `customer` (`CustId`),
  ADD CONSTRAINT `customer_payment_orders_ibfk_2` FOREIGN KEY (`PayId`) REFERENCES `payment` (`PayId`),
  ADD CONSTRAINT `customer_payment_orders_ibfk_3` FOREIGN KEY (`OrdId`) REFERENCES `0rder` (`OrdId`),
  ADD CONSTRAINT `customer_payment_orders_ibfk_4` FOREIGN KEY (`CustId`) REFERENCES `customer` (`CustId`);

--
-- Constraints for table `customer_product_reviews`
--
ALTER TABLE `customer_product_reviews`
  ADD CONSTRAINT `customer_product_reviews_ibfk_1` FOREIGN KEY (`CustId`) REFERENCES `customer` (`CustId`),
  ADD CONSTRAINT `customer_product_reviews_ibfk_2` FOREIGN KEY (`ProdId`) REFERENCES `product` (`ProdId`),
  ADD CONSTRAINT `customer_product_reviews_ibfk_3` FOREIGN KEY (`RevId`) REFERENCES `reviews` (`RevId`);

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`ProdId`) REFERENCES `product` (`ProdId`),
  ADD CONSTRAINT `order_product_ibfk_2` FOREIGN KEY (`OrdId`) REFERENCES `0rder` (`OrdId`);

--
-- Constraints for table `paymethod`
--
ALTER TABLE `paymethod`
  ADD CONSTRAINT `paymethod_ibfk_1` FOREIGN KEY (`PayId`) REFERENCES `payment` (`PayId`);

--
-- Constraints for table `phoneno_customer`
--
ALTER TABLE `phoneno_customer`
  ADD CONSTRAINT `phoneno_customer_ibfk_1` FOREIGN KEY (`CustId`) REFERENCES `customer` (`CustId`);

--
-- Constraints for table `phoneno_seller`
--
ALTER TABLE `phoneno_seller`
  ADD CONSTRAINT `phoneno_seller_ibfk_1` FOREIGN KEY (`RegNo`) REFERENCES `seller` (`RegNo`);

--
-- Constraints for table `seller_product`
--
ALTER TABLE `seller_product`
  ADD CONSTRAINT `seller_product_ibfk_1` FOREIGN KEY (`RegNo`) REFERENCES `seller` (`RegNo`),
  ADD CONSTRAINT `seller_product_ibfk_2` FOREIGN KEY (`ProdId`) REFERENCES `product` (`ProdId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
