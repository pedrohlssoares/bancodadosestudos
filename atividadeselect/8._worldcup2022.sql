--
-- Banco de dados: `worldcup2022`
--
DROP DATABASE IF EXISTS `worldcup2022`;
CREATE DATABASE IF NOT EXISTS `worldcup2022` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `worldcup2022`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `estadios`
--

CREATE TABLE `estadios` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `capacidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `estadios`
--

INSERT INTO `estadios` (`codigo`, `nome`, `capacidade`) VALUES
(1, 'Lusail', 88966),
(2, 'Al Bayt', 68895),
(3, 'Estádio 974', 44089),
(4, 'Al Thumama', 44400),
(5, 'Education City', 40000),
(6, 'Ahmad Bin Ali', 45032),
(7, 'Khalifa International', 45857),
(8, 'Al Janoub', 44325);

-- --------------------------------------------------------

--
-- Estrutura para tabela `jogadores`
--

CREATE TABLE `jogadores` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `idade` int(11) NOT NULL,
  `posicao` varchar(50) NOT NULL,
  `numero` int(11) NOT NULL,
  `selecao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `jogadores`
--

INSERT INTO `jogadores` (`codigo`, `nome`, `idade`, `posicao`, `numero`, `selecao`) VALUES
(1, 'Saad Al Sheeb', 29, 'Goleiro', 1, 1),
(2, 'Bassam Al-Rawi', 25, 'Zagueiro', 3, 1),
(3, 'Ró-Ró', 31, 'Zagueiro', 4, 1),
(4, 'Abdulkarim Hassan', 29, 'Lateral Esquerdo', 13, 1),
(5, 'Pedro Miguel', 26, 'Lateral Direito', 2, 1),
(6, 'Abdelkarim Hassan', 29, 'Meio-Campo', 8, 1),
(7, 'Almoez Ali', 27, 'Atacante', 9, 1),
(8, 'Akram Afif', 28, 'Atacante', 11, 1),
(9, 'Hassan Al-Haydos', 32, 'Meio-Campo', 10, 1),
(10, 'Ali Asad', 28, 'Volante', 7, 1),
(11, 'Mohammed Muntari', 30, 'Atacante', 17, 1),
(12, 'Alexander Domínguez', 34, 'Goleiro', 1, 2),
(13, 'Byron Castillo', 25, 'Lateral Direito', 4, 2),
(14, 'Pervis Estupiñán', 26, 'Lateral Esquerdo', 3, 2),
(15, 'Robert Arboleda', 30, 'Zagueiro', 13, 2),
(16, 'Felipe Caicedo', 33, 'Atacante', 9, 2),
(17, 'Moisés Caicedo', 21, 'Volante', 5, 2),
(18, 'Angelo Preciado', 25, 'Lateral Direito', 2, 2),
(19, 'Carlos Gruezo', 29, 'Volante', 6, 2),
(20, 'Gonzalo Plata', 22, 'Atacante', 14, 2),
(21, 'Enner Valencia', 32, 'Atacante', 11, 2),
(22, 'Michael Estrada', 28, 'Atacante', 17, 2),
(23, 'Edouard Mendy', 30, 'Goleiro', 1, 3),
(24, 'Kalidou Koulibaly', 31, 'Zagueiro', 3, 3),
(25, 'Idrissa Gueye', 32, 'Volante', 8, 3),
(26, 'Saliou Ciss', 29, 'Lateral Direito', 2, 3),
(27, 'Famara Diédhiou', 29, 'Atacante', 9, 3),
(28, 'Ismaïla Sarr', 25, 'Atacante', 7, 3),
(29, 'Cheikhou Kouyaté', 33, 'Volante', 6, 3),
(30, 'Bouna Sarr', 29, 'Lateral Direito', 15, 3),
(31, 'Krépin Diatta', 23, 'Atacante', 10, 3),
(32, 'Pape Matar Sarr', 20, 'Meio-Campo', 17, 3),
(33, 'Moussa Wagué', 23, 'Lateral Direito', 20, 3),
(34, 'Andries Noppert', 28, 'Goleiro', 1, 4),
(35, 'Virgil van Dijk', 31, 'Zagueiro', 4, 4),
(36, 'Nathan Aké', 27, 'Zagueiro', 3, 4),
(37, 'Daley Blind', 32, 'Lateral Esquerdo', 17, 4),
(38, 'Denzel Dumfries', 26, 'Lateral Direito', 2, 4),
(39, 'Frenkie de Jong', 25, 'Meio-Campo', 21, 4),
(40, 'Teun Koopmeiners', 24, 'Meio-Campo', 19, 4),
(41, 'Memphis Depay', 28, 'Atacante', 10, 4),
(42, 'Cody Gakpo', 24, 'Atacante', 22, 4),
(43, 'Steven Bergwijn', 25, 'Atacante', 11, 4),
(44, 'Davy Klaassen', 29, 'Meio-Campo', 8, 4),
(45, 'Jordan Pickford', 28, 'Goleiro', 1, 5),
(46, 'Kieran Trippier', 32, 'Lateral Direito', 2, 5),
(47, 'John Stones', 27, 'Zagueiro', 5, 5),
(48, 'Harry Maguire', 29, 'Zagueiro', 6, 5),
(49, 'Luke Shaw', 27, 'Lateral Esquerdo', 3, 5),
(50, 'Declan Rice', 23, 'Volante', 4, 5),
(51, 'Jude Bellingham', 19, 'Meio-Campo', 22, 5),
(52, 'Phil Foden', 22, 'Meio-Campo', 47, 5),
(53, 'Bukayo Saka', 21, 'Atacante', 7, 5),
(54, 'Harry Kane', 29, 'Atacante', 9, 5),
(55, 'Marcus Rashford', 25, 'Atacante', 10, 5),
(56, 'Alireza Beiranvand', 30, 'Goleiro', 1, 6),
(57, 'Ramin Rezaeian', 30, 'Lateral Direito', 2, 6),
(58, 'Majid Hosseini', 26, 'Zagueiro', 4, 6),
(59, 'Morteza Pouraliganji', 29, 'Zagueiro', 5, 6),
(60, 'Mehrdad Mohammadi', 29, 'Lateral Esquerdo', 3, 6),
(61, 'Ehsan Hajsafi', 31, 'Volante', 7, 6),
(62, 'Saman Ghoddos', 28, 'Atacante', 10, 6),
(63, 'Mehdi Taremi', 29, 'Atacante', 9, 6),
(64, 'Alireza Jahanbakhsh', 28, 'Atacante', 11, 6),
(65, 'Saeid Ezatolahi', 27, 'Meio-Campo', 8, 6),
(66, 'Omid Ebrahimi', 33, 'Volante', 6, 6),
(67, 'Matt Turner', 27, 'Goleiro', 1, 7),
(68, 'Walker Zimmerman', 29, 'Zagueiro', 4, 7),
(69, 'Cameron Carter-Vickers', 24, 'Zagueiro', 3, 7),
(70, 'Antonee Robinson', 25, 'Lateral Esquerdo', 22, 7),
(71, 'Reggie Cannon', 24, 'Lateral Direito', 2, 7),
(72, 'Tyler Adams', 23, 'Volante', 16, 7),
(73, 'Weston McKennie', 25, 'Meio-Campo', 8, 7),
(74, 'Christian Pulisic', 24, 'Atacante', 10, 7),
(75, 'Timothy Weah', 22, 'Atacante', 7, 7),
(76, 'Brenden Aaronson', 23, 'Meio-Campo', 11, 7),
(77, 'Jesus Ferreira', 22, 'Atacante', 17, 7),
(78, 'Wayne Hennessey', 37, 'Goleiro', 1, 8),
(79, 'Connor Roberts', 27, 'Lateral Direito', 2, 8),
(80, 'Chris Mepham', 26, 'Zagueiro', 3, 8),
(81, 'Ben Davies', 29, 'Lateral Esquerdo', 5, 8),
(82, 'Joe Rodon', 25, 'Zagueiro', 6, 8),
(83, 'Joe Allen', 32, 'Meio-Campo', 7, 8),
(84, 'Aaron Ramsey', 32, 'Meio-Campo', 8, 8),
(85, 'Daniel James', 24, 'Atacante', 10, 8),
(86, 'Gareth Bale', 33, 'Atacante', 11, 8),
(87, 'Kieffer Moore', 31, 'Atacante', 9, 8),
(88, 'David Brooks', 26, 'Meio-Campo', 16, 8),
(89, 'Emiliano Martínez', 30, 'Goleiro', 1, 9),
(90, 'Nahuel Molina', 25, 'Lateral Direito', 24, 9),
(91, 'Cristian Romero', 25, 'Zagueiro', 13, 9),
(92, 'Nicolás Otamendi', 34, 'Zagueiro', 19, 9),
(93, 'Nicolás Tagliafico', 30, 'Lateral Esquerdo', 3, 9),
(94, 'Rodrigo De Paul', 28, 'Meio-Campo', 7, 9),
(95, 'Leandro Paredes', 28, 'Meio-Campo', 5, 9),
(96, 'Enzo Fernández', 22, 'Meio-Campo', 20, 9),
(97, 'Lionel Messi', 35, 'Atacante', 10, 9),
(98, 'Lautaro Martínez', 25, 'Atacante', 22, 9),
(99, 'Ángel Di María', 34, 'Atacante', 11, 9),
(100, 'Mohammed Al-Owais', 32, 'Goleiro', 1, 10),
(101, 'Yasser Al-Shahrani', 31, 'Lateral Direito', 12, 10),
(102, 'Ali Al-Bulaihi', 33, 'Zagueiro', 4, 10),
(103, 'Abdulelah Al-Amri', 23, 'Zagueiro', 13, 10),
(104, 'Hussein Al-Mogahwi', 33, 'Meio-Campo', 14, 10),
(105, 'Salman Al-Faraj', 32, 'Meio-Campo', 7, 10),
(106, 'Nawaf Al-Abed', 30, 'Meio-Campo', 20, 10),
(107, 'Firas Al-Buraikan', 25, 'Atacante', 9, 10),
(108, 'Salem Al-Dawsari', 30, 'Atacante', 11, 10),
(109, 'Saleh Al-Shehri', 29, 'Atacante', 17, 10),
(110, 'Mohammed Kanno', 29, 'Volante', 6, 10),
(111, 'Guillermo Ochoa', 37, 'Goleiro', 1, 11),
(112, 'Jesús Gallardo', 29, 'Lateral Esquerdo', 16, 11),
(113, 'Néstor Araujo', 31, 'Zagueiro', 3, 11),
(114, 'Héctor Moreno', 35, 'Zagueiro', 4, 11),
(115, 'César Montes', 26, 'Zagueiro', 22, 11),
(116, 'Edson Álvarez', 26, 'Volante', 5, 11),
(117, 'Andrés Guardado', 35, 'Meio-Campo', 18, 11),
(118, 'Héctor Herrera', 33, 'Meio-Campo', 16, 11),
(119, 'Luis Chávez', 26, 'Meio-Campo', 14, 11),
(120, 'Raúl Jiménez', 31, 'Atacante', 9, 11),
(121, 'Rogelio Funes Mori', 31, 'Atacante', 21, 11),
(122, 'Wojciech Szcz?sny', 32, 'Goleiro', 1, 12),
(123, 'Bartosz Bereszy?ski', 30, 'Lateral Direito', 2, 12),
(124, 'Kamil Glik', 34, 'Zagueiro', 15, 12),
(125, 'Jan Bednarek', 26, 'Zagueiro', 3, 12),
(126, 'Przemys?aw Frankowski', 28, 'Meio-Campo', 11, 12),
(127, 'Grzegorz Krychowiak', 32, 'Volante', 10, 12),
(128, 'Jakub Kiwior', 23, 'Zagueiro', 22, 12),
(129, 'Piotr Zieli?ski', 28, 'Meio-Campo', 20, 12),
(130, 'Robert Lewandowski', 34, 'Atacante', 9, 12),
(131, 'Karol ?widerski', 27, 'Atacante', 17, 12),
(132, 'Kacper Koz?owski', 19, 'Meio-Campo', 8, 12),
(133, 'Hugo Lloris', 36, 'Goleiro', 1, 13),
(134, 'Benjamin Pavard', 26, 'Lateral Direito', 2, 13),
(135, 'Raphaël Varane', 29, 'Zagueiro', 4, 13),
(136, 'Presnel Kimpembe', 26, 'Zagueiro', 3, 13),
(137, 'Lucas Hernandez', 27, 'Lateral Esquerdo', 21, 13),
(138, 'Paul Pogba', 29, 'Meio-Campo', 6, 13),
(139, 'Aurélien Tchouaméni', 23, 'Volante', 8, 13),
(140, 'Antoine Griezmann', 31, 'Atacante', 7, 13),
(141, 'Kylian Mbappé', 24, 'Atacante', 10, 13),
(142, 'Ousmane Dembélé', 25, 'Atacante', 11, 13),
(143, 'Olivier Giroud', 36, 'Atacante', 9, 13),
(144, 'Mathew Ryan', 30, 'Goleiro', 1, 14),
(145, 'Milivoje Novakovi?', 34, 'Zagueiro', 3, 14),
(146, 'Aziz Behich', 31, 'Lateral Esquerdo', 5, 14),
(147, 'Harry Souttar', 23, 'Zagueiro', 15, 14),
(148, 'Rhyan Grant', 29, 'Lateral Direito', 2, 14),
(149, 'Aaron Mooy', 32, 'Meio-Campo', 6, 14),
(150, 'Jackson Irvine', 29, 'Volante', 7, 14),
(151, 'Mathew Leckie', 31, 'Atacante', 16, 14),
(152, 'Ajdin Hrustic', 26, 'Meio-Campo', 8, 14),
(153, 'Tom Rogic', 29, 'Meio-Campo', 10, 14),
(154, 'Jamie Maclaren', 28, 'Atacante', 9, 14),
(155, 'Kasper Schmeichel', 35, 'Goleiro', 1, 15),
(156, 'Joakim Mæhle', 25, 'Lateral Direito', 2, 15),
(157, 'Andreas Christensen', 26, 'Zagueiro', 4, 15),
(158, 'Simon Kjær', 33, 'Zagueiro', 3, 15),
(159, 'Jens Stryger Larsen', 31, 'Lateral Direito', 12, 15),
(160, 'Pierre-Emile Højbjerg', 26, 'Volante', 5, 15),
(161, 'Thomas Delaney', 30, 'Meio-Campo', 6, 15),
(162, 'Christian Eriksen', 30, 'Meio-Campo', 10, 15),
(163, 'Mikkel Damsgaard', 22, 'Atacante', 19, 15),
(164, 'Andreas Skov Olsen', 22, 'Atacante', 7, 15),
(165, 'Martin Braithwaite', 31, 'Atacante', 9, 15),
(166, 'Mouez Hassen', 30, 'Goleiro', 1, 16),
(167, 'Ali Maâloul', 32, 'Lateral Esquerdo', 21, 16),
(168, 'Aymen Abdennour', 33, 'Zagueiro', 4, 16),
(169, 'Ellyes Skhiri', 27, 'Volante', 6, 16),
(170, 'Yassine Meriah', 29, 'Zagueiro', 17, 16),
(171, 'Ferjani Sassi', 31, 'Meio-Campo', 8, 16),
(172, 'Wahbi Khazri', 31, 'Atacante', 10, 16),
(173, 'Seifeddine Khaoui', 27, 'Meio-Campo', 18, 16),
(174, 'Mohamed Dräger', 27, 'Lateral Direito', 2, 16),
(175, 'Taha Yassine Khenissi', 31, 'Atacante', 9, 16),
(176, 'Anice Badri', 31, 'Atacante', 7, 16),
(177, 'Unai Simón', 26, 'Goleiro', 1, 17),
(178, 'Dani Carvajal', 30, 'Lateral Direito', 2, 17),
(179, 'Aymeric Laporte', 28, 'Zagueiro', 14, 17),
(180, 'Pau Torres', 26, 'Zagueiro', 5, 17),
(181, 'Jordi Alba', 33, 'Lateral Esquerdo', 18, 17),
(182, 'Rodri', 26, 'Volante', 16, 17),
(183, 'Pedri', 20, 'Meio-Campo', 8, 17),
(184, 'Gavi', 18, 'Meio-Campo', 6, 17),
(185, 'Ferran Torres', 23, 'Atacante', 11, 17),
(186, 'Álvaro Morata', 30, 'Atacante', 7, 17),
(187, 'Dani Olmo', 24, 'Meio-Campo', 10, 17),
(188, 'Keylor Navas', 35, 'Goleiro', 1, 18),
(189, 'Bryan Oviedo', 31, 'Lateral Esquerdo', 3, 18),
(190, 'Óscar Duarte', 34, 'Zagueiro', 4, 18),
(191, 'Francisco Calvo', 30, 'Zagueiro', 17, 18),
(192, 'Giancarlo González', 31, 'Zagueiro', 2, 18),
(193, 'Yeltsin Tejeda', 30, 'Volante', 14, 18),
(194, 'Celso Borges', 33, 'Meio-Campo', 8, 18),
(195, 'Jesús Jiménez', 31, 'Atacante', 23, 18),
(196, 'Joel Campbell', 31, 'Atacante', 11, 18),
(197, 'Bryan Ruiz', 36, 'Meio-Campo', 10, 18),
(198, 'Anthony Contreras', 22, 'Atacante', 20, 18),
(199, 'Manuel Neuer', 36, 'Goleiro', 1, 19),
(200, 'Antonio Rüdiger', 30, 'Zagueiro', 2, 19),
(201, 'Niklas Süle', 26, 'Zagueiro', 20, 19),
(202, 'Matthias Ginter', 28, 'Zagueiro', 4, 19),
(203, 'Lukas Klostermann', 26, 'Lateral Direito', 16, 19),
(204, 'Joshua Kimmich', 27, 'Volante', 6, 19),
(205, 'Leon Goretzka', 27, 'Meio-Campo', 8, 19),
(206, 'Ilkay Gündogan', 31, 'Meio-Campo', 21, 19),
(207, 'Serge Gnabry', 27, 'Atacante', 22, 19),
(208, 'Thomas Müller', 33, 'Atacante', 25, 19),
(209, 'Timo Werner', 26, 'Atacante', 9, 19),
(210, 'Shuichi Gonda', 33, 'Goleiro', 1, 20),
(211, 'Maya Yoshida', 34, 'Zagueiro', 4, 20),
(212, 'Takehiro Tomiyasu', 24, 'Lateral Direito', 2, 20),
(213, 'Hiroki Sakai', 32, 'Lateral Direito', 3, 20),
(214, 'Wataru Endo', 29, 'Volante', 6, 20),
(215, 'Gaku Shibasaki', 30, 'Meio-Campo', 8, 20),
(216, 'Takumi Minamino', 27, 'Meio-Campo', 7, 20),
(217, 'Daizen Maeda', 25, 'Atacante', 19, 20),
(218, 'Ritsu Doan', 25, 'Atacante', 11, 20),
(219, 'Yuya Osako', 32, 'Atacante', 9, 20),
(220, 'Kaoru Mitoma', 25, 'Atacante', 22, 20),
(221, 'Thibaut Courtois', 31, 'Goleiro', 1, 21),
(222, 'Toby Alderweireld', 33, 'Zagueiro', 15, 21),
(223, 'Jan Vertonghen', 35, 'Zagueiro', 3, 21),
(224, 'Jason Denayer', 27, 'Zagueiro', 2, 21),
(225, 'Yannick Carrasco', 29, 'Lateral Esquerdo', 11, 21),
(226, 'Axel Witsel', 33, 'Volante', 6, 21),
(227, 'Youri Tielemans', 25, 'Meio-Campo', 8, 21),
(228, 'Kevin De Bruyne', 31, 'Meio-Campo', 7, 21),
(229, 'Eden Hazard', 31, 'Atacante', 10, 21),
(230, 'Romelu Lukaku', 29, 'Atacante', 9, 21),
(231, 'Dries Mertens', 35, 'Atacante', 14, 21),
(232, 'Milan Borjan', 34, 'Goleiro', 1, 22),
(233, 'Alistair Johnston', 25, 'Lateral Direito', 2, 22),
(234, 'Stephen Eustáquio', 26, 'Meio-Campo', 8, 22),
(235, 'Sam Adekugbe', 28, 'Lateral Esquerdo', 3, 22),
(236, 'Jamal Musiala', 20, 'Meio-Campo', 10, 22),
(237, 'Cyle Larin', 28, 'Atacante', 9, 22),
(238, 'Jonathan Osorio', 29, 'Meio-Campo', 14, 22),
(239, 'Alphonso Davies', 22, 'Lateral Esquerdo', 19, 22),
(240, 'Stephen Eustáquio', 26, 'Meio-Campo', 8, 22),
(241, 'Tajon Buchanan', 24, 'Atacante', 21, 22),
(242, 'Lucas Cavallini', 31, 'Atacante', 17, 22),
(243, 'Yassine Bounou', 32, 'Goleiro', 1, 23),
(244, 'Achraf Hakimi', 24, 'Lateral Direito', 2, 23),
(245, 'Romain Saïss', 33, 'Zagueiro', 5, 23),
(246, 'Nayef Aguerd', 28, 'Zagueiro', 4, 23),
(247, 'Noussair Mazraoui', 25, 'Lateral Direito', 3, 23),
(248, 'Sofyan Amrabat', 26, 'Volante', 6, 23),
(249, 'Azzedine Ounahi', 24, 'Meio-Campo', 8, 23),
(250, 'Sofiane Boufal', 28, 'Meio-Campo', 10, 23),
(251, 'Hakim Ziyech', 29, 'Meio-Campo', 7, 23),
(252, 'Abdelhamid Sabiri', 27, 'Atacante', 11, 23),
(253, 'Youssef En-Nesyri', 26, 'Atacante', 9, 23),
(254, 'Dominik Livakovi?', 29, 'Goleiro', 1, 24),
(255, 'Josip Juranovi?', 27, 'Lateral Direito', 2, 24),
(256, 'Dejan Lovren', 33, 'Zagueiro', 6, 24),
(257, 'Borna Bariši?', 30, 'Lateral Esquerdo', 21, 24),
(258, 'Joško Gvardiol', 21, 'Zagueiro', 3, 24),
(259, 'Marcelo Brozovi?', 30, 'Volante', 11, 24),
(260, 'Luka Modri?', 37, 'Meio-Campo', 10, 24),
(261, 'Mateo Kova?i?', 28, 'Meio-Campo', 8, 24),
(262, 'Ivan Periši?', 33, 'Atacante', 4, 24),
(263, 'Andrej Kramari?', 30, 'Atacante', 9, 24),
(264, 'Bruno Petkovi?', 29, 'Atacante', 7, 24),
(265, 'Alisson Becker', 30, 'Goleiro', 1, 25),
(266, 'Danilo', 31, 'Lateral Direito', 2, 25),
(267, 'Marquinhos', 28, 'Zagueiro', 3, 25),
(268, 'Thiago Silva', 38, 'Zagueiro', 4, 25),
(269, 'Alex Sandro', 32, 'Lateral Esquerdo', 6, 25),
(270, 'Casemiro', 30, 'Volante', 5, 25),
(271, 'Fred', 29, 'Meio-Campo', 8, 25),
(272, 'Lucas Paquetá', 25, 'Meio-Campo', 11, 25),
(273, 'Neymar', 30, 'Atacante', 10, 25),
(274, 'Vinícius Júnior', 22, 'Atacante', 20, 25),
(275, 'Richarlison', 26, 'Atacante', 7, 25),
(276, 'Vanja Milinkovi?-Savi?', 25, 'Goleiro', 1, 26),
(277, 'Miloš Veljkovi?', 27, 'Zagueiro', 3, 26),
(278, 'Nemanja Gudelj', 31, 'Volante', 6, 26),
(279, 'Strahinja Pavlovi?', 21, 'Zagueiro', 15, 26),
(280, 'Filip Mladenovi?', 31, 'Lateral Esquerdo', 5, 26),
(281, 'Dušan Tadi?', 34, 'Meio-Campo', 10, 26),
(282, 'Sergej Milinkovi?-Savi?', 27, 'Meio-Campo', 8, 26),
(283, 'Andrej Kramari?', 30, 'Atacante', 9, 26),
(284, 'Aleksandar Mitrovi?', 28, 'Atacante', 11, 26),
(285, 'Luka Jovi?', 24, 'Atacante', 7, 26),
(286, 'Nemanja Radonji?', 26, 'Atacante', 17, 26),
(287, 'Yann Sommer', 33, 'Goleiro', 1, 27),
(288, 'Ricardo Rodríguez', 29, 'Lateral Esquerdo', 13, 27),
(289, 'Manuel Akanji', 27, 'Zagueiro', 5, 27),
(290, 'Fabian Schär', 31, 'Zagueiro', 3, 27),
(291, 'Silvan Widmer', 31, 'Lateral Direito', 2, 27),
(292, 'Granit Xhaka', 29, 'Volante', 10, 27),
(293, 'Remo Freuler', 29, 'Meio-Campo', 8, 27),
(294, 'Xherdan Shaqiri', 30, 'Meio-Campo', 23, 27),
(295, 'Breel Embolo', 25, 'Atacante', 17, 27),
(296, 'Haris Seferovi?', 30, 'Atacante', 9, 27),
(297, 'Steven Zuber', 31, 'Atacante', 22, 27),
(298, 'André Onana', 27, 'Goleiro', 1, 28),
(299, 'Alaixys Romao', 34, 'Volante', 6, 28),
(300, 'Michael Ngadeu-Ngadjui', 32, 'Zagueiro', 3, 28),
(301, 'Georges-Kévin Nkoudou', 27, 'Atacante', 7, 28),
(302, 'Fabrice Ondoa', 28, 'Goleiro', 12, 28),
(303, 'Eric Maxim Choupo-Moting', 33, 'Atacante', 13, 28),
(304, 'Collins Fai', 30, 'Lateral Direito', 2, 28),
(305, 'Stephane Bahoken', 31, 'Atacante', 9, 28),
(306, 'Pierre Kunde Malong', 28, 'Meio-Campo', 10, 28),
(307, 'Christian Bassogog', 27, 'Atacante', 11, 28),
(308, 'Joel Matip', 31, 'Zagueiro', 4, 28),
(309, 'Rui Patrício', 34, 'Goleiro', 1, 29),
(310, 'João Cancelo', 28, 'Lateral Direito', 20, 29),
(311, 'Pepe', 39, 'Zagueiro', 3, 29),
(312, 'Rúben Dias', 25, 'Zagueiro', 4, 29),
(313, 'Raphaël Guerreiro', 28, 'Lateral Esquerdo', 5, 29),
(314, 'William Carvalho', 30, 'Volante', 14, 29),
(315, 'Bruno Fernandes', 28, 'Meio-Campo', 8, 29),
(316, 'Bernardo Silva', 28, 'Meio-Campo', 10, 29),
(317, 'Cristiano Ronaldo', 37, 'Atacante', 7, 29),
(318, 'Gonçalo Ramos', 22, 'Atacante', 9, 29),
(319, 'Diogo Jota', 26, 'Atacante', 21, 29),
(320, 'Lawrence Ati-Zigi', 28, 'Goleiro', 1, 30),
(321, 'Daniel Amartey', 27, 'Zagueiro', 3, 30),
(322, 'Joseph Aidoo', 27, 'Zagueiro', 5, 30),
(323, 'Alexander Djiku', 30, 'Zagueiro', 22, 30),
(324, 'Mohammed Salisu', 24, 'Zagueiro', 4, 30),
(325, 'Thomas Partey', 29, 'Volante', 5, 30),
(326, 'Mohammed Kudus', 23, 'Meio-Campo', 8, 30),
(327, 'Mubarak Wakaso', 31, 'Meio-Campo', 14, 30),
(328, 'Daniel Amartey', 27, 'Zagueiro', 3, 30),
(329, 'Jordan Ayew', 31, 'Atacante', 10, 30),
(330, 'André Ayew', 32, 'Atacante', 19, 30),
(331, 'Fernando Muslera', 36, 'Goleiro', 1, 31),
(332, 'José María Giménez', 28, 'Zagueiro', 2, 31),
(333, 'Diego Godín', 36, 'Zagueiro', 3, 31),
(334, 'Ronald Araújo', 24, 'Zagueiro', 5, 31),
(335, 'Matías Viña', 25, 'Lateral Esquerdo', 17, 31),
(336, 'Federico Valverde', 24, 'Volante', 15, 31),
(337, 'Lucas Torreira', 27, 'Meio-Campo', 14, 31),
(338, 'Matías Vecino', 31, 'Meio-Campo', 8, 31),
(339, 'Luis Suárez', 36, 'Atacante', 9, 31),
(340, 'Darwin Núñez', 24, 'Atacante', 7, 31),
(341, 'Nicolás De La Cruz', 27, 'Meio-Campo', 11, 31),
(342, 'Kim Seung-gyu', 32, 'Goleiro', 1, 32),
(343, 'Kim Min-jae', 25, 'Zagueiro', 3, 32),
(344, 'Kim Young-gwon', 32, 'Zagueiro', 4, 32),
(345, 'Hong Chul', 32, 'Lateral Esquerdo', 17, 32),
(346, 'Kim Moon-hwan', 27, 'Lateral Direito', 2, 32),
(347, 'Jung Woo-young', 31, 'Volante', 8, 32),
(348, 'Lee Kang-in', 22, 'Meio-Campo', 10, 32),
(349, 'Son Heung-min', 30, 'Atacante', 7, 32),
(350, 'Hwang Hee-chan', 27, 'Atacante', 11, 32),
(351, 'Paik Seung-ho', 23, 'Meio-Campo', 6, 32),
(352, 'Hwang Ui-jo', 29, 'Atacante', 9, 32);

-- --------------------------------------------------------

--
-- Estrutura para tabela `jogos`
--

CREATE TABLE `jogos` (
  `codigo` int(11) NOT NULL,
  `selecao_a` int(11) NOT NULL,
  `selecao_b` int(11) NOT NULL,
  `gols_a` int(11) DEFAULT NULL,
  `gols_b` int(11) DEFAULT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `estadio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `jogos`
--

INSERT INTO `jogos` (`codigo`, `selecao_a`, `selecao_b`, `gols_a`, `gols_b`, `data`, `hora`, `estadio`) VALUES
(1, 1, 2, 0, 2, '2022-11-20', '13:00:00', 2),
(2, 3, 4, 0, 2, '2022-11-21', '13:00:00', 8),
(3, 5, 6, 6, 2, '2022-11-21', '10:00:00', 7),
(4, 7, 8, 1, 1, '2022-11-21', '16:00:00', 3),
(5, 9, 10, 1, 2, '2022-11-22', '07:00:00', 5),
(6, 11, 12, 0, 0, '2022-11-22', '13:00:00', 6),
(7, 13, 14, 4, 1, '2022-11-22', '16:00:00', 1),
(8, 15, 16, 0, 0, '2022-11-22', '10:00:00', 4),
(9, 17, 18, 7, 0, '2022-11-23', '07:00:00', 7),
(10, 19, 20, 1, 2, '2022-11-23', '10:00:00', 3),
(11, 21, 22, 1, 0, '2022-11-23', '13:00:00', 1),
(12, 23, 24, 0, 0, '2022-11-23', '16:00:00', 8),
(13, 25, 26, 2, 0, '2022-11-24', '07:00:00', 2),
(14, 27, 28, 1, 0, '2022-11-24', '10:00:00', 6),
(15, 29, 30, 3, 2, '2022-11-24', '13:00:00', 5),
(16, 31, 32, 2, 3, '2022-11-24', '16:00:00', 4),
(17, 2, 4, 1, 1, '2022-11-25', '07:00:00', 7),
(18, 1, 3, 1, 3, '2022-11-25', '10:00:00', 2),
(19, 6, 8, 0, 2, '2022-11-25', '13:00:00', 6),
(20, 5, 7, 0, 0, '2022-11-25', '16:00:00', 1),
(21, 10, 12, 0, 2, '2022-11-26', '10:00:00', 5),
(22, 9, 11, 2, 0, '2022-11-26', '16:00:00', 8),
(23, 14, 16, 1, 0, '2022-11-26', '07:00:00', 3),
(24, 13, 15, 2, 1, '2022-11-26', '13:00:00', 4),
(25, 18, 20, 0, 1, '2022-11-27', '07:00:00', 7),
(26, 17, 19, 1, 1, '2022-11-27', '10:00:00', 1),
(27, 22, 24, 2, 0, '2022-11-27', '13:00:00', 2),
(28, 21, 23, 0, 2, '2022-11-27', '16:00:00', 6),
(29, 26, 28, 3, 3, '2022-11-28', '07:00:00', 3),
(30, 25, 27, 1, 0, '2022-11-28', '10:00:00', 5),
(31, 30, 32, 3, 3, '2022-11-28', '13:00:00', 4),
(32, 29, 31, 0, 1, '2022-11-28', '16:00:00', 8),
(33, 4, 2, 2, 0, '2022-11-29', '12:00:00', 1),
(34, 3, 1, 2, 1, '2022-11-29', '12:00:00', 8),
(35, 8, 6, 0, 1, '2022-11-29', '16:00:00', 4),
(36, 7, 5, 0, 3, '2022-11-29', '16:00:00', 6),
(37, 10, 11, 1, 2, '2022-11-30', '12:00:00', 3),
(38, 12, 9, 0, 2, '2022-11-30', '12:00:00', 5),
(39, 16, 13, 1, 0, '2022-11-30', '16:00:00', 2),
(40, 14, 15, 1, 0, '2022-11-30', '16:00:00', 1),
(41, 18, 17, 2, 4, '2022-12-01', '12:00:00', 7),
(42, 20, 19, 2, 1, '2022-12-01', '12:00:00', 4),
(43, 24, 22, 1, 2, '2022-12-01', '16:00:00', 6),
(44, 23, 21, 0, 0, '2022-12-01', '16:00:00', 5),
(45, 28, 25, 2, 1, '2022-12-02', '12:00:00', 3),
(46, 26, 27, 2, 3, '2022-12-02', '12:00:00', 2),
(47, 32, 30, 2, 1, '2022-12-02', '16:00:00', 1),
(48, 31, 29, 1, 0, '2022-12-02', '16:00:00', 8),
(49, 4, 3, 3, 1, '2022-12-03', '12:00:00', 1),
(50, 9, 12, 2, 1, '2022-12-03', '16:00:00', 7),
(51, 13, 8, 3, 1, '2022-12-04', '12:00:00', 8),
(52, 23, 22, 1, 0, '2022-12-04', '16:00:00', 6),
(53, 17, 20, 1, 1, '2022-12-05', '12:00:00', 3),
(54, 25, 28, 4, 1, '2022-12-05', '16:00:00', 2),
(55, 21, 24, 6, 1, '2022-12-06', '12:00:00', 5),
(56, 29, 10, 1, 0, '2022-12-06', '16:00:00', 4),
(57, 4, 9, 2, 2, '2022-12-09', '12:00:00', 1),
(58, 13, 23, 2, 1, '2022-12-10', '12:00:00', 3),
(59, 17, 25, 1, 1, '2022-12-09', '16:00:00', 6),
(60, 21, 29, 1, 0, '2022-12-10', '16:00:00', 7),
(61, 9, 17, 3, 0, '2022-12-13', '16:00:00', 2),
(62, 13, 21, 2, 0, '2022-12-14', '16:00:00', 1),
(63, 17, 21, 2, 1, '2022-12-17', '12:00:00', 6),
(64, 9, 13, 3, 3, '2022-12-18', '12:00:00', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `selecoes`
--

CREATE TABLE `selecoes` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `grupo` varchar(1) NOT NULL,
  `tecnico` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `selecoes`
--

INSERT INTO `selecoes` (`codigo`, `nome`, `grupo`, `tecnico`) VALUES
(1, 'CATAR', 'A', 'Félix Sánchez'),
(2, 'EQUADOR', 'A', 'Gustavo Alfaro'),
(3, 'SENEGAL', 'A', 'Aliou Cissé'),
(4, 'HOLANDA', 'A', 'Louis van Gaal'),
(5, 'INGLATERRA', 'B', 'Gareth Southgate'),
(6, 'IRÃ', 'B', 'Carlos Queiroz'),
(7, 'EUA', 'B', 'Gregg Berhalter'),
(8, 'PAÍS DE GALES', 'B', 'Rob Page'),
(9, 'ARGENTINA', 'C', 'Lionel Scaloni'),
(10, 'ARÁBIA SAUDITA', 'C', 'Hervé Renard'),
(11, 'MÉXICO', 'C', 'Gerardo Martino'),
(12, 'POLÔNIA', 'C', 'Czes?aw Michniewicz'),
(13, 'FRANÇA', 'D', 'Didier Deschamps'),
(14, 'AUSTRÁLIA', 'D', 'Graham Arnold'),
(15, 'DINAMARCA', 'D', 'Kasper Hjulmand'),
(16, 'TUNÍSIA', 'D', 'Jalel Kadri'),
(17, 'ESPANHA', 'E', 'Luis Enrique'),
(18, 'COSTA RICA', 'E', 'Luis Fernando Suárez'),
(19, 'ALEMANHA', 'E', 'Hansi Flick'),
(20, 'JAPÃO', 'E', 'Hajime Moriyasu'),
(21, 'BÉLGICA', 'F', 'Roberto Martínez'),
(22, 'CANADÁ', 'F', 'John Herdman'),
(23, 'MARROCOS', 'F', 'Walid Regragui'),
(24, 'CROÁCIA', 'F', 'Zlatko Dali?'),
(25, 'BRASIL', 'G', 'Tite'),
(26, 'SÉRVIA', 'G', 'Dragan Stojkovic'),
(27, 'SUÍÇA', 'G', 'Murat Yakin'),
(28, 'CAMARÕES', 'G', 'Rigobert Song'),
(29, 'PORTUGAL', 'H', 'Fernando Santos'),
(30, 'GANA', 'H', 'Otto Addo'),
(31, 'URUGUAI', 'H', 'Diego Alonso'),
(32, 'COREIA DO SUL', 'H', 'Paulo Bento');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `estadios`
--
ALTER TABLE `estadios`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices de tabela `jogadores`
--
ALTER TABLE `jogadores`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `selecao` (`selecao`);

--
-- Índices de tabela `jogos`
--
ALTER TABLE `jogos`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `selecao_a` (`selecao_a`),
  ADD KEY `selecao_b` (`selecao_b`),
  ADD KEY `estadio` (`estadio`);

--
-- Índices de tabela `selecoes`
--
ALTER TABLE `selecoes`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `estadios`
--
ALTER TABLE `estadios`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `jogadores`
--
ALTER TABLE `jogadores`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT de tabela `jogos`
--
ALTER TABLE `jogos`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de tabela `selecoes`
--
ALTER TABLE `selecoes`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `jogadores`
--
ALTER TABLE `jogadores`
  ADD CONSTRAINT `jogadores_ibfk_1` FOREIGN KEY (`selecao`) REFERENCES `selecoes` (`codigo`);

--
-- Restrições para tabelas `jogos`
--
ALTER TABLE `jogos`
  ADD CONSTRAINT `jogos_ibfk_1` FOREIGN KEY (`selecao_a`) REFERENCES `selecoes` (`codigo`),
  ADD CONSTRAINT `jogos_ibfk_2` FOREIGN KEY (`selecao_b`) REFERENCES `selecoes` (`codigo`),
  ADD CONSTRAINT `jogos_ibfk_3` FOREIGN KEY (`estadio`) REFERENCES `estadios` (`codigo`);
COMMIT;


