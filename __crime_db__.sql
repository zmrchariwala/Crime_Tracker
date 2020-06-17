-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 13, 2017 at 02:24 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `crime_tracker`
--
CREATE DATABASE `crime_tracker` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `crime_tracker`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'zam', 'zam');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `message` varchar(100) NOT NULL,
  `status` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`, `status`) VALUES
(1, 'zameer chariwala', 'zmrchariwala@gmail.com', 'Hello sir', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `crime`
--

CREATE TABLE IF NOT EXISTS `crime` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `victum` varchar(15) DEFAULT NULL,
  `crime_type` varchar(15) NOT NULL,
  `why` varchar(50) NOT NULL,
  `date_of_crime` date NOT NULL,
  `state` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `place` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `who` varchar(15) NOT NULL,
  `date_post` date NOT NULL,
  `images` varchar(30) DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `assigned` varchar(15) DEFAULT NULL,
  `investigation` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `crime`
--

INSERT INTO `crime` (`id`, `victum`, `crime_type`, `why`, `date_of_crime`, `state`, `district`, `place`, `address`, `description`, `who`, `date_post`, `images`, `status`, `assigned`, `investigation`) VALUES
(13, 'tal', 'homicide', 'No idea', '2017-03-10', '', 'navsari', 'Bilimora', '', 'Today at 7:00AM i saw the dead body when i was travelling from to navsari', 'Raju', '2017-03-10', 'tal1.png:', 'IN PROGRESS', 'chirag123', ''),
(16, 'zam', 'anti social', 'Achohol Party', '2017-04-01', 'Gujarat', 'navsari', 'Bilimora', 'Flat 15, Shantinagar station road.', 'Some under 18 age boys are doing alcohol party', 'Abhisek', '2017-04-02', ':zam13.png:zam23.png', 'Assigned', 'chirag123', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE IF NOT EXISTS `district` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `state` varchar(20) NOT NULL,
  `district_name` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `state`, `district_name`, `city`) VALUES
(2, 'Gujarat', 'navsari', 'Gholwad'),
(3, 'Gujarat', 'navsari', 'kabilpore'),
(4, 'Gujarat', 'navsari', 'Bilimora'),
(5, 'Gujarat', 'navsari', 'sattapir'),
(6, 'Gujarat', 'navsari', 'Maroli');

-- --------------------------------------------------------

--
-- Table structure for table `goverment`
--

CREATE TABLE IF NOT EXISTS `goverment` (
  `gov_id` int(6) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(10) NOT NULL,
  `middle_name` varchar(15) NOT NULL,
  `last_name` varchar(10) NOT NULL,
  `address` varchar(25) NOT NULL,
  `city` varchar(15) NOT NULL,
  `state` varchar(15) NOT NULL,
  `country` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `adhaar` varchar(12) NOT NULL,
  `gender` varchar(6) NOT NULL,
  PRIMARY KEY (`gov_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `goverment`
--

INSERT INTO `goverment` (`gov_id`, `first_name`, `middle_name`, `last_name`, `address`, `city`, `state`, `country`, `email`, `mobile`, `adhaar`, `gender`) VALUES
(1, 'zameer', 'fakirmohme', 'chariwala', 'Bilinaka, Biliroad ', 'bilimora', 'Gujarat', 'India', 'zmrchariwala@gmail.com', '9574930560', '866542578951', 'Male'),
(2, 'Zarif', 'Fakirmohme', 'chariwala', 'Bilinaka, Biliroad', 'Bilimora', 'Gujarat', 'India', 'zmrchariwala@gmail.com', '7778016777', '123456789123', 'Male'),
(3, 'Talhaz', 'Yunus', 'Diler', 'Gayatrinagar desra', 'Bilimora', 'Gujarat', 'India', 'zmrchariwala@gmail.com', '9033175600', '123456789012', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `head_office`
--

CREATE TABLE IF NOT EXISTS `head_office` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `incharge_officer` varchar(15) NOT NULL,
  `position` varchar(15) NOT NULL,
  `state` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `sta` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `head_office`
--

INSERT INTO `head_office` (`id`, `incharge_officer`, `position`, `state`, `city`, `email`, `username`, `password`, `sta`) VALUES
(1, 'Suresh mistry', 'DSP', 'Gujarat', 'navsari', 'suresh@gmail.com', 'suresh123', '123', 'done'),
(2, 'Vishwas rao', 'PSI', 'Gujarat', 'Surat', '', 'vish123', '12345', 'done'),
(3, 'vv', 'vvv', 'vvv', 'vv', '', 'vv', '12345', 'first'),
(4, 'xx', 'xx', 'xxx', 'xx', '', 'x', '12345', 'first'),
(5, 'off', 'post', 'state', 'sate', '', 'user', '12345', 'first'),
(6, 'off', 'post', 'state', 'sate', '', 'user', '12345', 'first');

-- --------------------------------------------------------

--
-- Table structure for table `missing_person`
--

CREATE TABLE IF NOT EXISTS `missing_person` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `user` varchar(15) NOT NULL,
  `full_name` varchar(20) NOT NULL,
  `age` int(2) NOT NULL,
  `address` varchar(20) NOT NULL,
  `city` varchar(15) NOT NULL,
  `state` varchar(15) NOT NULL,
  `image` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `missing_person`
--

INSERT INTO `missing_person` (`id`, `user`, `full_name`, `age`, `address`, `city`, `state`, `image`, `status`) VALUES
(2, 'tal', 'Khadija', 2, 'Near jumma masjid', 'Bilimora', 'Gujarat', 'tal.png', 'Not Found');

-- --------------------------------------------------------

--
-- Table structure for table `police_station`
--

CREATE TABLE IF NOT EXISTS `police_station` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `incharge_officer` varchar(15) NOT NULL,
  `position` varchar(15) NOT NULL,
  `state` varchar(15) NOT NULL,
  `district` varchar(15) NOT NULL,
  `no_reports` int(6) DEFAULT NULL,
  `city` varchar(15) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `sta` varchar(5) NOT NULL,
  `email` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `police_station`
--

INSERT INTO `police_station` (`id`, `incharge_officer`, `position`, `state`, `district`, `no_reports`, `city`, `username`, `password`, `sta`, `email`) VALUES
(1, 'Chirag lad', 'PSI', 'Gujarat', 'navsari', 2, 'Bilimora', 'chirag123', '12345', 'done', 'chiggy@gmail.com'),
(2, 'Rajesh Shah', 'Constable', 'Gujarat', 'Navsari', 0, 'Gholwad', 'rajesh1', '12345', 'Done', 'rajesh@gmail.com'),
(3, 'ss', 'sss', 's', 's', NULL, 'ss', 's', 's', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `usr_id` int(6) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(15) NOT NULL,
  `middle_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `address` varchar(25) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(15) NOT NULL,
  `country` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `adhaar` varchar(12) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(11) NOT NULL,
  `image` varchar(25) DEFAULT NULL,
  `status` varchar(15) NOT NULL,
  PRIMARY KEY (`usr_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`usr_id`, `first_name`, `middle_name`, `last_name`, `address`, `city`, `state`, `country`, `email`, `mobile`, `adhaar`, `username`, `password`, `image`, `status`) VALUES
(1, 'zameer', 'Fakirmohmed', 'chariwala', 'Bilinaka, Biliroad ', 'bilimora', 'Gujarat', 'India', 'zmrchariwala@gmail.com', '9574930560', '866542578951', 'zam', 'zam', NULL, 'No fraud'),
(4, 'Talhaz', 'Yunus', 'Diler', 'Gayatrinagar desra', 'Bilimora', 'Gujarat', 'India', 'talhaz_diler@gmail.com', '9033175600', '123456789012', 'tal', 'tal', NULL, 'Fraud');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE IF NOT EXISTS `vehicle` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `vehicle_type` varchar(15) NOT NULL,
  `vehicle_no` varchar(15) NOT NULL,
  `lost_from` varchar(15) NOT NULL,
  `chases_no` varchar(15) NOT NULL,
  `company` varchar(10) NOT NULL,
  `model` varchar(15) NOT NULL,
  `found_at` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`id`, `vehicle_type`, `vehicle_no`, `lost_from`, `chases_no`, `company`, `model`, `found_at`) VALUES
(1, '2 wheeler', 'GJ21AJ2121', 'Bilimora', '1245124578', 'Bajaj', 'V15', 'Surat'),
(2, ' wheeler', 'GJ15BV7792', 'Navsari', '4521478563', 'Ford', 'Mastang', 'Not Found Yet');

-- --------------------------------------------------------

--
-- Table structure for table `warning`
--

CREATE TABLE IF NOT EXISTS `warning` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `warning_type` varchar(15) NOT NULL,
  `description` varchar(70) NOT NULL,
  `to` varchar(15) NOT NULL,
  `ho_id` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `warning`
--

