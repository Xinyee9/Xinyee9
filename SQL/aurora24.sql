-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2022 at 03:51 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aurora`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(4) UNSIGNED NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_gender` varchar(10) NOT NULL,
  `admin_phone` int(11) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_profile_pic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_gender`, `admin_phone`, `admin_password`, `admin_profile_pic`) VALUES
(1, 'Ng Wee Woen', 'ngweewoen@gmail.com', 'female', 1112919518, 'ad57484016654da87125db86f4227ea3', 'Admin_116.png');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(4) NOT NULL,
  `cart_qty` int(4) NOT NULL,
  `subtotal` int(5) NOT NULL,
  `food_id` int(4) NOT NULL,
  `userid` int(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `cart_qty`, `subtotal`, `food_id`, `userid`) VALUES
(41, 1, 14, 6, 1),
(42, 2, 22, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `carttotal`
--

CREATE TABLE `carttotal` (
  `total_id` int(200) NOT NULL,
  `total` float NOT NULL,
  `userid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carttotal`
--

INSERT INTO `carttotal` (`total_id`, `total`, `userid`) VALUES
(1, 20, 1),
(2, 20, 1),
(3, 20, 1),
(4, 20, 1),
(5, 22, 1),
(6, 22, 1),
(7, 22, 1),
(8, 22, 1),
(9, 22, 1),
(10, 22, 1),
(11, 47, 1),
(12, 47, 1),
(13, 47, 1),
(14, 25, 1),
(15, 0, 1),
(16, 140, 1),
(17, 126, 1),
(18, 112, 1),
(19, 98, 1),
(20, 84, 1),
(21, 70, 1),
(22, 56, 1),
(23, 42, 1),
(24, 28, 1),
(25, 28, 1),
(26, 28, 1),
(27, 28, 1),
(28, 28, 1),
(29, 42, 1),
(30, 56, 1),
(31, 70, 1),
(32, 84, 1),
(33, 98, 1),
(34, 112, 1),
(35, 126, 1),
(36, 140, 1),
(37, 140, 1),
(38, 140, 1),
(39, 0, 1),
(40, 70, 1),
(41, 70, 1),
(42, 0, 1),
(43, 84, 1),
(44, 84, 1),
(45, 84, 1),
(46, 0, 1),
(47, 50, 1),
(48, 59.4, 1),
(49, 49.4, 1),
(50, 39.4, 1),
(51, 29.4, 1),
(52, 19.4, 1),
(53, 29.4, 1),
(54, 29.4, 1),
(55, 29.4, 1),
(56, 51.4, 1),
(57, 51.4, 1),
(58, 31.4, 1),
(59, 22, 1),
(60, 0, 1),
(61, 22, 1),
(62, 36, 1),
(63, 36, 1),
(64, 14, 1),
(65, 0, 1),
(66, 14, 1),
(67, 36, 1),
(68, 36, 1),
(69, 36, 1),
(70, 36, 1),
(71, 0, 1),
(72, 36, 1),
(73, 0, 1),
(74, 36, 1),
(75, 36, 1),
(76, 36, 1),
(77, 36, 1),
(78, 36, 1),
(79, 36, 1),
(80, 36, 1),
(81, 36, 1),
(82, 36, 1),
(83, 36, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(4) UNSIGNED NOT NULL,
  `cate_code` int(6) NOT NULL,
  `cate_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `cate_code`, `cate_name`) VALUES
(1, 2037, 'burger'),
(2, 2038, 'pasta'),
(3, 2039, 'chicken steak');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `conID` int(3) UNSIGNED ZEROFILL NOT NULL,
  `conName` text NOT NULL,
  `conEmail` text NOT NULL,
  `conPhone` text DEFAULT NULL,
  `conMessage` longtext NOT NULL,
  `conDatetime` datetime NOT NULL,
  `conStatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`conID`, `conName`, `conEmail`, `conPhone`, `conMessage`, `conDatetime`, `conStatus`) VALUES
(001, 'Xinyee', 'xinyeee926@gmail.com', '0176339543', 'Your service is good!', '2022-03-08 01:53:47', 0);

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `food_id` int(4) UNSIGNED NOT NULL,
  `food_code` varchar(100) NOT NULL,
  `food_name` varchar(100) NOT NULL,
  `food_price` float NOT NULL,
  `food_description` text NOT NULL,
  `food_image` varchar(255) NOT NULL,
  `food_stock` int(4) NOT NULL,
  `food_status` varchar(100) NOT NULL,
  `admin_id` int(4) UNSIGNED NOT NULL,
  `cate_id` int(4) UNSIGNED NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`food_id`, `food_code`, `food_name`, `food_price`, `food_description`, `food_image`, `food_stock`, `food_status`, `admin_id`, `cate_id`, `active`) VALUES
(1, 'food01', 'Blackpepper Chickenchop', 11, 'Marinated chicken grilled or pan-fried in a thick, strong black pepper sauce.', 'c1.jpeg', 500, 'available', 1, 3, 'Yes'),
(2, 'food02', 'Creammy Rigatoni Vege', 12.5, 'It\'s the ideal mix of handmade vegetable sauce, smoked tomato, and rigatoni pasta, topped with grated cheese and fresh parsley.', 's1.jpg', 500, 'available', 1, 2, 'Yes'),
(3, 'food03', 'Steamed Cheeseburger', 9.4, 'It is a steamed hamburger with cheese on top.', 'b1.jpg', 500, 'available', 1, 1, 'Yes'),
(4, 'food04', 'Chickenchop with Mushroom', 10.2, 'Created with partly cooked boneless thigh and leg parts that have been dipped in batter. ', 'c2.jpg', 500, 'available', 1, 3, 'Yes'),
(5, 'food05', 'Spaghetti Aglio e Olio', 11.6, 'The garlic imparts a rich, nutty taste to the oil, and the salty, starchy pasta boiling water converts it into a highly delicious sauce. ', 's2.jpg', 500, 'available', 1, 2, 'Yes'),
(6, 'food06', 'Wild Salmon Burgers', 14, 'Made almost entirely with fresh salmon without added breadcrumbs or eggs.', 'b2.jpg', 500, 'available', 1, 1, 'Yes'),
(7, 'food07', 'Honey Lemon Chicken Chop', 9.2, 'The meat is crispy and drenched in a delicious, sticky honey lemon sauce. The zest of fresh lemon adds so much flavour!', 'c4.jpg', 500, 'available', 1, 3, 'Yes'),
(8, 'food08', 'Spaghetti Bolognese', 10, 'The Bolognese Sauce is rich and thick, with a wonderful depth of flavour.', 's3.jpg', 500, 'available', 1, 2, 'Yes'),
(9, 'food09', 'Beef Burgers', 12, 'Packed with onions and herbs for more flavour, and ideal for topping with cheese, lettuce, and tomato.', 'b4.jpg', 500, 'available', 1, 1, 'Yes'),
(10, 'food10', 'Chicken Parmigiana', 8, 'The sauce is too bland, or cheddar cheese is substituted for mozzarella.', 'c5.jpg', 500, 'available', 1, 3, 'Yes'),
(11, 'food11', 'Dill Butter Shrimp Farfalle Pasta', 13.9, 'It is a creamy pasta with shrimp, peas, red pepper, and celery mixed in a dill-flavored mayonnaise dressing.', 's4.jpg', 500, 'available', 1, 2, 'Yes'),
(12, 'food12', 'Spicy Elk Burger', 13, 'To bring out the taste of the meat, season it with simple seasonings such as salt, pepper, onion powder, and garlic powder.', 'b5.jpg', 500, 'available', 1, 1, 'Yes'),
(13, 'food13', 'Seared Salmon Steak with Wasabi Lemon Vinaigrette', 13.9, 'Simply grilled salmon steak with wasabi lemon vinaigrette, haricots verts, and cress.', 'c6.jpg', 500, 'available', 1, 3, 'Yes'),
(14, 'food14', 'Creammy Corn Gemelli', 12.2, 'A delectable sauce consisting of puréed fresh corn and fragrant sautéed onions.', 's5.jpg', 500, 'available', 1, 2, 'Yes'),
(15, 'food15', 'Bison Burgers', 13.4, 'Seasoned with a variety of delectable spices such as onion, garlic, paprika, and parsley.', 'b6.jpg', 500, 'available', 1, 1, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `trans`
--

CREATE TABLE `trans` (
  `transaction_id` int(5) NOT NULL,
  `transaction_date` date NOT NULL,
  `transaction_time` time NOT NULL,
  `e_d_time` time NOT NULL,
  `Full_Name` varchar(50) NOT NULL,
  `Trans_Address` varchar(150) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Trans_State` varchar(255) NOT NULL,
  `Zip` int(10) NOT NULL,
  `delivery_status` varchar(200) NOT NULL,
  `userid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trans`
--

INSERT INTO `trans` (`transaction_id`, `transaction_date`, `transaction_time`, `e_d_time`, `Full_Name`, `Trans_Address`, `City`, `Trans_State`, `Zip`, `delivery_status`, `userid`) VALUES
(32, '2022-03-29', '06:13:33', '06:43:33', 'Jayson', '(M.C.Office A-01-01) B-11-07, Ixora Apartment', 'Bukit Beruang', 'Melaka', 75450, 'Order Confirm', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(5) UNSIGNED ZEROFILL NOT NULL,
  `username` varchar(200) NOT NULL,
  `userpassword` varchar(200) NOT NULL,
  `useremail` varchar(200) NOT NULL,
  `userprivilege` varchar(200) NOT NULL DEFAULT 'user',
  `userfirstname` varchar(200) DEFAULT NULL,
  `userlastname` varchar(200) DEFAULT NULL,
  `block?` tinyint(1) NOT NULL DEFAULT 0,
  `verify_token` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `userpassword`, `useremail`, `userprivilege`, `userfirstname`, `userlastname`, `block?`, `verify_token`) VALUES
(00001, 'aurorauser0001', 'aurorauser0001', 'aurorauser0001@gmail.com', 'user', 'Aurora', 'User', 0, ''),
(00002, 'admin', 'admin', 'auroraadmin@gmail.com', 'admin', 'Aurora', 'Admin', 0, ''),
(00003, 'Jessie', 'jessie', 'jessie@hotmail.com', 'user', '', '', 0, ''),
(00005, 'rogesh', 'rogesh', 'rogesh@hotmail.com', 'user', '', '', 1, ''),
(00006, 'Ng Wee Woen', '123', 'ngweewoen0415@gmail.com', 'admin', '', '', 0, '4a405b34206fa317ac92c50563b3e135'),
(00007, 'Jayson Lim Chun Keat', 'Jayson123', 'jaysonlimck@gmail.com', 'admin', '', '', 0, '53fe92197f0a239d028f946729c72c4d'),
(00008, 'Chong Xin Yee', '456', 'xinyeeada@hotmail.com', 'admin', NULL, NULL, 0, '2dfd53f56fae8db5c1a16908e6b80398');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `carttotal`
--
ALTER TABLE `carttotal`
  ADD PRIMARY KEY (`total_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`conID`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`food_id`);

--
-- Indexes for table `trans`
--
ALTER TABLE `trans`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `carttotal`
--
ALTER TABLE `carttotal`
  MODIFY `total_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `conID` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `food_id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `trans`
--
ALTER TABLE `trans`
  MODIFY `transaction_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
