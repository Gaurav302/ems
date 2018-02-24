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

DROP TABLE IF EXISTS `job_interview_registrations`;

-- --------------------------------------------------------

--
-- Table structure for table `job_interview_registrations`
--

CREATE TABLE IF NOT EXISTS `job_interview_registrations` (
  `row_id` bigint(20) NOT NULL,
  `candicate_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Candidatecode generated by system',
  `job_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Deparments Job Code FK from job_postings',
  `department_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Deparment for which the Job is posted FK from ems_departments master',
  `candicate_first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `candicate_middle_name` varchar(50) COLLATE utf8_unicode_ci NULL,
  `candicate_last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `candicate_dob` date NOT NULL,
  `candicate_gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `father_first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `father_middle_name` varchar(50) COLLATE utf8_unicode_ci NULL,
  `father_last_name` varchar(50) COLLATE utf8_unicode_ci NULL,
  `mother_first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mother_middle_name` varchar(50) COLLATE utf8_unicode_ci NULL,
  `mother_last_name` varchar(50) COLLATE utf8_unicode_ci NULL,
  `candicate_phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `candicate_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `candicate_aadhaar` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `candicate_address1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `candicate_address2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `candicate_city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `candicate_state` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `candicate_zip` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `prefred_schedule_id` bigint(20) NOT NULL COMMENT 'Preffered Interview Center  FK from job_interview_schedules',
  `interview_registration_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Can be DRAFT, REGISTERED, CONFIRMED',
  `alloted_schedule_id` bigint(20) NOT NULL  COMMENT 'Interview Schedule details date and center FK from job_interview_schedules',
  `interview_registration_comments` varchar(500) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Commetns for the Candidate',
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
-- Indexes for table `job_interview_registrations`
--
ALTER TABLE `job_interview_registrations`
  ADD PRIMARY KEY (`row_id`),
  ADD KEY `job_interview_candicate_code` (`candicate_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `job_interview_registrations`
--
ALTER TABLE `job_interview_registrations`
  MODIFY `row_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `job_interview_registrations`
--
ALTER TABLE `job_interview_registrations`
  ADD CONSTRAINT `job_interview_registrations_ibfk_1` FOREIGN KEY (`department_code`) REFERENCES `ems_departments` (`department_code`),
  ADD CONSTRAINT `job_interview_registrations_ibfk_2` FOREIGN KEY (`prefred_schedule_id`) REFERENCES `job_interview_schedules` (`interview_schedule_id`),
  ADD CONSTRAINT `job_interview_registrations_ibfk_3` FOREIGN KEY (`alloted_schedule_id`) REFERENCES `job_interview_schedules` (`interview_schedule_id`);
