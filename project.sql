-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2014 at 10:28 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE IF NOT EXISTS `actor` (
  `name` varchar(255) NOT NULL DEFAULT '' Primary KEY,
  `dob` date DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `id` int(11) DEFAULT NULL ,
  foreign key(id) REFERENCES movie(id)
) ;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`name`, `dob`, `gender`, `country`, `city`, `id`) VALUES
('Akshay Kumar', '1967-07-09', 'M', 'India', 'Amritsar', 14),
('Amir Khan', '1965-03-14', 'M', 'India', 'Mumbai', 11),
('Anne Hathway', '1982-11-12', 'F', 'USA', 'Brooklyn', 16),
('Asa Butterfield', '1997-04-01', 'M', 'USA', 'Wisconson', 6),
('Ashwairya Rai Bachchan', '1973-11-01', 'F', 'India', 'Mumbai', 15),
('Ben Kingsley', '1943-12-31', 'M', 'UK', 'Scarborough', 7),
('Bob Gunton', '1958-03-10', 'M', 'USA', 'New York', 1),
('Bomen Irani', '1959-12-02', 'M', 'India', 'Mumbai', 11),
('Chris Pratt', '1985-01-21', 'M', 'USA', 'Viginia', 2),
('Christain Bale', '1974-01-30', 'M', 'UK', 'London', 13),
('Daniel Henshall', '1981-07-15', 'M', 'Australia', 'Sydney', 4),
('Danny Denzongpa', '1948-02-25', 'M', 'India', 'Gangtok', 15),
('Dave Bautista', '1984-11-22', 'M', 'USA', 'Chicago', 2),
('Essic Davis', '1979-09-11', 'F', 'Australia', 'Sydney', 4),
('Halliee Steinfiled', '1992-08-13', 'F', 'USA', 'New York', 6),
('Harrison Ford', '1942-07-13', 'M', 'USA', 'Chicago', 6),
('Heath Udger', '1973-04-04', 'M', 'USA', 'New York', 13),
('Hritik Roshan', '1974-01-10', 'M', 'India', 'Mumbai', 12),
('Jessica Chastain', '1977-03-24', 'F', 'USA', 'New York', 16),
('Kareena Kapoor', '1980-09-21', 'F', 'India', 'Mumbai', 11),
('Karolina Wyara', '1986-11-28', 'F', 'USA', 'New York', 5),
('Katrina Kaif', '1983-07-16', 'F', 'India', 'Mumbai', 12),
('Liam Nescon', '1952-06-07', 'M', 'Ireland', 'Antrim', 7),
('Mathew McConaughey', '1969-11-04', 'M', 'USA', 'Uvaldi', 16),
('Michael Caine', '1933-03-14', 'M', 'UK', 'Surrey', 13),
('Morgan Freeman', '0000-00-00', 'M', 'USA', 'Houston', 3),
('Noah Wiseman', '0000-00-00', 'M', 'Australia', 'Sydney', 4),
('Rajnikant', '0000-00-00', 'M', 'India', 'Bangalore', 15),
('Ralph Fiennus', '0000-00-00', 'M', 'UK', 'Ipswich', 7),
('Rebecca Williams', '0000-00-00', 'F', 'USA', 'San Fransisco', 8),
('Scarlett Johansson', '0000-00-00', 'F', 'USA', 'San Fransisco', 3),
('Shahid Kapoor', '0000-00-00', 'M', 'India', 'Mumbai', 9),
('Sharman Joshi', '0000-00-00', 'M', 'India', 'Mumbai', 11),
('Shraddha Kapoor', '0000-00-00', 'F', 'India', 'Mumbai', 9),
('Steven Strait', '0000-00-00', 'M', 'USA', 'Wisconson', 5),
('Tabu', '0000-00-00', 'F', 'India', 'Kolkata', 9),
('Tim Robbins', '0000-00-00', 'M', 'USA', 'Hosuten', 1),
('Tmamannah Bhatia', '0000-00-00', 'F', 'India', 'Mumbai', 14),
('Tom Hanks', '0000-00-00', 'M', 'USA', 'Concord', 8),
('Zoe Saldana', '0000-00-00', 'F', 'USA', 'New Jearsey', 2);

-- --------------------------------------------------------

--
-- Table structure for table `adv_comp`
--
CREATE TABLE IF NOT EXISTS `adv_comp` (
  `ad_id` int(11) PRIMARY key,
  `name` varchar(255) DEFAULT NULL,

  `ad_mode` varchar(255) DEFAULT NULL,
  `amt_lakhs` int(11) DEFAULT NULL,
  `pay_mode` varchar(255) DEFAULT NULL,
  `pay_date` date DEFAULT NULL,
  `Phone_No` int(11) NOT NULL
);

--
-- Dumping data for table `adv_comp`
--

INSERT INTO `adv_comp` (`ad_id`, `name`, `ad_mode`, `amt_lakhs`, `pay_mode`, `pay_date`, `Phone_No`) VALUES
(1, 'Le Burnett', 'Digital', 30, 'Wire Transfer', '2014-10-11', 84202),
(2, 'Matchbox India', 'Digital', 500, 'Wire Transfer', '2014-04-03', 59595),
(3, 'McCann Erikson India', 'Digital', 90, 'Wire Transfer', '2013-07-05', 59489),
(4, 'McCann Erikson', 'Print Media', 15, 'Wire Transfer', '2013-08-18', 10515),
(5, 'JWT', 'Print Media', 15, 'Cheque', '1995-02-24', 92231),
(6, 'Lowe Lintas', 'Digital', 5000, 'Wire Trnsfer', '2014-02-05', 89172),
(7, 'Ruje Media', 'Digital', 150, 'Wire Transer', '1994-08-16', 65017),
(8, 'Lowe Lintas', 'Digital', 1500, 'Wire Transfer', '2014-10-12', 50516),
(9, 'Lowe Lintas', 'Digital', 2000, 'Wire Transfer', '2013-12-18', 94970),
(10, 'JWT', 'Print Media', 70, 'Cheque', '1993-10-10', 85100),
(11, 'Matchbox India', 'Digital', 200, 'Wire Transfer', '2009-11-15', 59712),
(12, 'Matchbox India', 'Digital', 1000, 'Wire Transfer', '2014-06-16', 79412),
(13, 'Lowe Lintas', 'Digital', 8000, 'Wire Transfer', '2014-08-28', 86163),
(14, 'Lowe Lintas', 'Digital', 9000, 'Wire Transfer', '2008-05-05', 68412),
(15, 'McCann Erikson India', 'Digital', 1500, 'Wire Transfer', '2010-09-15', 78465),
(16, 'MatchBox India', 'Digital', 1000, 'Wire Transfer', '2014-10-08', 86413);

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

CREATE TABLE IF NOT EXISTS `director` (
  `dname` varchar(255) PRIMARY kEY,
  `dob` date DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `Phone_No` int(11) NOT NULL
);

--
-- Dumping data for table `director`
--

INSERT INTO `director` (`dname`, `dob`, `gender`, `country`, `city`, `Phone_No`) VALUES
('Christopher Nolan', '1970-07-30', 'M', 'UK', 'London', 68451),
('Frank Darabont', '1959-01-28', 'M', 'France', 'Montreliand', 86510),
('Gavin Hood', '1963-05-12', 'M', 'South Africa', 'Johannesberg', 62585),
('James Gunn', '1970-08-05', 'M', 'USA', 'Missouri', 32156),
('Jennifer Kent', '1985-03-18', 'F', 'USA', 'San Francisco', 63101),
('Luc Besson', '0000-00-00', 'M', 'France', 'Paris', 78964),
('Rajkumar Hirani', '1962-11-22', 'M', 'India', 'Mumbai', 22512),
('Robert Zemeckis', '1952-05-14', 'M', 'USA', 'Chicago', 61554),
('Ryan Smith', '1986-10-10', 'M', 'USA', 'Houston', 84203),
('Sajid', '1974-03-16', 'M', 'India', 'UP', 15615),
('Shankar', '1965-08-17', 'M', 'India', 'Chennai', 68451),
('Siddharth Anand', '1985-10-15', 'M', 'India', 'Mumbai', 89498),
('Steven Spielberg', '1946-12-18', 'M', 'USA', 'Ohio', 84172),
('Vikas Bahl', '1971-09-05', 'M', 'India', 'Delhi', 94822),
('Vishal Bharadwaj', '1965-08-04', 'M', 'India', 'Mumbai', 58954);

-- --------------------------------------------------------

--
-- Table structure for table `distributer`
--

CREATE TABLE IF NOT EXISTS `distributer` (
  `d_id` int(11) PRIMARY KEY,
  `Phone_No` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `amt_crore` int(11) DEFAULT NULL  
) ;

--
-- Dumping data for table `distributer`
--

INSERT INTO `distributer` (`d_id`,`Phone_No`, `name`, `amt_crore`) VALUES
(1,25444, 'Lionsgate', 20),
(2,54747, 'Paramount Pictures', 2500),
(3,67596, 'Chiveral Pictures', 500),
(4,34575, 'Village Roadshow Times', 15),
(5,35344, '20th Century Fox', 900),
(6,12354, 'Eros International', 150),
(7,99625, 'Fox Star Studios', 100),
(8,66554, 'Viacomm 18 Pictures', 120),
(9,65322, 'Sun Pictures', 200),
(10,89856, 'Eros', 300),
(11,68755, 'Village Roadshow', 30),
(12,89856, '20th Century Fox', 172),
(13,87987, 'Universal', 1459),
(14,65622, 'Fox Star', 100),
(15,98555, 'Paramount Pictures', 3000),
(16,98785, 'Lionsgate', 6);

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE IF NOT EXISTS `movie` (
  `id` int(11) PRIMARY kEY,
  `nt_id` int(11) DEFAULT NULL,
  `titile` varchar(255) DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL,
  `d_name` varchar(255) DEFAULT NULL,
  `ad_id` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `runtime_min` int(11) DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `revenue_crore` double DEFAULT NULL,
  `prod_cost_crore` double DEFAULT NULL,
  foreign key(nt_id) REFERENCES ntech_staff(nt_id),
  foreign key(d_id) REFERENCES distributer(d_id),
  foreign key(d_name) REFERENCES director(dname),
  foreign key(ad_id) REFERENCES adv_comp(ad_id)
);

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id`, `nt_id`, `titile`, `d_id`, `d_name`, `ad_id`, `year`, `runtime_min`, `lang`, `revenue_crore`, `prod_cost_crore`) VALUES
(1, 3, 'Shawshank Redemption', 4, 'Frank Darabont', 5, 1995, 142, 'eng', 20, 8),
(2, 5, 'Guardians of Galaxy', 2, 'James Gunn', 6, 2014, 122, 'eng', 4724.4, 1045.5),
(3, 4, 'Lucy', 3, 'Luc Besson', 8, 2014, 89, 'eng', 2728.1, 246),
(4, 1, 'The Babadook', 1, 'Jennifer Kent', 1, 2014, 94, 'eng', 14.1, 15.3),
(5, 1, 'After', 16, 'Ryan Smith', 4, 2012, 130, 'eng', 6.4, 4),
(6, 4, 'Enders Game', 5, 'Gavin Hood', 9, 2013, 114, 'eng', 690, 676.5),
(7, 5, 'Schindlers List', 11, 'Steven Spielberg', 10, 1993, 195, 'eng', 71.2, 19.6),
(8, 3, 'Forest Gump', 12, 'Robert Zemeckis', 7, 1994, 142, 'eng', 208, 50.2),
(9, 3, 'Haider', 6, 'Vishal Bharadwaj', 2, 2014, 160, 'hin', 162.4, 80.6),
(10, 3, 'Queen', 7, 'Vikas Bahl', 3, 2013, 146, 'hin', 130.6, 71.5),
(11, 4, '3 Idiots', 8, 'Rajkumar Hirani', 11, 2009, 171, 'hin', 392, 35),
(12, 3, 'Bang Bang', 10, 'Siddharth Anand', 12, 2014, 153, 'hin', 350.2, 123.4),
(13, 5, 'The Dark Night', 15, 'Christopher Nolan', 14, 2008, 152, 'eng', 6180.7, 1137.7),
(14, 2, 'Entertainment', 14, 'Sajid', 16, 2014, 140, 'hin', 100.1, 72),
(15, 4, 'Robot', 9, 'Shankar', 15, 2010, 177, 'Tamil', 252.5, 129.5),
(16, 5, 'Interstellar', 13, 'Christopher Nolan', 13, 2014, 169, 'eng', 2023.4, 1014.7);

-- --------------------------------------------------------

--
-- Table structure for table `multi1`
--

CREATE TABLE IF NOT EXISTS `multi1` (
  `id` int(11) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL
);

--
-- Dumping data for table `multi1`
--

INSERT INTO `multi1` (`id`, `genre`) VALUES
(1, 'Crime'),
(1, 'Drama'),
(2, 'Action'),
(2, 'Sci-fi'),
(3, 'Sci-fi'),
(3, 'Thriller'),
(4, 'Horror'),
(4, 'Drama'),
(5, 'Thriller'),
(6, 'Action'),
(6, 'Sci-fi'),
(7, 'Drama'),
(7, 'History'),
(8, 'Drama'),
(8, 'Romance'),
(9, 'Crime'),
(9, 'Drama'),
(10, 'Comedy'),
(11, 'Comedy'),
(12, 'Action'),
(12, 'Thriller'),
(13, 'Action'),
(14, 'Comedy'),
(15, 'Sci-fi'),
(16, 'Sci-fi');

-- --------------------------------------------------------

--
-- Table structure for table `ntech_staff`
--

CREATE TABLE IF NOT EXISTS `ntech_staff` (
  `nt_id` int(11) PRIMARY kEY,
  `name` varchar(255) DEFAULT NULL,
  `group_salary` int(11) DEFAULT NULL
) ;

--
-- Dumping data for table `ntech_staff`
--

INSERT INTO `ntech_staff` (`nt_id`, `name`, `group_salary`) VALUES
(1, 'group1', 150000),
(2, 'group2', 220000),
(3, 'group3', 250000),
(4, 'group4', 300000),
(5, 'group5', 500000);

-- --------------------------------------------------------

--
-- Table structure for table `sponser`
--

CREATE TABLE IF NOT EXISTS `sponsor` (
  `sid` int(11) PRIMARY kEY,
  `name` varchar(255) DEFAULT NULL,
  `Phone_No` int(11) NOT NULL
) ;

--
-- Dumping data for table `sponser`
--

INSERT INTO `sponsor` (`sid`, `name`, `Phone_No`) VALUES
(1, 'Mercedes Benz', 68403),
(2, 'Pepsi', 95366),
(3, 'Puma', 35654),
(4, 'Micromax', 51351),
(5, 'Sony', 21151),
(6, 'Amazon', 85840),
(7, 'Jonny Walker', 56106),
(8, 'Redbull', 81518),
(9, 'Samsung', 68402),
(10, 'Gulf Oil', 65301);

-- --------------------------------------------------------

--
-- Table structure for table `tech_staff`
--

CREATE TABLE IF NOT EXISTS `tech_staff` (
  `t_id` int(11) primary key,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `specialization` varchar(255) DEFAULT NULL
) ;

--
-- Dumping data for table `tech_staff`
--

INSERT INTO `tech_staff` (`t_id`, `name`, `gender`, `salary`, `specialization`) VALUES
(1, 'Shankar-Ehsaan-Loy', 'M', 2000000, 'Sound Artist'),
(2, 'Rohit Shetty', 'M', 5000000, 'Stunt Director'),
(3, 'Ben Davis', 'M', 37000000, 'Cinematogrphic'),
(4, 'Tyler Bates', 'M', 4000000, 'Sound Artist'),
(5, 'Wally Pfister', 'M', 2000000, 'Cinematography'),
(6, 'Hansie Zimmer', 'F', 1500000, 'Sound Artist'),
(7, 'Pankaj Kumar', 'M', 3500000, 'Cinematographic'),
(8, 'Aarif Sheikh', 'M', 4100000, 'Sound Artist'),
(9, 'Basharat Peer', 'M', 1000000, 'Writer'),
(10, 'Jeniffer Kent', 'F', 1900000, 'Writer'),
(11, 'Andy Lanning', 'F', 3200000, 'Writer'),
(12, 'Gaig Wood', 'M', 12000000, 'Stuntman'),
(13, 'A.R.Rehman', 'M', 40000000, 'Soundartist'),
(14, 'R.Rathnarelu', 'M', 2500000, 'Cinematography');


ALTER TABLE `multi1`
ADD CONSTRAINT `multi1` FOREIGN KEY (`id`) REFERENCES `movie` (`id`);

create table `sj`(
`id` int ,
`s_id` int ,
`amnt_crores` int NOT NULL,
`date` date,
PRIMARY kEY(id,s_id) );

create table `tj`(
`id` int ,
`t_id` int ,
primary key(id,t_id));

CREATE TABLE IF NOT EXISTS `award` (
  `Organisation` varchar(255) NOT NULL,
  `Category` varchar(255) NOT NULL,
  `Year` int(11) NOT NULL,
  `ID` int(11) NOT NULL
   primary key (Organisation,Category,Year),
   foreign key (ID) REFERENCES movie(id)
);

INSERT INTO `award` (`Organisation`, `Category`, `Year`, `ID`) VALUES
('Japanese Academy Award', 'Outstanding Foreign LAnguage', 1996, 1),
('Young Hollywood', 'Super Superhero', 2014, 2),
('Hollywood Film Award', 'Hollywood Blockbuster Award', 2014, 2),
('ACE Eddie Award', 'Bets Editing', 2004, 7),
('BAFTA Award', 'Best Film', 2000, 7),
('Golden Globe Award', 'Best Director', 1997, 7),
('Golden Globe Award', 'Best Screenplay', 1997, 7),
('67th Academy Award', 'Best Picture', 1995, 8),
('Golden Globe Award', 'Best Director', 1996, 8),
('67th Academy Award', 'Best Visual Effects', 1995, 8),
('Film fare Award', 'Best Film', 2010, 11),
('Star Screen Award', 'Best Film', 2010, 11),
('IIFA Award', 'Best Director', 2010, 11),
('IIFA Award', 'Best Story', 2010, 11),
('Grammy Award', 'Best Soundtrack', 2009, 13),
('Saturn Award', 'Best Writing', 2008, 13),
('Japanese Academy Award', 'Outstanding Foreign Language', 2014, 13),
('81st Academy Award', 'Best Supporting Actor', 2008, 13),
('IIFA Award', 'Best Special Effects', 2011, 15),
('IIFA Award', 'Best Art Direction', 2011, 15),
('Media Award', 'Hollywood Music', 2014, 16);

insert into `tj`(`id` ,`t_id`)values(1,3),(1,4),(1,11),(2,6),(2,5),(2,12),(2,11),(3,3),
  (3,4),(3,12),(3,10),(4,10),(4,6),(4,5),(5,3),(5,4),(5,10),(6,10),(6,12),(6,3)
  ,(6,6),(7,3),(7,4),(7,11),(8,10),(8,6),(8,5),(9,1),(9,2),(9,7),(9,9),(10,8),
  (10,9),(10,14),(11,13),(11,14),(11,9),(12,9),(12,7),(12,8),(13,10),(13,12),
  (13,4),(13,5),(14,9),(14,8),(14,7),(14,2),(15,2),(15,14),(15,9),(15,8),(16,3),(16,6),(16,10),(16,12);
  
  insert into `sj`(`id`,`s_id` ,`amnt_crores`,`date`)values
    
    (1,10,2,'1995-10-05'),
    (2,1,12,'2014-08-09'),
    (2,6,15,'2014-05-06'),
    (3,6,7,'2014-06-09'),
    (3,8,9,'2014-09-09'),
    (4,10,1,'2014-03-11'),
    (4,2,1,'2014-03-19'),
    (5,2,1,'2012-05-15'),
    (6,9,15,'2013-04-05'),
    (6,10,11,'2013-07-06'),
    (7,7,1,'1993-05-06'),
    (7,3,2,'1993-11-08'),
    (8,9,3,'1994-03-06'),
    (8,5,1,'1994-02-04'),
    (9,7,9,'2014-09-03'),
    (9,9,4,'2014-09-01'),
    (10,4,8,'2013-12-04'),
    (10,2,5,'2013-11-05'),
    (11,1,9,'2009-03-01'),
    (11,9,3,'2009-04-03'),
    (12,4,6,'2014-09-07'),
    (12,6,8,'2014-02-01'),
    (13,1,14,'2008-04-06'),
    (13,6,15,'2008-06-08'),
    (14,8,4,'2014-05-02'),
    (14,3,4,'2014-01-11'),
    (15,9,6,'2010-03-21'),
    (15,8,4,'2010-01-03'),
    (16,6,10,'2014-11-21'),
    (16,3,15,'2014-12-01'),
    (16,7,16,'2014-12-12'),
    (1,7,1,'1995-12-15');

    DELIMITER $$
    create procedure find(IN name varchar(255))
      BEGIN
      select titile,d_name,year,runtime_min
      from movie 
      where titile=name;
      END$$
      DELIMITER ;


DELIMITER $$
    create procedure find(IN name varchar(255))
      BEGIN
      select revenue_crore
      from movie 
      where titile=name;
      END$$
      DELIMITER ;

DELIMITER $$
    create procedure find(IN name varchar(255))
      BEGIN
      select d_id
      from movie 
      where titile=name;
      END$$
      DELIMITER ;
      
DELIMITER $$
    create procedure find(IN name varchar(255))
      BEGIN
      select ad_id
      from movie 
      where titile=name;
      END$$
      DELIMITER ;