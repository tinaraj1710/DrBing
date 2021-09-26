-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2021 at 11:44 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bing`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `email` varchar(20) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `ANo` int(10) NOT NULL,
  `DoctorName` varchar(60) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `PatientName` varchar(60) DEFAULT NULL,
  `Area` varchar(60) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Type` int(1) DEFAULT NULL,
  `slot_date` date DEFAULT current_timestamp(),
  `slot_time` time DEFAULT NULL,
  `patient_id` int(10) NOT NULL,
  `doctor_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`email`, `phone`, `ANo`, `DoctorName`, `department`, `PatientName`, `Area`, `Date`, `Type`, `slot_date`, `slot_time`, `patient_id`, `doctor_id`) VALUES
('', '', 1, 'Dr. Vijay Viswanathan', '', 'Dhruv', 'Adyar', NULL, 0, '2021-03-15', '00:00:00', 35, 1),
('', '', 2, 'Dr. Krishna Raman', '', 'Dhruv', 'Adyar', NULL, 0, '2021-03-15', '00:00:00', 35, 1),
('', '', 3, 'Dr. Krishna Raman', '', 'Arush', 'Adyar', NULL, 0, '2021-03-15', '00:00:00', 35, 1),
('', '', 4, 'Dr. Radha Shankar', '', 'Arush', 'Adyar', NULL, 0, '2021-03-15', '00:00:00', 35, 1),
('', '', 5, 'Dr. V Padma', '', 'Dhruv', 'Tambaram', NULL, 0, '2021-03-15', '00:00:00', 35, 1),
('', '', 6, 'Dr. Janaki Rajagopalan', '', 'Dhruv', 'Adyar', NULL, 0, '2021-03-15', '00:00:00', 35, 1),
('', '', 7, 'Dr. Satish M Rao', '', 'Dhruv', 'Adyar', NULL, 0, '2021-03-15', '00:00:00', 35, 1),
('', '', 9, 'Dr. Vani Vijay', '', 'Arush', 'Adyar', NULL, 0, '2021-03-15', '00:00:00', 35, 1),
('', '', 10, 'Dr. Akila Mani', '', 'Arush', 'Vanagaram', NULL, 0, '2021-03-15', '00:00:00', 35, 1),
('', '', 11, 'Dr. Rajesh N A', '', 'Arush', 'Tambaram', NULL, 0, '2021-03-15', '00:00:00', 35, 1),
(NULL, NULL, 12, 'hey', '$', NULL, NULL, NULL, NULL, '0000-00-00', '00:00:00', 35, 1),
(NULL, NULL, 13, 'Dr. V Padma', 'General ph', NULL, NULL, NULL, NULL, '2021-03-16', '00:00:00', 35, 1),
(NULL, NULL, 14, 'Dr. V Padma', 'General ph', NULL, NULL, NULL, NULL, '2021-03-16', '00:00:00', 35, 1),
(NULL, NULL, 15, 'Dr. V Padma', 'General ph', NULL, NULL, NULL, NULL, '2021-03-16', '00:00:00', 35, 1),
(NULL, NULL, 16, 'Dr. V Padma', 'General ph', NULL, NULL, NULL, 0, '2021-03-16', '00:00:00', 35, 1),
(NULL, NULL, 17, 'Dr. V Padma', 'General ph', NULL, NULL, NULL, 0, '2021-03-16', '00:00:00', 35, 1),
(NULL, NULL, 18, 'Dr. V Padma', 'General ph', NULL, NULL, NULL, 0, '2021-03-16', '00:00:00', 35, 1),
('hs@gmail.com', '1234567856', 19, 'Dr. V Padma', 'General ph', NULL, NULL, NULL, 0, '2021-03-16', '00:00:00', 35, 1),
('hs@gmail.com', '1234567856', 20, 'Dr. V Padma', 'General ph', 'Harry', NULL, NULL, 0, '2021-03-16', '00:00:00', 35, 1),
('hs@gmail.com', '1234567856', 21, 'Dr. V Padma', 'General ph', 'Harry', NULL, NULL, 0, '2021-03-16', '00:00:00', 35, 1),
('hs@gmail.com', '1234567856', 22, 'Dr. V Padma', 'General ph', 'Harry', NULL, NULL, 0, '2021-03-16', '00:00:00', 35, 1),
('hs@gmail.com', '1234567856', 23, 'Dr. V Padma', 'General ph', 'Harry', NULL, NULL, 0, '2021-03-16', '00:00:00', 35, 1),
('hs@gmail.com', '1234567856', 24, 'Dr. V Padma', 'General ph', 'Harry', NULL, NULL, 0, '2021-03-16', '00:00:00', 35, 1),
('hs@gmail.com', '1234567856', 25, 'Dr. V Padma', 'General ph', 'Harry', NULL, NULL, 1, '2021-03-16', '00:00:00', 35, 1),
('hs@gmail.com', '1234567856', 26, 'Dr. V Padma', 'General ph', 'Harry', NULL, NULL, 0, '2021-03-16', '00:00:00', 35, 1),
('hs@gmail.com', '1234567856', 27, 'Dr. V Padma', 'General physician', 'Harry', NULL, NULL, 0, '2021-03-16', '00:00:00', 35, 1),
('hs@gmail.com', '1234567856', 28, 'Dr. V Padma', 'General physician', 'Harry', NULL, NULL, 0, '2021-03-16', '00:00:00', 35, 1),
('', '', 29, 'Dr. V Padma', 'General physician', '', NULL, NULL, 0, '2021-03-16', '00:00:00', 35, 1),
('hs@gmail.com', '1234567856', 30, 'Dr. V Padma', 'General physician', 'Harry', NULL, NULL, 0, '2021-03-16', '00:00:00', 35, 1),
('hs@gmail.com', '1234567856', 31, 'Dr. V Padma', 'General physician', 'Harry', NULL, NULL, 0, '2021-03-16', NULL, 35, 1),
('hs@gmail.com', '1234567856', 32, 'Dr. V Padma', 'General physician', 'Harry', NULL, NULL, 0, '2021-03-16', NULL, 35, 1),
('hs@gmail.com', '1234567856', 33, 'Dr. V Padma', 'General physician', 'Harry', NULL, NULL, 0, '2021-03-16', NULL, 35, 1),
('hs@gmail.com', '1234567856', 34, 'Dr. V Padma', 'General physician', 'Harry', NULL, NULL, 0, '2021-03-16', NULL, 35, 1),
('hs@gmail.com', '1234567856', 35, 'Dr. V Padma', 'General physician', 'Harry', NULL, NULL, 0, '2021-03-16', NULL, 36, 1),
('hs@gmail.com', '1234567856', 36, 'Dr. V Padma', 'General physician', 'Harry', NULL, NULL, 0, '2021-03-16', NULL, 36, 1),
('hs@gmail.com', '1234567856', 37, 'Dr. V Padma', 'General physician', 'Harry', NULL, NULL, 0, '2021-03-16', NULL, 36, 1),
('hs@gmail.com', '1234567856', 38, 'Dr. V Padma', 'General physician', 'Harry', NULL, NULL, 1, '2021-03-16', NULL, 36, 1),
('hs@gmail.com', '1234567856', 39, 'Dr. V Padma', 'General physician', 'Harry', NULL, NULL, 1, '2021-03-17', NULL, 36, 1),
('hs@gmail.com', '1234567856', 40, 'Dr. V Padma', 'General physician', 'Harry', NULL, NULL, 1, '2021-03-17', NULL, 36, 1),
('hs@gmail.com', '1234567856', 43, 'Dr. V Padma', 'General physician', 'Harry', NULL, NULL, 1, '2021-03-20', NULL, 36, 1),
('hshq@gmail.com', '9876541023', 44, 'Dr. V Padma', 'General physician', 'Harry Styles', NULL, NULL, 1, '2021-03-20', NULL, 38, 1),
('hs@gmail.com', '1234567856', 45, 'Dr. V Padma', 'General physician', 'Harry', NULL, NULL, 1, '2021-03-20', NULL, 36, 1),
('hs@gmail.com', '1234567856', 46, 'Dr. V Padma', 'General physician', 'Harry', NULL, NULL, 1, '2021-03-21', NULL, 36, 1),
('hs@gmail.com', '1234567856', 47, 'Dr. V Padma', 'General physician', 'Harry', NULL, NULL, 1, '2021-03-21', NULL, 35, 1),
('2018.salonee.velonde', '9876142312', 48, 'Dr. V Padma', 'General physician', 'Salonee Velonde', NULL, NULL, 1, '2021-03-21', NULL, 40, 1),
('tim@gmail.com', '1234567890', 49, 'Dr. V Padma', 'General physician', 'Timothy', NULL, NULL, 1, '2021-04-11', NULL, 34, 1),
('tim@gmail.com', '1234567890', 50, 'Niall', '', 'Timothy', NULL, NULL, 1, '2021-04-17', NULL, 34, 1),
('tim@gmail.com', '1234567890', 51, 'Niall', '', 'Timothy', NULL, NULL, 1, '2021-04-17', NULL, 34, 1),
('tim@gmail.com', '1234567890', 52, 'Niall', '', 'Timothy', NULL, NULL, 1, '2021-04-17', NULL, 34, 1),
('tim@gmail.com', '1234567890', 53, 'Niall', '', 'Timothy', NULL, NULL, 1, '2021-04-17', NULL, 34, 1),
('tim@gmail.com', '1234567890', 54, 'Niall', '', 'Timothy', NULL, NULL, 1, '2021-04-17', NULL, 34, 0),
('tim@gmail.com', '1234567890', 55, 'Niall', '', 'Timothy', NULL, NULL, 1, '2021-04-17', NULL, 34, 11);

-- --------------------------------------------------------

--
-- Table structure for table `data_raw`
--

CREATE TABLE `data_raw` (
  `id` int(10) UNSIGNED NOT NULL,
  `fbdate` date NOT NULL,
  `fbuser` varchar(100) NOT NULL,
  `fbjsondata` mediumtext NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Capture Fitbit Raw JSON Data';

--
-- Dumping data for table `data_raw`
--

INSERT INTO `data_raw` (`id`, `fbdate`, `fbuser`, `fbjsondata`, `dateadded`) VALUES
(1, '2021-03-17', '35', '{\"activities-heart\":[\r\n			{\r\n				\"customHeartRateZones\":[],\r\n				\"dateTime\":\"2021-03-01\",\r\n				\"heartRateZones\":[\r\n				{\"max\":96,\"min\":30,\"name\":\"Out of Range\"},\r\n				{\"max\":134,\"min\":96,\"name\":\"Fat Burn\"},\r\n				{\"max\":163,\"min\":134,\"name\":\"Cardio\"},\r\n				{\"max\":220,\"min\":163,\"name\":\"Peak\"}],\r\n			\"value\":\"0\"}\r\n			],\r\n			\"activities-heart-intraday\":{\"dataset\":[],\"datasetInterval\":1,\"datasetType\":\"second\"}\r\n		}', '0000-00-00 00:00:00'),
(4, '2021-03-17', '36', '{\"activities-heart\":[\r\n			{\r\n				\"customHeartRateZones\":[],\r\n				\"dateTime\":\"2021-03-01\",\r\n				\"heartRateZones\":[\r\n				{\"max\":96,\"min\":30,\"name\":\"Out of Range\"},\r\n				{\"max\":134,\"min\":96,\"name\":\"Fat Burn\"},\r\n				{\"max\":163,\"min\":134,\"name\":\"Cardio\"},\r\n				{\"max\":220,\"min\":163,\"name\":\"Peak\"}],\r\n			\"value\":\"0\"}\r\n			],\r\n			\"activities-heart-intraday\":{\"dataset\":[],\"datasetInterval\":1,\"datasetType\":\"second\"}\r\n		}', '0000-00-00 00:00:00'),
(5, '2021-03-17', '37', '{\"activities-heart\":[\r\n			{\r\n				\"customHeartRateZones\":[],\r\n				\"dateTime\":\"2021-03-01\",\r\n				\"heartRateZones\":[\r\n				{\"max\":96,\"min\":30,\"name\":\"Out of Range\"},\r\n				{\"max\":134,\"min\":96,\"name\":\"Fat Burn\"},\r\n				{\"max\":163,\"min\":134,\"name\":\"Cardio\"},\r\n				{\"max\":220,\"min\":163,\"name\":\"Peak\"}],\r\n			\"value\":\"0\"}\r\n			],\r\n			\"activities-heart-intraday\":{\"dataset\":[],\"datasetInterval\":1,\"datasetType\":\"second\"}\r\n		}', '0000-00-00 00:00:00'),
(7, '2021-03-17', '38', '{\"activities-heart\":[\r\n			{\r\n				\"customHeartRateZones\":[],\r\n				\"dateTime\":\"2021-03-01\",\r\n				\"heartRateZones\":[\r\n				{\"max\":96,\"min\":30,\"name\":\"Out of Range\"},\r\n				{\"max\":134,\"min\":96,\"name\":\"Fat Burn\"},\r\n				{\"max\":163,\"min\":134,\"name\":\"Cardio\"},\r\n				{\"max\":220,\"min\":163,\"name\":\"Peak\"}],\r\n			\"value\":\"0\"}\r\n			],\r\n			\"activities-heart-intraday\":{\"dataset\":[],\"datasetInterval\":1,\"datasetType\":\"second\"}\r\n		}', '0000-00-00 00:00:00'),
(8, '2021-03-17', '40', '{\"activities-heart\":[\r\n			{\r\n				\"customHeartRateZones\":[],\r\n				\"dateTime\":\"2021-03-01\",\r\n				\"heartRateZones\":[\r\n				{\"max\":96,\"min\":30,\"name\":\"Out of Range\"},\r\n				{\"max\":134,\"min\":96,\"name\":\"Fat Burn\"},\r\n				{\"max\":163,\"min\":134,\"name\":\"Cardio\"},\r\n				{\"max\":220,\"min\":163,\"name\":\"Peak\"}],\r\n			\"value\":\"0\"}\r\n			],\r\n			\"activities-heart-intraday\":{\"dataset\":[],\"datasetInterval\":1,\"datasetType\":\"second\"}\r\n		}', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `disease_doctor`
--

CREATE TABLE `disease_doctor` (
  `Rec_no` int(11) NOT NULL,
  `DiseaseName` varchar(45) DEFAULT NULL,
  `Specialist` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disease_doctor`
--

INSERT INTO `disease_doctor` (`Rec_no`, `DiseaseName`, `Specialist`) VALUES
(1, 'hypertensive disease', 'General physician'),
(2, 'hypertensive disease', 'Internist'),
(3, 'hypertensive disease', 'Cardiologist'),
(4, 'hypertensive disease', 'Nephrologist'),
(5, 'diabetes', 'General physician'),
(6, 'diabetes', 'Endocrinologist'),
(7, 'diabetes', 'Opthalmologist'),
(8, 'diabetes', 'Nephrologist'),
(9, 'diabetes', 'General surgeon'),
(10, 'diabetes', 'Dietitian'),
(11, 'depression mental', 'Psychologist'),
(12, 'depression mental', 'Psychiatrist'),
(13, 'depressive disorder', 'Psychologist'),
(14, 'depressive disorder', 'Psychiatrist'),
(15, 'coronary arteriosclerosis', 'General physician'),
(16, 'coronary arteriosclerosis', 'Nephrologist'),
(17, 'coronary arteriosclerosis', 'Cardiologist'),
(18, 'coronary arteriosclerosis', 'General surgeon'),
(19, 'coronary arteriosclerosis', 'Psychiatrist'),
(20, 'coronary arteriosclerosis', 'Psychologist'),
(21, 'coronary arteriosclerosis', 'Dietitian'),
(22, 'coronary heart disease', 'Cardiologist'),
(23, 'coronary heart disease', 'Internist'),
(24, 'coronary heart disease', 'Psychiatrist'),
(25, 'coronary heart disease', 'Psychologist'),
(26, 'coronary heart disease', 'Dietitian'),
(27, 'pneumonia', 'General physician'),
(28, 'pneumonia', 'Pediatrician'),
(29, 'failure heart congestive', 'General physician'),
(30, 'failure heart congestive', 'Cardiologist'),
(31, 'failure heart congestive', 'General surgeon'),
(32, 'accident cerebrovascular', 'Neurosurgeon'),
(33, 'accident cerebrovascular', 'Internist'),
(34, 'asthma', 'Allergist'),
(35, 'asthma', 'Immunologist'),
(36, 'asthma', 'Pulmonologist'),
(37, 'myocardial infarction', 'Cardiologist'),
(38, 'hypercholesterolemia', 'General physician'),
(39, 'hypercholesterolemia', 'Cardiologist'),
(40, 'hypercholesterolemia', 'Endocrinologist'),
(41, 'infection', 'Allergist'),
(42, 'infection urinary tract', 'General physician'),
(43, 'infection urinary tract', 'Urologist'),
(44, 'infection urinary tract', 'Nephrologist'),
(45, 'anemia', 'Pediatrician'),
(46, 'anemia', 'General physician'),
(47, 'anemia', 'Gynecologist'),
(48, 'anemia', 'Hematologist'),
(49, 'anemia', 'Gastroenterologist'),
(50, 'chronic obstructive airway disease', 'General physician'),
(51, 'chronic obstructive airway disease', 'Physiotherapist'),
(52, 'dementia', 'General physician'),
(53, 'insufficiency renal', 'General physician'),
(54, 'insufficiency renal', 'Internist'),
(55, 'insufficiency renal', 'Nephrologist'),
(56, 'insufficiency renal', 'Pediatrician'),
(57, 'confusion', 'Neurologist'),
(58, 'degenerative polyarthritis', 'Rheumatologist'),
(59, 'hypothyroidism', 'Endocrinologist'),
(60, 'hypothyroidism', 'General physician'),
(61, 'anxiety state', 'Psychiatrist'),
(62, 'malignant neoplasms', 'General surgeon'),
(63, 'malignant neoplasms', 'Oncologist'),
(64, 'malignant neoplasms', 'Pulmonologist'),
(65, 'primary malignant neoplasm', 'Urologist'),
(66, 'primary malignant neoplasm', 'Oncologist'),
(67, 'primary malignant neoplasm', 'Internist'),
(68, 'primary malignant neoplasm', 'General surgeon'),
(69, 'primary malignant neoplasm', 'General physician'),
(70, 'acquired immuno-deficiency syndrome', 'General physician'),
(71, 'acquired immuno-deficiency syndrome', 'Allergist'),
(72, 'acquired immuno-deficiency syndrome', 'Internist'),
(73, 'HIV', 'General physician'),
(74, 'HIV', 'Allergist'),
(75, 'HIV', 'Internist'),
(76, 'hiv infections', 'General physician'),
(77, 'hiv infections', 'Allergist'),
(78, 'hiv infections', 'Internist'),
(79, 'cellulitis', 'Dermatologist'),
(80, 'gastroesophageal reflux disease', 'General physician'),
(81, 'gastroesophageal reflux disease', 'Gastroenterologist'),
(82, 'septicemia', 'Internist'),
(83, 'septicemia', 'General physician'),
(84, 'systemic infection', 'Allergist'),
(85, 'sepsis (invertebrate)', 'Internist'),
(86, 'sepsis (invertebrate)', 'General physician'),
(87, 'deep vein thrombosis', 'General physician'),
(88, 'deep vein thrombosis', 'Internist'),
(89, 'deep vein thrombosis', 'General surgeon'),
(90, 'dehydration', 'General physician'),
(91, 'dehydration', 'Pediatrician'),
(92, 'neoplasm', 'Oncologist'),
(93, 'neoplasm', 'General surgeon'),
(94, 'neoplasm', 'Gynecologist'),
(95, 'embolism pulmonary', 'General physician'),
(96, 'embolism pulmonary', 'Cardiologist'),
(97, 'embolism pulmonary', 'Hematologist'),
(98, 'embolism pulmonary', 'Pulmonologist'),
(99, 'epilepsy', 'Neurologist'),
(100, 'epilepsy', 'Internist'),
(101, 'cardiomyopathy', 'Cardiologist'),
(102, 'cardiomyopathy', 'General surgeon'),
(103, 'chronic kidney failure', 'Nephrologist'),
(104, 'chronic kidney failure', 'General physician'),
(105, 'chronic kidney failure', 'Internist'),
(106, 'chronic kidney failure', 'Pediatrician'),
(107, 'carcinoma', 'Oncologist'),
(108, 'carcinoma', 'General surgeon'),
(109, 'hepatitis C', 'Gastroenterologist'),
(110, 'peripheral vascular disease', 'General physician'),
(111, 'peripheral vascular disease', 'Internist'),
(112, 'peripheral vascular disease', 'Cardiologist'),
(113, 'peripheral vascular disease', 'General surgeon'),
(114, 'psychotic disorder', 'Psychiatrist'),
(115, 'psychotic disorder', 'Psychologist'),
(116, 'psychotic disorder', 'General physician'),
(117, 'psychotic disorder', 'Psychologist'),
(118, 'hyperlipidemia', 'General physician'),
(119, 'hyperlipidemia', 'Pediatrician'),
(120, 'hyperlipidemia', 'Internist'),
(121, 'hyperlipidemia', 'Endocrinologist'),
(122, 'hyperlipidemia', 'Cardiologist'),
(123, 'hyperlipidemia', 'Neurologist'),
(124, 'bipolar disorder', 'Psychiatrist'),
(125, 'bipolar disorder', 'General physician'),
(126, 'bipolar disorder', 'Psychologist'),
(127, 'obesity', 'Bariatric Surgeon'),
(128, 'obesity', 'General physician'),
(129, 'obesity', 'Endocrinologist'),
(130, 'obesity', 'Dietitian'),
(131, 'ischemia', 'General physician'),
(132, 'ischemia', 'Neurologist'),
(133, 'ischemia', 'Internist'),
(134, 'ischemia', 'Cardiologist'),
(135, 'ischemia', 'General surgeon'),
(136, 'ischemia', 'Neurosurgeon'),
(137, 'cirrhosis', 'Gastroenterologist'),
(138, 'cirrhosis', 'Internist'),
(139, 'exanthema', 'Dermatologist'),
(140, 'exanthema', 'General physician'),
(141, 'exanthema', 'Internist'),
(142, 'exanthema', 'Pediatrician'),
(143, 'exanthema', 'General surgeon'),
(144, 'benign prostatic hypertrophy', 'General physician'),
(145, 'benign prostatic hypertrophy', 'Urologist'),
(146, 'kidney failure acute', 'Nephrologist'),
(147, 'kidney failure acute', 'Internist'),
(148, 'kidney failure acute', 'General physician'),
(149, 'mitral valve insufficiency', 'General physician'),
(150, 'mitral valve insufficiency', 'Internist'),
(151, 'mitral valve insufficiency', 'Cardiologist'),
(152, 'arthritis', 'General physician'),
(153, 'arthritis', 'Rheumatologist'),
(154, 'arthritis', 'Orthopedist'),
(155, 'bronchitis', 'Allergist'),
(156, 'bronchitis', 'Internist'),
(157, 'bronchitis', 'Pediatrician'),
(158, 'bronchitis', 'Pulmonologist'),
(159, 'hemiparesis', 'Psychiatrist'),
(160, 'hemiparesis', 'Physiotherapist'),
(161, 'osteoporosis', 'Internist'),
(162, 'osteoporosis', 'Gynecologist'),
(163, 'osteoporosis', 'General physician'),
(164, 'osteoporosis', 'Endocrinologist'),
(165, 'osteoporosis', 'Rheumatologist'),
(166, 'osteoporosis', 'Psychiatrist'),
(167, 'transient ischemic attack', 'General physician'),
(168, 'transient ischemic attack', 'Neurologist'),
(169, 'transient ischemic attack', 'Internist'),
(170, 'transient ischemic attack', 'Cardiologist'),
(171, 'transient ischemic attack', 'General surgeon'),
(172, 'transient ischemic attack', 'Neurosurgeon'),
(173, 'adenocarcinoma', 'General surgeon'),
(174, 'adenocarcinoma', 'Oncologist'),
(175, 'adenocarcinoma', 'Gastroenterologist'),
(176, 'paranoia', 'Psychiatrist'),
(177, 'paranoia', 'Psychologist'),
(178, 'paranoia', 'General physician'),
(179, 'pancreatitis', 'General physician'),
(180, 'pancreatitis', 'Internist'),
(181, 'pancreatitis', 'Gastroenterologist'),
(182, 'pancreatitis', 'General surgeon'),
(183, 'incontinence', 'Urologist'),
(184, 'incontinence', 'General surgeon'),
(185, 'incontinence', 'Gynecologist'),
(186, 'paroxysmal dyspnea', 'Cardiologist'),
(187, 'paroxysmal dyspnea', 'General physician'),
(188, 'hernia', 'General physician'),
(189, 'hernia', 'Internist'),
(190, 'hernia', 'Pediatrician'),
(191, 'hernia', 'General surgeon'),
(192, 'malignant neoplasm of prostate', 'Urologist'),
(193, 'malignant neoplasm of prostate', 'Oncologist'),
(194, 'malignant neoplasm of prostate', 'Dietitian'),
(195, 'malignant neoplasm of prostate', 'Physiotherapist'),
(196, 'malignant neoplasm of prostate', 'Psychologist'),
(197, 'carcinoma prostate', 'Urologist'),
(198, 'carcinoma prostate', 'Oncologist'),
(199, 'carcinoma prostate', 'General physician'),
(200, 'edema pulmonary', 'General physician'),
(201, 'edema pulmonary', 'Pulmonologist'),
(202, 'edema pulmonary', 'Internist'),
(203, 'edema pulmonary', 'Cardiologist'),
(204, 'lymphatic diseases', 'Internist'),
(205, 'lymphatic diseases', 'General surgeon'),
(206, 'lymphatic diseases', 'Dermatologist'),
(207, 'lymphatic diseases', 'Oncologist'),
(208, 'lymphatic diseases', 'Psychiatrist'),
(209, 'lymphatic diseases', 'Immunologist'),
(210, 'stenosis aortic valve', 'General physician'),
(211, 'stenosis aortic valve', 'Internist'),
(212, 'stenosis aortic valve', 'Cardiologist'),
(213, 'malignant neoplasm of breast', 'Oncologist'),
(214, 'malignant neoplasm of breast', 'General surgeon'),
(215, 'malignant neoplasm of breast', 'Immunologist'),
(216, 'carcinoma breast', 'Oncologist'),
(217, 'carcinoma breast', 'General surgeon'),
(218, 'carcinoma breast', 'Immunologist'),
(219, 'schizophrenia', 'Psychiatrist'),
(220, 'schizophrenia', 'Psychologist'),
(221, 'schizophrenia', 'General physician'),
(222, 'diverticulitis', 'General physician'),
(223, 'diverticulitis', 'Gastroenterologist'),
(224, 'diverticulitis', 'General surgeon'),
(225, 'overload fluid', 'General physician'),
(226, 'overload fluid', 'Nephrologist'),
(227, 'overload fluid', 'Cardiologist'),
(228, 'overload fluid', 'Dietitian'),
(229, 'ulcer peptic', 'General physician'),
(230, 'ulcer peptic', 'Internist'),
(231, 'ulcer peptic', 'Pediatrician'),
(232, 'osteomyelitis', 'General physician'),
(233, 'osteomyelitis', 'Neurosurgeon'),
(234, 'osteomyelitis', 'Internist'),
(235, 'osteomyelitis', 'Rheumatologist'),
(236, 'osteomyelitis', 'General surgeon'),
(237, 'osteomyelitis', 'Psychiatrist'),
(238, 'gastritis', 'General physician'),
(239, 'gastritis', 'Internist'),
(240, 'gastritis', 'Gastroenterologist'),
(241, 'gastritis', 'Pediatrician'),
(242, 'bacteremia', 'General physician'),
(243, 'bacteremia', 'Pediatrician'),
(244, 'bacteremia', 'Internist'),
(245, 'bacteremia', 'Hematologist'),
(246, 'failure kidney', 'General physician'),
(247, 'failure kidney', 'Internist'),
(248, 'failure kidney', 'Nephrologist'),
(249, 'failure kidney', 'General surgeon'),
(250, 'failure kidney', 'Dietitian'),
(251, 'failure kidney', 'Psychologist'),
(252, 'sickle cell anemia', 'Hematologist'),
(253, 'sickle cell anemia', 'General physician'),
(254, 'sickle cell anemia', 'Pediatrician'),
(255, 'sickle cell anemia', 'Oncologist'),
(256, 'sickle cell anemia', 'Neurologist'),
(257, 'sickle cell anemia', 'Opthalmologist'),
(258, 'sickle cell anemia', 'General surgeon'),
(259, 'failure heart', 'General physician'),
(260, 'failure heart', 'Internist'),
(261, 'failure heart', 'Cardiologist'),
(262, 'failure heart', 'General surgeon'),
(263, 'upper respiratory infection', 'Pulmonologist'),
(264, 'upper respiratory infection', 'General physician'),
(265, 'upper respiratory infection', 'Pediatrician'),
(266, 'upper respiratory infection', 'Allergist'),
(267, 'hepatitis', 'Allergist'),
(268, 'hepatitis', 'Gastroenterologist'),
(269, 'hypertension pulmonary', 'Cardiologist'),
(270, 'hypertension pulmonary', 'Pulmonologist'),
(271, 'hypertension pulmonary', 'Rheumatologist'),
(272, 'deglutition disorder', 'ENT specialist'),
(273, 'deglutition disorder', 'Immunologist'),
(274, 'deglutition disorder', 'General physician'),
(275, 'gout', 'General physician'),
(276, 'gout', 'Internist'),
(277, 'gout', 'Rheumatologist'),
(278, 'thrombocytopaenia', 'Hematologist'),
(279, 'thrombocytopaenia', 'General physician'),
(280, 'hypoglycemia', 'General physician'),
(281, 'hypoglycemia', 'Endocrinologist'),
(282, 'hypoglycemia', 'Dietitian'),
(283, 'hypoglycemia', 'Opthalmologist'),
(284, 'hypoglycemia', 'General surgeon'),
(285, 'hypoglycemia', 'Dentist'),
(286, 'pneumonia aspiration', 'General physician'),
(287, 'pneumonia aspiration', 'Internist'),
(288, 'pneumonia aspiration', 'Pulmonologist'),
(289, 'colitis', 'Gastroenterologist'),
(290, 'colitis', 'General physician'),
(291, 'colitis', 'Internist'),
(292, 'colitis', 'Pediatrician'),
(293, 'diverticulosis', 'General physician'),
(294, 'diverticulosis', 'Gastroenterologist'),
(295, 'diverticulosis', 'General surgeon'),
(296, 'diverticulosis', 'Internist'),
(297, 'suicide attempt', 'Psychologist'),
(298, 'suicide attempt', 'Psychiatrist'),
(299, 'suicide attempt', 'General physician'),
(300, 'suicide attempt', 'Internist'),
(301, 'Pneumocystis carinii pneumonia', 'Allergist'),
(302, 'Pneumocystis carinii pneumonia', 'Pulmonologist'),
(303, 'Pneumocystis carinii pneumonia', 'General physician'),
(304, 'hepatitis B', 'General physician'),
(305, 'hepatitis B', 'Pediatrician'),
(306, 'hepatitis B', 'Internist'),
(307, 'hepatitis B', 'Gastroenterologist'),
(308, 'hepatitis B', 'Allergist'),
(309, 'parkinson disease', 'Neurologist'),
(310, 'parkinson disease', 'Physiotherapist'),
(311, 'lymphoma', 'Oncologist'),
(312, 'lymphoma', 'General surgeon'),
(313, 'hyperglycemia', 'General physician'),
(314, 'hyperglycemia', 'Endocrinologist'),
(315, 'hyperglycemia', 'Dietitian'),
(316, 'hyperglycemia', 'Opthalmologist'),
(317, 'hyperglycemia', 'General surgeon'),
(318, 'hyperglycemia', 'Dentist'),
(319, 'encephalopathy', 'General physician'),
(320, 'encephalopathy', 'Pediatrician'),
(321, 'encephalopathy', 'Allergist'),
(322, 'encephalopathy', 'Neurologist'),
(323, 'encephalopathy', 'Physiotherapist'),
(324, 'tricuspid valve insufficiency', 'Cardiologist'),
(325, 'tricuspid valve insufficiency', 'Internist'),
(326, 'tricuspid valve insufficiency', 'General physician'),
(327, 'alzheimer', 'General physician'),
(328, 'alzheimer', 'Neurologist'),
(329, 'alzheimer', 'Psychiatrist'),
(330, 'alzheimer', 'Psychologist'),
(331, 'candidiasis', 'General physician'),
(332, 'candidiasis', 'Allergist'),
(333, 'candidiasis', 'Urologist'),
(334, 'oralcandidiasis', 'General physician'),
(335, 'oralcandidiasis', 'Internist'),
(336, 'oralcandidiasis', 'Pediatrician'),
(337, 'oralcandidiasis', 'Dentist'),
(338, 'oralcandidiasis', 'Allergist'),
(339, 'neuropathy', 'Neurologist'),
(340, 'neuropathy', 'General physician'),
(341, 'kidney disease', 'General physician'),
(342, 'kidney disease', 'Nephrologist'),
(343, 'kidney disease', 'Pediatrician'),
(344, 'kidney disease', 'General surgeon'),
(345, 'kidney disease', 'Dietitian'),
(346, 'fibroid tumor', 'General physician'),
(347, 'fibroid tumor', 'Gynecologist'),
(348, 'fibroid tumor', 'Internist'),
(349, 'glaucoma', 'Opthalmologist'),
(350, 'neoplasm metastasis', 'General surgeon'),
(351, 'neoplasm metastasis', 'Oncologist'),
(352, 'neoplasm metastasis', 'Immunologist'),
(353, 'malignant tumor of colon', 'General physician'),
(354, 'malignant tumor of colon', 'Oncologist'),
(355, 'malignant tumor of colon', 'General surgeon'),
(356, 'carcinoma colon', 'General surgeon'),
(357, 'carcinoma colon', 'Oncologist'),
(358, 'ketoacidosis diabetic', 'General physician'),
(359, 'ketoacidosis diabetic', 'Dietitian'),
(360, 'ketoacidosis diabetic', 'Endocrinologist'),
(361, 'ketoacidosis diabetic', 'Nephrologist'),
(362, 'tonic-clonic epilepsy', 'General physician'),
(363, 'tonic-clonic epilepsy', 'Neurologist'),
(364, 'tonic-clonic epilepsy', 'Pediatric Neurologist'),
(365, 'tonic-clonic seizures', 'General physician'),
(366, 'tonic-clonic seizures', 'Neurologist'),
(367, 'tonic-clonic seizures', 'Pediatric Neurologist'),
(368, 'malignant neoplasms', 'Oncologist'),
(369, 'malignant neoplasms', 'General surgeon'),
(370, 'respiratory failure', 'Allergist'),
(371, 'respiratory failure', 'Internist'),
(372, 'respiratory failure', 'Pediatrician'),
(373, 'respiratory failure', 'Pulmonologist'),
(374, 'respiratory failure', 'Physiotherapist'),
(375, 'melanoma', 'Dermatologist'),
(376, 'melanoma', 'General surgeon'),
(377, 'melanoma', 'Oncologist'),
(378, 'melanoma', 'General physician'),
(379, 'gastroenteritis', 'General physician'),
(380, 'gastroenteritis', 'Gastroenterologist'),
(381, 'gastroenteritis', 'Internist'),
(382, 'malignant neoplasm of lung', 'Oncologist'),
(383, 'malignant neoplasm of lung', 'General surgeon'),
(384, 'malignant neoplasm of lung', 'Pulmonologist'),
(385, 'carcinoma of lung', 'Oncologist'),
(386, 'carcinoma of lung', 'General surgeon'),
(387, 'carcinoma of lung', 'Pulmonologist'),
(388, 'manic disorder', 'General physician'),
(389, 'manic disorder', 'Psychologist'),
(390, 'manic disorder', 'Physiotherapist'),
(391, 'personality disorder', 'General physician'),
(392, 'personality disorder', 'Psychologist'),
(393, 'personality disorder', 'Psychiatrist'),
(394, 'primary carcinoma of the liver cells', 'Oncologist'),
(395, 'primary carcinoma of the liver cells', 'General surgeon'),
(396, 'primary carcinoma of the liver cells', 'Gastroenterologist'),
(397, 'emphysema pulmonary', 'General physician'),
(398, 'emphysema pulmonary', 'Pulmonologist'),
(399, 'emphysema pulmonary', 'General surgeon'),
(400, 'hemorrhoids', 'General physician'),
(401, 'hemorrhoids', 'Gastroenterologist'),
(402, 'hemorrhoids', 'General surgeon'),
(403, 'hemorrhoids', 'Internist'),
(404, 'spasm bronchial', 'General physician'),
(405, 'spasm bronchial', 'Pulmonologist'),
(406, 'spasm bronchial', 'Allergist'),
(407, 'aphasia', 'General physician'),
(408, 'aphasia', 'Neurologist'),
(409, 'obesity morbid', 'Bariatric Surgeon'),
(410, 'obesity morbid', 'General physician'),
(411, 'obesity morbid', 'Endocrinologist'),
(412, 'obesity morbid', 'Dietitian'),
(413, 'pyelonephritis', 'Urologist'),
(414, 'pyelonephritis', 'Nephrologist'),
(415, 'pyelonephritis', 'Pediatrician'),
(416, 'pyelonephritis', 'General physician'),
(417, 'endocarditis', 'Cardiologist'),
(418, 'endocarditis', 'General surgeon'),
(419, 'endocarditis', 'Allergist'),
(420, 'endocarditis', 'Neurologist'),
(421, 'effusion pericardial', 'Cardiologist'),
(422, 'effusion pericardial', 'General surgeon'),
(423, 'pericardial effusion body substance', 'Cardiologist'),
(424, 'pericardial effusion body substance', 'General surgeon'),
(425, 'chronic alcoholic intoxication', 'General physician'),
(426, 'chronic alcoholic intoxication', 'Internist'),
(427, 'pneumothorax', 'General physician'),
(428, 'pneumothorax', 'Pulmonologist'),
(429, 'delirium', 'General physician'),
(430, 'delirium', 'Neurologist'),
(431, 'delirium', 'Psychiatrist'),
(432, 'delirium', 'Psychologist'),
(433, 'neutropenia', 'General physician'),
(434, 'neutropenia', 'Internist'),
(435, 'neutropenia', 'Hematologist'),
(436, 'hyperbilirubinemia', 'General physician'),
(437, 'hyperbilirubinemia', 'Internist'),
(438, 'hyperbilirubinemia', 'Gastroenterologist'),
(439, 'hyperbilirubinemia', 'Dermatologist'),
(440, 'hyperbilirubinemia', 'Hematologist'),
(441, 'influenza', 'General physician'),
(442, 'influenza', 'Internist'),
(443, 'influenza', 'Pediatrician'),
(444, 'dependence', 'General physician'),
(445, 'dependence', 'Psychiatrist'),
(446, 'dependence', 'Psychologist'),
(447, 'thrombus', 'General physician'),
(448, 'thrombus', 'Internist'),
(449, 'thrombus', 'General surgeon'),
(450, 'cholecystitis', 'General physician'),
(451, 'cholecystitis', 'Gastroenterologist'),
(452, 'cholecystitis', 'General surgeon'),
(453, 'hernia hiatal', 'General physician'),
(454, 'hernia hiatal', 'General surgeon'),
(455, 'hernia hiatal', 'Gastroenterologist'),
(456, 'migraine disorders', 'General physician'),
(457, 'migraine disorders', 'Neurologist'),
(458, 'pancytopenia', 'General physician'),
(459, 'pancytopenia', 'Hematologist'),
(460, 'pancytopenia', 'Internist'),
(461, 'pancytopenia', 'Oncologist'),
(462, 'cholelithiasis', 'General physician'),
(463, 'cholelithiasis', 'Internist'),
(464, 'cholelithiasis', 'Gastroenterologist'),
(465, 'biliary calculus', 'General physician'),
(466, 'biliary calculus', 'Internist'),
(467, 'biliary calculus', 'Gastroenterologist'),
(468, 'tachycardia sinus', 'General physician'),
(469, 'tachycardia sinus', 'Cardiologist'),
(470, 'ileus', 'General physician'),
(471, 'ileus', 'Gastroenterologist'),
(472, 'ileus', 'Orthopedist'),
(473, 'ileus', 'General surgeon'),
(474, 'adhesion', 'General physician'),
(475, 'adhesion', 'Gastroenterologist'),
(476, 'adhesion', 'General surgeon'),
(477, 'delusion', 'Psychologist'),
(478, 'delusion', 'Psychiatrist'),
(479, 'delusion', 'Physiotherapist'),
(480, 'affect labile', 'Psychologist'),
(481, 'affect labile', 'Psychiatrist'),
(482, 'affect labile', 'Physiotherapist'),
(483, 'decubitus ulcer', 'General physician'),
(484, 'decubitus ulcer', 'Neurologist'),
(485, 'decubitus ulcer', 'Internist'),
(486, 'decubitus ulcer', 'General surgeon');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` int(12) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `password` varchar(70) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `Speciality` varchar(50) DEFAULT NULL,
  `Area` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `phone`, `email`, `password`, `created_at`, `updated_at`, `Speciality`, `Area`) VALUES
(1, 'Dr. V Padma', 0, 'padma@gmail.com', 'padma', '2021-03-15 05:26:26', '2021-03-15 05:26:26', 'General physician', 'Tambaram'),
(2, 'Dr. Vijay Viswanathan', 0, 'vijay@gmail.com', 'vijay', '2021-03-15 05:26:26', '2021-03-15 05:26:26', 'Internist', 'Adyar'),
(3, 'Dr. R Selvan', 0, 'selvan@gmail.com', 'selvan', '2021-03-15 05:26:26', '2021-03-15 05:26:26', 'General surgeon', 'Tambaram'),
(4, 'Dr. B Madan Mohan', 0, 'madan@gmail.com', 'madan', '2021-03-15 05:26:26', '2021-03-15 05:26:26', 'Cardiologist', 'Adyar'),
(5, 'Dr. Rajesh N A', 0, 'rajesh@gmail.com', 'rajesh', '2021-03-15 05:26:26', '2021-03-15 05:26:26', 'Gastroenterologist', 'Tambaram'),
(6, 'Dr. Subhashini Venkatesh', 0, 'subhashini@gmail.com', 'subhashini', '2021-03-15 05:26:26', '2021-03-15 05:26:26', 'Pediatrician', 'Anna Nagar'),
(7, 'Dr. S G D Gangadharan', 0, 'ganga@gmail.com', 'ganga', '2021-03-15 05:26:26', '2021-03-15 05:26:26', 'Oncologist', 'Anna Nagar'),
(8, 'Dr. Kannan G K', 0, 'kannan@gmail.com', 'kannan', '2021-03-15 05:26:26', '2021-03-15 05:26:26', 'Psychiatrist', 'Velachery'),
(9, 'Dr. S Rajendran', 0, 'rajendran@gmail.com', 'rajendran', '2021-03-15 05:26:26', '2021-03-15 05:26:26', 'Neurologist', 'Anna Nagar'),
(10, 'Dr. G S Kailash', 0, 'kailash@gmail.com', 'kailash', '2021-03-15 05:26:26', '2021-03-15 05:26:26', 'Pulmonologist', 'Velachery'),
(11, 'Niall', 2147483647, 'niall@gmail.com', '$2y$10$RtzfqHxEGEZqq0VIT0895erHCE27N1RobChvr.xT93q8re0rod5Ym', '2021-03-15 05:39:01', '2021-03-15 05:39:01', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_location`
--

CREATE TABLE `doctor_location` (
  `Doc_no` int(11) NOT NULL,
  `Speciality` varchar(25) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Area` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor_location`
--

INSERT INTO `doctor_location` (`Doc_no`, `Speciality`, `Name`, `Area`) VALUES
(1, 'Dentist', 'Dr. P R Chockalingam', 'Velachery'),
(2, 'Dentist', 'Dr. Kiruthika Asokan', 'Porur'),
(3, 'Dentist', 'Dr. G Thiruppathy', 'Tambaram'),
(4, 'Dentist', 'Dr. B J Barun', 'Velachery'),
(5, 'Dentist', 'Dr. M Srikanth', 'Chrompet'),
(6, 'Dentist', 'Dr. S R Murugesan', 'Velachery'),
(7, 'Dentist', 'Dr. Sadana Shree', 'Medavakkam'),
(8, 'Dentist', 'Dr. Karthick Arumugam', 'Nanganallur'),
(9, 'Dentist', 'Dr. Vesta Enid Lydia', 'Anna Nagar'),
(10, 'Dentist', 'Dr. A Suresh', 'Guduvanchery'),
(11, 'Dentist', 'Dr. Harish G', 'Sholingallur'),
(12, 'Dentist', 'Dr. Karthikeyan', 'Madipakkam'),
(13, 'Dentist', 'Dr. V S Hariharan', 'Broadway'),
(14, 'Dentist', 'Dr. Aruna Mohan', 'T Nagar'),
(15, 'Dentist', 'Dr. D Arunachalam', 'Adyar'),
(16, 'Dentist', 'Dr. P R Ganesh', 'Purasawakkam'),
(17, 'Dentist', 'Dr. R Rajkumar', 'Nanganallur'),
(18, 'Dentist', 'Dr. Abhilash Bhaskaran', 'Nungambakkam'),
(19, 'Dentist', 'Dr. T Elangovan', 'Choolaimedu'),
(20, 'Dentist', 'Dr. B R Ramani', 'Adyar'),
(21, 'Dentist', 'Dr. Udhayaraja', 'T Nagar'),
(22, 'Dentist', 'Dr. Banumathi', 'Navalur'),
(23, 'Dentist', 'Dr. Rakesh Dorai', 'Thiruvanmiyur'),
(24, 'Dentist', 'Dr. L P Mohan', 'Adyar'),
(25, 'Dentist', 'Dr. Jeeva Rathan J', 'Velachery'),
(26, 'Dentist', 'Dr. Vivek Pandian', 'Medavakkam'),
(27, 'Dentist', 'Dr. Kirthana Rao', 'Thiruvanmiyur'),
(28, 'Dentist', 'Dr. Harinath', 'Virugambakkam'),
(29, 'Dentist', 'Dr. Raghu', 'T Nagar'),
(30, 'Dentist', 'Dr. Anitha Shree', 'Madipakkam'),
(31, 'Dentist', 'Dr. Subramoniam S', 'Porur'),
(32, 'Dentist', 'Dr. S C Selvamuthukumar', 'Adyar'),
(33, 'Dentist', 'Dr. A Anbukumar', 'Tambaram'),
(34, 'Dentist', 'Dr. Aishwaryaa Mahesh', 'Arumbakkam'),
(35, 'Dentist', 'Dr. Poonam Suraj', 'Velachery'),
(36, 'Dentist', 'Dr. E. Sarath Chandar', 'Thiruvanmiyur'),
(37, 'Dentist', 'Dr. Vijjay Kanth M', 'Nanganallur'),
(38, 'Dentist', 'Dr. K V Srikanth', 'Kolathur'),
(39, 'Dentist', 'Dr. Vijailakshmi Acharya', 'Nungambakkam'),
(40, 'Dentist', 'Dr. S N Mohamed Rafi', 'Teynampet'),
(41, 'Gynecologist', 'Dr. Preet Agarwal', 'Porur'),
(42, 'Gynecologist', 'Dr. P V Anuradha', 'Anna Nagar'),
(43, 'Gynecologist', 'Dr. Kokilavani', 'Velachery'),
(44, 'Gynecologist', 'Dr. Manu Lakshmi', 'T Nagar'),
(45, 'Gynecologist', 'Dr. Usha', 'Tambaram'),
(46, 'Gynecologist', 'Dr. Mahalakshmi Sarvanan', 'Egmore'),
(47, 'Gynecologist', 'Dr. Chithra Ragul', 'Chrompet'),
(48, 'Gynecologist', 'Dr. Sandy Jaison', 'Thirumullaivoyal'),
(49, 'Gynecologist', 'Dr. Subbulakshmi M', 'Nanganallur'),
(50, 'Gynecologist', 'Dr. Chitra Shankar', 'Sholinganallur'),
(51, 'Gynecologist', 'Dr. Bala Kumari', 'Velachery'),
(52, 'Gynecologist', 'Dr. Vani Sunndarapandian', 'Neelankarai'),
(53, 'Gynecologist', 'Dr. Gayathri Kumar', 'Adambakkam'),
(54, 'Gynecologist', 'Dr. Uma Ramesh', 'Sholinganallur'),
(55, 'Gynecologist', 'Dr. K S Jeyarani Kamraj', 'Vadapalani'),
(56, 'Gynecologist', 'Dr. Premalatha Balachandran', 'Adyar'),
(57, 'Gynecologist', 'Dr. Parimalan Ramanathan', 'Perungudi'),
(58, 'Gynecologist', 'Dr. P Preethi', 'Thiruvanmiyur'),
(59, 'Gynecologist', 'Dr. Divya G', 'Sholinganallur'),
(60, 'Gynecologist', 'Dr. Chandralekha', 'Adyar'),
(61, 'Gynecologist', 'Dr. R Shobha Vijayakumar', 'Alwarthirunagar'),
(62, 'Gynecologist', 'Dr. S Samundi Sankari', 'Ramapuram'),
(63, 'Gynecologist', 'Dr. Padmapriya', 'Ambattur'),
(64, 'Gynecologist', 'Dr. Nithyaa Ramamurthy', 'Adyar'),
(65, 'Gynecologist', 'Dr. Aruna Ashok', 'Valasaravakkam'),
(66, 'Gynecologist', 'Dr. A Thamilselvi', 'Anna Nagar'),
(67, 'Gynecologist', 'Dr. Simsha', 'KK Nagar'),
(68, 'Gynecologist', 'Dr. Srikala Prasad', 'Arumbakkam'),
(69, 'Gynecologist', 'Dr. Krithika Manimaran', 'Nanganallur'),
(70, 'Gynecologist', 'Dr. Sumana Manohar', 'Mahalingapuram'),
(71, 'Gynecologist', 'Dr. Deepa Thiagarajamurthy', 'Adyar'),
(72, 'Orthopedist', 'Dr. P R Ashwin Vijay', 'Saligramam'),
(73, 'Orthopedist', 'Dr. A Shamuga Sundaram', 'Adyar'),
(74, 'Orthopedist', 'Dr. S S Kumar', 'Velachery'),
(75, 'Orthopedist', 'Dr. Madhu Thottappillil', 'Mylapore'),
(76, 'Orthopedist', 'Dr. N O Samson', 'Madipakkam'),
(77, 'Orthopedist', 'Dr. Sathyadharan P', 'Sholinganallur'),
(78, 'Orthopedist', 'Dr. A P Siva Kumar', 'Medavakkam'),
(79, 'Orthopedist', 'Dr. Rajith', 'Chrompet'),
(80, 'Orthopedist', 'Dr. Naresh Padmanavhan', 'Thiruvanmiyur'),
(81, 'Orthopedist', 'Dr. R N Premkumar', 'Velachery'),
(82, 'Orthopedist', 'Dr. Sudhakar Williams', 'MRC Nagar'),
(83, 'Orthopedist', 'Dr. Manikandan Veluswami', 'Adambakkam'),
(84, 'Orthopedist', 'Dr. K Karthik Narayan', 'Anna Nagar'),
(85, 'Orthopedist', 'Dr. Phani Kiran S', 'Porur'),
(86, 'Orthopedist', 'Dr. V Sivakumar', 'Vanuvampet'),
(87, 'Orthopedist', 'Dr. N Deen Muhammad Ismail', 'Kolathur'),
(88, 'Orthopedist', 'Dr. Saseendar', 'CIT Nagar'),
(89, 'Orthopedist', 'Dr. B Vijayakrishnan', 'Valasaravakkam'),
(90, 'Orthopedist', 'Dr. Ravi Kirubandan', 'Nerkundram'),
(91, 'Orthopedist', 'Dr. Arun Kaliaperumal', 'Medavakkam'),
(92, 'Orthopedist', 'Dr. Mani Ramesh', 'Aminjikarai'),
(93, 'Orthopedist', 'Dr. M Pravin', 'Adambakkam'),
(94, 'Orthopedist', 'Dr. Naveen Chowdary Tummala', 'Sholinganallur'),
(95, 'Orthopedist', 'Dr. Anand Muthuvelrajan', 'Adyar'),
(96, 'Orthopedist', 'Dr. Prakash Ayyadurai', 'Avadi'),
(97, 'Orthopedist', 'Dr. Nandkumar Sundaram', 'Velachery'),
(98, 'Orthopedist', 'Dr. Bharani Kumar Dayanandam', 'Periyar Nagar'),
(99, 'Orthopedist', 'Dr. J Faisal', 'Saligramam'),
(100, 'Orthopedist', 'Dr. B Pasupathy', 'Villivakkam'),
(101, 'Orthopedist', 'Dr. Kanniraj Marimuthu', 'Porur'),
(102, 'Orthopedist', 'Dr. Ashok S Gavaskar', 'Aminjikarai'),
(103, 'Pediatrician', 'Dr. Dhanasekhar Kesavelu', 'Mogappair'),
(104, 'Pediatrician', 'Dr. Sreedhar RS', 'Adyar'),
(105, 'Pediatrician', 'Dr. M Kumar', 'Adambakkam'),
(106, 'Pediatrician', 'Dr. Subhashini Venkatesh', 'Anna Nagar'),
(107, 'Pediatrician', 'Dr. Prashanth Sankar', 'Porur'),
(108, 'Pediatrician', 'Dr. Rohith Bharadwaj', 'Ambattur'),
(109, 'Pediatrician', 'Dr. Sankara Narayanan', 'Tambaram'),
(110, 'Pediatrician', 'Dr. A G Karthikeyan', 'Chetpet'),
(111, 'Pediatrician', 'Dr. G Moorthy', 'Velachery'),
(112, 'Pediatrician', 'Dr. M Rajesh', 'Velachery'),
(113, 'Pediatrician', 'Dr. Karthikeyan Vishwanathan', 'Thiruvanmiyur'),
(114, 'Pediatrician', 'Dr. N Manimozhian', 'Mugalivakkam'),
(115, 'Pediatrician', 'Dr. T Vijay Kumar', 'Pallikarnai'),
(116, 'Pediatrician', 'Dr. T Sivaraman', 'Velachery'),
(117, 'Pediatrician', 'Dr. Swapna', 'Chrompet'),
(118, 'Pediatrician', 'Dr. S Elayraja', 'Virugambakkam'),
(119, 'Pediatrician', 'Dr. K Ravi Shankar', 'Thirumullaivoyal'),
(120, 'Pediatrician', 'Dr. E Mahender', 'MRC Nagar'),
(121, 'Pediatrician', 'Dr. Murali Gopal', 'Karapakkam'),
(122, 'Pediatrician', 'Dr. Ganesh Veluswami', 'Velachery'),
(123, 'Pediatrician', 'Dr. S Srinivas', 'T Nagar'),
(124, 'Pediatrician', 'Dr. N Mahesh', 'Pallikarnai'),
(125, 'Pediatrician', 'Dr. K P Pranesh', 'Pallavaram'),
(126, 'Pediatrician', 'Dr. G Amalraj', 'Thoraipakkam'),
(127, 'Pediatrician', 'Dr. Thilothammal N', 'Raja Annamalai Puram'),
(128, 'Pediatrician', 'Dr. Latha Vishwanathan', 'Alwarpet'),
(129, 'Pediatrician', 'Dr. N Rajeshwari', 'Pallikarnai'),
(130, 'Pediatrician', 'Dr. Anbezhil Subbarayan', 'Thousand Lights'),
(131, 'Pediatrician', 'Dr. Sindhu Sanjo', 'Adambakkam'),
(132, 'Pediatrician', 'Dr. Kalpana Bharani Kumar', 'Periyar Nagar'),
(133, 'Pediatrician', 'Dr. N Kannan', 'Chetpet'),
(134, 'Physiotherapist', 'Dr. R Prabhu', 'Chrompet'),
(135, 'Physiotherapist', 'Dr. R Harish Kumar', 'Mylapore'),
(136, 'Physiotherapist', 'Dr. Vemban Sivakumar', 'West Mambalam'),
(137, 'Physiotherapist', 'Dr. R Vinodhini', 'Adyar'),
(138, 'Physiotherapist', 'Dr. N Gomathy', 'Sholinganallur'),
(139, 'Physiotherapist', 'Dr. E Vijaya Kumar', 'Ambattur'),
(140, 'Physiotherapist', 'Dr. Vijayalakshmi', 'Palavakkam'),
(141, 'Physiotherapist', 'Dr. J Mythili', 'Thiruvanmiyur'),
(142, 'Physiotherapist', 'Dr. Vasanth Kumar', 'Tambaram'),
(143, 'Physiotherapist', 'Dr. Joicy Priscillal', 'Anna Nagar'),
(144, 'Physiotherapist', 'Dr. S Devarajan', 'Adyar'),
(145, 'Physiotherapist', 'Dr. Julie M J David Raja', 'Valasaravakkam'),
(146, 'Physiotherapist', 'Dr. Radha Krishnan', 'Chrompet'),
(147, 'Physiotherapist', 'Dr. A Lokesh', 'Thiruvanmiyur'),
(148, 'Physiotherapist', 'Dr. T P Vallaban', 'Saidapet'),
(149, 'Physiotherapist', 'Dr. M H Hamsraj', 'West Mambalam'),
(150, 'Physiotherapist', 'Dr. K Suvaramakrishnan', 'Valasaravakkam'),
(151, 'Physiotherapist', 'Dr. Suganya Manoharan', 'Villivakkam'),
(152, 'Physiotherapist', 'Dr. A Abirami', 'Porur'),
(153, 'Physiotherapist', 'Dr. Senthilkumar Chandran', 'Ashok Nagar'),
(154, 'Physiotherapist', 'Dr. S Sarvanan', 'Egmore'),
(155, 'Physiotherapist', 'Dr. Selvakumar Ganesan', 'Medavakkam'),
(156, 'Physiotherapist', 'Dr. Bakthaprabhudas N', 'Sembakkam'),
(157, 'Physiotherapist', 'Dr. Arun Prakash', 'Nanganallur'),
(158, 'Physiotherapist', 'Dr. Mahil Irvin', 'Pallikarnai'),
(159, 'Physiotherapist', 'Dr. P Uma Devi', 'Adambakkam'),
(160, 'Physiotherapist', 'Dr. S Vijaya', 'Kilpauk'),
(161, 'Physiotherapist', 'Dr. Arunachalam R', 'Porur'),
(162, 'Physiotherapist', 'Dr. Ram', 'Mogappair'),
(163, 'Physiotherapist', 'Dr. S Sivabalan', 'Thiruvanmiyur'),
(164, 'Physiotherapist', 'Dr. Jananie Vigneshwaran', 'Pallikarnai'),
(165, 'Dermatologist', 'Dr. Saravanan B N', 'Velachery'),
(166, 'Dermatologist', 'Dr. Renita Rajan', 'Nungambakkam'),
(167, 'Dermatologist', 'Dr. N Gomathy', 'Anna Nagar'),
(168, 'Dermatologist', 'Dr. Snehalatha', 'Tambaram'),
(169, 'Dermatologist', 'Dr. Anuj Singh', 'Adambakkam'),
(170, 'Dermatologist', 'Dr. Shwetha Rahul', 'Mylapore'),
(171, 'Dermatologist', 'Dr. R Sowmiya', 'Mogappair'),
(172, 'Dermatologist', 'Dr. Selva Prabu', 'Mogappair'),
(173, 'Dermatologist', 'Dr. Hema Anandhi', 'Medavakkam'),
(174, 'Dermatologist', 'Dr. Amudha', 'Thoraipakkam'),
(175, 'Dermatologist', 'Dr. Sugandhan S', 'Pammal'),
(176, 'Dermatologist', 'Dr. Aarathi L', 'Royapuram'),
(177, 'Dermatologist', 'Dr. Ravichandran', 'MRC Nagar'),
(178, 'Dermatologist', 'Dr. D Manoharan', 'Velachery'),
(179, 'Dermatologist', 'Dr. R Meena', 'Tambaram'),
(180, 'Dermatologist', 'Dr. R Prabhakar', 'Valasaravakkam'),
(181, 'Dermatologist', 'Dr. Shobha Dharmarajan', 'Nanganallur'),
(182, 'Dermatologist', 'Dr. Adikrishnan S', 'Porur'),
(183, 'Dermatologist', 'Dr. Prasanthi', 'Anna Nagar'),
(184, 'Dermatologist', 'Dr. Venugopal Reddy', 'MRC Nagar'),
(185, 'Dermatologist', 'Dr. Maya Vedamurthy', 'Nungambakkam'),
(186, 'Dermatologist', 'Dr. Ganga Ravikumar', 'Adyar'),
(187, 'Dermatologist', 'Dr. Lavanya', 'Porur'),
(188, 'Dermatologist', 'Dr. Janaki V R', 'Alwarpet'),
(189, 'Dermatologist', 'Dr. K Priya', 'Greams Road'),
(190, 'Dermatologist', 'Dr. Gayathri Devi', 'Alwarpet'),
(191, 'Dermatologist', 'Dr. S M Augustine', 'Kilpauk'),
(192, 'Dermatologist', 'Dr. Deepika Lunawat', 'Adyar'),
(193, 'Dermatologist', 'Dr. N S Jayanthi', 'Porur'),
(194, 'Dermatologist', 'Dr. U Prasad Rau', 'Nungambakkam'),
(195, 'Opthalmologist', 'Dr. V C Parthasarathy', 'Thiruvanmiyur'),
(196, 'Opthalmologist', 'Dr. Anand Parthasarathy', 'Navalur'),
(197, 'Opthalmologist', 'Dr. Rajendran D', 'Madipakkam'),
(198, 'Opthalmologist', 'Dr. Ashok Rangarajan', 'Thoraipakkam'),
(199, 'Opthalmologist', 'Dr. D P Prakash', 'Valasaravakkam'),
(200, 'Opthalmologist', 'Dr. Padmapriya Srinivasan', 'Adambakkam'),
(201, 'Opthalmologist', 'Dr. Rajni Kantha', 'T Nagar'),
(202, 'Opthalmologist', 'Dr. Naveen Narendranath', 'T Nagar'),
(203, 'Opthalmologist', 'Dr. Uma Ramesh', 'Aminjikarai'),
(204, 'Opthalmologist', 'Dr. N Kasinathan', 'Ashok Nagar'),
(205, 'Opthalmologist', 'Dr. Atheeshwar Das', 'Alwarpet'),
(206, 'Opthalmologist', 'Dr. Nirmal Fredrick', 'Tambaram'),
(207, 'Opthalmologist', 'Dr. M Sohan Raj', 'Sowcarpet'),
(208, 'Opthalmologist', 'Dr. B Sridhar Rao', 'Vadapalani'),
(209, 'Opthalmologist', 'Dr. Subhasini V', 'Nanganallur'),
(210, 'Opthalmologist', 'Dr. Manas Gorey', 'Thoraipakkam'),
(211, 'Opthalmologist', 'Dr. Aparna Bhatnagar', 'Anna Nagar'),
(212, 'Opthalmologist', 'Dr. K Ravi Kumar', 'T Nagar'),
(213, 'Opthalmologist', 'Dr. Lipika Roy', 'Navalur'),
(214, 'Opthalmologist', 'Dr. Sweta Atheeshwar', 'Alwarpet'),
(215, 'Opthalmologist', 'Dr. Anil Chandra', 'Mylapore'),
(216, 'Opthalmologist', 'Dr. Padma Priya', 'Medavakkam'),
(217, 'Opthalmologist', 'Dr. N Nandakumar', 'Porur'),
(218, 'Opthalmologist', 'Dr. Ramesh Dorairajan', 'Anna Nagar'),
(219, 'Opthalmologist', 'Dr. Kavitha Balasubramanian', 'Adyar'),
(220, 'Opthalmologist', 'Dr. Vijayashankari', 'Mogappair'),
(221, 'Opthalmologist', 'Dr. Manohar Bapu R', 'Velachery'),
(222, 'Opthalmologist', 'Dr. P Viswanathan', 'Alwarpet'),
(223, 'Opthalmologist', 'Dr. N Krishnan', 'Alwarpet'),
(224, 'Opthalmologist', 'Dr. B Malini', 'Mylapore'),
(225, 'Opthalmologist', 'Dr. Radhi Malar', 'Adyar'),
(226, 'Cardiologist', 'Dr. M Karthiresan', 'Greams Road'),
(227, 'Cardiologist', 'Dr. B Madan Mohan', 'Adyar'),
(228, 'Cardiologist', 'Dr. Murthy J S N', 'Alandur'),
(229, 'Cardiologist', 'Dr. D Prabhakar', 'Anna Nagar'),
(230, 'Cardiologist', 'Dr. Harikrishnan Parthasarathy', 'Vanagaram'),
(231, 'Cardiologist', 'Dr. Ajeet Arulkumar', 'Mogappair'),
(232, 'Cardiologist', 'Dr. Guru Prasad Sogunuru', 'Pallikarnai'),
(233, 'Cardiologist', 'Dr. Sivakadaksham', 'Royapettah'),
(234, 'Cardiologist', 'Dr. V Ganesh', 'Tambaram'),
(235, 'Cardiologist', 'Dr. Moorthy', 'Tambaram'),
(236, 'Cardiologist', 'Dr. I Sathamurthy', 'Alwarpet'),
(237, 'Cardiologist', 'Dr. Nagendra Boopathy', 'Kodambakkam'),
(238, 'Cardiologist', 'Dr. Vinodh Kumar P', 'Porur'),
(239, 'Cardiologist', 'Dr. Jyotirmaya Dash', 'Manapakkam'),
(240, 'Cardiologist', 'Dr. Y Vijayachandra Reddy', 'Anna Nagar'),
(241, 'Cardiologist', 'Dr. M Chokkalingam', 'Navalur'),
(242, 'Cardiologist', 'Dr. P Thirumalai', 'Pallikarnai'),
(243, 'Cardiologist', 'Dr. Sarvanan', 'Virugambakkam'),
(244, 'Cardiologist', 'Dr. Joy M Thomas', 'Mogappair'),
(245, 'Cardiologist', 'Dr. Amal Louis', 'Anna Nagar'),
(246, 'Cardiologist', 'Dr. Anand Gnanaraj', 'Vanagaram'),
(247, 'Cardiologist', 'Dr. Refai Showkathali', 'Adyar'),
(248, 'Cardiologist', 'Dr. E Chandrasekhar', 'Anna Nagar'),
(249, 'Cardiologist', 'Dr. Justin Paul', 'Guindy'),
(250, 'Cardiologist', 'Dr. R Hariharakrishnan', 'Kalipauk'),
(251, 'Cardiologist', 'Dr. Latchumanadhas K', 'Mogappair'),
(252, 'Cardiologist', 'Dr. Guruprasad', 'MRC Nagar'),
(253, 'Cardiologist', 'Dr. Raghavan Subramanyan', 'Mogappair'),
(254, 'Cardiologist', 'Dr. Robert Mao', 'Greams Road'),
(255, 'Cardiologist', 'Dr. Nagarajan Solai', 'Kilpauk'),
(256, 'Cardiologist', 'Dr. Nageswaran P M', 'Nanganallur'),
(257, 'Neurologist', 'Dr. M Kodeeswaran', 'Anna Nagar'),
(258, 'Neurologist', 'Dr. S Balasubramaniam', 'Velachery'),
(259, 'Neurologist', 'Dr. J Maiano Anto Bruno Mascarenhas', 'Arumbakkam'),
(260, 'Neurologist', 'Dr. T Vijay', 'Mogappair'),
(261, 'Neurologist', 'Dr. J Manickavasagam', 'KK Nagar'),
(262, 'Neurologist', 'Dr. Sridharan Ramaratnam', 'T Nagar'),
(263, 'Neurologist', 'Dr. Dinesh Nayak', 'Adyar'),
(264, 'Neurologist', 'Dr. N Mahesh', 'West Mambalam'),
(265, 'Neurologist', 'Dr. R V Anand', 'Mandaveli'),
(266, 'Neurologist', 'Dr. Thilothammal N', 'Raja Annamalai Puram'),
(267, 'Neurologist', 'Dr. A Gunasekaran', 'Maduravoyal'),
(268, 'Neurologist', 'Dr. C Mutharasu', 'Manali'),
(269, 'Neurologist', 'Dr. S Velusamy', 'Mogappair'),
(270, 'Neurologist', 'Dr. Muthukumar', 'Vanagaram'),
(271, 'Neurologist', 'Dr. Natesan C', 'Velachery'),
(272, 'Neurologist', 'Dr. K Bhanu', 'Chetpet'),
(273, 'Neurologist', 'Dr. Anusha D', 'T Nagar'),
(274, 'Neurologist', 'Dr. Shunmuga Sundaram', 'Madipakkam'),
(275, 'Neurologist', 'Dr. Sukirti Chauhan', 'Chetpet'),
(276, 'Neurologist', 'Dr. Deva Prasad', 'Chrompet'),
(277, 'Neurologist', 'Dr. Vikash Agarwal', 'Velachery'),
(278, 'Neurologist', 'Dr. Rajeshwari', 'Pallikarnai'),
(279, 'Neurologist', 'Dr. I Mohamed Abith Ali', 'ECR Road'),
(280, 'Neurologist', 'Dr. S Rajendran', 'Anna Nagar'),
(281, 'Neurologist', 'Dr. T Arul Mozhi', 'Chetpet'),
(282, 'Neurologist', 'Dr. M Dhanaraj', 'Greams Road'),
(283, 'Neurologist', 'Dr. A Marian Jude Vijay', 'Shenoy Nagar'),
(284, 'Neurologist', 'Dr. D R Shankar', 'Perambur'),
(285, 'Neurologist', 'Dr. M R Sivakumar', 'Greams Road'),
(286, 'Neurologist', 'Dr. Kannan', 'Villivakkam'),
(287, 'Neurologist', 'Dr. A Panneer', 'Greams Road'),
(288, 'Urologist', 'Dr. K Ramesh', 'Adyar'),
(289, 'Urologist', 'Dr. Sarvanan J', 'Medavakkam'),
(290, 'Urologist', 'Dr. N Anandan', 'Alwarpet'),
(291, 'Urologist', 'Dr. Ananthakrishnan Sivaraman', 'Mylapore'),
(292, 'Urologist', 'Dr. P B Sivaraman', 'Adyar'),
(293, 'Urologist', 'Dr. Anantan Urest Kumar T', 'Valasaravakkam'),
(294, 'Urologist', 'Dr. Nelakandan', 'Velachery'),
(295, 'Urologist', 'Dr. Sivabalan J', 'Sholinganallur'),
(296, 'Urologist', 'Dr. N Sughakar', 'Pallavaram'),
(297, 'Urologist', 'Dr. N Raghavan', 'Besant Nagar'),
(298, 'Urologist', 'Dr. Raman J', 'Tambaram'),
(299, 'Urologist', 'Dr. Natarajan K', 'Velachery'),
(300, 'Urologist', 'Dr. M R Pari', 'Adyar'),
(301, 'Urologist', 'Dr. G Sivasankar', 'Nanganallur'),
(302, 'Urologist', 'Dr. A Muthukumaravel', 'Kilpauk'),
(303, 'Urologist', 'Dr. C Ilamparuthi', 'Chetpet'),
(304, 'Urologist', 'Dr. Subramanian S', 'MRC Nagar'),
(305, 'Urologist', 'Dr. A R Balaji', 'Shenoy Nagar'),
(306, 'Urologist', 'Dr. A K Jayaraj', 'Pallikarnai'),
(307, 'Urologist', 'Dr. T Senthil Kumar', 'Pozhichalur'),
(308, 'Urologist', 'Dr. P Govinfarajan', 'Anna Nagar'),
(309, 'Urologist', 'Dr. Guru Balaji', 'Purasawakkam'),
(310, 'Urologist', 'Dr. G Vezhaventhan', 'Mylapore'),
(311, 'Urologist', 'Dr. Abraham Kurien', 'Mogappair'),
(312, 'Urologist', 'Dr. I C Iyal Amuthan', 'Washermenpet'),
(313, 'Urologist', 'Dr. Griffin M', 'Egmore'),
(314, 'Urologist', 'Dr. R Srivathsan', 'Alwarpet'),
(315, 'Urologist', 'Dr. N Sezhian', 'Anna Nagar'),
(316, 'Urologist', 'Dr. R Jayaganesh', 'Raja Annamalai Puram'),
(317, 'Urologist', 'Dr. Nitesh Jain', 'Greams Road'),
(318, 'Urologist', 'Dr. N Raghavan', 'Alwarpet'),
(319, 'Gastroenterologist', 'Dr. Venkatesh Munikrishnan', 'Anna Nagar'),
(320, 'Gastroenterologist', 'Dr. Rajesh N A', 'Tambaram'),
(321, 'Gastroenterologist', 'Dr. C Sugumar', 'Vadapalani'),
(322, 'Gastroenterologist', 'Dr. Sathish Devakumar', 'Velachery'),
(323, 'Gastroenterologist', 'Dr. R Kamalakannan', 'Purasawakkam'),
(324, 'Gastroenterologist', 'Dr. S Venkataraman', 'Chrompet'),
(325, 'Gastroenterologist', 'Dr. S Palaniappan', 'Manapakkam'),
(326, 'Gastroenterologist', 'Dr. Rajkumar Sankaran', 'Kilpauk'),
(327, 'Gastroenterologist', 'Dr. Prabudoss', 'Velachery'),
(328, 'Gastroenterologist', 'Dr. Patta Radhakrishna', 'Vadapalani'),
(329, 'Gastroenterologist', 'Dr. Malarvizhi', 'Kolathur'),
(330, 'Gastroenterologist', 'Dr. Mohammed Ali', 'Kilpauk'),
(331, 'Gastroenterologist', 'Dr. Arun R S', 'Ramapuram'),
(332, 'Gastroenterologist', 'Dr. Ilavarasi', 'Washermenpet'),
(333, 'Gastroenterologist', 'Dr. U P Srinivasan', 'Alwarpet'),
(334, 'Gastroenterologist', 'Dr. Manimaran', 'Ramapuram'),
(335, 'Gastroenterologist', 'Dr. Anisha Ashok', 'T Nagar'),
(336, 'Gastroenterologist', 'Dr. Mohan A T', 'Greams Road'),
(337, 'Gastroenterologist', 'Dr. T Pugazhendhi', 'Guindy'),
(338, 'Gastroenterologist', 'Dr. P Basumani', 'Adyar'),
(339, 'Gastroenterologist', 'Dr. Rajkumar Rathinasamy', 'Pallikarnai'),
(340, 'Gastroenterologist', 'Dr. N Murugan', 'Greams Road'),
(341, 'Gastroenterologist', 'Dr. Hariharan Muthuswamy', 'Greams Road'),
(342, 'Gastroenterologist', 'Dr. A Vikram', 'Adyar'),
(343, 'Gastroenterologist', 'Dr. B Hariprasad', 'Arumbakkam'),
(344, 'Gastroenterologist', 'Dr. Ratnakar Kini', 'Villivakkam'),
(345, 'Gastroenterologist', 'Dr. Usha Srinivas', 'Greams Road'),
(346, 'Gastroenterologist', 'Dr. T Ramkumar', 'Anna Nagar'),
(347, 'Gastroenterologist', 'Dr. B Mahadevan', 'Tambaram'),
(348, 'Gastroenterologist', 'Dr. Vedivel Kumaran S', 'Mylapore'),
(349, 'Gastroenterologist', 'Dr. Ubal Dhus', 'Greams Road'),
(350, 'Psychiatrist', 'Dr. Esther Suresh', 'Anna Nagar'),
(351, 'Psychiatrist', 'Dr. Alexander Gnanadurai', 'Anna Nagar'),
(352, 'Psychiatrist', 'Dr. Mythili', 'Pallavaram'),
(353, 'Psychiatrist', 'Dr. S Arunkumar', 'Mogappair'),
(354, 'Psychiatrist', 'Dr. Sree Prathap', 'Pallavaram'),
(355, 'Psychiatrist', 'Dr. Vinayak Vijayakumar', 'Madaveli'),
(356, 'Psychiatrist', 'Dr. Janaki Rajagopalan', 'Adyar'),
(357, 'Psychiatrist', 'Dr. Radha Shankar', 'Adyar'),
(358, 'Psychiatrist', 'Dr. Gauthamadas', 'Chetpet'),
(359, 'Psychiatrist', 'Dr. G Gurunamasivayam', 'Velachery'),
(360, 'Psychiatrist', 'Dr. P Vani', 'Velachery'),
(361, 'Psychiatrist', 'Dr. S Thipu Vikraman', 'Tambaram'),
(362, 'Psychiatrist', 'Dr. T C Rameshkumar', 'Chetpet'),
(363, 'Psychiatrist', 'Dr. V Jaikumar', 'Pallikarnai'),
(364, 'Psychiatrist', 'Dr. N Rangarajan', 'Adyar'),
(365, 'Psychiatrist', 'Dr. Sankra Subbu S', 'Nungambakkam'),
(366, 'Psychiatrist', 'Dr. P M Kripakaran', 'Shenoy Nagar'),
(367, 'Psychiatrist', 'Dr. P Anandhan', 'Medavakkam'),
(368, 'Psychiatrist', 'Dr. S Janani', 'Madaveli'),
(369, 'Psychiatrist', 'Dr. Hema Tharoor', 'Alwarpet'),
(370, 'Psychiatrist', 'Dr. V S P Bashyam', 'Shenoy Nagar'),
(371, 'Psychiatrist', 'Dr. Kannan G K ', 'Velachery'),
(372, 'Psychiatrist', 'Dr. Bevin S', 'Valasaravakkam'),
(373, 'Psychiatrist', 'Dr. T R Suresh', 'Kodambakkam'),
(374, 'Psychiatrist', 'Dr. Shiva Prakash Srinivasan', 'Velachery'),
(375, 'Psychiatrist', 'Dr. Kurinji G R', 'Ashok Nagar'),
(376, 'Psychiatrist', 'Dr. Ennapadam S Krishnamoorthy', 'Teynampet'),
(377, 'Psychiatrist', 'Dr. Raman V', 'Vanagaram'),
(378, 'Psychiatrist', 'Dr. Kannan Gireesh', 'Kilpauk'),
(379, 'Psychiatrist', 'Dr. Sarvana Jothi', 'Ashok Nagar'),
(380, 'Psychiatrist', 'Dr. Varalakshmi', 'Madipakkam'),
(381, 'Neurosurgeon', 'Dr. M Kodeeswaran', 'Anna Nagar'),
(382, 'Neurosurgeon', 'Dr. J Mariano Anto Bruno Mascarenhas', 'Arumbakkam'),
(383, 'Neurosurgeon', 'Dr. K R Suresh Bapu', 'Guindy'),
(384, 'Neurosurgeon', 'Dr. Siddhartha Ghosh', 'Vanagaram'),
(385, 'Neurosurgeon', 'Dr. Anil Pande', 'Vanagaram'),
(386, 'Neurosurgeon', 'Dr. Chendilnathan B', 'Velachery'),
(387, 'Neurosurgeon', 'Dr. Sukirti Chauhan', 'Chetpet'),
(388, 'Neurosurgeon', 'Dr. I Mohamed Abith Ali', 'ECR Road'),
(389, 'Neurosurgeon', 'Dr. Bhaskar Naidu', 'Porur'),
(390, 'Neurosurgeon', 'Dr. D R Shankar', 'Perambur'),
(391, 'Neurosurgeon', 'Dr. M Balamurugan', 'Teynampet'),
(392, 'Neurosurgeon', 'Dr. A Rajesh', 'Tambaram'),
(393, 'Neurosurgeon', 'Dr. Jegath Raman A R', 'Purasawakkam'),
(394, 'Neurosurgeon', 'Dr. U S Srinivasan', 'Guindy'),
(395, 'Neurosurgeon', 'Dr. Balamurugan S', 'Mylapore'),
(396, 'Neurosurgeon', 'Dr. Joy Varghese', 'OMR Road'),
(397, 'Neurosurgeon', 'Dr. Abriami Sundari', 'Thousand Lights'),
(398, 'Neurosurgeon', 'Dr. A R Baskar', 'Thiruvottiyur'),
(399, 'Neurosurgeon', 'Dr. Syed Ali', 'CIT Nagar'),
(400, 'Neurosurgeon', 'Dr. Shankar Ganesh', 'Teynampet'),
(401, 'Neurosurgeon', 'Dr. K Gireesh', 'Kilpauk'),
(402, 'Neurosurgeon', 'Dr. Deveegan K', 'Tondiarpet'),
(403, 'Neurosurgeon', 'Dr. S Raj Kumar', 'Pallikarnai'),
(404, 'Neurosurgeon', 'Dr. Daniel Rajesh Babbu', 'Vanagaram'),
(405, 'Neurosurgeon', 'Dr. M Mohan Sampathkumar', 'Kilpauk'),
(406, 'Neurosurgeon', 'Dr. M M Shankar', 'Pallikarnai'),
(407, 'Neurosurgeon', 'Dr. Reginald J', 'Teynampet'),
(408, 'Neurosurgeon', 'Dr. Suresh Babu T', 'Arumbakkam'),
(409, 'Neurosurgeon', 'Dr. Balamurali G', 'Mylapore'),
(410, 'Neurosurgeon', 'Dr. Anbuselvam M ', 'Vanagaram'),
(411, 'Neurosurgeon', 'Dr. P Mangesh', 'Chetpet'),
(412, 'Pulmonologist', 'Dr. Prasanna Kumar Thomas', 'KK Nagar'),
(413, 'Pulmonologist', 'Dr. Dhanasekar', 'Anna Nagar'),
(414, 'Pulmonologist', 'Dr. K Vijayasartha', 'Nandanam'),
(415, 'Pulmonologist', 'Dr. G S Kailash', 'Velachery'),
(416, 'Pulmonologist', 'Dr. Abdul Majeed Arshad', 'Teynampet'),
(417, 'Pulmonologist', 'Dr. G Thilagavathy', 'T Nagar'),
(418, 'Pulmonologist', 'Dr. S Jayaraman', 'Shenoy Nagar'),
(419, 'Pulmonologist', 'Dr. Narasimhan R', 'Greams Road'),
(420, 'Pulmonologist', 'Dr. Vengada Krishnaraj', 'Pallikarnai'),
(421, 'Pulmonologist', 'Dr. Ammaiyappan Palaniswamy Chockalingam', 'Adyar'),
(422, 'Pulmonologist', 'Dr. Ghanshyam Verma', 'Vanagaram'),
(423, 'Pulmonologist', 'Dr. N Murugan', 'Chrompet'),
(424, 'Pulmonologist', 'Dr. Harish G', 'MRC Nagar'),
(425, 'Pulmonologist', 'Dr. S Balamurugan', 'Valasaravakkam'),
(426, 'Pulmonologist', 'Dr. C Palaniappan', 'Ambattur'),
(427, 'Pulmonologist', 'Dr. Sredevi K', 'Velachery'),
(428, 'Pulmonologist', 'Dr. N Sekar', 'Ayanambakkam'),
(429, 'Pulmonologist', 'Dr. Rajkumar Kulasekaran', 'OMR Road'),
(430, 'Pulmonologist', 'Dr. Raj B Singh', 'Greams Road'),
(431, 'Pulmonologist', 'Dr. Senthilkumar', 'Pallikarnai'),
(432, 'Pulmonologist', 'Dr. Ravi T Santosham', 'Egmore'),
(433, 'Pulmonologist', 'Dr. M Sathish Kumar', 'Velachery'),
(434, 'Pulmonologist', 'Dr. Bindu T', 'Velachery'),
(435, 'Pulmonologist', 'Dr. Srinivasan', 'Perambur'),
(436, 'Pulmonologist', 'Dr. Jayashree Narasimhan', 'Greams Road'),
(437, 'Pulmonologist', 'Dr. Koushik Muthu Raja', 'Greams Road'),
(438, 'Pulmonologist', 'Dr. Srinath Dhandapani', 'Ayanavaram'),
(439, 'Pulmonologist', 'Dr. Vinod Kumar', 'Kilpauk'),
(440, 'Pulmonologist', 'Dr. Roshan Kumar', 'Ashok Nagar'),
(441, 'Pulmonologist', 'Dr. Vinod Kumar', 'Teynampet'),
(442, 'Pulmonologist', 'Dr. Mohan Venkataraman', 'Raja Annamalai Puram'),
(443, 'Dietitian', 'Dr. Nafeesa Imteyaz', 'Teynampet'),
(444, 'Dietitian', 'Dr. Gomathy Gowthaman', 'Anna Nagar'),
(445, 'Dietitian', 'Dr. Preeti Raj', 'Anna Nagar'),
(446, 'Dietitian', 'Dr. Swtha K', 'Raja Annamalai Puram'),
(447, 'Dietitian', 'Dr. Katyaini', 'T Nagar'),
(448, 'Dietitian', 'Dr. Shail Yadav', 'OMR Road'),
(449, 'Dietitian', 'Dr. Shiny Surendran', 'Nungambakkam'),
(450, 'Dietitian', 'Dr. Divya K P', 'T Nagar'),
(451, 'Dietitian', 'Dr. Akalya Sampath Kumar', 'Anna Nagar'),
(452, 'Dietitian', 'Dr. Minacshi Pettukola', 'Alwarpet'),
(453, 'Dietitian', 'Dr. Shanthi Kaavery', 'ECR Road'),
(454, 'Dietitian', 'Dr. Anitha B', 'Raja Annamalai Puram'),
(455, 'Dietitian', 'Dr. Suhasini Viswanathan', 'Alwarpet'),
(456, 'Dietitian', 'Dr. Yasodharai Karunagaran', 'Pallikarnai'),
(457, 'Dietitian', 'Dr. Anusha Santhakrishnan', 'Alwarpet'),
(458, 'Dietitian', 'Dr. Dharani Krishnan', 'Teynampet'),
(459, 'Dietitian', 'Dr. Roja Ramkumar', 'Chintadripet'),
(460, 'Dietitian', 'Dr. Gowthami', 'Kovilambakkam'),
(461, 'Dietitian', 'Dr. Bhuvaneswari V', 'T Nagar'),
(462, 'Dietitian', 'Dr. Sujatha S', 'T Nagar'),
(463, 'Dietitian', 'Dr. Ankita Bisani', 'Purasawakkam'),
(464, 'Dietitian', 'Dr. Steffi J Jerlin', 'Ambattur'),
(465, 'Dietitian', 'Dr. R Sheryl Zinia', 'Puzhal'),
(466, 'Dietitian', 'Dr. Abhinaya Rao', 'Alwarpet'),
(467, 'Dietitian', 'Dr. Shiny Esther', 'Anna Nagar'),
(468, 'Bariatric Surgeon', 'Dr. Deepak Subramanian', 'Adyar'),
(469, 'Bariatric Surgeon', 'Dr. J K A Jameel', 'T Nagar'),
(470, 'Bariatric Surgeon', 'Dr. Naveen Alexander', 'Kilpauk'),
(471, 'Bariatric Surgeon', 'Dr. Prabudoss', 'Velachery'),
(472, 'Bariatric Surgeon', 'Dr. Karthik R', 'Chetpet'),
(473, 'Bariatric Surgeon', 'Dr. Mohan Rao', 'MRC Nagar'),
(474, 'Bariatric Surgeon', 'Dr. Premkumar Balachandran', 'Perungudi'),
(475, 'Bariatric Surgeon', 'Dr. Raj Palaniappan', 'Nungambakkam'),
(476, 'Bariatric Surgeon', 'Dr. Neha Shah', 'Velachery'),
(477, 'Bariatric Surgeon', 'Dr. R S Regan', 'West Mambalam'),
(478, 'Bariatric Surgeon', 'Dr. M Maran', 'Mylapore'),
(479, 'Bariatric Surgeon', 'Dr. T K Neelamekam', 'Adyar'),
(480, 'Bariatric Surgeon', 'Dr. Sarvanan V', 'Thiruvanmiyur'),
(481, 'Bariatric Surgeon', 'Dr. Rajkumar Palaniappan', 'Greams Road'),
(482, 'Rheumatologist', 'Dr. Vaswanath Kaushik', 'Nungambakkam'),
(483, 'Rheumatologist', 'Dr. G Rajasekhar', 'Ashok Nagar'),
(484, 'Rheumatologist', 'Dr. Porkodi', 'Tambaram'),
(485, 'Rheumatologist', 'Dr. S Sham', 'KK Nagar'),
(486, 'Rheumatologist', 'Dr. Bala Meena S', 'Chetpet'),
(487, 'Rheumatologist', 'Dr. Mathai Thomas', 'Vanagaram'),
(488, 'Rheumatologist', 'Dr. Mahesh Janarthanan', 'Thousand Lights'),
(489, 'Rheumatologist', 'Dr. Tamil Selvam', 'Vanagaram'),
(490, 'Rheumatologist', 'Dr. Ramakrishnan S', 'Greams Road'),
(491, 'Rheumatologist', 'Dr. Hema', 'Triplicane'),
(492, 'Rheumatologist', 'Dr. Chitra Sundramoorthy', 'Thousand Lights'),
(493, 'General physician', 'Dr. G Shanmugasundar', 'Ashok Nagar'),
(494, 'General physician', 'Dr. Krishna Raman', 'Adyar'),
(495, 'General physician', 'Dr. Subhashini Venkatesh', 'Anna Nagar'),
(496, 'General physician', 'Dr. J. Mariano Anto Bruno Mascarenhas', 'Arumbakkam'),
(497, 'General physician', 'Dr. N Chitra Raghul', 'Chrompet'),
(498, 'General physician', 'Dr. Prasanna Kumar Thomas', 'KK Nagar'),
(499, 'General physician', 'Dr. Sankara Narayanan', 'Tambaram'),
(500, 'General physician', 'Dr. Karthikeyan Vishwanathan', 'Thiruvanmiyur'),
(501, 'General physician', 'Dr. Sridev Barathan', 'KK Nagar'),
(502, 'General physician', 'Dr. D Kaveri', 'Perungalathur'),
(503, 'General physician', 'Dr. Jayakumari Balaji', 'Thiruvanmiyur'),
(504, 'General physician', 'Dr. Sharadha Srinivas', 'Alwarpet'),
(505, 'General physician', 'Dr. A Gopal', 'Thoraipakkam'),
(506, 'General physician', 'Dr. M Gunaseelan', 'KK Nagar'),
(507, 'General physician', 'Dr. V Padma', 'Tambaram'),
(508, 'General physician', 'Dr. Akila Mani', 'Vanagaram'),
(509, 'General physician', 'Dr. Vijay Viswanathan', 'Adyar'),
(510, 'General physician', 'Dr. P Sivaraj', 'Medavakkam'),
(511, 'General physician', 'Dr. Haripriya Jagadhish', 'Adyar'),
(512, 'General physician', 'Dr. M C Deepak', 'Vanagaram'),
(513, 'General physician', 'Dr. C Ilamparuthi', 'Chetpet'),
(514, 'General physician', 'Dr. R Prem Sekar', 'Mylapore'),
(515, 'General physician', 'Dr. I Sathyamurthy', 'Alwarpet'),
(516, 'General physician', 'Dr. G Gurunamasivayam', 'Velachery'),
(517, 'General physician', 'Dr. C R Anand Moses', 'Puasawakkam'),
(518, 'General physician', 'Dr. S Velusamy', 'Mogappair'),
(519, 'General physician', 'Dr. Shoba', 'Poonamalle'),
(520, 'General physician', 'Dr. Sruti Chandrasekaran', 'Velachery'),
(521, 'General physician', 'Dr. Lalitha Subramanyam', 'Adyar'),
(522, 'General physician', 'Dr. B Lalith Narayan', 'Virugambakkam'),
(523, 'General physician', 'Dr. Nirmala Jayashankar', 'Kilpauk'),
(524, 'Allergist', 'Dr. Zareen Mohammed', 'Anna Nagar'),
(525, 'Allergist', 'Dr. V Ramasubramanian', 'T Nagar'),
(526, 'Immunologist', 'Dr. V Ramasubramanian', 'T Nagar'),
(527, 'Internist', 'Dr. V Ramasubramanian', 'T Nagar'),
(528, 'Internist', 'Dr. M Ravikiran', 'Vadapalani'),
(529, 'Internist', 'Dr. Hariskrishnan Parthasarathy', 'Vanagaram'),
(530, 'Internist', 'Dr. Vijay Viswanathan', 'Adyar'),
(531, 'Internist', 'Dr. P Sivaraj', 'Medavakkam'),
(532, 'Internist', 'Dr. R Jayanthi', 'Thiruvanmiyur'),
(533, 'Internist', 'Dr. S Ganesh', 'Thiruvanmiyur'),
(534, 'Internist', 'Dr. Krishna Seshadri', 'Vanagaram'),
(535, 'Internist', 'Dr. M Chokkalingam', 'Navalur'),
(536, 'Internist', 'Dr. Shrinath Barathan', 'KK Nagar'),
(537, 'Internist', 'Dr. Palaniappan', 'Kodambakkam'),
(538, 'Internist', 'Dr. A Rathnasabapathy', 'Mylapore'),
(539, 'Internist', 'Dr. N Ramakrishnan', 'Anna Nagar'),
(540, 'Internist', 'Dr. P Vijayaraghavan', 'Raja Annamalai Puram'),
(541, 'Internist', 'Dr. Rama Narasimhan', 'Greams Road'),
(542, 'Internist', 'Dr. Radha Ashok Kumar', 'Nungambakkam'),
(543, 'Internist', 'Dr. Vijayaraghavan S', 'Karapakkam'),
(544, 'Internist', 'Dr. Jinadas', 'Alwarpet'),
(545, 'Internist', 'Dr. Kanmani', 'Chrompet'),
(546, 'Internist', 'Dr. Neelima Nadgonde', 'Shenoy Nagar'),
(547, 'Internist', 'Dr. Srimathy Venkatesh', 'Alwarpet'),
(548, 'Internist', 'Dr. Ramesh Chandrasekaran', 'Alwarpet'),
(549, 'Internist', 'Dr. Suresh Sankarasubbaiyan', 'Kilpauk'),
(550, 'Internist', 'Dr. Mohan Venkataraman', 'Raja Annamalai Puram'),
(551, 'Internist', 'Dr. Arshad Akeel', 'Greams Road'),
(552, 'Internist', 'Dr. M Shanmuganantham', 'Kilpauk'),
(553, 'Internist', 'Dr. Bhaskar S', 'Greams Road'),
(554, 'Internist', 'Dr. Irfan Ismail Ayub', 'Mandaveli'),
(555, 'Internist', 'Dr. J M Akbar Khalifulla', 'Chetpet'),
(556, 'Internist', 'Dr. A R Balamurugan', 'Kolathur'),
(557, 'Internist', 'Dr. Subramanian J R', 'Greams Road'),
(558, 'General surgeon', 'Dr. Karthik Gunasekaran', 'T Nagar'),
(559, 'General surgeon', 'Dr. Vani Vijay', 'Adyar'),
(560, 'General surgeon', 'Dr. Sarvanan J', 'Medavakkam'),
(561, 'General surgeon', 'Dr. Deepak Subramanian', 'Adyar'),
(562, 'General surgeon', 'Dr. Nellakandan', 'Velachery'),
(563, 'General surgeon', 'Dr. Rajkumar Sankaran', 'Kilpauk'),
(564, 'General surgeon', 'Dr. Rajendran D', 'Sembakkam'),
(565, 'General surgeon', 'Dr. Naveen Alexander', 'Kilpauk'),
(566, 'General surgeon', 'Dr. A Sivakumar', 'Anna Nagar'),
(567, 'General surgeon', 'Dr. Karthik R', 'Chetpet'),
(568, 'General surgeon', 'Dr. Mohan Rao', 'MRC Nagar'),
(569, 'General surgeon', 'Dr. Premkumar Balachandran', 'Perungudi'),
(570, 'General surgeon', 'Dr. R Selvan', 'Tambaram'),
(571, 'General surgeon', 'Dr. G Sivasankar', 'Nanganallur'),
(572, 'General surgeon', 'Dr. A Muthukumaravel', 'Kilpauk'),
(573, 'General surgeon', 'Dr. Winston Noronha', 'Kilpauk'),
(574, 'General surgeon', 'Dr. Gunasekaran M', 'Chrompet'),
(575, 'General surgeon', 'Dr. Rajesh Kesavan', 'Greams Road'),
(576, 'General surgeon', 'Dr. A R Balaji', 'Shenoy Nagar'),
(577, 'General surgeon', 'Dr. Anisha Ashok', 'T Nagar'),
(578, 'General surgeon', 'Dr. P Sathish', 'Vadapalani'),
(579, 'General surgeon', 'Dr. Jameel Akhter', 'Greams Road'),
(580, 'General surgeon', 'Dr. Gokul D Yatheendranathan', 'Thiruvanmiyur'),
(581, 'General surgeon', 'Dr. Rajkumar Rathinasamy', 'Pallikarnai'),
(582, 'General surgeon', 'Dr. Arvind Maharaj', 'Chetpet'),
(583, 'General surgeon', 'Dr. Balaji Ravilla Baskara', 'Purasawakkam'),
(584, 'General surgeon', 'Dr. Mahesh Sundaram', 'Madipakkam'),
(585, 'General surgeon', 'Dr. Anusuya M', 'Madipakkam'),
(586, 'General surgeon', 'Dr. R S Regan', 'West Mambalam'),
(587, 'General surgeon', 'Dr. Nirmala Subramanian', 'Alwarpet'),
(588, 'General surgeon', 'Dr. Ravindran Kumeran', 'Kilpauk'),
(589, 'Oncologist', 'Dr. S Subramanian', 'Kilpauk'),
(590, 'Oncologist', 'Dr. D S Manohar', 'Chetpet'),
(591, 'Oncologist', 'Dr. R Sivaprakash', 'Chetpet'),
(592, 'Oncologist', 'Dr. P Dhanashekar', 'Teynampet'),
(593, 'Oncologist', 'Dr. Balaji R', 'Teynampet'),
(594, 'Oncologist', 'Dr. Syed Ismail', 'Shenoy Nagar'),
(595, 'Oncologist', 'Dr. K Kalaiselvi', 'Chetpet'),
(596, 'Oncologist', 'Dr. D Suresh Kumar', 'Chetpet'),
(597, 'Oncologist', 'Dr. Saritha Damodaran', 'Shenoy Nagar'),
(598, 'Oncologist', 'Dr. S Jagadesh Chandra Bose', 'Kilpauk'),
(599, 'Oncologist', 'Dr. Sarvanan Periasamy', 'Pallikarnai'),
(600, 'Oncologist', 'Dr. Kathiresan', 'Pallikarnai'),
(601, 'Oncologist', 'Dr. Joseph Francis Dominic', 'Pallikarnai'),
(602, 'Oncologist', 'Dr. P Rajkumar', 'Pallikarnai'),
(603, 'Oncologist', 'Dr. Rathna Devi', 'Teynampet'),
(604, 'Oncologist', 'Dr. Naveen Ravel', 'Vanagaram'),
(605, 'Oncologist', 'Dr. Ramanan S G', 'Teynampet'),
(606, 'Oncologist', 'Dr. Rejiv', 'Teynampet'),
(607, 'Oncologist', 'Dr. S Gurumurthy', 'Vadapalani'),
(608, 'Oncologist', 'Dr. V Balasundaran', 'Chetpet'),
(609, 'Oncologist', 'Dr. M Balu David', 'Chetpet'),
(610, 'Oncologist', 'Dr. T Raja', 'Teynampet'),
(611, 'Oncologist', 'Dr. Selvi Radhakrishnan', 'MRC Nagar'),
(612, 'Oncologist', 'Dr. Mohammed Ibrahim', 'Mylapore'),
(613, 'Oncologist', 'Dr. K R Chellapandiyan', 'Purasawakkam'),
(614, 'Oncologist', 'Dr. Sivasubramaniam K', 'Chetpet'),
(615, 'Oncologist', 'Dr. Arathi Surendranath', 'Pallikarnai'),
(616, 'Oncologist', 'Dr. Anitha Ramesh', 'Vanagaram'),
(617, 'Oncologist', 'Dr. R Ramya', 'Pallikarnai'),
(618, 'Oncologist', 'Dr. P Balasubramanian', 'Chetpet'),
(619, 'Oncologist', 'Dr. V Arun Ramanan', 'T Nagar'),
(620, 'Nephrologist', 'Dr. N Malathy', 'Thiruvottiyur'),
(621, 'Nephrologist', 'Dr. R Vijayakumar', 'Raja Annamalai Puram'),
(622, 'Nephrologist', 'Dr. Balamurugan B', 'Madipakkam'),
(623, 'Nephrologist', 'Dr. Visweswar Reddy', 'Vanagaram'),
(624, 'Nephrologist', 'Dr. C M Thiagarajan', 'Adyar'),
(625, 'Nephrologist', 'Dr. Srinath Barathan', 'KK Nagar'),
(626, 'Nephrologist', 'Dr. Edwin Fernando', 'Chetpet'),
(627, 'Nephrologist', 'Dr. Subba Rao', 'Greams Road'),
(628, 'Nephrologist', 'Dr. Venkatesh Rajkumar', 'Greams Road'),
(629, 'Nephrologist', 'Dr. Nammalmar B R', 'Nungambakkam'),
(630, 'Nephrologist', 'Dr. Rajeev Annigeri', 'Greams Road'),
(631, 'Nephrologist', 'Dr. Prakash K C', 'Greams Road'),
(632, 'Nephrologist', 'Dr. S Balasubramaniam', 'Greams Road'),
(633, 'Nephrologist', 'Dr. J H Bala Singh', 'Shenoy Nagar'),
(634, 'Nephrologist', 'Dr. S Thirumavalavan', 'Tondiarpet'),
(635, 'Nephrologist', 'Dr. Satish M Rao', 'Adyar'),
(636, 'Nephrologist', 'Dr. Suresh Sankarasubbaiyan', 'Kilpauk'),
(637, 'Nephrologist', 'Dr. Krishnakumar', 'Tambaram'),
(638, 'Nephrologist', 'Dr. R Venkataraman', 'Perungudi'),
(639, 'Nephrologist', 'Dr. Raja Mahesh', 'Greams Road'),
(640, 'Nephrologist', 'Dr. Balaraman', 'Purasawakkam'),
(641, 'Nephrologist', 'Dr. Saritha Vinod Dasari', 'MRC Nagar'),
(642, 'Nephrologist', 'Dr. Raja Mahesh', 'Kilpauk'),
(643, 'Nephrologist', 'Dr. S Rajagopalan Seshadri', 'Greams Road'),
(644, 'Nephrologist', 'Dr. Baskaran', 'Guindy'),
(645, 'Nephrologist', 'Dr. Sampathkumar P', 'Nandanam'),
(646, 'Nephrologist', 'Dr. Noor Mohamed', 'Arumbakkam'),
(647, 'Nephrologist', 'Dr. Padmaraj', 'Anna Nagar'),
(648, 'Nephrologist', 'Dr. V Chandrasekaran', 'Perumbakkam'),
(649, 'Nephrologist', 'Dr. Vadamalai Vivek', 'Greams Road'),
(650, 'Nephrologist', 'Dr. Soundararajan Periyasamy', 'Vanagaram'),
(651, 'Hematologist', 'Dr. Margaret C', 'Chetpet'),
(652, 'Hematologist', 'Dr.TPR Bharadwaj', 'Kilpauk'),
(653, 'Hematologist', 'Dr. Revathi Raj', 'Teynampet'),
(654, 'Hematologist', 'Dr. Prabhu Pandurangan', 'Greams Road'),
(655, 'Psychologist', 'Dr. Latha Janaki', 'Velachery'),
(656, 'Psychologist', 'Dr. Hema Karthik', 'Anna Nagar'),
(657, 'Psychologist', 'Dr. Khushali Manikandan', 'Adambakkam'),
(658, 'Psychologist', 'Dr. Shankari Mandiram', 'Adyar'),
(659, 'Psychologist', 'Dr. Chitrarasu G', 'Tambaram'),
(660, 'Psychologist', 'Dr. Ananthi', 'Mogappair'),
(661, 'Psychologist', 'Dr. Sumathi Chandrasekaran', 'Chepauk'),
(662, 'Psychologist', 'Dr. R Manoj', 'Adambakkam'),
(663, 'Psychologist', 'Dr. Sneha Hindocha', 'Alwarpet'),
(664, 'Psychologist', 'Dr. Lakshmi T Rajan', 'Porur'),
(665, 'Psychologist', 'Dr. P T Sunderam', 'Tambaram'),
(666, 'Psychologist', 'Dr. Sunil Kumar', 'Adyar'),
(667, 'Psychologist', 'Dr. P Devaraj', 'Mogappair'),
(668, 'Psychologist', 'Dr. Bhavani Janakiram', 'OMR Road'),
(669, 'Psychologist', 'Dr. Sunita Menon', 'Nungambakkam'),
(670, 'Psychologist', 'Dr. Sahana', 'Anna Nagar'),
(671, 'Psychologist', 'Dr. B Elayaraja', 'Ambattur'),
(672, 'Psychologist', 'Dr. Ananthi Ragupathy', 'Perumbakkam'),
(673, 'Psychologist', 'Dr. Ashok Kumar', 'Tambaram'),
(674, 'Psychologist', 'Dr. Sheila Pavithran', 'Kilpauk'),
(675, 'Psychologist', 'Dr. Suresh Kumar M', 'Alwarthirunagar'),
(676, 'Psychologist', 'Dr. Dinesh Nayak', 'Saidapet'),
(677, 'Psychologist', 'Dr. Sriram', 'Vanagaram'),
(678, 'Psychologist', 'Dr. J Jayaprabha', 'Aynavaram'),
(679, 'Psychologist', 'Dr. Ganesan S V', 'Kottivakkam'),
(680, 'Psychologist', 'Dr. V S Anitha', 'Mandaveli'),
(681, 'Psychologist', 'Dr. Suryakumar R', 'Purasawakkam'),
(682, 'Psychologist', 'Dr. Sangita Santosham', 'Egmore'),
(683, 'Psychologist', 'Dr. Gitanjali Sharma', 'Mylapore'),
(684, 'Psychologist', 'Dr. Nikita Vyas', 'Sowcarpet'),
(685, 'Psychologist', 'Dr. Vijayalakshmi Rozario', 'Ambattur'),
(686, 'ENT Specialist', 'Dr. Govindaraj', 'Anna Nagar'),
(687, 'ENT Specialist', 'Dr. S K Ravichandran', 'Tambaram'),
(688, 'ENT Specialist', 'Dr. Niraj Joshi', 'Mylapore'),
(689, 'ENT Specialist', 'Dr. U Robinson', 'Pallavaram'),
(690, 'ENT Specialist', 'Dr. N P Karthikeyan', 'Anna Nagar'),
(691, 'ENT Specialist', 'Dr. N Ahilasamy', 'Pallikarnai'),
(692, 'ENT Specialist', 'Dr. R Narendran', 'Mandaveli'),
(693, 'ENT Specialist', 'Dr. A N Sreevatsan', 'Thiruvanmiyur'),
(694, 'ENT Specialist', 'Dr. Ramu Harirajan', 'Velachery'),
(695, 'ENT Specialist', 'Dr. R Shyamala', 'Kandanchavadi'),
(696, 'ENT Specialist', 'Dr. A Ravikumar', 'Porur'),
(697, 'ENT Specialist', 'Dr. V Sarvana Selvan', 'Porur'),
(698, 'ENT Specialist', 'Dr. Ravi Ramalingam', 'Kilpauk'),
(699, 'ENT Specialist', 'Dr. N Kumaresan', 'Royapettah'),
(700, 'ENT Specialist', 'Dr. N Latha', 'Adyar'),
(701, 'ENT Specialist', 'Dr. Babu Manohar', 'Mahalingapuram'),
(702, 'ENT Specialist', 'Dr. Sundhari V', 'Mylapore'),
(703, 'ENT Specialist', 'Dr. D Y Raj Prakash', 'Velachery'),
(704, 'ENT Specialist', 'Dr. Sukanya Mathupal', 'Velachery'),
(705, 'ENT Specialist', 'Dr. U Sanjay', 'Anna Nagar'),
(706, 'ENT Specialist', 'Dr. Mohan Kameswaran S', 'Raja Annamalai Puram'),
(707, 'ENT Specialist', 'Dr. K Shakthesh', 'Tambaram'),
(708, 'ENT Specialist', 'Dr. Ramya Kumar', 'ECR Road'),
(709, 'ENT Specialist', 'Dr. K Ramesh Babu', 'Kodambakkam'),
(710, 'ENT Specialist', 'Dr. M Ilambarathi', 'Saligramam'),
(711, 'ENT Specialist', 'Dr. Prasanna Kumar S', 'Vanagaram'),
(712, 'ENT Specialist', 'Dr. P Vijaya Krishnan', 'Raja Annamalai Puram'),
(713, 'ENT Specialist', 'Dr. K Balamurugan', 'KK Nagar'),
(714, 'ENT Specialist', 'Dr. V Devipriya', 'Alwarpet'),
(715, 'ENT Specialist', 'Dr. Sanjeev Mohanty', 'Manapakkam'),
(716, 'ENT Specialist', 'Dr. Sundar Krishnan', 'T Nagar'),
(717, 'Endocrinologist', 'Dr. G Shanmugasundar', 'Ashok Nagar'),
(718, 'Endocrinologist', 'Dr. Ramkumar S', 'Anna Nagar'),
(719, 'Endocrinologist', 'Dr. M Ravikiran', 'Vadapalani'),
(720, 'Endocrinologist', 'Dr. Kumar Thulasidass', 'Pallikarnai'),
(721, 'Endocrinologist', 'Dr. Shriraam Mahadevan', 'Adyar'),
(722, 'Endocrinologist', 'Dr. R Ram Kumar', 'Chintadripet'),
(723, 'Endocrinologist', 'Dr. Sivagana Sundaram', 'Greams Road'),
(724, 'Endocrinologist', 'Dr. Bharath R', 'Adyar'),
(725, 'Endocrinologist', 'Dr. Usha Ayyagari', 'Karapakkam'),
(726, 'Endocrinologist', 'Dr. R Anbazhahan', 'Anna Nagar'),
(727, 'Endocrinologist', 'Dr. N K Narayanan', 'Greams Road'),
(728, 'Endocrinologist', 'Dr. R Bharath', 'T Nagar'),
(729, 'Endocrinologist', 'Dr. V Kumaravel', 'Guindy'),
(730, 'Endocrinologist', 'Dr. Karthik Balachandran', 'Raja Annamalai Puram'),
(731, 'Endocrinologist', 'Dr. Sundaraman P G', 'Greams Road'),
(732, 'Endocrinologist', 'Dr. Anjali', 'Vanagaram'),
(733, 'Endocrinologist', 'Dr. Boochandran T S', 'Greams Road'),
(734, 'Endocrinologist', 'Dr. Anbezhil Subbarayan', 'Thousand Lights'),
(735, 'Endocrinologist', 'Dr. Ram Kumar S', 'Thousand Lights'),
(736, 'Endocrinologist', 'Dr. R Anbazhahan', 'Anna Nagar'),
(737, 'Pediatric Neurologist', 'Dr. V Murugan', 'Adyar'),
(738, 'Pediatric Neurologist', 'Dr. S Velmurugan', 'Thousand Lights'),
(739, 'Pediatric Neurologist', 'Dr. S Vani', 'Adyar'),
(740, 'Pediatric Neurologist', 'Dr. Ranjith Kumar M', 'Porur'),
(741, 'Pediatric Neurologist', 'Dr. Lakshminarayanan', 'Adyar');

-- --------------------------------------------------------

--
-- Table structure for table `medical_history`
--

CREATE TABLE `medical_history` (
  `user_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `medicalhistory` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `office`
--

CREATE TABLE `office` (
  `id` int(10) NOT NULL,
  `doctor_id` int(10) NOT NULL,
  `time_slot` int(2) NOT NULL,
  `first_consultation_fee` int(5) NOT NULL,
  `follow_consultation_fee` int(5) NOT NULL,
  `street` varchar(20) DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `country` varchar(10) DEFAULT NULL,
  `pincode` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `office`
--

INSERT INTO `office` (`id`, `doctor_id`, `time_slot`, `first_consultation_fee`, `follow_consultation_fee`, `street`, `city`, `state`, `country`, `pincode`) VALUES
(1, 8, 30, 2000, 1000, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `office_availability`
--

CREATE TABLE `office_availability` (
  `id` int(10) NOT NULL,
  `doctor_id` int(10) NOT NULL,
  `dayOfWeek` int(2) NOT NULL,
  `startTime` time NOT NULL DEFAULT current_timestamp(),
  `endTime` time NOT NULL DEFAULT current_timestamp(),
  `isAvailable` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `office_availability`
--

INSERT INTO `office_availability` (`id`, `doctor_id`, `dayOfWeek`, `startTime`, `endTime`, `isAvailable`) VALUES
(0, 5, 4, '11:30:00', '12:00:00', 1),
(1, 1, 4, '13:30:00', '14:00:00', 1),
(3, 2, 4, '17:00:00', '11:54:13', 1),
(4, 3, 4, '19:00:00', '11:54:00', 1),
(5, 6, 4, '15:45:00', '11:54:40', 1),
(6, 11, 5, '11:20:00', '11:50:00', 0),
(7, 11, 5, '11:20:00', '11:50:00', 1),
(10, 10, 1, '13:00:00', '13:30:00', 1),
(11, 11, 6, '19:00:00', '19:40:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ONo` int(3) NOT NULL,
  `PharmacyName` varchar(70) NOT NULL,
  `PatientName` varchar(70) NOT NULL,
  `Area` varchar(60) NOT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ONo`, `PharmacyName`, `PatientName`, `Area`, `Date`) VALUES
(1, 'Hari Krishna Pharmacy', 'Dhruv', 'Chetpet', NULL),
(2, 'Ksheera Pharmacy', 'Dhruv', 'Velachery', NULL),
(3, 'K R Pharmacy', 'Arush', 'Velachery', NULL),
(4, 'Om Medicals', 'Dhruv', 'Adyar', NULL),
(5, 'Om Pharmacy', 'Dhruv', 'Adyar', NULL),
(6, 'Om Pharmacy', 'Arush', 'Adyar', NULL),
(7, 'Om Medicals', 'Arush', 'Adyar', NULL),
(8, 'K R Pharmacy', 'Arush', 'Velachery', NULL),
(9, 'Om Pharmacy', 'Arush', 'Adyar', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `id` int(11) NOT NULL,
  `dname` varchar(20) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `prescription` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prescriptions`
--

INSERT INTO `prescriptions` (`id`, `dname`, `pname`, `prescription`) VALUES
(1, 'Niall', 'Timothy', 'xyz -1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table used for storing details of Users';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES
(16, 'Arush', 'arush.neo@gmail.com', '', '24f8e4103042a63a7020ef757158e2bf', NULL, NULL),
(17, 'Dhruv', 'dhruv@hotmail.com', '', '1eba9614763773df08dd49049663c3e3', NULL, NULL),
(18, 'Vishnu', 'vishnu@gmail.com', '', '1963fd70e789022f6f5b11498f992404', NULL, NULL),
(19, 'Aakash', 'aakash@example.com', '', 'a870c4012ce2eaa3b60a4c59cb786f76', NULL, NULL),
(20, 'Rachit', 'rachit@gmail.com', '', 'e818202f38c75b1a88c00d4cd13ac636', NULL, NULL),
(21, 'Aditya', 'aditya.a.chitlangia@gmail.com', '', '057829fa5a65fc1ace408f490be486ac', NULL, NULL),
(22, 'Abhinav', 'abhinav@gmail.com', '', 'ba1d63b653b24a565ed436a0cfc5b3c9', NULL, NULL),
(23, 'Pramod ', 'pramod@jaisriram.com', '', 'bb16fa6160fa1d8a73eba6217844a08b', NULL, NULL),
(24, 'Prakhar', 'prakhar@gmail.com', '', 'a0df7b431b2dba83d26675e676a8cb7c', NULL, NULL),
(25, 'Shantanu', 'shantanu@gmail.com', '', '2e9cc0cc73d64cd2bcdc602eaa8f0759', NULL, NULL),
(26, 'Swaraj', 'swaraj@gmail.com', '', '2b8a474c65cba1aeec3b7b3e99a7acbf', NULL, NULL),
(27, 'Aashray', 'aashray.munjal@gmail.com', '', 'aaa59ca4b4f7cb4c62dd81747bd909bf', NULL, NULL),
(28, 'Arjun', 'arjun@gmail.com', '', '7626d28b710e7f9e98d9dfbe9bf0d123', NULL, NULL),
(29, 'Chakshu', 'chakshu', '', '94f3b3a16d8ce064c808b16bee5003c5', NULL, NULL),
(30, 'Khushi', 'pizzapasta@gmail.com', '', '2d75a833de8a38dff78ffb4183cd8672', NULL, NULL),
(34, 'Timothy', 'tim@gmail.com', '1234567890', '$2y$10$43gkfb0RVqchez/BTONXvuyi1sKUIN.9fX8EcIRV8wA/xDTh7OLWm', '2021-03-15 06:25:19', '2021-03-15 06:25:19'),
(35, 'Harry', 'hs@gmail.com', '1234567856', '$2y$10$KrMqq.69ncWhIPdFwWLWmO48SfWCf57PdfCwg3VWkBlyB034K0JTy', '2021-03-15 06:28:06', '2021-03-15 06:28:06'),
(36, 'Harry', 'tpforfun5@gmail.com', '9876342891', '$2y$10$Y1wG1M1mIM01NrPnADUmIeSwGAjdCv2dyWDdFf5YOlRiiOPTdwdgW', '2021-03-16 08:43:41', '2021-03-16 08:43:41'),
(38, 'Harry Styles', 'hshq@gmail.com', '9876541023', '$2y$10$tIiPhxU9cBtOaZc.E8/5YORpesY0Xf6VDomEsczzb.afZD90XXzbu', '2021-03-20 15:07:51', '2021-03-20 15:07:51');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `heart` varchar(2048) NOT NULL,
  `sleep` varchar(512) NOT NULL,
  `food` varchar(512) NOT NULL,
  `activities` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `heart`, `sleep`, `food`, `activities`) VALUES
(1, 35, '', '', '', ''),
(2, 35, '', '', '', ''),
(3, 35, '', '', '', ''),
(5, 35, '', '', '', ''),
(6, 36, '', '', '', ''),
(9, 38, '', '', '', ''),
(13, 34, '{\'activities-heart\': [{\'dateTime\': \'2021-04-10\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}, {\'dateTime\': \'2021-04-11\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}, {\'dateTime\': \'2021-04-12\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}, {\'dateTime\': \'2021-04-13\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}, {\'dateTime\': \'2021-04-14\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}, {\'dateTime\': \'2021-04-15\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}, {\'dateTime\': \'2021-04-16\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}]}', '$sleep', '$food', '$activities'),
(20, 34, '$heart', '$sleep', '$food', '$activities'),
(22, 34, '{\'activities-heart\': [{\'dateTime\': \'2021-04-10\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}, {\'dateTime\': \'2021-04-11\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}, {\'dateTime\': \'2021-04-12\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}, {\'dateTime\': \'2021-04-13\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}, {\'dateTime\': \'2021-04-14\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}, {\'dateTime\': \'2021-04-15\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}, {\'dateTime\': \'2021-04-16\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}]}', '\n{\'sleep\': [], \'summary\': {\'totalMinutesAsleep\': 0, \'totalSleepRecords\': 0, \'totalTimeInBed\': 0}}', '\n{\'foods\': [], \'summary\': {\'calories\': 0, \'carbs\': 0, \'fat\': 0, \'fiber\': 0, \'protein\': 0, \'sodium\': 0, \'water\': 0}}', '\n{\'activities\': [], \'goals\': {\'activeMinutes\': 30, \'caloriesOut\': 2158, \'distance\': 8.05, \'steps\': 10000}, \'summary\': {\'activeScore\': -1, \'activityCalories\': 0, \'caloriesBMR\': 602, \'caloriesOut\': 602, \'distances\': [{\'activity\': \'total\', \'distance\': 0}, {\'activity\': \'tracker\', \'distance\': 0}, {\'activity\': \'loggedActivities\', \'distance\': 0}, {\'activity\': \'veryActive\', \'distance\': 0}, {\'activity\': \'moderatelyActive\', \'distance\': 0}, {\'activity\': \'lightlyActive\', \'distance\': 0}, {\'activity\': \'sedentaryActive\', '),
(23, 34, '{\'activities-heart\': [{\'dateTime\': \'2021-04-10\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}, {\'dateTime\': \'2021-04-11\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}, {\'dateTime\': \'2021-04-12\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}, {\'dateTime\': \'2021-04-13\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}, {\'dateTime\': \'2021-04-14\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}, {\'dateTime\': \'2021-04-15\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}, {\'dateTime\': \'2021-04-16\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}]}', '\n{\'sleep\': [], \'summary\': {\'totalMinutesAsleep\': 0, \'totalSleepRecords\': 0, \'totalTimeInBed\': 0}}', '\n{\'foods\': [], \'summary\': {\'calories\': 0, \'carbs\': 0, \'fat\': 0, \'fiber\': 0, \'protein\': 0, \'sodium\': 0, \'water\': 0}}', '\n{\'activities\': [], \'goals\': {\'activeMinutes\': 30, \'caloriesOut\': 2158, \'distance\': 8.05, \'steps\': 10000}, \'summary\': {\'activeScore\': -1, \'activityCalories\': 0, \'caloriesBMR\': 603, \'caloriesOut\': 603, \'distances\': [{\'activity\': \'total\', \'distance\': 0}, {\'activity\': \'tracker\', \'distance\': 0}, {\'activity\': \'loggedActivities\', \'distance\': 0}, {\'activity\': \'veryActive\', \'distance\': 0}, {\'activity\': \'moderatelyActive\', \'distance\': 0}, {\'activity\': \'lightlyActive\', \'distance\': 0}, {\'activity\': \'sedentaryActive\', '),
(24, 34, '{\'activities-heart\': [{\'dateTime\': \'2021-04-10\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}, {\'dateTime\': \'2021-04-11\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}, {\'dateTime\': \'2021-04-12\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}, {\'dateTime\': \'2021-04-13\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}, {\'dateTime\': \'2021-04-14\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}, {\'dateTime\': \'2021-04-15\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}, {\'dateTime\': \'2021-04-16\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}]}', '\n{\'sleep\': [], \'summary\': {\'totalMinutesAsleep\': 0, \'totalSleepRecords\': 0, \'totalTimeInBed\': 0}}', '\n{\'foods\': [], \'summary\': {\'calories\': 0, \'carbs\': 0, \'fat\': 0, \'fiber\': 0, \'protein\': 0, \'sodium\': 0, \'water\': 0}}', '\n{\'activities\': [], \'goals\': {\'activeMinutes\': 30, \'caloriesOut\': 2158, \'distance\': 8.05, \'steps\': 10000}, \'summary\': {\'activeScore\': -1, \'activityCalories\': 0, \'caloriesBMR\': 603, \'caloriesOut\': 603, \'distances\': [{\'activity\': \'total\', \'distance\': 0}, {\'activity\': \'tracker\', \'distance\': 0}, {\'activity\': \'loggedActivities\', \'distance\': 0}, {\'activity\': \'veryActive\', \'distance\': 0}, {\'activity\': \'moderatelyActive\', \'distance\': 0}, {\'activity\': \'lightlyActive\', \'distance\': 0}, {\'activity\': \'sedentaryActive\', '),
(25, 34, '{\'activities-heart\': [{\'dateTime\': \'2021-04-10\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}, {\'dateTime\': \'2021-04-11\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}, {\'dateTime\': \'2021-04-12\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}, {\'dateTime\': \'2021-04-13\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}, {\'dateTime\': \'2021-04-14\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}, {\'dateTime\': \'2021-04-15\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}, {\'dateTime\': \'2021-04-16\', \'value\': {\'customHeartRateZones\': [], \'heartRateZones\': [{\'max\': 95, \'min\': 30, \'name\': \'Out of Range\'}, {\'max\': 133, \'min\': 95, \'name\': \'Fat Burn\'}, {\'max\': 162, \'min\': 133, \'name\': \'Cardio\'}, {\'max\': 220, \'min\': 162, \'name\': \'Peak\'}]}}]}', '\n{\'sleep\': [], \'summary\': {\'totalMinutesAsleep\': 0, \'totalSleepRecords\': 0, \'totalTimeInBed\': 0}}', '\n{\'foods\': [], \'summary\': {\'calories\': 0, \'carbs\': 0, \'fat\': 0, \'fiber\': 0, \'protein\': 0, \'sodium\': 0, \'water\': 0}}', '\n{\'activities\': [], \'goals\': {\'activeMinutes\': 30, \'caloriesOut\': 2158, \'distance\': 8.05, \'steps\': 10000}, \'summary\': {\'activeScore\': -1, \'activityCalories\': 0, \'caloriesBMR\': 606, \'caloriesOut\': 606, \'distances\': [{\'activity\': \'total\', \'distance\': 0}, {\'activity\': \'tracker\', \'distance\': 0}, {\'activity\': \'loggedActivities\', \'distance\': 0}, {\'activity\': \'veryActive\', \'distance\': 0}, {\'activity\': \'moderatelyActive\', \'distance\': 0}, {\'activity\': \'lightlyActive\', \'distance\': 0}, {\'activity\': \'sedentaryActive\', ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`ANo`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `data_raw`
--
ALTER TABLE `data_raw`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fbuser` (`fbdate`,`fbuser`);

--
-- Indexes for table `disease_doctor`
--
ALTER TABLE `disease_doctor`
  ADD PRIMARY KEY (`Rec_no`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_location`
--
ALTER TABLE `doctor_location`
  ADD PRIMARY KEY (`Doc_no`);

--
-- Indexes for table `medical_history`
--
ALTER TABLE `medical_history`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `office`
--
ALTER TABLE `office`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `office_availability`
--
ALTER TABLE `office_availability`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ONo`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `U1` (`email`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `ANo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `data_raw`
--
ALTER TABLE `data_raw`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ONo` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `medical_history`
--
ALTER TABLE `medical_history`
  ADD CONSTRAINT `medical_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `office`
--
ALTER TABLE `office`
  ADD CONSTRAINT `office_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`);

--
-- Constraints for table `office_availability`
--
ALTER TABLE `office_availability`
  ADD CONSTRAINT `office_availability_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`);

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
