-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2023 at 04:11 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `conta`
--

CREATE TABLE `conta` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `conta`
--

INSERT INTO `conta` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'first post', '1234567890', 'first post', '2023-08-04 01:50:01', 'firstpost@gmail.com'),
(2, 'xyz', '1231231230', 'Hi, this is a test message.', NULL, 'xyz@gmail.com'),
(3, 'ccc', '4564564560', 'Test Message 2.', '2023-08-04 02:21:34', 'ccc@gmail.com'),
(4, 'ussdfh', '7', '', '2023-08-04 22:37:46', 'bz@fghjhv.com'),
(5, 'ussdfh', '741554', '', '2023-08-04 22:37:47', 'bz@fghjhv.com'),
(6, 'ussdfh', '7741852963', 'hgfcml\'hgfc ,kuygv mkgygv ', '2023-08-04 22:38:23', 'bz@fghjhv.com'),
(7, 'ussdfh', '7741852963', 'hgfcml\'hgfc ,kuygv mkgygv ', '2023-08-04 22:39:28', 'bz@fghjhv.com'),
(8, 'ussdfh', '7741852963', 'hgfcml\'hgfc ,kuygv mkgygv ', '2023-08-04 22:39:42', 'bz@fghjhv.com'),
(9, 'ccc', '4564564560', 'Test Message 2.', '2023-08-04 22:44:37', 'ccc@gmail.com'),
(10, 'dfdf', '1234567896', 'mail send', '2023-08-04 22:47:50', 'dfdf@df.dfd'),
(11, 'zxchjl', '123425872', 'fdszxbjk f uiobv  l.', '2023-08-04 22:57:32', 'dfhgh@cfvhnk.com'),
(12, 'dgfhjkl', '74155484', 'zx bnlcx mjhgv mm', '2023-08-04 23:02:12', 'bz@fghjhv.com'),
(13, 'ffgchhjl', '541263212', 'hcfx ,hgfcfc   kjgvc.', '2023-08-04 23:06:56', 'ghxfchjbk@gmail.com'),
(14, 'xyz', '74155445', 'sdghjtrew fdbnn', '2023-08-04 23:24:30', 'xyz@gmail.com'),
(15, 'Test Name', '1234567890', 'This is the Final test mail.', '2023-08-06 11:10:12', 'textemail@gmail.com'),
(16, 'Test Name1', '1478523690', 'zxcvbnm,asdfghjklqwertyuiop', '2023-08-06 16:59:17', 'textmail@gmail.com'),
(17, 'xyz', '1231231230', 'zxcvbnmasdfghjk', '2023-08-06 19:08:28', 'xyz@gmail.com'),
(18, 'xyz', '1231231230', 'lohytdgchbjkl', '2023-08-06 19:28:44', 'bz@fghjhv.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `img_file` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `date`, `img_file`) VALUES
(1, 'Welcome Post To New Readers', 'Step into the World of Knowledge', 'welcome-post', 'Welcome, dear readers, to our brand new blog! We are thrilled to have you join us on this exciting journey of exploration, learning, and growth. Whether you\'re a seasoned adventurer in the world of knowledge or taking your first steps into the realm of curiosity, this blog is designed to be your companion, your guide, and your source of inspiration. Get ready to dive into a world where ideas flourish, perspectives expand, and connections flourish.', '2023-08-06 19:29:55', 'post-bg.jpg'),
(2, 'Building Robust Backend Applications with Flask', 'Unveiling the Magic of Flask', 'backend-using-flask', 'Introduction:\r\nIn the realm of web development, where the frontend captivates users with its visual appeal, the backend remains the unsung hero, driving the functionality and logic behind the scenes. Flask, a micro web framework for Python, is a powerful tool that empowers developers to craft robust backend applications with elegance and simplicity. In this article, we\'ll take a journey into backend development using Flask, exploring its features, advantages, and how it can be utilized to build dynamic web applications.\r\n\r\nFlask: An Overview:\r\nFlask, often referred to as a micro web framework, doesn\'t come bundled with every feature imaginable. Instead, it provides a solid foundation, allowing developers to pick and choose the components they need. This minimalistic approach means Flask is lightweight, flexible, and a perfect choice for building small to medium-sized applications.\r\n\r\nTemplates and Jinja2:\r\nFlask integrates with the Jinja2 template engine, allowing you to create dynamic HTML pages. Templates can contain placeholders that are replaced with actual values when the page is rendered. This separation of content and presentation enhances maintainability and makes your code more organized.\r\n\r\nWorking with Forms:\r\nInteractive web applications often require user input, and Flask makes handling forms a breeze. By utilizing Flask-WTF (Flask extension for working with web forms), you can create forms, validate user inputs, and render them seamlessly in your templates. This streamlines the process of capturing user data and integrating it into your backend logic.\r\n\r\nDatabase Integration:\r\nFlask doesn\'t dictate a particular database, giving developers the freedom to choose between various options, including SQLite, MySQL, PostgreSQL, and more. SQLAlchemy, a powerful and flexible ORM (Object-Relational Mapping) library, can be seamlessly integrated with Flask, making database interactions more intuitive and efficient.', '2023-08-05 01:37:54', ''),
(3, 'A Closer Look at Thapar University', 'Igniting Minds, Inspiring Excellence', 'thapar-university', 'Introduction:\r\nEducation is the cornerstone of progress, and institutions like Thapar University stand as pillars of knowledge, fostering excellence and innovation. Founded with a vision to provide exceptional education and cultivate future leaders, Thapar University has evolved into a hub of learning, research, and holistic development. In this article, we delve into the essence of Thapar University, exploring its history, achievements, and the vibrant educational environment it offers.\r\n\r\nA Legacy of Excellence:\r\nEstablished in 1956 by Karam Chand Thapar, Thapar University, formerly known as Thapar Institute of Engineering and Technology, has a rich legacy spanning over six decades. From its inception, the institution aimed to bridge the gap between academia and industry, producing graduates who are not just well-versed in theoretical knowledge but are also equipped with practical skills to make a significant impact.\r\n\r\nAcademic Prowess:\r\nThapar University boasts a diverse range of academic programs across various disciplines, from engineering and technology to sciences, business, and social sciences. With a strong emphasis on research-driven learning, the university encourages students to explore their interests, collaborate with renowned faculty members, and contribute to cutting-edge research projects. This approach not only fosters innovation but also prepares students for the dynamic challenges of the modern world.\r\n\r\nInnovation and Research:\r\nAt the heart of Thapar University\'s success lies its dedication to research and innovation. The university houses several research centers that focus on interdisciplinary research, addressing global challenges such as sustainable development, renewable energy, and healthcare technology. These centers serve as hubs for collaboration, attracting scholars and experts from around the world.', '2023-08-05 01:50:37', ''),
(4, 'Pioneering the Uncharted: Navigating the Future of AI', 'Unveiling the Horizon of AI\'s Evolution', 'future-of-ai', 'Introduction:\r\nThe landscape of technology is ever-evolving, and at the heart of this transformation stands Artificial Intelligence (AI), a revolutionary force poised to reshape industries, societies, and the very nature of human interaction with machines. In this article, we embark on a journey to explore the future of AI, uncovering the trends, challenges, and limitless possibilities that lie ahead.\r\n\r\nThe Current State:\r\nAI has already woven itself into the fabric of our lives, from virtual assistants making our homes smarter to recommendation systems tailoring our entertainment choices. Machine Learning, a subset of AI, has enabled algorithms to recognize patterns, learn from data, and make predictions. However, what we\'ve witnessed so far is just the tip of the iceberg.\r\n\r\nAI in Industries:\r\nIndustries spanning healthcare, finance, manufacturing, and more are embracing AI to optimize processes, increase efficiency, and drive innovation. In healthcare, AI aids in diagnosing diseases, while in finance, it assists in fraud detection and algorithmic trading. As AI\'s capabilities expand, it\'s expected to unlock unprecedented opportunities for advancement.', '2023-08-05 01:52:48', ''),
(5, 'Decoding the Power of Natural Language Processing', 'Unlocking Language\'s Potential', 'nlp', 'Introduction:\r\nLanguage is the bedrock of human interaction, and harnessing the power of language for machines is at the core of Natural Language Processing (NLP). In this article, we embark on an exploration of NLP, delving into its intricacies, real-world applications, and the profound ways it\'s reshaping the digital landscape.\r\n\r\nUnderstanding NLP:\r\nNatural Language Processing, a branch of artificial intelligence, empowers machines to comprehend, interpret, and generate human language. By bridging the gap between human communication and computing, NLP opens doors to a multitude of possibilities in understanding, analyzing, and responding to textual data.\r\n\r\nBreaking Down the Components:\r\nNLP involves a series of complex processes that allow machines to interact with language like humans do. From basic tasks like tokenization (breaking text into words or phrases) to advanced processes like sentiment analysis (determining emotions in text), NLP is a symphony of algorithms, linguistic patterns, and statistical models.\r\n\r\n', '2023-08-05 01:55:35', ''),
(8, 'Decentralized Finance (DeFi)', 'Revolutionizing Finance through Blockchain and Smart Contracts', 'de-fi', 'Decentralized Finance, or DeFi, has emerged as a groundbreaking movement that aims to revolutionize traditional financial systems by leveraging blockchain technology and smart contracts. This post explores the fundamental concepts, advantages, challenges, and potential applications of DeFi, showcasing how it\'s reshaping the landscape of financial services.\r\n\r\nDeFi refers to a set of financial services and applications built on blockchain platforms like Ethereum, enabling the creation of open, permissionless, and decentralized financial protocols. Unlike traditional finance, which relies on intermediaries like banks and brokers, DeFi operates on transparent, trustless, and automated systems that are accessible to anyone with an internet connection.\r\n\r\nSmart contracts are self-executing contracts with the terms of the agreement directly written into code. They enable automated and transparent execution of financial transactions without the need for intermediaries.\r\n\r\nDEXs facilitate peer-to-peer trading of digital assets without relying on a centralized intermediary. Users retain control of their private keys and assets throughout the trading process.\r\n\r\nDeFi platforms allow users to lend their assets to earn interest or borrow assets by collateralizing their own holdings. These protocols are often governed by community-driven decisions.\r\n\r\nStablecoins are cryptocurrencies designed to maintain a stable value, often pegged to traditional assets like the US Dollar. They play a vital role in DeFi by providing a less volatile means of transferring value within the ecosystem.\r\n\r\nDeFi eliminates traditional barriers to financial services, allowing anyone with an internet connection to participate, regardless of their location or background. All transactions and interactions within the DeFi ecosystem are recorded on the blockchain, ensuring transparency and reducing the potential for fraud.Smart contracts automate processes, removing the need for intermediaries and reducing the risk of human error. DeFi encourages rapid innovation, enabling developers to create new financial instruments, products, and services in a permissionless environment.\r\n\r\nDeFi platforms are vulnerable to hacks and vulnerabilities in smart contracts, which can lead to substantial financial losses for users.\r\n\r\nThe evolving regulatory landscape for cryptocurrencies and blockchain technology poses challenges for DeFi platforms, as they navigate compliance with different jurisdictions.\r\n\r\nThe current limitations of blockchain networks, such as Ethereum, can lead to slow transaction speeds and high fees during periods of high demand.DeFi can facilitate fast and cost-effective cross-border payments by leveraging stablecoins and decentralized exchange protocols.DeFi can provide financial services to unbanked and underbanked populations, enabling access to loans, savings, and insurance. Real-world assets, such as real estate or art, can be tokenized and traded on blockchain platforms, increasing liquidity and accessibility. DeFi can contribute to the development of self-sovereign identities, allowing individuals to control and manage their personal data securely.\r\n\r\nDeFi is reshaping the financial landscape by providing accessible, transparent, and innovative solutions to traditional financial services. While challenges like security and regulatory compliance persist, the potential benefits in terms of inclusivity, efficiency, and democratization of financial services are immense. As the DeFi ecosystem continues to evolve and mature, it has the potential to drive significant changes in how we perceive and interact with the world of finance.', '2023-08-06 11:23:31', 'sea_creature.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conta`
--
ALTER TABLE `conta`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conta`
--
ALTER TABLE `conta`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
