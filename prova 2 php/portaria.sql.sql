-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/10/2023 às 02:34
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `portaria`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `registro`
--

CREATE TABLE `registro` (
  `id` int(11) NOT NULL,
  `data_hora` datetime NOT NULL,
  `veiculos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `registro`
--

INSERT INTO `registro` (`id`, `data_hora`, `veiculos_id`) VALUES
(1, '2023-10-16 19:00:32', 1),
(2, '2023-10-16 23:10:31', 1),
(3, '2023-10-16 19:01:00', 2),
(4, '2023-10-16 19:01:10', 3),
(5, '2023-10-16 19:01:15', 4),
(6, '2023-10-16 19:01:25', 5),
(7, '2023-10-16 22:10:32', 2),
(8, '2023-10-16 22:14:32', 3),
(9, '2023-10-16 22:20:52', 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculos`
--

CREATE TABLE `veiculos` (
  `id` int(11) NOT NULL,
  `aluno` varchar(50) NOT NULL,
  `placa` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `veiculos`
--

INSERT INTO `veiculos` (`id`, `aluno`, `placa`) VALUES
(1, 'Catarina Santos', 'JTF-0L95'),
(2, 'Pietro Porto', 'YFE-8L59'),
(3, 'Joana Jesus', 'KJP-7M28'),
(4, 'Letícia Rocha', 'HEM-9V76'),
(5, 'Alícia Freitas', 'UYY-9C19'),
(6, 'Catarina Santos', 'JTF-0L95'),
(7, 'Pietro Porto', 'YFE-8L59'),
(8, 'Joana Jesus', 'KJP-7M28'),
(9, 'Letícia Rocha', 'HEM-9V76'),
(10, 'Alícia Freitas', 'UYY-9C19');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `veiculos`
--
ALTER TABLE `veiculos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `registro`
--
ALTER TABLE `registro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `veiculos`
--
ALTER TABLE `veiculos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
