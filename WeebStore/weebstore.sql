-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2022 at 03:45 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weebstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryID` int(11) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryID`, `name`) VALUES
(1, 'Anime'),
(2, 'Movies'),
(3, 'Series'),
(4, 'Video Games'),
(5, 'Accesories');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stockID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `topline` varchar(200) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stockID`, `name`, `categoryID`, `price`, `photo`, `topline`, `description`) VALUES
(1, 'Super Saiyan God Gogeta', 1, '65.99', '88b90424-90b2-4e16-bfe3-b14218d450c0.jpg', 'We can find Paradise!', 'Banpresto brings us the new Dragon Ball Super Super Master Stars Piece Super Saiyan God Gogeta figure! This version of the character features a brushed drawing look.'),
(2, 'Levi Vs. Female Titan Limited Edition', 1, '749.99', '8275b475-020d-4fd4-a647-1e0179f26d94.jpg', 'Shinzo wo Sasageyo!', 'From the anime Attack in Titan, the charismatic Corporal Levi Ackerman has been sculpted fighting the female Titan Annie. This highly detailed diorama features Levi running down the arm of Annie and includes several translucent slashing and blood effects.'),
(3, 'Star Platinum', 1, '254.99', 'cb4fa4e9-141c-41f1-8411-8bd86159ca64.jpg', 'ORA', 'From JoJo\'s Bizarre Adventure comes a Super Action Statue BIG of the stand for Jotaro Kujo, Star Platinum! Star Platinum is a highly detailed and super-poseable figure for recreating all your favorite JoJo action.'),
(4, 'Iron Strange', 2, '454.99', '8fecf623-27ab-4928-a5ad-34f5fb3647fe.jpg', 'Strange.', 'An alternate version of a scene shared as concept art in The Art of Avengers: Endgame reveals that fans are close to witness the Master of the Mystic Arts fights in Iron Man-s armor! During the outer-space rescue, Tony Stark sends his nano suit onto Doctor Strange to protect him so that he can escape from Ebony Maw-s torture needles. The armor then forms itself around the Eye of Agamotto, and the Eye of Agamotto effectively burns a glyph into the chest turning it into a magically powered suit, rather than an RT-powered suit. \r\n\r\nTaken inspiration from the concept art of Avengers: Infinity War as seen in The Art of Avengers: Endgame, Sideshow and Hot Toys are excited to unveil Iron Strange Sixth Scale Collectible Figure from the Avengers: Endgame Concept Art Series collection. \r\n\r\n'),
(5, 'The Mandalorian Din Djarin', 3, '1594.99', 'c3ad3865-23fb-436a-a79c-635c370c192f.jpg', 'This is the way...', '-I can bring you in warm, or I can bring you in cold.-\r\n\r\nSideshow presents The Mandalorian Din Djarin life-size bust, an epic 1:1 Star Wars collectible for fans of The Mandalorian. Created in partnership with Legacy Effects, this intimidating bust captures the stoic presence of the fan-favorite bounty hunter like never before.'),
(6, 'Doom Slayer (Ultimate Ver.)', 4, '2574.99', '5d67ae3b-35f2-4408-ba60-3b5d2690d8ec.jpg', 'RIP AND TEAR', 'From the DOOM Eternal video game, Prime 1 Studio presents the games protagonist, Doom Slayer, as a highly detailed statue. Standing about 43 inches tall, the Doom Slayer stands triumphant on a base featuring a highly detailed landscape of rubble, skulls, and the remains of a defeated Pinky demon.'),
(7, 'DETOLF', 5, '168.99', '51pIkZRNLML._AC_SX679_.jpg', 'Great for showcase', 'This storage cabinet is made of high-quality material, environmentally friendly, safe and durable, so you can use it with confidence.'),
(8, 'Deadpool', 2, '79.99', 'da1fe166-cb6a-407f-8ee2-0fec2f52ca07.jpg', 'The Merc with a mouth', 'From the hit superhero comedy Deadpool, comes a new S.H.Figuarts figure of the titular character! This highly articulated Deadpool stands just over 6 inches and features several interchangeable parts, including different eye expressions, for a wide variety of poses.'),
(10, 'Spawn', 4, '49.99', 'd19e6a6a-2b32-477e-a644-720f608eed78.jpg', 'Shut the F&%$ up and fight.', 'A Government agent, Al Simmons was killed by his own men. Resurrected from the depths of hell, he returns to Earth as the warrior Spawn, guarding the forgotten alleys of New York City. As he seeks answers about his past, Spawn grapples with the dark forces that returned him to Earth, battling enemies and discovering unlikely allies. As he learns to harness his extraordinary powers, he begins to grasp the full extent of what brought him back â€“ and what he left behind.  \r\n\r\nDesigned with Ultra Articulation with up to 22 moving parts for full range of posing and play.'),
(13, 'The Dark Knight Trilogy QS019 Batman', 2, '609.99', '2be1fa38-826d-43d1-b666-5e8f02f8fae3.jpg', 'Vengeance', '-I need you to get me back in the game.-\r\n\r\nIt has been eight years since Batman vanished into the night, turning, in that instant, from hero to fugitive. But everything changes with the arrival of a cunning cat burglar with a mysterious agenda. Bruce Wayne has to join forces with old and new allies, and put his mask on one last time to finish what he had started and become a hero again.'),
(14, 'The Book of Boba Fett', 3, '639.99', '3634b6bb-eb14-471f-b230-9cf07a258e14.jpg', 'As you wish.', 'After eliminating Bib Fortuna, Boba Fett-s journey becoming the new daimyo of the criminal empire on Tatooine proves to be challenging and he must prepare to fight for his newfound status in the dangerous underworldâ€¦'),
(15, 'Halo 3: ODST Master Chief ', 4, '629.99', '6c2039d9-e7be-434b-a29c-198fa6eb6c10.jpg', 'I want to trust you...', '-Wake me when you need me.- â€” Master Chief to Cortana.\r\n\r\nThe year is 2552 and the time for Master Chief to wake up to save humanity from the Covenant is here once again.'),
(16, 'Atlantic Oskar Media Storage Cabinet', 5, '62.99', '71Pd9WE7lzL._AC_SX466_.jpg', 'Great for showcase', 'Rich espresso tones lend an updated feel to a handsome design that will shine anywhere from bedroom, to den, to home office.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `username`, `password`) VALUES
(1, 'admin', 'D77F3BF787214216E21CF70433F61CAE91FC97B82F8C9A62BDA052234FD76E90B0A469ED3528157CC6FCC4F116D9C081C1F58DFBC21338492CFE8F36E9BE13DD');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stockID`),
  ADD KEY `fk_category_stock` (`categoryID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stockID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `fk_category_stock` FOREIGN KEY (`categoryID`) REFERENCES `category` (`categoryID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
