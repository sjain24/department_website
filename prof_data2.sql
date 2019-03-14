-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 07, 2019 at 02:30 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prof_data2`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add profile box', 1, 'add_profilebox'),
(2, 'Can change profile box', 1, 'change_profilebox'),
(3, 'Can delete profile box', 1, 'delete_profilebox'),
(4, 'Can view profile box', 1, 'view_profilebox'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$mfOURS2OJXNN$snFtqUSBp5XCSggB7WQn7Ki7FeJFlzm0w3bpT7Lket4=', '2019-03-06 13:04:14.410601', 1, 'sid', '', '', '', 1, 1, '2019-03-06 13:03:58.677302');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dept_profilebox`
--

CREATE TABLE `dept_profilebox` (
  `img` varchar(100) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `fax` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `office_address` varchar(500) NOT NULL,
  `phone_no` varchar(50) NOT NULL,
  `research_int1` varchar(50) NOT NULL,
  `research_int2` varchar(50) NOT NULL,
  `research_int3` varchar(50) NOT NULL,
  `research_int4` varchar(50) NOT NULL,
  `research_int5` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept_profilebox`
--

INSERT INTO `dept_profilebox` (`img`, `designation`, `email_id`, `id`, `fax`, `first_name`, `last_name`, `middle_name`, `office_address`, `phone_no`, `research_int1`, `research_int2`, `research_int3`, `research_int4`, `research_int5`) VALUES
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Professor', 'prabin@iitg.ac.in', 97, ' 0361-2582542', 'Prabin', 'Bora', 'Kumar', ' Room No. 205, EEE Department, IIT Guwahati, Guwahati-781039, INDIA.', ' 0361-2582502', 'Image Processing', 'image forensics ', 'Computer Vision', 'physio forensic', 'signal processing'),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Professor', 'samaren@iitg.ac.in', 133, '(361)2582505', 'Samarendra', 'Dandapat', '', 'Room No. 206, EEE Department, IIT Guwahati, Guwahati-781039, INDIA', '(361)2582505', 'Signal Processing', 'Cardiovascular Signal Processing', 'Retinal Image Processing', '', ''),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Professor', 'smajhi@iitg.ac.in', 239, '(361)2582508', 'Somanath', 'Majhi', '', 'Room No. 104, EEE Department, IIT Guwahati, Guwahati-781039, INDIA', '(361)2582508', 'Relay Based Identification and Autotuning', 'Control Systems', 'Control Theory Applications.', '', ''),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Professor', 'chitra@iitg.ac.in ', 259, '0361-2582542, 2690762', 'Chitralekha', 'Mahanta', '', ' Room No. 106, EEE Department, IIT Guwahati, Guwahati-781039, INDIA.', '0361-2582507 (O)', 'Control System Theory and Applications', 'Control of Nonlinear Uncertain Systems', 'Artificial Intelligence based Control', 'Identification and Control of Nonlinear Systems', 'Robust Control'),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Professor', 'harshal@iitg.ac.in', 275, '0361-2582542, 2690762', 'Harshal', 'Nemade', 'B', 'Room No. 207, EEE Department, IIT Guwahati, Guwahati-781039, INDIA', '0361-2582509 (O)', 'Electronic instrumentation', 'Systems design', 'Ultrasonic instrumentation', 'Non-destructive testing', ' EMI/EMC issues'),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Professor', 'ratnajit@iitg.ac.in', 378, '03612582542, 03612690762', 'Ratnajit', ' Bhattacharjee ', '', 'Room No. 204, EEE Department, IITGuwahati Guwahati-781039, India.', '0361-2582503', 'Microwave engineering', 'Microstrip antennaes', 'Wireless communication', 'Electromagnetics', ''),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Professor', 'roypaily@iitg.ac.in', 507, ' 0361-2582542, 2690762', 'Roy', ' Palathinkal', ' Paily', 'Room No. 103, EEE Department, IIT Guwahati, Guwahati-781039, INDIA', '0361-2582512 (O)', 'Devices', 'MEMS and VLSI Circuits/System Design', '', '', ''),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Professor', ' prasanna@iitg.ac.in', 510, '0361-2582542, 2690762', 'S.R.', ' Prasanna', 'Mahadeva', ' Room No. 102, EEE Department, IIT Guwahati, Guwahati-781039, INDIA', ' 0361-2582513 (O)', 'Speech', 'Signal processing', '', '', ''),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Professor', 'krs@iitg.ac.in', 567, ' 0361-2582542, 2690762', 'Kshetrimayum', ' Singh', 'Rakhesh', ' Room No. 203, EEE Department, IIT Guwahati, Guwahati-781039, INDIA', ' 0361-2582514', 'Antennas', 'Microwaves and Communications ', 'Electromagnetic Band Gap', ' Filters', 'Metamaterials'),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Professor & Head of the Department', 'rsinha@iitg.ac.in', 612, '0361-2582542 , 0361-2690762', 'Rohit ', 'Sinha', '', ' Room No. 208, EEE Dept., IIT Guwahati & HOD office ', '0361-2582506', 'Speech and Audio Processing', 'Speech Recognition', ' Signal Processing', '', ''),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Associate Professor', 'rajesh@iitg.ac.in', 616, '0361-2582542', 'Alentattil', 'Rajesh', '', 'Room No. 301, EEE Department, IIT Guwahati, Guwahati-781039, INDIA.', '0361-258-2519', 'Coding Theory', 'Information Theory', '', '', ''),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Associate Professor', 'k.karthik@iitg.ac.in', 665, ' 0361-2582542', 'Karthik', 'Kannan', '', 'Room No. 202, EEE Department, IIT Guwahati,INDIA', '9957215409', 'Privacy preserving analysis and computation', 'Face Anti-spoofing', 'Biometric hashing', 'Transparent and Soft encryption algorithms', 'Non-perfect secret sharing schemes and application'),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Professor', ' rafiahamed@iitg.ac.in', 695, ' 0361-2582542, 2690762', 'Shaik', 'Ahamed', 'Rafi', ' Room No. 304, EEE Department, IIT Guwahati, Guwahati-781039, INDIA', ' 0361-2582520', 'Adaptive Signal Processing', 'VLSI Signal Processing', 'Biomedical Signal Processing', 'Mobile Communications', ''),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Professor', 'skbose@iitg.ac.in', 744, '0361-258254, 2690762', 'Sanjay', 'Bose', 'Kumar', 'Room No. 004, EEE Department, IIT Guwahati, Guwahati-781039, INDIA.', '0361-2582521', 'Modeling, Simulation and Analysis of Communication', 'Performance of WDM Systems', 'ATM Networks', 'Network Applications', 'Communication & Queueing Related Software Developm'),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Professor', 'mkb@iitg.ac.in', 746, ' 0361-2582542, 2690762', 'Manas', 'Bhuyan', 'Kamal', 'Room No. 002, EEE Department, IIT Guwahati, INDIA', '9435051060', 'Image & Video Processing', 'Computer Vision', 'Machine Learning', 'Human Computer Interactions (HCI)', 'Virtual Reality & Augmented Reality'),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Associate Professor', 'indranik@iitg.ac.in', 765, '0361-2582542', 'Indrani', 'Kar', '', 'Room No. 108,EEE Department, IIT Guwahati', '0361-2582524(O)', 'Control Theory and Applications', 'Soft Computing Applications', 'Adaptive Control', 'Intelliget Control of Nonlinear Systems', 'Robotics'),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Professor', 'praveen_kumar@iitg.ac.in ', 781, '0361 2582542', 'Praveen', 'Kumar', '', 'Room No. 001, EEE Department, IIT Guwahati, Guwahati-781039, India.', '0361 2582525', 'Optimization of electrical motors and drives', 'Algorithm development for Multi-objective optimiza', 'Simulation and design of electrical motors and act', 'Analytical modeling of electrical motors for rapid', 'Simulation and Analysis of Hybrid and Electric Veh'),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Associate Professor', 'sonali@iitg.ac.in', 812, '0361-2582542, 2690762', 'Sonali', 'Chouhan', '', 'Room No. 201, EEE Department, IIT Guwahati, Guwahati-781039, INDIA.', '0361-2582522', 'Coding Theory', 'Wireless Sensor Networks', 'Wireless Communication', '', ''),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Associate Professor', 'tonyj@iitg.ac.in', 839, '0361-2582542', 'Tony', 'Jacob', '', 'Room No. 105, EEE Department, IIT Guwahati, Guwahati-781039, INDIA.', '0361-258-2527', 'Statistical Signal Processing', 'Information Theory', 'Image/ Video Processing', 'Pattern recognition', 'Machine Learning.'),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Associate Professor', 'ptri@iitg.ac.in', 840, '0361-2582542', 'Praveen', 'Tripathy', '', 'Room No. 007, EEE Department, IIT Guwahati, Guwahati-781039, INDIA.', '0361-258-2528', 'Power system dynamics & stability studies', 'Wide Area Monitoring & Control of Power System', 'Optimal power dispatch and state estimation', 'Security analysis and control', 'Energy management system and distribution automati'),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Assistant Professor', 'bkrai@iitg.ac.in', 858, '0361-2582542,2690762 ', 'Brijesh', 'Rai', 'Kumar', 'Room No. 307, EEE Department, IIT Guwahati, Guwahati-781039, INDIA.', '0361-2582518', 'Communication Systems', 'Coding Theory ', '', '', ''),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Associate Professor', 'sknayak@iitg.ac.in', 871, '0361-2582542', 'Sisir', 'Nayak', 'Kumar', 'Room No. 006, EEE Department, IIT Guwahati, Guwahati-781039, INDIA. ', '0361-2582530 (O)', 'Power flow analysis in AC and DC traction power sy', 'Electromagnetics', 'Lightning interaction with an electrical and mecha', 'High Voltage Engineering', ''),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Assistant Professor', 'sonkar@iitg.ac.in ', 875, '0361-2582542 ', 'Ramesh ', 'Sonkar', 'Kumar ', 'Room No,005,EEE Department,IIT Guwahati,Guwahati,781039,INDIA', '0361 2582535', 'Silicon and Integrated Photonics', 'Fiber lasers Optoelectronics Device Characterizati', 'Microelectronics and III-V Compound Semiconductors', 'Photonics Integrated Circuits', 'Fiber Optics Communication'),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Associate Professor', 'trivedi@iitg.ac.in', 883, '0361-2582542, 2690762', 'Gaurav', 'Trivedi', '', 'Room No. 008, EEE Department, IIT Guwahati', '0361-2582536 ', 'Circuit Simulation (Analog & Digital) and VLSI CAD', 'High Performance Computing', 'Computational Biology and Solar Photovoltaics', '', ''),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Assistant Professor', 'dass@iitg.ac.in ', 931, '0361-2582542 ', 'Smarajit ', 'Das', '', ' Room No,107,EEE Department, IIT Guwahati, Guwahati,781039, INDIA ', '0361 2582515', 'Information theory', 'Error correcting codes', '', '', ''),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Assistant Professor', 'srinikris@iitg.ac.in', 934, '0361-2582542 ', 'Srinivasan ', 'Krishnaswamy', '', ' Room No,302,EEE Department, IIT Guwahati Guwahati,781039, INDIA', '0361 2582526 ', 'Control Systems', 'Cryptography', '', '', ''),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Assistant Professor', 'pguha@iitg.ac.in ', 945, ' 0361-2582542 ', 'Prithwijit', '\n\n        Guha', '', 'Room No. 101, EEE Department, IITG', ' 0361 2583452', 'Computer Vision ', 'Pattern Recognition', 'Signal Processing', 'Robotics', ''),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Assistant Professer', 'kalpana.dhaka@iitg.ac.in ', 972, '0361-2582542 ', 'Kalpana', 'Dhaka', '', 'Room No. 305, EEE Department, IIT Guwahati, Guwahati-781039, INDIA.', '0361 2583456 (O)', 'Channel modeling and resource allocation for wirel', 'Cooperative communications', 'Mutihop Relaying and Multicasting in wireless netw', '', ''),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Associate Professor', 'sureshsundaram@iitg.ac.in', 978, '0361-2582542 ', 'Suresh ', 'Sundaram', '', 'Room No,308, EEE Department,IIT Guwahati,781039,INDIA', '0361 2583458', 'Pattern recognition', 'Image Processing,Video Processing', 'Computer Vision', '', ''),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Assistant Professer', 'ravindranath@iitg.ac.in', 994, '0361-2582542 (O)', 'Ravindranath', 'Adda', '', 'Room No. 110, New Extension Block, EEE Department, IIT Guwahati, Guwahati-781039, INDIA.', '0361-2583461 (O)', 'Power Electronics', 'Distributed Generation', 'Power Quality', '', ''),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Assistant Professor', 'nallam@iitg.ac.in', 995, '0361 2582542', 'Nagarjuna ', 'Nallam', '', 'Room No. 211, New Extension Block, EEE Department, IIT Guwahati, Guwahati-781039, INDIA', ' 0361 2583462', 'Analog and RF integrated circuits', 'CMOS radios', '', '', ''),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Assistant Professor', 'snath@iitg.ac.in', 1006, '0361 2582542 ', 'Shabari', 'Nath', '', 'Room No. 214, New Extension Block, EEE Department, IIT Guwahati, Guwahati-781039, INDIA', ' 0361 2583463', 'Power Electronics', 'Application of Power Electronics to Power Systems', '', '', ''),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Assistant professor', 'h.s.shekhawat@iitg.ac.in', 1089, '0361-2582542', 'Hanumant', 'Shekhawat', 'Singh', 'Room No. 111, New Extension Block, EEE Department, IIT Guwahati, Guwahati-781039,', '0361-258-3465', 'System Theory', 'Applied Mathematics & Signal Processing', '', '', ''),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Assistant professor', 'sganguli@iitg.ac.in', 1120, '0361-2582542', 'Sanjib ', 'Ganguly', '', 'Room No. 112, New Extension Block,EEE Department, IIT Guwahati, Guwahati-781039, INDIA.', '0361-258-3466', 'Power distribution system planning and optimizatio', 'Distributed generation', 'Custom power devices', 'Evolutionary algorithms', 'Multi-objective optimization'),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Assistant Professor', 'chandank@iitg.ac.in', 1137, '0361-2582542 ', 'Chandan', 'Kumar', '', 'Room No. 212, New Extension Block, EEE Department, IIT Guwahati, Guwahati-781039', ' 0361 2583467 (O)', 'Smart Transformer Application in Power System', 'DC and AC Microgrid', 'Smart Transformer: Control and Applications', 'Electric Vehicles and Battery Energy Storage Syste', 'Power Quality, HVDC and FACTS'),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Assistant Professor', 'aruntej@iitg.ac.in', 1141, '0361-2582542', 'Arun', 'Mallajosyula', 'Tej', 'Room No. 215, New Extension Block, EEE Department, IIT Guwahati, Guwahati-781039, India', '0361-2583469', 'Photovoltaics', 'Large Area Electronics', 'Organic and Organic-Inorganic Hybrid Semiconductor', 'Layered 2D Materials', ''),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Assistant Professor', 'ribhufec@iitg.ac.in', 1212, '0361-2582542', 'Ribhu ', 'Chopra', '', 'Room No. 113, New Extension Block, EEE Department, IIT Guwahati, Guwahati-781039, India', '0361-2583475', 'Signal Processing for Wireless Communication', 'MIMO Systems', 'Adaptive and Statistical Signal Processing', '', ''),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Assistant Professor', 'deb.sikdar@iitg.ac.in', 1218, '0361-2582542', 'Debabrata', 'Sikdar', '', 'Room No. 213, New Extension Block, EEE Department, IIT Guwahati, Guwahati-781039, India.', '361-2583468', 'Plasmonics and metamaterials', 'Light–matter interaction in nanoscale', 'Smart devices of plasmonic metals and semiconducto', 'Directional scattering by dielectric nanoantennas,', 'Plasmon-assisted optical switching, wideband absor'),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Assistant Professor', 'rishi.kiitg.ac.in', 1237, '', 'Rishikesh', 'Kulkarni', 'Dilip', ' Room No. 311, New Extension Block, EEE Department, IIT Guwahati, Guwahati-781039, India.', ' 0361-258-3472', 'Optical Metrology', 'Digital Optical Signal Processing', 'Digital Holography', 'Speckle Interferometry', 'Fringe Projection Profilometry'),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Assistant Professor', 'mahimaarrawatia@iitg.ac.in', 1238, '', 'Mahima', 'Arrawatia', '', 'Room No. 312, New Extension Block, EEE Department, IIT Guwahati, Guwahati-781039, India.', '0361-258-3471 (Office) ', 'Energy Harvesting', 'RF Circuit Design', 'Microstrip Antennas', '', ''),
('photo-not-available-clipart-1_HKC4rj9.jpg', 'Assistant Professor', 'salilkashyap@iitg.ac.in', 1242, '', 'Salil', 'Kashyap', '', 'Room No. 313, New Extension Block, EEE Department, IIT Guwahati, Guwahati-781039, India.', '0361-258-3473 (Office)', 'Wireless communications and signal processing', 'Massive MIMO (a leading 5G wireless technology)', 'Algorithm design for wireless systems and its perf', 'Green communications', 'Cognitive radio');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-03-06 13:06:21.144876', '4', 'Professor1', 1, '[{\"added\": {}}]', 1, 1),
(2, '2019-03-06 13:06:26.223527', '4', 'Professor1', 2, '[]', 1, 1),
(3, '2019-03-06 13:07:07.640401', '5', 'prof2', 1, '[{\"added\": {}}]', 1, 1),
(4, '2019-03-06 13:08:19.514298', '6', 'Prof3', 1, '[{\"added\": {}}]', 1, 1),
(5, '2019-03-06 15:46:09.033181', '0', 'Professor1', 1, '[{\"added\": {}}]', 1, 1),
(6, '2019-03-06 15:46:43.386650', '0', 'Professor2', 1, '[{\"added\": {}}]', 1, 1),
(7, '2019-03-07 06:55:18.945191', '1242', 'Salil', 2, '[]', 1, 1),
(8, '2019-03-07 06:56:11.188733', '1', 'Professor1', 1, '[{\"added\": {}}]', 1, 1),
(9, '2019-03-07 13:14:28.631604', '839', 'Tony', 2, '[{\"changed\": {\"fields\": [\"research_int3\"]}}]', 1, 1),
(10, '2019-03-07 13:14:51.489234', '1', 'Professor1', 3, '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(2, 'admin', 'logentry'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(6, 'contenttypes', 'contenttype'),
(1, 'dept', 'profilebox'),
(7, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-03-06 12:59:50.224787'),
(2, 'auth', '0001_initial', '2019-03-06 13:00:11.724271'),
(3, 'admin', '0001_initial', '2019-03-06 13:00:17.278459'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-03-06 13:00:17.407335'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-03-06 13:00:17.525245'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-03-06 13:00:21.852654'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-03-06 13:00:23.261068'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-03-06 13:00:29.602984'),
(9, 'auth', '0004_alter_user_username_opts', '2019-03-06 13:00:29.716125'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-03-06 13:00:31.165940'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-03-06 13:00:31.282563'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-03-06 13:00:31.468629'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-03-06 13:00:33.451220'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-03-06 13:00:36.128003'),
(15, 'dept', '0001_initial', '2019-03-06 13:00:37.452605'),
(16, 'dept', '0002_auto_20190306_1259', '2019-03-06 13:01:07.443748'),
(17, 'sessions', '0001_initial', '2019-03-06 13:01:09.816103');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('oiqguzu3nd57jnnj42ontmik11sshhjz', 'M2Q2NTc4ODU3YzliOWM1NDI0MmMwMWJlNDFiNmJiNTI3NmUwMWI3ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZmM2OWEzYzBlYjg3NjY2MzIwYjM2OTk0ODE1ZDE5ZWVlZDc1YmY4In0=', '2019-03-20 13:04:14.477554');

-- --------------------------------------------------------

--
-- Table structure for table `TABLE 1`
--

CREATE TABLE `TABLE 1` (
  `First name` varchar(12) NOT NULL,
  `middle name` varchar(8) DEFAULT NULL,
  `last name` varchar(15) DEFAULT NULL,
  `Employee ID` int(4) NOT NULL,
  `designation` varchar(34) NOT NULL,
  `phone no` varchar(23) DEFAULT NULL,
  `fax` varchar(27) DEFAULT NULL,
  `email id` varchar(26) NOT NULL,
  `office address` varchar(89) NOT NULL,
  `research interest 1` varchar(67) NOT NULL,
  `research interest 2` varchar(111) DEFAULT NULL,
  `research interest 3` varchar(91) DEFAULT NULL,
  `research interest 4` varchar(82) DEFAULT NULL,
  `research interest 5` varchar(110) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLE 1`
--

INSERT INTO `TABLE 1` (`First name`, `middle name`, `last name`, `Employee ID`, `designation`, `phone no`, `fax`, `email id`, `office address`, `research interest 1`, `research interest 2`, `research interest 3`, `research interest 4`, `research interest 5`) VALUES
('Prabin', 'Kumar', 'Bora', 97, 'Professor', ' 0361-2582502', ' 0361-2582542', 'prabin@iitg.ac.in', ' Room No. 205, EEE Department, IIT Guwahati, Guwahati-781039, INDIA.', 'Image Processing', 'image forensics ', 'Computer Vision', 'physio forensic', 'signal processing'),
('Samarendra', '', 'Dandapat', 133, 'Professor', '(361)2582505', '(361)2582505', 'samaren@iitg.ac.in', 'Room No. 206, EEE Department, IIT Guwahati, Guwahati-781039, INDIA', 'Signal Processing', 'Cardiovascular Signal Processing', 'Retinal Image Processing', '', ''),
('Somanath', '', 'Majhi', 239, 'Professor', '(361)2582508', '(361)2582508', 'smajhi@iitg.ac.in', 'Room No. 104, EEE Department, IIT Guwahati, Guwahati-781039, INDIA', 'Relay Based Identification and Autotuning', 'Control Systems', 'Control Theory Applications.', '', ''),
('Chitralekha', '', 'Mahanta', 259, 'Professor', '0361-2582507 (O)', '0361-2582542, 2690762', 'chitra@iitg.ac.in ', ' Room No. 106, EEE Department, IIT Guwahati, Guwahati-781039, INDIA.', 'Control System Theory and Applications', 'Control of Nonlinear Uncertain Systems', 'Artificial Intelligence based Control', 'Identification and Control of Nonlinear Systems', 'Robust Control'),
('Harshal', 'B', 'Nemade', 275, 'Professor', '0361-2582509 (O)', '0361-2582542, 2690762', 'harshal@iitg.ac.in', 'Room No. 207, EEE Department, IIT Guwahati, Guwahati-781039, INDIA', 'Electronic instrumentation', 'Systems design', 'Ultrasonic instrumentation', 'Non-destructive testing', ' EMI/EMC issues'),
('Ratnajit', '', ' Bhattacharjee ', 378, 'Professor', '0361-2582503', '03612582542, 03612690762', 'ratnajit@iitg.ac.in', 'Room No. 204, EEE Department, IITGuwahati Guwahati-781039, India.', 'Microwave engineering', 'Microstrip antennaes', 'Wireless communication', 'Electromagnetics', ''),
('Roy', ' Paily', ' Palathinkal', 507, 'Professor', '0361-2582512 (O)', ' 0361-2582542, 2690762', 'roypaily@iitg.ac.in', 'Room No. 103, EEE Department, IIT Guwahati, Guwahati-781039, INDIA', 'Devices', 'MEMS and VLSI Circuits/System Design', '', '', ''),
('S.R.', 'Mahadeva', ' Prasanna', 510, 'Professor', ' 0361-2582513 (O)', '0361-2582542, 2690762', ' prasanna@iitg.ac.in', ' Room No. 102, EEE Department, IIT Guwahati, Guwahati-781039, INDIA', 'Speech', 'Signal processing', '', '', ''),
('Kshetrimayum', 'Rakhesh', ' Singh', 567, 'Professor', ' 0361-2582514', ' 0361-2582542, 2690762', 'krs@iitg.ac.in', ' Room No. 203, EEE Department, IIT Guwahati, Guwahati-781039, INDIA', 'Antennas', 'Microwaves and Communications ', 'Electromagnetic Band Gap', ' Filters', 'Metamaterials'),
('Rohit ', '', 'Sinha', 612, 'Professor & Head of the Department', '0361-2582506', '0361-2582542 , 0361-2690762', 'rsinha@iitg.ac.in', ' Room No. 208, EEE Dept., IIT Guwahati & HOD office ', 'Speech and Audio Processing', 'Speech Recognition', ' Signal Processing', '', ''),
('Alentattil', '', 'Rajesh', 616, 'Associate Professor', '0361-258-2519', '0361-2582542', 'rajesh@iitg.ac.in', 'Room No. 301, EEE Department, IIT Guwahati, Guwahati-781039, INDIA.', 'Coding Theory', 'Information Theory', '', '', ''),
('Karthik', '', 'Kannan', 665, 'Associate Professor', '9957215409', ' 0361-2582542', 'k.karthik@iitg.ac.in', 'Room No. 202, EEE Department, IIT Guwahati,INDIA', 'Privacy preserving analysis and computation', 'Face Anti-spoofing', 'Biometric hashing', 'Transparent and Soft encryption algorithms', 'Non-perfect secret sharing schemes and applications'),
('Shaik', 'Rafi', 'Ahamed', 695, 'Professor', ' 0361-2582520', ' 0361-2582542, 2690762', ' rafiahamed@iitg.ac.in', ' Room No. 304, EEE Department, IIT Guwahati, Guwahati-781039, INDIA', 'Adaptive Signal Processing', 'VLSI Signal Processing', 'Biomedical Signal Processing', 'Mobile Communications', ''),
('Sanjay', 'Kumar', 'Bose', 744, 'Professor', '0361-2582521', '0361-258254, 2690762', 'skbose@iitg.ac.in', 'Room No. 004, EEE Department, IIT Guwahati, Guwahati-781039, INDIA.', 'Modeling, Simulation and Analysis of Communication Networks', 'Performance of WDM Systems', 'ATM Networks', 'Network Applications', 'Communication & Queueing Related Software Development'),
('Manas', 'Kamal', 'Bhuyan', 746, 'Professor', '9435051060', ' 0361-2582542, 2690762', 'mkb@iitg.ac.in', 'Room No. 002, EEE Department, IIT Guwahati, INDIA', 'Image & Video Processing', 'Computer Vision', 'Machine Learning', 'Human Computer Interactions (HCI)', 'Virtual Reality & Augmented Reality'),
('Indrani', '', 'Kar', 765, 'Associate Professor', '0361-2582524(O)', '0361-2582542', 'indranik@iitg.ac.in', 'Room No. 108,EEE Department, IIT Guwahati', 'Control Theory and Applications', 'Soft Computing Applications', 'Adaptive Control', 'Intelliget Control of Nonlinear Systems', 'Robotics'),
('Praveen', '', 'Kumar', 781, 'Professor', '0361 2582525', '0361 2582542', 'praveen_kumar@iitg.ac.in ', 'Room No. 001, EEE Department, IIT Guwahati, Guwahati-781039, India.', 'Optimization of electrical motors and drives', 'Algorithm development for Multi-objective optimization and multicriteria decision making in engineering systems', 'Simulation and design of electrical motors and actuators using Finite Element Methods (FEM)', 'Analytical modeling of electrical motors for rapid simulation', 'Simulation and Analysis of Hybrid and Electric Vehicles'),
('Sonali', '', 'Chouhan', 812, 'Associate Professor', '0361-2582522', '0361-2582542, 2690762', 'sonali@iitg.ac.in', 'Room No. 201, EEE Department, IIT Guwahati, Guwahati-781039, INDIA.', 'Coding Theory', 'Wireless Sensor Networks', 'Wireless Communication', '', ''),
('Tony', '', 'Jacob', 839, 'Associate Professor', '0361-258-2527', '0361-2582542', 'tonyj@iitg.ac.in', 'Room No. 105, EEE Department, IIT Guwahati, Guwahati-781039, INDIA.', 'Statistical Signal Processing', 'Information Theory', ' Image/ Video Processing', 'Pattern recognition', 'Machine Learning.'),
('Praveen', '', 'Tripathy', 840, 'Associate Professor', '0361-258-2528', '0361-2582542', 'ptri@iitg.ac.in', 'Room No. 007, EEE Department, IIT Guwahati, Guwahati-781039, INDIA.', 'Power system dynamics & stability studies', 'Wide Area Monitoring & Control of Power System', 'Optimal power dispatch and state estimation', 'Security analysis and control', 'Energy management system and distribution automation.'),
('Brijesh', 'Kumar', 'Rai', 858, 'Assistant Professor', '0361-2582518', '0361-2582542,2690762 ', 'bkrai@iitg.ac.in', 'Room No. 307, EEE Department, IIT Guwahati, Guwahati-781039, INDIA.', 'Communication Systems', 'Coding Theory ', '', '', ''),
('Sisir', 'Kumar', 'Nayak', 871, 'Associate Professor', '0361-2582530 (O)', '0361-2582542', 'sknayak@iitg.ac.in', 'Room No. 006, EEE Department, IIT Guwahati, Guwahati-781039, INDIA. ', 'Power flow analysis in AC and DC traction power system', 'Electromagnetics', 'Lightning interaction with an electrical and mechanical system', 'High Voltage Engineering', ''),
('Ramesh ', 'Kumar ', 'Sonkar', 875, 'Assistant Professor', '0361 2582535', '0361-2582542 ', 'sonkar@iitg.ac.in ', 'Room No,005,EEE Department,IIT Guwahati,Guwahati,781039,INDIA', 'Silicon and Integrated Photonics', 'Fiber lasers Optoelectronics Device Characterization and Fabrication', 'Microelectronics and III-V Compound Semiconductors', 'Photonics Integrated Circuits', 'Fiber Optics Communication'),
('Gaurav', '', 'Trivedi', 883, 'Associate Professor', '0361-2582536 ', '0361-2582542, 2690762', 'trivedi@iitg.ac.in', 'Room No. 008, EEE Department, IIT Guwahati', 'Circuit Simulation (Analog & Digital) and VLSI CAD', 'High Performance Computing', 'Computational Biology and Solar Photovoltaics', '', ''),
('Smarajit ', '', 'Das', 931, 'Assistant Professor', '0361 2582515', '0361-2582542 ', 'dass@iitg.ac.in ', ' Room No,107,EEE Department, IIT Guwahati, Guwahati,781039, INDIA ', 'Information theory', 'Error correcting codes', '', '', ''),
('Srinivasan ', '', 'Krishnaswamy', 934, 'Assistant Professor', '0361 2582526 ', '0361-2582542 ', 'srinikris@iitg.ac.in', ' Room No,302,EEE Department, IIT Guwahati Guwahati,781039, INDIA', 'Control Systems', 'Cryptography', '', '', ''),
('Prithwijit', '', '\n\n        Guha', 945, 'Assistant Professor', ' 0361 2583452', ' 0361-2582542 ', 'pguha@iitg.ac.in ', 'Room No. 101, EEE Department, IITG', 'Computer Vision ', 'Pattern Recognition', 'Signal Processing', 'Robotics', ''),
('Kalpana', '', 'Dhaka', 972, 'Assistant Professer', '0361 2583456 (O)', '0361-2582542 ', 'kalpana.dhaka@iitg.ac.in ', 'Room No. 305, EEE Department, IIT Guwahati, Guwahati-781039, INDIA.', 'Channel modeling and resource allocation for wireless relay systems', 'Cooperative communications', 'Mutihop Relaying and Multicasting in wireless networks.', '', ''),
('Suresh ', '', 'Sundaram', 978, 'Associate Professor', '0361 2583458', '0361-2582542 ', 'sureshsundaram@iitg.ac.in', 'Room No,308, EEE Department,IIT Guwahati,781039,INDIA', 'Pattern recognition', 'Image Processing,Video Processing', 'Computer Vision', '', ''),
('Ravindranath', '', 'Adda', 994, 'Assistant Professer', '0361-2583461 (O)', '0361-2582542 (O)', 'ravindranath@iitg.ac.in', 'Room No. 110, New Extension Block, EEE Department, IIT Guwahati, Guwahati-781039, INDIA.', 'Power Electronics', 'Distributed Generation', 'Power Quality', '', ''),
('Nagarjuna ', '', 'Nallam', 995, 'Assistant Professor', ' 0361 2583462', '0361 2582542', 'nallam@iitg.ac.in', 'Room No. 211, New Extension Block, EEE Department, IIT Guwahati, Guwahati-781039, INDIA', 'Analog and RF integrated circuits', 'CMOS radios', '', '', ''),
('Shabari', '', 'Nath', 1006, 'Assistant Professor', ' 0361 2583463', '0361 2582542 ', 'snath@iitg.ac.in', 'Room No. 214, New Extension Block, EEE Department, IIT Guwahati, Guwahati-781039, INDIA', 'Power Electronics', 'Application of Power Electronics to Power Systems', '', '', ''),
('Hanumant', 'Singh', 'Shekhawat', 1089, 'Assistant professor', '0361-258-3465', '0361-2582542', 'h.s.shekhawat@iitg.ac.in', 'Room No. 111, New Extension Block, EEE Department, IIT Guwahati, Guwahati-781039,', 'System Theory', 'Applied Mathematics & Signal Processing', '', '', ''),
('Sanjib ', '', 'Ganguly', 1120, 'Assistant professor', '0361-258-3466', '0361-2582542', 'sganguli@iitg.ac.in', 'Room No. 112, New Extension Block,EEE Department, IIT Guwahati, Guwahati-781039, INDIA.', 'Power distribution system planning and optimization', 'Distributed generation', 'Custom power devices', 'Evolutionary algorithms', 'Multi-objective optimization'),
('Chandan', '', 'Kumar', 1137, 'Assistant Professor', ' 0361 2583467 (O)', '0361-2582542 ', 'chandank@iitg.ac.in', 'Room No. 212, New Extension Block, EEE Department, IIT Guwahati, Guwahati-781039', 'Smart Transformer Application in Power System', 'DC and AC Microgrid', 'Smart Transformer: Control and Applications', 'Electric Vehicles and Battery Energy Storage System', 'Power Quality, HVDC and FACTS'),
('Arun', 'Tej', 'Mallajosyula', 1141, 'Assistant Professor', '0361-2583469', '0361-2582542', 'aruntej@iitg.ac.in', 'Room No. 215, New Extension Block, EEE Department, IIT Guwahati, Guwahati-781039, India', 'Photovoltaics', 'Large Area Electronics', 'Organic and Organic-Inorganic Hybrid Semiconductor Devices', 'Layered 2D Materials', ''),
('Ribhu ', '', 'Chopra', 1212, 'Assistant Professor', '0361-2583475', '0361-2582542', 'ribhufec@iitg.ac.in', 'Room No. 113, New Extension Block, EEE Department, IIT Guwahati, Guwahati-781039, India', 'Signal Processing for Wireless Communication', 'MIMO Systems', 'Adaptive and Statistical Signal Processing', '', ''),
('Debabrata', '', 'Sikdar', 1218, 'Assistant Professor', '361-2583468', '0361-2582542', 'deb.sikdar@iitg.ac.in', 'Room No. 213, New Extension Block, EEE Department, IIT Guwahati, Guwahati-781039, India.', 'Plasmonics and metamaterials', 'Light–matter interaction in nanoscale', 'Smart devices of plasmonic metals and semiconductors', 'Directional scattering by dielectric nanoantennas, alternative plasmonic materials', 'Plasmon-assisted optical switching, wideband absorption, ultrasensitive detection, tunable optical devices etc'),
('Rishikesh', 'Dilip', 'Kulkarni', 1237, 'Assistant Professor', ' 0361-258-3472', '', 'rishi.kiitg.ac.in', ' Room No. 311, New Extension Block, EEE Department, IIT Guwahati, Guwahati-781039, India.', 'Optical Metrology', 'Digital Optical Signal Processing', 'Digital Holography', 'Speckle Interferometry', 'Fringe Projection Profilometry'),
('Mahima', '', 'Arrawatia', 1238, 'Assistant Professor', '0361-258-3471 (Office) ', '', 'mahimaarrawatia@iitg.ac.in', 'Room No. 312, New Extension Block, EEE Department, IIT Guwahati, Guwahati-781039, India.', 'Energy Harvesting', 'RF Circuit Design', 'Microstrip Antennas', '', ''),
('Salil', '', 'Kashyap', 1242, 'Assistant Professor', '0361-258-3473 (Office)', '', 'salilkashyap@iitg.ac.in', 'Room No. 313, New Extension Block, EEE Department, IIT Guwahati, Guwahati-781039, India.', 'Wireless communications and signal processing', 'Massive MIMO (a leading 5G wireless technology)', 'Algorithm design for wireless systems and its performance analysis', 'Green communications', 'Cognitive radio');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `dept_profilebox`
--
ALTER TABLE `dept_profilebox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `TABLE 1`
--
ALTER TABLE `TABLE 1`
  ADD PRIMARY KEY (`Employee ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
