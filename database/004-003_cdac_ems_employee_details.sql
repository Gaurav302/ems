-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2018 at 20:30 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cdac_ems`
--

DROP TABLE IF EXISTS `ems_employees`;

-- --------------------------------------------------------

--
-- Table structure for table `ems_employees`
--

CREATE TABLE IF NOT EXISTS `ems_employees` (
  `employee_id` bigint(20) NOT NULL,
  `candicate_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Candidatecode generated by system',
  `offer_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Deparments Job Code FK from job_postings',
  `employee_first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `employee_middle_name` varchar(50) COLLATE utf8_unicode_ci NULL,
  `employee_last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `employee_dob` date NOT NULL,
  `employee_gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `employee_marital_status` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `father_first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `father_middle_name` varchar(50) COLLATE utf8_unicode_ci NULL,
  `father_last_name` varchar(50) COLLATE utf8_unicode_ci NULL,
  `mother_first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mother_middle_name` varchar(50) COLLATE utf8_unicode_ci NULL,
  `mother_last_name` varchar(50) COLLATE utf8_unicode_ci NULL,
  `employee_phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `employee_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `employee_aadhaar` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `joining_dt` date NOT NULL COMMENT 'Date on which candemployee has joined',
  `employee_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Can be DRAFT, SENT, ACCEPTED, REJECTED, JOINED',
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Record status Active, Inactive or Deleted',
  `created_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_dt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ems_employees`
--
ALTER TABLE `ems_employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ems_employees`
--
ALTER TABLE `ems_employees`
  MODIFY `employee_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ems_employees`
--
ALTER TABLE `ems_employees`
  ADD CONSTRAINT `ems_employees_ibfk_1` FOREIGN KEY (`candicate_code`) REFERENCES `job_interview_registrations` (`candicate_code`),
  ADD CONSTRAINT `ems_employees_ibfk_2` FOREIGN KEY (`offer_id`) REFERENCES `job_offers` (`offer_id`);
