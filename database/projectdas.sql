-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2020 at 04:10 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectdas`
--

-- --------------------------------------------------------

--
-- Table structure for table `bloodgroup`
--

CREATE TABLE `bloodgroup` (
  `bg_id` int(11) NOT NULL,
  `bg_name` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bloodgroup`
--

INSERT INTO `bloodgroup` (`bg_id`, `bg_name`) VALUES
(1, 'O+'),
(2, 'O-'),
(3, 'AB+'),
(4, 'AB-'),
(5, 'A+'),
(6, 'A-'),
(7, 'B+'),
(8, 'B-');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(22) NOT NULL,
  `dname` varchar(22) NOT NULL,
  `userid` int(22) NOT NULL,
  `dcontact` varchar(22) NOT NULL,
  `expertise` varchar(22) NOT NULL,
  `fee` varchar(22) NOT NULL,
  `pname` varchar(22) NOT NULL,
  `pcontact` varchar(22) NOT NULL,
  `email` varchar(111) NOT NULL,
  `address` varchar(22) NOT NULL,
  `dates` date NOT NULL,
  `tyme` varchar(22) NOT NULL,
  `payment` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `dname`, `userid`, `dcontact`, `expertise`, `fee`, `pname`, `pcontact`, `email`, `address`, `dates`, `tyme`, `payment`) VALUES
(20, 'Dr. Amit Bhalotia', 1001, '01734761999', 'Heart', '500', 'deepak', '872638746', 'deepak@gmail.com', 'patna', '2020-12-10', '03.00pm', 'Credit/Debit'),
(21, 'Dr. Arvind Kumar', 1011, '01764761919', 'Heart', '800', 'ravvijay', '7862736443', 'ranvi@gmail.com', 'patna', '2020-12-25', '11.00am', 'Credit/Debit'),
(22, 'Dr. Kapil Tyagi', 1005, '01674546856', 'Cardiologist', '700', 'Nikita Singh', '8769543210', 'niki@gmail.com', 'Jharkhand', '2020-12-11', '11.00am', 'NetBanking'),
(23, 'Dr. Kapil Tyagi', 1005, '01674546856', 'Cardiologist', '700', 'Nikita Singh', '8769543210', 'niki@gmail.com', 'Jharkhand', '2020-12-11', '11.00am', 'NetBanking'),
(24, 'Dr. Usha Gupta', 1009, '+8801976564536', 'Plastic Surgeon', '500', 'Nikita Singh', '8769543210', 'niki@gmail.com', 'Jharkhand', '2020-12-24', '03.00pm', 'UPI');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(22) NOT NULL,
  `cat` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat`) VALUES
(1, 'Medicine'),
(2, 'Heart'),
(3, 'Bone'),
(4, 'Kedney'),
(5, 'Cardiologist'),
(6, 'Plastic Surgeon'),
(7, 'General Physician'),
(8, 'Neurologist');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `firstname` varchar(10) NOT NULL,
  `lastname` varchar(10) NOT NULL,
  `email` varchar(15) NOT NULL,
  `comment` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `firstname`, `lastname`, `email`, `comment`) VALUES
(1, 'Azharul', 'Islam', 'azad.ece13@gmai', 'My comment is getting successful.'),
(2, 'zahid', 'hasan', 'hasan@gmail.com', 'good job'),
(3, 'Veena', 'sinha', 'vina@gmail.com', 'No comments!!!');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doc_id` int(22) NOT NULL,
  `doctor_id` varchar(22) NOT NULL,
  `name` varchar(22) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(14) NOT NULL,
  `email` varchar(22) NOT NULL,
  `expertise` varchar(22) NOT NULL,
  `id` int(11) NOT NULL,
  `fee` varchar(111) NOT NULL,
  `userid` varchar(22) NOT NULL,
  `password` varchar(22) NOT NULL,
  `pic` varchar(111) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doc_id`, `doctor_id`, `name`, `address`, `contact`, `email`, `expertise`, `id`, `fee`, `userid`, `password`, `pic`) VALUES
(1, '2', 'Dr. Amit Bhalotia', 'Raipur', '01734761999', 'abhalotia@gmail.com', 'Heart', 2, '500', '1001', '123', 'doctor1.jpg'),
(2, '1', 'Dr. Abhinav Joshi', 'New Delhi', '01764761919', 'abhinav@gmail.com', 'Medicine', 1, '500', '1002', '123', 'doctor5.jpg'),
(3, '1', 'Dr. Manju Patidar', 'Faizabad', '01521670654', 'manju@gmail.com', 'Dentist', 1, '600', '1003', '123', 'doctor1.jpg'),
(4, '4', 'Dr. Abhishek Jaroli', 'Lucknow', '01949389983', 'abhishek@gmail.com', 'Kedney', 4, '700', '1004', '123', 'doctor5.jpg'),
(5, '5', 'Dr. Kapil Tyagi', 'Gachibowli', '01674546856', 'kapil@gmail.com', 'Cardiologist', 5, '700', '1005', '123', 'itsme.jpg'),
(6, '1', 'Dr. Rasya Dixit', 'Bhopal', '01734761999', 'rasyadixit@gmail.com', 'Medicine', 1, '800', '1006', '123', 'itzme.jpg'),
(7, '8', 'Dr. Shama Nadaph', 'Boring Road', '01674546563', 'shama@gmail.com', 'Neurologist', 8, '600', '1007', '123', 'doctor5.jpg'),
(8, '3', 'Dr. Pooja Nandwani', 'Patna', '01521768936', 'pooja@gmail.com', 'Bone', 3, '700', '1008', '123', 'doctor1.jpg'),
(9, '6', 'Dr. Usha Gupta', 'Pabna', '+8801976564536', 'usha@gmail.com', 'Plastic Surgeon', 6, '500', '1009', '123', 'doctor5.jpg'),
(11, '11', 'Dr. Pratyush Kumar', 'M. G. Nagar', '01764761919', 'pratyush@gmail.com', 'Neurologist', 0, '800', '1012', '123', 'doctor1.jpg'),
(12, '11', 'Dr. Arvind Kumar', 'Karol Bagh', '01764761919', 'arvind@gmail.com', 'Heart', 0, '800', '1011', '123', 'doctor5.jpg'),
(14, '', 'Dr. Anup Kumar', 'Bihta', '01521470368', 'anup@gmail.com', 'Bone', 0, '800', '1016', '123', 'itsme.jpg'),
(16, '', 'Dr. Vijay Prakash', 'Danapur', '01521470368', 'vijay@gmail.com', 'General Physician', 0, '1005', '1013', '123', ''),
(17, '', 'Dr. Rakesh Kumar', 'Kankarbagh', '01764761919', 'rakesh@gmail.com', 'Neurologist', 0, '600', '1015', '123', 'header3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `donation_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `unit` varchar(2) NOT NULL,
  `dates` date NOT NULL,
  `email` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`donation_id`, `name`, `address`, `unit`, `dates`, `email`) VALUES
(1, 'Mukesh', 'khirona', '1', '2017-11-07', 'mukesh@gmail.com'),
(2, 'Kishore', 'Bhagalpur', '2', '2017-11-11', 'kishore@gmail.com'),
(3, 'Raj', 'Banaras', '2', '2017-01-21', 'raj@gmail.com'),
(4, 'sunita', 'Saidpur', '1', '2017-11-15', 'sunita@gmail.com'),
(5, 'Vishesh', 'Baxar', '1', '2017-12-05', 'vishesh@gmail.com'),
(6, 'Ankit', 'Aara', '2', '2017-12-29', 'ankit@gmail.com'),
(7, 'Sikha', 'New Delhi', '2', '2018-05-12', 'sikha@gmail.com'),
(8, 'Ashish Rathore', 'Lucknow', '1', '2018-05-10', 'ashish@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `email` varchar(22) NOT NULL,
  `feedback` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `email`, `feedback`) VALUES
(1, 'vikash@gmail.com', 'easy way to get doctor'),
(2, 'Viru123@gmail.com', 'Response is good');

-- --------------------------------------------------------

--
-- Table structure for table `medicalcollege`
--

CREATE TABLE `medicalcollege` (
  `S_No` int(22) NOT NULL,
  `name` varchar(100) NOT NULL,
  `acronym` varchar(110) NOT NULL,
  `established` int(10) NOT NULL,
  `location` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicalcollege`
--

INSERT INTO `medicalcollege` (`S_No`, `name`, `acronym`, `established`, `location`) VALUES
(1, 'All India Institute Of Medical Sciences', 'AIIMS', 1946, 'New Delhi'),
(2, 'Maulana Azad Medical College', 'MAMC', 1972, 'New Delhi'),
(3, 'Patna Medical College & Hospital', 'PMCH', 1950, 'Patna'),
(4, 'Nalanda Medical College Hospital', 'NMCH', 1980, 'Patna'),
(5, 'Lokmanya Tilak Municipal Medical College', 'LTMMC', 1957, 'Mumbai'),
(6, 'Government Medical College', 'GMC', 1958, 'Chandigarh'),
(7, 'Chhatrapati Shahuji Maharaj Medical University', 'CSMMU', 1962, 'Mumbai'),
(8, 'Gandhi Medical College & Hospital', 'GMCH', 1968, 'Hyderabad'),
(9, 'Maharani Laxmi Bai Medical College', 'MLBMC', 1970, 'Jhansi'),
(10, 'Jawahar Lal Nehru Medical College', 'JLNMC', 1987, 'Bhagalpur'),
(11, 'Rajiv Gandhi Medical College', 'RGMC', 1992, 'Thane'),
(12, 'Regional Institute of Medical Sciences', 'RIMS', 1992, 'Bareily'),
(13, 'Indra Gandhi Institute of Medical Sciences', 'IGIMS', 1943, 'Patna'),
(14, 'Paras Hospital', 'PARAS', 1986, 'Patna'),
(15, 'Chhattisgarh Institute of Medical Sciences', 'CIMS', 1975, 'Bilaspur'),
(16, 'The Institute of Road Transport Perunthurai Medical College', 'IRTPMC', 2001, 'Erode'),
(17, 'Andhra Medical College', 'AMC', 2008, 'Visakhapatnam'),
(18, 'Indira Gandhi Government Medical College & Hospital', 'IGMH', 1996, 'Nagpur'),
(19, 'Medical College Baroda', 'MCB', 1998, 'Baroda'),
(20, 'Bangalore Medical College and Research Institute', 'BMCRI', 1974, 'Bangalore'),
(21, 'Institute of Medical Sciences BHU', 'IMS(BHU)', 1965, 'Varanasi'),
(22, 'Era Medical College', 'EMC', 2011, 'Lucknow'),
(23, ' MGM Medical College', 'MGMMC', 2005, 'Indore'),
(24, 'Sagore Dutta Medical College and Hospital', 'SDMCH', 1943, 'Kolkata'),
(25, 'Madras Medical College', 'MMC', 1989, 'Chennai'),
(26, 'Seth Gordhandas Sunderdas Medical College and Hospital', 'SGSMCH', 2014, 'Mumbai'),
(27, 'Smt NHL Municipal Medical College', 'SNMMC', 2014, 'Ahmedabad'),
(28, 'Sri Devaraj URS Medical College', 'SDMC', 2012, 'Kolar'),
(29, 'North Bengal Medical College', 'NBMC', 2004, 'Darjeeling'),
(30, 'Gajra Raja Medical College', 'GRMC', 2015, 'Gwalior');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `name` varchar(22) NOT NULL,
  `age` varchar(22) NOT NULL,
  `contact` varchar(22) NOT NULL,
  `address` varchar(22) NOT NULL,
  `bgroup` varchar(22) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `age`, `contact`, `address`, `bgroup`, `email`, `password`) VALUES
(1, 'Ranvijay', '21', '01746314882', 'Patna', 'O+', 'ranvi@gmail.com', '1234'),
(2, 'Jagjit Kaur', '22', '01746314882', 'Patna', 'AB+', 'jagjit@gmail.com', '123'),
(3, 'Mahendra nath', '22', '01765674567', 'Lucknow', 'A-', 'mahi@gmail.com', '123'),
(5, 'Susan k', '21', '01764761919', 'Delhi', 'O+', 'ksusan@gmail.com', 'developerazad'),
(6, 'ManjuNath', '22', '01521470368', 'Haryana', 'AB+', 'manjunath@gmail.com', '1234'),
(7, 'deepak', '22', '9269384790', 'patna', 'O+', 'deepak@gmail.com', '123'),
(8, 'Nikita Singh', '28', '8769543210', 'Jharkhand', 'A+', 'niki@gmail.com', 'niki@123'),
(9, 'swati', '23', '8976543210', 'patna', 'A+', 'swati@gmail.com', '12345'),
(10, 'kaushik', '12', '8768768768', 'patna', 'AB-', 'kaushik@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `donar_id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `type` varchar(22) NOT NULL,
  `city` varchar(221) NOT NULL,
  `address` varchar(100) NOT NULL,
  `bgroup` varchar(100) NOT NULL,
  `dates` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` int(100) NOT NULL,
  `pic` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`donar_id`, `username`, `gender`, `age`, `contact`, `type`, `city`, `address`, `bgroup`, `dates`, `email`, `password`, `pic`) VALUES
(86, 'Anamika', 'female', '21', '01712292009', 'Blood Donor', 'Patna', 'Danapur', 'O+', '0000-00-00', 'anamika@gmail.com', 123, ''),
(87, 'Himanshu', 'male', '21', '01706742647', 'Blood Donor', 'Bilaspur', 'Lucknow', 'B+', '0000-00-00', 'Himanshu@gmail.com', 123, ''),
(88, 'Ruksana', 'female', '21', '01734301217', 'Blood Donor', 'Hyderabad', 'Ramnagar', 'O+', '0000-00-00', 'Ruksana@gmail.com', 123, ''),
(89, 'Misti', 'female', '22', '01734472278', 'Blood Seeker', 'chittorgarh', 'Chattisgarh', 'O+', '0000-00-00', 'misti@gmail.com', 123, ''),
(90, 'Farhana', 'female', '21', '01773438430', 'Blood Seeker', 'Ameerpet', 'Hyderabad', 'O+', '0000-00-00', 'farhana@gmail.com', 123, ''),
(91, 'Dristy Das', 'female', '21', '01795660520', 'Blood Donor', 'Asansol', 'Kolkata', 'B+', '0000-00-00', 'drishty@gmail.com', 123, ''),
(92, 'Himesh', 'male', '21', '01751318963', 'Blood Seeker', 'Faizabad', 'Lucknow', 'O+', '0000-00-00', 'himesh@gmail.com', 123, ''),
(93, 'Saroz', 'female', '22', '01757950876', 'Blood Donor', 'Thane', 'Mumbai', 'O+', '0000-00-00', 'saroz@gmail.com', 123, ''),
(94, 'Ankita', 'female', '20', '01836022493', 'Blood Seeker', 'Surat', 'Ahmedabad', 'B+', '0000-00-00', 'ankita@gmail.com', 123, ''),
(95, 'Sabana', 'male', '21', '017738783899', 'Blood Donor', 'Silliguri', 'West Bengal', 'O+', '0000-00-00', 'sabana@gmail.com', 123, ''),
(96, 'S.M. Janardan Roy', 'male', '21', '01738082848', 'Blood Donor', 'Thakurganj', 'Kishanganj', 'A+', '0000-00-00', 'janardhan@gmail.com', 123, ''),
(97, 'Shahid ', 'male', '21', '01722710298', 'Blood Donor', 'Bhagalpur', 'Bihar', 'O+', '0000-00-00', 'shahid@gmail.com', 123, ''),
(98, 'Usha ', 'female', '22', '01747125554', 'Blood Donor', 'Muzzafarpur', 'Bihar', 'A+', '0000-00-00', 'usha@gmail.com', 123, ''),
(99, 'Keshav Ray', 'male', '21', '01761023408', 'Blood Donor', 'Buxar', 'Bihar', 'B+', '0000-00-00', 'keshav@gmail.com', 123, ''),
(100, 'Raj Kumar', 'male', '21', '01751119073', 'Blood Donor', 'Andheri', 'Mumbai', 'B+', '0000-00-00', 'rajkumar@gmail.com', 123, ''),
(101, 'Kartik', 'male', '21', '01764761919', 'Blood Donor', 'Karol Bagh', 'New Delhi', 'O+', '0000-00-00', 'kartik@gmail.com', 123, ''),
(102, 'Mahesh', 'male', '21', '01737366366', 'Blood Donor', 'Durgapur', 'Dehradun', 'O+', '0000-00-00', 'mahesh@gmail.com', 123, ''),
(103, 'Rihana', 'female', '21', '01714442319', 'Blood Seeker', 'Gandhi Nagar', 'Bhopal', 'O+', '0000-00-00', 'rihana@gmail.com', 123, ''),
(104, 'Vivek ', 'male', '21', '01765676686', 'Blood Seeker', 'Ramnagar', 'Varanasi', 'O-', '0000-00-00', 'vivek@gmail.com', 123, ''),
(105, 'Karan', 'male', '22', '01723155254', 'Blood Donor', 'Anantpur', 'Ahmedabad', 'A+', '0000-00-00', 'karan@gmail.com', 123, ''),
(106, 'Arnab ', 'male', '21', '01742827093', 'Blood Donor', 'Kurnul', 'Kerala', 'B+', '0000-00-00', 'arnab@gmail.com', 123, ''),
(107, 'Ajeet', 'female', '21', '01772974973', 'Blood Donor', 'Dibrugarh', 'Assam', 'O+', '0000-00-00', 'ajeet@gmail.com', 123, ''),
(108, 'Rashmi', 'female', '21', '01762946949', 'Blood Donor', 'Jorhat', 'Assam', 'B+', '0000-00-00', 'rashmi@gmail.com', 123, ''),
(109, 'Muskaan', 'female', '21', '01705808656', 'Blood Donor', 'Bhuj', 'Gujarat', 'B+', '0000-00-00', 'muskan@gmail.com', 123, ''),
(110, 'Dipak', 'male', '21', '01761273269', 'Blood Donor', 'Bhiwani', 'Haryana', 'A+', '0000-00-00', 'dipak@gmail.com', 123, '');

-- --------------------------------------------------------

--
-- Table structure for table `requestes`
--

CREATE TABLE `requestes` (
  `reg_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` int(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `bgroup` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `reqdate` date NOT NULL,
  `detail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requestes`
--

INSERT INTO `requestes` (`reg_id`, `name`, `gender`, `age`, `mobile`, `bgroup`, `email`, `reqdate`, `detail`) VALUES
(3, 'admin', 'male', 33, '01764761919', '', 'abc@gmail.com', '2022-01-19', 'save life'),
(4, 'admin', 'male', 33, '01764761919', '', 'abc@gmail.com', '2022-01-19', 'save life'),
(5, 'Sushant', 'female', 21, '017777777', 'A-', 'abc@gmail.com', '2017-12-01', 'save life'),
(6, 'Dipesh', 'female', 21, '017777777', 'A-', 'abc@gmail.com', '2017-12-01', 'save life'),
(7, 'Swastik', 'female', 21, '017777777', 'A-', 'abc@gmail.com', '2017-12-01', 'save life'),
(8, 'Sangita', 'female', 21, '017777777', 'A-', 'abc@gmail.com', '2017-12-01', 'save life'),
(9, 'Mithoon', 'male', 22, '01777777', 'AB+', 'abc@gmail.com', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `type`) VALUES
('admin', '13020944', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bloodgroup`
--
ALTER TABLE `bloodgroup`
  ADD PRIMARY KEY (`bg_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`donation_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`donar_id`);

--
-- Indexes for table `requestes`
--
ALTER TABLE `requestes`
  ADD PRIMARY KEY (`reg_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bloodgroup`
--
ALTER TABLE `bloodgroup`
  MODIFY `bg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doc_id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `donation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `donar_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `requestes`
--
ALTER TABLE `requestes`
  MODIFY `reg_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
