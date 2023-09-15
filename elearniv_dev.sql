-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2023 at 08:40 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elearniv_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
('1e6ad2ce-497d-4dbc-9325-0209a5ad541d', 'Design', 'design', '2022-08-16 06:41:35', '2022-08-16 06:41:35'),
('3b0eebe9-c3a9-4250-be93-40b58ee1d40c', 'Health & Fitness', 'health-fitness', '2022-08-16 06:42:28', '2022-08-16 06:42:28'),
('6387f943-49ac-48c9-b270-afda93feb165', 'Lifestyle', 'lifestyle', '2022-08-16 06:41:59', '2022-08-16 06:41:59'),
('6fe00827-7c90-48e9-bf3e-7e2591f97ec8', 'Office Productivity', 'office-productivity', '2022-08-16 06:40:53', '2022-08-16 06:40:53'),
('7049c68c-584e-4934-807f-2bf17f3fabfe', 'Photography & Video', 'photography-video', '2022-08-16 06:42:13', '2022-08-16 06:42:13'),
('763283f5-3076-4b06-acba-e33d1f2a0db7', 'Development', 'development', '2022-08-16 06:39:49', '2022-08-16 06:39:49'),
('8955ae82-ba74-4435-8ff5-e52f76594ece', 'Personal Development', 'personal-development', '2022-08-16 06:41:23', '2022-08-16 06:41:23'),
('92f8ccf1-384e-4c27-b429-a1bce510a1cc', 'Music', 'music', '2022-08-23 06:15:16', '2022-08-23 06:15:16'),
('9757989d-24a0-42b7-ab56-11673f671800', 'Marketing', 'marketing', '2022-08-16 06:41:46', '2022-08-16 06:41:46'),
('9ae93b15-0ec2-4b42-ab02-337d0e91eaa0', 'Teaching & Academics', 'teaching-academics', '2022-08-16 06:42:55', '2022-08-16 06:42:55'),
('aca10dcc-c359-4b8d-acaf-d016898d65fa', 'Finance & Accounting', 'finance-accounting', '2022-08-16 06:40:16', '2022-08-16 06:40:16'),
('c54a81fe-9947-4ede-80f7-5b924bb1fa20', 'Business', 'business', '2022-08-16 06:40:03', '2022-08-16 06:40:03'),
('e532600c-8db4-41bd-8eb4-36b5cf67fc49', 'IT & Software', 'it-software', '2022-08-16 06:40:39', '2022-08-16 06:40:39');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `exp_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `deleted_at` datetime DEFAULT NULL,
  `active_for_full_site` tinyint(1) DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `discount`, `exp_date`, `status`, `deleted_at`, `active_for_full_site`, `created_at`, `updated_at`) VALUES
('9f11c018-282a-4777-a02f-2d33f29d9d8f', 'FRIDAY10', 10, NULL, 1, NULL, 0, '2022-09-15 07:37:21', '2022-09-15 12:33:35'),
('ce64e1d5-abd4-494a-ab9c-ae76c23a9e68', 'DFFD54', 50, NULL, 1, NULL, 1, '2022-09-15 12:17:48', '2022-09-15 12:33:35'),
('f5f87fa2-9728-4778-9f1b-5bb224c643a7', 'BLACK22', 50, NULL, 1, NULL, 0, '2022-09-15 07:31:50', '2022-09-15 12:33:35');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_desc` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `overview` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `latest_price` float DEFAULT NULL,
  `before_price` float DEFAULT NULL,
  `lessons` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_time` enum('Lifetime','Three Months','Six Months','1 Year') COLLATE utf8_unicode_ci DEFAULT 'Lifetime',
  `requirements` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `what_you_will_learn` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `who_is_this_course_for` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `userId` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `catId` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `approved` tinyint(1) DEFAULT 0,
  `in_home_page` tinyint(1) DEFAULT 0,
  `in_home_page_set_at` datetime DEFAULT NULL,
  `is_class` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `slug`, `short_desc`, `overview`, `latest_price`, `before_price`, `lessons`, `duration`, `image`, `access_time`, `requirements`, `what_you_will_learn`, `who_is_this_course_for`, `userId`, `catId`, `approved`, `in_home_page`, `in_home_page_set_at`, `is_class`, `created_at`, `updated_at`) VALUES
('142a183d-45f1-4447-9aad-64f736471988', 'AWS Certified Security Specialty 2022', 'aws-certified-security-specialty-2022', 'AWS Certified Security - Specialty certification is one of the widely recognized security certifications across the industry. With the number', '<p>This course is specially designed for the aspirants who intend to give the AWS Certified Security Specialty 2022 certification as well for those who want to master the security side of AWS.</p><p>Throughout the course, we explore various Real World scenarios and look into why do website gets hacked, what could have been done to prevent it, and learn the best practices related to Security for your AWS environment.</p><p>Since this is a Specialty level certification, it is very important that the candidate has a prior hands-on experience in AWS, and this also acts as a pre-requisite to this certification. We do start our journey into the security side of things from scratch.</p><p>With tons of quizzes in order to prepare you for exams, Real-world scenarios, and great Support from our Instructor in-case of doubts, this course is all you need to master the Security side of AWS and gain the certification.</p><p>I look forward to seeing you join us in this exciting journey on&nbsp;AWS&nbsp;Security.</p>', 34.99, 30, '251', ' 28h 7m total length', 'https://res.cloudinary.com/dev-empty/image/upload/v1680504842/jttojhjcw2ien5v1z8ug.jpg', 'Lifetime', '<ul><li>Basics of AWS</li><li>AWS Solutions Architect Associate or Equivalent Knowledge</li></ul>', '<ul><li>Will be prepared to give AWS Certified Security Specialty Exam</li><li>You will be able to Master the Security aspect of AWS</li><li>Gain deep insights about Enterprise grade Security implementation.</li><li>Will be able to detect attacks and protect the AWS infrastructure from Hackers.</li></ul>', '<ul><li>Those interested in gaining the AWS Security Specialty Certification</li><li>Those who wants to gain deep security insights related to AWS</li></ul>', 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', 'e532600c-8db4-41bd-8eb4-36b5cf67fc49', 1, 1, '2023-04-03 06:00:53', 0, '2022-08-16 07:36:03', '2023-04-03 06:54:03'),
('308cdeb3-b61f-4fca-a139-9bb219282dd3', 'Complete workout : Complete Fitness Certification', 'complete-workout-complete-fitness-certification', 'Complete workout for Fitness, Weight loss, Weight gain, & Body Building ,Get Certification After completion!', '<p>Complete Workout&nbsp;For Weight Loss &amp; Muscle Building</p><p>In this course I will take you through the process of&nbsp;<strong>becoming a fitness expert step by step</strong>. You will learn everything you need to know about the fundamentals of good training programs and how to design your very own program for you or your clients.</p><p>I created this course for stay-at-home moms, college students, and anybody passionate about health and fitness who wants to create extra income or make a living doing what they love… fitness!</p><p><strong><em>Complete workout for Fitness, Weight loss, Weight gain, &amp; Body Building</em></strong></p><p>By the end of this course you will get Fitness Certification from Institute of Pakistan!</p><p>· Learn weight loss for real &amp; forever in A simple Manner</p><p>· How to lose weight very fast</p><p>· Improved fitness through exercise</p><p>· We will learn how we can contour our body shape</p>', 39.99, 50, '50', '3h 25m total length', 'https://res.cloudinary.com/dev-empty/image/upload/v1661321768/dqnthzwooovl3fl0vamu.jpg', 'Lifetime', '<ul><li>Passion for fitness</li><li>Commitment to complete the course</li><li>Access To Gym and Gym Equipment</li><li>Comfortable clothes and shoes</li></ul>', '<ul><li>We will learn how to do correctly warm up</li><li>We will learn why warm up is important</li><li>Improved fitness through exercises</li><li>We will learn how we can contour our body shape</li></ul><p><br></p>', '<ul><li>This course are for those who want to live life with fitness</li><li>This course are for those who want to know about simple &amp; easy exercises</li><li>This course is for those who want to make a change in their lifestyle.</li><li>This course is for those who want to lose thigh or hip fat, belly fat, side or love handles</li></ul>', 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '3b0eebe9-c3a9-4250-be93-40b58ee1d40c', 1, 1, '2023-04-03 06:00:57', 0, '2022-08-24 06:16:08', '2023-04-03 06:00:57'),
('3e048148-af93-4753-8e99-c52b3b3b3a88', 'The Complete 2023 Web Development Bootcamp', 'the-complete-2023-web-development-bootcamp', 'Become a Full-Stack Web Developer with just ONE course. HTML, CSS, Javascript, Node, React, MongoDB, Web3 and DApps', '<p>Welcome to the Complete Web Development Bootcamp, the only course you need to learn to code and become a full-stack web developer. With 150,000+ ratings and a 4.8 average, my Web Development course is one of the HIGHEST RATED courses in the history of Udemy!&nbsp;</p><p>At 65+ hours, this Web Development course is without a doubt the most comprehensive web development course available online. Even if you have zero programming experience, this course will take you from beginner to mastery. Here\'s why:</p><p>The course is taught by the lead instructor at the App Brewery, London\'s leading in-person programming bootcamp.</p><p>The course has been updated to be 2023 ready and you\'ll be learning the latest tools and technologies used at large companies such as Apple, Google and Netflix.</p><p>This course doesn\'t cut any corners, there are beautiful animated explanation videos and tens of real-world projects which you will get to build.</p><p>The curriculum was developed over a period of four years, with comprehensive student testing and feedback.</p><p>We\'ve taught over a million students how to code and many have gone on to change their lives by becoming professional developers or starting their own tech startup.</p><p>You\'ll save yourself over $12,000 by enrolling, but still get access to the same teaching materials and learn from the same instructor and curriculum as our in-person programming bootcamp.</p><p>The course is constantly updated with new content, with new projects and modules determined by students - that\'s you!</p><p>We\'ll take you step-by-step through engaging video tutorials and teach you everything you need to know to succeed as a web developer.</p><p>The course includes over 65 hours of HD video tutorials and builds your programming knowledge while making real-world websites and web apps.</p><p>Throughout this comprehensive course, we cover a massive amount of tools and technologies, including:</p><p>Front-End Web Development</p><ul><li>HTML 5</li><li>CSS 3</li><li>Bootstrap 4</li><li>Javascript ES6</li><li>DOM Manipulation</li><li>jQuery</li><li>Bash Command Line</li><li>Git, GitHub and Version Control</li><li>Backend Web Development</li><li>Node.js</li><li>NPM</li><li>Express.js</li><li>EJS</li><li>REST</li><li>APIs</li><li>Databases</li><li>SQL</li><li>MongoDB</li><li>Mongoose</li><li>Authentication</li><li>Firebase</li><li>React.js</li><li>React Hooks</li><li>Web Design</li><li>Deployment with GitHub Pages, Heroku and MongoDB Atlas</li><li>Web3 Development on the Internet Computer</li><li>Blockchain technology</li><li>Token contract development</li><li>NFT minting, buying and selling logic</li><li>By the end of this course, you will be fluently programming and be ready to make any website you can dream of.</li><li>You\'ll also build a portfolio of over 32+ websites that you can show off to any potential employer.</li><li>Sign up today, and look forward to:</li><li>Animated Video Lectures</li><li>Code Challenges and Coding Exercises</li><li>Beautiful Real-World Projects</li><li>Quizzes &amp; Practice Tests</li></ul><p>Downloadable Programming Resources and Cheatsheets</p><p>Our best selling 12 Rules to Learn to Code eBook</p><p>$12,000+ worth of web development bootcamp course materials and course curriculum</p><p>Don\'t just take my word for it, check out what existing students have to say about the course:</p><p>\"Angela is just incredible, awesome and just fantastic in this course. I\'ve never had such an instructor; detailed in every aspect of the course, gives precise explanations, gives you the anxiety to learn etc. She\'s got that ability to make fun while explaining things for better understanding. I really love this course.\" - Ekeu MonkamUlrich</p><p>\"Angela is very thorough without ever being boring. I\'ve taken MANY online courses in my life including my Bachelors and Masters degrees. She is by far the best instructor I\'ve ever had. This course is packed with thousands of dollars worth of great instruction, and paced well enough for anyone to pick coding up and run with it- Thank you!\" - J Carlucci</p><p>\"Love the way Angela explains things. Easy to follow and full of logic. I can say she must have spent a lot of energy creating this great course. Thank you and I recommend it to all who\'s interested in coding!\" - Yiqing Zheng</p><p>\"So far (on my third day) this course has taught me more than I was able to learn in multiple other programming courses. This course is clearly outlined and builds upon itself gradually in an easy to understand way.\" - Normal Ramsey</p><p>\"This course will take you from beginner to intermediate level for real. If you don\'t know how to put together the pieces of web development this is what you\'re looking for. Angela explains in an amazing way by creating projects all the way during this course, explaining the concepts in real practice. Thank you very much, Angela. I will always consider you my mentor. Look forward to taking more courses with you.\" - Moises Dionisio Cruz</p><p>\"An amazing course, perfect for absolute beginners at the start of their coding journey! Angela is an amazing tutor and can explain in the most simple and comprehensible way even complex coding notions. Learning web development cannot get any more fun!\" - Zoe Moyssoglou</p><p>\"It\'s a different approach to teaching Web Development. I like that you are given everything possible to succeed from the onset.\" - Ronick Thomas</p><p>The tutor is simply AMAZING, by far the best tutor I have ever had. I would give her 10 stars out of 5. She is not just punching the code and talking to herself, but she is actually explaining things. She keeps on giving really useful hints and she will give you a great load of other references. I always knew what I was doing and why I was doing it. All the extra challenges have just made me remember and understand things better. - Peter Dlugos</p><p>REMEMBER… I\'m so confident that you\'ll love this course that we\'re offering a FULL money-back guarantee for 30 days! So it\'s a complete no-brainer, sign up today with ZERO risk and EVERYTHING to gain.</p><p>So what are you waiting for? Click the buy now button and join the world\'s highest-rated web development course.</p>', 30, 40, '10', '5h 35m total length', 'https://res.cloudinary.com/dev-empty/image/upload/v1680506089/fzc7tuq9pnaoqbhjq0ke.jpg', 'Lifetime', '<ul><li>No programming experience needed - I\'ll teach you everything you need to know</li><li>A computer with access to the internet</li><li>No paid software required</li><li>I\'ll walk you through, step-by-step how to get all the software installed and set up</li></ul>', '<ul><li>Build 16 web development projects for your portfolio, ready to apply for junior developer jobs.</li><li>Learn the latest technologies, including Javascript, React, Node and even Web3 development.</li><li>After the course you will be able to build ANY website you want.</li><li>Build fully-fledged websites and web apps for your startup or business.</li><li>Work as a freelance web developer.</li><li>Master frontend development with React</li><li>Master backend development with Node</li><li>Learn professional developer best practices.</li></ul>', '<ul><li>If you want to learn to code through building fun and useful projects, then take this course.</li><li>If you want to start your own startup by building your own websites and web apps.</li><li>If you are a seasoned programmer, then take this course to to get up to speed quickly with the latest frameworks and NodeJS</li><li>If you want to take ONE COURSE and learn everything you need to know about web development, take this course</li></ul>', 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', 'e532600c-8db4-41bd-8eb4-36b5cf67fc49', 0, 0, NULL, 0, '2023-04-03 07:14:50', '2023-04-03 07:14:50'),
('5335b72b-5ba5-4e55-9f04-bfb0e7f7d39f', 'Fitness-Yoga-Pilates Combined - Quick Home Workout Program', 'fitness-yoga-pilates-combined-quick-home-workout-program', '21 Days Home Workout based on Fitness, Yoga and Pilates principles for fat loss and backpain aid with your own weight', '<p>Let me ask you a few questions ;</p><p>-Are you happy with the&nbsp;<strong>extra pounds&nbsp;</strong>you\'re carrying around ?</p><p>-Are you happy with your&nbsp;<strong>well-being</strong>&nbsp;?</p><p>-Do you wanna know what is it feel like to wake up without<strong>&nbsp;back pain</strong>&nbsp;and fully&nbsp;<strong>energized&nbsp;</strong>?</p><p>-Have you ever thought why you can\'t&nbsp;<strong>lose weight&nbsp;</strong>?</p><p>-Maybe you\'ve asked yourself&nbsp;<strong>why</strong>&nbsp;do I&nbsp;<strong>skip</strong>&nbsp;workouts after a while&nbsp;?</p><p><strong>I`ve been there</strong>&nbsp;:)</p><p>What if I told you there\'s one thing , just one thing that can help you to change your current situation?</p><p>-<strong>IF</strong>&nbsp;you can spend 25 minutes , 3 times a week,</p><p>-<strong>IF</strong>&nbsp;you want to see difference in short period of time and will motivate you,</p><p>-<strong>IF</strong>&nbsp;you can follow a dietary program that won\'t put you on starving,</p>', 99.99, 499, '21', '5h 35m total length', 'https://res.cloudinary.com/dev-empty/image/upload/v1680503635/tb8disovwxiwdrz5lclz.jpg', 'Lifetime', '<ul><li>No experience needed , just you and your mat !</li></ul>', '<ul><li>Quick and Efficient Home Workout !</li><li>Feel Strong and Lose Fat With Bodyweight Exercises !</li><li>Improve Your Core Strength, Upper Body Strength and Your Legs and Booty !</li></ul>', '<ul><li>People claims themself as lazy and have limited time</li><li>People works 8 to 5 in office, on computer all the time</li></ul>', 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '3b0eebe9-c3a9-4250-be93-40b58ee1d40c', 1, 1, '2023-04-03 06:00:57', 0, '2022-08-24 06:12:19', '2023-04-03 06:33:56'),
('72a7266e-ba51-42ea-bfc2-4ba9aaa262e2', 'Software Project Management For Start-ups And Solopreneurs', 'software-project-management-for-start-ups-and-solopreneurs', 'Software project management for start-ups, small businesses & entrepreneurs using Trello. Especially if hire freelancers.', '<p>If you are a solopreneur or a small business owner, learn project management fundamentals for small businesses, and complete your projects successfully, on time, and on budget.</p><ul><li>Learn business prioritization and decision-making</li><li>Learn to use Trello productivity and project management software</li><li>Hire the best freelancers and make sure they deliver successful projects</li><li>Master early team building</li></ul>', 9.99, 39.99, '38', '2h 6m total length', 'https://res.cloudinary.com/dev-empty/image/upload/v1680503559/clk5ruh6tso0jzoxtjsx.jpg', 'Lifetime', '<ul><li>You should be a solo entrepreneur who is hiring online freelancers and looking to improve your project management skills</li></ul>', '<ul><li>Have your products go more smoothly, on time and on budget</li><li>Understand different software project management methodologies so you can use the right one for your project</li></ul>', '<ul><li>Hire the best freelancers and make sure they deliver successful projects</li><li>Master early team building</li></ul>', 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '763283f5-3076-4b06-acba-e33d1f2a0db7', 1, 1, '2023-04-03 06:00:55', 0, '2022-08-24 05:56:16', '2023-04-03 06:32:40'),
('742d231f-2d5b-42b6-993e-1edeba676f45', 'Pianoforall - Incredible New Way To Learn Piano & Keyboard', 'pianoforall-incredible-new-way-to-learn-piano-keyboard', 'Learn Piano in WEEKS not years. Play-By-Ear & learn to Read Music. Pop, Blues, Jazz, Ballads, Improvisation, Classical', '<p><strong>Pianoforall is one of the most popular online piano courses with over 300,000 students worldwide</strong></p><p>Now ANYONE Can Learn Piano or Keyboard</p><p>Imagine being able to sit down at a piano and just PLAY - Ballads,&nbsp;Pop, Blues, Jazz, Ragtime, even amazing Classical pieces? Now you can...&nbsp;and you can do it in months not years without wasting money, time and&nbsp;effort on traditional Piano Lessons.&nbsp;</p><p><strong>An Incredible Set of&nbsp;Videos and ebooks (9 books, 600 pages)</strong></p>', 49.99, 145, '426', '38h 17m total length', 'https://res.cloudinary.com/dev-empty/image/upload/v1680503063/krjd65qmdyjkmhfj3gzi.jpg', 'Lifetime', '<ul><li>You don\'t need any prior knowledge or experience</li><li>Pianoforall works equally well on Piano or Keyboard</li><li>You only need to practice 20 minutes a day to make rapid progres</li></ul>', '<ul><li>Pianoforall will take complete beginners to an intermediate level in a very short space of time</li><li>You get to sound like a pro right from the start</li></ul>', '<ul><li>Suitable for all ages - from teens onwards (not for young kids)</li><li>Perfect for people who want to be able to just sit down at a piano and just amaze everyone.</li></ul>', 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '92f8ccf1-384e-4c27-b429-a1bce510a1cc', 1, 0, NULL, 0, '2022-08-24 06:19:47', '2023-04-03 06:24:24'),
('75555389-1085-44b9-9dfb-524c3bdafff0', 'Automate the Boring Stuff with Python Programming', 'automate-the-boring-stuff-with-python-programming', 'If you\'re an office worker, student, administrator, or just want to become more productive with your compute', '<p>Automate the Boring Stuff with Python was written for people who want to get up to speed writing small programs that do practical tasks as soon as possible. You don\'t need to know sorting algorithms or object-oriented programming, so this course skips all the computer science and concentrates on writing code that gets stuff done.</p><p>This course is for complete beginners and covers the popular Python programming language. You\'ll learn basic concepts as well as:</p><ul><li>Web scraping</li><li>Parsing PDFs and Excel spreadsheets</li><li>Automating the keyboard and mouse</li><li>Sending emails and texts</li><li>And several other practical topics</li></ul>', 49.99, 99.99, '21', '13h 18m total length', 'https://res.cloudinary.com/dev-empty/image/upload/v1680504133/ossbcbo2bbdct1t0qmfv.jpg', 'Lifetime', '<ul><li>No programming experience is required.</li><li>Downloading and installing Python is covered at the start of the course.</li><li>Basic computer skills: surfing websites, running programs, saving and opening documents, etc.</li></ul>', '<ul><li>Automate tasks on their computer by writing simple Python programs.</li><li>Write programs that can do text pattern recognition with \"regular expressions\".</li><li>Programmatically generate and update Excel spreadsheets</li></ul>', '<ul><li>Office workers, students, small/home business workers, and administrators would want to improve their productivity.</li><li>Aspiring software engineers who want to add skills to their programming toolbelt.</li><li>Computer users who have heard the \"learn to code\" message, but want practical reasons to learn programming.</li></ul>', 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4d', 'e532600c-8db4-41bd-8eb4-36b5cf67fc49', 1, 0, NULL, 0, '2022-09-18 12:41:22', '2023-04-03 06:42:14'),
('a4417872-960c-4d9d-9b4c-b05bbc9c4c01', 'Agile Project Management Course', 'agile-project-management', 'Grow your business, get a raise, finish your IT project under budget with Agile! Learn from a successful executive.', '<p>Welcome to the only course on Udemy to feature a&nbsp;<strong><em>real Fortune 500 CIO&nbsp;</em></strong>and a&nbsp;<strong><em>Scrum trainer</em></strong>&nbsp;and when you are complete Udemy will issue you a certification of completion.</p><p>In this&nbsp;<strong><em>one of a kind course</em></strong>&nbsp;you will learn secrets of better Agile from a real executive with years of experience leading an enterprise IT team.&nbsp;These are the secrets executive normally don\'t share.&nbsp;</p><p>Have you ever been confused by Scrum or transformation efforts?&nbsp;Have you felt disconnected from your work and confused about what you doing?&nbsp;Most workers don\'t understand how their contribution influences a large project.&nbsp;</p>', 11.99, 99.99, '13', ' 1h 28m total length', 'https://res.cloudinary.com/dev-empty/image/upload/v1680503623/q4dbzuqng3uh0bkmvlaa.jpg', 'Lifetime', '<ul><li>A basic understanding of agile is useful but not required</li><li>A basic knowledge of Scrum is useful but not required</li><li>A basic knowledge of IT is useful but not required</li></ul>', '<ul><li>How to lead like a Fortune 500 Executive</li><li>How to lead an Agile team like a proven executive</li><li>IT leadership</li></ul>', '<ul><li>IT professionals</li><li>Tech entrepreneurs</li><li>Tech founders</li><li>Agile leaders</li></ul>', 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '6fe00827-7c90-48e9-bf3e-7e2591f97ec8', 1, 1, '2023-04-03 06:00:56', 0, '2022-08-24 06:07:41', '2023-04-03 06:33:43'),
('bf330a2e-d308-4e3d-a437-7c0ec31f037e', 'Ruby on Rails 2022 Live Class', 'ruby-on-rails-2022-live-class', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.</p><p><strong style=\"color: rgb(32, 33, 36);\">Hours:&nbsp;</strong></p><p><strong>Sunday 5AM – 6AM</strong></p><p>Monday <strong style=\"color: rgb(96, 96, 96);\">5AM – 6AM</strong></p><p>Tuesday <strong style=\"color: rgb(96, 96, 96);\">5AM – 6AM</strong></p><p>Wednesday <strong style=\"color: rgb(96, 96, 96);\">5AM – 6AM</strong></p><p>Thursday <strong style=\"color: rgb(96, 96, 96);\">5AM – 6AM</strong></p><p>Friday <strong style=\"color: rgb(96, 96, 96);\">5AM – 6AM</strong></p><p>Saturday <strong style=\"color: rgb(96, 96, 96);\">5AM – 6AM</strong></p>', 99.99, 149.99, '20', '2 Weeks', 'https://res.cloudinary.com/dev-empty/image/upload/v1680502980/kmnu829tgn6holveaxmf.jpg', 'Lifetime', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</p>', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</p>', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</p>', 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', 'e532600c-8db4-41bd-8eb4-36b5cf67fc49', 1, 0, NULL, 1, '2022-09-25 05:08:38', '2023-04-03 06:23:00'),
('db24afee-e132-4be7-a7e7-0c411ccd41ca', 'SAP ABAP Programming For Beginners - Online Training', 'sap-abap-programming-for-beginners-online-training', 'SAP ABAP is the popular enterprise programming language developed by SAP and used by the biggest', '<p>You will learn by watching the author actually perform the operation he is instructing on, as he explains step by step how to create and modify ABAP code. The training explains SAP ABAP from the ground up starting with the absolute basics to ensure you have a thorough grasp of the how best to program SAP enterprise systems. He slowly works you up through learning the key aspects of ABAP development introducing new concepts and language element included in SAP, and covers topics such building report interfaces and modularizing you programs with \'Includes\', \'Forms\' and \'Function Modules\'.</p><p>This training course not only gives you an a thorough insight into how the SAP programming language works but is delivered in such a way that everyone who takes the course will have absolutely no problem in understanding all the topics discussed.</p>', 16.99, 84.99, '133', '13h 18m total length', 'https://res.cloudinary.com/dev-empty/image/upload/v1680503538/f9teqprut85awkfczdmw.jpg', 'Six Months', '<ul><li>User level understanding of how to navigate the SAP GUI</li></ul>', '<ul><li>Get your first job in SAP</li><li>Enhance your existing SAP Skill-set</li><li>Extensive, informative and interesting video lecture</li><li>Help pass SAP ABAP Certification Exams</li><li>Instructor contact through the Udemy platform</li></ul>', '<ul><li>Everyone</li><li>Beginners through to season SAP Consultants</li><li>SAP Functional Consultants looking to learn ABAP skills</li><li>SAP Project Team members</li><li>College Students wanting to get ahead with their studies</li><li>SAP BASIS Consultants wanting to expand their knowledge</li><li>SAP BW Consultants - ABAP play a BIG part in this role</li></ul>', 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '6fe00827-7c90-48e9-bf3e-7e2591f97ec8', 1, 1, '2023-04-03 06:00:53', 0, '2022-08-16 09:07:47', '2023-04-03 06:32:19'),
('dd2f7ddb-ffc4-42d4-9ec6-cfe534dfb97f', 'Web Development Masterclass - Online Certification Course', 'web-development-masterclass-online-certification-course', 'Cloud Computing | Web Apps | Linux | Web Servers | DBMS | LAMP Stack | HTML + More', '<p>This course offers a comprehensive look into the entire web development process - from local server configuration using WAMP and MAMP (Apache, MySQL, PHP) to production deployment using the latest web technologies including: LAMP Stack (Linux, Apache, PHP and MySQL) for Ubuntu, HTML5, CSS, Bootstrap, JavaScript, jQuery, XML, and AJAX.</p><p>The content is ideal for those interested in working as a web developer, launching a web application, or devoted enthusiasts. The concepts explored in this course are suitable for individuals of all skill levels. Each module starts with the fundamental concepts and gradually transitions into more advanced material.</p><p>What makes this course unique?</p><p>This course is specifically intended to teach students to develop web applications using the most efficient methods and the latest web technologies. Through live demonstrations we teach the importance of using scalable cloud hosting infrastructures during the development process. This includes small informational websites of only a few pages to advanced \'big data\' style, dynamic web applications. We go through several live examples of web development and Linux based server configurations on popular Cloud hosting providers such as Linode.&nbsp;</p><p>Section 1 &amp; 2 (Introduction, How the Internet Works)</p><p>The course begins with with an overview of learning objectives. We then explore how the internet works, including the composition and transmission of data packets over both local and wide-area Networks. Next we take a look at the HTTP and HTTPS protocols as applicable to client and server side communications - including DNS Lookups. This section will also teach students how email exchange works over SMTP and IMAP. The role of Network Ports and Firewalls are also introduced.</p><p>Section 3, 4: (The Web Development Process, Planning a Website)</p><p>Students will gain an understanding of all the steps involved in the web development process.</p><p>Section 5: Web Hosting and System Requirements</p><p>We conduct an in-depth case analysis of web hosting solutions including: Shared, Virtual Private, Dedicated and Cloud Hosting.</p><p>We provide an overview of various packages offered by different web hosting companies and weigh the pros and cons of each one.</p><p>Students are also introduced to the importance of web server scalability and the advantages of cloud hosting over traditional hosting services. We also examine the infrastructure requirements of popular, resource intensive applications such as Netflix and Facebook to emphasize the importance of avoiding costly mistakes in the initial stages of development.</p><p>Section 6: Domain Names</p><p>We provide an overview of the domain name registration process. This includes the role of registrars and TLD (Top Level Domain) administration by ICANN. ccTLD\'s (Country Code Top Level Domains) are also explored.</p><p>Students gain hands-on experience with the registration process using popular domain registrars. We provide a comparison of different registrars and register a sample domain name using GoDaddy. Other topics of discussion include: domain name privacy and administration, auto-renewal, domain forwarding, and name server assignment.</p><p>Section 7: Testing Environment</p><p>Students are introduced to configuring a local testing server on a PC or MAC system using WAMP (Windows) or MAMP (MAC). The lessons provide a detailed guide on installation of the packages and an overview of the interface.</p><p>Section 8: Production Environment</p><p>Students acquire the skills needed to optimally configure a live production environment for securely hosting web applications on a cloud server (Linode). The section starts with an overview of different cloud hosting providers such as Amazon Web Services, Microsoft Azure, Linode and Digital Ocean.</p><p>We then provide a live demonstration of server setup using Linode. This includes deployment of Ubuntu and installation of LAMP Stack (Linux) on the Linode Server using remote access consoles such as Terminal (MAC) and PuTTY for Windows.</p><p>Students gain an in-depth knowledge of server maintenance, file and directory commands. We also explore SSH Authentication for multiple users and file permissions to reduce security vulnerabilities. Remote Desktop connections for server administration are taught, using Tight VNC (Windows) and RealVNC (MAC).</p><p>A thorough overview of the Linode server management console is conducted, to show students how to scale servers, change root passwords, manage the DNS Zone file and create back-ups.</p><p>Section 9: FTP Setup</p><p>Students learn the role of an FTP (File Transfer Protocol) client to connect to a remote server, through a local machine. We provide a live demonstration on file upload using FileZilla and explore the FileZilla Interface for connection management.</p><p>Section 10: HTML Development</p><p>This section explores HTML. HTML is a key fundamental building block when learning to develop websites. Students initially learn the basics of HTML page structure and gradually transition into working with spacing, text formatting, lists, images, videos, links, anchors, tables, forms and much more. We include several projects, where students are shown first-hand, how to develop and code html web pages from scratch.</p><p>Section 11: CSS Development</p><p>Students learn to use CSS to create stylish, responsive web page layouts. We start by discussing the parts and types of CSS rules, followed by CSS classes, DIVS, and ID\'s. Students gain significant exposure to various formatting options, including margins, padding, font properties, backgrounds, transparency, positioning, link styling and CSS tables. This section includes a hands-on web development project where students utilize the concepts explored in the lesson.</p><p>Section 12: Document Object Model (DOM)</p><p>As a precursor to JavaScript, we explore the DOM (Document Object Model). We explain its usage and application in manipulating HTML and CSS elements.</p>', 35, 40, '10', '2h 6m total length', 'https://res.cloudinary.com/dev-empty/image/upload/v1680583472/dujvw5oy82hy43n6gwd4.jpg', 'Lifetime', '<ul><li>Students will require an internet connection and PC or MAC Computer System.</li><li>Please note that all required downloads are free.</li><li>Text Editor such as Text Wrangler (MAC) or Notepad++ (Windows)</li><li>FileZilla FTP Client (Downloaded in Section 9).</li><li>PuTTY and PuTTY Key GEN for Windows users (Downloaded in Section 8).</li><li>WAMP Server for Windows Users and MAMP Server for MAC Users (Downloaded in Section 7).</li><li>Tight VNC Viewer for Windows Users and RealVNC Viewer for MAC Users (Downloaded in Section 8)</li></ul>', '<ul><li>Understand the essentials of Local and Wide Area Networks</li><li>Setup a basic network.</li><li>Register a domain name with Domain Privacy</li><li>Forward a domain, renew and administer a domain</li><li>Configure Nameservers and DNS Zone Files</li><li>Create and Configure a Testing server on a Local Windows or MAC System.</li><li>Configure a Production web server on popular cloud hosting platforms.</li><li>Create disk backups and install disk images on a virtual server</li><li>Setup Ubuntu on a Virtual Machine</li><li>Install and configure WAMP for Windows</li><li>Install and configure MAMP for MAC</li></ul>', '<ul><li>No prerequisite knowledge required</li><li>Students interested in a career in web development</li><li>Students interesting in starting a web based business</li><li>Students who want to transition from basic shared, vps or dedicated hosting packages to sophisticated cloud hosting solutions</li><li>Students wanting to update or learn new programming skills using the latest web scripting languages</li><li>Web Development enthusiasts</li></ul>', 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', 'e532600c-8db4-41bd-8eb4-36b5cf67fc49', 1, 0, NULL, 0, '2023-04-03 07:48:59', '2023-04-04 04:44:32');

-- --------------------------------------------------------

--
-- Table structure for table `course_assets`
--

CREATE TABLE `course_assets` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `lecture_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lecture_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `courseId` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `course_assets`
--

INSERT INTO `course_assets` (`id`, `lecture_name`, `lecture_file`, `courseId`, `created_at`, `updated_at`) VALUES
('5dfb4a3f-d6c1-4c01-8aa0-455254fbf6d3', 'Certified Security', 'https://res.cloudinary.com/dev-empty/raw/upload/v1660635440/lggdrfp1jhvqrfv4uwew.pdf', '142a183d-45f1-4447-9aad-64f736471988', '2022-08-16 07:37:21', '2022-08-16 07:37:21'),
('5e4c6ee2-fed7-4938-bd85-7d532fe8af82', 'How to image proccessing', 'https://res.cloudinary.com/dev-empty/raw/upload/v1660641019/bznisqkn49wgxjmasoaf.jpeg', 'db24afee-e132-4be7-a7e7-0c411ccd41ca', '2022-08-16 09:10:19', '2022-08-16 09:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `course_progresses`
--

CREATE TABLE `course_progresses` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `finished` tinyint(1) DEFAULT 1,
  `userId` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `courseId` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `videoId` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `course_progresses`
--

INSERT INTO `course_progresses` (`id`, `finished`, `userId`, `courseId`, `videoId`, `created_at`, `updated_at`) VALUES
('0b67d04a-eec5-4050-88f7-e33cc5fdae6f', 1, '0ca83de5-3b71-4f3c-b25f-6767e5efa3c8', 'db24afee-e132-4be7-a7e7-0c411ccd41ca', '7e0cfbd8-1292-44b1-a93a-0834052422fc', '2022-09-20 03:26:54', '2022-09-20 03:26:54'),
('143b2a24-6afe-43e1-a8b8-d4e8efdc5a39', 1, '0ca83de5-3b71-4f3c-b25f-6767e5efa3c8', '75555389-1085-44b9-9dfb-524c3bdafff0', 'fdf70912-4a8c-4613-821f-f1c59a26f857', '2022-09-20 00:02:07', '2022-09-20 00:02:07'),
('4cd452b8-533b-4591-b1e2-b26ae62cee11', 1, '0ca83de5-3b71-4f3c-b25f-6767e5efa3c8', '742d231f-2d5b-42b6-993e-1edeba676f45', '9bd8d2a6-8c9f-482a-bb11-bdc83fcf6e3a', '2022-09-20 02:33:47', '2022-09-20 02:33:47'),
('a3235e19-55e3-4908-be51-55ba3763f44f', 1, '0ca83de5-3b71-4f3c-b25f-6767e5efa3c8', 'db24afee-e132-4be7-a7e7-0c411ccd41ca', '066c6c45-cb41-43d7-b7b8-3ed8aeb4477d', '2022-09-20 03:38:26', '2022-09-20 03:38:26'),
('d8e17268-3413-47b4-afb8-3975b33515af', 1, '0ca83de5-3b71-4f3c-b25f-6767e5efa3c7', '142a183d-45f1-4447-9aad-64f736471988', '3a858fce-8795-4e9e-b8d4-7fe14e47863e', '2022-08-23 14:46:00', '2022-08-23 14:46:00'),
('e188e14c-3da3-407d-bca8-fcb3dc6a5f7b', 1, '0ca83de5-3b71-4f3c-b25f-6767e5efa3c8', 'a4417872-960c-4d9d-9b4c-b05bbc9c4c01', '89ba4507-e450-473e-b82c-1bf86f927ff5', '2022-09-21 07:07:19', '2022-09-21 07:07:19');

-- --------------------------------------------------------

--
-- Table structure for table `enrolments`
--

CREATE TABLE `enrolments` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `bought_price` float DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buyer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buyer_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buyer_avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userId` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `courseId` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `status` enum('paid','unpaid') COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `enrolments`
--

INSERT INTO `enrolments` (`id`, `bought_price`, `payment_method`, `buyer_name`, `buyer_email`, `buyer_avatar`, `userId`, `courseId`, `status`, `created_at`, `updated_at`) VALUES
('036f28de-f9cf-4780-ac10-f20bbb1fca83', 99.99, 'Card', 'Instructor', 'shabbir@salah.software', 'https://res.cloudinary.com/dev-empty/image/upload/v1661230727/rquq94qv4bpuvf7xnxyh.jpg', 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', 'bf330a2e-d308-4e3d-a437-7c0ec31f037e', 'paid', '2022-09-25 07:45:09', '2022-09-25 07:45:09'),
('11f98892-7fc7-4766-b077-ab4a447c90c9', 99.99, 'Card', 'Student', 'shabbir@envytheme.com', 'https://res.cloudinary.com/dev-empty/image/upload/v1661319525/vybjeg0uupncmfemh5uf.jpg', '0ca83de5-3b71-4f3c-b25f-6767e5efa3c7', '5335b72b-5ba5-4e55-9f04-bfb0e7f7d39f', 'paid', '2022-08-30 09:31:04', '2022-08-30 09:31:04'),
('16790d35-2954-409e-b885-5180a16d3e1b', 39.99, 'Card', 'Instructor', 'shabbir@salah.software', 'https://res.cloudinary.com/dev-empty/image/upload/v1661230727/rquq94qv4bpuvf7xnxyh.jpg', 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '308cdeb3-b61f-4fca-a139-9bb219282dd3', 'paid', '2022-08-30 09:34:33', '2022-08-30 09:34:33'),
('6b2ddd13-4b09-4331-8a26-b7b75885bd30', 34.99, 'Card', 'Student', 'shabbir@envytheme.com', NULL, '0ca83de5-3b71-4f3c-b25f-6767e5efa3c7', '142a183d-45f1-4447-9aad-64f736471988', 'paid', '2022-08-23 07:38:40', '2022-08-23 07:38:40'),
('6ca92bb6-d21a-4d84-98f6-aab35027c75a', 49.99, 'Card', 'Student', 'student@elearniv.com', 'https://res.cloudinary.com/dev-empty/image/upload/v1661319525/vybjeg0uupncmfemh5uf.jpg', '0ca83de5-3b71-4f3c-b25f-6767e5efa3c8', '75555389-1085-44b9-9dfb-524c3bdafff0', 'paid', '2022-09-19 22:10:48', '2022-09-19 22:10:48'),
('7899ded1-8c3e-48c1-a807-eb6ceb3b98cb', 99.99, 'Card', 'Student', 'student@elearniv.com', 'https://res.cloudinary.com/dev-empty/image/upload/v1661319525/vybjeg0uupncmfemh5uf.jpg', '0ca83de5-3b71-4f3c-b25f-6767e5efa3c8', '5335b72b-5ba5-4e55-9f04-bfb0e7f7d39f', 'paid', '2022-09-22 13:18:18', '2022-09-22 13:18:18'),
('7f448f9a-5459-4525-9064-7aa7640c8b96', 49.99, 'Card', 'Admin', 'admin@elearniv.com', 'https://res.cloudinary.com/dev-empty/image/upload/v1661245253/wqsnxv0pfdwl2abdakf5.jpg', '89aeed13-5b6e-4e0d-84af-a24793a83cd8', '742d231f-2d5b-42b6-993e-1edeba676f45', 'paid', '2022-09-22 17:39:20', '2022-09-22 17:39:20'),
('b96d42ab-ee73-43ca-99bf-34b6a0c1c572', 16.99, 'Card', 'Student', 'student@elearniv.com', 'https://res.cloudinary.com/dev-empty/image/upload/v1661319525/vybjeg0uupncmfemh5uf.jpg', '0ca83de5-3b71-4f3c-b25f-6767e5efa3c8', 'db24afee-e132-4be7-a7e7-0c411ccd41ca', 'paid', '2022-09-20 03:26:19', '2022-09-20 03:26:19'),
('c0382082-bf4d-499e-af03-aaa75dd601fa', 49.99, 'Card', 'Instructor', 'shabbir@salah.software', 'https://res.cloudinary.com/dev-empty/image/upload/v1661230727/rquq94qv4bpuvf7xnxyh.jpg', 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '742d231f-2d5b-42b6-993e-1edeba676f45', 'paid', '2022-08-30 09:34:33', '2022-08-30 09:34:33'),
('c7c97041-4720-447c-9fe1-b9305eccbc31', 49.99, 'Card', 'Student', 'student@elearniv.com', 'https://res.cloudinary.com/dev-empty/image/upload/v1661319525/vybjeg0uupncmfemh5uf.jpg', '0ca83de5-3b71-4f3c-b25f-6767e5efa3c8', '742d231f-2d5b-42b6-993e-1edeba676f45', 'paid', '2022-09-20 02:15:27', '2022-09-20 02:15:27'),
('d2da0050-a4ba-42f0-afca-42c8fd054a85', 11.99, 'Card', 'Student', 'student@elearniv.com', 'https://res.cloudinary.com/dev-empty/image/upload/v1661319525/vybjeg0uupncmfemh5uf.jpg', '0ca83de5-3b71-4f3c-b25f-6767e5efa3c8', 'a4417872-960c-4d9d-9b4c-b05bbc9c4c01', 'paid', '2022-09-19 23:43:14', '2022-09-19 23:43:14'),
('daa64b0a-1a9d-45fb-a9c3-b4127f30e777', 9.99, 'Card', 'Instructor', 'shabbir@salah.software', 'https://res.cloudinary.com/dev-empty/image/upload/v1661230727/rquq94qv4bpuvf7xnxyh.jpg', 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '72a7266e-ba51-42ea-bfc2-4ba9aaa262e2', 'paid', '2022-08-30 09:34:33', '2022-08-30 09:34:33');

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `userId` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `courseId` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `userId`, `courseId`, `created_at`, `updated_at`) VALUES
('0342b4b8-de1f-4e53-a6fb-e3ec7ebb1b7b', 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4d', '742d231f-2d5b-42b6-993e-1edeba676f45', '2022-09-21 11:17:05', '2022-09-21 11:17:05'),
('20f02990-8274-4b30-8d58-4e6bd1cc4b3d', '89aeed13-5b6e-4e0d-84af-a24793a83cd8', '308cdeb3-b61f-4fca-a139-9bb219282dd3', '2022-09-24 03:54:44', '2022-09-24 03:54:44'),
('2dd76f06-26a1-402c-bbd3-f61b6ecaa599', 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', 'bf330a2e-d308-4e3d-a437-7c0ec31f037e', '2023-04-03 08:01:55', '2023-04-03 08:01:55'),
('562a6a88-2862-4014-af22-3b3925860916', '0ca83de5-3b71-4f3c-b25f-6767e5efa3c8', 'bf330a2e-d308-4e3d-a437-7c0ec31f037e', '2023-04-03 06:16:29', '2023-04-03 06:16:29'),
('589ed645-39ee-4d21-9998-35d1b895cbca', 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '742d231f-2d5b-42b6-993e-1edeba676f45', '2022-08-30 09:34:50', '2022-08-30 09:34:50'),
('69d90b5f-e7b4-4669-8763-c4656672501c', '0ca83de5-3b71-4f3c-b25f-6767e5efa3c8', '308cdeb3-b61f-4fca-a139-9bb219282dd3', '2023-04-03 06:16:30', '2023-04-03 06:16:30'),
('7f0ae4e2-973c-4665-b4bf-e5a828faf085', 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '5335b72b-5ba5-4e55-9f04-bfb0e7f7d39f', '2022-08-30 09:34:51', '2022-08-30 09:34:51'),
('8f532799-41cc-487e-9fe2-f82182dc3e6f', '89aeed13-5b6e-4e0d-84af-a24793a83cd8', '72a7266e-ba51-42ea-bfc2-4ba9aaa262e2', '2023-04-03 08:00:53', '2023-04-03 08:00:53'),
('ac290d49-8e83-48a2-aa9e-742e738998c1', '89aeed13-5b6e-4e0d-84af-a24793a83cd8', 'bf330a2e-d308-4e3d-a437-7c0ec31f037e', '2023-04-03 08:00:51', '2023-04-03 08:00:51'),
('fca3e5a0-b4eb-4c37-875c-9a50a39a0ed4', '0ca83de5-3b71-4f3c-b25f-6767e5efa3c8', '142a183d-45f1-4447-9aad-64f736471988', '2023-04-03 06:16:31', '2023-04-03 06:16:31');

-- --------------------------------------------------------

--
-- Table structure for table `instructor_earnings`
--

CREATE TABLE `instructor_earnings` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `earnings` float DEFAULT NULL,
  `userId` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `courseId` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `status` enum('due','paid','cancelled') COLLATE utf8_unicode_ci DEFAULT 'due',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `instructor_earnings`
--

INSERT INTO `instructor_earnings` (`id`, `earnings`, `userId`, `courseId`, `status`, `created_at`, `updated_at`) VALUES
('048c60da-c8f2-4f63-8475-7a9ab7e560c5', 49.99, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '742d231f-2d5b-42b6-993e-1edeba676f45', 'due', '2022-08-24 06:59:03', '2022-08-24 06:59:03'),
('06f33936-d78b-4e48-8d05-0b39a199f2d7', 99.99, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', 'bf330a2e-d308-4e3d-a437-7c0ec31f037e', 'due', '2022-09-25 07:45:09', '2022-09-25 07:45:09'),
('22fbbdd6-756c-4c79-863a-aa81eae6247f', 49.99, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '742d231f-2d5b-42b6-993e-1edeba676f45', 'due', '2022-09-20 02:15:27', '2022-09-20 02:15:27'),
('4847033e-68e2-45fb-a107-42ca4d8222a8', 99.99, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '5335b72b-5ba5-4e55-9f04-bfb0e7f7d39f', 'due', '2022-08-30 09:31:04', '2022-08-30 09:31:04'),
('52a0742e-a490-49ad-ab64-792579f26e46', 34.99, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '142a183d-45f1-4447-9aad-64f736471988', 'due', '2022-08-18 07:24:54', '2022-08-18 07:24:54'),
('56566e6a-6369-4580-9ca5-aef596e9e652', 39.99, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '308cdeb3-b61f-4fca-a139-9bb219282dd3', 'due', '2022-09-15 19:46:38', '2022-09-15 19:46:38'),
('6abdeb43-1e56-48ce-8e5a-6be61618c312', 34.99, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '142a183d-45f1-4447-9aad-64f736471988', 'due', '2022-08-23 07:38:40', '2022-08-23 07:38:40'),
('774dfeb7-34db-47da-b77a-09adb773cdb0', 16.99, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', 'db24afee-e132-4be7-a7e7-0c411ccd41ca', 'due', '2022-08-18 07:24:54', '2022-08-18 07:24:54'),
('83888d13-c67c-48f7-8405-885bbd692514', 34.99, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '142a183d-45f1-4447-9aad-64f736471988', 'due', '2022-08-22 05:46:13', '2022-08-22 05:46:13'),
('95a6bcd2-5f40-47ab-ac7d-0daa6d8ef932', 39.99, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '308cdeb3-b61f-4fca-a139-9bb219282dd3', 'due', '2022-08-30 09:34:33', '2022-08-30 09:34:33'),
('97ffde2e-1692-4656-ac0b-230bc5c92a78', 34.99, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '142a183d-45f1-4447-9aad-64f736471988', 'due', '2022-08-22 05:53:04', '2022-08-22 05:53:04'),
('9bd79c6c-47c9-4ac3-9943-8119f8b49aa6', 49.99, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '742d231f-2d5b-42b6-993e-1edeba676f45', 'due', '2022-08-30 09:34:33', '2022-08-30 09:34:33'),
('9e9fd936-856a-4955-99cd-b1160ca96a87', 49.99, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '742d231f-2d5b-42b6-993e-1edeba676f45', 'due', '2022-09-19 02:53:49', '2022-09-19 02:53:49'),
('a2f34f72-78d2-40ce-a8bc-218b14063e50', 16.99, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', 'db24afee-e132-4be7-a7e7-0c411ccd41ca', 'due', '2022-09-20 03:26:19', '2022-09-20 03:26:19'),
('a6f6e736-b84d-4c88-bde2-5b3032738bd2', 11.99, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', 'a4417872-960c-4d9d-9b4c-b05bbc9c4c01', 'due', '2022-09-19 23:43:14', '2022-09-19 23:43:14'),
('a9bacfec-af55-4e44-977a-e12b539e559a', 49.99, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '742d231f-2d5b-42b6-993e-1edeba676f45', 'due', '2022-09-22 17:39:20', '2022-09-22 17:39:20'),
('af398513-a6f9-436b-835d-1d5223dd4247', 16.99, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', 'db24afee-e132-4be7-a7e7-0c411ccd41ca', 'due', '2022-08-22 15:45:32', '2022-08-22 15:45:32'),
('c31a7b2f-f851-42e9-9e1e-a9094078e310', 34.99, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '142a183d-45f1-4447-9aad-64f736471988', 'due', '2022-08-22 15:50:04', '2022-08-22 15:50:04'),
('c57b5ae0-c9c9-4415-aee2-d880923f03a9', 49.99, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4d', '75555389-1085-44b9-9dfb-524c3bdafff0', 'due', '2022-09-19 22:10:48', '2022-09-19 22:10:48'),
('d57028e6-409c-47f6-a72a-897bf0adb500', 34.99, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '142a183d-45f1-4447-9aad-64f736471988', 'due', '2022-08-18 07:37:04', '2022-08-18 07:37:04'),
('dbe4de48-befc-42f5-83c5-e219bc631fea', 9.99, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '72a7266e-ba51-42ea-bfc2-4ba9aaa262e2', 'due', '2022-08-30 09:34:33', '2022-08-30 09:34:33'),
('dd1b1a4d-844e-4633-9220-e1f772bc02f8', 99.99, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', 'bf330a2e-d308-4e3d-a437-7c0ec31f037e', 'due', '2022-09-25 07:46:43', '2022-09-25 07:46:43'),
('f0c6dbfd-e09f-4594-9d9f-bc7cafff0f4b', 99.99, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '5335b72b-5ba5-4e55-9f04-bfb0e7f7d39f', 'due', '2022-09-22 13:18:18', '2022-09-22 13:18:18');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `partner_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `name`, `partner_image`, `created_at`, `updated_at`) VALUES
('218cd3cb-3862-4a65-9a26-ff41db001ca3', 'Glossier', 'https://res.cloudinary.com/dev-empty/image/upload/v1661161382/rmxmzufdz49cpzjssosv.png', '2022-08-22 09:43:02', '2022-08-22 09:43:02'),
('7570326b-bb7c-491f-8136-8c91b0434c2e', 'Kinfolk', 'https://res.cloudinary.com/dev-empty/image/upload/v1661161393/odkmwphgku2dlsdyaad4.png', '2022-08-22 09:43:13', '2022-08-22 09:43:13'),
('afbd9d22-f6c4-4254-a80b-85643c3fbc8b', 'Aesop', 'https://res.cloudinary.com/dev-empty/image/upload/v1661161461/alfegv8btanozdqld3np.png', '2022-08-22 09:44:21', '2022-08-22 09:44:21'),
('c4890409-9b6b-4f52-929a-2760979342ff', 'Aesop', 'https://res.cloudinary.com/dev-empty/image/upload/v1661161371/ndqnniaryo2n2szdkwsc.png', '2022-08-22 09:42:52', '2022-08-22 09:42:52'),
('e3ffc9a8-b17e-4f47-9767-afa3cb37bc41', 'Pegasus', 'https://res.cloudinary.com/dev-empty/image/upload/v1661161400/igaeyilojmqpvonhe1am.png', '2022-08-22 09:43:20', '2022-08-22 09:43:20'),
('f268750f-a059-4662-ba6a-355d4a2d007f', 'Comedy', 'https://res.cloudinary.com/dev-empty/image/upload/v1661161409/pyn8kp9eppisxgwqf2cq.png', '2022-08-22 09:43:29', '2022-08-22 09:43:29');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20220807061714-create-user.js'),
('20220809153209-create-category.js'),
('20220810055344-create-testimonial.js'),
('20220810071953-create-partner.js'),
('20220811031005-create-course.js'),
('20220814043222-create-video.js'),
('20220815063929-create-course-asset.js'),
('20220816105113-create-favourite.js'),
('20220817092028-create-enrolment.js'),
('20220817092044-create-instructor-earning.js'),
('20220821065623-create-course-progress.js'),
('20220822101406-create-subscription.js');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `email`, `active`, `created_at`, `updated_at`) VALUES
('6f4652e2-fa95-4361-bad4-5f8295110319', 'shabbirahmed149@gmail.com', 1, '2022-08-24 05:19:42', '2022-08-24 05:19:42');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `image_url`, `name`, `designation`, `description`, `created_at`, `updated_at`) VALUES
('6d240ff9-a486-4468-b8d8-7d2d29ed21a4', 'https://res.cloudinary.com/dev-empty/image/upload/v1661319916/ikdnht0voicfbwdpwmam.jpg', 'Jhon Smith', 'React Developer', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.', '2022-08-22 07:55:53', '2022-08-24 05:45:17'),
('9dfc677a-0ed2-4cc2-bfbb-690ee34885e1', 'https://res.cloudinary.com/dev-empty/image/upload/v1661319899/jesalmrfyvyjhnc4bn8w.jpg', 'Jason Stathum', 'Python Dev.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.', '2022-08-22 07:56:39', '2022-08-24 05:44:59'),
('ef09c8c4-b6b6-447c-8af1-12eb366acf52', 'https://res.cloudinary.com/dev-empty/image/upload/v1661155050/ulxxkiqnpzqvwcnbutyl.jpg', 'Stiven Smith', 'Captain Of AU.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.', '2022-08-22 07:57:30', '2022-08-22 07:57:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_token` char(36) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `reset_password_send_at` datetime DEFAULT NULL,
  `reset_password_at` datetime DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` enum('student','admin','instructor') COLLATE utf8_unicode_ci DEFAULT 'student',
  `email_confirmed` tinyint(1) DEFAULT 0,
  `email_confirmed_at` datetime DEFAULT NULL,
  `instructor_request` tinyint(1) DEFAULT 0,
  `instructor_request_confirmed` tinyint(1) DEFAULT 0,
  `instructor_request_confirmed_at` datetime DEFAULT NULL,
  `instructor_status` tinyint(1) DEFAULT NULL,
  `instructor_subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructor_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `is_profile_public` tinyint(1) DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `gender`, `designation`, `bio`, `profile_photo`, `location`, `phone`, `reset_password_token`, `reset_password_send_at`, `reset_password_at`, `website`, `twitter`, `facebook`, `linkedin`, `youtube`, `role`, `email_confirmed`, `email_confirmed_at`, `instructor_request`, `instructor_request_confirmed`, `instructor_request_confirmed_at`, `instructor_status`, `instructor_subject`, `instructor_description`, `status`, `is_profile_public`, `created_at`, `updated_at`) VALUES
('0ca83de5-3b71-4f3c-b25f-6767e5efa3c7', 'Oliver', 'Jake', 'oliverjake@gmail.com', '$2b$10$x4kUZpMmAG6RxwJhvYPtMeLWd9.Ex.vb6oy/fIFDzpanJYgc.fbMO', NULL, NULL, NULL, 'https://res.cloudinary.com/dev-empty/image/upload/v1661319525/vybjeg0uupncmfemh5uf.jpg', NULL, NULL, '573674dc-3ec7-43ad-ae3b-2ea7e649373c', '2022-08-22 04:27:26', NULL, NULL, NULL, NULL, NULL, NULL, 'student', 1, '2022-08-22 04:38:20', 0, 0, NULL, NULL, NULL, NULL, 1, 1, '2022-08-22 04:27:26', '2022-08-24 05:38:45'),
('0ca83de5-3b71-4f3c-b25f-6767e5efa3c8', 'Student', 'Profile', 'student@elearniv.com', '$2b$10$x4kUZpMmAG6RxwJhvYPtMeLWd9.Ex.vb6oy/fIFDzpanJYgc.fbMO', NULL, NULL, NULL, 'https://res.cloudinary.com/dev-empty/image/upload/v1661319525/vybjeg0uupncmfemh5uf.jpg', NULL, NULL, '573674dc-3ec7-43ad-ae3b-2ea7e649373c', '2022-08-22 04:27:26', NULL, NULL, NULL, NULL, NULL, NULL, 'student', 1, '2022-08-22 04:38:20', 0, 0, NULL, NULL, NULL, NULL, 1, 1, '2022-08-22 04:27:26', '2022-08-24 05:38:45'),
('124abe4b-1558-449b-bde3-dde7e8d1153a', 'Harry', 'Mason', 'harrymason@gmail.com', '$2b$10$LIt93S54v2a326BJTR0DyuQJBTUg3E9WI.27mzoa9eVLyiA6.9Ksm', NULL, NULL, NULL, NULL, NULL, NULL, 'd5b3462f-1159-447e-b949-7975011c9a28', '2022-08-16 06:22:17', NULL, NULL, NULL, NULL, NULL, NULL, 'student', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 1, 1, '2022-08-16 06:22:17', '2022-08-16 06:22:17'),
('89aeed13-5b6e-4e0d-84af-a24793a83cd8', 'Admin', 'User', 'admin@elearniv.com', '$2b$10$dlh6PVGVzG7pHebt8GxVFuwNNsWJvJWb5lZcyB.nAI3FqLMDXSZ.G', NULL, NULL, 'Admin started his career as a Unix and Linux System Engineer in 1999. Since that time he has utilized his Linux skills at companies such as Xerox, UPS, Hewlett-Packard, and Amazon.com. Additionally, he has acted as a technical consultant and independent contractor for small businesses and Fortune 500 companies.', 'https://res.cloudinary.com/dev-empty/image/upload/v1661245253/wqsnxv0pfdwl2abdakf5.jpg', NULL, NULL, 'e52de641-fc1b-419a-b82f-75905bdfac97', '2022-08-16 03:26:55', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 1, '2022-08-16 03:27:12', 0, 0, NULL, NULL, NULL, NULL, 1, 1, '2022-08-16 03:26:55', '2022-08-23 14:12:36'),
('ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', 'Instructor', 'User', 'instructor@elearniv.com', '$2b$10$cQuqV3bPHw3EQFZXSBxxhOf5wYeAOhZ8ShRPZmmDra1M0J173Sxly', NULL, NULL, 'AP consultant and the #1 SAP instructor on Udemy.\n\nI hope you find my courses interesting and I really hope you enjoy them.', 'https://res.cloudinary.com/dev-empty/image/upload/v1661230727/rquq94qv4bpuvf7xnxyh.jpg', NULL, '+14255551212', 'aed837d4-6237-4e9a-b7a3-22dfbb5ab9ad', '2022-08-16 05:25:46', NULL, NULL, NULL, NULL, NULL, NULL, 'instructor', 1, '2022-08-16 07:29:43', 1, 1, '2022-08-16 07:33:08', NULL, 'Register to Become an Intructor', 'Register to Become an Intructor', 1, 1, '2022-08-16 05:25:46', '2022-08-23 04:59:20'),
('ee2ddc7c-08ec-430b-afd0-4da0184bcc4d', 'Instructor', 'User', 'teacher@elearniv.com', '$2b$10$cQuqV3bPHw3EQFZXSBxxhOf5wYeAOhZ8ShRPZmmDra1M0J173Sxly', NULL, NULL, 'AP consultant and the #1 SAP instructor on Udemy.\r\n\r\nI hope you find my courses interesting and I really hope you enjoy them.', 'https://res.cloudinary.com/dev-empty/image/upload/v1661230727/rquq94qv4bpuvf7xnxyh.jpg', NULL, '+14255551414', 'aed837d4-6237-4e9a-b7a3-22dfbb5ab9ad', '2022-08-16 05:25:46', NULL, NULL, NULL, NULL, NULL, NULL, 'instructor', 1, '2022-08-16 07:29:43', 1, 1, '2022-08-16 07:33:08', NULL, 'Register to Become an Intructor', 'Register to Become an Intructor', 1, 1, '2022-08-16 05:25:46', '2022-08-23 04:59:20');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `group_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_length` float DEFAULT NULL,
  `is_preview` tinyint(1) DEFAULT 0,
  `short_id` int(11) NOT NULL DEFAULT 0,
  `assets_zip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userId` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `courseId` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `group_name`, `title`, `thumb`, `video`, `video_length`, `is_preview`, `short_id`, `assets_zip`, `userId`, `courseId`, `created_at`, `updated_at`) VALUES
('066c6c45-cb41-43d7-b7b8-3ed8aeb4477d', 'Introduction', 'Programming For Beginners', 'https://res.cloudinary.com/dev-empty/image/upload/v1660640937/wdyfkal8ixben5aalosn.jpg', 'https://res.cloudinary.com/dev-empty/video/upload/v1660640934/jcjji9fsuiccbjiufkw3.mp4', 17.5, 1, 1, NULL, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', 'db24afee-e132-4be7-a7e7-0c411ccd41ca', '2022-08-16 09:08:57', '2022-08-16 09:08:57'),
('1baa8ead-9be3-4149-b7f9-9ef0440f46b1', 'Web Development Masterclass', 'Web Development Masterclass', 'https://res.cloudinary.com/dev-empty/image/upload/v1680508157/ycccd3nezyfl49qmzckw.jpg', 'https://res.cloudinary.com/dev-empty/video/upload/v1680508155/q5q1oquebjehba6mtoh7.mp4', 12.565, 1, 1, NULL, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', 'dd2f7ddb-ffc4-42d4-9ec6-cfe534dfb97f', '2023-04-03 07:49:17', '2023-04-03 07:49:17'),
('3a858fce-8795-4e9e-b8d4-7fe14e47863e', 'Introduction', 'Introduction', 'https://res.cloudinary.com/dev-empty/image/upload/v1660635409/r5tc5zabmmhagtr4w5wa.jpg', 'https://res.cloudinary.com/dev-empty/video/upload/v1660635408/w2abrcwvisrbylga6hmb.mp4', 13.931, 1, 1, NULL, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '142a183d-45f1-4447-9aad-64f736471988', '2022-08-16 07:36:50', '2022-08-16 07:36:50'),
('728f13d3-9116-4b14-984c-0871342fa162', 'Diet Plan Example for Men', 'Diet Plan Example for Men', 'https://res.cloudinary.com/dev-empty/image/upload/v1661321596/krxhp6htpzxbi8rt1g3d.jpg', 'https://res.cloudinary.com/dev-empty/video/upload/v1661321594/jhkj9brhuzwqqtnllo2v.mp4', 3.737, 1, 1, NULL, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '5335b72b-5ba5-4e55-9f04-bfb0e7f7d39f', '2022-08-24 06:13:17', '2022-08-24 06:13:17'),
('7e0cfbd8-1292-44b1-a93a-0834052422fc', 'Introduction', 'SAP ABAP', 'https://res.cloudinary.com/dev-empty/image/upload/v1660640995/knb0egtwurtagre0c2bn.jpg', 'https://res.cloudinary.com/dev-empty/video/upload/v1660640994/my3ryeymr8dzhiacrbh8.mp4', 7.524, 0, 2, NULL, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', 'db24afee-e132-4be7-a7e7-0c411ccd41ca', '2022-08-16 09:09:56', '2022-08-16 09:09:56'),
('89ba4507-e450-473e-b82c-1bf86f927ff5', 'From assessment to action Agile leadership', 'From assessment to action Agile leadership', 'https://res.cloudinary.com/dev-empty/image/upload/v1661321328/g6pdnywxtkr4gi5aqsqo.jpg', 'https://res.cloudinary.com/dev-empty/video/upload/v1661321326/nsrvkzi4dxz2tyqqihey.mp4', 15.549, 1, 1, NULL, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', 'a4417872-960c-4d9d-9b4c-b05bbc9c4c01', '2022-08-24 06:08:49', '2022-08-24 06:08:49'),
('9bd8d2a6-8c9f-482a-bb11-bdc83fcf6e3a', 'Before We Begin', 'Before We Begin', 'https://res.cloudinary.com/dev-empty/image/upload/v1661322036/ifsvlvrm0leoct92zhwo.jpg', 'https://res.cloudinary.com/dev-empty/video/upload/v1661322032/jkoszozrilpyne8mn65i.mp4', 16.7033, 1, 1, NULL, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '742d231f-2d5b-42b6-993e-1edeba676f45', '2022-08-24 06:20:37', '2022-08-24 06:20:37'),
('a67da3bc-5581-454b-b132-174596aeee35', 'The Complete 2023 Web Development Bootcamp', 'The Complete 2023 Web Development Bootcamp', 'https://res.cloudinary.com/dev-empty/image/upload/v1680507971/m0jnwqm8jqyjdfdy1zaj.jpg', 'https://res.cloudinary.com/dev-empty/video/upload/v1680507970/qow7a6qq6eu7wmxt0atz.mp4', 12.565, 1, 1, NULL, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '3e048148-af93-4753-8e99-c52b3b3b3a88', '2023-04-03 07:46:12', '2023-04-03 07:46:12'),
('a8aec4be-707b-410d-a887-ad33d660d1ac', 'Introduction', 'Course introduction', 'https://res.cloudinary.com/dev-empty/image/upload/v1661320758/zlllw1oqwpzoc8cjfxtz.jpg', 'https://res.cloudinary.com/dev-empty/video/upload/v1661320753/umpgo4hxrxpst5fddnik.mp4', 15.182, 1, 1, NULL, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '72a7266e-ba51-42ea-bfc2-4ba9aaa262e2', '2022-08-24 05:59:19', '2022-08-24 05:59:19'),
('f2587d22-96e2-4349-ae57-60d907b2a500', 'Benefits of exercise', 'Benefits of exercise', 'https://res.cloudinary.com/dev-empty/image/upload/v1661321832/lrkg87blmrq17ywjxjpt.jpg', 'https://res.cloudinary.com/dev-empty/video/upload/v1661321830/y3xopkmxg7kvwtjhftt8.mp4', 8.171, 1, 1, NULL, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '308cdeb3-b61f-4fca-a139-9bb219282dd3', '2022-08-24 06:17:12', '2022-08-24 06:17:12'),
('fdf70912-4a8c-4613-821f-f1c59a26f857', 'Introduction', 'Beginning ', 'https://res.cloudinary.com/dev-empty/image/upload/v1663504993/arxmxkglcc3smwqy2qem.jpg', 'https://res.cloudinary.com/dev-empty/video/upload/v1663504991/t6pvq0j50qctx0ajrgcz.mp4', 13.723, 1, 1, NULL, 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4d', '75555389-1085-44b9-9dfb-524c3bdafff0', '2022-09-18 12:43:14', '2022-09-18 12:43:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `userId` (`userId`),
  ADD KEY `catId` (`catId`);

--
-- Indexes for table `course_assets`
--
ALTER TABLE `course_assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courseId` (`courseId`);

--
-- Indexes for table `course_progresses`
--
ALTER TABLE `course_progresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `courseId` (`courseId`),
  ADD KEY `videoId` (`videoId`);

--
-- Indexes for table `enrolments`
--
ALTER TABLE `enrolments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `courseId` (`courseId`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `courseId` (`courseId`);

--
-- Indexes for table `instructor_earnings`
--
ALTER TABLE `instructor_earnings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `courseId` (`courseId`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `courseId` (`courseId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `courses_ibfk_2` FOREIGN KEY (`catId`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_assets`
--
ALTER TABLE `course_assets`
  ADD CONSTRAINT `course_assets_ibfk_1` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_progresses`
--
ALTER TABLE `course_progresses`
  ADD CONSTRAINT `course_progresses_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_progresses_ibfk_2` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_progresses_ibfk_3` FOREIGN KEY (`videoId`) REFERENCES `videos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `enrolments`
--
ALTER TABLE `enrolments`
  ADD CONSTRAINT `enrolments_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enrolments_ibfk_2` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favourites`
--
ALTER TABLE `favourites`
  ADD CONSTRAINT `favourites_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favourites_ibfk_2` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `instructor_earnings`
--
ALTER TABLE `instructor_earnings`
  ADD CONSTRAINT `instructor_earnings_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `instructor_earnings_ibfk_2` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `videos_ibfk_2` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
