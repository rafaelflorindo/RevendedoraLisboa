-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 13-Nov-2018 às 01:40
-- Versão do servidor: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `revendedora`
--
CREATE DATABASE IF NOT EXISTS `revendedora` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `revendedora`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `album`
--

CREATE TABLE `album` (
  `idFoto` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `descricao` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `album`
--

INSERT INTO `album` (`idFoto`, `titulo`, `foto`, `descricao`) VALUES
(1, 'Teste TÃ­tulo', './upload/foto1.png', 'DescriÃ§Ã£o da Foto de Teste TÃ­tulo'),
(2, 'Teste TÃ­tulo', './upload/foto2.jpg', 'DescriÃ§Ã£o da Foto de Teste TÃ­tulo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `idVeiculo` int(11) NOT NULL,
  `marca` varchar(15) NOT NULL,
  `modelo` varchar(15) NOT NULL,
  `ano` year(4) NOT NULL,
  `cor` varchar(15) NOT NULL,
  `valor` decimal(10,8) NOT NULL,
  `portas` int(11) NOT NULL,
  `combustivel` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`idVeiculo`, `marca`, `modelo`, `ano`, `cor`, `valor`, `portas`, `combustivel`) VALUES
(2, 'Fiat', 'Topa Tudo', 1934, 'verde Violeta', '15.78000000', 2, 'Gasolina'),
(4, 'FIAT', '147 spazio', 1976, 'verde', '1.50000000', 2, 'Gasolina'),
(5, 'FIAT', '147', 1976, 'verde limÃ£o', '99.99999999', 2, 'Gasolina'),
(6, 'FIAT', '147', 1976, 'verde limÃ£o', '99.99999999', 2, 'Gasolina'),
(7, 'FIAT', '147', 1976, 'verde limÃ£o', '99.99999999', 2, 'Gasolina'),
(8, 'GOL', 'G5', 2019, 'AZUL', '45.00000000', 4, 'FLEX'),
(9, 'FORD', 'Belina', 1982, 'Azul MetÃ¡lico', '3.50000000', 4, 'FLEX'),
(10, 'HONDA', 'Z13', 2058, 'AZUL ANIL', '99.99999999', 7, 'MULTI FLEX'),
(11, 'Volskwagem', 'Gol', 2018, 'Vermelho', '55.00000000', 4, 'Flex');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`idFoto`);

--
-- Indexes for table `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`idVeiculo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `idFoto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `idVeiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
