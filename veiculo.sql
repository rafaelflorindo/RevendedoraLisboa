-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 05-Nov-2018 às 21:37
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
  `valor` decimal(10,2) NOT NULL,
  `portas` int(11) NOT NULL,
  `combustivel` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`idVeiculo`, `marca`, `modelo`, `ano`, `cor`, `valor`, `portas`, `combustivel`) VALUES
(1, '7', '7', 2017, '88', '15.78', 7, 'ooo'),
(2, '7', '7', 2017, '88', '15.78', 7, 'ooo'),
(3, 'FIAT', '147', 0000, 'verde limÃ£o', '500.00', 2, 'Gasolina'),
(4, 'FIAT', '147', 1976, 'verde limÃ£o', '500.00', 2, 'Gasolina'),
(5, 'FIAT', '147', 1976, 'verde limÃ£o', '500.00', 2, 'Gasolina'),
(6, 'FIAT', '147', 1976, 'verde limÃ£o', '500.00', 2, 'Gasolina'),
(7, 'FIAT', '147', 1976, 'verde limÃ£o', '500.00', 2, 'Gasolina'),
(8, 'GOL', 'G5', 2018, 'AZUL', '45.00', 4, 'FLEX'),
(9, 'FORD', 'Belina', 1982, 'Azul MetÃ¡lico', '3.50', 4, 'FLEX');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`idVeiculo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `idVeiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
