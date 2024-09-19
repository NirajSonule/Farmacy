-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2023 at 12:23 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `name`, `type`, `icon`) VALUES
(1, 'Power Backup', 'Building', 'powerbackup'),
(2, 'Prayer Room', 'Building', 'prayerroom'),
(3, 'Elevator', 'Building', 'elevator'),
(4, 'Water Purifier', 'Common Area', 'waterpurifier'),
(5, 'ATM', 'Common Area', 'atm'),
(6, 'Pharmacy', 'Common Area', 'pharmacy'),
(7, 'MRI', 'Radiology', 'mri'),
(8, 'X-Ray', 'Radiology', 'xray'),
(9, 'CT-Scan', 'Radiology', 'ctscan'),
(10, 'Ultrasound', 'Radiology', 'ultrasound'),
(11, 'E.C.G', 'Radiology', 'ecg'),
(12, 'Cardiology', 'Departments', 'cardiology'),
(13, 'Pediatrics', 'Departments', 'pediatrics'),
(14, 'Orthopedics', 'Departments', 'orthopedics'),
(15, 'E.N.T Specialist', 'Departments', 'ent'),
(16, 'Gynecology', 'Departments', 'gynecology');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `quantity` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `quantity`) VALUES
(10, 2, 'Pringles Original Salted', '115', 5),
(11, 2, 'Candid-B Cream', '152', 1),
(12, 2, 'Pringles Sour Cream & Onion Fl', '115', 1),
(13, 2, 'Sunfeast Moms Magic Biscuit', '80', 1),
(14, 2, 'Parachute 100% Pure Coconut Oi', '270', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`) VALUES
(1, 'Mumbai'),
(2, 'Hyderabad'),
(3, 'Delhi'),
(4, 'Banglore'),
(5, 'Chennai');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int(11) NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `city_id`, `name`, `address`, `description`, `price`) VALUES
(1, 1, 'Citicare Hospital', '146, Krishna Bhavan, Dr Viegas Street, Bandra', 'Citicare Hospital is a state-of-the-art medical facility that provides exceptional healthcare services to patients. With a team of highly skilled doctors, nurses, and support staff, the hospital offers a wide range of medical specialties and treatments. From advanced surgical procedures to comprehensive diagnostic services, Citicare Hospital is committed to delivering top-quality care to its patients.', 2000),
(2, 1, 'Global Hospital', '146, Sun & Sea Apts, Juhu Tara Road, Santacruz', 'Introducing the Global Hospital, a renowned healthcare facility dedicated to providing world-class medical services. With state-of-the-art infrastructure, advanced technology, and a team of highly skilled doctors and specialists, it is committed to delivering exceptional patient care. Offering a comprehensive range of medical treatments and procedures, the Global Hospital ensures the utmost comfort and safety for its patients.', 3000),
(3, 1, 'Artemis Hospital', 'Ramdhar Bldg, Gokhale Rd, Naupada, Near Usha Kiran Hotel, Parel', 'Artemis Hospital is a renowned healthcare facility that offers a wide range of medical services. With state-of-the-art infrastructure and a team of highly skilled doctors, the hospital provides exceptional care to patients. From advanced diagnostic procedures to specialized treatments, Artemis Hospital ensures that patients receive the best possible medical attention. With a focus on patient comfort and safety, the hospital strives to deliver excellent healthcare services.', 2500),
(4, 1, 'Medanta Hospital', '114, Niraj Industrial Estate, Mahakali Caves Road, Chakala(midc), Andheri', 'Medanta hospital is a world-class medical facility renowned for its comprehensive healthcare services. Located in Mumbai, India, it boasts state-of-the-art infrastructure and cutting-edge technology to provide excellent medical care to patients. With a team of highly skilled doctors and medical professionals across various specialties, Medanta offers a wide range of treatments and procedures including cardiology, oncology, neurology, orthopedics, and more.', 3500),
(5, 1, 'Apollo Hospital', '2nd Floor Faiz E Edrous, 371/73 Narshi Natha Street, Kurla', 'At Apollo Hospital, we understand that compassionate care goes hand in hand with medical expertise. Our nurturing environment ensures that every patient receives personalized attention, supporting them throughout their healthcare journey. From our comfortable patient rooms to our exceptional nursing staff, every aspect of our facility is designed to provide comfort, ease, and peace of mind to our valued patients.', 1500),
(6, 2, 'MGM Hospital', '1208, Pancharatna, M Paramanand Marg, Vashi', 'MGM Hospital is a state-of-the-art medical facility that provides exceptional healthcare services to patients. With a team of highly skilled doctors, nurses, and support staff, the hospital offers a wide range of medical specialties and treatments. From advanced surgical procedures to comprehensive diagnostic services, Citicare Hospital is committed to delivering top-quality care to its patients.', 1000),
(7, 2, 'Kokilaben Ambani Hospital', '492, Maulana Azad Road, Ladi Bazar, Panvel', 'Introducing the Kokilaben Ambani Hospital, a renowned healthcare facility dedicated to providing world-class medical services. With state-of-the-art infrastructure, advanced technology, and a team of highly skilled doctors and specialists, it is committed to delivering exceptional patient care. Offering a comprehensive range of medical treatments and procedures, the Global Hospital ensures the utmost comfort and safety for its patients.', 1200),
(8, 2, 'MITR Hospital', '160, Kamal Kunj, Road No.24b, Belapur', 'MITR Hospital is a renowned healthcare facility that offers a wide range of medical services. With state-of-the-art infrastructure and a team of highly skilled doctors, the hospital provides exceptional care to patients. From advanced diagnostic procedures to specialized treatments, Artemis Hospital ensures that patients receive the best possible medical attention. With a focus on patient comfort and safety, the hospital strives to deliver excellent healthcare services.', 3000),
(9, 2, 'Indravati Hospital', 'F-6, Gr Floor, Shreepal Indl Est, Sv Road, Oshiwara Bridge, Navi-Mumbai', 'Indravati hospital is a world-class medical facility renowned for its comprehensive healthcare services. Located in Mumbai, India, it boasts state-of-the-art infrastructure and cutting-edge technology to provide excellent medical care to patients. With a team of highly skilled doctors and medical professionals across various specialties, Medanta offers a wide range of treatments and procedures including cardiology, oncology, neurology, orthopedics, and more.', 2200),
(10, 2, 'D.Y Patil Hospital', 'Admn Bldg, Sheva, J N P T, Navi Mumbai', 'At D.Y Patil Hospital, we understand that compassionate care goes hand in hand with medical expertise. Our nurturing environment ensures that every patient receives personalized attention, supporting them throughout their healthcare journey. From our comfortable patient rooms to our exceptional nursing staff, every aspect of our facility is designed to provide comfort, ease, and peace of mind to our valued patients.', 1300),
(11, 3, 'Park Hospital', '2933, Hamilton Road, Kashmere Gate, Delhi', 'Park Hospital is a state-of-the-art medical facility that provides exceptional healthcare services to patients. With a team of highly skilled doctors, nurses, and support staff, the hospital offers a wide range of medical specialties and treatments. From advanced surgical procedures to comprehensive diagnostic services, Citicare Hospital is committed to delivering top-quality care to its patients.', 1600),
(12, 3, 'Indraprastha Hospital', 'Ug-1, Thapar House Comm Centre, Gulmohar Enclave, Delhi', 'Introducing the Indraprastha Hospital, a renowned healthcare facility dedicated to providing world-class medical services. With state-of-the-art infrastructure, advanced technology, and a team of highly skilled doctors and specialists, it is committed to delivering exceptional patient care. Offering a comprehensive range of medical treatments and procedures, the Global Hospital ensures the utmost comfort and safety for its patients.', 1800),
(13, 3, 'Primus Super Hospital', 'E-82 A, Part 1, Greater Kailash, Delhi', 'Primus Super Hospital is a renowned healthcare facility that offers a wide range of medical services. With state-of-the-art infrastructure and a team of highly skilled doctors, the hospital provides exceptional care to patients. From advanced diagnostic procedures to specialized treatments, Artemis Hospital ensures that patients receive the best possible medical attention. With a focus on patient comfort and safety, the hospital strives to deliver excellent healthcare services.', 2450),
(14, 3, 'Batra Hospital', '9/2464, Beadon Pura, Ajmal Khan Road, Karol Bagh', 'Batra hospital is a world-class medical facility renowned for its comprehensive healthcare services. Located in Mumbai, India, it boasts state-of-the-art infrastructure and cutting-edge technology to provide excellent medical care to patients. With a team of highly skilled doctors and medical professionals across various specialties, Medanta offers a wide range of treatments and procedures including cardiology, oncology, neurology, orthopedics, and more.', 1800),
(15, 3, 'Fortis Hospital', '327, Main Road Indl Area, Burari Village', 'At Fortis Hospital, we understand that compassionate care goes hand in hand with medical expertise. Our nurturing environment ensures that every patient receives personalized attention, supporting them throughout their healthcare journey. From our comfortable patient rooms to our exceptional nursing staff, every aspect of our facility is designed to provide comfort, ease, and peace of mind to our valued patients.', 3100),
(16, 4, 'Manipal Hospital', '4/1, Pr Lane, Behind Khadi Bhavan, S J P Road', 'Mainpal Hospital is a state-of-the-art medical facility that provides exceptional healthcare services to patients. With a team of highly skilled doctors, nurses, and support staff, the hospital offers a wide range of medical specialties and treatments. From advanced surgical procedures to comprehensive diagnostic services, Citicare Hospital is committed to delivering top-quality care to its patients.', 1500),
(17, 4, 'Sparsh Hospital', '302,no 37/2, Chicago Avenue, 3rd Flr, Cunningham Road', 'Introducing the Sparsh Hospital, a renowned healthcare facility dedicated to providing world-class medical services. With state-of-the-art infrastructure, advanced technology, and a team of highly skilled doctors and specialists, it is committed to delivering exceptional patient care. Offering a comprehensive range of medical treatments and procedures, the Global Hospital ensures the utmost comfort and safety for its patients.', 1700),
(18, 4, 'Life Care Hospital', '56/2, Oph Road, Jumma Masjid Road', 'Life Care Hospital is a renowned healthcare facility that offers a wide range of medical services. With state-of-the-art infrastructure and a team of highly skilled doctors, the hospital provides exceptional care to patients. From advanced diagnostic procedures to specialized treatments, Artemis Hospital ensures that patients receive the best possible medical attention. With a focus on patient comfort and safety, the hospital strives to deliver excellent healthcare services.', 1400),
(19, 4, 'St. Philomena\'s Hospital', '522, Diagonal Rd, Visweswarapuram, V V Puram', 'St. Philomena\'s hospital is a world-class medical facility renowned for its comprehensive healthcare services. Located in Mumbai, India, it boasts state-of-the-art infrastructure and cutting-edge technology to provide excellent medical care to patients. With a team of highly skilled doctors and medical professionals across various specialties, Medanta offers a wide range of treatments and procedures including cardiology, oncology, neurology, orthopedics, and more.', 2200),
(20, 4, 'North Banglore Hospital', '2, 3rd Floor Bvk Iyengar Road, Chickpet Circle, Chickpet', 'At North Banglore Hospital, we understand that compassionate care goes hand in hand with medical expertise. Our nurturing environment ensures that every patient receives personalized attention, supporting them throughout their healthcare journey. From our comfortable patient rooms to our exceptional nursing staff, every aspect of our facility is designed to provide comfort, ease, and peace of mind to our valued patients.', 2800),
(21, 5, 'Lifeline Hospital', '173, Perambur Barracks Road, Purasaiwalkam', 'Lifeline Hospital is a state-of-the-art medical facility that provides exceptional healthcare services to patients. With a team of highly skilled doctors, nurses, and support staff, the hospital offers a wide range of medical specialties and treatments. From advanced surgical procedures to comprehensive diagnostic services, Citicare Hospital is committed to delivering top-quality care to its patients.', 1850),
(22, 5, 'Murugan Hospital', 'New Mehrauli Road, Jawaharlal Nehru University', 'Introducing the Murugan Hospital, a renowned healthcare facility dedicated to providing world-class medical services. With state-of-the-art infrastructure, advanced technology, and a team of highly skilled doctors and specialists, it is committed to delivering exceptional patient care. Offering a comprehensive range of medical treatments and procedures, the Global Hospital ensures the utmost comfort and safety for its patients.', 2400),
(23, 5, 'Venkatesh Hospital', '797-c Sathy Main Road, Gandhipuram, Gandhipuram', 'Venkatesh Hospital is a renowned healthcare facility that offers a wide range of medical services. With state-of-the-art infrastructure and a team of highly skilled doctors, the hospital provides exceptional care to patients. From advanced diagnostic procedures to specialized treatments, Artemis Hospital ensures that patients receive the best possible medical attention. With a focus on patient comfort and safety, the hospital strives to deliver excellent healthcare services.', 1300),
(24, 5, 'VS Hospital', '52/11, General Muthia Mudali St Sowcarp', 'VS hospital is a world-class medical facility renowned for its comprehensive healthcare services. Located in Mumbai, India, it boasts state-of-the-art infrastructure and cutting-edge technology to provide excellent medical care to patients. With a team of highly skilled doctors and medical professionals across various specialties, Medanta offers a wide range of treatments and procedures including cardiology, oncology, neurology, orthopedics, and more.', 900),
(25, 5, 'DR. Mehta\'s Hospital', '118, Raheja Arcade, Pos;mglablr-95, Koramangala', 'At DR. Mehta\'s Hospital, we understand that compassionate care goes hand in hand with medical expertise. Our nurturing environment ensures that every patient receives personalized attention, supporting them throughout their healthcare journey. From our comfortable patient rooms to our exceptional nursing staff, every aspect of our facility is designed to provide comfort, ease, and peace of mind to our valued patients.', 1700);

-- --------------------------------------------------------

--
-- Table structure for table `hospitals_amenities`
--

CREATE TABLE `hospitals_amenities` (
  `id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `amenity_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospitals_amenities`
--

INSERT INTO `hospitals_amenities` (`id`, `hospital_id`, `amenity_id`) VALUES
(9, 1, 1),
(10, 1, 2),
(11, 1, 3),
(12, 1, 4),
(13, 1, 5),
(14, 1, 6),
(15, 1, 7),
(16, 1, 8),
(17, 1, 9),
(18, 1, 10),
(19, 1, 11),
(20, 1, 13),
(21, 1, 14),
(22, 1, 15),
(23, 2, 1),
(24, 2, 2),
(25, 2, 3),
(26, 2, 4),
(27, 2, 5),
(28, 2, 6),
(29, 2, 8),
(30, 2, 9),
(31, 2, 10),
(32, 2, 11),
(33, 2, 12),
(34, 2, 13),
(35, 2, 16),
(36, 3, 1),
(37, 3, 2),
(38, 3, 3),
(39, 3, 4),
(40, 3, 5),
(41, 3, 6),
(42, 3, 8),
(43, 3, 9),
(44, 3, 10),
(45, 3, 11),
(46, 3, 12),
(47, 3, 13),
(48, 3, 16),
(71, 4, 1),
(72, 4, 2),
(73, 4, 3),
(74, 4, 4),
(75, 4, 5),
(76, 4, 6),
(77, 4, 7),
(78, 4, 8),
(79, 4, 9),
(80, 4, 10),
(81, 4, 11),
(82, 4, 12),
(83, 4, 13),
(84, 4, 14),
(85, 4, 15),
(86, 4, 16),
(87, 5, 1),
(88, 5, 2),
(89, 5, 3),
(90, 5, 4),
(91, 5, 5),
(92, 5, 6),
(93, 5, 8),
(94, 5, 9),
(95, 5, 10),
(96, 5, 11),
(97, 5, 12),
(98, 5, 13),
(99, 5, 15),
(100, 5, 16);

-- --------------------------------------------------------

--
-- Table structure for table `interested_users_products`
--

CREATE TABLE `interested_users_products` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `interested_users_products`
--

INSERT INTO `interested_users_products` (`id`, `user_id`, `product_id`) VALUES
(1, 2, 11),
(2, 2, 17),
(3, 2, 27),
(4, 2, 38);

-- --------------------------------------------------------

--
-- Table structure for table `medicals`
--

CREATE TABLE `medicals` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `rating` float(2,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicals`
--

INSERT INTO `medicals` (`id`, `name`, `address`, `rating`) VALUES
(1, 'Max Medical', 'Bandra', 4.2),
(2, 'Farmacy Medical', 'Kurla', 5.0),
(3, 'Wellness Forever Medical', 'Parel', 3.8),
(4, 'Parmeasy Medical', 'Dadar', 4.4),
(5, '1mg Medical', 'Thane', 4.7);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `side_effects` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `side_effects`, `price`, `category_id`) VALUES
(1, 'Dolo 500 Tablet', 'Dolo 500 Tablet helps relieve pain and fever by blocking the release of certain chemical messengers responsible for fever and pain. It is used to treat headaches, migraine, toothaches, sore throats, period (menstrual) pains, arthritis, muscle aches, and the common cold.\r\nDolo 500 Tablet may be prescribed alone or in combination with another medicine. You should take it regularly as advised by your doctor. It is usually best taken with food otherwise it may upset your stomach. Do not take more or use it for longer than recommended.', 'Side effects are rare if this medicine is used correctly but it may cause stomach pain, nausea, and vomiting in some people.', 15, 1),
(2, 'Crocin Advance 500mg Tablet', 'Crocin Advance 500mg Tablet helps relieve pain and fever by blocking the release of certain chemical messengers responsible for fever and pain. It is used to treat headaches, migraine, toothaches, sore throats, period (menstrual) pains, arthritis, muscle aches, and the common cold.\r\nCrocin Advance 500mg Tablet may be prescribed alone or in combination with another medicine. You should take it regularly as advised by your doctor. It is usually best taken with food otherwise it may upset your stomach. Do not take more or use it for longer than recommended.', 'Side effects are rare if this medicine is used correctly but it may cause stomach pain, nausea, and vomiting in some people.', 19, 1),
(3, 'Sinarest Tablet', 'Sinarest New Tablet is a medicine used in the treatment of common cold symptoms. It provides relief from symptoms such as headache, sore throat, runny nose, muscular pain, and fever.\r\nSinarest New Tablet can be taken with or without food. The dose and duration will depend on the severity of your condition. You should keep taking the medicine even if you feel better until the doctor says it is alright to stop using it.', 'Using this medicine may cause a few common side effects such as nausea, vomiting, sleepiness, dizziness, and headache.', 109, 1),
(4, 'Digene Acidity & Gas Relief Ge', 'Digene Acidity & Gas Relief Gel can help provide quick relief from acidity and gas and other gas troubles like bloating and belching. The gel is formulated with Acidity Neutralising Capacity (ANC) to give quick and effective relief from acidity. \r\nIt helps minimise the symptoms of acidity such as abdominal pain and stomach discomfort. It works by neutralising stomach acid.  The gel has antacids like magnesium hydroxide as one of its active ingredients. It dissolves quickly in the stomach and provides quick action. It interacts with the stomach acid to produce magnesium chloride, which is absorbed by the body. Aluminium hydroxide inhibits the activity of the enzyme pepsin and alleviates heartburn.', 'Digene Acidity & Gas Relief Gel shows side effects like nausea, vomiting, headache, stomach pain, watery stools, and dizziness.', 159, 1),
(5, 'Gelusil MPS Original Liquid', 'Gelusil MPS Original liquid is a therapeutic digestive medication containing a balanced mix of ingredients that are widely used as an antacid, providing quick relief from acidity, heartburn and gas. The Aluminium hydroxide is an antacid, which neutralises increased stomach acid, \r\nDimethicone is an antiflatulent which helps in releasing the gas, Magnesium hydroxide is a laxative that increases water in the intestine and reduces stomach acid, It is also sugar-free and is generally well tolerated', 'Signs of an allergic reaction, like rash, itching, swollen, blistered, or peeling skin with or without fever, wheezing, tightness in the chest or throat, trouble breathing, swallowing, or talking, unusual hoarseness, or swelling of the mouth, face, lips, ', 153, 1),
(6, 'Ascoril LS Syrup', 'Ascoril LS Syrup is a combination medicine used in the treatment of cough with mucus. It thins mucus in the nose, windpipe, and lungs, making it easier to cough out. It also provides relief from runny nose, sneezing, itching, and watery eyes.\r\nAscoril LS Syrup is taken with or without food in a dose and duration as advised by the doctor. The dose you are given will depend on your condition and how you respond to the medicine. You should keep taking this medicine for as long as your doctor recommends. If you stop treatment too early your symptoms may come back and your condition may worsen. Let your healthcare team know about all other medications you are taking as some may affect, or be affected by this medicine.', 'The most common side effects are nausea, diarrhea, stomach pain, vomiting, muscle cramp, headache, skin rash, and increased heart rate. Most of these are temporary and usually resolve with time.', 129, 1),
(7, 'Betadine 10% Solution', 'Betadine 10% Solution is an antiseptic and disinfectant agent. It is used for the treatment and prevention of infections in wounds and cuts. It kills the harmful microbes and controls their growth, thereby preventing infections in the affected area.\r\nBetadine 10% Solution is for external use only. You should always use it exactly as your doctor has told you. The affected area should be clean and dry before application. You must wash your hands thoroughly before and after applying this medicine. This medicine should be used regularly to get the most benefit from it. Do not use more than you need as it will not clear your condition faster and some side effects may be increased. You can help this medication work better by keeping the affected areas clean.', 'This medicine may cause side effects like skin irritation, redness, or itching at the site of application.', 107, 1),
(8, 'Benadryl Syrup', 'Benadryl Syrup is used in the treatment of cough. It relieves allergy symptoms such as runny nose, stuffy nose, sneezing, watery eyes, and congestion or stuffiness. It also thins mucus in the nose, windpipe, and lungs, making it easier to cough out.\r\nBenadryl Syrup is taken with or without food in a dose and duration as advised by the doctor. The dose you are given will depend on your condition and how you respond to the medicine. You should keep taking this medicine for as long as your doctor recommends. If you stop treatment too early your symptoms may come back and your condition may worsen. Let your healthcare team know about all other medications you are taking as some may affect, or be affected by this medicine.', 'The most common side effects of this medicine include stomach pain, coordination impaired, thickened respiratory tract secretions, and allergic reactions. Most of these are temporary and usually resolve with time.', 140, 1),
(9, 'Combiflam Tablet', 'Combiflam Tablet contains two painkiller medicines. They work together to reduce pain, fever, and inflammation. It is used to treat many conditions such as headache, muscle pain, pain during periods, toothache, and joint pain.\r\nCombiflam Tablet is best taken with food to reduce side effects. The dose and how often you need it will be decided by your doctor. You should take it regularly as advised by your doctor. Medicines used to treat pain are usually best taken at the first sign of pain. It is meant for short-term use only. Consult your doctor if the symptoms persist or worsen or if the medicine is required for use beyond 3 days.', 'Side effects are rare if this medicine is used correctly but it may cause heartburn, indigestion, nausea, and stomach pain. Consult your doctor if any of these bother you or do not go away.', 50, 1),
(10, 'Candid-B Cream', 'Candid-B Cream is a combination medicine. It is used to treat various types of skin infections usually the fungal type of skin infections. It minimizes symptoms of inflammation such as redness, swelling, and itching. It also acts against the infection-causing microorganisms.\r\nCandid-B Cream is only meant for external use and should be used as advised by your doctor. A thin layer of the medicine should be applied only to the affected areas of the skin with clean and dry hands. If it gets into your eyes, nose, mouth, or vagina rinse with water. It may take several days to weeks for your symptoms to improve, but you should keep using this medicine regularly. The course of the treatment should be completed to ensure better efficacy of the medicine. If your condition does not improve or gets worse, you should talk to your doctor.', 'The most common side effect of this medicine includes itching, dryness, redness, and burning sensation at the application site. These are usually self-limiting. Serious side effects are rare.', 152, 1),
(11, 'Etoshine MR Tablet', 'Etoshine MR Tablet is a combination of two medicines used in the treatment of pain due to muscle spasms. It improves the movement of muscles and provides relief from pain and discomfort associated with muscle spasms.\r\nEtoshine MR Tablet may be taken with or without food. Take it in the dose and duration as precribed by the doctor. Do not take more or use it for a longer duration than recommended by your doctor.', 'Common side effects of this medicine include edema, dizziness, headache, palpitations, irregular heartbeats, high blood pressure, abdominal pain, constipation, and flatulence.', 274, 1),
(12, 'Ecosprin 75 Tablet', 'Ecosprin 75 Tablet is an antiplatelet medicine used to treat and prevent heart attacks, strokes, and heart-related chest pain (angina). It helps to prevent the formation of blood clots in your blood vessels. It is a very widely used medicine for heart protection.\r\nEcosprin 75 Tablet is usually best taken with food otherwise it may upset your stomach. The dose that is right for you depends on what you are taking it for and how well it helps your symptoms. You should take it as recommended by your doctor.', 'The most common side effects of this medicine are heartburn or upset stomach, nausea, and vomiting.', 7, 1),
(13, 'Folvite 5mg Tablet', 'Folvite 5mg Tablet is a folic acid supplement. It is used to treat a type of anemia where you have too few red blood cells because you have too little folic acid in your body. Folic acid is needed to produce the red blood cells that carry oxygen around your body.\r\nFolvite 5mg Tablet may be taken with or without food. Take it regularly and at the same time each day to get maximum benefits. Take it as a whole, do not break, chew, or crush them. Your doctor will decide the doses you need depending on the severity of your condition. It may help to eat a well-balanced diet that has enough folic acid, iron, vitamins, and minerals.', 'This medicine is generally well tolerated with little or no side effects. However, it may cause abdominal distension, flatulence, nausea, and weight loss in some people. While on treatment with this medicine, you may need to take blood tests to check your', 76, 1),
(14, 'Grilinctus DX Syrup', 'Grilinctus DX Syrup is a combination medicine used in the treatment of dry cough. It works by reducing the activity of cough center in the brain. It relieves allergic symptoms like runny nose, watery eyes, sneezing, throat irritation.\r\nGrilinctus DX Syrup is taken with or without food in a dose and duration as advised by the doctor. The dose you are given will depend on your condition and how you respond to the medicine. You should keep taking this medicine for as long as your doctor recommends. If you stop treatment too early your symptoms may come back and your condition may worsen. Let your doctor know about all other medications you are taking as some may affect, or be affected by this medicine.', 'The most common side effects are nausea, upset stomach, and rash. Most of these are temporary and usually resolve with time.', 126, 1),
(15, 'Glycomet-GP 1 Tablet PR', 'Glycomet-GP 1 Tablet PR belongs to a category of medicines known as anti-diabetic drugs. It is a combination of two medicines used to treat type 2 diabetes mellitus in adults. It helps control blood sugar levels in people with diabetes.\r\nGlycomet-GP 1 Tablet PR should be taken with food. Take it regularly at the same time each day to get the most benefit. Your doctor will decide what dose is best for you and this may change from time to time according to how it is working according to your blood sugar levels.', 'he most common side effect of Glycomet-GP 1 Tablet PR is low blood glucose levels (hypoglycemia). Make sure you recognize the signs of having low blood glucose levels, such as sweating, dizziness, headache, and shaking, and know how to deal with it. To pr', 122, 1),
(16, 'Hetrazan 100 Tablet', 'Hetrazan 100 Tablet belongs to a class of medication called anti-helminthic. It is used in the treatment of worm infections and filariasis. It can act against both the larval and adult forms of the parasitic worms that cause filariasis.\r\nHetrazan 100 Tablet should be used in the dose and duration as advised by your doctor. It should be taken with food, preferably at a fixed time. Avoid skipping any doses and finish the full course of treatment even if you feel better. Do not take a double dose to make up for a missed dose. Simply take the next dose as planned.', 'Some people may experience a headache, dizziness, vomiting, and abnormal liver function tests as the side effects of this medicine. Please consult your doctor if these side effects persist for a longer duration. You may be monitored with blood tests and l', 52, 1),
(17, 'Otrivin Oxy Fast Relief Adult ', 'Otrivin Oxy Fast Relief Adult Nasal Spray helps in providing effective relief from the blocked nose. It is a fast acting formula which starts to unblock the nose in 25 seconds. It helps in reducing excess nasal secretions and relives the swollen blood vessels. Otrivin Oxy Fast Relief provides a long lasting relief and acts upto 12 hours.', 'Many people using this medication do not have serious side effects. Side effects, including: slow/fast/pounding heartbeat, dizziness, nausea, headache, mental/mood changes, trouble sleeping, shaking (tremors), unusual sweating, unusual weakness.', 106, 1),
(18, 'Nasivion Classic Adult 0.05% N', 'NASIVION CARE NASAL DROPS is a medicine used to treat nasal congestion (blocked nose) caused by the common cold or flu, hay fever and other allergies. It narrows the blood vessels in your nose to relieve nasal congestion and blockage.', 'Mild burning and/or tingling sensation in nose, Runny nose, Sneezing, Dryness in throat and mouth. Prolonged use may lead to recurrent congestion (redness, irritation and blocked nasal pathway)', 99, 1),
(19, 'Ondem -MD 4 Tablet', 'Ondem -MD 4 Tablet is an antiemetic medicine commonly used to control nausea and vomiting due to certain medical conditions like stomach upset. It is also used to prevent nausea and vomiting caused due to any surgery, cancer drug therapy, or radiotherapy.\r\nOndem -MD 4 Tablet may be used alone or with other medications and can be taken with or without food. Your doctor will suggest the appropriate dose depending on what you are taking it for. The first dose is normally taken before the start of surgery, chemotherapy, or radiotherapy. After these treatments, take any further doses as prescribed by your doctor (normally only for a few days at most). Take it regularly at the same time(s) each day to get the most benefit. Be careful not to take too much.', 'This medicine does not relieve other side effects associated with cancer treatments. Also, it has little effect on vomiting caused by motion sickness. The most common side effects of taking this medicine include headache, diarrhea, or constipation and fee', 57, 1),
(20, 'Sinarest Syrup', 'Sinarest Syrup is commonly prescribed in children to treat symptoms such as runny nose, cough, sneezing, watery eyes, sore throat, body ache, and fever. These symptoms are usually associated with common cold, hay fever (allergic rhinitis), and other respiratory tract conditions.\r\nGive Sinarest Syrup to your child by mouth with or without food. If your child develops a stomach upset, prefer giving it with food. Always remember that the dosing schedule provided by your child’s doctor depends on the type of symptoms your child has, so make sure to follow the prescribed dose, time, and way strictly.', 'Some of the minor and temporary side effects that your child may experience while taking this medicine include vomiting, diarrhea, nausea, dizziness, rash, and headache. Usually, these episodes subside once your child’s body adapts to the medicine.', 133, 1),
(21, 'Mamaearth Onion Shampoo', 'Mamaearth Onion Shampoo helps combat hair fall with natural ingredients. Onion is rich in sulphur, potassium, and antioxidants, which help reduce hair fall and accelerate growth. Plant Keratin replenishes and strengthens the hair and repairs its natural structure. The shampoo makes the hair smooth and frizz-free. The new shampoo formula improves deep cleansing by providing 22% more foam, 8 times more detangling action, and 4 times more conditioning effect.', 'Avoid contact with eyes. In case of any direct contact, wash eyes thoroughly with water.', 349, 2),
(22, 'Mamaearth BhringAmla Shampoo', 'Mamaearth BhringAmla Shampoo is an ayurvedic blend of bhringraj and amla that can help reduce hair fall, repair damaged hair, and reduce dandruff. The shampoo has oil that has been made following the traditional \'Kshirpak vidhi\', an ancient ayurveda process in which milk is combined with different herbs. The natural herbs and oils in the shampoo control hair fall and repair damaged hair, leaving the hair healthy, strong, and voluminous after every wash.', 'Avoid contact with eyes. In case of any direct contact, wash eyes thoroughly with water.', 297, 2),
(23, 'Dove Intense Repair Shampoo', 'Dove Intense Repair Shampoo helps to remove dirt and toxins from the scalp and makes them healthy and clean. It prevents dandruff and other scalp issues. It hydrates the scalp, soothes itching and dryness and boosts hair growth naturally. It nourishes your hair while washing and avoids the after-shampoo dryness while providing rich nourishment for shiny, soft, naturally straight and glossy hair', 'Avoid contact with eyes. In case of any direct contact, wash eyes thoroughly with water.', 180, 2),
(24, 'Scalpe Pro Anti Dandruff Shamp', 'Scalpe Pro Anti Dandruff Shampoo makes hair healthy. It is formulated with Climbazole+ZPTO, which prevents the recurrence of dandruff. Its base conditioning property ensures no dryness even with daily use. It removes dandruff and provides strong and conditioned hair, Its base conditioning property ensures no dryness even with daily use, It helps to improve hair shaft thickness, which reduces hair fall due to breakage, It prevents dandruff-causing microbes from producing scalp irritants relieving itching and irritation', 'Avoid contact with eyes. In case of any direct contact, wash eyes thoroughly with water.', 350, 2),
(25, 'Himalaya Shampoo Damage Repair', 'Himalaya Shampoo Damage Repair Argan Oil helps repair damaged hair. Himalaya Damage Repair Argan Oil Shampoo has a special blend of botanical extracts and natural protein that helps repair dry and frizzy hair to give 5X damage control for smoother hair. It is effective and gentle, leaving your hair healthy. It has no harmful chemicals.', 'Avoid contact with eyes. In case of any direct contact, wash eyes thoroughly with water.', 310, 2),
(26, 'Indulekha Bringha Shampoo', 'Indulekha Bringha Hair Cleanser is an ayurvedic natural hair cleanser, enriched with benefits of bhringraj and other natural herbs. It is suitable for all hair types. It is a solution for all types of hair problems such as dandruff, itching, breakage and flakes. Helps in the reduction of hair fall and cleans the scalp very well, Imparts softness, bounce, and luster to the hair, Makes the hair look healthy and nourished, Helps to counter dandruff, itching, and flaking to a certain extent', 'Avoid contact with eyes. In case of any direct contact, wash eyes thoroughly with water.', 135, 2),
(27, 'Mamaearth Onion Hair Oil', 'Mamaearth Onion Hair Oil helps get strong, smooth, and shiny hair and has a lightweight and non-sticky formulation. Onion hair oil is rich in sulphur, potassium, and antioxidants, Helping to reduce hair fall and accelerate hair regrowth. Redensyl aids in unblocking hair follicles and boosts new hair growth', 'Avoid contact with eyes. In case of any direct contact, wash eyes thoroughly with water.', 419, 2),
(28, 'Bajaj Almond Drops Hair Oil', 'Bajaj Almond Drops Hair Oil Bajaj Almond Drops non-sticky hair oil has the goodness of almond oil and vitamin E. It is enriched with 6X Vitamin E* and sweet almond oil, it makes your hair stronger and gives your hair the power to fight hair fall. Sweet almond oil and vitamin E help nourish hair, Its light and non-sticky texture helps avoid the hassles of stickiness, Helps to reduce hair fall and strengthens the hair from the roots', 'Avoid contact with eyes. In case of any direct contact, wash eyes thoroughly with water.', 235, 2),
(29, 'Parachute 100% Pure Coconut Oi', 'Parachute 100% Pure Coconut Oil is made from naturally sun-dried coconuts. It helps to provide hydration and nourishment to the scalp and body. It goes through a 5 stage purification process and 27 quality tests. It is made from naturally sun-dried coconuts, It helps to provide hydration and nourishment to the scalp and body, It goes through a 5-stage purification process and 27 quality tests, It is free from preservatives and chemicals', 'Avoid contact with eyes. In case of any direct contact, wash eyes thoroughly with water.', 270, 2),
(30, 'Elovera Daily Moisturising Cre', 'Elovera Daily Moisturising Cream is specially formulated for dry skin conditions with protective ingredients like aloe vera and vitamin E. Aloe vera is a moisturising agent that is known for its skin-hydrating properties. Vitamin E is a protective vitamin that effectively moisturises the skin. It has antioxidant properties, which eliminate free radicals that cause damage to the skin cells. It has a non-greasy texture making it suitable for all-day use.', 'Avoid contact with eyes. In case of any direct contact, wash eyes thoroughly with water.', 240, 2),
(31, 'Mamaearth Oil-Free Face Moistu', 'Non-greasy formaula which helps to prevent acne marks and pimples Suitable for acne prone skin and provides effective hydration, Apple cider vinegar helps to balance the ph level of the skin. Non-greasy formaula which helps to prevent acne marks and pimples, Suitable for acne prone skin and provides effective hydration, Apple cider vinegar helps to balance the ph level of the skin', 'Avoid contact with eyes. In case of any direct contact, wash eyes thoroughly with water.', 319, 2),
(32, 'Himalaya Herbals Purifying Nee', 'Himalaya Herbals Purifying Neem Face Wash is a soap-free, herbal formulation that cleans impurities and helps clear pimples. Neem and turmeric have antibacterial and antifungal properties that help prevent acne recurrence over time. The face wash is suitable for all skin types and is best suited for acne-prone skin.', 'Avoid contact with eyes. In case of any direct contact, wash eyes thoroughly with water.', 150, 2),
(33, 'Clean & Clear Foaming Face Was', 'Clean & Clear Foaming Face Wash is specially designed for oily skin and is meant for daily use. It is formulated with ingredients that help remove oil and reduce pimples. It also provides hydration and does not cause dryness and keeps the skin clean, clear, and pimple-free. Gently removes dirt and oil, Eliminates pimple-causing germs, Reduces oiliness and sebum, Does not clog the pores', 'Avoid contact with eyes. In case of any direct contact, wash eyes thoroughly with water.', 170, 2),
(34, 'Nivea Nivea Men Acne Face Wash', 'New Nivea Men Acne Face Wash enriched with magnolia bark fights 99% acne bacteria and gives you clean clear skin. It helps you to achieve awesome skin in just one minute. Helps to reduce the dirt and oil on the skin, Removes the excess oil build-up and reduces the oily shine on the skin, Helps to remove the blackheads and whiteheads', 'Avoid contact with eyes. In case of any direct contact, wash eyes thoroughly with water.', 110, 2),
(35, 'Dove Deep Moisture Body Wash', 'Dove Deeply Nourishing Body Wash combines Nutrium Moisture with mild cleansers to help the skin retain its natural moisture, leaving it with softer, smoother skin. The caring formula in this Dove body wash may help maintain your skin\'s moisture barrier while delivering natural nourishment that goes deep into the surface layers of your skin. It can create a rich lather that may replenish the skin\'s nutrients while leaving it feeling cared for and clean.', 'Avoid contact with eyes. In case of any direct contact, wash eyes thoroughly with water.', 125, 2),
(36, 'Pears Pure and Gentle Body Was', 'Pears Pure and Gentle Body Wash has been curated using natural oils and glycerin and helps to keep your skin smooth and healthy. Its iconic pears fragrance keeps bad odour away and keeps you feeling fresh and pleasant throughout the day. Helps prevent dryness and dulness, Keeps the skin soft and glowy, contains the goodness of natural oils and glycerin', 'Avoid contact with eyes. In case of any direct contact, wash eyes thoroughly with water.', 135, 2),
(37, 'Nivea Express Hydration Body L', 'Nivea Express Hydration Body Lotion is a light moisturizer that can be easily absorbed by the skin. It can help hydrate your skin and keep it soft and supple. A grease-free moisturizer that does not require you to wait for it to be absorbed before getting dressed to face the day. It can benefit those with normal and dry skin. It can be easily absorbed by the skin, It can help soften your skin and hydrates it, It could help in keeping your skin hydrated all day, It can be light and non-greasy', 'Avoid contact with eyes. In case of any direct contact, wash eyes thoroughly with water.', 299, 2),
(38, 'The Derma Co 1% Hyaluronic Sun', 'The Derma Co 1% Hyaluronic Sunscreen Aqua Gel moisturises deeply and enhances the skin\'s barrier hyaluronic acid. Vitamin E is a fat-soluble, essential nutrient enriched with anti-inflammatory properties. Titanium dioxide acts as a UV filtering ingredient. Incorporate this multitasker into your daily skincare routine to reap the benefits of nature. Helps ineffective protection against harmful sun rays and protects your skin against damage, Keeps the skin hydrated and moist, It is a potent antioxidant that provides extra protection against acute UVB damage, It improves the health and elasticity of the skin', 'Avoid contact with eyes. In case of any direct contact, wash eyes thoroughly with water.', 499, 2),
(39, 'Lotus Herbals Safe Sun Sunscre', 'Lotus Herbals Safe Sun Sunscreen Cream PA+ SPF 20 offers protection from the sun\'s harmful UVA/UVB rays. The sunscreen can be used daily and is suitable for all skin types. It is chemical-free and protects any exposed area of the skin. The product is water and sweat-resistant. Water and sweat-resistant formulation, Suitable for all skin types, Provides broad-spectrum protection', 'Avoid contact with eyes. In case of any direct contact, wash eyes thoroughly with water.', 199, 2),
(40, 'Lakme Sun Expert, SPF 50 PA+++', 'sunscreen lotion which is light enough to be used all year round. It contains cucumber, lemongrass, Vitamin B3 and has been tested by dermatologists. Suitable for all skin types - this lightweight lotion provides broad spectrum UV protection. Shields skin against UVA and UVB rays, Prevents sunburn, dark spots, and premature aging, Moisturize the skin and makes it glow, Prevents tan lines, Lightens the skin tone on regular use, Gives a cooling effect', 'Avoid contact with eyes. In case of any direct contact, wash eyes thoroughly with water.', 396, 2),
(41, 'Omron MC-246 Thermometer', 'Omron MC-246 Thermometer helps measure body temperature by eliminating broken glass or mercury hazards. The measurement unit can be easily switched between C/F, and the device is water-resistant. The device provides accurate readings. ', 'Product should be cleaned and disinfected after every use.', 253, 3),
(42, 'AccuSure MT 1027 Digital Therm', 'AccuSure MT 1027 Digital Thermometer is a digital thermometer that provides fast and accurate temperature measurements. It is suitable for oral, underarm, or rectal temperature readings', 'Product should be cleaned and disinfected after every use.', 167, 3),
(43, 'Dr. Odin MT-101 Digital Thermo', 'Dr. Odin MT-101 Digital Thermometer is a digital thermometer with high accuracy and an auto shut-off feature. It is suitable for adults and children.', 'Product should be cleaned and disinfected after every use.', 182, 3),
(44, 'Vandelay Contactless Infra Red', 'Vandelay CQR-T800 Contactless & Hygienic Infrared Thermometer is a non-contact, reliable, comfortable, and accurate option for temperature measurement. An infrared thermometer infers temperature from a portion of the thermal radiation emitted by the object being measured.', 'Product should be cleaned and disinfected after every use.', 2999, 3),
(45, 'Accu-Chek Instant S Blood Gluc', 'Accu-Chek Instant S Blood Glucometer with 10 Test Strips Free enables you to keep a check on your blood glucose levels. It takes less than five seconds to get the test results, which are visible on the LCD display', 'Product should be cleaned and disinfected after every use.', 729, 3),
(46, 'Contour Plus Blood Glucometer', 'Contour Plus Blood Glucose Monitoring System with Contour Plus Blood Glucose Test Strip 20S Free is specially designed to help monitor blood sugar levels in the body. It is helpful for those who want to check their blood glucose level and those with diabetes.', 'Product should be cleaned and disinfected after every use.', 783, 3),
(47, 'OneTouch Verio Flex Glucometer', 'The OneTouch Reveal mobile app syncs data seamlessly from your OneTouch Verio Flex Blood Glucose Monitor directly to your smartphone, making it easy to see patterns and help manage diabetes.  The OneTouch Reveal mobile app transforms data into quick visual snapshots that connect your blood glucose readings with food, insulin and activity. Blood glucose readings on the mobile app can be tagged as “before meal” or “after meal”.', 'Product should be cleaned and disinfected after every use.', 1175, 3),
(48, 'Dr Morepen BG 03 Gluco One Glu', 'Dr Morepen BG 03 Gluco One Glucose Monitoring System with Gluco One BG 03 Blood Glucose 25 Test Strip Testing your blood glucose is an essential part of managing diabetes. Dr Morepen\'s blood glucose monitor model is a smart glucose monitor that helps you measure blood glucose levels quickly, accurately and comfortably.', 'Product should be cleaned and disinfected after every use.', 547, 3),
(49, 'Omron HEM-7120 BP Monitor', 'Omron HEM-7120 BP Monitor is a digital monitoring device that monitors blood pressure and pulse rate. It is helpful in both professional as well as home use. It detects heartbeat rhythm that varies by more than 25% from the average heartbeat rhythm. This irregular heartbeat is detected while the unit is measuring blood pressure.', 'Product should be cleaned and disinfected after every use.', 2490, 3),
(50, 'Dr Morepen BP 02 Blood Pressur', 'Dr Morepen BP 02 Blood Pressure Monitor helps provide accurate and precise readings. The device helps detect systolic and diastolic pressure and heart rate.', 'Product should be cleaned and disinfected after every use.', 1455, 3),
(51, 'AccuSure TD 1209 BP Monitor', 'AccuSure TD 1209 Advanced Features BP Monitor with Adapter is a convenient way to track one\'s blood pressure level. It facilitates a large LCD display and comprises of irregular heartbeat detection. Moreover, it is easy and effective Blood Pressure Monitoring at the comfort of home.', 'Product should be cleaned and disinfected after every use.', 1520, 3),
(52, 'Vandelay Pulse Oximeter', 'Vandelay Pulse Oximeter was developed for high accuracy and simple usage for both doctors and non-medical use. Equipped with heart rate pulse & SpO2 measurement, this product is useful for monitoring the oxygen concentration in blood and the health of patients during respiratory diseases.', 'Product should be cleaned and disinfected after every use.', 1229, 3),
(53, 'Dr Morepen PO 12A Pulse Oximet', 'Dr Morepen PO 12A Pulse Oximeter is useful in checking pulse rate and blood oxygen saturation levels. The product is suitable for use in family, hospital, oxygen bar, community healthcare, and physical care in sports. It is backed by a 1-year warranty.', 'Product should be cleaned and disinfected after every use.', 999, 3),
(54, 'AccuSure FS20C Finger Pulse Ox', 'AccuSure FS20C Fingertip Pulse Oximeter is used for measuring the pulse oxygen saturation and pulse rate through finger. The product is suitable for use in family, hospital, oxygen bar, community healthcare, physical care in sports. It can also be used before or after performing physical activity.', 'Product should be cleaned and disinfected after every use.', 1618, 3),
(55, 'Omron Compressor Nebulizer NE-', 'Omron Compressor Nebulizer is a powerful piece of equipment designed to provide a comfortable home nebulization experience. It helps manage the respiratory health of adults and kids, and can effectively manage asthma, COPD, and other lung-related problems. This device is user friendly, can be cleaned easily, and comes with all the requisite accessories needed for proper nebulization.', 'Product should be cleaned and disinfected after every use.', 1999, 3),
(56, 'AccuSure Nebulizer XL Blue', 'AccuSure Nebulizer XL Blue is beneficial for providing relief from colds and asthma. It is ideal for all ages and is effective for medication delivery. It makes less noise and can be disinfected. It has a 2-year warranty and comes with adult and pediatric masks.', 'Product should be cleaned and disinfected after every use.', 1443, 3),
(57, 'Medtech Handyneb Classic Nebul', 'Medtech Handyneb Classic Nebulizer is a compact and powerful nebuliser ideal for patients experiencing respiratory conditions like asthma, COPD, sinus, and most respiratory conditions. Its compact size enables users to easily carry the product around and reduces any hassles while operating. This device is designed to convert saline water and medications of different viscosities into a fine aerosol mist which facilitates the medicines to reach deep into the lungs with maximum absorption.', 'Product should be cleaned and disinfected after every use.', 1599, 3),
(58, 'Omron HN-289 Weighing Scale Bl', 'Omron HN-289 Weighing Scale comes equipped with a 4-sensor accuracy technology which helps target weight management regime accurately. The tempered glass covering on the body ensures durability for the device. The device switches on and off on unrest and rest position. 4-sensing technology allows a more accurate body weight measurement and holistic analysis of body composition. A slim device for easy storage and handling. With an ultra-slim design and durable tempered glass body, this device is fit for home use.', 'Product should be cleaned and disinfected after every use.', 2240, 3),
(59, 'Equinox EQ-BR 9201 Personal We', 'Equinox\'s mechanical weighing scale EQ-BR-9201 is the tool to monitor and measure your weight. It is designed with durable construction and has the capacity to withstand a maximum of 130 kilograms. The weighing scale has a zero adjuster, we need to set zero before taking the weight. One has to measure his/her weight without any movement while measuring the weight.', 'Product should be cleaned and disinfected after every use.', 1395, 3),
(60, 'Dr Morepen VP 06 Breathe Free ', 'Dr Morepen VP-06 Breathe Free Vaporizer is a mechanical device that turns water into steam and transmits that steam into the surrounding atmosphere. It is used to help clear congestion or moisturize dry nasal passageways and provide relief from various respiratory and throat-related problems like asthma, bronchitis, laryngitis, common cold etc.', 'Product should be cleaned and disinfected after every use.', 450, 3),
(61, 'Lays Potato Chips Indian Masal', 'Taste the unbeatable blend of delectable Indian spices with best quality potatoes. Delicious individual bags: perfect for snacking at work, home or school. 100% vegetarian, best quality potatoes, finest quality of spices and edible vegetable oils. Trans-fat free.', 'Don\'t Buy these products if you are , fat, lazy, dumb, obese. Avoid eating or drinking this product', 10, 4),
(62, 'Lays Potato Chips Classic Salt', 'Taste the unbeatable blend of delectable Indian spices with best quality potatoes. Delicious individual bags: perfect for snacking at work, home or school. 100% vegetarian, best quality potatoes, finest quality of spices and edible vegetable oils. Trans-fat free.', 'Don\'t Buy these products if you are , fat, lazy, dumb, obese. Avoid eating or drinking this product', 10, 4),
(63, 'Lays Potato Chips Chile Lemon', 'Taste the unbeatable blend of delectable Indian spices with best quality potatoes. Delicious individual bags: perfect for snacking at work, home or school. 100% vegetarian, best quality potatoes, finest quality of spices and edible vegetable oils. Trans-fat free.', 'Don\'t Buy these products if you are , fat, lazy, dumb, obese. Avoid eating or drinking this product', 10, 4),
(64, 'Lays Potato Chips Sizzlin Hot', 'Taste the unbeatable blend of delectable Indian spices with best quality potatoes. Delicious individual bags: perfect for snacking at work, home or school. 100% vegetarian, best quality potatoes, finest quality of spices and edible vegetable oils. Trans-fat free.', 'Don\'t Buy these products if you are , fat, lazy, dumb, obese. Avoid eating or drinking this product', 10, 4),
(65, 'Pringles Sour Cream & Onion Fl', 'PRINGLES POTATO CHIPS - Relish Pringles Sour Cream & Onion Flavored Potato Chips, crispy snack, loved by everyone for its delicious taste and crispy texture. Pringles Sour Cream & Onion flavor Potato Chips are delicious.', 'Don\'t Buy these products if you are , fat, lazy, dumb, obese. Avoid eating or drinking this product', 115, 4),
(66, 'Pringles Original Salted', 'PRINGLES POTATO CHIPS - Relish Pringles Sour Cream & Onion Flavored Potato Chips, crispy snack, loved by everyone for its delicious taste and crispy texture. Pringles Sour Cream & Onion flavor Potato Chips are delicious.', 'Don\'t Buy these products if you are , fat, lazy, dumb, obese. Avoid eating or drinking this product', 115, 4),
(67, 'Sunfeast Moms Magic Biscuit', 'Rich butter cookies with nuts - just the way Mom would make it, Loaded with roasted cashews and almonds lending a nourishing, nutty flavour, Prepared in roasted butter with sweet caramely notes for a rich aroma and a wholesome crunch', 'Don\'t Buy these products if you are , fat, lazy, dumb, obese. Avoid eating or drinking this product', 80, 4),
(68, 'Oreo Cadbury Vanilla Flavour C', 'OREO: milk\'s best friend for over 100 years! Cadbury OREO Vanilla creme sandwich biscuit consists of two chocolatey biscuits with a rich vanilla creme filling between them. Cadbury OREO creme biscuits are made with cocoa, which defines their unique chocolatey flavour.', 'Don\'t Buy these products if you are , fat, lazy, dumb, obese. Avoid eating or drinking this product', 99, 4),
(69, 'Sunfeast Dark Fantasy Choco Fi', 'Sunfeast Dark Fantasy Choco Fills is a one-of-a-kind cookie you can indulge in for a sinful chocolate experience. It has a perfectly baked golden cookie on the outside, luscious molten chocolate on the inside,,Can\'t wait for the boring day to end? Take a bite of this indulgent chocolate cookie to turn on the Din Khatam, Fantasy Shuru mode.', 'Don\'t Buy these products if you are , fat, lazy, dumb, obese. Avoid eating or drinking this product', 170, 4),
(70, 'Britannia Good Day Cashew Cook', 'Goodness of cashews filled inside this crunchy cookie with a taste that is subtle yet delectable. Nutty flavour gives a fineness to the taste, making these cookies a sure delight, Enjoy these cookies with a glass of milk to soften the flavours, or take a bite directly to enjoy the delicacy of taste.', 'Don\'t Buy these products if you are , fat, lazy, dumb, obese. Avoid eating or drinking this product', 130, 4),
(71, 'Britannia Marie Gold Biscuits', 'Made with cereal, milk protein and 10 essential vitamins to fill the light and crispy texture of these biscuits with enough nutrition. Low in fat and low in cholesterol, these biscuits will going to be your everyday healthy snack, Enjoy your rejuvenating teatime moments with the light flavours of these biscuits accompanied by a cup of tea', 'Don\'t Buy these products if you are , fat, lazy, dumb, obese. Avoid eating or drinking this product', 140, 4),
(72, 'MYFITNESS Original Peanut Butt', 'INDULGENT NUTTY SPREAD- Indulge in the rich and nutty flavor of MyFitness Original Peanut Butter. Our delicious spread combines the traditional American recipe with a unique desi twist, providing a perfect balance of savory taste and smooth texture. With each bite, you can savor the luxurious flavor that MyFitness is known for.', 'Don\'t Buy these products if you are , fat, lazy, dumb, obese. Avoid eating or drinking this product', 499, 4),
(73, 'Pintola High Protein All Natur', 'Enormous Amount of PROTEIN (37%) - Pintola All-Natural Unsweetened High Protein Peanut Butter contains 37g of protein and 8g of dietary fiber per 100g. This makes it an excellent source of protein and dietary fiber without compromising on taste.', 'Don\'t Buy these products if you are , fat, lazy, dumb, obese. Avoid eating or drinking this product', 699, 4),
(74, 'ALPINO Natural Peanut Butter', '100% Natural & Unsweetened Peanut Butter. Made with 100% Roasted Peanuts with, No Added Sugar, Salt and, Hydrogenated Oils, The Product is Non-GMO, Gluten-Free and Suitable for Vegan Diet, Consists of 30 G Protein, Rich Source of Fibre, Zero Trans Fat and, Zero Cholesterol', 'Don\'t Buy these products if you are , fat, lazy, dumb, obese. Avoid eating or drinking this product', 175, 4),
(75, 'Sundrop Peanut Butter', 'Tasty and healthy spread, 25% protein in each serving, It is made of roasted peanuts (90% by weight), good source of dietary fibre, 100 percent vegetarian', 'Don\'t Buy these products if you are , fat, lazy, dumb, obese. Avoid eating or drinking this product', 240, 4),
(76, 'Real Masala Pomegranate Fruit ', 'Pomegranate goodness with no added preservatives. No added artificial colour and flavour, Tastes best when served chilled. Refrigerate after opening and consume within 5 days. Keep away from direct sunlight', 'Don\'t Buy these products if you are , fat, lazy, dumb, obese. Avoid eating or drinking this product', 140, 4),
(77, 'Real Masala Mixed Fruit Juice', 'Pomegranate goodness with no added preservatives. No added artificial colour and flavour, Tastes best when served chilled. Refrigerate after opening and consume within 5 days. Keep away from direct sunlight', 'Don\'t Buy these products if you are , fat, lazy, dumb, obese. Avoid eating or drinking this product', 140, 4),
(78, 'B Natural Mango Juice', 'Relish the goodness of fruit and fiber with B Natural. Satisfy your mango cravings all year round with B Natural Mango, Enjoy an authentic fruit experience as B Natural Mango is made with mango pulp; it has 100% Indian fruit and 0% concentrate, Savour the taste of King of Fruits Mango, with all its glorious taste and nutrition in a thick pulpy juice form with B Natural Mango', 'Don\'t Buy these products if you are , fat, lazy, dumb, obese. Avoid eating or drinking this product', 172, 4),
(79, 'B Natural Mixed Fruit Juice', 'Relish an authentic fruit experience with every sip of B Natural as the fruits have been sourced from local farmers like Mr Kishore from Andhra Pradesh. Get the goodness of fruit and fiber with B Natural as it is made with 100% fruit pulp and 0% concentrate, Enjoy the scrumptious taste of mango, banana, pineapple, guava, jamun and bael, that has been squeezed into each pack of B Natural Mixed Fruit', 'Don\'t Buy these products if you are , fat, lazy, dumb, obese. Avoid eating or drinking this product', 260, 4),
(80, 'Tropicana Fruit Juice - Mixed ', 'Relish the goodness of mixed fruits!Don\'t Buy these products if you are , fat, lazy, dumb, obese. Avoid eating or drinking this product. A special R protection gives you the goodness of tasty, ready to serve fruit beverage in every glass of Tropicana, A perfect fruit beverage to enjoy with your friends and family', 'Don\'t Buy these products if you are , fat, lazy, dumb, obese. Avoid eating or drinking this product', 125, 4);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `name`) VALUES
(1, 'Medicine_Product'),
(2, 'Personal_Product'),
(3, 'Health_Product'),
(4, 'Snack_Product');

-- --------------------------------------------------------

--
-- Table structure for table `product_in_medical`
--

CREATE TABLE `product_in_medical` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `medical_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_in_medical`
--

INSERT INTO `product_in_medical` (`id`, `product_id`, `medical_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 21, 1),
(22, 22, 1),
(23, 23, 1),
(24, 24, 1),
(25, 25, 1),
(26, 26, 1),
(27, 27, 1),
(28, 28, 1),
(29, 29, 1),
(30, 30, 1),
(31, 31, 1),
(32, 32, 1),
(33, 33, 1),
(34, 34, 1),
(35, 35, 1),
(36, 36, 1),
(37, 37, 1),
(38, 38, 1),
(39, 39, 1),
(40, 40, 1),
(41, 41, 1),
(42, 42, 1),
(43, 43, 1),
(44, 44, 1),
(45, 45, 1),
(46, 46, 1),
(47, 47, 1),
(48, 48, 1),
(49, 49, 1),
(50, 50, 1),
(51, 51, 1),
(52, 52, 1),
(53, 53, 1),
(54, 54, 1),
(55, 55, 1),
(56, 56, 1),
(57, 57, 1),
(58, 58, 1),
(59, 59, 1),
(60, 60, 1),
(61, 61, 1),
(62, 62, 1),
(63, 63, 1),
(64, 64, 1),
(65, 65, 1),
(66, 66, 1),
(67, 67, 1),
(68, 68, 1),
(69, 69, 1),
(70, 70, 1),
(71, 71, 1),
(72, 72, 1),
(73, 73, 1),
(74, 74, 1),
(75, 75, 1),
(76, 76, 1),
(77, 77, 1),
(78, 78, 1),
(79, 79, 1),
(80, 80, 1),
(81, 1, 2),
(82, 2, 2),
(83, 3, 2),
(84, 4, 2),
(85, 5, 2),
(86, 6, 2),
(87, 7, 2),
(88, 8, 2),
(89, 9, 2),
(90, 10, 2),
(91, 11, 2),
(92, 12, 2),
(93, 13, 2),
(94, 14, 2),
(95, 15, 2),
(96, 16, 2),
(97, 17, 2),
(98, 18, 2),
(99, 19, 2),
(100, 20, 2),
(101, 21, 2),
(102, 22, 2),
(103, 23, 2),
(104, 24, 2),
(105, 25, 2),
(106, 26, 2),
(107, 27, 2),
(108, 28, 2),
(109, 29, 2),
(110, 30, 2),
(111, 31, 2),
(112, 32, 2),
(113, 33, 2),
(114, 34, 2),
(115, 35, 2),
(116, 36, 2),
(117, 37, 2),
(118, 38, 2),
(119, 39, 2),
(120, 40, 2),
(121, 41, 2),
(122, 42, 2),
(123, 43, 2),
(124, 44, 2),
(125, 45, 2),
(126, 46, 2),
(127, 47, 2),
(128, 48, 2),
(129, 49, 2),
(130, 50, 2),
(131, 51, 2),
(132, 52, 2),
(133, 53, 2),
(134, 54, 2),
(135, 55, 2),
(136, 56, 2),
(137, 57, 2),
(138, 58, 2),
(139, 59, 2),
(140, 60, 2),
(141, 61, 2),
(142, 62, 2),
(143, 63, 2),
(144, 64, 2),
(145, 65, 2),
(146, 66, 2),
(147, 67, 2),
(148, 68, 2),
(149, 69, 2),
(150, 70, 2),
(151, 71, 2),
(152, 72, 2),
(153, 73, 2),
(154, 74, 2),
(155, 75, 2),
(156, 76, 2),
(157, 77, 2),
(158, 78, 2),
(159, 79, 2),
(160, 80, 2),
(161, 1, 3),
(162, 2, 3),
(163, 3, 3),
(164, 4, 3),
(165, 5, 3),
(166, 6, 3),
(167, 7, 3),
(168, 8, 3),
(169, 9, 3),
(170, 10, 3),
(171, 11, 3),
(172, 12, 3),
(173, 13, 3),
(174, 14, 3),
(175, 15, 3),
(176, 16, 3),
(177, 17, 3),
(178, 18, 3),
(179, 19, 3),
(180, 20, 3),
(181, 21, 3),
(182, 22, 3),
(183, 23, 3),
(184, 24, 3),
(185, 25, 3),
(186, 26, 3),
(187, 27, 3),
(188, 28, 3),
(189, 29, 3),
(190, 30, 3),
(191, 31, 3),
(192, 32, 3),
(193, 33, 3),
(194, 34, 3),
(195, 35, 3),
(196, 36, 3),
(197, 37, 3),
(198, 38, 3),
(199, 39, 3),
(200, 40, 3),
(201, 41, 3),
(202, 42, 3),
(203, 43, 3),
(204, 44, 3),
(205, 45, 3),
(206, 46, 3),
(207, 47, 3),
(208, 48, 3),
(209, 49, 3),
(210, 50, 3),
(211, 51, 3),
(212, 52, 3),
(213, 53, 3),
(214, 54, 3),
(215, 55, 3),
(216, 56, 3),
(217, 57, 3),
(218, 58, 3),
(219, 59, 3),
(220, 60, 3),
(221, 61, 3),
(222, 62, 3),
(223, 63, 3),
(224, 64, 3),
(225, 65, 3),
(226, 66, 3),
(227, 67, 3),
(228, 68, 3),
(229, 69, 3),
(230, 70, 3),
(231, 71, 3),
(232, 72, 3),
(233, 73, 3),
(234, 74, 3),
(235, 75, 3),
(236, 76, 3),
(237, 77, 3),
(238, 78, 3),
(239, 79, 3),
(240, 80, 3),
(241, 1, 4),
(242, 2, 4),
(243, 3, 4),
(244, 4, 4),
(245, 5, 4),
(246, 6, 4),
(247, 7, 4),
(248, 8, 4),
(249, 9, 4),
(250, 10, 4),
(251, 11, 4),
(252, 12, 4),
(253, 13, 4),
(254, 14, 4),
(255, 15, 4),
(256, 16, 4),
(257, 17, 4),
(258, 18, 4),
(259, 19, 4),
(260, 20, 4),
(261, 21, 4),
(262, 22, 4),
(263, 23, 4),
(264, 24, 4),
(265, 25, 4),
(266, 26, 4),
(267, 27, 4),
(268, 28, 4),
(269, 29, 4),
(270, 30, 4),
(271, 31, 4),
(272, 32, 4),
(273, 33, 4),
(274, 34, 4),
(275, 35, 4),
(276, 36, 4),
(277, 37, 4),
(278, 38, 4),
(279, 39, 4),
(280, 40, 4),
(281, 41, 4),
(282, 42, 4),
(283, 43, 4),
(284, 44, 4),
(285, 45, 4),
(286, 46, 4),
(287, 47, 4),
(288, 48, 4),
(289, 49, 4),
(290, 50, 4),
(291, 51, 4),
(292, 52, 4),
(293, 53, 4),
(294, 54, 4),
(295, 55, 4),
(296, 56, 4),
(297, 57, 4),
(298, 58, 4),
(299, 59, 4),
(300, 60, 4),
(301, 61, 4),
(302, 62, 4),
(303, 63, 4),
(304, 64, 4),
(305, 65, 4),
(306, 66, 4),
(307, 67, 4),
(308, 68, 4),
(309, 69, 4),
(310, 70, 4),
(311, 71, 4),
(312, 72, 4),
(313, 73, 4),
(314, 74, 4),
(315, 75, 4),
(316, 76, 4),
(317, 77, 4),
(318, 78, 4),
(319, 79, 4),
(320, 80, 4),
(321, 1, 5),
(322, 2, 5),
(323, 3, 5),
(324, 4, 5),
(325, 5, 5),
(326, 6, 5),
(327, 7, 5),
(328, 8, 5),
(329, 9, 5),
(330, 10, 5),
(331, 11, 5),
(332, 12, 5),
(333, 13, 5),
(334, 14, 5),
(335, 15, 5),
(336, 16, 5),
(337, 17, 5),
(338, 18, 5),
(339, 19, 5),
(340, 20, 5),
(341, 21, 5),
(342, 22, 5),
(343, 23, 5),
(344, 24, 5),
(345, 25, 5),
(346, 26, 5),
(347, 27, 5),
(348, 28, 5),
(349, 29, 5),
(350, 30, 5),
(351, 31, 5),
(352, 32, 5),
(353, 33, 5),
(354, 34, 5),
(355, 35, 5),
(356, 36, 5),
(357, 37, 5),
(358, 38, 5),
(359, 39, 5),
(360, 40, 5),
(361, 41, 5),
(362, 42, 5),
(363, 43, 5),
(364, 44, 5),
(365, 45, 5),
(366, 46, 5),
(367, 47, 5),
(368, 48, 5),
(369, 49, 5),
(370, 50, 5),
(371, 51, 5),
(372, 52, 5),
(373, 53, 5),
(374, 54, 5),
(375, 55, 5),
(376, 56, 5),
(377, 57, 5),
(378, 58, 5),
(379, 59, 5),
(380, 60, 5),
(381, 61, 5),
(382, 62, 5),
(383, 63, 5),
(384, 64, 5),
(385, 65, 5),
(386, 66, 5),
(387, 67, 5),
(388, 68, 5),
(389, 69, 5),
(390, 70, 5),
(391, 71, 5),
(392, 72, 5),
(393, 73, 5),
(394, 74, 5),
(395, 75, 5),
(396, 76, 5),
(397, 77, 5),
(398, 78, 5),
(399, 79, 5),
(400, 80, 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_ID` int(11) NOT NULL,
  `full_Name` varchar(100) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_ID`, `full_Name`, `phone_no`, `email`, `password`, `gender`, `address`, `location`) VALUES
(1, 'Vivek Singh', '1111111111', 'vivek@farmacy.com', 'f865b53623b121fd34ee5426c792e5c33af8c227', 'male', '001, farmacy house, ambernath', 'Ambernath'),
(2, 'Niraj Sonule', '2222222222', 'niraj@farmacy.com', 'f865b53623b121fd34ee5426c792e5c33af8c227', 'male', '002 Farmacy house, Badlapur', 'Badlapur'),
(3, 'Arun Vyas', '3333333333', 'arun@farmacy.com', 'f865b53623b121fd34ee5426c792e5c33af8c227', 'male', '003 Farmacy house, Dombivli', 'Dombivli'),
(4, 'Vrutwic Sangare', '4444444444', 'vrutwic@farmacy.com', 'f865b53623b121fd34ee5426c792e5c33af8c227', 'male', '004 Farmacy house, Byculla', 'Byculla'),
(5, 'Abhishek Vibhute', '5555555555', 'abhishek@farmacy.com', 'f865b53623b121fd34ee5426c792e5c33af8c227', 'male', '005 Farmacy house, Mulund', 'Mulund'),
(6, 'Shubham Niwate', '6666666666', 'shubham@farmacy.com', 'f865b53623b121fd34ee5426c792e5c33af8c227', 'male', '006 Farmacy house, Thane', 'Thane'),
(11, 'abc', '1234567890', 'abc@farmacy.com', 'f865b53623b121fd34ee5426c792e5c33af8c227', 'male', '009 Farmacy House, Bandra', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `hospitals_amenities`
--
ALTER TABLE `hospitals_amenities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hospital_id` (`hospital_id`),
  ADD KEY `amenity_id` (`amenity_id`);

--
-- Indexes for table `interested_users_products`
--
ALTER TABLE `interested_users_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `medicals`
--
ALTER TABLE `medicals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_in_medical`
--
ALTER TABLE `product_in_medical`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `medical_id` (`medical_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `hospitals_amenities`
--
ALTER TABLE `hospitals_amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `interested_users_products`
--
ALTER TABLE `interested_users_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `medicals`
--
ALTER TABLE `medicals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_in_medical`
--
ALTER TABLE `product_in_medical`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD CONSTRAINT `hospitals_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`);

--
-- Constraints for table `hospitals_amenities`
--
ALTER TABLE `hospitals_amenities`
  ADD CONSTRAINT `hospitals_amenities_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals` (`id`),
  ADD CONSTRAINT `hospitals_amenities_ibfk_2` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`id`);

--
-- Constraints for table `interested_users_products`
--
ALTER TABLE `interested_users_products`
  ADD CONSTRAINT `interested_users_products_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_ID`),
  ADD CONSTRAINT `interested_users_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`);

--
-- Constraints for table `product_in_medical`
--
ALTER TABLE `product_in_medical`
  ADD CONSTRAINT `product_in_medical_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_in_medical_ibfk_2` FOREIGN KEY (`medical_id`) REFERENCES `medicals` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
