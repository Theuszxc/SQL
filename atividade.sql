-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22/10/2025 às 20:51
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `atividade`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `aeroportos`
--

CREATE TABLE `aeroportos` (
  `codigo` varchar(3) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `aeroportos`
--

INSERT INTO `aeroportos` (`codigo`, `nome`, `cidade`, `pais`) VALUES
('GRU', 'Guarulhos', 'São Paulo', 'Brasil'),
('JFK', 'John F. Kennedy', 'Nova York', 'EUA'),
('LHR', 'Heathrow', 'Londres', 'Reino Unido');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidades`
--

CREATE TABLE `cidades` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `populacao` int(11) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cidades`
--

INSERT INTO `cidades` (`id`, `nome`, `populacao`, `estado`) VALUES
(1, 'São Paulo', 12000000, 'SP'),
(2, 'Salvador', 1900000, 'BA'),
(3, 'Fortaleza', 2700000, 'CE');

-- --------------------------------------------------------

--
-- Estrutura para tabela `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `data_evento` date DEFAULT NULL,
  `local` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `eventos`
--

INSERT INTO `eventos` (`id`, `nome`, `data_evento`, `local`) VALUES
(1, 'Feira de Tecnologia', '2024-08-15', 'Centro de Convenções'),
(2, 'Congresso Médico', '2024-09-10', 'Hospital Universitário'),
(3, 'Festival de Música', '2024-10-05', 'Parque Central');

-- --------------------------------------------------------

--
-- Estrutura para tabela `festas_juninas`
--

CREATE TABLE `festas_juninas` (
  `id` int(11) NOT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `publico` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `festas_juninas`
--

INSERT INTO `festas_juninas` (`id`, `cidade`, `estado`, `publico`) VALUES
(1, 'Campina Grande', 'PB', 1000000),
(2, 'Caruaru', 'PE', 1000000),
(3, 'São Luís', 'MA', 1000000);

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `nome`, `cargo`, `salario`) VALUES
(1, 'João Pereira', 'Analista', 4500.00),
(2, 'Maria Oliveira', 'Gerente', 8000.00),
(3, 'Lucas Almeida', 'Estagiário', 1500.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `planetas`
--

CREATE TABLE `planetas` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `diametro_km` int(11) DEFAULT NULL,
  `tem_anéis` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `planetas`
--

INSERT INTO `planetas` (`id`, `nome`, `diametro_km`, `tem_anéis`) VALUES
(1, 'Terra', 12742, 0),
(2, 'Saturno', 116460, 1),
(3, 'Marte', 6779, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `plantas`
--

CREATE TABLE `plantas` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `necessita_sol` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `plantas`
--

INSERT INTO `plantas` (`id`, `nome`, `tipo`, `necessita_sol`) VALUES
(1, 'Samambaia', 'Folhagem', 0),
(2, 'Rosa', 'Flor', 1),
(3, 'Samambaia', 'Suculenta', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pos_grad`
--

CREATE TABLE `pos_grad` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `duracao_meses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pos_grad`
--

INSERT INTO `pos_grad` (`id`, `nome`, `area`, `duracao_meses`) VALUES
(1, 'MBA em Gestão', 'Administração', 18),
(2, 'Mestrado em Bioquímica', 'Ciêñcias', 24),
(3, 'Especialização em Direito', 'Direito', 12);

-- --------------------------------------------------------

--
-- Estrutura para tabela `roupas`
--

CREATE TABLE `roupas` (
  `id` int(11) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `preco` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `roupas`
--

INSERT INTO `roupas` (`id`, `tipo`, `cor`, `preco`) VALUES
(1, 'Camiseta', 'Preta', 49.90),
(2, 'Calça Jeans', 'Azul', 129.90),
(3, 'Vestido', 'Vermelho', 199.90);

-- --------------------------------------------------------

--
-- Estrutura para tabela `sat_com`
--

CREATE TABLE `sat_com` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `operador` varchar(50) DEFAULT NULL,
  `cobertura` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `sat_com`
--

INSERT INTO `sat_com` (`id`, `nome`, `operador`, `cobertura`) VALUES
(1, 'Starlink-1', 'SpaceX', 'Global'),
(2, 'Intelsat 35e', 'Intelsat', 'Américas'),
(3, 'Brasilsat B4', 'Embratel', 'Brasil');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aeroportos`
--
ALTER TABLE `aeroportos`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices de tabela `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `festas_juninas`
--
ALTER TABLE `festas_juninas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `planetas`
--
ALTER TABLE `planetas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `plantas`
--
ALTER TABLE `plantas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pos_grad`
--
ALTER TABLE `pos_grad`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `roupas`
--
ALTER TABLE `roupas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sat_com`
--
ALTER TABLE `sat_com`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
