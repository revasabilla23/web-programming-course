-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 22, 2024 at 03:37 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pemweb-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `created_at`, `updated_at`) VALUES
(43, 'T-shirt Pria Donker', 50000, '/upload/1732287882-e200cecc31b49372e9a4f647545b325f-kaosdonker.jpg', '2024-11-22 15:04:42', NULL),
(44, 'T-shirt Pria Grey', 65000, '/upload/1732288629-f973872406f351665fa88ce7a036119e-kaoshitam.jpg', '2024-11-22 15:17:09', NULL),
(45, 'Jaket Bomber Pria', 250000, '/upload/1732288817-f1881956195ba1b7a3524a784ebc9ad7-jaket.jpg', '2024-11-22 15:20:17', NULL),
(46, 'Celana Pendek Pria', 100000, '/upload/1732289619-5468a39d85da63a5ee7c5780f9dcc6b8-celana.jpg', '2024-11-22 15:33:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role` enum('admin','user') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'user',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `password`, `photo`, `created_at`, `updated_at`) VALUES
(6, 'Reva', 'cav@gmail.com', 'user', '$2y$10$CaihcNBQxFg8/smcUSQso.oQG8DuB.lIiFszuqqfPOiOTdkP5jrJC', NULL, '2024-11-21 10:11:24', NULL),
(9, 'line', 'nuel@gmail.com', 'admin', '$2y$10$VZUL82KNLkad.Xbi8FISceRQNliqYpyCgtkZ6xvD8jwjWPK1GpWpO', NULL, '2024-11-22 07:03:15', NULL),
(10, 'Yuri', 'zoyul@gmail.com', 'user', '$2y$10$m.YM96ZRAKg94eieaVMNEe1lyoQfH9om4.O91RWVZPOmGpSTq3.mK', NULL, '2024-11-22 08:13:45', NULL),
(11, 'reva', 'rev@gmail.com', 'user', '$2y$10$4MKGl2M.DNB3QV9BZ5d5ouOPHmSjJTDWSIkB61FdtddRjTROy24.6', NULL, '2024-11-22 08:32:01', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
