-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 02, 2019 at 07:43 PM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `nutriologo`
--

-- --------------------------------------------------------

--
-- Table structure for table `comidas_dieta`
--

CREATE TABLE `comidas_dieta` (
  `id` int(11) NOT NULL,
  `id_dieta` int(11) NOT NULL,
  `id_dia_semana` int(11) NOT NULL,
  `id_tiempo_alimentacion` int(11) NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comidas_dieta`
--

INSERT INTO `comidas_dieta` (`id`, `id_dieta`, `id_dia_semana`, `id_tiempo_alimentacion`, `titulo`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 'iuytiuyt', 'iuyhtity', '2019-05-03 02:38:18', '2019-05-03 02:38:18'),
(2, 2, 1, 2, 'iuhytiuyt', 'iuhtiuyht', '2019-05-03 02:38:18', '2019-05-03 02:38:18'),
(3, 2, 1, 3, 'iuhtiuyt', 'iuythiuty', '2019-05-03 02:38:18', '2019-05-03 02:38:18'),
(4, 2, 2, 1, 'asdf', 'adf', '2019-05-03 02:38:18', '2019-05-03 02:38:18'),
(5, 2, 2, 2, 'kjhg', 'kjhg', '2019-05-03 02:38:18', '2019-05-03 02:38:18'),
(6, 2, 2, 3, 'kjhg', 'kjhg', '2019-05-03 02:38:18', '2019-05-03 02:38:18'),
(7, 2, 3, 1, 'kjhg', 'lkjh', '2019-05-03 02:38:18', '2019-05-03 02:38:18'),
(8, 2, 3, 2, 'lkjh', 'ghjk', '2019-05-03 02:38:18', '2019-05-03 02:38:18'),
(9, 2, 3, 3, 'khjg', 'kjhg', '2019-05-03 02:38:18', '2019-05-03 02:38:18'),
(10, 2, 4, 1, 'ghjk', 'kjhggjkh', '2019-05-03 02:38:18', '2019-05-03 02:38:18'),
(11, 2, 4, 2, 'gjkh', 'kjhg', '2019-05-03 02:38:18', '2019-05-03 02:38:18'),
(12, 2, 4, 3, 'kjhglg', 'oiuytgiuyt8', '2019-05-03 02:38:18', '2019-05-03 02:38:18'),
(13, 2, 5, 1, 'iuytiuy', 'iuyhtiuty', '2019-05-03 02:38:18', '2019-05-03 02:38:18'),
(14, 2, 5, 2, 'iuhtiuyhti6tb', 'iuytiuytbi', '2019-05-03 02:38:18', '2019-05-03 02:38:18'),
(15, 2, 5, 3, 'iuygtiuyth', 'iuyti', '2019-05-03 02:38:18', '2019-05-03 02:38:18'),
(16, 2, 6, 1, 'ibuyg', 'khjbg', '2019-05-03 02:38:18', '2019-05-03 02:38:18'),
(17, 2, 6, 2, 'kjhg', 'iyutbiu', '2019-05-03 02:38:18', '2019-05-03 02:38:18'),
(18, 2, 6, 3, 'iubytiytu', 'ihyi', '2019-05-03 02:38:18', '2019-05-03 02:38:18'),
(19, 2, 7, 1, 'Ihyti', 'ihyiuty', '2019-05-03 02:38:18', '2019-05-03 02:38:18'),
(20, 2, 7, 2, 'ihyti', 'jityiyt', '2019-05-03 02:38:18', '2019-05-03 02:38:18'),
(21, 2, 7, 3, 'iuytiuyt', 'iuytiuytbi', '2019-05-03 02:38:18', '2019-05-03 02:38:18');

-- --------------------------------------------------------

--
-- Table structure for table `dias_semana`
--

CREATE TABLE `dias_semana` (
  `id` int(11) NOT NULL,
  `nombre` varchar(12) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dias_semana`
--

INSERT INTO `dias_semana` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Domingo', '2019-05-02 19:13:09', '2019-05-02 19:13:09'),
(2, 'Lunes', '2019-05-02 19:13:09', '2019-05-02 19:13:09'),
(3, 'Martes', '2019-05-02 19:13:09', '2019-05-02 19:13:09'),
(4, 'Miércoles', '2019-05-02 19:13:09', '2019-05-02 19:13:09'),
(5, 'Jueves', '2019-05-02 19:13:09', '2019-05-02 19:13:09'),
(6, 'Viernes', '2019-05-02 19:13:09', '2019-05-02 19:13:09'),
(7, 'Sábado', '2019-05-02 19:13:09', '2019-05-02 19:13:09');

-- --------------------------------------------------------

--
-- Table structure for table `dietas`
--

CREATE TABLE `dietas` (
  `id` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `inicio_semana` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dietas`
--

INSERT INTO `dietas` (`id`, `id_paciente`, `inicio_semana`, `created_at`, `updated_at`) VALUES
(2, 6, '2019-05-06', '2019-05-03 02:38:18', '2019-05-03 02:38:18');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`, `created_at`, `updated_at`) VALUES
(1, '2014_10_12_000000_create_users_table', 1, '2019-05-02 19:13:10', '2019-05-02 19:13:10'),
(2, '2014_10_12_100000_create_password_resets_table', 1, '2019-05-02 19:13:10', '2019-05-02 19:13:10');

-- --------------------------------------------------------

--
-- Table structure for table `pacientes`
--

CREATE TABLE `pacientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `nacimiento` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pacientes`
--

INSERT INTO `pacientes` (`id`, `nombre`, `apellidos`, `nacimiento`, `created_at`, `updated_at`) VALUES
(6, 'Iram', 'Garcia', '1996-05-27', '2019-04-02 08:11:11', '2019-04-02 08:11:11');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tiempos_alimentacion`
--

CREATE TABLE `tiempos_alimentacion` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(12) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tiempos_alimentacion`
--

INSERT INTO `tiempos_alimentacion` (`id`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Desayuno', '2019-05-02 19:13:10', '2019-05-02 19:13:10'),
(2, 'Comida', '2019-05-02 19:13:10', '2019-05-02 19:13:10'),
(3, 'Cena', '2019-05-02 19:13:10', '2019-05-02 19:13:10');

-- --------------------------------------------------------

--
-- Table structure for table `tipos_usuarios`
--

CREATE TABLE `tipos_usuarios` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tipos_usuarios`
--

INSERT INTO `tipos_usuarios` (`id`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Nutriólogo', '2019-05-02 19:13:10', '2019-05-02 19:13:10'),
(2, 'Paciente', '2019-05-02 19:13:10', '2019-05-02 19:13:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_tipo_usuario` int(11) NOT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `foto`, `id_tipo_usuario`, `id_paciente`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Pablo Sánchez', 'pablo@pablo.pablo', NULL, '$2y$10$Y/Zplv61PIVOUu.HNkm5..3pzCKPq7tFDXNIfoEAHcxf7iCTjwJPW', 'user1_2019-02-28_rootfox.jpg', 1, NULL, 'GM4gUc3sqyD8HFVwPoPcibiKEQS6JBG10txNGTsKzdDpIm5sjhx06O33PeuJ', '2019-02-21 07:38:55', '2019-03-21 07:34:47'),
(4, 'Iram', 'iram@iram.g', NULL, '$2y$10$P6tdSjyv.gdincxgp7GjO.Q6YqVu8DUsF7EtCTcNlE5FC.N/qaNnu', NULL, 2, 6, NULL, '2019-04-02 08:11:11', '2019-04-02 08:11:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comidas_dieta`
--
ALTER TABLE `comidas_dieta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_dieta` (`id_dieta`,`id_dia_semana`,`id_tiempo_alimentacion`),
  ADD KEY `id_dia_semana` (`id_dia_semana`),
  ADD KEY `id_tiempo_alimentacion` (`id_tiempo_alimentacion`);

--
-- Indexes for table `dias_semana`
--
ALTER TABLE `dias_semana`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dietas`
--
ALTER TABLE `dietas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_paciente` (`id_paciente`,`inicio_semana`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tiempos_alimentacion`
--
ALTER TABLE `tiempos_alimentacion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipos_usuarios`
--
ALTER TABLE `tipos_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_tipo_usuario` (`id_tipo_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comidas_dieta`
--
ALTER TABLE `comidas_dieta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `dias_semana`
--
ALTER TABLE `dias_semana`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dietas`
--
ALTER TABLE `dietas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tiempos_alimentacion`
--
ALTER TABLE `tiempos_alimentacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tipos_usuarios`
--
ALTER TABLE `tipos_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comidas_dieta`
--
ALTER TABLE `comidas_dieta`
  ADD CONSTRAINT `comidas_dieta_ibfk_1` FOREIGN KEY (`id_dia_semana`) REFERENCES `dias_semana` (`id`),
  ADD CONSTRAINT `comidas_dieta_ibfk_2` FOREIGN KEY (`id_dieta`) REFERENCES `dietas` (`id`),
  ADD CONSTRAINT `comidas_dieta_ibfk_3` FOREIGN KEY (`id_tiempo_alimentacion`) REFERENCES `tiempos_alimentacion` (`id`);

--
-- Constraints for table `dietas`
--
ALTER TABLE `dietas`
  ADD CONSTRAINT `dietas_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipos_usuarios` (`id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id`);
