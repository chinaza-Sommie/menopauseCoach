-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2024 at 11:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `menopause`
--

-- --------------------------------------------------------

--
-- Table structure for table `consultations`
--

CREATE TABLE `consultations` (
  `bookingId` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `purpose` varchar(200) NOT NULL,
  `appointmentDate` varchar(50) NOT NULL,
  `appointmentTime` varchar(50) NOT NULL,
  `dateBooked` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consultations`
--

INSERT INTO `consultations` (`bookingId`, `name`, `email`, `purpose`, `appointmentDate`, `appointmentTime`, `dateBooked`) VALUES
(1, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '', '', '2024-07-21 23:49:32'),
(2, 'chinaza', 'chinazachukwunweike55@gmail.com', 'swiss', '', '', '2024-07-21 23:52:46'),
(3, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '', '', '2024-07-22 02:53:48'),
(4, 'chessy', 'chinazachukwunweike55@gmail.com', 'london', '2024-07-24 00:00:00', '11am - 12am', '2024-07-22 02:55:17'),
(5, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-07-25 00:00:00', '11am - 12am', '2024-07-22 09:43:40'),
(6, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-07-25 00:00:00', '11am - 12am', '2024-07-22 09:44:39'),
(7, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-07-25 00:00:00', '9am - 10am', '2024-07-22 09:50:57'),
(8, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-07-25 00:00:00', '9am - 10am', '2024-07-22 09:51:34'),
(9, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-07-27 00:00:00', '11am - 12am', '2024-07-22 09:52:40'),
(10, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-07-27 00:00:00', '11am - 12am', '2024-07-22 09:53:38'),
(11, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-07-27 00:00:00', '11am - 12am', '2024-07-22 09:55:19'),
(12, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-07-25 00:00:00', '9am - 10am', '2024-07-22 09:56:31'),
(13, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-07-24 00:00:00', '9am - 10am', '2024-07-22 10:26:08'),
(14, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-07-25 00:00:00', '11am - 12am', '2024-07-22 10:32:02'),
(15, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-07-25 00:00:00', '11am - 12am', '2024-07-22 10:55:48'),
(16, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-07-25 00:00:00', '11am - 12am', '2024-07-22 10:56:54'),
(17, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-07-25 00:00:00', '11am - 12am', '2024-07-22 11:01:22'),
(18, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-07-25 00:00:00', '11am - 12am', '2024-07-22 11:02:15'),
(19, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-07-25 00:00:00', '11am - 12am', '2024-07-22 11:02:20'),
(20, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-07-25 00:00:00', '11am - 12am', '2024-07-22 11:02:45'),
(21, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-07-26 00:00:00', '11am - 12am', '2024-07-22 11:03:34'),
(22, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-07-26 00:00:00', '11am - 12am', '2024-07-22 11:03:38'),
(23, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-07-26 00:00:00', '11am - 12am', '2024-07-22 11:06:04'),
(24, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-07-26 00:00:00', '11am - 12am', '2024-07-22 11:07:59'),
(25, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-07-26 00:00:00', '11am - 12am', '2024-07-22 11:11:48'),
(26, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-07-26 00:00:00', '11am - 12am', '2024-07-22 11:12:55'),
(27, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-07-26 00:00:00', '11am - 12am', '2024-07-22 11:14:37'),
(28, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-07-26 00:00:00', '11am - 12am', '2024-07-22 11:17:46'),
(29, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-07-26 00:00:00', '11am - 12am', '2024-07-22 11:24:19'),
(30, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-07-25 00:00:00', '9am - 10am', '2024-07-22 11:24:45'),
(31, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-07-25 00:00:00', '9am - 10am', '2024-07-22 11:26:13'),
(32, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-07-25 00:00:00', '9am - 10am', '2024-07-22 11:26:22'),
(33, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-07-27 00:00:00', '1pm - 2pm', '2024-07-22 11:27:59'),
(34, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-08-10 00:00:00', '11am - 12am', '2024-07-29 16:29:42'),
(35, 'chessy', 'chinazachukwunweike55@gmail.com', 'london', '2024-08-02 00:00:00', '2pm - 3pm', '2024-07-29 16:32:42'),
(36, 'chinaza', 'chinazachukwunweike35@gmail.com', 'london', '2024-08-30 00:00:00', '2pm - 3pm', '2024-08-27 16:16:30'),
(37, 'chinaza', 'chinazachukwunweike35@gmail.com', 'london', '2024-08-31 00:00:00', '3pm - 4pm', '2024-08-27 16:22:29'),
(38, 'chinaza', 'chinazachukwunweike35@gmail.com', 'london', '2024-08-30 00:00:00', '3pm - 4pm', '2024-08-27 16:28:06'),
(39, 'chinaza', 'chinazachukwunweike35@gmail.com', 'london', '2024-08-30 00:00:00', '2pm - 3pm', '2024-08-27 16:30:23'),
(40, 'chinaza', 'chinazachukwunweike35@gmail.com', 'london', '2024-08-30 00:00:00', '3pm - 4pm', '2024-08-27 16:33:21'),
(41, 'chinaza', 'chinazachukwunweike35@gmail.com', 'london', '2024-08-30 00:00:00', '3pm - 4pm', '2024-08-27 16:35:38'),
(42, 'chinaza chisom', 'chinazachukwunweike35@gmail.com', 'london', '2024-08-30 00:00:00', '3pm - 4pm', '2024-08-27 16:48:18'),
(43, 'chinaza chisom', 'chinazachukwunweike35@gmail.com', 'london', '2024-08-30 00:00:00', '3pm - 4pm', '2024-08-27 16:50:23'),
(44, 'chinaza chisom', 'nazachi738@gmail.com', 'london', '2024-08-30 00:00:00', '3pm - 4pm', '2024-08-27 16:51:20'),
(45, 'chinaza chisom', 'nazachi738@gmail.com', 'london', '2024-08-30 00:00:00', '3pm - 4pm', '2024-08-27 16:52:25'),
(46, 'chinaza chisom', 'nazachi738@gmail.com', 'london', '2024-08-30 00:00:00', '3pm - 4pm', '2024-08-27 16:53:31'),
(47, 'chinaza chisom', 'nazachi738@gmail.com', 'london', '2024-08-30 00:00:00', '3pm - 4pm', '2024-08-27 16:53:56'),
(48, 'Chinaza Chisom Chukwunweike', 'chinazachukwunweike35@gmail.com', 'I am experiencing sleep problems', '2024-08-30 00:00:00', '2pm - 3pm', '2024-08-27 17:13:17'),
(49, 'Chinaza Chisom Chukwunweike', 'chinazachukwunweike35@gmail.com', 'I am experiencing sleep problems', '2024-08-30 00:00:00', '2pm - 3pm', '2024-08-27 17:27:20'),
(50, 'Chinaza Chisom Chukwunweike', 'chinazachukwunweike35@gmail.com', 'I am experiencing sleep problems', '2024-08-30 00:00:00', '2pm - 3pm', '2024-08-27 17:59:45'),
(51, 'chinaza', 'chinazachukwunweike55@gmail.com', 'london', '2024-08-30 00:00:00', '1pm - 2pm', '2024-08-27 18:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `response_id` int(11) NOT NULL,
  `question1_option` varchar(50) NOT NULL,
  `question2_option` varchar(50) NOT NULL,
  `question3_option` varchar(50) NOT NULL,
  `question4_option` varchar(50) NOT NULL,
  `question5_option` varchar(50) NOT NULL,
  `question6_option` varchar(50) NOT NULL,
  `chatbot_response` text NOT NULL,
  `satisfactory_rate` varchar(50) NOT NULL,
  `chat_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `responses`
--

INSERT INTO `responses` (`response_id`, `question1_option`, `question2_option`, `question3_option`, `question4_option`, `question5_option`, `question6_option`, `chatbot_response`, `satisfactory_rate`, `chat_date`) VALUES
(1, 'Under 40', 'Have not seen for over 12 months', 'Burning Tongue', 'Intimacy', 'I get Night Sweats ', 'I do not know', 'Great! Based on your responses, I would recommend using Femarelle Unstoppable. This product is designed for women under 40 experiencing menopausal symptoms, including burning tongue, and seeking support for intimacy issues. It does not contain lavender.', 'good', '2024-07-27 05:53:14'),
(2, '60 and Over', 'Have not seen for over 12 months', 'Osteoporosis', 'Intimacy', 'I get Night Sweats ', 'I do not know', 'Great! Based on your responses, I would recommend using Osphena. This medication is designed to help with intimacy issues, including vaginal dryness and pain during sex. It can also help with managing osteoporosis. Additionally, using lavender-scented products can help you relax and manage night sweats.', '', '2024-07-27 05:54:23'),
(3, '60 and Over', 'Have not seen for over 12 months', 'Sleep', 'Sleep', 'Having trouble getting to sleep', 'Yes', 'Great! Based on your responses, I would recommend using a sleep aid such as Somnapure. This product is designed to help with insomnia and sleep disturbances, including trouble falling asleep. Additionally, using lavender-scented products can help you relax and improve your sleep quality.', '', '2024-07-27 05:55:22'),
(4, '60 and Over', 'Have not seen for over 12 months', 'Osteoporosis', 'Intimacy', 'I get Night Sweats ', 'I do not know', 'Based on your responses, I would recommend using Estrogen and Black Cohosh. These will help with managing your menopausal symptoms, including night sweats and intimacy issues, while also addressing your concerns about osteoporosis.', '', '2024-07-29 15:10:29'),
(5, 'Under 40', 'Regular like clock work', 'Sleep', 'Sleep', 'Having trouble getting to sleep', 'Yes', 'It seems like there may have been a misunderstanding. Based on your responses, it doesn\'t seem like you are experiencing menopausal symptoms. If you are having trouble sleeping and are interested in using lavender, I would recommend using Sleep Sound H2O. This product combines the calming effects of essential oils with the relaxing properties of magnesium, including lavender, to help you relax and fall asleep more easily.', '', '2024-07-29 15:13:55'),
(6, '60 and Over', 'Have not seen for over 12 months', 'Sleep', 'Sleep', 'Having trouble getting to sleep', 'Yes', 'Great! Based on your responses, I would recommend using Sleep Sound H2O. This product combines the calming effects of essential oils with the relaxing properties of magnesium, including lavender, to help you relax and fall asleep more easily.', '', '2024-07-29 15:20:28'),
(7, '60 and Over', 'Have not seen for over 12 months', 'Sleep', 'Sleep', 'Having trouble getting to sleep', 'No', 'Great! Based on your responses, I would recommend using Sleep Sound H2O Non Lavender. This product combines the calming effects of essential oils with the relaxing properties of magnesium, without using lavender, to help you relax and fall asleep more easily.', '', '2024-07-29 15:23:23'),
(8, '60 and Over', 'Have not seen for over 12 months', 'Allergies', 'Sleep', 'I sleep like a baby', 'Yes', 'Great! Based on your responses, I would recommend using Sleep Sound H2O. This product combines the calming effects of essential oils with the relaxing properties of magnesium, including lavender, to help you relax and stay asleep without feeling groggy in the morning.', '', '2024-07-29 15:35:44'),
(9, '60 and Over', 'Have not seen for over 12 months', 'Sleep', 'Sleep', 'Having trouble getting to sleep', 'Yes', 'Great! Based on your responses, I would recommend using Sleep Sound H2O. This product combines the calming effects of essential oils with the relaxing properties of magnesium, including lavender, to help you relax and fall asleep more easily.', 'Good', '2024-07-29 15:37:50'),
(10, '40 - 49', 'Not Regular For over 12 months', 'Sleep', 'Sleep', 'Having trouble getting to sleep', 'Yes', 'Great! Based on your responses, I would recommend using Sleep Sound H2O. This product combines the calming effects of essential oils with the relaxing properties of magnesium, including lavender, to help you relax and fall asleep more easily.', 'Good', '2024-07-29 15:41:18'),
(11, '50 - 59', 'Not Regular For over 12 months', 'Sleep', 'Sleep', 'Having trouble getting to sleep', 'Yes', 'Great! Based on your responses, I would recommend using Sleep Sound H2O. This product combines the calming effects of essential oils with the relaxing properties of magnesium, including lavender, to help you relax and fall asleep more easily.', 'Good', '2024-07-29 15:44:05'),
(12, '50 - 59', 'Not Regular For over 12 months', 'Sleep', 'Sleep', 'Having trouble getting to sleep', 'Yes', 'Great! Based on your responses, I would recommend using Sleep Sound H2O. This product combines the calming effects of essential oils with the relaxing properties of magnesium, including lavender, to help you relax and fall asleep more easily.', 'Good', '2024-07-29 15:49:27'),
(13, '50 - 59', 'Not Regular For over 12 months', 'Sleep', 'Sleep', 'Having trouble getting to sleep', 'Yes', 'Great! Based on your responses, I would recommend using Sleep Sound H2O. This product combines the calming effects of essential oils with the relaxing properties of magnesium, including lavender, to help you relax and fall asleep more easily.', 'Good', '2024-07-29 15:52:46'),
(14, '50 - 59', 'Have not seen for over 12 months', 'Sleep', 'Sleep', 'Having trouble getting to sleep', 'Yes', 'Great! Based on your responses, I would recommend using Sleep Sound H2O. This product combines the calming effects of essential oils with the relaxing properties of magnesium, including lavender, to help you relax and fall asleep more easily.', 'Good', '2024-07-29 15:56:06'),
(15, 'Under 40', 'Regular like clock work', 'Gum Issues', 'Hot Flushes', 'I get Night Sweats ', 'No', 'Great! Based on your responses, I would recommend using Bonafide. These products are designed to help with hot flushes and night sweats without containing lavender.', 'Good', '2024-08-27 16:14:32'),
(16, '40 - 49', 'Not Regular For under 12 months', 'Sleep', 'Sleep', 'Having trouble getting to sleep', 'Yes', 'Great! Based on your responses, I would recommend using Sleep Sound H2O. This product combines the calming effects of essential oils with the relaxing properties of magnesium, including lavender, to help you relax and fall asleep more easily.', 'Good', '2024-08-27 16:15:58'),
(17, '40 - 49', 'Not Regular For under 12 months', 'Fatigue', 'Sleep', 'Having trouble getting to sleep', 'Yes', 'Great! Based on your responses, I would recommend using Sleep Sound H2O. This product combines the calming effects of essential oils with the relaxing properties of magnesium, including lavender, to help you relax and fall asleep more easily.', 'Good', '2024-08-27 16:20:07'),
(18, '40 - 49', 'Not Regular For under 12 months', 'Sleep', 'Sleep', 'Having trouble getting to sleep', 'Yes', 'Great! Based on your responses, I would recommend using Sleep Sound H2O Non-Hormonal. This product combines the calming effects of essential oils with the relaxing properties of magnesium, including lavender, to help you relax and fall asleep more easily.', 'Good', '2024-08-27 16:21:45'),
(19, '40 - 49', 'Not Regular For under 12 months', 'Sleep', 'Sleep', 'I find myself waking up at night', 'Yes', 'Great! Based on your responses, I would recommend using Sleep Sound H2O. This product combines the calming effects of essential oils with the relaxing properties of magnesium, including lavender, to help you relax and stay asleep.', 'Good', '2024-08-27 16:27:48'),
(20, '40 - 49', 'Not Regular For under 12 months', 'Sleep', 'Sleep', 'I find myself waking up at night', 'Yes', 'Great! Based on your responses, I would recommend using Sleep Sound H2O. This product combines the calming effects of essential oils with the relaxing properties of magnesium, including lavender, to help you relax and stay asleep.', 'Good', '2024-08-27 16:30:07'),
(21, '40 - 49', 'Not Regular For under 12 months', 'Sleep', 'Sleep', 'I find myself waking up at night', 'Yes', 'Great! Based on your responses, I would recommend using Black Cohosh. Black Cohosh is known for its calming effects and can help with sleep issues.', 'Good', '2024-08-27 16:33:06'),
(22, '40 - 49', 'Not Regular For under 12 months', 'Sleep', 'Sleep', 'Having trouble getting to sleep', 'Yes', 'Great! Based on your responses, I would recommend using Sleep Sound H2O. This product combines the calming effects of essential oils with the relaxing properties of magnesium, including lavender, to help you relax and fall asleep more easily.', 'Good', '2024-08-27 17:12:14'),
(23, '40 - 49', 'Not Regular For under 12 months', 'Sleep', 'Sleep', 'Having trouble getting to sleep', 'Yes', 'Great! Based on your responses, I would recommend using Sleep Sound H2O. This product combines the calming effects of essential oils with the relaxing properties of magnesium, including lavender, to help you relax and fall asleep more easily.', 'Good', '2024-08-27 17:26:25'),
(24, '40 - 49', 'Not Regular For under 12 months', 'Sleep', 'Sleep', 'Having trouble getting to sleep', 'Yes', 'Great! Based on your responses, I would recommend using Sleep Sound H2O. This product combines the calming effects of essential oils with the relaxing properties of magnesium, including lavender, to help you relax and fall asleep more easily.', 'Good', '2024-08-27 18:03:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consultations`
--
ALTER TABLE `consultations`
  ADD PRIMARY KEY (`bookingId`);

--
-- Indexes for table `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`response_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `consultations`
--
ALTER TABLE `consultations`
  MODIFY `bookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `responses`
--
ALTER TABLE `responses`
  MODIFY `response_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
