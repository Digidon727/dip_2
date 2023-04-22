-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3305
-- Время создания: Апр 22 2023 г., 07:11
-- Версия сервера: 8.0.30
-- Версия PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dip_1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `education_st`
--

CREATE TABLE `education_st` (
  `id` int NOT NULL,
  `type_education` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `place_study` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `number_diploma` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_expiration` date DEFAULT NULL,
  `name_department` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `speciality` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_register_st` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `register_st`
--

CREATE TABLE `register_st` (
  `id` int NOT NULL,
  `name_st` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_st` date DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_st` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email_st` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `father_st` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_f` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mothers_st` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_m` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name_fio` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pass` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `vuz_s`
--

CREATE TABLE `vuz_s` (
  `id` int NOT NULL,
  `name_vuz` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name_department_v` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `direction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `receipt_date` date DEFAULT NULL,
  `status_st` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `id_register_st` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `vuz_t`
--

CREATE TABLE `vuz_t` (
  `id` int NOT NULL,
  `name_vuz_t` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `employees_vt` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `main_subject_t` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `receipt_date_t` date DEFAULT NULL,
  `bet_t` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status_t` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_register_st` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `education_st`
--
ALTER TABLE `education_st`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_register_st` (`id_register_st`);

--
-- Индексы таблицы `register_st`
--
ALTER TABLE `register_st`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `vuz_s`
--
ALTER TABLE `vuz_s`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_register_st` (`id_register_st`);

--
-- Индексы таблицы `vuz_t`
--
ALTER TABLE `vuz_t`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_register_st` (`id_register_st`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `education_st`
--
ALTER TABLE `education_st`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT для таблицы `register_st`
--
ALTER TABLE `register_st`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `vuz_s`
--
ALTER TABLE `vuz_s`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `vuz_t`
--
ALTER TABLE `vuz_t`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `education_st`
--
ALTER TABLE `education_st`
  ADD CONSTRAINT `education_st_ibfk_1` FOREIGN KEY (`id_register_st`) REFERENCES `register_st` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `vuz_s`
--
ALTER TABLE `vuz_s`
  ADD CONSTRAINT `vuz_s_ibfk_1` FOREIGN KEY (`id_register_st`) REFERENCES `register_st` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `vuz_t`
--
ALTER TABLE `vuz_t`
  ADD CONSTRAINT `vuz_t_ibfk_1` FOREIGN KEY (`id_register_st`) REFERENCES `register_st` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
