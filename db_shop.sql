-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2019 at 02:54 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `adminPass` varchar(35) NOT NULL,
  `level` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminUser`, `adminEmail`, `adminPass`, `level`) VALUES
(1, 'Mehedi Hasan', 'admin', 'imehedihasansajib@gmail.com', '39c2698f24a3b72743ad3c16342a2c3d', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(1, 'Incepta'),
(2, 'Beximco'),
(3, 'Square'),
(4, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `sId`, `productId`, `productName`, `price`, `quantity`, `image`) VALUES
(4, 'c3qvrn8jnfr7epovdqld3gqoit', 16, 'llllkkkkk', 450.00, 1, 'uploads/a9a8542332.jpg'),
(5, 'i0kgcc1iqkvl0fggh2oaa4og7m', 12, 'phone', 500.89, 1, 'uploads/98f35bee5e.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(2, 'Diabetic'),
(3, 'skin care'),
(4, 'Syrup'),
(5, 'Vitamins &amp; Supplements'),
(8, 'Health Condition'),
(9, 'Personal Care'),
(16, 'Medicine');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `zip` varchar(30) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zip`, `phone`, `email`, `pass`) VALUES
(1, 'habib555', 'mirpur', 'dhaka', 'Bangladesh', '11000', 2147483647, 'habib@gmail.com', '123'),
(2, 'jewel', 'mirpur 10', 'dhaka', 'bd', '1200', 2147483647, 'habib22@gmail.com', '147'),
(3, 'Imran Hossain', 'Dhanmondi Dhaka', 'Dhaka', 'Bangladesh ', '1205', 1932134942, 'imranemon6@gmail.com', 'imran007'),
(4, 'Mehedi Hasan Sajib', 'Arshi Nagar', 'Sirajganj', 'Bangladesh', '6700', 2147483647, 'imehedihasansajib@gmail.com', '123456789'),
(5, 'hgfh', 'xfbf', 'f', 'dfhhfdhf', 'fdhf', 0, 'dg', 'dffd');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `cmrId`, `productId`, `productName`, `quantity`, `price`, `image`, `date`, `status`) VALUES
(84, 4, 6, 'prudex', 1, 50.00, 'uploads/2c0718d57b.jpg', '2018-12-23 12:04:30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `body` text NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `body`, `price`, `image`, `type`) VALUES
(2, 'Adaben duo gel', 3, 1, '<p><span style=\"font-size: small;\">Adaben Duo Gel is indicated for the topical treatment of acne vulgaris,skin care.&nbsp;Adaben Duo Gel is a combination product for topical use containing Adapalene (a synthetic retinoid) and Benzoyl peroxide.</span></p>\r\n<p><span style=\"font-size: small;\">Pack Size &amp; Price:</span></p>\r\n<div class=\"package-container\"><span style=\"font-size: small;\">20 gm tube :&nbsp;<span class=\"package-pricing\">à§³200.00</span></span></div>\r\n<p><span><span><br /></span></span></p>', 200.00, 'uploads/5e49342225.jpg', 1),
(4, 'Askorel', 4, 1, '<p><span><span>Indications :&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span>Askorel is indicated in acute cough of any etiology, suppression of pre-&amp; post-operative cough in surgery &amp; bronchoscopy and suppression of whooping cough and cold</p>\r\n<p>100ml price 75 taka.</p>', 75.00, 'uploads/276395bd13.jpg', 0),
(5, 'Ecotrim', 3, 2, '<p><span>It<span style=\"font-size: small;\"> is indicated for the treatment of steroid-responsive inflammatory dermatoses with econazole-sensitive mycotic and bacterial superinfections like:</span></span></p>\r\n<ul>\r\n<li><span style=\"font-size: small;\">Eczematous mycosis,</span></li>\r\n<li><span style=\"font-size: small;\">Eczema marginatum hebecae,</span></li>\r\n<li><span style=\"font-size: small;\">skin care</span></li>\r\n<li><span style=\"font-size: small;\">Folliculitistrichophytica,</span></li>\r\n<li><span style=\"font-size: small;\">Mycosis barbae</span></li>\r\n<li>\r\n<h4><span style=\"font-size: small;\">Pack Size &amp; Price:</span></h4>\r\n<div class=\"package-container\"><span style=\"font-size: small;\">10 gm tube :&nbsp;<span class=\"package-pricing\">à§³34.50</span></span></div>\r\n</li>\r\n</ul>', 34.00, 'uploads/9f0cb05678.jpg', 1),
(6, 'prudex', 4, 2, '<p>Prudex&reg;&nbsp;is indicated for the symptomatic relief of dry cough and cold associated with allergic rhinitis &amp; nasal congestion.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;How much to take?</p>\r\n<p>Adults &amp; Children over 12 years: 2 teaspoonful three times daily.<br />Children: 6-12 years: 1 teaspoonful three times daily.<br />Children: 2-5 years: 1/2 teaspoonful three times daily or as recommended by the physician.</p>\r\n<p>100 ml price 50tala</p>\r\n<p><span style=\"font-size: small;\"><br /></span></p>', 50.00, 'uploads/2c0718d57b.jpg', 0),
(7, 'Diactin', 2, 2, '<p><span>is indicated as an adjunct to diet for the control of hyperglycaemia and its associated symptomatology in the treatment of non-insulin-dependent diabetes mellitus</span></p>\r\n<p><span>50ps</span></p>', 1500.00, 'uploads/3b69c66748.jpg', 0),
(8, 'Bizoran', 16, 4, '<p><span>By blocking the action of angiotensin II, Olmesartan dilates blood vessels and reduces blood pressure without affecting pulse rate.</span></p>\r\n<p><span>price 100 taka</span></p>', 100.00, 'uploads/772e3dd74b.jpg', 0),
(9, 'Sun protection ', 9, 1, '<p><span>Avene D-Pigment Light Cream is mainly formulated for preventing hyperpigmentation it used for sun protection .</span></p>\r\n<p><span>price 1500 taka</span></p>', 1500.00, 'uploads/5fe7fc9534.jpg', 0),
(10, 'Nobesit 500', 2, 1, '<p>&nbsp;</p>\r\n<p>Nobesit 500 &nbsp;drug is taken just before meals to prevent the postprandial hyperglycemia seen in diabetics. This type of agent can be considered a drug of first choice in overweight diabetic patients</p>\r\n<p>How to take this medicine?<br />The medicine should be taken orally in dose of 0.2 or 0.3 g, three times daily, just before meals.</p>\r\n<div>\r\n<h4>Pack Size &amp; Price:</h4>\r\n<div class=\"package-container\">50\'s pack :&nbsp;<span class=\"package-pricing\">à§³125.00&nbsp;<span class=\"unit-price\">(Unit Price : à§³2.50)</span></span></div>\r\n</div>\r\n<p><span><br /></span></p>', 125.00, 'uploads/e20d582801.jpg', 0),
(11, 'Vibose 0.2', 2, 2, '<p><span style=\"font-size: small;\"><br /></span></p>\r\n<p><span style=\"font-size: small;\">Vibose&reg;&nbsp;is the preparation of voglibose&nbsp;The drug is taken just before meals to prevent the postprandial hyperglycemia seen in diabetics. This type of agent can be considered a drug of first choice in overweight diabetic patients.</span></p>\r\n<p>&nbsp;</p>\r\n<h4><span style=\"font-size: small;\">Pack Size &amp; Price:</span></h4>\r\n<p>&nbsp;</p>\r\n<div class=\"package-container\"><span style=\"font-size: small;\">50\'s pack :&nbsp;<span class=\"package-pricing\">à§³150.00&nbsp;<span class=\"unit-price\">(Unit Price : à§³3)</span></span></span></div>\r\n<p><span style=\"font-size: small;\"><br /></span></p>', 150.00, 'uploads/1bd524f41a.jpg', 0),
(12, 'Ace Â® Paracetamol', 16, 3, '<p><span style=\"font-size: small;\">Ace &reg; Paracetamol used for Fever, headache, toothache, earache, bodyache, neuralgia and sprains. Colic pain, back pain.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"pagtitle\">Dosage &amp; Administration&nbsp;</span>Tablet: Adults 1-2 tablets every 4 to 6 hours up to a maximum of 4g (8 tablets)&nbsp;</span></p>\r\n<p><span style=\"font-size: small;\">50ps pack price 32 taka</span></p>', 32.00, 'uploads/b79942c084.jpg', 0),
(13, 'Napa Extra', 16, 2, '<p><span style=\"font-size: small;\">Indications: All conditions requiring relief from pain and fever such as neuritis, neuralgia, headache, earache, toothache, pain due to rheumatic disorder, cold, influenza, dysmenorrhoea, post-vaccination pain and fever of children etc. Napa suppositories are used for rapid symptomatic management of pain and fever. It is given as rectal suppository for mild to moderate pain and for pyrexia. Dosage and Administration Tablet/Extra Tablet : Adults : 1-2 tablets 3-4 times daily; Syrup/Suspension : Adults : 4-8 Measuring spoonful 3-4 times daily; Children : 6-12 years : 2- 4 measuring spoonful 3-4 times daily</span></p>\r\n<p><span style=\"font-size: small;\">20ps pack price 38taka</span></p>', 38.00, 'uploads/7bc6ff7c9a.jpg', 0),
(14, 'Flacol', 8, 4, '<p><span><span class=\"pagtitle\">Indication:</span>&nbsp;</span><br />Flatulence, abdominal distention, fullness, gas and windy colic; Large bowel preparation; Treatment of poisoning</p>\r\n<p>25 taka&nbsp;</p>', 25.00, 'uploads/37f01fd80e.jpg', 0),
(15, 'Ace Plus', 8, 4, '<p><span class=\"pagtitle\">Indication:</span>&nbsp;</p>\r\n<p class=\"ssa\">Fever, headache, migraine, muscle ache, backache, toothache &amp; menstrual pain.</p>\r\n<p class=\"ssa\">&nbsp;</p>\r\n<p class=\"ssa\">50ps 125 taka</p>', 125.00, 'uploads/ce9207393a.jpg', 0),
(16, 'Limogel', 8, 4, '<p><span style=\"font-size: small;\">It is indicated in the prevention of infection in cuts, wounds abrasions, surgical incisions, burns, advance chronic wounds and infected traumatic lesions.</span></p>\r\n<p><span style=\"font-size: small;\">100 taka</span></p>', 100.00, 'uploads/3b7d8e1f73.jpg', 1),
(17, 'Nomopil', 2, 1, '<p>&nbsp;</p>\r\n<p>Nomopil is an oral&nbsp;<strong>diabetic medicine</strong>&nbsp;that helps control blood sugar levels by causing the pancreas to produce insulin. Nomopil is used together with diet and exercise to treat type 2&nbsp;<strong>diabetic</strong>. Other&nbsp;<strong>diabetics</strong>&nbsp;medicines are sometimes used in combination with Nomopil if needed.</p>\r\n<h4>Pack Size &amp; Price:</h4>\r\n<div class=\"package-container\">50\'s pack :&nbsp;<span class=\"package-pricing\">à§³250.00&nbsp;<span class=\"unit-price\">(Unit Price : à§³5.00)</span></span></div>\r\n<p><span style=\"font-size: small;\"><br /></span></p>', 250.00, 'uploads/785620afd0.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wlist`
--

CREATE TABLE `tbl_wlist` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_wlist`
--

INSERT INTO `tbl_wlist` (`id`, `cmrId`, `productId`, `productName`, `price`, `image`) VALUES
(3, 1, 7, 'Lorem Ipsum is simply', 70000.00, 'uploads/74c55238a5.jpg'),
(4, 1, 5, 'Lorem Ipsum is simply', 1554.33, 'uploads/89f71eeda3.jpg'),
(5, 1, 9, 'Lorem Ipsum is simply', 10000.00, 'uploads/8bd0299432.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
