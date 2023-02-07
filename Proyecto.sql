-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 07, 2023 at 05:39 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyecto`
--

-- --------------------------------------------------------

--
-- Table structure for table `asignatura`
--

CREATE TABLE `asignatura` (
  `ID_ASIGNATURA` int(10) NOT NULL,
  `Asignatura` varchar(50) NOT NULL,
  `Fecha_Creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `Estado` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `asignatura`
--

INSERT INTO `asignatura` (`ID_ASIGNATURA`, `Asignatura`, `Fecha_Creacion`, `Estado`) VALUES
(1, 'MATEMATICA', '2021-04-03 23:08:52', 1),
(2, 'ESPAÑOL', '2021-04-03 23:09:00', 1),
(3, 'FISICA', '2021-04-03 23:09:07', 1),
(4, 'ELECTRONICA', '2021-04-03 23:10:28', 1),
(5, 'MECANICA', '2021-04-14 00:18:09', 1),
(6, 'PROGRAMACION', '2021-04-14 00:18:26', 1),
(7, 'CALCULO', '2021-04-14 00:18:57', 1),
(8, 'DESARROLLO HUMANO', '2021-04-14 00:19:05', 1),
(9, 'PRODUCCION', '2021-04-17 01:04:36', 1),
(10, 'ALGEBRA', '2021-04-22 02:32:55', 1),
(11, 'CALCULO II', '2021-04-22 02:33:26', 1),
(12, 'CALCULO III', '2021-04-22 17:42:22', 1),
(13, 'CALCULO ', '2021-04-23 16:41:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `disponibilidad_asesor`
--

CREATE TABLE `disponibilidad_asesor` (
  `ID` int(10) NOT NULL,
  `ID_USUARIO` int(10) NOT NULL,
  `Hora_Inicial` timestamp NULL DEFAULT NULL,
  `Hora_Final` timestamp NULL DEFAULT NULL,
  `Estado` int(1) NOT NULL,
  `Fecha_Creacion` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disponibilidad_asesor`
--

INSERT INTO `disponibilidad_asesor` (`ID`, `ID_USUARIO`, `Hora_Inicial`, `Hora_Final`, `Estado`, `Fecha_Creacion`) VALUES
(2, 2, '2021-04-14 01:44:00', '2021-04-15 01:44:00', 2, '2021-04-14 01:56:21'),
(3, 2, '2021-04-15 01:56:00', '2021-04-17 01:56:00', 2, '2021-04-14 01:56:13'),
(4, 4, '2021-04-21 03:11:00', '2021-04-28 03:11:00', 2, '2021-04-21 03:11:16'),
(5, 4, '2021-04-21 21:56:00', '2021-04-22 21:56:00', 2, '2021-04-21 21:56:39'),
(6, 4, '2021-04-22 22:05:00', '2021-04-22 01:05:00', 2, '2021-04-21 22:05:15'),
(7, 4, '2021-04-23 22:05:00', '2021-04-22 23:05:00', 2, '2021-04-21 22:05:29'),
(8, 4, '2021-04-25 03:05:00', '2021-04-23 04:05:00', 1, '2021-04-21 22:05:47'),
(9, 2, '2021-04-23 02:33:00', '2021-04-23 02:34:00', 2, '2021-04-22 02:34:05'),
(10, 2, '2021-05-01 02:40:00', '2021-05-01 04:40:00', 2, '2021-04-22 02:40:10'),
(11, 2, '2021-05-02 02:41:00', '2021-05-02 04:41:00', 2, '2021-04-22 02:41:13'),
(12, 34, '2021-04-24 03:46:00', '2021-04-24 04:46:00', 2, '2021-04-22 03:46:41'),
(13, 2, '2021-04-23 17:42:00', '2021-04-23 18:42:00', 2, '2021-04-22 17:43:05'),
(14, 32, '2021-04-24 14:40:00', '2021-04-24 14:40:00', 2, '2021-04-23 14:38:31'),
(15, 32, '2021-04-27 14:40:00', '2021-04-27 14:40:00', 2, '2021-04-23 14:40:18'),
(16, 32, '2021-04-27 14:40:00', '2021-04-27 14:40:00', 1, '2021-04-23 14:40:45'),
(17, 32, '2021-04-30 14:42:00', '2021-04-30 14:42:00', 1, '2021-04-23 14:43:30'),
(18, 5, '2021-04-25 14:40:00', '2021-04-25 14:40:00', 1, '2021-04-23 14:47:27'),
(19, 5, '2021-04-26 14:48:00', '2021-04-26 14:48:00', 1, '2021-04-23 14:48:43'),
(20, 35, '2021-04-29 14:52:00', '2021-04-29 14:52:00', 1, '2021-04-23 14:52:18'),
(21, 35, '2021-04-30 14:52:00', '2021-04-30 15:52:00', 1, '2021-04-23 14:53:25'),
(22, 35, '2021-05-01 14:53:00', '2021-05-01 15:53:00', 1, '2021-04-23 14:53:50'),
(23, 33, '2021-05-02 14:56:00', '2021-05-02 15:56:00', 1, '2021-04-23 14:56:22'),
(24, 33, '2021-05-03 14:56:00', '2021-05-03 15:56:00', 1, '2021-04-23 14:56:44'),
(25, 33, '2021-04-28 14:56:00', '2021-04-28 15:56:00', 1, '2021-04-23 14:56:59'),
(26, 2, '2021-05-05 16:41:00', '2021-05-05 05:41:00', 1, '2021-04-23 16:41:50');

-- --------------------------------------------------------

--
-- Table structure for table `relacion_usuario`
--

CREATE TABLE `relacion_usuario` (
  `ID_RELACION` int(10) NOT NULL,
  `ID_USUARIO` int(10) NOT NULL,
  `ID_ASIGNATURA` int(10) NOT NULL,
  `ID_ASESOR` int(10) NOT NULL,
  `Estado` int(1) NOT NULL,
  `Hora_Inicial` timestamp NULL DEFAULT NULL,
  `Hora_Final` timestamp NULL DEFAULT NULL,
  `Estado_Solicitud` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `relacion_usuario`
--

INSERT INTO `relacion_usuario` (`ID_RELACION`, `ID_USUARIO`, `ID_ASIGNATURA`, `ID_ASESOR`, `Estado`, `Hora_Inicial`, `Hora_Final`, `Estado_Solicitud`) VALUES
(31, 3, 11, 34, 2, '2021-04-24 03:46:00', '2021-04-24 04:46:00', 'ATENDIDA'),
(32, 3, 12, 2, 2, '2021-04-23 17:42:00', '2021-04-23 18:42:00', 'ATENDIDA'),
(33, 3, 2, 4, 2, '2021-04-22 22:05:00', '2021-04-22 01:05:00', 'ATENDIDA'),
(34, 3, 2, 4, 2, '2021-04-21 03:11:00', '2021-04-28 03:11:00', 'CANCELADA'),
(35, 3, 10, 4, 2, '2021-04-21 21:56:00', '2021-04-22 21:56:00', 'CANCELADA'),
(36, 3, 3, 4, 1, '2021-04-23 22:05:00', '2021-04-22 23:05:00', 'PENDIENTE');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `ID_ROL` int(10) NOT NULL,
  `Rol` varchar(50) NOT NULL,
  `Fecha_Creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `Estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`ID_ROL`, `Rol`, `Fecha_Creacion`, `Estado`) VALUES
(1, 'ADMINISTRADOR', '2021-04-03 22:47:30', 1),
(2, 'ASESOR', '2021-04-03 22:47:54', 1),
(3, 'ESTUDIANTE', '2021-04-13 04:55:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `ID_USUARIO` int(10) NOT NULL,
  `Cedula` varchar(10) NOT NULL,
  `Nombres` varchar(50) NOT NULL,
  `Apellidos` varchar(50) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Usuario` varchar(50) NOT NULL,
  `Contraseña` varchar(50) NOT NULL,
  `ID_ROL` int(10) NOT NULL,
  `Estado` int(1) NOT NULL,
  `Fecha_Creacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`ID_USUARIO`, `Cedula`, `Nombres`, `Apellidos`, `Correo`, `Telefono`, `Usuario`, `Contraseña`, `ID_ROL`, `Estado`, `Fecha_Creacion`) VALUES
(2, '1111', 'BRYAN ', 'VILLANUEVA RIVAS', 'BR@HOY.COM', '300706952', 'Bryan1234', '12345', 1, 1, '2021-04-03 23:12:08'),
(3, '222', 'PEDRO ALVERTO', 'RIVAS', 'PD@HOY.COM', '42342545', 'Pedro123', '123', 3, 1, '2021-04-03 23:12:52'),
(4, '333', 'JUAN', 'VARON', 'JN@HOY.COM', '24545245', 'Juan123', '123', 2, 1, '2021-04-03 23:16:09'),
(5, '444', 'DAGOBERTO', 'VILLA', 'PE@HOY.COM', '23213413', 'DAGOBERTO123', '123', 2, 1, '2021-04-03 23:16:54'),
(6, '2111223', 'RODOLFO', 'PEREZ', 'JN@HOY.COM', '30073', 'RODOLFO123', '123', 3, 1, '2021-04-03 23:57:25'),
(8, '45342', 'CLAUDIA', 'PEREA', 'JU@HOT.COM', '13425635', 'CLAUDIA123', '123', 3, 1, '2021-04-12 04:57:53'),
(21, '123123', 'ALVERTO', 'PEREA', 'ALVERTO@hoy.com', '123124', 'ALVERTO123', '123', 3, 1, '2021-04-13 05:19:17'),
(22, '23413421', 'LUIS', 'dddd', 'luis@hoy.com', '1230148', 'luis23', '123', 3, 1, '2021-04-13 05:33:30'),
(28, '1222323', 'JOSE MIGUEL', 'CASTRILLON', 'JOSE@HOY.COM', '340928342', 'JOSE123', '12345', 1, 1, '2021-04-16 18:42:08'),
(30, '1000', 'JULIAN', 'DE LA OZ', 'JULIAN@HOY.COM', '32425425', 'JULIAN123', '123', 3, 1, '2021-04-17 01:03:35'),
(31, '5245245', 'PEPITO', 'RIVAS', 'PEPITO@HOTMAIL.COM', '3204924', 'PEPITO123', '123', 1, 1, '2021-04-22 01:20:58'),
(32, '5675621', 'ROBERTO', 'VILLA', 'ROBERTO@HOY.COM', '309242834', 'ROBERTO123', '123', 2, 1, '2021-04-22 02:29:20'),
(33, '23441', 'MARIA', 'PEREZ', 'MARIA@HOY.COM', '43902348', 'MARIA123', '123', 2, 1, '2021-04-22 02:30:43'),
(34, '346890', 'JHOSTIN ', 'EPALZA', 'JHOSTIN@HOY.COM', '2304134', 'JHOSTIN123', '123', 2, 1, '2021-04-22 03:45:35'),
(35, '11122344', 'MATEO', 'RIVAS', 'MATEO@HOTMAIL.COM', '34902944', 'MATEO123', '123', 2, 1, '2021-04-22 17:41:55'),
(55, '2948', 'JULIO', 'PEREZ', 'JULIO@HOY.COM', '31031948', 'JULIO123', '123', 2, 1, '2021-04-23 16:40:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`ID_ASIGNATURA`);

--
-- Indexes for table `disponibilidad_asesor`
--
ALTER TABLE `disponibilidad_asesor`
  ADD KEY `ID` (`ID`),
  ADD KEY `ID_USUARIO` (`ID_USUARIO`);

--
-- Indexes for table `relacion_usuario`
--
ALTER TABLE `relacion_usuario`
  ADD KEY `ID` (`ID_RELACION`),
  ADD KEY `ID_USUARIO` (`ID_USUARIO`),
  ADD KEY `ID_ASIGNATURA` (`ID_ASIGNATURA`),
  ADD KEY `ID_ASESOR` (`ID_ASESOR`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`ID_ROL`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_USUARIO`),
  ADD KEY `Rol` (`ID_ROL`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asignatura`
--
ALTER TABLE `asignatura`
  MODIFY `ID_ASIGNATURA` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `disponibilidad_asesor`
--
ALTER TABLE `disponibilidad_asesor`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `relacion_usuario`
--
ALTER TABLE `relacion_usuario`
  MODIFY `ID_RELACION` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `ID_ROL` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_USUARIO` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `disponibilidad_asesor`
--
ALTER TABLE `disponibilidad_asesor`
  ADD CONSTRAINT `disponibilidad_asesor_ibfk_1` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuarios` (`ID_USUARIO`);

--
-- Constraints for table `relacion_usuario`
--
ALTER TABLE `relacion_usuario`
  ADD CONSTRAINT `relacion_usuario_ibfk_1` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuarios` (`ID_USUARIO`),
  ADD CONSTRAINT `relacion_usuario_ibfk_2` FOREIGN KEY (`ID_ASIGNATURA`) REFERENCES `asignatura` (`ID_ASIGNATURA`),
  ADD CONSTRAINT `relacion_usuario_ibfk_3` FOREIGN KEY (`ID_ASESOR`) REFERENCES `usuarios` (`ID_USUARIO`);

--
-- Constraints for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`ID_ROL`) REFERENCES `roles` (`ID_ROL`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
