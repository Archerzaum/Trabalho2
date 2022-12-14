-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Out-2022 às 17:45
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `logistica`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(9) NOT NULL,
  `cnpj_cpf` varchar(14) COLLATE utf8_bin NOT NULL,
  `nome` varchar(90) COLLATE utf8_bin NOT NULL,
  `sobrenome` varchar(90) COLLATE utf8_bin NOT NULL,
  `cep` varchar(10) COLLATE utf8_bin NOT NULL,
  `estado` varchar(2) COLLATE utf8_bin NOT NULL,
  `cidade` varchar(90) COLLATE utf8_bin NOT NULL,
  `bairro` varchar(90) COLLATE utf8_bin NOT NULL,
  `rua` varchar(90) COLLATE utf8_bin NOT NULL,
  `numero` int(5) NOT NULL,
  `complemento` varchar(20) COLLATE utf8_bin NOT NULL,
  `senha` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `cnpj_cpf`, `nome`, `sobrenome`, `cep`, `estado`, `cidade`, `bairro`, `rua`, `numero`, `complemento`, `senha`) VALUES
(40, '999.999.999-99', 'LUCAS', 'FRANCO', '88136-515', 'SC', 'Palhoça', 'Xing Xong', 'São Miguel', 385, '385', '12345678'),
(500, '123.124.542-59', 'Pedrinho', 'Matador', '50205-504', 'RJ', 'Anitápolis', 'MSAODmo', 'Rua do crime', 666, '999', 'pedro1234');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque`
--

CREATE TABLE `estoque` (
  `id` int(9) NOT NULL,
  `nome_produto` varchar(90) COLLATE utf8_bin NOT NULL,
  `status` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `estoque`
--

INSERT INTO `estoque` (`id`, `nome_produto`, `status`) VALUES
(1, 'MOMO', ''),
(6, 'Xing Xong', 'disponivel'),
(900, 'Teste', 'disponivel'),
(5011, 'GMOD', ''),
(5345, 'asdasd', 'disponivel');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` int(10) NOT NULL,
  `cpf` varchar(14) COLLATE utf8_bin NOT NULL,
  `nome` varchar(90) COLLATE utf8_bin NOT NULL,
  `senha` varchar(155) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `cpf`, `nome`, `senha`) VALUES
(1, '400.299.125-95', 'Felipe Neto Da Silva Pereira', '1234');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `id_cliente` int(9) NOT NULL,
  `preco` int(9) NOT NULL,
  `id_produtos` varchar(90) COLLATE utf8_bin NOT NULL,
  `local_entrega` varchar(120) COLLATE utf8_bin NOT NULL,
  `entrega` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `cnpj_cpf` (`cnpj_cpf`);

--
-- Índices para tabela `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT de tabela `estoque`
--
ALTER TABLE `estoque`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5346;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
