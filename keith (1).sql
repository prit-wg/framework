-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 21, 2012 at 11:40 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `keith`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE IF NOT EXISTS `admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL DEFAULT '',
  `password` varchar(10) NOT NULL DEFAULT '',
  `last_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `allow_pages` varchar(255) NOT NULL DEFAULT '*',
  `type` varchar(20) NOT NULL DEFAULT 'Administrator',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_loggedin` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='website control panel scrap table' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`id`, `username`, `password`, `last_access`, `allow_pages`, `type`, `is_active`, `is_loggedin`) VALUES
(3, 'test', 'test', '2012-03-21 04:57:57', '*', 'Administrator', 1, 0),
(4, 'admin', 'admin', '2012-02-02 23:35:54', '*', 'Administrator', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address1` text,
  `email` varchar(255) NOT NULL DEFAULT '',
  `phone` int(11) NOT NULL DEFAULT '0',
  `address2` text,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `web` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `urlname` varchar(255) DEFAULT NULL,
  `short_description` varchar(500) DEFAULT NULL,
  `page` longtext,
  `page_type` enum('content','module') NOT NULL DEFAULT 'content',
  `module_name` varchar(250) DEFAULT NULL,
  `link_type` enum('internal','external') NOT NULL DEFAULT 'internal',
  `link_query` varchar(255) DEFAULT NULL,
  `meta_keyword` text,
  `meta_description` text,
  `parent_id` int(11) DEFAULT NULL,
  `is_preview` tinyint(1) NOT NULL DEFAULT '0',
  `preview_update_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `preview_of_page_id` tinyint(1) NOT NULL DEFAULT '0',
  `page_name` varchar(255) DEFAULT NULL,
  `collection` varchar(255) DEFAULT NULL,
  `navigation` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `top_content` text,
  `section` int(255) NOT NULL,
  `show_in_menu` int(11) NOT NULL DEFAULT '1',
  `mobile_site` varchar(255) DEFAULT NULL,
  `mobile_site_content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=175 ;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `name`, `urlname`, `short_description`, `page`, `page_type`, `module_name`, `link_type`, `link_query`, `meta_keyword`, `meta_description`, `parent_id`, `is_preview`, `preview_update_date`, `publish_date`, `preview_of_page_id`, `page_name`, `collection`, `navigation`, `position`, `top_content`, `section`, `show_in_menu`, `mobile_site`, `mobile_site_content`) VALUES
(81, '', '', NULL, NULL, 'content', NULL, 'internal', NULL, '', '', NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, 0, NULL, 0, 1, NULL, NULL),
(167, 'My Mission', 'mission', 'As we all know Pearland is growing community.  At times growth brings growing pains and I believe that is the case in Pearland at this time.  I believe that overall our community is in great shape.  Without question we have problems; some that need attention from both local and state government and others that may best be addressed by the community.', '&lt;p&gt;\r\n	As we all know Pearland is growing community. &amp;nbsp;At times growth brings growing pains and I believe that is the case in Pearland at this time. &amp;nbsp;I believe that overall our community is in great shape. &amp;nbsp;Without question we have problems; some that need attention from both local and state government and others that may best be addressed by the community.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	One example of where a problem is being addressed by both government and community is the efforts to get a library on the West side of Pearland. &amp;nbsp;I applaud the efforts of the individuals that have taken time from their lives to work towards improving our community. &amp;nbsp;In order to work towards their goal they have worked with both the City of Pearland and Brazoria County officials in a very profession manner.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&amp;nbsp;Working for many years for and with government agencies I have seen first hand the benefits and obstructions that government can offer the public. &amp;nbsp;I will use this knowledge to increase the benefits and decrees the obstructions. &amp;nbsp;I believe that customer service is an important part of any organization and should always in the process of improvement. I also understand that keeping expenditures low while keeping morale and productivity high is important to any organization. &amp;nbsp;These are not always easy task for any organization and can be even harder when working with the restrictions placed on government organizations.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&amp;nbsp;We live in a time when many people are asking more and more for the government to take care of their problems. &amp;nbsp;Vary rarely is there a problem that is solved better by the government than by the individual. &amp;nbsp;As a whole we should work to keep a limited government and increase personal responsibility. &amp;nbsp;The best way to do this is to work together with private organizations to provide support to others in need. &amp;nbsp;While at the same time keeping an eye on government to insure that the elected officials and employees of these organizations do not take power away from the people that have given their positions.&lt;/p&gt;\r\n', 'content', NULL, 'internal', NULL, 'mission of keith ordeneaux', 'mission of keith ordeneaux', 0, 0, '2012-03-20 00:00:00', '2012-03-20 00:00:00', 0, 'My Mission', NULL, NULL, 0, NULL, 0, 1, NULL, NULL),
(168, 'Endorsements', 'endorsement', 'ENDORSEMENTS-\r\nCURRENT LEADERS, \r\nOFFICE LEADERS', '&lt;p&gt;\r\n	ENDORSEMENTS-&lt;br /&gt;\r\n	CURRENT LEADERS,&lt;br /&gt;\r\n	OFFICE LEADERS&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', 'content', NULL, 'internal', NULL, 'Endorsements', 'Endorsements of keith Ordeneaux', 0, 0, '2012-03-20 00:00:00', '2012-03-20 00:00:00', 0, 'Endorsements', NULL, NULL, 0, NULL, 0, 1, NULL, NULL),
(169, 'Polling Areas', 'polling', 'Early Voting Dates and Times', '&lt;p&gt;\r\n	Early Voting Dates and Times&lt;/p&gt;\r\n&lt;br /&gt;\r\n&lt;p&gt;\r\n	Monday, April 30 &amp;ndash; Friday, May 4: 8 a.m. to 5 p.m.&lt;br /&gt;\r\n	Saturday, May 5: 7 a.m. to 7 p.m.&lt;br /&gt;\r\n	Monday, May 7 &amp;ndash; Tuesday, May 8: 7 a.m. to 7 p.m.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Early Voting Locations Pearland&lt;br /&gt;\r\n	East Pearland Branch Location:&lt;br /&gt;\r\n	Justice of the Peace, Pct. 3, Pl. 2 Courtroom,&lt;br /&gt;\r\n	2436 South Grand Boulevard, Pearland, Texas&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	West Pearland Branch Location:&lt;br /&gt;\r\n	Westside Event Center,&lt;br /&gt;\r\n	2150 Countryplace Parkway, Pearland, Texas&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', 'content', NULL, 'internal', NULL, 'Polling Areas', 'Polling Areas of keith ordeneaux', 0, 0, '2012-03-19 00:00:00', '2012-03-19 00:00:00', 0, 'Polling Areas', NULL, NULL, 0, NULL, 0, 1, NULL, NULL),
(170, '', 'about', '', '&lt;p&gt;\r\n	I am married with three wonderful children. &amp;nbsp;A graduate of Pearland High School, class of 1992; I returned to Pearland to work for Pearland ISD in software trainer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	My family has a long history of community service in Pearland. &amp;nbsp;I am proud to able to continue this tradition in the following roles:&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Chairman of the Board &amp;bull; Pearland Chamber of Commerce 2006&lt;/li&gt;\r\n	&lt;li&gt;\r\n		President of the Board &amp;bull; Pearland Adult Reading Center 2008&lt;/li&gt;\r\n	&lt;li&gt;\r\n		President of the Board &amp;bull; 100 Club of Pearland 2012&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Board Member &amp;bull; Pearland Neighborhood Center&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Board Member &amp;bull; Keep Pearland Beautiful&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Member of the Pearland CVB advisory committee&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	At the county and state leave I have served in the follow roles:&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Vice President &amp;bull; Texas Energy Managers Assoc. State Board of Directors&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Board Member &amp;bull; Brazoria County Parks Advisory Board&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', 'content', NULL, 'internal', NULL, '', '', 0, 0, '2012-03-19 00:00:00', '2012-03-19 00:00:00', 0, 'About us', NULL, NULL, 0, NULL, 0, 1, NULL, NULL),
(171, 'Basic Principels', 'principels', 'Basic Principels page', '<p>\r\n	Page will be comming Soon !</p>\r\n', 'content', NULL, 'internal', NULL, 'Basic Principels', 'Basic Principels page ', 0, 0, '2012-03-19 00:00:00', '2012-03-19 00:00:00', 0, 'Basic Principels', NULL, NULL, 0, NULL, 0, 1, NULL, NULL),
(172, '', 'programs', 'Programs of keith', '<p>\r\n	Page will be comming Soon !</p>\r\n', 'content', NULL, 'internal', NULL, NULL, NULL, 0, 0, '2012-03-19 00:00:00', '2012-03-19 00:00:00', 0, 'Programs', NULL, NULL, 0, NULL, 0, 1, NULL, NULL),
(173, '', 'contribute', 'Contribute page', '<p>\r\n	Page will be comming Soon !</p>\r\n', 'content', NULL, 'internal', NULL, NULL, NULL, 0, 0, '2012-03-19 00:00:00', '2012-03-19 00:00:00', 0, 'Contribute', NULL, NULL, 0, NULL, 0, 1, NULL, NULL),
(174, '', 'policy', 'Privacy policy', '<p>\r\n	This page will be comming soon !</p>\r\n', 'content', NULL, 'internal', NULL, NULL, NULL, 0, 0, '2012-03-20 00:00:00', '2012-03-20 00:00:00', 0, 'Privacy Policy', NULL, NULL, 0, NULL, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE IF NOT EXISTS `email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_name` varchar(255) DEFAULT NULL,
  `email_subject` varchar(255) DEFAULT NULL,
  `email_text` text,
  `email_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `email_name`, `email_subject`, `email_text`, `email_type`) VALUES
(1, 'Forgot Password', 'Reset your password', '&lt;p&gt;\r\n	***This is an automated email, please do not reply***&lt;/p&gt;\r\n&lt;p&gt;\r\n	Hi {FIRST_NAME} {LAST_NAME},&lt;/p&gt;\r\n&lt;p&gt;\r\n	Please click the link below to activate your website account. If the link is not clickable then copy and paste the link into the address bar in your browser.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	{VERIFY_URL}&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	If you did not setup this account please email us at&amp;nbsp;{SALES_EMAIL}&lt;/p&gt;\r\n&lt;p&gt;\r\n	Best Regards,&lt;/p&gt;\r\n&lt;p&gt;\r\n	{SITE_NAME}&lt;/p&gt;\r\n', 'HTML'),
(2, 'Message', 'Message From Admin', '&lt;p&gt;Name :{FIRST_NAME}&lt;/p&gt;\r\n&lt;p&gt;Email Address :{YOUR_EMAIL}&lt;/p&gt;\r\n&lt;p&gt;Message : {MESSAGE}.&lt;/p&gt;\r\n&lt;p&gt;Best Regards,&lt;/p&gt;\r\n&lt;p&gt;{SITE_NAME}&lt;/p&gt;', 'HTML'),
(3, 'Dispatch Note', 'Dispatch Note', '&lt;p&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;This e-mail is confidential and contains privileged information. If you are not the named recipient, please e-mail or phone us immediately. You should not disclose the contents to any person, take copies, or use it for any purpose. &lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;line-height: normal; margin: 0in 0in 12pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;Dear &lt;/span&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{FIRST_NAME}{LAST_NAME}, &lt;/span&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;&lt;span style=&quot;mso-spacerun: yes&quot;&gt;&amp;nbsp;&lt;/span&gt;Thank You for shopping with cWebCart. &lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;line-height: normal; margin: 0in 0in 12pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;b&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;Order Number: &lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{ORDER_NUMBER}&lt;/span&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;&lt;br /&gt;\r\n&lt;b&gt;VAT Number: &lt;/b&gt;&lt;/span&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{VAT_NUMBER}&lt;/span&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;&lt;br /&gt;\r\n&lt;b&gt;Order date: &lt;/b&gt;&lt;/span&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{ORDER_DATE}&lt;/span&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;Customer Details&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;table style=&quot;width: 100%; mso-cellspacing: .7pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0in 0in 0in 0in&quot; class=&quot;MsoNormalTable&quot; border=&quot;0&quot; cellspacing=&quot;1&quot; cellpadding=&quot;0&quot; width=&quot;100%&quot;&gt;\r\n    &lt;tbody&gt;\r\n        &lt;tr style=&quot;mso-yfti-irow: 0; mso-yfti-firstrow: yes&quot;&gt;\r\n            &lt;td style=&quot;border-bottom: #ece9d8; border-left: #ece9d8; padding-bottom: 0in; background-color: transparent; padding-left: 0in; width: 50%; padding-right: 0in; border-top: #ece9d8; border-right: #ece9d8; padding-top: 0in&quot; valign=&quot;top&quot; width=&quot;50%&quot;&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;Billing Address&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;/td&gt;\r\n            &lt;td style=&quot;border-bottom: #ece9d8; border-left: #ece9d8; padding-bottom: 0in; background-color: transparent; padding-left: 0in; padding-right: 0in; border-top: #ece9d8; border-right: #ece9d8; padding-top: 0in&quot; valign=&quot;top&quot;&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{BILLING_FIRST_NAME} {BILLING_LAST_NAME}&lt;/span&gt;&lt;/p&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;&amp;nbsp;{BILLING_ADDRESS1}&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{BILLING_ADDRESS2}&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{BILLING_CITY} &lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{BILLING_STATE}&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{BILLING_COUNTRY} &lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{BILLING_POSTCODE}&lt;/span&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;&lt;br style=&quot;mso-special-character: line-break&quot; /&gt;\r\n            &lt;br style=&quot;mso-special-character: line-break&quot; /&gt;\r\n            &lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;/td&gt;\r\n        &lt;/tr&gt;\r\n        &lt;tr style=&quot;mso-yfti-irow: 1&quot;&gt;\r\n            &lt;td style=&quot;border-bottom: #ece9d8; border-left: #ece9d8; padding-bottom: 0in; background-color: transparent; padding-left: 0in; width: 50%; padding-right: 0in; border-top: #ece9d8; border-right: #ece9d8; padding-top: 0in&quot; valign=&quot;top&quot; width=&quot;50%&quot;&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;Customer Telephone Number&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;/td&gt;\r\n            &lt;td style=&quot;border-bottom: #ece9d8; border-left: #ece9d8; padding-bottom: 0in; background-color: transparent; padding-left: 0in; padding-right: 0in; border-top: #ece9d8; border-right: #ece9d8; padding-top: 0in&quot; valign=&quot;top&quot;&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{BILLING_PHONE}&lt;/span&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;/td&gt;\r\n        &lt;/tr&gt;\r\n        &lt;tr style=&quot;mso-yfti-irow: 2; mso-yfti-lastrow: yes&quot;&gt;\r\n            &lt;td style=&quot;border-bottom: #ece9d8; border-left: #ece9d8; padding-bottom: 0in; background-color: transparent; padding-left: 0in; width: 50%; padding-right: 0in; border-top: #ece9d8; border-right: #ece9d8; padding-top: 0in&quot; valign=&quot;top&quot; width=&quot;50%&quot;&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;E-mail Address&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;/td&gt;\r\n            &lt;td style=&quot;border-bottom: #ece9d8; border-left: #ece9d8; padding-bottom: 0in; background-color: transparent; padding-left: 0in; padding-right: 0in; border-top: #ece9d8; border-right: #ece9d8; padding-top: 0in&quot; valign=&quot;top&quot;&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{BILLING_EMAIL}&lt;/span&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;/td&gt;\r\n        &lt;/tr&gt;\r\n    &lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;Delivery Details&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;table style=&quot;width: 100%; mso-cellspacing: .7pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0in 0in 0in 0in&quot; class=&quot;MsoNormalTable&quot; border=&quot;0&quot; cellspacing=&quot;1&quot; cellpadding=&quot;0&quot; width=&quot;100%&quot;&gt;\r\n    &lt;tbody&gt;\r\n        &lt;tr style=&quot;mso-yfti-irow: 0; mso-yfti-firstrow: yes&quot;&gt;\r\n            &lt;td style=&quot;border-bottom: #ece9d8; border-left: #ece9d8; padding-bottom: 0in; background-color: transparent; padding-left: 0in; width: 48.82%; padding-right: 0in; border-top: #ece9d8; border-right: #ece9d8; padding-top: 0in&quot; valign=&quot;top&quot; width=&quot;48%&quot;&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;Delivery Address&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;/td&gt;\r\n            &lt;td style=&quot;border-bottom: #ece9d8; border-left: #ece9d8; padding-bottom: 0in; background-color: transparent; padding-left: 0in; width: 50.74%; padding-right: 0in; border-top: #ece9d8; border-right: #ece9d8; padding-top: 0in&quot; valign=&quot;top&quot; width=&quot;50%&quot;&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{SHIPPING_FIRST_NAME} {SHIPPING_LAST_NAME}&lt;/span&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;&lt;br /&gt;\r\n            &lt;/span&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{SHIPPING_ADDRESS1}&lt;/span&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;&lt;br /&gt;\r\n            &lt;/span&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{SHIPPING_ADDRESS2}&lt;/span&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;&lt;br /&gt;\r\n            &lt;/span&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{SHIPPING_CITY}&lt;/span&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;&lt;br /&gt;\r\n            &lt;/span&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{SHIPPING_STATE}&lt;/span&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;&lt;br /&gt;\r\n            &lt;/span&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{SHIPPING_COUNTRY}&lt;/span&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;&lt;br /&gt;\r\n            &lt;/span&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{SHIPPING_POSTCODE}&lt;/span&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;/td&gt;\r\n        &lt;/tr&gt;\r\n        &lt;tr style=&quot;mso-yfti-irow: 1; mso-yfti-lastrow: yes&quot;&gt;\r\n            &lt;td style=&quot;border-bottom: #ece9d8; border-left: #ece9d8; padding-bottom: 0in; background-color: transparent; padding-left: 0in; width: 48.82%; padding-right: 0in; border-top: #ece9d8; border-right: #ece9d8; padding-top: 0in&quot; valign=&quot;top&quot; width=&quot;48%&quot;&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;Delivery Telephone Number&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;/td&gt;\r\n            &lt;td style=&quot;border-bottom: #ece9d8; border-left: #ece9d8; padding-bottom: 0in; background-color: transparent; padding-left: 0in; width: 50.74%; padding-right: 0in; border-top: #ece9d8; border-right: #ece9d8; padding-top: 0in&quot; valign=&quot;top&quot; width=&quot;50%&quot;&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{SHIPPING_PHONE}&lt;/span&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;/td&gt;\r\n        &lt;/tr&gt;\r\n    &lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;Order Details&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;Product Detail&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;table style=&quot;width: 100%; mso-cellspacing: .7pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0in 0in 0in 0in&quot; class=&quot;MsoNormalTable&quot; border=&quot;0&quot; cellspacing=&quot;1&quot; cellpadding=&quot;0&quot; width=&quot;100%&quot;&gt;\r\n    &lt;tbody&gt;\r\n        &lt;tr style=&quot;mso-yfti-irow: 0; mso-yfti-firstrow: yes&quot;&gt;\r\n            &lt;td style=&quot;border-bottom: #ece9d8; border-left: #ece9d8; padding-bottom: 0in; background-color: transparent; padding-left: 0in; width: 50%; padding-right: 0in; border-top: #ece9d8; border-right: #ece9d8; padding-top: 0in&quot; valign=&quot;top&quot; width=&quot;50%&quot;&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;Product Name&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;/td&gt;\r\n            &lt;td style=&quot;border-bottom: #ece9d8; border-left: #ece9d8; padding-bottom: 0in; background-color: transparent; padding-left: 0in; padding-right: 0in; border-top: #ece9d8; border-right: #ece9d8; padding-top: 0in&quot; valign=&quot;top&quot;&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{PRODUCT_NAME}&lt;/span&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;/td&gt;\r\n        &lt;/tr&gt;\r\n        &lt;tr style=&quot;mso-yfti-irow: 1; mso-yfti-lastrow: yes&quot;&gt;\r\n            &lt;td style=&quot;border-bottom: #ece9d8; border-left: #ece9d8; padding-bottom: 0in; background-color: transparent; padding-left: 0in; width: 50%; padding-right: 0in; border-top: #ece9d8; border-right: #ece9d8; padding-top: 0in&quot; valign=&quot;top&quot; width=&quot;50%&quot;&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;Quantity&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;/td&gt;\r\n            &lt;td style=&quot;border-bottom: #ece9d8; border-left: #ece9d8; padding-bottom: 0in; background-color: transparent; padding-left: 0in; padding-right: 0in; border-top: #ece9d8; border-right: #ece9d8; padding-top: 0in&quot; valign=&quot;top&quot;&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{QUANTITY}&lt;/span&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;/td&gt;\r\n        &lt;/tr&gt;\r\n    &lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;display: none; font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''; mso-hide: all&quot;&gt;&lt;o:p&gt;&amp;nbsp;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;table style=&quot;width: 100%; mso-cellspacing: .7pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0in 0in 0in 0in&quot; class=&quot;MsoNormalTable&quot; border=&quot;0&quot; cellspacing=&quot;1&quot; cellpadding=&quot;0&quot; width=&quot;100%&quot;&gt;\r\n    &lt;tbody&gt;\r\n        &lt;tr style=&quot;mso-yfti-irow: 0; mso-yfti-firstrow: yes&quot;&gt;\r\n            &lt;td style=&quot;border-bottom: #ece9d8; border-left: #ece9d8; padding-bottom: 0in; background-color: transparent; padding-left: 0in; width: 50%; padding-right: 0in; border-top: #ece9d8; border-right: #ece9d8; padding-top: 0in&quot; valign=&quot;top&quot; width=&quot;50%&quot;&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;Sub Total&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;/td&gt;\r\n            &lt;td style=&quot;border-bottom: #ece9d8; border-left: #ece9d8; padding-bottom: 0in; background-color: transparent; padding-left: 0in; padding-right: 0in; border-top: #ece9d8; border-right: #ece9d8; padding-top: 0in&quot; valign=&quot;top&quot;&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{SUB_TOTAL}&lt;/span&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;/td&gt;\r\n        &lt;/tr&gt;\r\n        &lt;tr style=&quot;mso-yfti-irow: 1&quot;&gt;\r\n            &lt;td style=&quot;border-bottom: #ece9d8; border-left: #ece9d8; padding-bottom: 0in; background-color: transparent; padding-left: 0in; width: 50%; padding-right: 0in; border-top: #ece9d8; border-right: #ece9d8; padding-top: 0in&quot; valign=&quot;top&quot; width=&quot;50%&quot;&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;Delivery Charges&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;/td&gt;\r\n            &lt;td style=&quot;border-bottom: #ece9d8; border-left: #ece9d8; padding-bottom: 0in; background-color: transparent; padding-left: 0in; padding-right: 0in; border-top: #ece9d8; border-right: #ece9d8; padding-top: 0in&quot; valign=&quot;top&quot;&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{DELIVERY_CHARGES}&lt;/span&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;/td&gt;\r\n        &lt;/tr&gt;\r\n        &lt;tr style=&quot;mso-yfti-irow: 2&quot;&gt;\r\n            &lt;td style=&quot;border-bottom: #ece9d8; border-left: #ece9d8; padding-bottom: 0in; background-color: transparent; padding-left: 0in; width: 50%; padding-right: 0in; border-top: #ece9d8; border-right: #ece9d8; padding-top: 0in&quot; valign=&quot;top&quot; width=&quot;50%&quot;&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;VAT&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;/td&gt;\r\n            &lt;td style=&quot;border-bottom: #ece9d8; border-left: #ece9d8; padding-bottom: 0in; background-color: transparent; padding-left: 0in; padding-right: 0in; border-top: #ece9d8; border-right: #ece9d8; padding-top: 0in&quot; valign=&quot;top&quot;&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{ORDER_VAT}&lt;/span&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;/td&gt;\r\n        &lt;/tr&gt;\r\n        &lt;tr style=&quot;mso-yfti-irow: 3; mso-yfti-lastrow: yes&quot;&gt;\r\n            &lt;td style=&quot;border-bottom: #ece9d8; border-left: #ece9d8; padding-bottom: 0in; background-color: transparent; padding-left: 0in; width: 50%; padding-right: 0in; border-top: #ece9d8; border-right: #ece9d8; padding-top: 0in&quot; valign=&quot;top&quot; width=&quot;50%&quot;&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;Total Cost&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;/td&gt;\r\n            &lt;td style=&quot;border-bottom: #ece9d8; border-left: #ece9d8; padding-bottom: 0in; background-color: transparent; padding-left: 0in; padding-right: 0in; border-top: #ece9d8; border-right: #ece9d8; padding-top: 0in&quot; valign=&quot;top&quot;&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Arial Unicode MS'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin&quot;&gt;{TOTAL_COST}&lt;/span&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;/td&gt;\r\n        &lt;/tr&gt;\r\n    &lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;Should you have any problems please do not hesitate to contact us.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;table style=&quot;width: 100%; mso-cellspacing: .7pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0in 0in 0in 0in&quot; class=&quot;MsoNormalTable&quot; border=&quot;0&quot; cellspacing=&quot;1&quot; cellpadding=&quot;0&quot; width=&quot;100%&quot;&gt;\r\n    &lt;tbody&gt;\r\n        &lt;tr style=&quot;mso-yfti-irow: 0; mso-yfti-firstrow: yes&quot;&gt;\r\n            &lt;td style=&quot;border-bottom: #ece9d8; border-left: #ece9d8; padding-bottom: 0in; background-color: transparent; padding-left: 0in; width: 50%; padding-right: 0in; border-top: #ece9d8; border-right: #ece9d8; padding-top: 0in&quot; valign=&quot;top&quot; width=&quot;50%&quot;&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;Address&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;/td&gt;\r\n            &lt;td style=&quot;border-bottom: #ece9d8; border-left: #ece9d8; padding-bottom: 0in; background-color: transparent; padding-left: 0in; padding-right: 0in; border-top: #ece9d8; border-right: #ece9d8; padding-top: 0in&quot; valign=&quot;top&quot;&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{CONTACT_ADDRESS1}&lt;/span&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;&lt;br /&gt;\r\n            &lt;/span&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{CONTACT_ADDRESs2&lt;/span&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;}&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{CONTACT_CITY}&lt;/span&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;&lt;br /&gt;\r\n            &lt;/span&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{CONTACT_ZIPCODE}&lt;/span&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;/td&gt;\r\n        &lt;/tr&gt;\r\n        &lt;tr style=&quot;mso-yfti-irow: 1&quot;&gt;\r\n            &lt;td style=&quot;border-bottom: #ece9d8; border-left: #ece9d8; padding-bottom: 0in; background-color: transparent; padding-left: 0in; width: 50%; padding-right: 0in; border-top: #ece9d8; border-right: #ece9d8; padding-top: 0in&quot; valign=&quot;top&quot; width=&quot;50%&quot;&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;E-mail&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;/td&gt;\r\n            &lt;td style=&quot;border-bottom: #ece9d8; border-left: #ece9d8; padding-bottom: 0in; background-color: transparent; padding-left: 0in; padding-right: 0in; border-top: #ece9d8; border-right: #ece9d8; padding-top: 0in&quot; valign=&quot;top&quot;&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{CONTACT_EMAIL}&lt;/span&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;/td&gt;\r\n        &lt;/tr&gt;\r\n        &lt;tr style=&quot;mso-yfti-irow: 2&quot;&gt;\r\n            &lt;td style=&quot;border-bottom: #ece9d8; border-left: #ece9d8; padding-bottom: 0in; background-color: transparent; padding-left: 0in; width: 50%; padding-right: 0in; border-top: #ece9d8; border-right: #ece9d8; padding-top: 0in&quot; valign=&quot;top&quot; width=&quot;50%&quot;&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;Web&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;/td&gt;\r\n            &lt;td style=&quot;border-bottom: #ece9d8; border-left: #ece9d8; padding-bottom: 0in; background-color: transparent; padding-left: 0in; padding-right: 0in; border-top: #ece9d8; border-right: #ece9d8; padding-top: 0in&quot; valign=&quot;top&quot;&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{CONTACT_WEB}&lt;/span&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;/td&gt;\r\n        &lt;/tr&gt;\r\n        &lt;tr style=&quot;mso-yfti-irow: 3; mso-yfti-lastrow: yes&quot;&gt;\r\n            &lt;td style=&quot;border-bottom: #ece9d8; border-left: #ece9d8; padding-bottom: 0in; background-color: transparent; padding-left: 0in; padding-right: 0in; border-top: #ece9d8; border-right: #ece9d8; padding-top: 0in&quot; valign=&quot;top&quot;&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;Telephone&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;/td&gt;\r\n            &lt;td style=&quot;border-bottom: #ece9d8; border-left: #ece9d8; padding-bottom: 0in; background-color: transparent; padding-left: 0in; padding-right: 0in; border-top: #ece9d8; border-right: #ece9d8; padding-top: 0in&quot; valign=&quot;top&quot;&gt;\r\n            &lt;p style=&quot;line-height: normal; margin: 0in 0in 0pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{CONTACT_PHONE}&lt;/span&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n            &lt;/td&gt;\r\n        &lt;/tr&gt;\r\n    &lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin: 0in 0in 10pt&quot; class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;line-height: 115%; font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;Order Tracking - You can check progress of your order at &lt;/span&gt;&lt;span style=&quot;line-height: 115%; font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{ACCOUNT_URL}.&lt;/span&gt;&lt;span style=&quot;line-height: 115%; font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt; If you placed your order using the Express Check-out you can request a password to enable tracking - simply click &lt;/span&gt;&lt;span style=&quot;line-height: 115%; font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;{FORGOT_PASSWORD_URL}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin: 0in 0in 10pt&quot; class=&quot;MsoNormal&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Best Regards,&lt;/p&gt;\r\n&lt;p&gt;{SITE_NAME}&lt;/p&gt;', 'HTML'),
(4, 'Order Payment Status', 'Order Status Changed', '&lt;p&gt;&amp;nbsp;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt&quot;&gt;This e-mail is confidential and contains privileged information. If you are not the named recipient, please e-mail or phone us immediately. You should not disclose the contents to any person, take copies, or use it for any purpose. Dear {FIRST_NAME} {LAST_NAME}Order date: {ORDER_DATE}. Your order payment status &lt;span style=&quot;mso-spacerun: yes&quot;&gt;&amp;nbsp;&lt;/span&gt;is {ORDER_STATUS}&lt;/span&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt&quot;&gt;Your current order shipping status is:&amp;nbsp;{ORDER_STATUS}&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt&quot;&gt;&lt;span style=&quot;mso-spacerun: yes&quot;&gt;&amp;nbsp;&lt;/span&gt;Our contact details are given below in case you have any complaints or questions:&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt&quot;&gt;&lt;span style=&quot;mso-spacerun: yes&quot;&gt;&amp;nbsp;&lt;/span&gt;Email:&amp;nbsp;{SALES_EMAIL} &lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt&quot;&gt;Phone:&amp;nbsp;{CONTACT_US}&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt&quot;&gt;Best Regards,&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt&quot;&gt;{SITE_NAME}&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 'HTML'),
(5, 'Change Password', 'Reset your password', '&lt;p&gt;***This is an automated email, please do not reply***&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;Hi, {FIRST_NAME} {LAST_NAME}&lt;/p&gt;\r\n&lt;p&gt;Please click the below given link to reset your password.&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;widows: 2; text-transform: none; text-indent: 0px; border-collapse: separate; font: medium ''Times New Roman''; white-space: normal; orphans: 2; letter-spacing: normal; color: rgb(0,0,0); word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px&quot; class=&quot;Apple-style-span&quot;&gt;&lt;span style=&quot;border-collapse: collapse; font-family: arial, sans-serif; font-size: 13px&quot; class=&quot;Apple-style-span&quot;&gt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;{CHANGE_URL}&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;widows: 2; text-transform: none; text-indent: 0px; border-collapse: separate; font: medium ''Times New Roman''; white-space: normal; orphans: 2; letter-spacing: normal; color: rgb(0,0,0); word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px&quot; class=&quot;Apple-style-span&quot;&gt;&lt;span style=&quot;border-collapse: collapse; font-family: arial, sans-serif; font-size: 13px&quot; class=&quot;Apple-style-span&quot;&gt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;If you did not setup this account please email us at&amp;nbsp;{SALES_EMAIL}&lt;/p&gt;\r\n&lt;p&gt;Best Regards,&lt;/p&gt;\r\n&lt;p&gt;{SITE_NAME}&lt;/p&gt;', 'HTML'),
(6, 'Verify On Register', 'Please confirm your email address.', '&lt;p&gt;***This is an automated email, please do not reply***&lt;/p&gt;\r\n&lt;p&gt;Hi {FIRST_NAME} {LAST_NAME}, &amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Please click the link below to activate your website account. If the link is not clickable then copy and paste the link into the address bar in your browser.&lt;/p&gt;\r\n&lt;p&gt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&lt;/p&gt;\r\n&lt;p&gt;{CONFIRM_URL}&lt;/p&gt;\r\n&lt;p&gt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&lt;/p&gt;\r\n&lt;p&gt;If you did not setup this account please email us at {SALES_EMAIL}&lt;/p&gt;\r\n&lt;p&gt;Best Regards,&lt;/p&gt;\r\n&lt;p&gt;{SITE_NAME}&lt;/p&gt;', 'HTML'),
(7, 'Resend Email', 'Resend login details', '&lt;p&gt;***This is an automated email, please do not reply***&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;Hi {FIRST_NAME} {LAST_NAME},&lt;/p&gt;\r\n&lt;p&gt;Please click the link below to activate your website account. If the link is not clickable then copy and paste the link into the address bar in your browser.&lt;/p&gt;\r\n&lt;p&gt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;{RESEND_URL}&lt;/p&gt;\r\n&lt;p&gt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&lt;/p&gt;\r\n&lt;p&gt;If you did not setup this account please email us at {SALES_EMAIL}&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Best Regards,&lt;/p&gt;\r\n&lt;p&gt;{SITE_NAME}&lt;/p&gt;', 'HTML'),
(8, 'Reset Email', 'Reset Your Email', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt&quot;&gt;***This is an automated email, please do not reply***&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt&quot;&gt;&lt;span style=&quot;mso-spacerun: yes&quot;&gt;&amp;nbsp;&lt;/span&gt;Hi {FIRST_NAME} {LAST_NAME},&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt&quot;&gt;&lt;span style=&quot;mso-spacerun: yes&quot;&gt;&amp;nbsp;&lt;/span&gt;Please click the link below to activate your website account. If the link is not clickable then copy and paste the link into the address bar in your browser. &lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt&quot;&gt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&lt;o:p&gt;&amp;nbsp;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt&quot;&gt;{RESET_URL}&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt&quot;&gt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&lt;o:p&gt;&amp;nbsp;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt&quot;&gt;If you did not setup this account please email us at {SALES_EMAIL}&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt&quot;&gt;Best Regards,&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt&quot;&gt;{SITE_NAME}&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 'HTML'),
(9, 'Login Detail', 'Login details', '&lt;p&gt;***This is an automated email, please do not reply***&lt;/p&gt;\r\n&lt;p&gt;Hi ,{FIRST_NAME} {LAST_NAME},&lt;/p&gt;\r\n&lt;p&gt;Your login details for your website account are:&lt;/p&gt;\r\n&lt;p&gt;Username: {USER}&lt;/p&gt;\r\n&lt;p&gt;Password: {PASSWORD}&lt;/p&gt;\r\n&lt;p&gt;***Please keep your account details safe and secure***&lt;/p&gt;\r\n&lt;p&gt;{SITE_NAME}&lt;/p&gt;', 'HTML');
INSERT INTO `email` (`id`, `email_name`, `email_subject`, `email_text`, `email_type`) VALUES
(10, 'Order Status Changed', 'Order Status Changed', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin: 0in 0in 10pt&quot;&gt;\r\n	&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;This e-mail is confidential and contains privileged information. If you are not the named recipient, please e-mail or phone us immediately. You should not disclose the contents to any person, take copies, or use it for any purpose. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin: 0in 0in 10pt&quot;&gt;\r\n	&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;Dear {FIRST_NAME} {LAST_NAME} &lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin: 0in 0in 10pt&quot;&gt;\r\n	&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;Order date: {ORDER_DATE}. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin: 0in 0in 10pt&quot;&gt;\r\n	&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;Your order payment status has successfully been {RECEIVED} . &lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin: 0in 0in 10pt&quot;&gt;\r\n	&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;Your current order shipping status is:{RECEIVED}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin: 0in 0in 10pt&quot;&gt;\r\n	&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;line-height: normal; margin: 0in 0in 10pt&quot;&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;line-height: normal; margin: 0in 0in 10pt&quot;&gt;\r\n	&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;Our contact details are given below in case you have any complaints or questions: Email: &lt;/span&gt;&lt;span style=&quot;font-family: ''Times New Roman'',''serif''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt&quot;&gt;Email:&amp;nbsp;{SALES_EMAIL} &lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt&quot;&gt;Phone:&amp;nbsp;{CONTACT_US}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt&quot;&gt;Best Regards,&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family: ''Arial'',''sans-serif''; font-size: 9pt&quot;&gt;{SITE_NAME}&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n', 'HTML'),
(11, 'Mail To Friend', 'Mail To Friend', '&lt;p&gt;***This is an automated email, please do not reply***&lt;/p&gt;\r\n&lt;p&gt;Hi {FIRST_NAME}&lt;!--[if gte mso 9]&gt;&lt;xml&gt;\r\n&lt;w:LatentStyles DefLockedState=&quot;false&quot; DefUnhideWhenUsed=&quot;true&quot;\r\nDefSemiHidden=&quot;true&quot; DefQFormat=&quot;false&quot; DefPriority=&quot;99&quot;\r\nLatentStyleCount=&quot;267&quot;&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;0&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; QFormat=&quot;true&quot; Name=&quot;Normal&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;9&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; QFormat=&quot;true&quot; Name=&quot;heading 1&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;9&quot; QFormat=&quot;true&quot; Name=&quot;heading 2&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;9&quot; QFormat=&quot;true&quot; Name=&quot;heading 3&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;9&quot; QFormat=&quot;true&quot; Name=&quot;heading 4&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;9&quot; QFormat=&quot;true&quot; Name=&quot;heading 5&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;9&quot; QFormat=&quot;true&quot; Name=&quot;heading 6&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;9&quot; QFormat=&quot;true&quot; Name=&quot;heading 7&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;9&quot; QFormat=&quot;true&quot; Name=&quot;heading 8&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;9&quot; QFormat=&quot;true&quot; Name=&quot;heading 9&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; Name=&quot;toc 1&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; Name=&quot;toc 2&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; Name=&quot;toc 3&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; Name=&quot;toc 4&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; Name=&quot;toc 5&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; Name=&quot;toc 6&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; Name=&quot;toc 7&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; Name=&quot;toc 8&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; Name=&quot;toc 9&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;35&quot; QFormat=&quot;true&quot; Name=&quot;caption&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;10&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; QFormat=&quot;true&quot; Name=&quot;Title&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;1&quot; Name=&quot;Default Paragraph Font&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;11&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; QFormat=&quot;true&quot; Name=&quot;Subtitle&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;22&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; QFormat=&quot;true&quot; Name=&quot;Strong&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;20&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; QFormat=&quot;true&quot; Name=&quot;Emphasis&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;59&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Table Grid&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; UnhideWhenUsed=&quot;false&quot; Name=&quot;Placeholder Text&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;1&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; QFormat=&quot;true&quot; Name=&quot;No Spacing&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;60&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Light Shading&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;61&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Light List&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;62&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Light Grid&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;63&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Shading 1&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;64&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Shading 2&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;65&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium List 1&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;66&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium List 2&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;67&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Grid 1&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;68&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Grid 2&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;69&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Grid 3&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;70&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Dark List&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;71&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Colorful Shading&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;72&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Colorful List&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;73&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Colorful Grid&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;60&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Light Shading Accent 1&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;61&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Light List Accent 1&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;62&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Light Grid Accent 1&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;63&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Shading 1 Accent 1&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;64&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Shading 2 Accent 1&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;65&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium List 1 Accent 1&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; UnhideWhenUsed=&quot;false&quot; Name=&quot;Revision&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;34&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; QFormat=&quot;true&quot; Name=&quot;List Paragraph&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;29&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; QFormat=&quot;true&quot; Name=&quot;Quote&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;30&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; QFormat=&quot;true&quot; Name=&quot;Intense Quote&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;66&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium List 2 Accent 1&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;67&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Grid 1 Accent 1&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;68&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Grid 2 Accent 1&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;69&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Grid 3 Accent 1&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;70&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Dark List Accent 1&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;71&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Colorful Shading Accent 1&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;72&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Colorful List Accent 1&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;73&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Colorful Grid Accent 1&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;60&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Light Shading Accent 2&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;61&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Light List Accent 2&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;62&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Light Grid Accent 2&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;63&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Shading 1 Accent 2&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;64&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Shading 2 Accent 2&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;65&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium List 1 Accent 2&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;66&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium List 2 Accent 2&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;67&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Grid 1 Accent 2&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;68&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Grid 2 Accent 2&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;69&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Grid 3 Accent 2&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;70&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Dark List Accent 2&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;71&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Colorful Shading Accent 2&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;72&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Colorful List Accent 2&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;73&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Colorful Grid Accent 2&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;60&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Light Shading Accent 3&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;61&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Light List Accent 3&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;62&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Light Grid Accent 3&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;63&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Shading 1 Accent 3&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;64&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Shading 2 Accent 3&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;65&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium List 1 Accent 3&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;66&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium List 2 Accent 3&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;67&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Grid 1 Accent 3&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;68&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Grid 2 Accent 3&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;69&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Grid 3 Accent 3&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;70&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Dark List Accent 3&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;71&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Colorful Shading Accent 3&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;72&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Colorful List Accent 3&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;73&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Colorful Grid Accent 3&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;60&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Light Shading Accent 4&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;61&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Light List Accent 4&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;62&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Light Grid Accent 4&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;63&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Shading 1 Accent 4&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;64&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Shading 2 Accent 4&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;65&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium List 1 Accent 4&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;66&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium List 2 Accent 4&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;67&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Grid 1 Accent 4&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;68&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Grid 2 Accent 4&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;69&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Grid 3 Accent 4&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;70&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Dark List Accent 4&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;71&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Colorful Shading Accent 4&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;72&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Colorful List Accent 4&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;73&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Colorful Grid Accent 4&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;60&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Light Shading Accent 5&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;61&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Light List Accent 5&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;62&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Light Grid Accent 5&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;63&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Shading 1 Accent 5&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;64&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Shading 2 Accent 5&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;65&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium List 1 Accent 5&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;66&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium List 2 Accent 5&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;67&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Grid 1 Accent 5&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;68&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Grid 2 Accent 5&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;69&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Grid 3 Accent 5&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;70&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Dark List Accent 5&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;71&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Colorful Shading Accent 5&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;72&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Colorful List Accent 5&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;73&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Colorful Grid Accent 5&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;60&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Light Shading Accent 6&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;61&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Light List Accent 6&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;62&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Light Grid Accent 6&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;63&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Shading 1 Accent 6&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;64&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Shading 2 Accent 6&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;65&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium List 1 Accent 6&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;66&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium List 2 Accent 6&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;67&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Grid 1 Accent 6&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;68&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Grid 2 Accent 6&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;69&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Medium Grid 3 Accent 6&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;70&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Dark List Accent 6&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;71&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Colorful Shading Accent 6&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;72&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Colorful List Accent 6&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;73&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; Name=&quot;Colorful Grid Accent 6&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;19&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; QFormat=&quot;true&quot; Name=&quot;Subtle Emphasis&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;21&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; QFormat=&quot;true&quot; Name=&quot;Intense Emphasis&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;31&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; QFormat=&quot;true&quot; Name=&quot;Subtle Reference&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;32&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; QFormat=&quot;true&quot; Name=&quot;Intense Reference&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;33&quot; SemiHidden=&quot;false&quot;\r\nUnhideWhenUsed=&quot;false&quot; QFormat=&quot;true&quot; Name=&quot;Book Title&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;37&quot; Name=&quot;Bibliography&quot; /&gt;\r\n&lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; QFormat=&quot;true&quot; Name=&quot;TOC Heading&quot; /&gt;\r\n&lt;/w:LatentStyles&gt;\r\n&lt;/xml&gt;&lt;![endif]--&gt;&lt;!--[if gte mso 10]&gt;\r\n&lt;style&gt;\r\n/* Style Definitions */\r\ntable.MsoNormalTable\r\n{mso-style-name:&quot;Table Normal&quot;;\r\nmso-tstyle-rowband-size:0;\r\nmso-tstyle-colband-size:0;\r\nmso-style-noshow:yes;\r\nmso-style-priority:99;\r\nmso-style-qformat:yes;\r\nmso-style-parent:&quot;&quot;;\r\nmso-padding-alt:0in 5.4pt 0in 5.4pt;\r\nmso-para-margin-top:0in;\r\nmso-para-margin-right:0in;\r\nmso-para-margin-bottom:10.0pt;\r\nmso-para-margin-left:0in;\r\nline-height:115%;\r\nmso-pagination:widow-orphan;\r\nfont-size:11.0pt;\r\nfont-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;\r\nmso-ascii-font-family:Calibri;\r\nmso-ascii-theme-font:minor-latin;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-fareast-theme-font:minor-fareast;\r\nmso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin;}\r\n&lt;/style&gt;\r\n&lt;![endif]--&gt;&lt;/p&gt;\r\n&lt;p&gt;Your friend ''{FRIEND_NAME}'' has sent you a link from {SITE_NAME} Please find the website link below to view this product.&lt;/p&gt;\r\n&lt;p&gt;Please click the following URL to checkout the website.:&lt;/p&gt;\r\n&lt;p&gt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&lt;/p&gt;\r\n&lt;p&gt;{PDETAIL_URL}&lt;/p&gt;\r\n&lt;p&gt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;lt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&amp;gt;&lt;/p&gt;\r\n&lt;p&gt;Note: If the above url is not clickable, please copy and paste this to your browser''s address bar .&lt;/p&gt;\r\n&lt;p&gt;Best Regards,&lt;/p&gt;\r\n&lt;p&gt;{SITE_NAME}&lt;/p&gt;', 'HTML');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT 'noimage.jpg',
  `event_end_date` date DEFAULT NULL,
  `event_date_show` date DEFAULT NULL,
  `venue` varchar(100) NOT NULL DEFAULT '',
  `short_description` text,
  `long_description` text,
  `free_paid` binary(1) NOT NULL DEFAULT '0',
  `fee` double NOT NULL DEFAULT '0',
  `event_type` varchar(250) DEFAULT NULL,
  `is_active` binary(1) NOT NULL DEFAULT '1',
  `register_on_off` binary(1) NOT NULL DEFAULT '1',
  `op1` text,
  `op2` text,
  `meta_name` varchar(255) DEFAULT NULL,
  `urlname` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='main event list' AUTO_INCREMENT=13 ;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `image`, `event_end_date`, `event_date_show`, `venue`, `short_description`, `long_description`, `free_paid`, `fee`, `event_type`, `is_active`, `register_on_off`, `op1`, `op2`, `meta_name`, `urlname`, `meta_keyword`, `meta_description`) VALUES
(8, 'Meeting: Cross Country Ski Enthusiasts', 'noevent.jpg', '2011-11-29', '2011-11-29', ' Hospitality Room, Joe Byrne Memorial Stadium', 'There will be a public meeting for citizens who are interested in revitalizing the Exploits Valley Cross Country Ski Club.&amp;nbsp; The meeting will take place on Tuesday, November 29 at7:00 PM in the Hospitality Room of the Joe Byrne Stadium.\r\n\r\nThis meeting is open to the public, and all local cross country skiers are encouraged to attend!&amp;nbsp;&lt;/p&gt;\r\n', '&lt;p&gt;\r\n	There will be a public meeting for citizens who are interested in revitalizing the Exploits Valley Cross Country Ski Club.&amp;amp;nbsp; The meeting will take place on Tuesday, November 29 at7:00 PM in the Hospitality Room of the Joe Byrne Stadium.&lt;/p&gt;\r\n&lt;p&gt;\r\n	This meeting is open to the public, and all local cross country skiers are encouraged to attend!&amp;amp;nbsp;&amp;lt;/p&amp;gt;&lt;/p&gt;\r\n', '0', 0, NULL, '1', '0', NULL, NULL, 'Meeting: Cross Country Ski Enthusiasts', 'meeting:-cross-country-ski-enthusiasts', 'Meeting: Cross Country Ski Enthusiasts', 'Meeting: Cross Country Ski Enthusiasts'),
(10, 'A Celtic Christmas', 'noevent.jpg', '2011-12-02', '2011-12-02', 'Gordon Pinsent Centre for the Arts', 'Together again with their second annual A Celtic Christmas Tour, The Irish Descendants and the Navigators invite you to celebrate the yuletide festivities through music and stories. The sold out 2010 tour was such a hit with folks of all ages they just couldn&amp;#39;t pass up the opportunity to ring in the holidays with you again this year.&lt;/p&gt;\r\n', '&lt;p&gt;\r\n	Together again with their second annual A Celtic Christmas Tour, The Irish Descendants and the Navigators invite you to celebrate the yuletide festivities through music and stories. The sold out 2010 tour was such a hit with folks of all ages they just couldn&amp;amp;#39;t pass up the opportunity to ring in the holidays with you again this year.&amp;lt;/p&amp;gt;&lt;/p&gt;\r\n', '0', 0, NULL, '1', '0', NULL, NULL, 'A Celtic Christmas', 'a-celtic-christmas', 'A Celtic Christmas', 'A Celtic Christmas'),
(11, 'Santa Claus Parade: Sponsored by the GFW Lions ', 'noevent.jpg', '2012-03-06', '2012-03-02', 'Grand Falls-Windsor, NL', 'The Parade route will begin from in front of Riff&amp;#39;s Department Store on Main Street, on to Columbus Drive and work its way towards Cromer Avenue. The parade will proceed on to Lincoln Road, down Carmelite Road, Church Road and onto High Street. It will then move on to Circular Road and turn left up Union Street and will then finish up at the Central Newfoundland Regional Hospital.\r\n\r\n	', '&lt;p&gt;\r\n	The Exploits Jazz Band Christmas concert will also feature guest performers ABC Trio and guest vocal soloist Michele Cole. All tickets are $15.00.&lt;/p&gt;\r\n', '0', 0, NULL, '1', '0', NULL, NULL, 'Santa Claus Parade: Sponsored by the GFW Lions ', 'santa-claus-parade:-sponsored-by-the-gfw-lions-', 'Santa Claus Parade: Sponsored by the GFW Lions ', 'Santa Claus Parade: Sponsored by the GFW Lions '),
(12, 'Mary Ricketts Silent Auction', 'noevent.jpg', '2011-12-03', '2011-12-03', 'Gordon Pinsent Centre for the Arts', 'Looking for that unique Christmas Gift???? This Silent auction has something for everyone!!\r\n	\r\nA portion of the money raised will be used to fund scholarships. Items included in the Silent Auction will be original&amp;nbsp; Fine-Art painting and prints by a variety of artists from Newfoundland, Nova Scotia, Ontario and Quebec. As well as Antiques and Collectibles from the Collection of Mary Ricketts.&amp;nbsp; Opening bid prices are very reasonable and there is something for everyone. Come and have a look for yourself from 2 to 4 pm and bid on that special item with could be a gift!\r\n\r\n', '&lt;p&gt;\r\n	Looking for that unique Christmas Gift???? This Silent auction has something for everyone!!&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', '0', 0, NULL, '1', '0', NULL, NULL, 'Mary Ricketts Silent Auction', 'mary-ricketts-silent-auction', 'Mary Ricketts Silent Auction', 'Mary Ricketts Silent Auction');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `is_active` binary(1) NOT NULL DEFAULT '0',
  `position` varchar(255) DEFAULT NULL,
  `meta_name` varchar(255) NOT NULL,
  `urlname` varchar(255) DEFAULT NULL,
  `meta_keyword` text,
  `meta_description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `question`, `answer`, `is_active`, `position`, `meta_name`, `urlname`, `meta_keyword`, `meta_description`) VALUES
(13, 'What is the gallery? How can I get my pictures added?', '&lt;p&gt;\r\n	The gallery is a sample of pictures from right around Grand Falls-Windsor, if you would like to add your pictures, please&amp;nbsp;email gallery@townofgrandfallswindsor.com. If your pictures are approved we will add them.&lt;/p&gt;\r\n', '1', '5', '', NULL, NULL, NULL),
(14, 'The Business Directory looks different?', '&lt;p&gt;\r\n	The business directory now has a brand new look and way of operating. Instead of just searching or selecting a certain&amp;nbsp;sector, we have incorporated a map of the Town of Grand Falls-Windsor. On this map you can see all the sectors and find where&amp;nbsp;the Business is located. Additionally the system will allow you to get directions to that area from your house.&lt;/p&gt;\r\n', '1', '6', '', NULL, NULL, NULL),
(12, 'Something went wrong or something is inaccessible, what do I do?', '&lt;p&gt;\r\n	Websites such as ours sometimes have technical problems, if you experience such problems you can visit the idea garden and&amp;nbsp;send the problems, along with as much information as possible to the &amp;ldquo;Webmaster&amp;rdquo;. If something is really becoming a problem,&amp;nbsp;ensure that you contact &amp;ldquo;Gary Hennessey&amp;rdquo;, Economic Development Officer for the Town.&lt;/p&gt;\r\n', '1', '4', '', NULL, NULL, NULL),
(11, 'What does the &quot;You are here&quot; box do?', '&lt;p&gt;\r\n	The &amp;ldquo;You are here&amp;rdquo; box allows you to easily know exactly where you are on the Town of Grand Falls-Windsor website. With in&amp;nbsp;a seconds notice you know exactly what page you are on and how you got there.&lt;/p&gt;\r\n', '1', '3', '', NULL, NULL, NULL),
(10, 'How does the new navigation system work?', '&lt;p&gt;\r\n	The new navigation system works so that you never have to use the back button in your browser. The navigation menu is&amp;nbsp;accessible from anywhere on the website - the best thing is that you can easily get anywhere on the website from this menu&amp;nbsp;and it is very easy to use. All you need to do is click the category you want (out of 4) then select the descriptive part of&amp;nbsp;the website you want to go to and it&amp;rsquo;ll reload the page to the new selected page.&lt;/p&gt;\r\n', '1', '2', '', NULL, NULL, NULL),
(8, 'What is the idea garden?', '&lt;p&gt;\r\n	The idea garden is a contact system of which you can send your ideas, suggestions and comments about the town to the&amp;nbsp;specific department to be suggested to council.&lt;/p&gt;\r\n', '1', '0', '', NULL, NULL, NULL),
(9, 'How can I get my event on the calendar?', '&lt;p&gt;\r\n	With our new website you can easily add events to our calendar, all you need to do is enter all the details on the events&amp;nbsp;and after it&amp;rsquo;s approved by our administrator team it will be put live on our website. You can view our events calendar and&amp;nbsp;suggest events here.&lt;/p&gt;\r\n', '1', '1', '', NULL, NULL, NULL),
(15, 'I want my business added to the directory or I need to update it. What do I do?', '&lt;p&gt;\r\n	We encourage all businesses to keep an up-to-date business profile on this website. To do so we allow all businesses to&amp;nbsp;submit and edit their business information, after it is approved it will put live and will be indexed by Google and&amp;nbsp;searchable by Residents of the Town.&lt;/p&gt;\r\n', '1', '7', '', NULL, NULL, NULL),
(16, 'Other Questions?', '&lt;p&gt;\r\n	If you have any further questions regarding the website please contact our webmaster through our idea garden.&lt;/p&gt;\r\n', '1', '8', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT 'noimage.jpg',
  `caption` text CHARACTER SET utf8 NOT NULL,
  `description` text,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `position` int(255) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `show_home` tinyint(1) NOT NULL DEFAULT '0',
  `meta_name` varchar(255) NOT NULL,
  `urlname` varchar(255) DEFAULT NULL,
  `meta_keyword` text,
  `meta_description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `name`, `image`, `caption`, `description`, `parent_id`, `position`, `is_active`, `show_home`, `meta_name`, `urlname`, `meta_keyword`, `meta_description`) VALUES
(19, 'Visits Gallery', 'Lighthouse.jpg', '', 'Here u can add imags for Visits  Gallery', 0, 0, 1, 0, 'Visits Gallery', 'Visits Gallery', 'Visits Gallery', 'Here u can add imags for Visits  Gallery'),
(22, 'Admin Gallery', 'pier518310.jpg', '', 'Description of admin gallery', 0, 0, 1, 0, 'Admin Gallery', 'admin-gallery', 'Admin Gallery', 'Admin Gallery');

-- --------------------------------------------------------

--
-- Table structure for table `gimage`
--

CREATE TABLE IF NOT EXISTS `gimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL DEFAULT 'noimage.jpg',
  `caption` text CHARACTER SET utf8 NOT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) DEFAULT '1',
  `default_image` binary(1) NOT NULL DEFAULT '0',
  `link_url` varchar(255) DEFAULT NULL,
  `target` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `gimage`
--

INSERT INTO `gimage` (`id`, `parent_id`, `image`, `caption`, `position`, `is_active`, `default_image`, `link_url`, `target`) VALUES
(46, 19, 'lotus60253345.jpg', '', 0, 1, '0', NULL, NULL),
(19, 20, 'Koala.jpg', 'koala', 1, 1, '0', NULL, NULL),
(18, 20, 'Tulips.jpg', 'Tulips', 2, 1, '0', NULL, NULL),
(45, 19, 'stones324900573.jpg', '', 0, 1, '0', NULL, NULL),
(24, 18, 'deqws.jpg', '', 2, 1, '0', NULL, NULL),
(23, 18, 'e.jpg', '', 2, 1, '0', NULL, NULL),
(42, 19, 'Penguins551926563.jpg', '', 1, 0, '0', NULL, NULL),
(43, 19, 'grass-blades595818007.jpg', '', 0, 1, '0', NULL, NULL),
(44, 19, 'mojave1210038512.jpg', '', 0, 1, '0', NULL, NULL),
(20, 20, 'Jellyfish.jpg', 'Jellyfish', 3, 1, '0', NULL, NULL),
(21, 20, 'Chrysanthemum.jpg', 'Chrysanthemum', 4, 1, '0', NULL, NULL),
(22, 20, 'big1821879351.jpg', 'Penguins', 5, 1, '0', NULL, NULL),
(25, 18, 'e1.jpg', '', 3, 1, '0', NULL, NULL),
(26, 18, 'gallery_image3.png', '', 4, 1, '0', NULL, NULL),
(27, 18, 'property_image.jpg', '', 5, 1, '0', NULL, NULL),
(39, 21, 'mojave1072464992.jpg', 'mojave', 3, 1, '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE IF NOT EXISTS `keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_name` varchar(255) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `keywords`
--

INSERT INTO `keywords` (`id`, `page_name`, `page_title`, `keyword`, `description`) VALUES
(2, 'gallery', 'Gallery', 'Gallery', '');

-- --------------------------------------------------------

--
-- Table structure for table `lists`
--

CREATE TABLE IF NOT EXISTS `lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `emailaddress` varchar(255) NOT NULL DEFAULT '',
  `signupon` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(35) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `lists`
--

INSERT INTO `lists` (`id`, `name`, `emailaddress`, `signupon`, `ip_address`) VALUES
(16, 'test', 'test@test.com', '2009-11-19 16:44:23', '192.168.0.110');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `page_name`, `display_name`, `is_active`) VALUES
(1, 'news', 'News', '1'),
(2, 'event', 'Events', '1'),
(3, 'category', 'Business Directory', '1'),
(4, 'links', 'Links', '1'),
(5, 'council_videos', 'Videos', '1'),
(6, 'photos', 'Gallery', '1'),
(7, 'blog', 'Blog', '1'),
(8, 'faqs', 'F.A.Q', '1');

-- --------------------------------------------------------

--
-- Table structure for table `navigation`
--

CREATE TABLE IF NOT EXISTS `navigation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0',
  `navigation_title` varchar(255) DEFAULT NULL,
  `navigation_link` varchar(255) DEFAULT NULL,
  `small_description` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `navigation_query` varchar(255) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=ucs2 AUTO_INCREMENT=93 ;

--
-- Dumping data for table `navigation`
--

INSERT INTO `navigation` (`id`, `parent_id`, `navigation_title`, `navigation_link`, `small_description`, `position`, `is_active`, `navigation_query`, `page_id`) VALUES
(70, 0, 'About', 'about-us', '', 2, 1, '', NULL),
(58, 0, 'Home', 'home', 'Our Home', 3, 1, '', NULL),
(75, 58, 'Site Map', 'sitemap', NULL, 1, 1, NULL, NULL),
(78, 71, 'Hearth', 'hearth', NULL, 1, 1, NULL, NULL),
(71, 0, 'Products', 'hearth', '', 3, 1, '', NULL),
(72, 0, 'FAQ''s', 'faqs', '', 5, 1, '', NULL),
(77, 0, 'Contact Us', 'contact-us', NULL, 4, 1, NULL, NULL),
(79, 71, 'Plumbing', 'plumbing', NULL, 2, 1, NULL, NULL),
(80, 71, 'Outdoor', 'pools', NULL, 3, 1, NULL, NULL),
(81, 70, 'Projects', 'project', NULL, 1, 1, NULL, NULL),
(82, 58, 'News', 'content', NULL, 2, 1, 'id=31', 31),
(83, 70, 'Our Advice', 'advice', '', 1, 1, '', 32),
(84, 0, 'Resident', 'content', 'description', 0, 1, 'id=21', 20),
(85, 0, NULL, 'content', NULL, 0, 1, 'id=163', 163),
(89, 0, 'council-videoss', 'content', NULL, 0, 1, 'id=159', 159);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `date_show` varchar(255) DEFAULT NULL,
  `short_description` text,
  `long_description` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'on',
  `image` varchar(255) DEFAULT 'nonews.jpg',
  `position` int(11) DEFAULT '0',
  `meta_name` varchar(255) DEFAULT NULL,
  `urlname` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `date_show`, `short_description`, `long_description`, `is_active`, `image`, `position`, `meta_name`, `urlname`, `meta_keyword`, `meta_description`) VALUES
(42, 'Garbage Collection Schedule for Friday, November 11 and Drop Off News', '2011-11-09', 'Due to the Remembrance Day Holiday on Friday, November 11th, the regular Garbage collection scheduled for Friday will now be collected on Monday. Also there will be no drop off at the Depot this Saturday.', '&lt;p&gt;\r\n	Due to the Remembrance Day Holiday on Friday, November 11th, the regular Garbage collection scheduled for Friday will now be collected on Monday. Also there will be no drop off at the Depot this Saturday.&lt;/p&gt;\r\n', 'on', 'nonews.jpg', 0, 'Garbage Collection Schedule for Friday, November 11 and Drop Off News', 'garbage-collection-schedule-for-friday,-november-11-and-drop-off-news', 'Garbage Collection Schedule for Friday, November 11 and Drop Off News', 'Garbage Collection Schedule for Friday, November 11 and Drop Off News'),
(43, 'Town wins Torngat Award for Economic Development', '2011-11-07', 'Mayor Al Hawkins announced that the Town of Grand Falls-Windsor was awarded the Torngat Award Saturday evening at the Municipalities NL Convention in Corner Brook. They were co-winners of the Economic Development Award along with Torbay.', '&lt;p&gt;\r\n	Mayor Al Hawkins announced that the Town of Grand Falls-Windsor was awarded the Torngat Award Saturday evening at the Municipalities NL Convention in Corner Brook. They were co-winners of the Economic Development Award along with Torbay.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	The award recognizes excellence in Economic Development in innovation, long-term benefits, public involvement, co-operation, sustainability, and transferability. The winning submission was for the High Street re-development project.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Mayor Hawkins stated that this project is a result of Council&amp;rsquo;s forward thinking approach to Economic Development and Capital Expenditures, as well as significant support from the Provincial and Federal governments. The High Street Re-development project began last August and is nearing completion, with a total changeover in the streetscape of High Street, along with the improved facades of several businesses on the street.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	The Town is very proud to be the recipient of this award and continues to strive for growth as it progresses towards 2012.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Contact:&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Mayor Al Hawkins&lt;br /&gt;\r\n	709-489-0412 Office&lt;br /&gt;\r\n	Email: mayor@grandfallswindsor.com&lt;/p&gt;\r\n', 'on', 'nonews.jpg', 0, 'Town wins Torngat Award for Economic Development', 'town-wins-torngat-award-for-economic-development', 'Town wins Torngat Award for Economic Development', 'Town wins Torngat Award for Economic Development'),
(44, 'Red Maple Festival Schedule', '2011-10-28', 'For information regarding the Red Maple Festival Schedule and the full downloadable schedule, please click here.', '&lt;p&gt;\r\n	For information regarding the Red Maple Festival Schedule and the full downloadable schedule, &lt;strong&gt;please click here&lt;/strong&gt;.&lt;/p&gt;\r\n', 'on', '', 0, 'Red Maple Festival Schedule', 'red-maple-festival-schedule', 'Red Maple Festival Schedule', 'Red Maple Festival Schedule'),
(45, 'Town reviewing New Town Plan and Regulations', '2011-10-17', 'The Town of Grand Falls-Windsor is reviewing its new Town Plan and Town Regulations. The Town is looking for feedback from the general public on these projects.        Please provide the Town with your comments or questions regarding the new Draft Municipal Plan and Development Regulations by contacting  Mary Wong by email at planner@grandfallswindsor.com,  by phone at 489-0211, or write to the Community Planner, Town of Grand Falls-Windsor, P.O. Box 439, 5 High Street, Grand Falls-Windsor, NL, A2A 2J8.    Closing date for Public Comments is October 31, 2011. These plans can be viewed on the Town&acirc;€™s website at www.grandfallswindsor.com Click the Residents and Council link on the site.', '&lt;p&gt;\r\n	The Town of Grand Falls-Windsor is reviewing its new Town Plan and Town Regulations. The Town is looking for feedback from the general public on these projects.&amp;nbsp;&amp;nbsp; &amp;nbsp;&lt;br /&gt;\r\n	&amp;nbsp;&amp;nbsp; &amp;nbsp;Please provide the Town with your comments or questions regarding the new Draft Municipal Plan and Development Regulations by contacting&amp;nbsp; Mary Wong by email at planner@grandfallswindsor.com,&amp;nbsp; by phone at 489-0211, or write to the Community Planner, Town of Grand Falls-Windsor, P.O. Box 439, 5 High Street, Grand Falls-Windsor, NL, A2A 2J8.&lt;br /&gt;\r\n	&amp;nbsp;&amp;nbsp; &amp;nbsp;Closing date for Public Comments is October 31, 2011. These plans can be viewed on the Town&amp;rsquo;s website at www.grandfallswindsor.com Click the Residents and Council link on the site.&lt;/p&gt;\r\n&lt;div class=&quot;clear&quot;&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n', 'on', 'nonews.jpg', 0, 'Town reviewing New Town Plan and Regulations', 'town-reviewing-new-town-plan-and-regulations', 'Town reviewing New Town Plan and Regulations', 'Town reviewing New Town Plan and Regulations'),
(46, 'Household Hazardous Waste Day', '2011-10-15', 'Household Hazardous Waste DayThe Town of Grand Falls Windsor will be holding a Household Hazardous Waste Day on Saturday, October 15, 2011 at Centennial Field from 8:00 a.m. to 4:00 p.m. Please do not bring empty containers, as these are safe in regular garbage pick-up.Examples of Household Hazardous Waste accepted are as follows: Housekeeping:Ammonia, bleach, carpet shampoo, detergent, oven cleaner, wax, polish Paint and Related Products:Oil &amp; latex paint, stain, primer, sealer, varnish, paint thinner, paint remover Home Maintenance &amp; Repair:Adhesive, contact cement, glue, ink, tar, water repellent, metal cleaner Pest Control:Flea powder, herbicide, insecticide, insect repellent, rodent poison Automotive Care:Automotive lead acid batteries, motor oil, transmission ', '&lt;p&gt;\r\n	Household Hazardous Waste Day&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	The Town of Grand Falls &amp;ndash; Windsor will be holding a Household Hazardous Waste Day on Saturday, October 15, 2011 at Centennial Field from 8:00 a.m. to 4:00 p.m.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Please do not bring empty containers, as these are safe in regular garbage pick-up.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Examples of Household Hazardous Waste accepted are as follows:&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	Housekeeping:&lt;br /&gt;\r\n	Ammonia, bleach, carpet shampoo, detergent, oven cleaner, wax, polish&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	Paint and Related Products:&lt;br /&gt;\r\n	Oil &amp;amp; latex paint, stain, primer, sealer, varnish, paint thinner, paint remover&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	Home Maintenance &amp;amp; Repair:&lt;br /&gt;\r\n	Adhesive, contact cement, glue, ink, tar, water repellent, metal cleaner&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	Pest Control:&lt;br /&gt;\r\n	Flea powder, herbicide, insecticide, insect repellent, rodent poison&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	Automotive Care:&lt;br /&gt;\r\n	Automotive lead acid batteries, motor oil, transmission fluid, antifreeze&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	Household Batteries:&lt;br /&gt;\r\n	Household dry cell, alkaline, mercury oxide, zinc carbon, zinc/air button&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	Aerosols and Compressed Gasses:&lt;br /&gt;\r\n	Aerosol containers with residual product, propane tanks, butane lighters&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	Fire Suppressants:&lt;br /&gt;\r\n	Dry chemical fire extinguishers, carbon dioxide fire extinguishers&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	Other:&lt;br /&gt;\r\n	Photo chemicals, mercury thermometers and thermostats, toiletries&lt;/p&gt;\r\n', 'on', 'nonews.jpg', 0, 'Household Hazardous Waste Day', 'household-hazardous-waste-day', 'Household Hazardous Waste Day', 'Household Hazardous Waste Day');

-- --------------------------------------------------------

--
-- Table structure for table `pimage`
--

CREATE TABLE IF NOT EXISTS `pimage` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `parent_id` int(255) NOT NULL DEFAULT '0',
  `image` varchar(2055) NOT NULL,
  `caption` text NOT NULL,
  `position` int(255) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `default_image` binary(1) NOT NULL DEFAULT '0',
  `link_url` varchar(255) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `pimage`
--

INSERT INTO `pimage` (`id`, `parent_id`, `image`, `caption`, `position`, `is_active`, `default_image`, `link_url`, `target`) VALUES
(3, 3, 'img-3821879351.jpg', '', 1, 1, '0', NULL, NULL),
(4, 2, 'img-2224948290.jpg', '', 1, 1, '0', NULL, NULL),
(6, 1, 'img-11099438010.jpg', '', 1, 1, '0', NULL, NULL),
(7, 5, 'big3439990395.jpg', '', 1, 1, '0', NULL, NULL),
(8, 5, 'big41047755185.jpg', '', 2, 1, '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(2055) NOT NULL DEFAULT 'noimage.jpg',
  `caption` text NOT NULL,
  `description` text NOT NULL,
  `parent_id` int(255) NOT NULL DEFAULT '0',
  `position` int(255) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `name`, `image`, `caption`, `description`, `parent_id`, `position`, `is_active`) VALUES
(1, 'Project1', 'img-1607299.jpg', '', 'Project 1', 0, 0, 1),
(2, 'Project2', 'img-2.jpg', '', 'ASDasd', 0, 2, 1),
(3, 'Project3', 'img-3334808.jpg', '', 'project3', 0, 3, 1),
(5, 'Project4', 'hearth_pictures_1277985826.jpg', '', 'ade', 0, 4, 1),
(6, 'Project5', 'img-1572784.jpg', '', '', 0, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE IF NOT EXISTS `section` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `section_slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`id`, `name`, `section_slug`) VALUES
(1, 'Visit', 'visit'),
(2, 'Relocate', 'relocate'),
(3, 'Residents', 'residents'),
(4, 'Business', 'business'),
(5, 'Content', 'content'),
(6, 'Conventions', 'conventions'),
(7, 'Living', 'living'),
(8, 'Age Friendly Project', 'age_friendly');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `value` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `name` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(20) DEFAULT 'select',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `key`, `value`, `name`, `title`, `type`) VALUES
(1, 'ADMIN_EMAIL', 'rocky.developer001@gmail.com', 'email', 'admin email adress', 'text'),
(3, 'SUPPORT_EMAIL', 'rocky.developer004@gmail.com', 'email', 'support email address', 'text'),
(4, 'BCC_EMAIL', 'rocky.developer004@gmail.com', 'email', 'BCC email address', 'text'),
(6, 'SITE_NAME', 'keith Ordeneaux', 'website', 'website name', 'text'),
(11, 'ADMIN_CATEGORY_PAGE_SIZE', '68', 'admin', 'page size for all pages', 'text'),
(28, 'THUMB_HEIGHT', '250', 'Image', 'Thumbnail height', 'text'),
(29, 'THUMB_WIDTH', '250', 'Image', 'Thumbnail width', 'text'),
(32, 'PHONE_NUMBER', '(333) 222-7777', 'address', 'Sales Phone Number', 'text'),
(34, 'ADDRESS1', '', 'address', 'Company Address Line 1', 'text'),
(35, 'ADDRESS2', '', 'address', 'Company Address Line 2', 'text'),
(36, 'CITY', '', 'address', 'City', 'text'),
(37, 'ZIP_CODE', '', 'address', 'Zip Code', 'text'),
(38, 'WEBSITE', '', 'address', 'Company Website', 'text'),
(39, 'SMTP_HOST', '', 'SMTP', 'SMTP Host', 'text'),
(40, 'SMTP_USERNAME', '', 'SMTP', 'SMTP Username', 'text'),
(41, 'SMTP_PASSWORD', '', 'SMTP', 'SMTP Password', 'text'),
(42, 'MEDIUM_HEIGHT', '350', 'Image', 'Medium Size Image height', 'text'),
(43, 'MEDIUM_WIDTH', '350', 'Image', 'Medium Size Image width', 'text'),
(44, 'FACEBOOK_PAGE', 'http://www.facebook.com/MarbleMountain', 'Social Media', 'Facebook Page ', 'text'),
(45, 'TWITTER_PAGE', 'http://twitter.com/#!/SkiMarble', 'Social Media', 'Twitter  Page ', 'text'),
(46, 'YOUTUBE_PAGE', 'http://www.youtube.com/SkiMarble', 'Social Media', 'Youtube Page', 'text'),
(47, 'GOOGLE_VC', '', 'SEO INFORMATION', 'Google Verify Code', 'text'),
(48, 'YAHOO_VC', '', 'SEO INFORMATION', 'Yahoo Verify Code', 'text'),
(49, 'BING_VC', '', 'SEO INFORMATION', 'Bing Verify Code', 'text'),
(50, 'GOOGLE_AC', '', 'SEO INFORMATION', 'Google Analytic Code', 'text'),
(51, 'APP_STORE', 'http://itunes.apple.com/ca/app/skimarble/id358173075?mt=8', 'Social Media', 'App Store', 'text'),
(52, 'WORDPRESS_BLOG', 'http://blog.skimarble.com/', 'Social Media', 'Wordpress Blog', 'text'),
(53, 'FDP', '1', 'Social Media', 'Facebook Direct Post', 'select'),
(54, 'TDP', '0', 'Social Media', 'Twitter  Direct Post', 'select'),
(55, 'FACEBOOK_APP_CODE', '299865633388242', 'Social Media', 'Facebook Application Code', 'text'),
(56, 'FACEBOOK_APP_SECRET', '98e820e7ab9a7063effd8f48febaffe6', 'Social Media', 'Facebook Application Secret', 'text'),
(57, 'HST', '14', 'Tax Rate', 'HST(%)', 'text');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE IF NOT EXISTS `slide` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `slideshow_id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `image` varchar(2055) NOT NULL,
  `position` int(255) DEFAULT '0',
  `is_active` binary(1) NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `slideshow_id`, `title`, `short_description`, `image`, `position`, `is_active`, `link`) VALUES
(18, 3, 'Slide1', 'description', '1967559.gif', 0, '1', ''),
(31, 4, '', '', 'header_img699493.jpg', 0, '1', ''),
(32, 4, '', '', 'header_img1186462.jpg', 0, '1', ''),
(33, 4, '', '', 'header_img2609344.jpg', 0, '1', ''),
(34, 4, '', '', 'header_img3982391.jpg', 0, '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `slideshow`
--

CREATE TABLE IF NOT EXISTS `slideshow` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `slideshow_title` varchar(255) NOT NULL,
  `on_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `height` varchar(255) NOT NULL,
  `width` varchar(255) NOT NULL,
  `total` int(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `slideshow`
--

INSERT INTO `slideshow` (`id`, `slideshow_title`, `on_date`, `height`, `width`, `total`, `is_active`) VALUES
(4, 'Home Page Slides', '2011-07-27 10:31:32', '998', '997', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_stat`
--

CREATE TABLE IF NOT EXISTS `web_stat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(40) DEFAULT NULL,
  `on_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=691 ;

--
-- Dumping data for table `web_stat`
--

INSERT INTO `web_stat` (`id`, `ip_address`, `on_date`) VALUES
(1, '127.0.0.1', '2011-04-29 07:28:19'),
(2, '127.0.0.1', '2011-05-10 11:31:29'),
(3, '192.168.1.4', '2011-05-10 11:43:48'),
(4, '192.168.1.4', '2011-05-10 11:45:16'),
(5, '192.168.1.4', '2011-05-12 12:40:50'),
(6, '192.168.1.11', '2011-05-14 07:27:09'),
(7, '192.168.1.11', '2011-05-14 08:58:50'),
(8, '192.168.1.11', '2011-05-15 19:00:59'),
(9, '192.168.1.11', '2011-05-15 20:45:45'),
(10, '192.168.1.11', '2011-05-17 05:14:02'),
(11, '192.168.1.4', '2011-05-17 07:41:16'),
(12, '192.168.1.11', '2011-05-17 10:03:54'),
(13, '192.168.1.11', '2011-05-18 06:15:08'),
(14, '192.168.1.11', '2011-05-19 09:41:50'),
(15, '192.168.1.4', '2011-05-19 09:51:25'),
(16, '192.168.1.11', '2011-05-19 13:13:15'),
(17, '192.168.1.11', '2011-05-20 04:40:44'),
(18, '192.168.1.2', '2011-05-20 13:08:04'),
(19, '192.168.1.11', '2011-05-21 03:57:07'),
(20, '192.168.1.2', '2011-05-21 06:14:37'),
(21, '192.168.1.2', '2011-05-21 10:30:32'),
(22, '192.168.1.2', '2011-05-21 10:39:30'),
(23, '192.168.1.2', '2011-05-21 10:50:56'),
(24, '192.168.1.11', '2011-05-21 13:03:56'),
(25, '192.168.1.11', '2011-05-23 11:48:03'),
(26, '192.168.1.11', '2011-05-23 11:57:29'),
(27, '192.168.1.11', '2011-05-23 12:14:26'),
(28, '192.168.1.2', '2011-05-24 04:02:21'),
(29, '192.168.1.11', '2011-05-24 05:26:26'),
(30, '192.168.1.2', '2011-05-24 09:32:05'),
(31, '192.168.1.2', '2011-05-24 12:39:16'),
(32, '192.168.1.11', '2011-05-24 13:29:16'),
(33, '192.168.1.11', '2011-05-24 13:29:36'),
(34, '192.168.1.2', '2011-05-25 03:43:03'),
(35, '192.168.1.2', '2011-05-25 03:43:18'),
(36, '192.168.1.11', '2011-05-25 12:03:29'),
(37, '192.168.1.11', '2011-05-25 12:26:16'),
(38, '192.168.1.11', '2011-05-26 05:31:33'),
(39, '192.168.1.11', '2011-05-26 06:28:01'),
(40, '192.168.1.3', '2011-05-27 03:39:48'),
(41, '122.173.103.52', '2011-05-26 19:06:01'),
(42, '122.173.103.52', '2011-05-26 19:09:43'),
(43, '122.173.103.52', '2011-05-26 19:10:58'),
(44, '122.173.103.52', '2011-05-26 19:12:44'),
(45, '122.173.103.52', '2011-05-26 19:33:58'),
(46, '122.173.103.52', '2011-05-26 20:18:27'),
(47, '184.151.127.225', '2011-05-26 22:14:34'),
(48, '174.129.237.157', '2011-05-29 23:00:21'),
(49, '174.129.237.157', '2011-05-30 03:30:13'),
(50, '207.231.237.218', '2011-06-03 06:09:54'),
(51, '207.231.237.218', '2011-06-03 06:29:51'),
(52, '122.173.75.113', '2011-06-03 22:45:27'),
(53, '207.231.237.218', '2011-06-03 23:19:16'),
(54, '207.231.237.218', '2011-06-06 22:53:18'),
(55, '207.231.237.218', '2011-06-07 05:34:50'),
(56, '182.64.174.31', '2011-06-08 17:25:46'),
(57, '207.231.237.218', '2011-06-10 00:13:54'),
(58, '207.231.237.218', '2011-06-16 01:44:24'),
(59, '207.231.237.218', '2011-06-16 01:55:51'),
(60, '142.162.139.238', '2011-06-16 03:36:02'),
(61, '207.231.237.218', '2011-06-21 01:56:07'),
(62, '122.173.101.38', '2011-06-21 04:03:27'),
(63, '122.173.128.37', '2011-06-21 20:34:26'),
(64, '207.231.237.102', '2011-06-21 23:46:02'),
(65, '122.173.129.220', '2011-06-23 19:06:41'),
(66, '207.231.237.218', '2011-06-23 22:31:17'),
(67, '122.173.129.220', '2011-06-23 22:41:15'),
(68, '142.162.128.57', '2011-06-24 00:55:04'),
(69, '207.231.237.218', '2011-06-24 03:17:03'),
(70, '122.173.42.213', '2011-06-24 03:56:02'),
(71, '207.231.237.218', '2011-06-27 23:14:00'),
(72, '122.173.19.104', '2011-06-28 07:52:41'),
(73, '207.231.237.102', '2011-06-29 03:22:28'),
(74, '207.231.237.218', '2011-06-30 00:14:30'),
(75, '174.129.237.157', '2011-06-30 01:00:45'),
(76, '207.231.237.218', '2011-07-01 00:09:05'),
(77, '207.231.237.218', '2011-07-01 00:52:48'),
(78, '182.64.145.178', '2011-07-01 19:20:50'),
(79, '127.0.0.1', '2011-07-10 12:51:24'),
(80, '127.0.0.1', '2011-07-13 04:43:01'),
(81, '192.168.1.4', '2011-07-13 04:47:29'),
(82, '127.0.0.1', '2011-07-13 09:07:01'),
(83, '192.168.1.4', '2011-07-13 09:30:19'),
(84, '127.0.0.1', '2011-07-14 03:24:36'),
(85, '127.0.0.1', '2011-07-14 03:25:08'),
(86, '192.168.1.4', '2011-07-14 03:26:40'),
(87, '127.0.0.1', '2011-07-15 03:37:32'),
(88, '192.168.1.2', '2011-07-15 03:37:52'),
(89, '192.168.1.2', '2011-07-15 04:09:13'),
(90, '127.0.0.1', '2011-07-16 03:50:37'),
(91, '192.168.1.3', '2011-07-16 03:51:10'),
(92, '127.0.0.1', '2011-07-16 04:53:13'),
(93, '192.168.1.3', '2011-07-16 04:53:24'),
(94, '192.168.1.8', '2011-07-16 05:24:13'),
(95, '192.168.1.6', '2011-07-19 03:50:37'),
(96, '192.168.1.6', '2011-07-19 04:41:17'),
(97, '192.168.1.6', '2011-07-19 05:01:06'),
(98, '192.168.1.6', '2011-07-19 05:07:56'),
(99, '192.168.1.6', '2011-07-19 05:17:01'),
(100, '192.168.1.6', '2011-07-19 05:21:14'),
(101, '192.168.1.8', '2011-07-19 05:42:18'),
(102, '127.0.0.1', '2011-07-19 05:54:42'),
(103, '192.168.1.6', '2011-07-19 05:54:47'),
(104, '127.0.0.1', '2011-07-19 06:26:28'),
(105, '192.168.1.6', '2011-07-19 06:27:11'),
(106, '192.168.1.8', '2011-07-19 07:50:28'),
(107, '192.168.1.8', '2011-07-19 07:56:28'),
(108, '192.168.1.6', '2011-07-19 08:33:16'),
(109, '127.0.0.1', '2011-07-19 08:54:32'),
(110, '192.168.1.6', '2011-07-19 08:54:49'),
(111, '192.168.1.6', '2011-07-19 09:01:14'),
(112, '127.0.0.1', '2011-07-19 11:39:32'),
(113, '192.168.1.6', '2011-07-19 11:40:13'),
(114, '192.168.1.6', '2011-07-19 11:42:10'),
(115, '127.0.0.1', '2011-07-19 11:46:56'),
(116, '127.0.0.1', '2011-07-19 11:51:35'),
(117, '192.168.1.6', '2011-07-19 11:52:20'),
(118, '192.168.1.2', '2011-07-19 12:06:22'),
(119, '192.168.1.2', '2011-07-19 12:06:42'),
(120, '192.168.1.5', '2011-07-19 12:12:29'),
(121, '127.0.0.1', '2011-07-19 12:13:22'),
(122, '127.0.0.1', '2011-07-19 12:28:33'),
(123, '192.168.1.5', '2011-07-19 12:34:09'),
(124, '192.168.1.6', '2011-07-19 12:35:07'),
(125, '192.168.1.6', '2011-07-19 12:37:57'),
(126, '127.0.0.1', '2011-07-19 12:42:20'),
(127, '192.168.1.8', '2011-07-19 12:44:29'),
(128, '192.168.1.6', '2011-07-19 13:30:53'),
(129, '192.168.1.6', '2011-07-19 13:30:53'),
(130, '127.0.0.1', '2011-07-20 03:44:23'),
(131, '192.168.1.6', '2011-07-20 03:44:38'),
(132, '127.0.0.1', '2011-07-20 03:45:45'),
(133, '192.168.1.6', '2011-07-20 03:59:00'),
(134, '192.168.1.5', '2011-07-20 05:34:47'),
(135, '192.168.1.6', '2011-07-20 05:55:22'),
(136, '192.168.1.8', '2011-07-20 06:28:16'),
(137, '127.0.0.1', '2011-07-20 09:29:12'),
(138, '127.0.0.1', '2011-07-21 03:58:00'),
(139, '127.0.0.1', '2011-07-21 11:17:33'),
(140, '192.168.1.6', '2011-07-21 11:28:50'),
(141, '192.168.1.8', '2011-07-21 11:38:42'),
(142, '192.168.1.6', '2011-07-22 09:52:57'),
(143, '127.0.0.1', '2011-07-23 03:39:56'),
(144, '192.168.1.6', '2011-07-23 03:40:11'),
(145, '192.168.1.8', '2011-07-23 05:07:17'),
(146, '127.0.0.1', '2011-07-26 03:49:37'),
(147, '192.168.1.6', '2011-07-26 03:49:47'),
(148, '127.0.0.1', '2011-07-27 05:32:52'),
(149, '127.0.0.1', '2011-07-27 08:11:10'),
(150, '192.168.1.6', '2011-07-27 10:50:03'),
(151, '127.0.0.1', '2011-07-28 03:52:40'),
(152, '192.168.1.6', '2011-07-28 03:54:13'),
(153, '192.168.1.6', '2011-07-28 04:50:35'),
(154, '192.168.1.7', '2011-07-28 05:17:20'),
(155, '192.168.1.6', '2011-07-28 10:22:45'),
(156, '192.168.1.7', '2011-07-28 10:24:09'),
(157, '192.168.1.6', '2011-07-28 10:29:19'),
(158, '192.168.1.3', '2011-07-28 10:40:05'),
(159, '192.168.1.2', '2011-07-28 10:43:53'),
(160, '192.168.1.6', '2011-07-28 10:48:50'),
(161, '192.168.1.6', '2011-07-28 10:48:57'),
(162, '192.168.1.3', '2011-07-28 11:40:16'),
(163, '127.0.0.1', '2011-08-23 11:31:34'),
(164, '127.0.0.1', '2011-08-24 04:08:02'),
(165, '127.0.0.1', '2011-08-24 04:09:52'),
(166, '192.168.1.7', '2011-08-24 04:51:22'),
(167, '192.168.1.7', '2011-08-24 05:22:51'),
(168, '192.168.1.7', '2011-08-24 05:26:37'),
(169, '192.168.1.7', '2011-08-24 08:55:31'),
(170, '192.168.1.7', '2011-08-24 11:52:14'),
(171, '192.168.1.7', '2011-08-24 11:54:01'),
(172, '127.0.0.1', '2011-08-25 03:55:51'),
(173, '192.168.1.7', '2011-08-25 03:56:04'),
(174, '192.168.1.9', '2011-08-25 07:50:01'),
(175, '192.168.1.7', '2011-08-25 10:13:36'),
(176, '192.168.1.7', '2011-08-25 10:25:32'),
(177, '192.168.1.9', '2011-08-25 13:18:14'),
(178, '127.0.0.1', '2011-08-26 03:47:51'),
(179, '192.168.1.7', '2011-08-26 03:48:14'),
(180, '127.0.0.1', '2011-08-26 08:56:39'),
(181, '192.168.1.7', '2011-08-26 08:57:08'),
(182, '192.168.1.9', '2011-08-26 09:07:43'),
(183, '192.168.1.6', '2011-08-26 09:30:39'),
(184, '192.168.1.7', '2011-08-26 09:33:54'),
(185, '192.168.1.9', '2011-08-26 11:23:19'),
(186, '192.168.1.9', '2011-08-26 12:23:43'),
(187, '192.168.1.7', '2011-08-26 12:41:48'),
(188, '192.168.1.6', '2011-08-26 13:13:27'),
(189, '127.0.0.1', '2011-08-27 03:43:16'),
(190, '192.168.1.7', '2011-08-27 03:43:29'),
(191, '192.168.1.6', '2011-08-27 11:52:25'),
(192, '127.0.0.1', '2011-08-30 03:59:18'),
(193, '192.168.1.7', '2011-08-30 03:59:23'),
(194, '192.168.1.7', '2011-08-30 04:07:36'),
(195, '192.168.1.2', '2011-08-30 05:42:51'),
(196, '192.168.1.7', '2011-08-30 05:56:52'),
(197, '192.168.1.9', '2011-08-30 07:05:41'),
(198, '192.168.1.7', '2011-08-30 09:41:45'),
(199, '192.168.1.4', '2011-08-30 09:47:52'),
(200, '127.0.0.1', '2011-08-30 10:39:26'),
(201, '192.168.1.7', '2011-08-30 10:39:33'),
(202, '192.168.1.7', '2011-08-30 12:47:01'),
(203, '127.0.0.1', '2011-08-30 12:52:40'),
(204, '192.168.1.7', '2011-08-30 12:52:57'),
(205, '127.0.0.1', '2011-08-30 13:05:45'),
(206, '192.168.1.7', '2011-08-30 13:15:47'),
(207, '127.0.0.1', '2011-08-31 04:11:17'),
(208, '192.168.1.7', '2011-08-31 04:17:39'),
(209, '127.0.0.1', '2011-08-31 04:37:36'),
(210, '192.168.1.7', '2011-08-31 04:37:51'),
(211, '192.168.1.7', '2011-08-31 06:20:31'),
(212, '127.0.0.1', '2011-08-31 06:37:45'),
(213, '192.168.1.7', '2011-08-31 06:39:50'),
(214, '127.0.0.1', '2011-09-09 06:03:28'),
(215, '192.168.1.3', '2011-09-09 06:48:19'),
(216, '127.0.0.1', '2011-09-09 06:53:49'),
(217, '192.168.1.3', '2011-09-09 07:42:19'),
(218, '192.168.1.3', '2011-09-09 09:57:46'),
(219, '127.0.0.1', '2011-09-10 03:52:49'),
(220, '192.168.1.3', '2011-09-10 04:07:28'),
(221, '192.168.1.3', '2011-09-10 04:39:47'),
(222, '127.0.0.1', '2011-09-10 05:25:47'),
(223, '192.168.1.3', '2011-09-10 05:38:35'),
(224, '127.0.0.1', '2011-09-10 07:16:24'),
(225, '127.0.0.1', '2011-09-10 07:46:59'),
(226, '192.168.1.3', '2011-09-10 07:47:08'),
(227, '127.0.0.1', '2011-09-10 09:42:45'),
(228, '192.168.1.3', '2011-09-10 09:42:58'),
(229, '127.0.0.1', '2011-09-10 09:49:23'),
(230, '192.168.1.3', '2011-09-10 09:49:38'),
(231, '192.168.1.6', '2011-09-10 10:29:53'),
(232, '127.0.0.1', '2011-09-13 03:56:09'),
(233, '127.0.0.1', '2011-09-13 03:56:28'),
(234, '192.168.1.4', '2011-09-13 04:44:57'),
(235, '127.0.0.1', '2011-09-13 07:16:38'),
(236, '192.168.1.3', '2011-09-13 12:10:42'),
(237, '127.0.0.1', '2011-09-13 12:48:27'),
(238, '192.168.1.10', '2011-09-13 12:48:42'),
(239, '127.0.0.1', '2011-09-14 03:45:23'),
(240, '192.168.1.4', '2011-09-14 03:46:52'),
(241, '127.0.0.1', '2011-09-14 04:21:52'),
(242, '127.0.0.1', '2011-09-14 05:43:21'),
(243, '127.0.0.1', '2011-09-15 03:50:30'),
(244, '192.168.1.4', '2011-09-15 03:51:13'),
(245, '127.0.0.1', '2011-09-15 04:10:57'),
(246, '192.168.1.4', '2011-09-15 04:11:14'),
(247, '127.0.0.1', '2011-09-15 05:44:13'),
(248, '192.168.1.9', '2011-09-15 06:48:54'),
(249, '192.168.1.7', '2011-09-15 12:39:41'),
(250, '192.168.1.7', '2011-09-15 12:39:41'),
(251, '127.0.0.1', '2011-09-15 14:05:01'),
(252, '127.0.0.1', '2011-09-16 05:09:50'),
(253, '192.168.1.7', '2011-09-16 05:33:38'),
(254, '192.168.1.7', '2011-09-16 05:34:42'),
(255, '192.168.1.7', '2011-09-16 05:35:07'),
(256, '192.168.1.5', '2011-09-16 06:19:26'),
(257, '192.168.1.8', '2011-09-16 06:39:22'),
(258, '192.168.1.5', '2011-09-16 07:51:14'),
(259, '192.168.1.8', '2011-09-16 08:17:14'),
(260, '127.0.0.1', '2011-09-16 09:08:09'),
(261, '192.168.1.7', '2011-09-16 09:08:13'),
(262, '192.168.1.5', '2011-09-16 09:37:29'),
(263, '192.168.1.7', '2011-09-16 10:10:13'),
(264, '127.0.0.1', '2011-09-16 10:15:07'),
(265, '192.168.1.7', '2011-09-16 10:15:14'),
(266, '192.168.1.3', '2011-09-16 10:16:32'),
(267, '127.0.0.1', '2011-09-17 04:08:35'),
(268, '192.168.1.4', '2011-09-17 04:10:36'),
(269, '192.168.1.4', '2011-09-17 04:15:32'),
(270, '127.0.0.1', '2011-09-20 03:45:54'),
(271, '192.168.1.3', '2011-09-20 03:46:18'),
(272, '192.168.1.9', '2011-09-20 06:04:25'),
(273, '127.0.0.1', '2011-09-20 07:43:17'),
(274, '192.168.1.9', '2011-09-20 09:52:23'),
(275, '192.168.1.4', '2011-10-01 12:21:30'),
(276, '127.0.0.1', '2011-11-10 10:59:14'),
(277, '192.168.1.5', '2011-11-11 07:50:21'),
(278, '192.168.1.5', '2011-11-11 08:24:05'),
(279, '192.168.1.39', '2011-11-11 08:41:35'),
(280, '192.168.1.3', '2011-11-11 10:22:42'),
(281, '192.168.1.45', '2011-11-11 11:59:58'),
(282, '127.0.0.1', '2011-11-12 05:49:15'),
(283, '192.168.1.5', '2011-11-12 05:50:59'),
(284, '192.168.1.5', '2011-11-12 08:56:07'),
(285, '127.0.0.1', '2011-11-12 13:02:12'),
(286, '192.168.1.45', '2011-11-12 15:12:16'),
(287, '127.0.0.1', '2011-11-15 05:38:05'),
(288, '192.168.1.5', '2011-11-15 06:00:43'),
(289, '192.168.1.5', '2011-11-15 13:21:11'),
(290, '127.0.0.1', '2011-11-16 05:48:59'),
(291, '192.168.1.5', '2011-11-16 05:50:53'),
(292, '127.0.0.1', '2011-11-16 07:36:59'),
(293, '192.168.1.5', '2011-11-16 07:37:04'),
(294, '192.168.1.45', '2011-11-16 09:35:44'),
(295, '192.168.1.5', '2011-11-16 09:48:32'),
(296, '192.168.1.45', '2011-11-16 15:40:28'),
(297, '127.0.0.1', '2011-11-17 05:42:16'),
(298, '192.168.1.5', '2011-11-17 05:55:18'),
(299, '192.168.1.5', '2011-11-17 09:40:55'),
(300, '192.168.1.5', '2011-11-17 11:33:48'),
(301, '192.168.1.5', '2011-11-17 14:35:41'),
(302, '192.168.1.45', '2011-11-17 15:26:45'),
(303, '127.0.0.1', '2011-11-18 05:43:38'),
(304, '192.168.1.5', '2011-11-18 05:44:11'),
(305, '192.168.1.5', '2011-11-18 05:55:44'),
(306, '192.168.1.3', '2011-11-18 06:56:03'),
(307, '192.168.1.5', '2011-11-18 07:05:20'),
(308, '192.168.1.5', '2011-11-18 07:05:20'),
(309, '192.168.1.5', '2011-11-18 07:05:22'),
(310, '192.168.1.5', '2011-11-18 12:23:12'),
(311, '127.0.0.1', '2011-11-18 12:47:49'),
(312, '192.168.1.5', '2011-11-18 12:53:05'),
(313, '192.168.1.45', '2011-11-18 16:55:21'),
(314, '127.0.0.1', '2011-11-19 05:55:04'),
(315, '192.168.1.5', '2011-11-19 05:55:16'),
(316, '192.168.1.5', '2011-11-19 06:51:06'),
(317, '192.168.1.5', '2011-11-19 13:36:55'),
(318, '192.168.1.5', '2011-11-19 13:59:58'),
(319, '122.176.82.67', '2011-11-21 17:15:23'),
(320, '210.56.109.123', '2011-11-21 21:52:00'),
(321, '122.176.82.67', '2011-11-21 22:55:32'),
(322, '207.231.237.218', '2011-11-21 23:56:08'),
(323, '122.176.82.67', '2011-11-22 01:13:26'),
(324, '173.32.193.180', '2011-11-22 03:18:33'),
(325, '173.32.193.180', '2011-11-22 06:09:58'),
(326, '173.32.193.180', '2011-11-29 10:37:23'),
(327, '122.173.39.45', '2011-11-29 10:45:58'),
(328, '184.151.115.46', '2011-11-29 13:12:14'),
(329, '184.151.115.46', '2011-11-29 13:16:47'),
(330, '210.56.108.68', '2011-11-29 20:26:41'),
(331, '210.56.108.68', '2011-11-29 21:05:42'),
(332, '142.163.214.174', '2011-11-30 00:29:45'),
(333, '142.162.0.61', '2011-11-30 00:57:33'),
(334, '142.163.214.174', '2011-11-30 02:24:27'),
(335, '142.162.0.61', '2011-11-30 02:38:10'),
(336, '142.163.214.174', '2011-11-30 05:04:31'),
(337, '142.162.0.98', '2011-11-30 06:32:21'),
(338, '122.176.82.67', '2011-11-30 17:08:14'),
(339, '142.162.1.23', '2011-12-01 02:44:01'),
(340, '122.176.82.67', '2011-12-01 17:08:46'),
(341, '124.253.3.133', '2011-12-02 03:05:44'),
(342, '122.173.110.189', '2011-12-02 15:56:40'),
(343, '122.176.82.67', '2011-12-02 17:12:03'),
(344, '122.176.82.67', '2011-12-03 01:44:27'),
(345, '210.56.113.110', '2011-12-03 02:07:30'),
(346, '210.56.113.110', '2011-12-03 03:24:35'),
(347, '210.56.113.110', '2011-12-03 03:46:20'),
(348, '223.178.20.250', '2011-12-03 16:21:17'),
(349, '210.56.111.223', '2011-12-03 17:07:34'),
(350, '210.56.111.223', '2011-12-03 17:21:30'),
(351, '210.56.111.223', '2011-12-03 18:16:15'),
(352, '122.173.138.161', '2011-12-05 01:30:43'),
(353, '210.56.96.233', '2011-12-05 17:11:49'),
(354, '210.56.107.25', '2011-12-06 00:40:00'),
(355, '142.163.214.174', '2011-12-06 03:03:56'),
(356, '122.173.139.156', '2011-12-06 05:05:09'),
(357, '74.125.112.82', '2011-12-06 05:06:12'),
(358, '74.125.114.80', '2011-12-06 05:31:33'),
(359, '173.32.193.180', '2011-12-06 05:33:43'),
(360, '173.32.193.180', '2011-12-06 05:45:03'),
(361, '142.163.214.174', '2011-12-06 06:01:25'),
(362, '173.32.193.180', '2011-12-06 07:42:27'),
(363, '210.56.108.106', '2011-12-06 17:09:13'),
(364, '210.56.108.106', '2011-12-06 18:24:03'),
(365, '210.56.108.106', '2011-12-06 18:25:14'),
(366, '122.176.82.67', '2011-12-06 18:53:52'),
(367, '122.176.82.67', '2011-12-06 19:32:21'),
(368, '210.56.108.106', '2011-12-06 21:02:29'),
(369, '122.176.82.67', '2011-12-06 22:19:24'),
(370, '210.56.108.106', '2011-12-06 22:22:38'),
(371, '210.56.108.106', '2011-12-06 22:23:19'),
(372, '210.56.108.106', '2011-12-06 22:37:37'),
(373, '122.176.82.67', '2011-12-06 23:37:51'),
(374, '124.253.70.176', '2011-12-06 23:38:35'),
(375, '124.253.70.176', '2011-12-06 23:45:43'),
(376, '142.162.0.93', '2011-12-07 00:57:59'),
(377, '122.176.82.67', '2011-12-07 01:27:47'),
(378, '124.253.70.176', '2011-12-07 04:12:17'),
(379, '122.173.154.21', '2011-12-07 07:01:08'),
(380, '142.162.0.93', '2011-12-07 08:22:55'),
(381, '184.151.115.127', '2011-12-07 08:34:56'),
(382, '122.176.82.67', '2011-12-07 16:56:50'),
(383, '210.56.107.184', '2011-12-07 17:18:10'),
(384, '142.163.214.174', '2011-12-08 00:36:27'),
(385, '142.163.214.174', '2011-12-08 01:05:30'),
(386, '122.176.82.67', '2011-12-08 02:57:13'),
(387, '207.231.237.218', '2011-12-09 01:35:31'),
(388, '122.176.82.67', '2011-12-09 02:05:00'),
(389, '124.253.69.96', '2011-12-09 02:10:18'),
(390, '142.163.214.174', '2011-12-09 06:44:29'),
(391, '124.253.6.156', '2011-12-09 17:16:52'),
(392, '124.253.69.24', '2011-12-09 23:02:10'),
(393, '122.176.82.67', '2011-12-09 23:47:59'),
(394, '122.176.82.67', '2011-12-10 00:30:16'),
(395, '122.176.82.67', '2011-12-10 01:00:21'),
(396, '122.176.82.67', '2011-12-10 01:00:21'),
(397, '122.176.82.67', '2011-12-10 02:24:44'),
(398, '124.253.69.24', '2011-12-10 02:34:50'),
(399, '184.151.127.181', '2011-12-10 09:20:17'),
(400, '122.176.82.67', '2011-12-10 17:28:05'),
(401, '122.173.86.175', '2011-12-11 07:18:37'),
(402, '192.168.1.5', '2011-12-13 17:31:32'),
(403, '192.168.1.5', '2011-12-13 19:21:52'),
(404, '192.168.1.5', '2011-12-13 19:22:11'),
(405, '127.0.0.1', '2011-12-13 23:32:04'),
(406, '192.168.1.5', '2011-12-13 23:48:01'),
(407, '192.168.1.5', '2011-12-14 00:04:39'),
(408, '192.168.1.5', '2011-12-14 00:24:18'),
(409, '210.56.105.208', '2011-12-13 13:00:05'),
(410, '210.56.105.208', '2011-12-13 13:07:21'),
(411, '210.56.105.208', '2011-12-13 13:37:31'),
(412, '142.163.214.174', '2011-12-13 13:41:09'),
(413, '142.163.214.174', '2011-12-13 13:48:10'),
(414, '210.56.105.208', '2011-12-13 14:23:05'),
(415, '210.56.105.208', '2011-12-13 15:13:34'),
(416, '124.253.11.112', '2011-12-14 04:51:41'),
(417, '124.253.11.112', '2011-12-14 07:46:20'),
(418, '122.176.82.67', '2011-12-14 14:07:10'),
(419, '122.176.82.67', '2011-12-14 14:10:34'),
(420, '210.56.109.254', '2011-12-15 05:11:18'),
(421, '210.56.109.254', '2011-12-15 07:17:40'),
(422, '210.56.109.254', '2011-12-15 07:17:44'),
(423, '122.176.82.67', '2011-12-15 08:22:55'),
(424, '210.56.109.254', '2011-12-15 08:28:46'),
(425, '122.176.82.67', '2011-12-15 11:21:33'),
(426, '142.162.1.153', '2011-12-15 17:53:33'),
(427, '122.173.143.240', '2011-12-15 18:48:01'),
(428, '122.173.143.240', '2011-12-15 19:04:13'),
(429, '142.163.214.174', '2011-12-15 19:50:02'),
(430, '210.56.103.188', '2011-12-16 04:45:07'),
(431, '122.176.82.67', '2011-12-16 06:20:09'),
(432, '210.56.103.188', '2011-12-16 06:28:02'),
(433, '122.176.82.67', '2011-12-16 09:10:23'),
(434, '210.56.103.188', '2011-12-16 09:11:56'),
(435, '210.56.103.188', '2011-12-16 09:18:18'),
(436, '122.176.82.67', '2011-12-16 11:15:40'),
(437, '122.176.82.67', '2011-12-19 05:03:55'),
(438, '124.253.0.12', '2011-12-19 08:55:29'),
(439, '142.163.214.174', '2011-12-19 12:02:09'),
(440, '142.162.0.92', '2011-12-19 12:07:47'),
(441, '122.176.82.67', '2011-12-19 13:55:54'),
(442, '124.253.0.12', '2011-12-19 14:27:04'),
(443, '142.163.75.231', '2011-12-19 15:23:15'),
(444, '173.32.193.180', '2011-12-19 16:08:19'),
(445, '115.244.95.126', '2011-12-19 17:10:04'),
(446, '173.32.193.180', '2011-12-19 18:47:27'),
(447, '142.163.75.231', '2011-12-19 18:47:39'),
(448, '207.231.237.218', '2011-12-19 18:56:49'),
(449, '207.231.237.218', '2011-12-19 19:35:16'),
(450, '122.176.82.67', '2011-12-20 04:46:29'),
(451, '124.253.1.116', '2011-12-20 06:00:51'),
(452, '122.176.82.67', '2011-12-20 07:49:32'),
(453, '122.176.82.67', '2011-12-20 10:21:35'),
(454, '122.176.82.67', '2011-12-20 11:22:29'),
(455, '142.163.67.126', '2011-12-20 12:02:16'),
(456, '173.32.193.180', '2011-12-20 12:29:03'),
(457, '207.231.237.218', '2011-12-20 13:11:24'),
(458, '173.32.193.180', '2011-12-20 13:12:51'),
(459, '124.253.1.116', '2011-12-20 13:22:41'),
(460, '124.253.1.116', '2011-12-20 13:25:09'),
(461, '124.253.1.116', '2011-12-20 14:30:28'),
(462, '173.32.193.180', '2011-12-20 14:46:14'),
(463, '207.231.237.218', '2011-12-20 16:47:46'),
(464, '122.173.20.214', '2011-12-20 16:52:54'),
(465, '142.163.67.126', '2011-12-20 17:33:37'),
(466, '142.163.67.126', '2011-12-20 18:00:39'),
(467, '124.253.6.124', '2011-12-21 04:53:46'),
(468, '124.253.6.124', '2011-12-21 04:56:27'),
(469, '124.253.6.124', '2011-12-21 06:15:15'),
(470, '192.168.1.3', '2011-12-21 12:02:06'),
(471, '192.168.1.3', '2011-12-21 12:17:51'),
(472, '192.168.1.3', '2011-12-21 12:17:53'),
(473, '192.168.1.4', '2011-12-21 14:06:53'),
(474, '127.0.0.1', '2011-12-22 05:17:08'),
(475, '192.168.1.5', '2011-12-22 05:17:10'),
(476, '192.168.1.5', '2011-12-22 05:17:10'),
(477, '127.0.0.1', '2011-12-23 04:59:10'),
(478, '192.168.1.5', '2011-12-23 04:59:12'),
(479, '192.168.1.5', '2011-12-23 04:59:12'),
(480, '192.168.1.5', '2011-12-23 07:35:53'),
(481, '127.0.0.1', '2011-12-23 08:05:15'),
(482, '127.0.0.1', '2011-12-31 10:48:03'),
(483, '192.168.1.5', '2011-12-31 10:48:06'),
(484, '192.168.1.5', '2011-12-31 10:48:06'),
(485, '127.0.0.1', '2011-12-31 12:19:49'),
(486, '192.168.1.5', '2011-12-31 12:19:51'),
(487, '192.168.1.5', '2011-12-31 12:19:51'),
(488, '192.168.1.5', '2011-12-31 12:19:52'),
(489, '192.168.1.39', '2012-01-04 08:04:20'),
(490, '192.168.1.39', '2012-01-05 05:24:23'),
(491, '192.168.1.39', '2012-01-10 09:19:13'),
(492, '192.168.1.5', '2012-01-19 11:44:18'),
(493, '127.0.0.1', '2012-01-19 12:55:41'),
(494, '192.168.1.5', '2012-01-19 12:55:43'),
(495, '192.168.1.5', '2012-01-19 12:55:44'),
(496, '192.168.1.5', '2012-01-19 12:55:44'),
(497, '127.0.0.1', '2012-01-20 04:51:57'),
(498, '192.168.1.5', '2012-01-20 04:51:58'),
(499, '192.168.1.5', '2012-01-20 04:51:58'),
(500, '192.168.1.5', '2012-01-23 11:09:43'),
(501, '192.168.1.4', '2012-01-23 14:31:23'),
(502, '127.0.0.1', '2012-01-24 06:39:20'),
(503, '192.168.1.5', '2012-01-24 06:39:20'),
(504, '192.168.1.5', '2012-01-24 06:39:20'),
(505, '192.168.1.5', '2012-01-24 06:39:20'),
(506, '192.168.1.5', '2012-01-24 06:39:20'),
(507, '192.168.1.5', '2012-01-24 06:39:20'),
(508, '192.168.1.5', '2012-01-24 06:39:20'),
(509, '192.168.1.5', '2012-01-24 06:39:21'),
(510, '192.168.1.5', '2012-01-24 06:39:21'),
(511, '192.168.1.5', '2012-01-24 07:06:41'),
(512, '192.168.1.5', '2012-01-24 07:13:17'),
(513, '192.168.1.5', '2012-01-24 07:57:47'),
(514, '192.168.1.5', '2012-01-24 11:24:19'),
(515, '192.168.1.45', '2012-01-24 14:23:41'),
(516, '127.0.0.1', '2012-01-25 04:48:21'),
(517, '127.0.0.1', '2012-01-25 05:01:35'),
(518, '192.168.1.5', '2012-01-25 05:01:37'),
(519, '192.168.1.5', '2012-01-25 05:01:37'),
(520, '192.168.1.5', '2012-01-25 05:01:38'),
(521, '192.168.1.5', '2012-01-25 05:01:38'),
(522, '192.168.1.5', '2012-01-25 05:01:38'),
(523, '192.168.1.5', '2012-01-25 05:01:38'),
(524, '192.168.1.5', '2012-01-25 05:01:38'),
(525, '192.168.1.5', '2012-01-25 05:01:38'),
(526, '192.168.1.5', '2012-01-25 05:01:38'),
(527, '192.168.1.5', '2012-01-25 05:01:38'),
(528, '192.168.1.5', '2012-01-25 05:01:38'),
(529, '192.168.1.5', '2012-01-25 06:54:50'),
(530, '192.168.1.5', '2012-01-25 12:02:54'),
(531, '192.168.1.45', '2012-01-25 14:50:37'),
(532, '127.0.0.1', '2012-02-01 06:14:37'),
(533, '192.168.1.5', '2012-02-01 06:14:39'),
(534, '192.168.1.5', '2012-02-01 06:14:39'),
(535, '192.168.1.5', '2012-02-01 06:14:39'),
(536, '192.168.1.5', '2012-02-01 06:14:39'),
(537, '192.168.1.5', '2012-02-01 06:14:39'),
(538, '192.168.1.5', '2012-02-01 06:14:39'),
(539, '192.168.1.5', '2012-02-01 06:14:39'),
(540, '192.168.1.5', '2012-02-01 06:14:39'),
(541, '192.168.1.5', '2012-02-01 06:39:40'),
(542, '192.168.1.45', '2012-02-01 12:50:29'),
(543, '127.0.0.1', '2012-02-01 13:34:04'),
(544, '192.168.1.5', '2012-02-01 13:34:05'),
(545, '192.168.1.5', '2012-02-01 13:34:05'),
(546, '192.168.1.5', '2012-02-01 13:34:05'),
(547, '192.168.1.5', '2012-02-01 13:34:05'),
(548, '192.168.1.5', '2012-02-01 13:34:05'),
(549, '192.168.1.5', '2012-02-01 13:34:05'),
(550, '192.168.1.5', '2012-02-01 13:34:05'),
(551, '192.168.1.5', '2012-02-01 13:34:05'),
(552, '192.168.1.5', '2012-02-01 13:55:25'),
(553, '127.0.0.1', '2012-02-02 04:47:40'),
(554, '192.168.1.5', '2012-02-02 04:47:41'),
(555, '192.168.1.5', '2012-02-02 04:47:41'),
(556, '192.168.1.5', '2012-02-02 04:47:41'),
(557, '192.168.1.5', '2012-02-02 04:47:41'),
(558, '192.168.1.5', '2012-02-02 04:47:41'),
(559, '192.168.1.5', '2012-02-02 04:47:41'),
(560, '192.168.1.5', '2012-02-02 04:47:41'),
(561, '192.168.1.5', '2012-02-02 04:47:41'),
(562, '192.168.1.45', '2012-02-02 06:55:35'),
(563, '192.168.1.5', '2012-02-02 07:24:42'),
(564, '192.168.1.45', '2012-02-02 14:11:53'),
(565, '127.0.0.1', '2012-02-03 05:05:18'),
(566, '192.168.1.5', '2012-02-03 05:05:27'),
(567, '192.168.1.5', '2012-02-03 07:34:52'),
(568, '192.168.1.45', '2012-02-03 10:40:06'),
(569, '192.168.1.5', '2012-02-03 10:43:01'),
(570, '127.0.0.1', '2012-02-03 11:52:18'),
(571, '192.168.1.5', '2012-02-03 11:52:21'),
(572, '192.168.1.5', '2012-02-03 11:52:21'),
(573, '192.168.1.5', '2012-02-03 11:52:21'),
(574, '192.168.1.5', '2012-02-03 11:52:21'),
(575, '192.168.1.5', '2012-02-03 11:52:21'),
(576, '192.168.1.5', '2012-02-03 11:52:21'),
(577, '192.168.1.5', '2012-02-03 11:52:22'),
(578, '192.168.1.5', '2012-02-03 11:52:22'),
(579, '192.168.1.5', '2012-02-03 11:52:22'),
(580, '192.168.1.5', '2012-02-03 11:52:22'),
(581, '127.0.0.1', '2012-02-03 13:11:56'),
(582, 'fe80::2460:9a21:2984:5590', '2012-03-13 12:23:26'),
(583, '::1', '2012-03-13 13:13:40'),
(584, 'fe80::2460:9a21:2984:5590', '2012-03-13 13:13:40'),
(585, 'fe80::2460:9a21:2984:5590', '2012-03-13 13:13:40'),
(586, 'fe80::2460:9a21:2984:5590', '2012-03-13 13:13:40'),
(587, 'fe80::2460:9a21:2984:5590', '2012-03-13 13:13:40'),
(588, 'fe80::2460:9a21:2984:5590', '2012-03-13 13:13:40'),
(589, 'fe80::2460:9a21:2984:5590', '2012-03-13 13:13:40'),
(590, 'fe80::2460:9a21:2984:5590', '2012-03-13 13:13:40'),
(591, 'fe80::2460:9a21:2984:5590', '2012-03-13 13:13:40'),
(592, 'fe80::2460:9a21:2984:5590', '2012-03-13 13:13:40'),
(593, 'fe80::2460:9a21:2984:5590', '2012-03-13 13:13:40'),
(594, 'fe80::2460:9a21:2984:5590', '2012-03-15 12:14:42'),
(595, 'fe80::2460:9a21:2984:5590', '2012-03-15 12:15:12'),
(596, '::1', '2012-03-16 04:53:32'),
(597, 'fe80::2460:9a21:2984:5590', '2012-03-16 04:53:33'),
(598, '::1', '2012-03-16 05:06:23'),
(599, 'fe80::2460:9a21:2984:5590', '2012-03-16 05:06:24'),
(600, 'fe80::2460:9a21:2984:5590', '2012-03-16 05:06:24'),
(601, 'fe80::30c0:e2e8:9b71:7fbb', '2012-03-16 14:46:39'),
(602, '::1', '2012-03-19 04:48:37'),
(603, 'fe80::2460:9a21:2984:5590', '2012-03-19 04:48:37'),
(604, 'fe80::2460:9a21:2984:5590', '2012-03-19 04:48:37'),
(605, 'fe80::2460:9a21:2984:5590', '2012-03-19 05:15:53'),
(606, '::1', '2012-03-19 05:17:02'),
(607, '::1', '2012-03-19 10:11:51'),
(608, 'fe80::2460:9a21:2984:5590', '2012-03-19 10:11:51'),
(609, '::1', '2012-03-19 10:12:21'),
(610, 'fe80::2460:9a21:2984:5590', '2012-03-19 10:12:21'),
(611, 'fe80::2460:9a21:2984:5590', '2012-03-19 10:12:21'),
(612, '::1', '2012-03-19 13:10:14'),
(613, 'fe80::2460:9a21:2984:5590', '2012-03-19 13:10:15'),
(614, 'fe80::30c0:e2e8:9b71:7fbb', '2012-03-19 13:35:52'),
(615, '::1', '2012-03-20 04:44:05'),
(616, 'fe80::2460:9a21:2984:5590', '2012-03-20 04:44:05'),
(617, 'fe80::2460:9a21:2984:5590', '2012-03-20 04:44:05'),
(618, '::1', '2012-03-20 04:59:03'),
(619, 'fe80::2460:9a21:2984:5590', '2012-03-20 04:59:03'),
(620, 'fe80::2460:9a21:2984:5590', '2012-03-20 06:39:25'),
(621, '::1', '2012-03-20 06:43:50'),
(622, '::1', '2012-03-20 12:20:27'),
(623, 'fe80::2460:9a21:2984:5590', '2012-03-20 12:20:28'),
(624, 'fe80::2460:9a21:2984:5590', '2012-03-20 12:20:28'),
(625, '::1', '2012-03-20 12:21:21'),
(626, 'fe80::2460:9a21:2984:5590', '2012-03-20 12:21:22'),
(627, 'fe80::30c0:e2e8:9b71:7fbb', '2012-03-20 14:50:03'),
(628, '::1', '2012-03-21 05:03:58'),
(629, 'fe80::2460:9a21:2984:5590', '2012-03-21 05:03:59'),
(630, '::1', '2012-03-21 05:04:24'),
(631, 'fe80::2460:9a21:2984:5590', '2012-03-21 05:04:25'),
(632, 'fe80::2460:9a21:2984:5590', '2012-03-21 05:04:25'),
(633, 'fe80::30c0:e2e8:9b71:7fbb', '2012-03-21 05:57:34'),
(634, 'fe80::c5a1:8cfd:c519:6c20', '2012-03-21 06:29:05'),
(635, 'fe80::1556:ba26:d7c:de85', '2012-03-21 07:29:07'),
(636, 'fe80::2460:9a21:2984:5590', '2012-03-21 07:45:57'),
(637, '::1', '2012-03-21 08:11:12'),
(638, '::1', '2012-03-21 08:11:12'),
(639, '::1', '2012-03-21 08:11:12'),
(640, 'fe80::1556:ba26:d7c:de85', '2012-03-21 08:19:43'),
(641, 'fe80::1556:ba26:d7c:de85', '2012-03-21 08:21:25'),
(642, 'fe80::1556:ba26:d7c:de85', '2012-03-21 08:22:22'),
(643, '::1', '2012-03-21 08:26:30'),
(644, '::1', '2012-03-21 08:26:30'),
(645, '::1', '2012-03-21 08:26:30'),
(646, '::1', '2012-03-21 08:26:44'),
(647, 'fe80::2460:9a21:2984:5590', '2012-03-21 08:26:44'),
(648, 'fe80::2460:9a21:2984:5590', '2012-03-21 08:26:45'),
(649, '::1', '2012-03-21 08:28:15'),
(650, '::1', '2012-03-21 08:28:15'),
(651, '::1', '2012-03-21 08:28:15'),
(652, '::1', '2012-03-21 08:28:32'),
(653, '::1', '2012-03-21 08:28:32'),
(654, '::1', '2012-03-21 08:28:32'),
(655, '::1', '2012-03-21 08:29:42'),
(656, '::1', '2012-03-21 08:29:43'),
(657, '::1', '2012-03-21 08:29:43'),
(658, '::1', '2012-03-21 08:30:29'),
(659, '::1', '2012-03-21 08:30:29'),
(660, '::1', '2012-03-21 08:30:30'),
(661, '::1', '2012-03-21 08:30:30'),
(662, '::1', '2012-03-21 08:30:36'),
(663, '::1', '2012-03-21 08:30:36'),
(664, '::1', '2012-03-21 08:30:40'),
(665, '::1', '2012-03-21 08:30:40'),
(666, '::1', '2012-03-21 08:30:51'),
(667, '::1', '2012-03-21 08:30:51'),
(668, 'fe80::1556:ba26:d7c:de85', '2012-03-21 08:50:08'),
(669, '::1', '2012-03-21 09:40:43'),
(670, '::1', '2012-03-21 09:40:45'),
(671, '::1', '2012-03-21 09:40:45'),
(672, '::1', '2012-03-21 09:41:11'),
(673, 'fe80::2460:9a21:2984:5590', '2012-03-21 09:41:11'),
(674, 'fe80::2460:9a21:2984:5590', '2012-03-21 09:41:12'),
(675, '::1', '2012-03-21 09:41:18'),
(676, '::1', '2012-03-21 09:41:18'),
(677, '::1', '2012-03-21 09:41:40'),
(678, 'fe80::2460:9a21:2984:5590', '2012-03-21 09:41:41'),
(679, '::1', '2012-03-21 10:01:54'),
(680, '::1', '2012-03-21 10:01:54'),
(681, '::1', '2012-03-21 10:01:54'),
(682, '::1', '2012-03-21 10:02:56'),
(683, '::1', '2012-03-21 10:02:56'),
(684, '::1', '2012-03-21 10:03:26'),
(685, '::1', '2012-03-21 10:05:58'),
(686, 'fe80::2460:9a21:2984:5590', '2012-03-21 10:05:59'),
(687, 'fe80::2460:9a21:2984:5590', '2012-03-21 10:06:00'),
(688, 'fe80::2460:9a21:2984:5590', '2012-03-21 10:12:36'),
(689, 'fe80::30c0:e2e8:9b71:7fbb', '2012-03-21 10:24:10'),
(690, '::1', '2012-03-21 11:39:59');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
