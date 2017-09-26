-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 26-Set-2017 às 21:30
-- Versão do servidor: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `promo_cadastro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `unidade_id` int(11) NOT NULL,
  `curso_id` int(11) NOT NULL,
  `especializacao_id` int(11) NOT NULL,
  `profissao_id` int(11) NOT NULL,
  `divulgador_id` int(11) NOT NULL,
  `periodo` enum('M','T','N') NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(120) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `cod_voucher` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `vencimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `unidade_id`, `curso_id`, `especializacao_id`, `profissao_id`, `divulgador_id`, `periodo`, `nome`, `email`, `telefone`, `cod_voucher`, `date`, `vencimento`) VALUES
(1, 14, 4, 0, 0, 0, 'N', 'Enzo Alves Pereira', 'lyqaku@gmail.com', '29-7744-7424', 'MAUA-WR01', '2017-01-06', '2017-01-13'),
(2, 14, 3, 0, 0, 0, 'M', 'Kai Cunha Sousa', 'vutyhideqa@yahoo.com', '00-4662-8507', 'MAUA-SL02', '2017-01-06', '2017-01-13'),
(3, 14, 4, 0, 0, 0, 'M', 'Kauê Correia Souza', 'faruseseg@hotmail.com', '16-5619-3913', 'MAUA-BP03', '2017-01-06', '2017-01-13'),
(4, 14, 3, 0, 0, 0, 'M', 'Luan Pereira Santos', 'dodyho@gmail.com', '93-5918-4853', 'MAUA-EX04', '2017-01-06', '2017-01-13'),
(7, 3, 1, 0, 0, 0, 'M', 'Julia Pinto Cavalcanti', 'fabez@gmail.com', '68-8760-3380', 'MAUA-XD07', '2017-01-09', '2017-01-16'),
(8, 3, 2, 0, 0, 0, 'M', 'Leila Almeida Cardoso', 'ryvyvyvuci@gmail.com', '59-4137-0317', 'MAUA-HC08', '2017-01-09', '2017-01-16'),
(9, 3, 3, 0, 0, 0, 'M', 'Gabrielly Gomes Lima', 'geke@hotmail.com', '43-5264-1414', 'MAUA-OX09', '2017-01-09', '2017-01-16'),
(10, 3, 4, 0, 0, 0, 'T', 'Eduarda Silva Goncalves', 'xaje@yahoo.com', '69-5206-7500', 'MAUA-FY10', '2017-01-09', '2017-01-16'),
(11, 3, 4, 0, 0, 0, 'N', 'Sofia Gomes Rocha', 'mihidi@gmail.com', '13-8645-7001', 'MAUA-PK11', '2017-01-09', '2017-01-16'),
(12, 3, 4, 0, 0, 0, 'N', 'Isabella Carvalho Martins', 'romaqavapy@hotmail.com', '42-5758-2776', 'MAUA-DM12', '2017-01-09', '2017-01-16'),
(13, 3, 3, 0, 0, 0, 'N', 'Clara Ribeiro Araujo', 'fydej@yahoo.com', '77-0870-3615', 'MAUA-RU13', '2017-01-09', '2017-01-16'),
(14, 3, 1, 0, 0, 0, 'N', 'Mariana Dias Costa', 'gony@hotmail.com', '46-3416-2309', 'MAUA-IF14', '2017-01-09', '2017-01-16'),
(15, 3, 1, 0, 0, 0, 'M', 'Julia Pinto Cavalcanti', 'pygy@yahoo.com', '45-8486-8262', 'MAUA-LP15', '2017-01-09', '2017-01-16'),
(16, 3, 2, 0, 0, 0, 'M', 'Marisa Rocha Azevedo', 'fuwamon@yahoo.com', '12-5689-8860', 'MAUA-VI16', '2017-01-09', '2017-01-16'),
(17, 3, 3, 0, 0, 0, 'M', 'Clara Ribeiro Araujo', 'xujylucoxe@gmail.com', '30-6312-5301', 'MAUA-BT17', '2017-01-09', '2017-01-16'),
(18, 3, 4, 0, 0, 0, 'N', 'Luan Pereira Santos', 'kysugygiq@hotmail.com', '51-8699-5979', 'MAUA-NW18', '2017-01-09', '2017-01-16'),
(19, 3, 2, 0, 0, 0, 'T', 'Carlos Araujo Sousa', 'luledin@gmail.com', '08-9573-2567', 'MAUA-FQ19', '2017-01-09', '2017-01-16'),
(20, 3, 4, 0, 0, 0, 'N', 'Letícia Ferreira Alves', 'hoso@hotmail.com', '31-9858-4841', 'MAUA-MJ20', '2017-01-09', '2017-01-16'),
(21, 3, 3, 0, 0, 0, 'N', 'Kauê Correia Souza', 'jopuhujeb@gmail.com', '19-7070-0644', 'MAUA-VM21', '2017-01-09', '2017-01-16'),
(22, 3, 1, 0, 0, 0, 'M', 'Enzo Alves Pereira', 'qygasep@yahoo.com', '08-2041-4575', 'MAUA-QS22', '2017-01-09', '2017-01-16'),
(23, 3, 4, 0, 0, 0, 'T', 'Murilo Cardoso Alves', 'wyjyvi@hotmail.com', '45-7708-0747', 'MAUA-KD23', '2017-01-09', '2017-01-16'),
(24, 3, 1, 0, 0, 0, 'M', 'Carlos Araujo Sousa', 'sugily@gmail.com', '66-9720-4599', 'MAUA-WG24', '2017-01-09', '2017-01-16'),
(25, 3, 1, 0, 0, 0, 'T', 'Luan Pereira Santos', 'sivipa@gmail.com', '87-9988-8330', 'MAUA-WY25', '2017-01-09', '2017-01-16'),
(26, 3, 4, 0, 0, 0, 'N', 'Letícia Ferreira Alves', 'nopomem@gmail.com', '09-0741-9902', 'MAUA-YL26', '2017-01-09', '2017-01-16'),
(27, 3, 3, 0, 0, 0, 'M', 'Carolina Rocha Castro', 'naparyquny@hotmail.com', '94-1327-0465', 'MAUA-ND27', '2017-01-09', '2017-01-16'),
(28, 3, 1, 0, 0, 0, 'N', 'Sofia Gomes Rocha', 'qanice@yahoo.com', '23-2152-4665', 'MAUA-RJ28', '2017-01-09', '2017-01-16'),
(29, 3, 4, 0, 0, 0, 'T', 'Kauê Correia Souza', 'xavahyceq@gmail.com', '49-4571-3068', 'MAUA-CA29', '2017-01-09', '2017-01-16'),
(30, 3, 3, 0, 0, 0, 'T', 'Isabella Carvalho Martins', 'waky@gmail.com', '92-6075-9042', 'MAUA-IZ30', '2017-01-09', '2017-01-16'),
(31, 3, 2, 0, 0, 0, 'M', 'Beatrice Dias Araujo', 'fogelymu@hotmail.com', '60-1601-0775', 'MAUA-PA31', '2017-01-09', '2017-01-16'),
(32, 3, 2, 0, 0, 0, 'M', 'Vitória Cunha Correia', 'vepy@gmail.com', '26-9632-1636', 'MAUA-PM32', '2017-01-09', '2017-01-16'),
(33, 3, 3, 0, 0, 0, 'T', 'Vitória Cunha Correia', 'vfvcepy@gmail.com', '26-9632-1636', 'MAUA-UT33', '2017-01-09', '2017-01-16'),
(34, 3, 2, 0, 0, 0, 'M', 'Eduarda Silva Goncalves', 'dirujoma@hotmail.com', '63-8856-8211', 'MAUA-MT34', '2017-01-09', '2017-01-16'),
(35, 3, 4, 0, 0, 0, 'N', 'Luiz Ferreira Carvalho', 'gazez@hotmail.com', '26-1531-4864', 'MAUA-YZ35', '2017-01-09', '2017-01-16'),
(36, 3, 2, 0, 0, 0, 'M', 'Gabrielly Gomes Lima', 'bezawuv@yahoo.com', '19-1011-7165', 'MAUA-VZ36', '2017-01-09', '2017-01-16'),
(37, 3, 4, 0, 0, 0, 'N', 'Leila Almeida Cardoso', 'kagepadi@gmail.com', '78-0888-2233', 'MAUA-GG37', '2017-01-09', '2017-01-16'),
(38, 3, 1, 0, 0, 0, 'T', 'Julia Pinto Cavalcanti', 'wupywoso@hotmail.com', '45-9078-5292', 'MAUA-NI38', '2017-01-09', '2017-01-16'),
(39, 14, 3, 0, 0, 0, 'T', 'Luan Pereira Santos', 'tyburazyw@yahoo.com', '55-5112-1213', 'MAUA-BV39', '2017-01-10', '2017-01-17'),
(40, 14, 3, 0, 0, 0, 'T', 'Luan Pereira Santos', 'sdcomputadores@gmail.com', '55-5112-1213', 'MAUA-BV40', '2017-01-10', '2017-01-17'),
(41, 14, 1, 0, 0, 0, 'M', 'Luan Pereira Santos', 'sdcomputadores@gmail.com', '55-5112-1213', 'MAUA-XH41', '2017-01-10', '2017-01-17'),
(42, 14, 1, 0, 0, 0, 'M', 'Luan Pereira Santos', 'sdcomputadores@gmail.com', '55-5112-1213', 'MAUA-WC42', '2017-01-10', '2017-01-17'),
(43, 14, 1, 0, 0, 0, 'M', 'Luan Pereira Santos', 'sdcomputadores@gmail.com', '55-5112-1213', 'MAUA-ON43', '2017-01-10', '2017-01-17'),
(44, 14, 1, 0, 0, 0, 'M', 'Luan Pereira Santos', 'sdcomputadores@gmail.com', '55-5112-1213', 'MAUA-WU44', '2017-01-10', '2017-01-17'),
(45, 14, 1, 0, 0, 0, 'M', 'Luan Pereira Santos', 'sdcomputadores@gmail.com', '55-5112-1213', 'MAUA-TZ45', '2017-01-10', '2017-01-17'),
(46, 14, 3, 0, 0, 0, 'T', 'Maria silva', 'sdcomputadores@gmail.com', '14-2600-8724', 'MAUA-SR46', '2017-01-10', '2017-01-17'),
(47, 14, 3, 0, 0, 0, 'T', 'Maria silva', 'sdcomputadores@gmail.com', '14-2600-8724', 'MAUA-LV47', '2017-01-10', '2017-01-17'),
(48, 3, 4, 0, 0, 0, 'M', 'Sofia Gomes Rocha', 'xobobesa@gmail.com', '01-5714-2270', 'MAUA-TY48', '2017-01-20', '2017-01-27'),
(49, 3, 2, 0, 0, 0, 'T', 'Luís Ferreira Fernandes', 'hebijihari@gmail.com', '49-7836-9932', 'MAUA-IH49', '2017-01-20', '2017-01-27'),
(50, 3, 3, 0, 0, 0, 'M', 'Nicolas Pereira Ribeiro', 'pebyha@hotmail.com', '27-6859-0917', 'MAUA-IL50', '2017-01-20', '2017-01-27'),
(51, 3, 3, 0, 0, 0, 'N', 'Letícia Ferreira Alves', 'lafyhatav@gmail.com', '53-6509-9070', 'MAUA-EU51', '2017-01-20', '2017-01-27'),
(52, 3, 2, 0, 0, 0, 'M', 'Luís Ferreira Fernandes', 'tehofolit@gmail.com', '28-4956-4348', 'MAUA-LH52', '2017-01-20', '2017-01-27'),
(53, 3, 3, 0, 0, 0, 'T', 'Sofia Gomes Rocha', 'tiqyc@gmail.com', '96-8950-0158', 'MAUA-IV53', '2017-01-20', '2017-01-27'),
(54, 6, 2, 0, 0, 0, 'T', 'Eduarda Silva Goncalves', 'mowuguzum@gmail.com', '88-2470-3841', 'MAUA-WM54', '2017-05-02', '2017-05-09'),
(56, 1, 1, 0, 0, 0, 'M', 'Luís Ferreira Fernandes', 'wizevaf@gmail.com', '35-0182-9501', 'ANALIA-YM56', '2017-05-02', '2017-05-09'),
(57, 1, 2, 0, 0, 0, 'M', 'Kai Cunha Sousa', 'gyrope@yahoo.com', '36-9160-9408', 'ANALIA-HK57', '2017-05-03', '2017-05-10'),
(58, 1, 1, 0, 0, 1, 'M', 'Matilde Ribeiro Martins', 'jajol@yahoo.com', '86-5565-5192', 'ANALIA-EX58', '2017-05-03', '2017-05-10'),
(59, 15, 1, 0, 0, 0, 'M', 'Sofia Gomes Rocha', 'rimyfi@yahoo.com', '54-6466-8456', 'MOGI-RR59', '2017-05-03', '2017-05-10'),
(60, 15, 3, 0, 0, 1, 'M', 'Carlos Araujo Sousa', 'sygyzi@hotmail.com', '19-5536-4767', 'MOGI-ZF60', '2017-05-03', '2017-05-10'),
(61, 15, 4, 0, 0, 1, 'N', 'Enzo Alves Pereira', 'fujywyfo@yahoo.com', '74-5668-6540', 'MOGI-SV61', '2017-05-03', '2017-05-10'),
(74, 1, 4, 0, 0, 1, 'T', 'Marisa Rocha Azevedo[teste 17:18]', 'thiago.moreira@evolutimeead.net.br', '98-3027-3412', 'ANALIA-KM74', '2017-05-04', '2017-05-11'),
(75, 21, 4, 0, 0, 1, 'M', 'Mariana Dias Costa', 'adriano.costa@grupolaunic.com.br', '36-5338-9158', 'SMIGUEL-ZP75', '2017-05-05', '2017-05-12'),
(77, 14, 8, 0, 0, 0, 'T', 'Kai Cunha Sousa teste', 'fyxivifypu@yahoo.com', '61-6818-8206', 'MAUA-VN77', '2017-09-15', '2017-09-22'),
(78, 14, 3, 11, 3, 0, 'M', 'Letícia Ferreira Alves teste', 'culutufim@yahoo.com', '16-4252-6183', 'MAUA-ZG78', '2017-09-15', '2017-09-22'),
(80, 6, 3, 7, 1, 1, 'T', 'Nicolas Pereira Ribeiro', 'sypihe@yahoo.com', '21-5128-5367', 'DIADE-LN80', '2017-09-15', '2017-09-22'),
(81, 6, 14, 6, 2, 1, 'N', 'Vitor Almeida Dias', 'luwe@yahoo.com', '32-0292-1071', 'DIADE-PG81', '2017-09-15', '2017-09-22'),
(82, 6, 2, 5, 1, 1, 'M', 'Leila Almeida Cardoso', 'habimufeku@yahoo.com', '26-8847-9927', 'DIADE-AE82', '2017-09-15', '2017-09-22'),
(83, 6, 2, 7, 2, 1, 'T', 'Kauê Correia Souza', 'terycumeko@gmail.com', '28-1987-3214', 'DIADE-CC83', '2017-09-15', '2017-09-22'),
(84, 6, 2, 7, 2, 1, 'T', 'Kauê Correia Souza', 'terycussmeko@gmail.com', '28-1987-3214', 'DIADE-AD84', '2017-09-15', '2017-09-22'),
(85, 6, 3, 5, 2, 1, 'N', 'Julia Pinto Cavalcanti', 'tamefil@hotmail.com', '41-3946-4144', 'DIADE-MN85', '2017-09-15', '2017-09-22'),
(86, 6, 2, 9, 3, 1, 'T', 'Eduarda Silva Goncalves', 'xifiri@yahoo.com', '68-6547-2696', 'DIADE-LU86', '2017-09-15', '2017-09-22'),
(87, 14, 14, 11, 1, 0, 'T', 'Luiz Ferreira Carvalho', 'nefu@yahoo.com', '69-0149-1594', 'MAUA-BH87', '2017-09-15', '2017-09-22'),
(88, 14, 3, 11, 1, 0, 'N', 'Kauê Correia Souza', 'jugebowin@yahoo.com', '18-4188-5271', 'MAUA-AG88', '2017-09-15', '2017-09-22'),
(90, 14, 14, 5, 1, 0, 'M', 'Vitor Almeida Dias', 'fokuvap@gmail.com', '65-3893-0898', 'MAUA-GQ90', '2017-09-15', '2017-09-22'),
(91, 14, 2, 9, 3, 0, 'T', 'Luiz Ferreira Carvalho', 'xabahedegi@gmail.com', '18-8536-9861', 'MAUA-ZA91', '2017-09-15', '2017-09-22'),
(92, 13, 2, 9, 2, 0, 'M', 'Isabella Carvalho Martins', 'hemajaqedy@yahoo.com', '34-9707-2964', 'LAPA-WB92', '2017-09-15', '2017-09-22'),
(93, 13, 2, 5, 1, 0, 'M', 'Italo Mariano', 'italomariano@gmail.com', '11 5844 4444', 'LAPA-WL93', '2017-09-15', '2017-09-22'),
(94, 13, 2, 13, 1, 0, 'T', 'Leila Almeida Cardoso', 'pacicek@gmail.com', '72-0617-6315', 'LAPA-XZ94', '2017-09-18', '2017-09-25'),
(95, 13, 2, 13, 2, 0, 'N', 'Vitória Cunha Correia', 'zufimijel@yahoo.com', '22-2754-5056', 'LAPA-GP95', '2017-09-19', '2017-09-26'),
(96, 13, 4, 8, 2, 0, 'M', 'Eduarda Silva Goncalves', 'nifyselom@gmail.com', '81-3461-7680', 'LAPA-VM96', '2017-09-19', '2017-09-26'),
(97, 13, 3, 7, 2, 0, 'N', 'Sofia Gomes Rocha', 'warapiwoz@gmail.com', '20-3298-3897', 'LAPA-YK97', '2017-09-19', '2017-09-26'),
(98, 13, 3, 6, 1, 0, 'M', 'Beatrice Dias Araujo', 'sunuzofohe@gmail.com', '75-8967-6231', 'LAPA-NH98', '2017-09-19', '2017-09-26'),
(99, 13, 4, 6, 3, 0, 'M', 'Vitor Almeida Dias', 'pure@gmail.com', '50-2996-3309', 'LAPA-KR99', '2017-09-19', '2017-09-26'),
(100, 3, 4, 11, 3, 0, 'T', 'Gabrielly Gomes Lima', 'xiwy@yahoo.com', '16-9194-0775', 'BUTAN-IF100', '2017-09-19', '2017-09-26'),
(101, 3, 14, 13, 2, 0, 'M', 'Nicolash Cardoso Barros', 'xacusumaqa@yahoo.com', '12-6011-7135', 'BUTAN-GY101', '2017-09-19', '2017-09-26');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `tipo` enum('especializacao','padrao') NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`id`, `tipo`, `status`, `nome`) VALUES
(1, 'padrao', 0, 'Computação gráfica'),
(2, 'padrao', 1, 'Hardware'),
(3, 'padrao', 1, 'Informática'),
(4, 'padrao', 1, 'Inglês'),
(5, 'especializacao', 1, 'Informática Inicial'),
(6, 'especializacao', 1, 'Inglês Inicial'),
(7, 'especializacao', 1, 'Espanhol Inicial'),
(8, 'especializacao', 1, 'Comércio e Serviços'),
(9, 'especializacao', 1, 'Marketing e Vendas'),
(10, 'especializacao', 1, 'Recursos Humanos'),
(11, 'especializacao', 1, 'Contabilidade'),
(12, 'especializacao', 1, 'Criação de Games'),
(13, 'especializacao', 1, 'Design de Joias e Semijoias'),
(14, 'padrao', 1, 'Espanhol');

-- --------------------------------------------------------

--
-- Estrutura da tabela `divulgadores`
--

CREATE TABLE `divulgadores` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `email` varchar(145) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `divulgadores`
--

INSERT INTO `divulgadores` (`id`, `nome`, `email`) VALUES
(1, 'adriano', 'driftsdesign@uol.com.br'),
(2, 'Italo', 'Italo.costa@grupolaunic.com.br'),
(3, 'Thiago', 'thiago.costa@grupolaunic.com.br'),
(4, 'google', 'thiago@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fields`
--

CREATE TABLE `fields` (
  `id` int(11) NOT NULL,
  `indice` varchar(20) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `tipo` enum('checkbox','input','radio','select') NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `profissoes`
--

CREATE TABLE `profissoes` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `profissoes`
--

INSERT INTO `profissoes` (`id`, `status`, `nome`) VALUES
(1, 1, 'Informática para Concursos Públicos'),
(2, 1, 'Rotinas Administrativas'),
(3, 1, 'Consertos de Celular');

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidades`
--

CREATE TABLE `unidades` (
  `id` int(11) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `sigla` varchar(45) DEFAULT NULL,
  `nome` varchar(120) NOT NULL,
  `email` varchar(140) NOT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `cep` varchar(45) DEFAULT NULL,
  `endereco` varchar(145) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `unidades`
--

INSERT INTO `unidades` (`id`, `alias`, `sigla`, `nome`, `email`, `telefone`, `cep`, `endereco`, `bairro`, `cidade`, `estado`) VALUES
(1, 'analia-franco', 'ANALIA', 'Anália Franco', 'diretoria.analiafranco@evolutime.net.br', '(11) 2154-1403', '03337-000', 'R. Eleonora Cintra, 46', 'Jd. Anália Franco', 'São Paulo', 'SP'),
(2, 'bangu', 'BANGU', 'Bangu', 'diretoria.bangu@evolutime.net.br', '(21) 3117-0710 / 3148-7116', '21810-051', 'R. 12 de Fevereiro, 191', 'Bangu', 'Rio de Janeiro', 'RJ'),
(3, 'butanta', 'BUTAN', 'Butantã', 'diretoria.butanta@evolutime.net.br', '(11) 3731-8675 / 2768-4020 / 2872-4020', '05359-000', 'Av. Nossa Sra. da Assunção, 71', 'Jd. Bonfiglioli', 'São Paulo', 'SP'),
(4, 'capao-redondo', 'CAPAO', 'Capão Redondo', 'adm.capaoredondo@evolutime.net.br', '(11) 5511-6061 | (11) 5513-0758', '05835-005', 'Estr. de Itapecerica, 3897', 'Vila Maracanã', 'São Paulo', 'SP'),
(5, 'cotia', 'COTIA', 'Cotia', 'diretoria.cotia@evolutime.net.br', '(11) 4616-0026', '06717-160', 'R. Benedito Lemos Leite, 252', 'Vila Monte Serrat', 'Cotia', 'SP'),
(6, 'diadema', 'DIADE', 'Diadema', 'diretoria.diadema@evolutime.net.br', '(11) 4056-3055 / 4043-3733', '09911-010', 'R. Arthur Sampaio Moreira, 46', 'Centro', 'Diadema', 'SP'),
(7, 'guarulhos', 'GUAR', 'Guarulhos', 'diretoria.guarulhos@evolutime.net.br', '(11) 2408-6924 | (11) 2408-3151', '07115-000', 'Av. Salgado Filho, 274', 'Centro', 'Guarulhos', 'SP'),
(8, 'interlagos', 'INTER', 'Interlagos', 'adm.interlagos@evolutime.net.br', '(11) 5635-0770', '04661-200', 'Av. Interlagos, 3327 - Sobre loja 06', 'Interlagos', 'São Paulo', 'SP'),
(9, 'ipiranga', 'IPIRAN', 'Ipiranga', 'adm.ipiranga@evolutime.net.br', '(11) 2865-1786 / 2762-1422 / 2761-8043', '04207-001', 'R. Lino Coutinho, 1164/1174', 'Ipiranga', 'São Paulo', 'SP'),
(10, 'itaquera', 'ITAQUE', 'Itaquera', 'diretoria.itaquera@evolutime.net.br', '(11) 2074-2336 / 2079-2818', '08210-200', 'R. Flores do Piauí, 149', 'Itaquera', 'São Paulo', 'SP'),
(11, 'jabaquara', 'JABAQU', 'Jabaquara', 'diretoria.jabaquara@evolutime.net.br', '(11) 5011-9413 / 5011-7735', '04308-001', 'Av. Eng. Armando Arruda Pereira, 1696', 'Jabaquara', 'São Paulo', 'SP'),
(12, 'jundiai', 'JUNDIA', 'Jundiaí', 'diretoria.jundiai@evolutime.net.br', '(11) 2709-2779', '13201-001', 'Rua Vigário João José Rodrigues, 1034', 'Centro', 'Jundiaí', 'SP'),
(13, 'lapa', 'LAPA', 'Lapa', 'diretoria.lapa@evolutime.net.br', '(11) 3644-9369 / 3837-0236', '05050-000', 'Rua Monteiro de Melo, 356', 'Lapa', 'São Paulo', 'SP'),
(14, 'maua', 'MAUA', 'Mauá', 'diretoria.maua@evolutime.net.br', '(11) 4543-0810', '09310-180', 'Avenida Doutor Getúlio Vargas, 190 - RP1 - Mauá/SP', 'RP1', 'Mauá', 'SP'),
(15, 'mogi-das-cruzes', 'MOGI', 'Mogi das Cruzes', 'diretoria.mogidascruzes@evolutime.net.br', '(11) 4796-5504 / 4726-3897', '08710-610', 'Rua Santana, 399', 'Centro', 'Mogi das Cruzes', 'SP'),
(16, 'osasco', 'OSASCO', 'Osasco', 'diretoria.osasco@evolutime.net.br', '(11) 3699-0111 / 4620-2911', '06090-020', 'Av. dos Autonomistas, 2725', 'Centro', 'Osasco', 'SP'),
(17, 'penha', 'PENHA', 'Penha', 'adm.penha@evolutime.net.br', '(11) 2893-3965', '03637-000', 'Rua Padre João, 240', 'Penha', 'São Paulo', 'SP'),
(18, 'praia-grande', 'PGRAND', 'Praia Grande', 'diretoria.praiagrande@evolutime.net.br', '(13) 3491-4077', '11701-190', 'R. Jaú, 1103', 'Boqueirão', 'Praia Grande', 'SP'),
(19, 'santo-amaro', 'SAMARO', 'Santo Amaro', 'diretoria.santoamaro@evolutime.net.br', '(11) 3453-6743 / 5524-0204', '04701-100', 'Av. Santo Amaro, 6651', 'Sto. Amaro', 'São Paulo', 'SP'),
(20, 'santos', 'SANTOS', 'Santos', 'diretoria.santos@evolutime.net.br', '(13) 3321-9124 / 3289-3816', '11055-200', 'R. Dr. Galeão Carvalhal, 54', 'Gonzaga', 'Santos', 'SP'),
(21, 'sao-miguel-paulista', 'SMIGUEL', 'São Miguel Paulista', 'diretoria.smpaulista@evolutime.net.br', '(11) 2058-0468 / 2956-7892', '08070-000', 'Av. São Miguel, 9610', 'Miguel Paulista', 'São Paulo', 'SP'),
(22, 'sao-vicente', 'SVICEN', 'São Vicente', 'diretoria.saovicente@evolutime.net.br', '(13) 3379-5595', '11320-000', 'Av. Presidente Wilson, 754', 'Centro', 'São Vicente', 'SP'),
(23, 'taboao-da-serra', 'TABOAO', 'Taboão da Serra', 'diretoria.taboaodaserra@evolutime.net.br', '(11) 4135-3099 / 4135-3304', '06754-010', 'R. Thereza Maria Luizetto, 254', 'Vila Santa Luzia', 'Taboão da Serra', 'SP'),
(24, 'vila-maria', 'VMARIA', 'Vila Maria', 'diretoria.vilamaria@evolutime.net.br', '(11) 4328-8944', '02113-010', 'Av. Guilherme Cotching, 742', 'Vila Maria', 'São Paulo', 'SP'),
(25, 'interior-e-outros-estados', 'INTOUT', 'Interior e Outros Estados', 'sac@evolutimeead.net.br', NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'portugal', 'PORTU', 'Portugal', 'vendas.lisboa@microcamp.com.pt', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unidade_id` (`unidade_id`),
  ADD KEY `curso_id` (`curso_id`),
  ADD KEY `profissao_id` (`profissao_id`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divulgadores`
--
ALTER TABLE `divulgadores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profissoes`
--
ALTER TABLE `profissoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unidades`
--
ALTER TABLE `unidades`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `divulgadores`
--
ALTER TABLE `divulgadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profissoes`
--
ALTER TABLE `profissoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `unidades`
--
ALTER TABLE `unidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `id_curso` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_unidade` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
