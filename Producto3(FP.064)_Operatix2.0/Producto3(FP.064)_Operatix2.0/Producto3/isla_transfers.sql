-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 07-05-2025 a las 17:06:22
-- Versión del servidor: 5.7.44
-- Versión de PHP: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `isla_transfers`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('GB21wqsCnAonTDfa16pFRt5uLIsRmJ2108AYJOzH', 3, '172.24.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYjA1R21Nc0hldlY0NlZ4MkI2QkJFT2FzQmNmY0FaSUpSM2FzWGRjdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly9sb2NhbGhvc3Q6OTA5MC9hZG1pbi9yZXNlcnZhcy9jcmVhciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7fQ==', 1746637293),
('RdiIb2LraxktUlKBbn18v2MUXOSWXktJAhzosjS3', 7, '172.24.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiODFyWUdCekVIS2tkbU9xcjNqdEN4Q3Y0VlNnZjdkeHRld2toTjl2OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9sb2NhbGhvc3Q6OTA5MC9yZXNlcnZhL2NyZWFyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Nzt9', 1746549724),
('sN1JLVte83eM50k9kCAtIeD84sC6N9VokpXhlzFU', 3, '172.21.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSGtwNUNlOW4yMzhZcFlMWlg1OWFVZkhxRmxoQlI5NWkyVTllUVVVUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7fQ==', 1746547964),
('WIiyV3NCcPRy1MIFJKjAjiBWeTHcWA4SlMIYRycf', NULL, '172.21.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMUtRWW9Ib2k1RWVKeU1vUGx6cENvNTVBNzFrWk1GRjNXNEFYWlJISSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1746547965);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tranfer_hotel`
--

CREATE TABLE `tranfer_hotel` (
  `id_hotel` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `id_zona` int(11) DEFAULT NULL,
  `Comision` varchar(50) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tranfer_hotel`
--

INSERT INTO `tranfer_hotel` (`id_hotel`, `nombre`, `id_zona`, `Comision`, `usuario`, `password`) VALUES
(1, 'Hotel Playa', 1, '50 euros', 'admin@demo.com', '$2y$10$82ihgxbrDs1Ir0/l08z42edwpB7igy.sS8An2x46hTZG6lxOVuTCa'),
(2, 'Hotel Centro', 1, '60 euros', 'admin@demo.com', '$2y$10$82ihgxbrDs1Ir0/l08z42edwpB7igy.sS8An2x46hTZG6lxOVuTCa'),
(3, 'Hotel Montaña', 1, '100 euros', 'admin@demo.com', '$2y$10$82ihgxbrDs1Ir0/l08z42edwpB7igy.sS8An2x46hTZG6lxOVuTCa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transfer_precios`
--

CREATE TABLE `transfer_precios` (
  `id_precios` int(11) NOT NULL,
  `id_vehiculo` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `Precio` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `transfer_precios`
--

INSERT INTO `transfer_precios` (`id_precios`, `id_vehiculo`, `id_hotel`, `Precio`) VALUES
(1, 1, 1, '100 euros/noche'),
(2, 1, 2, '200 euros/noche'),
(3, 1, 3, '500 euros/noche');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transfer_reservas`
--

CREATE TABLE `transfer_reservas` (
  `id_reserva` int(11) NOT NULL,
  `localizador` varchar(100) NOT NULL,
  `id_hotel` int(11) DEFAULT NULL COMMENT 'Es el hotel que realiza la reserva',
  `id_tipo_reserva` int(11) NOT NULL,
  `email_cliente` varchar(50) NOT NULL,
  `fecha_reserva` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL,
  `id_destino` int(11) NOT NULL,
  `fecha_entrada` date NOT NULL,
  `hora_entrada` time NOT NULL,
  `numero_vuelo_entrada` varchar(50) NOT NULL,
  `origen_vuelo_entrada` varchar(50) NOT NULL,
  `hora_vuelo_salida` time DEFAULT NULL,
  `fecha_vuelo_salida` date NOT NULL,
  `num_viajeros` int(11) NOT NULL,
  `id_vehiculo` int(11) NOT NULL,
  `precio` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `transfer_reservas`
--

INSERT INTO `transfer_reservas` (`id_reserva`, `localizador`, `id_hotel`, `id_tipo_reserva`, `email_cliente`, `fecha_reserva`, `fecha_modificacion`, `id_destino`, `fecha_entrada`, `hora_entrada`, `numero_vuelo_entrada`, `origen_vuelo_entrada`, `hora_vuelo_salida`, `fecha_vuelo_salida`, `num_viajeros`, `id_vehiculo`, `precio`) VALUES
(1, '15D4F5C8', 1, 1, 'admin@demo.com', '2025-04-19 15:53:04', '2025-04-19 15:53:04', 1, '2025-04-25', '10:00:00', '126547A', 'Vietnam', '14:30:00', '2025-04-19', 2, 1, NULL),
(2, '23FEC39C', 1, 1, 'admin@demo.com', '2025-04-20 09:14:29', '2025-04-20 09:14:29', 1, '2022-02-22', '11:11:00', '1', 'Barcelona', '11:11:00', '2025-04-20', 1, 1, NULL),
(3, '55BB6F2C', 1, 1, 'particular@gmail.com', '2025-04-20 09:17:29', '2025-04-20 09:17:29', 1, '2022-11-11', '11:11:00', '2', 'Barcelona', '11:11:00', '2025-04-20', 1, 1, NULL),
(4, '4E003D6E', 2, 1, 'sasuke@demo.com', '2025-05-06 16:01:29', '2025-05-06 16:01:29', 1, '2025-09-13', '19:00:00', '126547A', 'Barcelona', '10:00:00', '2025-05-06', 8, 1, 90.00),
(5, '0CC027B8', 2, 2, 'sasuke@demo.com', '2025-05-06 16:02:36', '2025-05-06 16:02:36', 1, '2025-09-14', '18:00:00', '126547A', 'Vietnam', '15:04:00', '2025-05-06', 9, 1, 100.00),
(6, '5731DFB7', 2, 1, 'adam@gmail.com', '2025-05-07 16:28:25', '2025-05-07 16:28:25', 1, '2025-06-26', '15:00:00', '549196', 'Madrid', '11:00:00', '2025-05-07', 1, 1, 50.00),
(7, '8A5E2660', 2, 1, 'admin@demo.com', '2025-05-07 16:32:24', '2025-05-07 16:32:24', 1, '2025-05-24', '12:00:00', '125478', 'Portugal', '09:00:00', '2025-05-07', 5, 1, 98.00),
(8, '47B2DCB9', 2, 1, 'admin@demo.com', '2025-05-07 16:36:03', '2025-05-07 16:36:03', 1, '2025-06-16', '17:00:00', '4745415', 'Barcelona', '12:00:00', '2025-05-07', 4, 1, 120.00),
(9, '30680F48', 1, 1, 'admin@demo.com', '2025-05-07 16:40:11', '2025-05-07 16:40:11', 1, '2025-06-08', '12:00:00', '461586156', 'Sevilla', '08:00:00', '2025-05-07', 5, 1, 92.00),
(10, '7958CAA9', 1, 1, 'admin@demo.com', '2025-05-07 16:48:04', '2025-05-07 16:48:04', 1, '0025-06-18', '15:00:00', '4895641', 'Bilbao', '11:00:00', '2025-05-07', 2, 1, 95.00),
(11, 'B625CA25', 1, 1, 'admin@demo.com', '2025-05-07 16:58:58', '2025-05-07 16:58:58', 1, '2025-06-22', '14:00:00', '9416', 'Valencia', '11:00:00', '2025-05-07', 2, 1, 95.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transfer_tipo_reserva`
--

CREATE TABLE `transfer_tipo_reserva` (
  `id_tipo_reserva` int(11) NOT NULL,
  `Descripción` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `transfer_tipo_reserva`
--

INSERT INTO `transfer_tipo_reserva` (`id_tipo_reserva`, `Descripción`) VALUES
(1, 'Estandar'),
(2, 'Premium'),
(3, 'VIP');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transfer_vehiculo`
--

CREATE TABLE `transfer_vehiculo` (
  `id_vehiculo` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `email_conductor` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `transfer_vehiculo`
--

INSERT INTO `transfer_vehiculo` (`id_vehiculo`, `description`, `email_conductor`, `password`) VALUES
(1, 'Mercedes Benz', 'pepito@conductor.com', '$2y$10$1FTd2ZMVka3MgzULcWG02uSP7ePH.fq1ggB3xEHvg1197NPweBHgC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transfer_viajeros`
--

CREATE TABLE `transfer_viajeros` (
  `id_viajero` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido1` varchar(100) NOT NULL,
  `apellido2` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `codigoPostal` varchar(100) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `pais` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `tipo_cliente` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `transfer_viajeros`
--

INSERT INTO `transfer_viajeros` (`id_viajero`, `nombre`, `apellido1`, `apellido2`, `direccion`, `codigoPostal`, `ciudad`, `pais`, `email`, `password`, `tipo_cliente`) VALUES
(3, 'Pedro', 'demo', 'demo2', 'calle falsa 123', '08080', 'Barcelona', 'España', 'admin@demo.com', '$2y$10$NHDXWJpsBwe3HSXDqM8DJuabQ8N67yte69kaPtfMPwvl57GwTlMQm', 'administrador'),
(4, 'javier', 'Tena', 'Vidal', 'Calle Vidilandia', '36900', 'Barcelona', 'España', 'javi@javi.com', '$2y$12$O7qxH1Ce.z64v0Ag/7/EReRSomqgPCanYbDQfpuR3VNEymDGCLMXS', 'particular'),
(5, 'Sasuke', 'Uchiha', 'Uzumaki', 'Ronda del General Mitre 151', '08022', 'Barcelona', 'España', 'sasuke@demo.com', '$2y$12$vllTjaNjEa4wW.ZnIBkJrOl/lMLWQahNlncMctkUHVQeByCDHgXQW', 'particular'),
(6, 'Sara', 'Pepito', 'Pumpum', 'Calle Arte', '45872', 'Tarragona', 'España', 'sara@gmail.com', '$2y$12$yRTjgoqDv/zt4Ja3ACp/su.mOUziwmdVvnsRlfbEyH/bsLB56R15S', 'corporativo'),
(7, 'Adam', 'Milano', 'Nelo', 'Calle Coreda', '48756', 'Madrid', 'España', 'adam@gmail.com', '$2y$12$3vZqqVbVt78WtvOeupO68ebvOnIDzR6zPr1Oo7CFFts/ua7izrQm6', 'particular'),
(999, 'Admin', 'Root', 'Demo', 'admin street 1', '00000', 'AdminCity', 'España', 'admin@demo.com', 'admin123', 'administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transfer_zona`
--

CREATE TABLE `transfer_zona` (
  `id_zona` int(11) NOT NULL,
  `descripcion` varchar(40) NOT NULL,
  `nombre_zona` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `transfer_zona`
--

INSERT INTO `transfer_zona` (`id_zona`, `descripcion`, `nombre_zona`) VALUES
(1, 'La zona mas molona es la de Barcelona.', 'Zona Norte'),
(2, 'Zona Sur', 'Zona Sur'),
(3, 'Zona Este', 'Zona Este'),
(4, 'Zona Oeste', 'Zona Oeste'),
(5, 'Zona Centro', 'Zona Centro'),
(6, 'Zona Montaña', 'Zona Montaña'),
(7, 'Zona Playa', 'Zona Playa'),
(8, 'Zona Campo', 'Zona Campo'),
(9, 'Zona Ciudad', 'Zona Ciudad'),
(10, 'Zona Internacional', 'Zona Internacional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `tranfer_hotel`
--
ALTER TABLE `tranfer_hotel`
  ADD PRIMARY KEY (`id_hotel`),
  ADD KEY `FK_HOTEL_ZONA` (`id_zona`);

--
-- Indices de la tabla `transfer_precios`
--
ALTER TABLE `transfer_precios`
  ADD KEY `FK_PRECIOS_HOTEL` (`id_hotel`),
  ADD KEY `FK_PRECIOS_VEHICULO` (`id_vehiculo`);

--
-- Indices de la tabla `transfer_reservas`
--
ALTER TABLE `transfer_reservas`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `FK_RESERVAS_DESTINO` (`id_destino`),
  ADD KEY `FK_RESERVAS_HOTEL` (`id_hotel`),
  ADD KEY `FK_RESERVAS_TIPO` (`id_tipo_reserva`),
  ADD KEY `FK_RESERVAS_VEHICULO` (`id_vehiculo`);

--
-- Indices de la tabla `transfer_tipo_reserva`
--
ALTER TABLE `transfer_tipo_reserva`
  ADD PRIMARY KEY (`id_tipo_reserva`);

--
-- Indices de la tabla `transfer_vehiculo`
--
ALTER TABLE `transfer_vehiculo`
  ADD PRIMARY KEY (`id_vehiculo`);

--
-- Indices de la tabla `transfer_viajeros`
--
ALTER TABLE `transfer_viajeros`
  ADD PRIMARY KEY (`id_viajero`);

--
-- Indices de la tabla `transfer_zona`
--
ALTER TABLE `transfer_zona`
  ADD PRIMARY KEY (`id_zona`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tranfer_hotel`
--
ALTER TABLE `tranfer_hotel`
  MODIFY `id_hotel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `transfer_reservas`
--
ALTER TABLE `transfer_reservas`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `transfer_tipo_reserva`
--
ALTER TABLE `transfer_tipo_reserva`
  MODIFY `id_tipo_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `transfer_vehiculo`
--
ALTER TABLE `transfer_vehiculo`
  MODIFY `id_vehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `transfer_viajeros`
--
ALTER TABLE `transfer_viajeros`
  MODIFY `id_viajero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT de la tabla `transfer_zona`
--
ALTER TABLE `transfer_zona`
  MODIFY `id_zona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tranfer_hotel`
--
ALTER TABLE `tranfer_hotel`
  ADD CONSTRAINT `FK_HOTEL_ZONA` FOREIGN KEY (`id_zona`) REFERENCES `transfer_zona` (`id_zona`);

--
-- Filtros para la tabla `transfer_precios`
--
ALTER TABLE `transfer_precios`
  ADD CONSTRAINT `FK_PRECIOS_HOTEL` FOREIGN KEY (`id_hotel`) REFERENCES `tranfer_hotel` (`id_hotel`),
  ADD CONSTRAINT `FK_PRECIOS_VEHICULO` FOREIGN KEY (`id_vehiculo`) REFERENCES `transfer_vehiculo` (`id_vehiculo`);

--
-- Filtros para la tabla `transfer_reservas`
--
ALTER TABLE `transfer_reservas`
  ADD CONSTRAINT `FK_RESERVAS_DESTINO` FOREIGN KEY (`id_destino`) REFERENCES `tranfer_hotel` (`id_hotel`),
  ADD CONSTRAINT `FK_RESERVAS_HOTEL` FOREIGN KEY (`id_hotel`) REFERENCES `tranfer_hotel` (`id_hotel`),
  ADD CONSTRAINT `FK_RESERVAS_TIPO` FOREIGN KEY (`id_tipo_reserva`) REFERENCES `transfer_tipo_reserva` (`id_tipo_reserva`),
  ADD CONSTRAINT `FK_RESERVAS_VEHICULO` FOREIGN KEY (`id_vehiculo`) REFERENCES `transfer_vehiculo` (`id_vehiculo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
