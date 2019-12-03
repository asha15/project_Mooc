-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2019 at 06:04 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `r`
--

-- --------------------------------------------------------

--
-- Table structure for table `condidates`
--

CREATE TABLE `condidates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `course_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `published` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `slug`, `description`, `price`, `course_image`, `start_date`, `published`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Physics', 'carole-hirthe-dvm', 'Teacher in a famouse government school.10 year teching experience in advancelevel mathamatic stream.', '3.00', 'http://localhost/QuickLMS-20191103T053440Z-001/QuickLMS/img/physics.jpg', '2019-01-28', 1, '2018-12-30 03:01:35', '2019-01-28 02:48:36', NULL),
(2, 'Biology', 'okey-leannon', 'lecturer in a government university. professional educator in fields of physics and chemistry with divers experience.', '4.00', 'http://localhost/QuickLMS-20191103T053440Z-001/QuickLMS/img/biology.jpg', '2019-01-28', 1, '2018-12-30 03:01:35', '2019-01-28 02:48:56', NULL),
(3, 'chemistry', NULL, 'Chemistry is the scientific discipline involved with elements and compounds composed of atoms, molecules and ions: their composition, structure, properties, behavior and the changes they undergo during a reaction with other substances', NULL, 'http://localhost/Mooc/svr/img/chemistry.jpg', NULL, 0, NULL, NULL, NULL),
(4, 'chemistry', NULL, 'Chemistry', NULL, 'http://localhost/Mooc/svr/img/', NULL, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_student`
--

CREATE TABLE `course_student` (
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `rating` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_user`
--

CREATE TABLE `course_user` (
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lesson_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `free_lesson` tinyint(4) DEFAULT 0,
  `published` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `course_id`, `user_id`, `title`, `slug`, `lesson_image`, `short_text`, `full_text`, `position`, `free_lesson`, `published`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 8, 'Interprets weather conditions suitable for biological systems.', 'Interprets_weather', NULL, 'Weather forecasting is the application of science and technology to predict the conditions of the atmosphere for a given location and time.', '<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://en.wikipedia.org/wiki/File:Day5pressureforecast.png\"><img alt=\"\" src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Day5pressureforecast.png/250px-Day5pressureforecast.png\" style=\"height:150px; width:250px\" /></a></p>\r\n\r\n<p>Forecast of surface pressures five days into the future for the&nbsp;<a href=\"https://en.wikipedia.org/wiki/North_Pacific\" title=\"North Pacific\">North Pacific</a>, North America, and the&nbsp;<a href=\"https://en.wikipedia.org/wiki/North_Atlantic_Ocean\" title=\"North Atlantic Ocean\">North Atlantic Ocean</a></p>\r\n\r\n<p><br />\r\nOnce calculated by hand based mainly upon changes in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Atmospheric_pressure\" title=\"Atmospheric pressure\">barometric pressure</a>, current weather conditions, and sky condition or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Cloud\" title=\"Cloud\">cloud</a>&nbsp;cover, weather forecasting now relies on&nbsp;<a href=\"https://en.wikipedia.org/wiki/Numerical_weather_prediction\" title=\"\">computer-based models</a>&nbsp;that take many atmospheric factors into account.<sup><a href=\"https://en.wikipedia.org/wiki/Weather_forecasting#cite_note-1\">[1]</a></sup>&nbsp;Human input is still required to pick the best possible forecast model to base the forecast upon, which involves pattern recognition skills,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Teleconnection\" title=\"Teleconnection\">teleconnections</a>, knowledge of model performance, and knowledge of model biases. The inaccuracy of forecasting is due to the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Chaos_theory\" title=\"Chaos theory\">chaotic</a>&nbsp;nature of the atmosphere, the massive computational power required to solve the equations that describe the atmosphere, the error involved in measuring the initial conditions, and an incomplete understanding of atmospheric processes. Hence, forecasts become less accurate as the difference between current time and the time for which the forecast is being made (the&nbsp;<em>range</em>&nbsp;of the forecast) increases. The use of ensembles and model consensus help narrow the error and pick the most likely outcome.<strong>Weather forecasting</strong>&nbsp;is the application of science and technology to predict the conditions of the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Earth%27s_atmosphere\" title=\"Earth\'s atmosphere\">atmosphere</a>&nbsp;for a given location and time. People have attempted to predict the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Weather\" title=\"Weather\">weather</a>&nbsp;informally for&nbsp;<a href=\"https://en.wikipedia.org/wiki/Millennia\" title=\"Millennia\">millennia</a>&nbsp;and formally since the&nbsp;<a href=\"https://en.wikipedia.org/wiki/19th_century\" title=\"19th century\">19th century</a>. Weather forecasts are made by collecting quantitative&nbsp;<a href=\"https://en.wikipedia.org/wiki/Data\" title=\"Data\">data</a>&nbsp;about the current state of the atmosphere at a given place and using&nbsp;<a href=\"https://en.wikipedia.org/wiki/Meteorology\" title=\"Meteorology\">meteorology</a>&nbsp;to project how the atmosphere will change.</p>', 5, 1, 1, '2018-12-30 03:01:36', '2019-01-28 03:19:42', '2019-01-28 03:19:42'),
(2, 1, 8, 'lesson2:Investigates the soil in biological systems.', 'biosystems-technology-investigate', NULL, 'Soil is an unique biological system with an abundant microflora and a very high microbial diversity.', '<p><strong>Soil biology</strong> is the study of <a href=\"https://en.wikipedia.org/wiki/Soil_microbiology\" title=\"Soil microbiology\">microbial</a> and <a href=\"https://en.wikipedia.org/wiki/Fauna\" title=\"Fauna\">faunal</a> activity and <a href=\"https://en.wikipedia.org/wiki/Ecology\" title=\"Ecology\">ecology</a> in <a href=\"https://en.wikipedia.org/wiki/Soil\" title=\"Soil\">soil</a>. <strong>Soil life</strong>, <strong>soil biota</strong>, <strong>soil fauna</strong>, or <strong>edaphon</strong> is a collective term that encompasses all <a href=\"https://en.wikipedia.org/wiki/Organism\" title=\"Organism\">organisms</a> that spend a significant portion of their <a href=\"https://en.wikipedia.org/wiki/Biological_life_cycle\" title=\"Biological life cycle\">life cycle</a> within a soil profile, or at the soil-<a href=\"https://en.wikipedia.org/wiki/Plant_litter\" title=\"Plant litter\">litter</a> interface. These organisms include <a href=\"https://en.wikipedia.org/wiki/Earthworm\" title=\"Earthworm\">earthworms</a>, <a href=\"https://en.wikipedia.org/wiki/Nematode\" title=\"Nematode\">nematodes</a>, <a href=\"https://en.wikipedia.org/wiki/Protozoa\" title=\"Protozoa\">protozoa</a>, <a href=\"https://en.wikipedia.org/wiki/Fungi\" title=\"Fungi\">fungi</a>, <a href=\"https://en.wikipedia.org/wiki/Bacteria\" title=\"Bacteria\">bacteria</a>, different <a href=\"https://en.wikipedia.org/wiki/Arthropod\" title=\"Arthropod\">arthropods</a>, as well as some reptiles (such as <a href=\"https://en.wikipedia.org/wiki/Snakes\" title=\"Snakes\">snakes</a>), and species of burrowing mammals like <a href=\"https://en.wikipedia.org/wiki/Gophers\" title=\"Gophers\">gophers</a>, <a href=\"https://en.wikipedia.org/wiki/Mole_(animal)\" title=\"Mole (animal)\">moles</a> and <a href=\"https://en.wikipedia.org/wiki/Prairie_dogs\" title=\"Prairie dogs\">prairie dogs</a>. Soil biology plays a vital role in determining many soil characteristics. The decomposition of <a href=\"https://en.wikipedia.org/wiki/Soil_organic_matter\" title=\"Soil organic matter\">organic matter</a> by soil organisms has an immense influence on soil fertility, <a href=\"https://en.wikipedia.org/wiki/Plant_development\" title=\"Plant development\">plant growth</a>, <a href=\"https://en.wikipedia.org/wiki/Soil_structure\" title=\"Soil structure\">soil structure</a>, and <a href=\"https://en.wikipedia.org/wiki/Carbon_cycle\" title=\"Carbon cycle\">carbon storage</a>. As a relatively new science, much remains unknown about soil biology and its effect on soil <a href=\"https://en.wikipedia.org/wiki/Ecosystem\" title=\"Ecosystem\">ecosystems</a>.</p>\r\n\r\n<h2>Bacteria[<a href=\"https://en.wikipedia.org/w/index.php?title=Soil_biology&action=edit&section=4\" title=\"Edit section: Bacteria\">edit</a>]</h2>\r\n\r\n<p><a href=\"https://en.wikipedia.org/wiki/Bacteria\" title=\"Bacteria\">Bacteria</a> are single-cell organisms and the most numerous denizens of agriculture, with populations ranging from 100 million to 3 billion in a gram. They are capable of very rapid reproduction by binary fission (dividing into two) in favourable conditions. One bacterium is capable of producing 16 million more in just 24 hours. Most soil bacteria live close to plant roots and are often referred to as rhizobacteria. Bacteria live in soil water, including the film of moisture surrounding soil particles, and some are able to swim by means of <a href=\"https://en.wikipedia.org/wiki/Flagellum\" title=\"Flagellum\">flagella</a>. The majority of the beneficial soil-dwelling bacteria need oxygen (and are thus termed <a href=\"https://en.wikipedia.org/wiki/Aerobic_organism\" title=\"Aerobic organism\">aerobic</a>bacteria), whilst those that do not require air are referred to as <a href=\"https://en.wikipedia.org/wiki/Anaerobic_organism\" title=\"Anaerobic organism\">anaerobic</a>, and tend to cause <a href=\"https://en.wikipedia.org/wiki/Putrefaction\" title=\"Putrefaction\">putrefaction</a> of dead organic matter. Aerobic bacteria are most active in a <a href=\"https://en.wikipedia.org/wiki/Soil\" title=\"Soil\">soil</a> that is moist (but not saturated, as this will deprive aerobic bacteria of the air that they require), and neutral <a href=\"https://en.wikipedia.org/wiki/Soil_pH\" title=\"Soil\r\n<p> </p>\r\n\r\n<p><a href=\"https://en.wikipedia.org/wiki/File:Nitrogen_Cycle.jpg\"><img alt=\"\" src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Nitrogen_Cycle.jpg/350px-Nitrogen_Cycle.jpg\" style=\"height:273px; width:350px\" /></a></p>\r\n\r\n<p>The nitrogen cycle</p>\r\n\r\n<h3>Nitrification[<a href=\"https://en.wikipedia.org/w/index.php?title=Soil_biology&action=edit&section=5\" title=\"Edit section: Nitrification\">edit</a>]</h3>\r\n\r\n<p><a href=\"https://en.wikipedia.org/wiki/Nitrification\" title=\"Nitrification\">Nitrification</a> is a vital part of the <a href=\"https://en.wikipedia.org/wiki/Nitrogen_cycle\" title=\"Nitrogen cycle\">nitrogen cycle</a>, wherein certain bacteria (which manufacture their own <a href=\"https://en.wikipedia.org/wiki/Carbohydrate\" title=\"Carbohydrate\">carbohydrate</a> supply without using the process of photosynthesis) are able to transform <a href=\"https://en.wikipedia.org/wiki/Nitrogen\" title=\"Nitrogen\">nitrogen</a> in the form of <a href=\"https://en.wikipedia.org/wiki/Ammonium\" title=\"Ammonium\">ammonium</a>, which is produced by the decomposition of <a href=\"https://en.wikipedia.org/wiki/Protein\" title=\"Protein\">proteins</a>, into <a href=\"https://en.wikipedia.org/wiki/Nitrate\" title=\"Nitrate\">nitrates</a>, which are available to growing plants, and once again converted to proteins.</p>\r\n\r\n<h3>Nitrogen fixation[<a href=\"https://en.wikipedia.org/w/index.php?title=Soil_biology&action=edit&section=6\" title=\"Edit section: Nitrogen fixation\">edit</a>]</h3>\r\n\r\n<p>In another part of the cycle, the process of <a href=\"https://en.wikipedia.org/wiki/Nitrogen_fixation\" title=\"Nitrogen fixation\">nitrogen fixation</a> constantly puts additional nitrogen into biological circulation. This is carried out by free-living nitrogen-fixing bacteria in the soil or water such as <em><a href=\"https://en.wikipedia.org/wiki/Azotobacter\" title=\"Azotobacter\">Azotobacter</a></em>, or by those that live in close symbiosis with <a href=\"https://en.wikipedia.org/wiki/Legume\" title=\"Legume\">leguminous</a> plants, such as <a href=\"https://en.wikipedia.org/wiki/Rhizobia\" title=\"Rhizobia\">rhizobia</a>. These bacteria form colonies in nodules they create on the roots of <a href=\"https://en.wikipedia.org/wiki/Pea\" title=\"Pea\">peas</a>, <a href=\"https://en.wikipedia.org/wiki/Bean\" title=\"Bean\">beans</a>, and related species. These are able to convert nitrogen from the atmosphere into nitrogen-containing organic substances.<sup><a href=\"https://en.wikipedia.org/wiki/Soil_biology#cite_note-epa-2\">[2]</a></sup></p>\r\n\r\n<h3>Denitrification[<a href=\"https://en.wikipedia.org/w/index.php?title=Soil_biology&action=edit&section=7\" title=\"Edit section: Denitrification\">edit</a>]</h3>\r\n\r\n<p>While nitrogen fixation converts nitrogen from the <a href=\"https://en.wikipedia.org/wiki/Earth%27s_atmosphere\" title=\"Earth\'s atmosphere\">atmosphere</a> into organic compounds, a series of processes called <a href=\"https://en.wikipedia.org/wiki/Denitrification\" title=\"Denitrification\">denitrification</a> returns an approximately equal amount of nitrogen to the atmosphere. Denitrifying bacteria tend to be anaerobes, or facultatively anaerobes (can alter between the oxygen dependent and oxygen independent types of metabolisms), including <em><a href=\"https://en.wikipedia.org/wiki/Achromobacter\" title=\"Achromobacter\">Achromobacter</a></em> and <em><a href=\"https://en.wikipedia.org/wiki/Pseudomonas\" title=\"Pseudomonas\">Pseudomonas</a></em>. The purification process caused by oxygen-free conditions converts nitrates and nitrites in soil into nitrogen gas or into gaseous compounds such as <a href=\"https://en.wikipedia.org/wiki/Nitrous_oxide\" title=\"Nitrous oxide\">nitrous oxide</a> or <a href=\"https://en.wikipedia.org/wiki/Nitric_oxide\" title=\"Nitric oxide\">nitric oxide</a>. In excess, denitrification can lead to overall losses of available soil nitrogen and subsequent loss of soil fertility. However, fixed nitrogen may circulate many times between organisms and the soil before denitrification returns it to the atmosphere. The diagram above illustrates the nitrogen cycle.</p>\r\n\r\n<h3>Actinobacteria[<a href=\"https://en.wikipedia.org/w/index.php?title=Soil_biology&action=edit&section=8\" title=\"Edit section: Actinobacteria\">edit</a>]</h3>\r\n\r\n<p><a href=\"https://en.wikipedia.org/wiki/Actinobacteria\" title=\"Actinobacteria\">Actinobacteria</a> are critical in the decomposition of <a href=\"https://en.wikipedia.org/wiki/Organic_matter\" title=\"Organic matter\">organic matter</a> and in <a href=\"https://en.wikipedia.org/wiki/Humus\" title=\"Humus\">humus</a> formation, and their presence is responsible for the sweet \"earthy\" aroma associated with a good healthy soil. They require plenty of air and a pH between 6.0 and 7.5, but are more tolerant of dry conditions than most other bacteria and fungi.</p>\r\n\r\n<h2>Fungi[<a href=\"https://en.wikipedia.org/w/index.php?title=Soil_biology&action=edit&section=9\" title=\"Edit section: Fungi\">edit</a>]</h2>\r\n\r\n<p>A gram of garden soil can contain around one million <a href=\"https://en.wikipedia.org/wiki/Fungus\" title=\"Fungus\">fungi</a>, such as <a href=\"https://en.wikipedia.org/wiki/Yeast\" title=\"Yeast\">yeasts</a> and <a href=\"https://en.wikipedia.org/wiki/Mould\" title=\"Mould\">moulds</a>. Fungi have no <a href=\"https://en.wikipedia.org/wiki/Chlorophyll\" title=\"Chlorophyll\">chlorophyll</a>, and are not able to <a href=\"https://en.wikipedia.org/wiki/Photosynthesis\" title=\"Photosynthesis\">photosynthesise</a>. They cannot use atmospheric carbon dioxide as a source of carbon, therefore they are <a href=\"https://en.wikipedia.org/wiki/Chemoorganoheterotrophy\" title=\"Chemoorganoheterotrophy\">chemo-heterotrophic</a>, meaning that, like <a href=\"https://en.wikipedia.org/wiki/Animal\" title=\"Animal\">animals</a>, they require a chemical source of energy rather than being able to use light as an energy source, as well as organic substrates to get carbon for growth and development.</p>\r\n\r\n<p>Many fungi are parasitic, often causing disease to their living host plant, although some have beneficial relationships with living plants, as illustrated below. In terms of soil and humus creation, the most important fungi tend to be <a href=\"https://en.wikipedia.org/wiki/Saprotrophic\" title=\"Saprotrophic\">saprotrophic</a>; that is, they live on dead or decaying organic matter, thus breaking it down and converting it to forms that are available to the higher plants. A succession of fungi species will colonise the dead matter, beginning with those that use sugars and starches, which are succeeded by those that are able to break down <a href=\"https://en.wikipedia.org/wiki/Cellulose\" title=\"Cellulose\">cellulose</a> and <a href=\"https://en.wikipedia.org/wiki/Lignin\" title=\"Lignin\">lignins</a>.</p>\r\n\r\n<p>Fungi spread underground by sending long thin threads known as <a href=\"https://en.wikipedia.org/wiki/Mycelium\" title=\"Mycelium\">mycelium</a> throughout the soil; these threads can be observed throughout many soils and <a href=\"https://en.wikipedia.org/wiki/Compost\" title=\"Compost\">compost</a> heaps. From the mycelia the fungi is able to throw up its fruiting bodies, the visible part above the soil (e.g., <a href=\"https://en.wikipedia.org/wiki/Mushroom\" title=\"Mushroom\">mushrooms</a>, <a href=\"https://en.wikipedia.org/wiki/Toadstool\" title=\"Toadstool\">toadstools</a>, and <a href=\"https://en.wikipedia.org/wiki/Puffball\" title=\"Puffball\">puffballs</a>), which may contain millions of <a href=\"https://en.wikipedia.org/wiki/Spore\" title=\"Spore\">spores</a>. When the <a href=\"https://en.wikipedia.org/wiki/Fruiting_body\" title=\"Fruiting body\">fruiting body</a> bursts, these spores are dispersed through the air to settle in fresh environments, and are able to lie dormant for up to years until the right conditions for their activation arise or the right food is made available.</p>', 10, 1, 1, '2018-12-30 03:01:36', '2019-01-28 10:12:11', NULL),
(3, 1, 8, 'Exhibits readiness for surveying and levelling.', 'Exhibitsreadiness_bs', NULL, 'A level staff, also called levelling rod, is a graduated wooden or aluminium rod, used with a levelling instrument to determine the difference in height between points or heights of points above a datum surface.', '<p><a href=\"https://cdn.instructables.com/F2L/SMAX/IKVHY7D7/F2LSMAXIKVHY7D7.LARGE.jpg\" rel=\"photoset73\"><img src=\"https://cdn.instructables.com/F2L/SMAX/IKVHY7D7/F2LSMAXIKVHY7D7.LARGE.jpg?auto=webp&amp;width=525\" /></a></p>\r\n\r\n<p>Every construction project relies on accurate measurements and the Total Station is one of the most important pieces of surveying equipment used in the industry today. From setting building corners to sighting utility lines, this sophisticated instrument provides surveyors with an important time-saving tool.</p>\r\n\r\n<p>However, regardless of how technologically advanced the Total Station is built, it takes a competent surveyor to ensure an accurate and precise instrument station set-up. Let&rsquo;s take a look at the steps involved to properly set up and level the Trimble Total Station.</p>\r\n\r\n<p>The survey equipment in this instructable can be purchased through the manufacturer at<a href=\"http://www.trimble.com./\" rel=\"nofollow\">www.trimble.com.&nbsp;</a>No endorsement intended.</p>\r\n\r\n<p>Disclaimer &ndash; &ldquo;This instructable has been created as a simple guide to set-up and level the Total Station surveying instrument. It should be noted that I am not a professionally licensed surveyor and this guide does not demonstrate specific surveying operations. Safety considerations include caution when moving the sharp legs of the tripod and appropriate clothing as the local climate dictates&rdquo;.</p>', 9, 1, 1, '2018-12-30 03:01:36', '2019-01-28 03:19:36', '2019-01-28 03:19:36'),
(4, 1, 8, 'lesson1:Investigates the water resources in biological systems', 'water_resources', NULL, 'Amet doloribus rerum et cupiditate aut laborum cupiditate. Vero dolorum consequatur natus beatae.', '<p><strong>Water resources </strong>are <a href=\"https://en.wikipedia.org/wiki/Natural_resource\" title=\"Natural resource\">natural resources</a> of <a href=\"https://en.wikipedia.org/wiki/Water\" title=\"Water\">water</a> that are potentially useful. Uses of water include <a href=\"https://en.wikipedia.org/wiki/Agricultural\" title=\"Agricultural\">agricultural</a>, <a href=\"https://en.wikipedia.org/wiki/Industry\" title=\"Industry\">industrial</a>, <a href=\"https://en.wikipedia.org/wiki/Household\" title=\"Household\">household</a>, <a href=\"https://en.wikipedia.org/wiki/Recreational\" title=\"Recreational\">recreational</a> and <a href=\"https://en.wikipedia.org/wiki/Natural_environment\" title=\"Natural environment\">environmental</a> activities. All living things require water to grow and reproduce.</p>\r\n\r\n<p>97% of the water on the Earth is salt water and only three percent is <a href=\"https://en.wikipedia.org/wiki/Fresh_water\" title=\"Fresh water\">fresh water</a>; slightly over two thirds of this is frozen in <a href=\"https://en.wikipedia.org/wiki/Glacier\" title=\"Glacier\">glaciers</a> and <a href=\"https://en.wikipedia.org/wiki/Polar_climate\" title=\"Polar climate\">polar</a> <a href=\"https://en.wikipedia.org/wiki/Ice_cap\" title=\"Ice cap\">ice caps</a>.<sup><a href=\"https://en.wikipedia.org/wiki/Water_resources#cite_note-USGS_dist-1\">[1]</a></sup> The remaining unfrozen freshwater is found mainly as groundwater, with only a small fraction present above ground or in the air.<sup><a href=\"https://en.wikipedia.org/wiki/Water_resources#cite_note-2\">[2]</a></sup></p>\r\n\r\n<p>Fresh water is a <a href=\"https://en.wikipedia.org/wiki/Renewable_resource\" title=\"Renewable resource\">renewable resource</a>, yet the world\'s supply of <a href=\"https://en.wikipedia.org/wiki/Groundwater\" title=\"Groundwater\">groundwater</a> is steadily decreasing, with depletion occurring most prominently in Asia, South America and North America, although it is still unclear how much natural renewal balances this usage, and whether <a href=\"https://en.wikipedia.org/wiki/Ecosystem\" title=\"Ecosystem\">ecosystems</a> are threatened.<sup><a href=\"https://en.wikipedia.org/wiki/Water_resources#cite_note-3\">[3]</a></sup> The framework for allocating water resources to water users (where such a framework exists) is known as <a href=\"https://en.wikipedia.org/wiki/Water_rights\" title=\"Water rights\">water rights</a>.</p>\r\n\r\n<h3>Surface water</h3>\r\n\r\n<p>Main article: <a href=\"https://en.wikipedia.org/wiki/Surface_water\" title=\"Surface water\">Surface water</a></p>\r\n\r\n<p><a href=\"https://en.wikipedia.org/wiki/File:Parinacota.jpg\"><img alt=\"\" src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Parinacota.jpg/220px-Parinacota.jpg\" style=\"height:162px; width:220px\" /></a></p>\r\n\r\n<p><a href=\"https://en.wikipedia.org/wiki/Lake_Chungar%C3%A1\" title=\"Lake Chungará\">Lake Chungará</a> and <a href=\"https://en.wikipedia.org/wiki/Parinacota_Volcano\" title=\"Parinacota Volcano\">Parinacota</a>volcano in northern Chile</p>\r\n\r\n<p>Surface water is water in a river, <a href=\"https://en.wikipedia.org/wiki/Lake\" title=\"Lake\">lake</a> or fresh water <a href=\"https://en.wikipedia.org/wiki/Wetland\" title=\"Wetland\">wetland</a>. Surface water is naturally replenished by <a href=\"https://en.wikipedia.org/wiki/Precipitation_(meteorology)\" title=\"Precipitation (meteorology)\">precipitation</a> and naturally lost through discharge to the <a href=\"https://en.wikipedia.org/wiki/Oceans\" title=\"Oceans\">oceans</a>, <a href=\"https://en.wikipedia.org/wiki/Evaporation\" title=\"Evaporation\">evaporation</a>, <a href=\"https://en.wikipedia.org/wiki/Evapotranspiration\" title=\"Evapotranspiration\">evapotranspiration</a> and <a href=\"https://en.wikipedia.org/wiki/Groundwater_recharge\" title=\"Groundwater recharge\">groundwater recharge</a>.</p>\r\n\r\n<p>Although the only natural input to any surface water system is precipitation within its <a href=\"https://en.wikipedia.org/wiki/Drainage_basin\" title=\"Drainage basin\">watershed</a>, the total quantity of water in that system at any given time is also dependent on many other factors. These factors include storage capacity in lakes, wetlands and artificial <a href=\"https://en.wikipedia.org/wiki/Reservoir_(water)\" title=\"Reservoir (water)\">reservoirs</a>, the permeability of the <a href=\"https://en.wikipedia.org/wiki/Soil\" title=\"Soil\">soil</a> beneath these storage bodies, the <a href=\"https://en.wikipedia.org/wiki/Surface_runoff\" title=\"Surface runoff\">runoff</a> characteristics of the land in the watershed, the timing of the precipitation and local evaporation rates. All of these factors also affect the proportions of water loss.</p>\r\n\r\n<p>Human activities can have a large and sometimes devastating impact on these factors. Humans often increase storage capacity by constructing reservoirs and decrease it by draining wetlands. Humans often increase runoff quantities and velocities by paving areas and channelizing the stream flow.</p>\r\n\r\n<p>The total quantity of water available at any given time is an important consideration. Some human water users have an intermittent need for water. For example, many <a href=\"https://en.wikipedia.org/wiki/Farm\" title=\"Farm\">farms</a> require large quantities of water in the spring, and no water at all in the winter. To supply such a farm with water, a surface water system may require a large storage capacity to collect water throughout the year and release it in a short period of time. Other users have a continuous need for water, such as a <a href=\"https://en.wikipedia.org/wiki/Power_plant\" title=\"Power plant\">power plant</a> that requires water for cooling. To supply such a power plant with water, a surface water system only needs enough storage capacity to fill in when average stream flow is below the power plant\'s need.</p>\r\n\r\n<p>Nevertheless, over the long term the average rate of precipitation within a watershed is the upper bound for average consumption of natural surface water from that watershed.</p>\r\n\r\n<p>Natural surface water can be augmented by importing surface water from another watershed through a <a href=\"https://en.wikipedia.org/wiki/Canal\" title=\"Canal\">canal</a> or <a href=\"https://en.wikipedia.org/wiki/Pipeline_transport\" title=\"Pipeline transport\">pipeline</a>. It can also be artificially augmented from any of the other sources listed here, however in practice the quantities are negligible. Humans can also cause surface water to be \"lost\" (i.e. become unusable) through <a href=\"https://en.wikipedia.org/wiki/Pollution\" title=\"Pollution\">pollution</a>.</p>\r\n\r\n<p><a href=\"https://en.wikipedia.org/wiki/Brazil\" title=\"Brazil\">Brazil</a> is estimated to have the largest supply of fresh water in the world, followed by <a href=\"https://en.wikipedia.org/wiki/Russia\" title=\"Russia\">Russia</a> and <a href=\"https://en.wikipedia.org/wiki/Canada\" title=\"Canada\">Canada</a>.<sup><a href=\"https://en.wikipedia.org/wiki/Water_resources#cite_note-4\">[4]</a></sup></p>', 7, 1, 1, '2018-12-30 03:01:36', '2019-01-28 10:11:52', NULL),
(19, 1, 8, 'blah', NULL, NULL, 'blah', 'fullblah', NULL, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lesson_student`
--

CREATE TABLE `lesson_student` (
  `lesson_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lesson_student`
--

INSERT INTO `lesson_student` (`lesson_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 7, '2019-01-24 11:09:28', '2019-01-24 11:09:28'),
(1, 1, '2019-01-26 01:33:18', '2019-01-26 01:33:18'),
(3, 1, '2019-01-26 03:25:06', '2019-01-26 03:25:06'),
(2, 1, '2019-01-27 02:59:08', '2019-01-27 02:59:08'),
(4, 1, '2019-01-27 03:01:55', '2019-01-27 03:01:55');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED DEFAULT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `manipulations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_id`, `model_type`, `collection_name`, `name`, `file_name`, `disk`, `size`, `manipulations`, `custom_properties`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 52, 'App\\Lesson', 'downloadable_files', 'eALSyl ICT', 'eALSyl ICT.pdf', 'media', 419923, '[]', '[]', 1, '2019-01-26 03:51:48', '2019-01-26 03:51:56'),
(2, 11, 'App\\Lesson', 'downloadable_files', 'eALSyl BST', 'eALSyl BST.pdf', 'media', 295722, '[]', '[]', 1, '2019-01-28 04:10:28', '2019-01-28 04:10:33');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2017_07_19_082005_create_1500441605_permissions_table', 1),
(3, '2017_07_19_082006_create_1500441606_roles_table', 1),
(4, '2017_07_19_082009_create_1500441609_users_table', 1),
(5, '2017_07_19_082347_create_1500441827_courses_table', 1),
(6, '2017_07_19_082723_create_1500442043_lessons_table', 1),
(7, '2017_07_19_082724_create_media_table', 1),
(8, '2017_07_19_082929_create_1500442169_questions_table', 1),
(9, '2017_07_19_083047_create_1500442247_questions_options_table', 1),
(10, '2017_07_19_083236_create_1500442356_tests_table', 1),
(11, '2017_07_19_120427_create_596eec08307cd_permission_role_table', 1),
(12, '2017_07_19_120430_create_596eec0af366b_role_user_table', 1),
(13, '2017_07_19_120808_create_596eece522a6e_course_user_table', 1),
(14, '2017_07_19_121657_create_596eeef709839_question_test_table', 1),
(15, '2017_08_14_085956_create_course_students_table', 1),
(16, '2017_08_17_051131_create_tests_results_table', 1),
(17, '2017_08_17_051254_create_tests_results_answers_table', 1),
(18, '2017_08_18_054622_create_lesson_student_table', 1),
(19, '2017_08_18_060324_add_rating_to_course_student_table', 1),
(20, '2019_01_29_125136_create_condidates_table', 2),
(23, '2019_11_07_161706_create_teachers_table', 3),
(24, '2019_11_12_053840_add_profile_to_lessons', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'user_management_access', '2018-12-30 03:01:24', '2018-12-30 03:01:24'),
(2, 'user_management_create', '2018-12-30 03:01:24', '2018-12-30 03:01:24'),
(3, 'user_management_edit', '2018-12-30 03:01:24', '2018-12-30 03:01:24'),
(4, 'user_management_view', '2018-12-30 03:01:24', '2018-12-30 03:01:24'),
(5, 'user_management_delete', '2018-12-30 03:01:24', '2018-12-30 03:01:24'),
(6, 'permission_access', '2018-12-30 03:01:24', '2018-12-30 03:01:24'),
(7, 'permission_create', '2018-12-30 03:01:24', '2018-12-30 03:01:24'),
(8, 'permission_edit', '2018-12-30 03:01:24', '2018-12-30 03:01:24'),
(9, 'permission_view', '2018-12-30 03:01:24', '2018-12-30 03:01:24'),
(10, 'permission_delete', '2018-12-30 03:01:24', '2018-12-30 03:01:24'),
(11, 'role_access', '2018-12-30 03:01:24', '2018-12-30 03:01:24'),
(12, 'role_create', '2018-12-30 03:01:25', '2018-12-30 03:01:25'),
(13, 'role_edit', '2018-12-30 03:01:25', '2018-12-30 03:01:25'),
(14, 'role_view', '2018-12-30 03:01:25', '2018-12-30 03:01:25'),
(15, 'role_delete', '2018-12-30 03:01:25', '2018-12-30 03:01:25'),
(16, 'user_access', '2018-12-30 03:01:25', '2018-12-30 03:01:25'),
(17, 'user_create', '2018-12-30 03:01:25', '2018-12-30 03:01:25'),
(18, 'user_edit', '2018-12-30 03:01:25', '2018-12-30 03:01:25'),
(19, 'user_view', '2018-12-30 03:01:25', '2018-12-30 03:01:25'),
(20, 'user_delete', '2018-12-30 03:01:25', '2018-12-30 03:01:25'),
(21, 'course_access', '2018-12-30 03:01:25', '2018-12-30 03:01:25'),
(22, 'course_create', '2018-12-30 03:01:25', '2018-12-30 03:01:25'),
(23, 'course_edit', '2018-12-30 03:01:25', '2018-12-30 03:01:25'),
(24, 'course_view', '2018-12-30 03:01:25', '2018-12-30 03:01:25'),
(25, 'course_delete', '2018-12-30 03:01:25', '2018-12-30 03:01:25'),
(26, 'lesson_access', '2018-12-30 03:01:25', '2018-12-30 03:01:25'),
(27, 'lesson_create', '2018-12-30 03:01:25', '2018-12-30 03:01:25'),
(28, 'lesson_edit', '2018-12-30 03:01:25', '2018-12-30 03:01:25'),
(29, 'lesson_view', '2018-12-30 03:01:26', '2018-12-30 03:01:26'),
(30, 'lesson_delete', '2018-12-30 03:01:26', '2018-12-30 03:01:26'),
(31, 'question_access', '2018-12-30 03:01:26', '2018-12-30 03:01:26'),
(32, 'question_create', '2018-12-30 03:01:26', '2018-12-30 03:01:26'),
(33, 'question_edit', '2018-12-30 03:01:26', '2018-12-30 03:01:26'),
(34, 'question_view', '2018-12-30 03:01:26', '2018-12-30 03:01:26'),
(35, 'question_delete', '2018-12-30 03:01:26', '2018-12-30 03:01:26'),
(36, 'questions_option_access', '2018-12-30 03:01:26', '2018-12-30 03:01:26'),
(37, 'questions_option_create', '2018-12-30 03:01:26', '2018-12-30 03:01:26'),
(38, 'questions_option_edit', '2018-12-30 03:01:26', '2018-12-30 03:01:26'),
(39, 'questions_option_view', '2018-12-30 03:01:26', '2018-12-30 03:01:26'),
(40, 'questions_option_delete', '2018-12-30 03:01:26', '2018-12-30 03:01:26'),
(41, 'test_access', '2018-12-30 03:01:26', '2018-12-30 03:01:26'),
(42, 'test_create', '2018-12-30 03:01:26', '2018-12-30 03:01:26'),
(43, 'test_edit', '2018-12-30 03:01:26', '2018-12-30 03:01:26'),
(44, 'test_view', '2018-12-30 03:01:26', '2018-12-30 03:01:26'),
(45, 'test_delete', '2018-12-30 03:01:27', '2018-12-30 03:01:27');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(1, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(1, 3),
(21, 3),
(24, 3),
(26, 3),
(29, 3),
(31, 3),
(34, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(44, 3);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `question_image`, `score`, `created_at`, `updated_at`, `deleted_at`) VALUES
(55, 'Use of living organisms to serve humans is?', NULL, 1, '2019-01-28 03:01:57', '2019-01-28 03:01:57', NULL),
(56, 'Protein content called novel is produced by using?', NULL, 1, '2019-01-28 03:04:24', '2019-01-28 03:13:04', '2019-01-28 03:13:04'),
(57, 'Protein content called novel is produced by using?', NULL, 1, '2019-01-28 03:14:37', '2019-01-28 03:14:37', NULL),
(58, 'The nitrogen bases which pair with two hydrogen bonds are?', NULL, 1, '2019-01-28 03:31:28', '2019-01-28 03:31:28', NULL),
(59, 'DNA differs from RNA in ?', NULL, 1, '2019-01-28 03:33:25', '2019-01-28 03:33:25', NULL),
(60, 'Which of the following enzyme is required to release the tension imposed by uncoiling of strands?', NULL, 1, '2019-01-28 03:35:13', '2019-01-28 03:35:13', NULL),
(61, 'Formation of mRNA from DNA is called?', NULL, 1, '2019-01-28 03:36:29', '2019-01-28 03:36:29', NULL),
(62, '\'Nif gene\' for nitrogen fixation is cereal crops like wheat, etc is introduced by cloning?', NULL, 1, '2019-01-28 03:38:15', '2019-01-28 03:38:15', NULL),
(63, 'In recombinant DNA technology a plasmid vector is cleaved ?', NULL, 1, '2019-01-28 03:39:26', '2019-01-28 03:39:26', NULL),
(64, 'The enzyme that cuts the bonds of DNA molecule at the origin of replication is ?', NULL, 1, '2019-01-28 03:40:37', '2019-01-28 03:40:37', NULL),
(65, 'In 1857 it was proved that all fermentations are results of microbial activity by?', NULL, 1, '2019-01-28 03:42:10', '2019-01-28 03:42:10', NULL),
(66, 'Protein content which is extracted from mixed or pure cultures of yeasts, bacteria, algae and fungi is called?', NULL, 1, '2019-01-28 03:43:25', '2019-01-28 03:43:25', NULL),
(67, 'Human genome project was published in?', NULL, 1, '2019-01-28 03:46:09', '2019-01-28 03:46:09', NULL),
(68, 'If the strand of DNA has 35 nucleotides, how many phosphodiester bonds would exist?', NULL, 1, '2019-01-28 03:47:56', '2019-01-28 03:47:56', NULL),
(69, 'If the strand of DNA has 35 nucleotides, how many phosphodiester bonds would exist?', NULL, 1, '2019-01-28 03:50:59', '2019-01-28 03:50:59', NULL),
(70, 'Application of biotechnology procedures in medical processes is classified as?', NULL, 1, '2019-01-28 04:02:53', '2019-01-28 04:02:53', NULL),
(71, 'Work study is concerned with?', NULL, 1, '2019-01-28 04:12:43', '2019-01-28 04:12:43', NULL),
(72, 'Basic tool in work study is?', NULL, 1, '2019-01-28 04:14:12', '2019-01-28 04:14:12', NULL),
(73, 'What does symbol \'O\' imply in work study?', NULL, 1, '2019-01-28 04:15:27', '2019-01-28 04:15:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `questions_options`
--

CREATE TABLE `questions_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED DEFAULT NULL,
  `option_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions_options`
--

INSERT INTO `questions_options` (`id`, `question_id`, `option_text`, `correct`, `created_at`, `updated_at`, `deleted_at`) VALUES
(217, 55, 'Biotechnology', 0, '2019-01-28 03:01:57', '2019-01-28 03:01:57', NULL),
(218, 55, 'Social biology', 0, '2019-01-28 03:01:57', '2019-01-28 03:01:57', NULL),
(219, 55, 'Human biology', 1, '2019-01-28 03:01:57', '2019-01-28 03:01:57', NULL),
(220, 55, 'Service biology', 0, '2019-01-28 03:01:58', '2019-01-28 03:01:58', NULL),
(221, 56, 'Bacteria', 0, '2019-01-28 03:04:24', '2019-01-28 03:25:20', '2019-01-28 03:25:20'),
(222, 56, 'Virus', 0, '2019-01-28 03:04:24', '2019-01-28 03:25:08', '2019-01-28 03:25:08'),
(223, 56, 'Fungi', 1, '2019-01-28 03:04:24', '2019-01-28 03:25:08', '2019-01-28 03:25:08'),
(224, 56, 'Micro-organisms', 0, '2019-01-28 03:04:24', '2019-01-28 03:25:09', '2019-01-28 03:25:09'),
(225, 57, 'Bacteria', 0, '2019-01-28 03:14:37', '2019-01-28 03:24:10', '2019-01-28 03:24:10'),
(226, 57, 'Virus', 0, '2019-01-28 03:14:37', '2019-01-28 03:24:10', '2019-01-28 03:24:10'),
(227, 57, 'Fungi', 1, '2019-01-28 03:14:37', '2019-01-28 03:24:10', '2019-01-28 03:24:10'),
(228, 57, 'Micro-organisms', 0, '2019-01-28 03:14:37', '2019-01-28 03:24:10', '2019-01-28 03:24:10'),
(229, 57, 'Bacteria', 0, '2019-01-28 03:26:14', '2019-01-28 03:26:14', NULL),
(230, 57, 'Virus', 0, '2019-01-28 03:26:38', '2019-01-28 03:26:38', NULL),
(231, 57, 'Fungi', 1, '2019-01-28 03:26:59', '2019-01-28 03:26:59', NULL),
(232, 57, 'Micro-organisms', 0, '2019-01-28 03:27:28', '2019-01-28 03:27:28', NULL),
(233, 58, 'Adenine and thymine', 0, '2019-01-28 03:31:28', '2019-01-28 03:31:28', NULL),
(234, 58, 'Adenine and cytosine', 1, '2019-01-28 03:31:28', '2019-01-28 03:31:28', NULL),
(235, 58, 'Cytosine and guanine', 0, '2019-01-28 03:31:28', '2019-01-28 03:31:28', NULL),
(236, 58, 'Cytosine and adenine', 0, '2019-01-28 03:31:28', '2019-01-28 03:31:28', NULL),
(237, 59, 'Presence of deoxyribose sugar', 1, '2019-01-28 03:33:25', '2019-01-28 03:33:25', NULL),
(238, 59, 'Presence of thymine base', 1, '2019-01-28 03:33:25', '2019-01-28 03:33:25', NULL),
(239, 59, 'Property of replication', 0, '2019-01-28 03:33:25', '2019-01-28 03:33:25', NULL),
(240, 59, 'All of the above', 0, '2019-01-28 03:33:25', '2019-01-28 03:33:25', NULL),
(241, 60, 'Endonuclease', 0, '2019-01-28 03:35:13', '2019-01-28 03:35:13', NULL),
(242, 60, 'DNA ligase', 0, '2019-01-28 03:35:13', '2019-01-28 03:35:13', NULL),
(243, 60, 'DNA gyrase', 1, '2019-01-28 03:35:13', '2019-01-28 03:35:13', NULL),
(244, 60, 'DNA helicase', 0, '2019-01-28 03:35:13', '2019-01-28 03:35:13', NULL),
(245, 61, 'Transformation', 0, '2019-01-28 03:36:29', '2019-01-28 03:36:29', NULL),
(246, 61, 'Transduction', 0, '2019-01-28 03:36:29', '2019-01-28 03:36:29', NULL),
(247, 61, 'Translation', 0, '2019-01-28 03:36:29', '2019-01-28 03:36:29', NULL),
(248, 61, 'Transcription', 0, '2019-01-28 03:36:29', '2019-01-28 03:36:29', NULL),
(249, 62, 'Rhizobium meliloti', 1, '2019-01-28 03:38:15', '2019-01-28 03:38:15', NULL),
(250, 62, 'Bacillus thuringiensis', 0, '2019-01-28 03:38:15', '2019-01-28 03:38:15', NULL),
(251, 62, 'Rhizopus', 0, '2019-01-28 03:38:15', '2019-01-28 03:38:15', NULL),
(252, 62, 'Rhizophora', 0, '2019-01-28 03:38:15', '2019-01-28 03:38:15', NULL),
(253, 63, 'Modified DNA ligase', 0, '2019-01-28 03:39:27', '2019-01-28 03:39:27', NULL),
(254, 63, 'A heated alkaline solution', 0, '2019-01-28 03:39:27', '2019-01-28 03:39:27', NULL),
(255, 63, 'The same enzyme that cleave the donor DNA', 0, '2019-01-28 03:39:27', '2019-01-28 03:39:27', NULL),
(256, 63, 'The different enzyme other than that cleave the donor DNA', 1, '2019-01-28 03:39:27', '2019-01-28 03:39:27', NULL),
(257, 64, 'Endonuclease', 0, '2019-01-28 03:40:37', '2019-01-28 03:40:37', NULL),
(258, 64, 'DNA polymerase', 1, '2019-01-28 03:40:37', '2019-01-28 03:40:37', NULL),
(259, 64, 'DNA gyrase', 0, '2019-01-28 03:40:37', '2019-01-28 03:40:37', NULL),
(260, 64, 'DNA ligase', 0, '2019-01-28 03:40:37', '2019-01-28 03:40:37', NULL),
(261, 65, 'Pasteur', 0, '2019-01-28 03:42:10', '2019-01-28 03:42:10', NULL),
(262, 65, 'Lmark', 0, '2019-01-28 03:42:10', '2019-01-28 03:42:10', NULL),
(263, 65, 'Darwin', 1, '2019-01-28 03:42:10', '2019-01-28 03:42:10', NULL),
(264, 65, 'Mendle', 0, '2019-01-28 03:42:10', '2019-01-28 03:42:10', NULL),
(265, 66, 'triple cell protein', 0, '2019-01-28 03:43:25', '2019-01-28 03:43:25', NULL),
(266, 66, 'single cell protein', 0, '2019-01-28 03:43:26', '2019-01-28 03:43:26', NULL),
(267, 66, 'double cell protein', 0, '2019-01-28 03:43:26', '2019-01-28 03:43:26', NULL),
(268, 66, 'tetra cell protein', 1, '2019-01-28 03:43:26', '2019-01-28 03:43:26', NULL),
(269, 67, '1999', 1, '2019-01-28 03:46:09', '2019-01-28 03:46:09', NULL),
(270, 67, '2008', 0, '2019-01-28 03:46:09', '2019-01-28 03:46:09', NULL),
(271, 67, '2005', 0, '2019-01-28 03:46:09', '2019-01-28 03:46:09', NULL),
(272, 67, '2002', 0, '2019-01-28 03:46:09', '2019-01-28 03:46:09', NULL),
(273, 68, '34', 0, '2019-01-28 03:47:57', '2019-01-28 03:47:57', NULL),
(274, 68, '35', 0, '2019-01-28 03:47:57', '2019-01-28 03:47:57', NULL),
(275, 68, '24', 0, '2019-01-28 03:47:57', '2019-01-28 03:47:57', NULL),
(276, 68, '70', 1, '2019-01-28 03:47:57', '2019-01-28 03:47:57', NULL),
(277, 69, 'Modified DNA ligase', 1, '2019-01-28 03:51:00', '2019-01-28 03:51:00', NULL),
(278, 69, 'A heated alkaline solution', 0, '2019-01-28 03:51:00', '2019-01-28 03:51:00', NULL),
(279, 69, 'The same enzyme that cleave the donor DNA', 0, '2019-01-28 03:51:00', '2019-01-28 03:51:00', NULL),
(280, 69, 'The different enzyme other than that cleave the donor DNA', 0, '2019-01-28 03:51:00', '2019-01-28 03:51:00', NULL),
(281, 70, 'white biotechnology', 0, '2019-01-28 04:02:53', '2019-01-28 04:02:53', NULL),
(282, 70, 'red biotechnology', 1, '2019-01-28 04:02:53', '2019-01-28 04:02:53', NULL),
(283, 70, 'blue biotechnology', 0, '2019-01-28 04:02:53', '2019-01-28 04:02:53', NULL),
(284, 70, 'green biotechnology', 0, '2019-01-28 04:02:53', '2019-01-28 04:02:53', NULL),
(285, 71, 'improving present method and finding standard time', 0, '2019-01-28 04:12:44', '2019-01-28 04:12:44', NULL),
(286, 71, 'motivation of workers', 0, '2019-01-28 04:12:44', '2019-01-28 04:12:44', NULL),
(287, 71, 'improving production capability', 0, '2019-01-28 04:12:44', '2019-01-28 04:12:44', NULL),
(288, 71, 'improving production planning and control', 1, '2019-01-28 04:12:44', '2019-01-28 04:12:44', NULL),
(289, 72, 'graph paper', 1, '2019-01-28 04:14:12', '2019-01-28 04:14:12', NULL),
(290, 72, 'process chart', 0, '2019-01-28 04:14:13', '2019-01-28 04:14:13', NULL),
(291, 72, 'planning chart', 0, '2019-01-28 04:14:13', '2019-01-28 04:14:13', NULL),
(292, 72, 'stop watch', 0, '2019-01-28 04:14:13', '2019-01-28 04:14:13', NULL),
(293, 73, 'operation', 0, '2019-01-28 04:15:27', '2019-01-28 04:15:27', NULL),
(294, 73, 'inspection', 0, '2019-01-28 04:15:27', '2019-01-28 04:15:27', NULL),
(295, 73, 'transport', 0, '2019-01-28 04:15:27', '2019-01-28 04:15:27', NULL),
(296, 73, 'delay/temporary storage', 0, '2019-01-28 04:15:27', '2019-01-28 04:15:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_test`
--

CREATE TABLE `question_test` (
  `question_id` int(10) UNSIGNED DEFAULT NULL,
  `test_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_test`
--

INSERT INTO `question_test` (`question_id`, `test_id`) VALUES
(56, 4),
(55, 55),
(57, 54),
(58, 55),
(59, 55),
(60, 55),
(61, 55),
(62, 55),
(63, 55),
(64, 55),
(65, 55),
(66, 55),
(67, 54),
(68, 54),
(69, 54),
(70, 56);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Administrator (can create other users)', '2018-12-30 03:01:27', '2018-12-30 03:01:27'),
(2, 'Teacher', '2018-12-30 03:01:27', '2018-12-30 03:01:27'),
(3, 'Student', '2018-12-30 03:01:27', '2018-12-30 03:01:27');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(1, 1),
(3, 6),
(3, 7),
(2, 8),
(3, 43),
(2, 45);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `teachers_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `user_id`, `course_id`, `teachers_image`, `education`, `contact`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 8, 1, 'http://localhost/Mooc/svr/img/t1.jpg', 'Lecturer at UOM.LK', '0770112376', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `lesson_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `course_id`, `lesson_id`, `title`, `description`, `published`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '1-lesson1 test1', NULL, 1, '2018-12-30 03:01:37', '2019-01-28 03:20:20', '2019-01-28 03:20:20'),
(2, 1, 2, '1-lesson2 test1', NULL, 1, '2018-12-30 03:01:38', '2019-01-28 03:20:20', '2019-01-28 03:20:20'),
(3, 1, 3, '1-lesson3 test1', NULL, 1, '2018-12-30 03:01:38', '2019-01-28 03:20:20', '2019-01-28 03:20:20'),
(4, 1, 4, '1-lesson4 test1', NULL, 1, '2018-12-30 03:01:38', '2019-01-28 03:20:20', '2019-01-28 03:20:20'),
(18, 2, NULL, '2-lesson4 test1', NULL, 1, '2018-12-30 03:01:44', '2019-01-28 03:11:42', '2019-01-28 03:11:42'),
(54, 1, 2, '1-lesson2 test1', NULL, 1, '2019-01-28 03:21:13', '2019-01-28 03:21:13', NULL),
(55, 1, 4, '1-lesson1 test1', NULL, 0, '2019-01-28 03:22:11', '2019-01-28 03:22:11', NULL),
(56, 1, 2, '1-lesson2 test2', NULL, 1, '2019-01-28 03:51:53', '2019-01-28 03:51:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tests_results`
--

CREATE TABLE `tests_results` (
  `id` int(10) UNSIGNED NOT NULL,
  `test_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `test_result` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tests_results_answers`
--

CREATE TABLE `tests_results_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `tests_result_id` int(10) UNSIGNED DEFAULT NULL,
  `question_id` int(10) UNSIGNED DEFAULT NULL,
  `option_id` int(10) UNSIGNED DEFAULT NULL,
  `correct` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$l4MghrLnKXTRUDlR07XQeesKHRIaAe7WzDf90g751BEf70AwnJ5m.', 'ftMuLp1HEI0jU9bAzagL0glZ9mEw9rQd5srQXfsp8t6d6IpbUQ21kkA18aaC', '2018-12-30 03:01:27', '2018-12-30 03:01:27'),
(6, 'sandaruwan wijerathne', 'sandaruwanwijerathna747@gmail.com', '$2y$10$4oe40FM8lINXA79yMHJuOeY419HigJEMUMSKHCgZtmLQnpar5DtL2', NULL, '2018-12-30 03:36:16', '2018-12-30 03:36:16'),
(7, 'shamy', 'shamy@gmail.com', '$2y$10$eZ/rIx7BfSh2GyK8ejNwfuswn2p5O.Suci4LAPu4MNOXjjN2KrV1i', 'No2yOYnX0c0BcWGYpHHRNQwvhKgKffuebgOGtwzN4cVL4gOmPoAUocsiz6em', '2019-01-23 00:02:15', '2019-01-23 00:02:15'),
(8, 'ashker', 'ashker@gmail.com', '$2y$10$2kpvMlLMJZrl0dbZtdDudOTo1i2pY5t02IeFUBC6a1wa27megY3FW', 'WhBBcuThHKWsWL4dagVb9KSeRzY05mJ0P6MGIhtEHjyaG93N5MIgtS6fy2MT', '2019-01-23 00:18:02', '2019-01-23 00:18:02'),
(35, 'asha', 'ash15.sulaiman@gmail.com', '16d7a4fca7442dda3ad93c9a726597e4', NULL, NULL, NULL),
(43, 'shimar', 'shimar@gmail.com', '16d7a4fca7442dda3ad93c9a726597e4', NULL, NULL, NULL),
(45, 'dilini', 'dilini@gmail.com', '16d7a4fca7442dda3ad93c9a726597e4', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `condidates`
--
ALTER TABLE `condidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `course_student`
--
ALTER TABLE `course_student`
  ADD KEY `course_student_course_id_foreign` (`course_id`),
  ADD KEY `course_student_user_id_foreign` (`user_id`);

--
-- Indexes for table `course_user`
--
ALTER TABLE `course_user`
  ADD KEY `fk_p_54418_54417_user_cou_596eece522b73` (`course_id`),
  ADD KEY `fk_p_54417_54418_course_u_596eece522bee` (`user_id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `54419_596eedbb6686e` (`course_id`),
  ADD KEY `lessons_deleted_at_index` (`deleted_at`),
  ADD KEY `lessons_user_id_foreign` (`user_id`);

--
-- Indexes for table `lesson_student`
--
ALTER TABLE `lesson_student`
  ADD KEY `lesson_student_lesson_id_foreign` (`lesson_id`),
  ADD KEY `lesson_student_user_id_foreign` (`user_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `fk_p_54415_54416_role_per_596eec08308d0` (`permission_id`),
  ADD KEY `fk_p_54416_54415_permissi_596eec0830986` (`role_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `questions_options`
--
ALTER TABLE `questions_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `54421_596eee8745a1e` (`question_id`),
  ADD KEY `questions_options_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `question_test`
--
ALTER TABLE `question_test`
  ADD KEY `fk_p_54420_54422_test_que_596eeef70992f` (`question_id`),
  ADD KEY `fk_p_54422_54420_question_596eeef7099af` (`test_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `fk_p_54416_54417_user_rol_596eec0af3746` (`role_id`),
  ADD KEY `fk_p_54417_54416_role_use_596eec0af37c1` (`user_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_user_id_foreign` (`user_id`),
  ADD KEY `teacher_course_id_foreign` (`course_id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `54422_596eeef514d00` (`course_id`),
  ADD KEY `54422_596eeef53411a` (`lesson_id`),
  ADD KEY `tests_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `tests_results`
--
ALTER TABLE `tests_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tests_results_test_id_foreign` (`test_id`),
  ADD KEY `tests_results_user_id_foreign` (`user_id`);

--
-- Indexes for table `tests_results_answers`
--
ALTER TABLE `tests_results_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tests_results_answers_tests_result_id_foreign` (`tests_result_id`),
  ADD KEY `tests_results_answers_question_id_foreign` (`question_id`),
  ADD KEY `tests_results_answers_option_id_foreign` (`option_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `condidates`
--
ALTER TABLE `condidates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `questions_options`
--
ALTER TABLE `questions_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tests_results`
--
ALTER TABLE `tests_results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tests_results_answers`
--
ALTER TABLE `tests_results_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_student`
--
ALTER TABLE `course_student`
  ADD CONSTRAINT `course_student_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_student_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_user`
--
ALTER TABLE `course_user`
  ADD CONSTRAINT `fk_p_54417_54418_course_u_596eece522bee` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_54418_54417_user_cou_596eece522b73` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `54419_596eedbb6686e` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lessons_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lesson_student`
--
ALTER TABLE `lesson_student`
  ADD CONSTRAINT `lesson_student_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lesson_student_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `fk_p_54415_54416_role_per_596eec08308d0` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_54416_54415_permissi_596eec0830986` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions_options`
--
ALTER TABLE `questions_options`
  ADD CONSTRAINT `54421_596eee8745a1e` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `question_test`
--
ALTER TABLE `question_test`
  ADD CONSTRAINT `fk_p_54420_54422_test_que_596eeef70992f` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_54422_54420_question_596eeef7099af` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `fk_p_54416_54417_user_rol_596eec0af3746` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_54417_54416_role_use_596eec0af37c1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `teacher_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tests`
--
ALTER TABLE `tests`
  ADD CONSTRAINT `54422_596eeef514d00` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `54422_596eeef53411a` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tests_results`
--
ALTER TABLE `tests_results`
  ADD CONSTRAINT `tests_results_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tests_results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tests_results_answers`
--
ALTER TABLE `tests_results_answers`
  ADD CONSTRAINT `tests_results_answers_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `questions_options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tests_results_answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tests_results_answers_tests_result_id_foreign` FOREIGN KEY (`tests_result_id`) REFERENCES `tests_results` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
