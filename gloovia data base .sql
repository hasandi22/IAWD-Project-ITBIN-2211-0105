-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2024 at 11:34 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gloovia`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` varchar(10) NOT NULL,
  `cat_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
('C001', 'Electronics'),
('C002', 'Fashion'),
('C003', 'Sports'),
('C004', 'Beauty and Cosmetics'),
('C005', 'Furniture');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` varchar(15) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_no` int(15) NOT NULL,
  `payment_methord` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_email`, `address`, `contact_no`, `payment_methord`) VALUES
('cu001', 'D.M Janaka', 'janakajjjmax123@gmail.com', 'test', 99878765, 'cod'),
('cu002', 'W.M Dilmini', 'dilmini@gmail.com', 'TEST 2', 786765456, 'Debit'),
('cu003', 'R.M Hasandi', 'Hasandi@gmail.com', 'TEST 3', 233343455, 'Cash'),
('cu004', 'D.M Prabash', 'prabash@gmail.com', 'Test 4', 765654543, 'Cod'),
('cu005', 'D.M Udara', 'udara@gmail.com', 'TEST 5', 786765453, 'Debit');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` varchar(20) NOT NULL,
  `payment` varchar(50) NOT NULL,
  `total_price` varchar(50) NOT NULL,
  `customer_id` varchar(20) NOT NULL,
  `pro_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `payment`, `total_price`, `customer_id`, `pro_id`) VALUES
('po001', 'COD', '39,990.00', 'cu001', 'P001'),
('po002', 'debit', '11,000.00', 'cu002', 'P002'),
('po003', 'cash', ' 67,000.00', 'cu003', 'P003'),
('po004', 'debit', ' 13,000.00', 'cu004', 'P004'),
('po005', 'COD', ' 12,000.00', 'cu005', 'P005');

-- --------------------------------------------------------

--
-- Table structure for table `orderitem`
--

CREATE TABLE `orderitem` (
  `orderItem_id` varchar(20) NOT NULL,
  `quantity` int(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `pro_id` varchar(15) NOT NULL,
  `order_id` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderitem`
--

INSERT INTO `orderitem` (`orderItem_id`, `quantity`, `price`, `pro_id`, `order_id`) VALUES
('oi001', 1, '45,600.00', 'P002', 'po002'),
('oi002', 2, '19,500.00', 'P003', 'po003'),
('oi003', 1, '36,800.00', 'P004', 'po004'),
('oi004', 3, '23,990.00', 'P005', 'po005'),
('oi005', 2, '79,980.00', 'P001', 'po001');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pro_id` varchar(20) NOT NULL,
  `pro_image` varchar(20) NOT NULL,
  `pro_name` varchar(50) NOT NULL,
  `pro_description` varchar(100) NOT NULL,
  `pro_price` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pro_id`, `pro_image`, `pro_name`, `pro_description`, `pro_price`) VALUES
('P001', '1.jpg', '4MP Full HD PTZ WiFi Camera', '4MP Full HD PTZ WiFi Camera H.265 Auto Tracking-Wireless IP Camera 4x Digital Zoom AI human Detectio', 'LKR 39,990.'),
('P002', '13.jpg', 'DELL Latitude 7480', 'PROCESSOR – Intel® Core™ 7th Gen i5-7300U Processor @ 2.6GHz MEMORY – 16GB DDR4 RAM STORAGE – 256GB ', 'LKR 59,000.'),
('P003', '3.jpg', 'Portable Sound Card Kit', 'No need for adapter Live while charging No current sound New warm-up atmosphere sound effect sen liv', 'LKR 23,900.'),
('P004', '4.jpg', 'Selfie Stick Extendable Monopod', 'Configured for(Adaption): SMARTPHONES Support Remote Control: No Communication: None Easy to Handle ', 'LKR 700.00'),
('P005', '5.jpg', 'Bluetooth K12 Karaoke speaker', 'Bluetooth K12 Karaoke Machine Portable 5.3 Pa Speaker System With 1-2 Wireless Microphone Family Sin', 'LKR 11,000.'),
('P006', '6.jpg', 'Original Lenovo 1TB 2TB Micro TF', 'High quality storage: Ideal for high resolution photos,Super high speed: reading speed 70-100 mb/s.D', 'LKR 1000.00'),
('P007', '7.jpg', '2GB DDR2 Ram', '• 2GB DDR2 RAM Branded • Compatible with most DDR2 computers. • 800Mhz(6400U) • Works with all Intel', 'LKR 4500.00'),
('P008', '8.jpg', 'Canon PIXMA printer', 'Type Inkjet Printer Model MG 2570S Printing Resolution 4800 (horizontal) x 600 (vertical) dpi Print ', 'LKR 19,450.'),
('P009', '9.jpg', 'W26 Pro Max Special Smart Watch', 'This smartwatch will come with TWS Earbuds Alloy watch case Sync phonebook Incoming call contacts An', 'LKR 12,000.'),
('P010', '10.jpg', 'Kingston 32GB Pen Drive', 'Storage Capacity : 32GB USB Specification : USB 2.0 Reading Speed : Up To 18-20MB/s Writing Speed : ', 'LKR 1200.00'),
('P011', '11.jpg', 'PRITOM 10 Inch Tablet', 'Brand: PRITOM Series: M10(3G) Standing screen display size: ‎10.1 Inches Screen Resolution: 1080x800', 'LKR 44,000.'),
('P012', '12.jpg', '4.8V AA 700mAh Rechargeable battery', '4.8V AA 700mAh Rechargeable battery pack AA 700 mah for Remote Control Car Electric Toys walk man', 'LKR 950.00'),
('P013', '2.1.jpeg', 'Front Floral Jacquard Dress', 'SHEIN WYWH Square Neck Bow Front Floral Jacquard Dress', 'LKR 9,900.0'),
('P014', '2.2.jpeg', 'Baby Girl Casual Skirt Set', 'Baby Girl Casual Contrast Collar Jacket And Fluffy Skirt Set, Autumn/Winter', 'LKR 5,000.0'),
('P015', '2.3.jpeg', 'Casual Long Sleeve Sweater', 'SHEIN Essnce Solid Color Crew Neck Casual Long Sleeve Sweater.', 'LKR 7,000.0'),
('P016', '2.4.jpeg', 'Waist Parachute Cargo Pants', 'SHEIN EZwear Women\'s Streetwear Sportswear Blockcore Sport Black Flap Pocket Side Drawstring Waist P', 'LKR 3,000.0'),
('P017', '2.5.jpeg', 'High Waisted Loose Women Skirt', 'SHEIN VCAY Vacation Ethic Printed High Waisted Loose Women Skirt', 'LKR 4,500.0'),
('P018', '2.6.jpeg', 'Summer Short Sleeve T-Shirt', 'DAZY DAZY Men Stylish Solid Color Printed Label Adhesive Summer Short Sleeve T-Shirt', 'LKR 2,900.0'),
('P019', '2.7.jpeg', 'Graphic Color Block Urban Shirt', 'Manfinity Hypemode Men\'s Summer Slogan Printed Raglan Sleeve Short Casual Commuter Polo Shirt, Graph', 'LKR 4,500.0'),
('P020', '2.8.jpeg', 'Straight Leg Jeans With Pockets', 'Men\'s Casual Loose Fit Straight Leg Jeans With Pockets.', 'LKR 3,400.0'),
('P021', '2.9.jpeg', 'Waist Tie Straps Jumpsuit', 'SHEIN MOD Shirt Style Waist Tie Straps Jumpsuit.', 'LKR 2,000.0'),
('P022', '2.10.jpg', 'Printcess Women\'s Y2K Women Cloth', 'Printcess Women\'s Y2K Cool Sleeveless Round Neck Tank Top Butterfly Graphic Print Short Vest Tee Coo', 'LKR 2,900.0'),
('P023', '2.11.jpg', 'Women\'s Large Fashion Pants Two Piece Sets', 'Women\'s Large Fashion Suit Spring Summer New Korean Casual Loose Plus Size Clothing Short Sleeve Top', 'LKR 3,100.0'),
('P024', '2.12.jpg', 'Oversized Dresses Women Casual Long Skirt', 'Oversized Dresses Women Plus Size 2023 Boho Beach Floral Summer Dress 2023 Mini Sundress Female Clot', 'LKR 6,100.0');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` varchar(15) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL,
  `confirm_password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `password`, `confirm_password`) VALUES
('ui001', 'D.M Janaka', 'janaka@gmail.com', '1234', '1234'),
('ui002', 'W.M Dilmini', 'dilmini@gmail.com', '2121', '2121'),
('ui003', 'R.M Prabash', 'prabash@gmail.com', '2323', '2323'),
('ui004', 'H.M Hasandi', 'hasandi@gmail.com', '3434', '3434'),
('ui005', 'R.M Udara', 'udara@gmail.com', '5454', '5454');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `pro_id` (`pro_id`);

--
-- Indexes for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`orderItem_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `pro_id` (`pro_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`pro_id`) REFERENCES `products` (`Pro_ID`);

--
-- Constraints for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
  ADD CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`pro_id`) REFERENCES `products` (`Pro_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
