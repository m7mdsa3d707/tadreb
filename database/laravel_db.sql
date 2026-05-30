-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 09, 2026 at 10:44 PM
-- Server version: 8.0.45-0ubuntu0.24.04.1
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('tadreb-707-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6', 'i:1;', 1778361472),
('tadreb-707-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6:timer', 'i:1778361472;', 1778361472),
('tadreb-707-cache-scores_moderated_run_20', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:10:{i:0;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:395;s:12:\"workout_type\";s:13:\"moderated_run\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:9;s:10:\"percentage\";d:10;s:10:\"created_at\";s:19:\"2026-03-16 10:21:28\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:28\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:395;s:12:\"workout_type\";s:13:\"moderated_run\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:9;s:10:\"percentage\";d:10;s:10:\"created_at\";s:19:\"2026-03-16 10:21:28\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:28\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:1;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:396;s:12:\"workout_type\";s:13:\"moderated_run\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:13;s:10:\"percentage\";d:20;s:10:\"created_at\";s:19:\"2026-03-16 10:21:28\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:28\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:396;s:12:\"workout_type\";s:13:\"moderated_run\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:13;s:10:\"percentage\";d:20;s:10:\"created_at\";s:19:\"2026-03-16 10:21:28\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:28\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:2;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:397;s:12:\"workout_type\";s:13:\"moderated_run\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:17;s:10:\"percentage\";d:30;s:10:\"created_at\";s:19:\"2026-03-16 10:21:28\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:28\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:397;s:12:\"workout_type\";s:13:\"moderated_run\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:17;s:10:\"percentage\";d:30;s:10:\"created_at\";s:19:\"2026-03-16 10:21:28\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:28\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:3;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:398;s:12:\"workout_type\";s:13:\"moderated_run\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:21;s:10:\"percentage\";d:40;s:10:\"created_at\";s:19:\"2026-03-16 10:21:28\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:28\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:398;s:12:\"workout_type\";s:13:\"moderated_run\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:21;s:10:\"percentage\";d:40;s:10:\"created_at\";s:19:\"2026-03-16 10:21:28\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:28\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:4;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:399;s:12:\"workout_type\";s:13:\"moderated_run\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:25;s:10:\"percentage\";d:50;s:10:\"created_at\";s:19:\"2026-03-16 10:21:28\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:28\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:399;s:12:\"workout_type\";s:13:\"moderated_run\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:25;s:10:\"percentage\";d:50;s:10:\"created_at\";s:19:\"2026-03-16 10:21:28\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:28\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:5;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:400;s:12:\"workout_type\";s:13:\"moderated_run\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:29;s:10:\"percentage\";d:60;s:10:\"created_at\";s:19:\"2026-03-16 10:21:28\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:28\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:400;s:12:\"workout_type\";s:13:\"moderated_run\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:29;s:10:\"percentage\";d:60;s:10:\"created_at\";s:19:\"2026-03-16 10:21:28\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:28\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:6;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:401;s:12:\"workout_type\";s:13:\"moderated_run\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:33;s:10:\"percentage\";d:70;s:10:\"created_at\";s:19:\"2026-03-16 10:21:28\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:28\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:401;s:12:\"workout_type\";s:13:\"moderated_run\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:33;s:10:\"percentage\";d:70;s:10:\"created_at\";s:19:\"2026-03-16 10:21:28\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:28\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:7;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:402;s:12:\"workout_type\";s:13:\"moderated_run\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:37;s:10:\"percentage\";d:80;s:10:\"created_at\";s:19:\"2026-03-16 10:21:28\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:28\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:402;s:12:\"workout_type\";s:13:\"moderated_run\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:37;s:10:\"percentage\";d:80;s:10:\"created_at\";s:19:\"2026-03-16 10:21:28\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:28\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:8;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:403;s:12:\"workout_type\";s:13:\"moderated_run\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:41;s:10:\"percentage\";d:90;s:10:\"created_at\";s:19:\"2026-03-16 10:21:28\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:28\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:403;s:12:\"workout_type\";s:13:\"moderated_run\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:41;s:10:\"percentage\";d:90;s:10:\"created_at\";s:19:\"2026-03-16 10:21:28\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:28\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:9;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:404;s:12:\"workout_type\";s:13:\"moderated_run\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:45;s:10:\"percentage\";d:100;s:10:\"created_at\";s:19:\"2026-03-16 10:21:28\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:28\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:404;s:12:\"workout_type\";s:13:\"moderated_run\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:45;s:10:\"percentage\";d:100;s:10:\"created_at\";s:19:\"2026-03-16 10:21:28\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:28\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 1778368113),
('tadreb-707-cache-scores_pullup_20', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:10:{i:0;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:281;s:12:\"workout_type\";s:6:\"pullup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:4;s:10:\"percentage\";d:10;s:10:\"created_at\";s:19:\"2026-03-16 10:21:26\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:26\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:281;s:12:\"workout_type\";s:6:\"pullup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:4;s:10:\"percentage\";d:10;s:10:\"created_at\";s:19:\"2026-03-16 10:21:26\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:26\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:1;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:282;s:12:\"workout_type\";s:6:\"pullup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:6;s:10:\"percentage\";d:20;s:10:\"created_at\";s:19:\"2026-03-16 10:21:26\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:26\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:282;s:12:\"workout_type\";s:6:\"pullup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:6;s:10:\"percentage\";d:20;s:10:\"created_at\";s:19:\"2026-03-16 10:21:26\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:26\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:2;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:283;s:12:\"workout_type\";s:6:\"pullup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:8;s:10:\"percentage\";d:30;s:10:\"created_at\";s:19:\"2026-03-16 10:21:26\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:26\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:283;s:12:\"workout_type\";s:6:\"pullup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:8;s:10:\"percentage\";d:30;s:10:\"created_at\";s:19:\"2026-03-16 10:21:26\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:26\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:3;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:284;s:12:\"workout_type\";s:6:\"pullup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:10;s:10:\"percentage\";d:40;s:10:\"created_at\";s:19:\"2026-03-16 10:21:26\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:26\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:284;s:12:\"workout_type\";s:6:\"pullup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:10;s:10:\"percentage\";d:40;s:10:\"created_at\";s:19:\"2026-03-16 10:21:26\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:26\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:4;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:285;s:12:\"workout_type\";s:6:\"pullup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:12;s:10:\"percentage\";d:50;s:10:\"created_at\";s:19:\"2026-03-16 10:21:26\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:26\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:285;s:12:\"workout_type\";s:6:\"pullup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:12;s:10:\"percentage\";d:50;s:10:\"created_at\";s:19:\"2026-03-16 10:21:26\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:26\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:5;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:286;s:12:\"workout_type\";s:6:\"pullup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:14;s:10:\"percentage\";d:60;s:10:\"created_at\";s:19:\"2026-03-16 10:21:26\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:26\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:286;s:12:\"workout_type\";s:6:\"pullup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:14;s:10:\"percentage\";d:60;s:10:\"created_at\";s:19:\"2026-03-16 10:21:26\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:26\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:6;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:287;s:12:\"workout_type\";s:6:\"pullup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:16;s:10:\"percentage\";d:70;s:10:\"created_at\";s:19:\"2026-03-16 10:21:26\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:26\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:287;s:12:\"workout_type\";s:6:\"pullup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:16;s:10:\"percentage\";d:70;s:10:\"created_at\";s:19:\"2026-03-16 10:21:26\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:26\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:7;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:288;s:12:\"workout_type\";s:6:\"pullup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:18;s:10:\"percentage\";d:80;s:10:\"created_at\";s:19:\"2026-03-16 10:21:26\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:26\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:288;s:12:\"workout_type\";s:6:\"pullup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:18;s:10:\"percentage\";d:80;s:10:\"created_at\";s:19:\"2026-03-16 10:21:26\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:26\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:8;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:289;s:12:\"workout_type\";s:6:\"pullup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:20;s:10:\"percentage\";d:90;s:10:\"created_at\";s:19:\"2026-03-16 10:21:26\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:26\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:289;s:12:\"workout_type\";s:6:\"pullup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:20;s:10:\"percentage\";d:90;s:10:\"created_at\";s:19:\"2026-03-16 10:21:26\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:26\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:9;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:290;s:12:\"workout_type\";s:6:\"pullup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:22;s:10:\"percentage\";d:100;s:10:\"created_at\";s:19:\"2026-03-16 10:21:26\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:26\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:290;s:12:\"workout_type\";s:6:\"pullup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:22;s:10:\"percentage\";d:100;s:10:\"created_at\";s:19:\"2026-03-16 10:21:26\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:26\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 1778368112),
('tadreb-707-cache-scores_pushup_20', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:10:{i:0;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:221;s:12:\"workout_type\";s:6:\"pushup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:19;s:10:\"percentage\";d:10;s:10:\"created_at\";s:19:\"2026-03-16 10:21:24\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:24\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:221;s:12:\"workout_type\";s:6:\"pushup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:19;s:10:\"percentage\";d:10;s:10:\"created_at\";s:19:\"2026-03-16 10:21:24\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:24\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:1;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:222;s:12:\"workout_type\";s:6:\"pushup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:23;s:10:\"percentage\";d:20;s:10:\"created_at\";s:19:\"2026-03-16 10:21:24\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:24\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:222;s:12:\"workout_type\";s:6:\"pushup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:23;s:10:\"percentage\";d:20;s:10:\"created_at\";s:19:\"2026-03-16 10:21:24\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:24\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:2;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:223;s:12:\"workout_type\";s:6:\"pushup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:27;s:10:\"percentage\";d:30;s:10:\"created_at\";s:19:\"2026-03-16 10:21:24\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:24\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:223;s:12:\"workout_type\";s:6:\"pushup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:27;s:10:\"percentage\";d:30;s:10:\"created_at\";s:19:\"2026-03-16 10:21:24\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:24\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:3;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:224;s:12:\"workout_type\";s:6:\"pushup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:31;s:10:\"percentage\";d:40;s:10:\"created_at\";s:19:\"2026-03-16 10:21:24\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:24\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:224;s:12:\"workout_type\";s:6:\"pushup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:31;s:10:\"percentage\";d:40;s:10:\"created_at\";s:19:\"2026-03-16 10:21:24\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:24\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:4;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:225;s:12:\"workout_type\";s:6:\"pushup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:35;s:10:\"percentage\";d:50;s:10:\"created_at\";s:19:\"2026-03-16 10:21:24\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:24\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:225;s:12:\"workout_type\";s:6:\"pushup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:35;s:10:\"percentage\";d:50;s:10:\"created_at\";s:19:\"2026-03-16 10:21:24\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:24\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:5;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:226;s:12:\"workout_type\";s:6:\"pushup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:39;s:10:\"percentage\";d:60;s:10:\"created_at\";s:19:\"2026-03-16 10:21:24\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:24\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:226;s:12:\"workout_type\";s:6:\"pushup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:39;s:10:\"percentage\";d:60;s:10:\"created_at\";s:19:\"2026-03-16 10:21:24\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:24\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:6;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:227;s:12:\"workout_type\";s:6:\"pushup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:43;s:10:\"percentage\";d:70;s:10:\"created_at\";s:19:\"2026-03-16 10:21:24\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:24\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:227;s:12:\"workout_type\";s:6:\"pushup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:43;s:10:\"percentage\";d:70;s:10:\"created_at\";s:19:\"2026-03-16 10:21:24\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:24\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:7;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:228;s:12:\"workout_type\";s:6:\"pushup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:47;s:10:\"percentage\";d:80;s:10:\"created_at\";s:19:\"2026-03-16 10:21:24\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:24\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:228;s:12:\"workout_type\";s:6:\"pushup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:47;s:10:\"percentage\";d:80;s:10:\"created_at\";s:19:\"2026-03-16 10:21:24\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:24\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:8;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:229;s:12:\"workout_type\";s:6:\"pushup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:51;s:10:\"percentage\";d:90;s:10:\"created_at\";s:19:\"2026-03-16 10:21:24\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:24\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:229;s:12:\"workout_type\";s:6:\"pushup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:51;s:10:\"percentage\";d:90;s:10:\"created_at\";s:19:\"2026-03-16 10:21:24\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:24\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:9;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:230;s:12:\"workout_type\";s:6:\"pushup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:55;s:10:\"percentage\";d:100;s:10:\"created_at\";s:19:\"2026-03-16 10:21:24\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:24\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:230;s:12:\"workout_type\";s:6:\"pushup\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:55;s:10:\"percentage\";d:100;s:10:\"created_at\";s:19:\"2026-03-16 10:21:24\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:24\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 1778368112);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('tadreb-707-cache-scores_situps_20', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:10:{i:0;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:335;s:12:\"workout_type\";s:6:\"situps\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:35;s:10:\"percentage\";d:10;s:10:\"created_at\";s:19:\"2026-03-16 10:21:27\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:27\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:335;s:12:\"workout_type\";s:6:\"situps\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:35;s:10:\"percentage\";d:10;s:10:\"created_at\";s:19:\"2026-03-16 10:21:27\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:27\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:1;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:336;s:12:\"workout_type\";s:6:\"situps\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:40;s:10:\"percentage\";d:20;s:10:\"created_at\";s:19:\"2026-03-16 10:21:27\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:27\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:336;s:12:\"workout_type\";s:6:\"situps\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:40;s:10:\"percentage\";d:20;s:10:\"created_at\";s:19:\"2026-03-16 10:21:27\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:27\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:2;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:337;s:12:\"workout_type\";s:6:\"situps\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:45;s:10:\"percentage\";d:30;s:10:\"created_at\";s:19:\"2026-03-16 10:21:27\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:27\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:337;s:12:\"workout_type\";s:6:\"situps\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:45;s:10:\"percentage\";d:30;s:10:\"created_at\";s:19:\"2026-03-16 10:21:27\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:27\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:3;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:338;s:12:\"workout_type\";s:6:\"situps\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:50;s:10:\"percentage\";d:40;s:10:\"created_at\";s:19:\"2026-03-16 10:21:27\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:27\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:338;s:12:\"workout_type\";s:6:\"situps\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:50;s:10:\"percentage\";d:40;s:10:\"created_at\";s:19:\"2026-03-16 10:21:27\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:27\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:4;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:339;s:12:\"workout_type\";s:6:\"situps\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:55;s:10:\"percentage\";d:50;s:10:\"created_at\";s:19:\"2026-03-16 10:21:27\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:27\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:339;s:12:\"workout_type\";s:6:\"situps\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:55;s:10:\"percentage\";d:50;s:10:\"created_at\";s:19:\"2026-03-16 10:21:27\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:27\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:5;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:340;s:12:\"workout_type\";s:6:\"situps\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:60;s:10:\"percentage\";d:60;s:10:\"created_at\";s:19:\"2026-03-16 10:21:27\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:27\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:340;s:12:\"workout_type\";s:6:\"situps\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:60;s:10:\"percentage\";d:60;s:10:\"created_at\";s:19:\"2026-03-16 10:21:27\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:27\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:6;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:341;s:12:\"workout_type\";s:6:\"situps\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:65;s:10:\"percentage\";d:70;s:10:\"created_at\";s:19:\"2026-03-16 10:21:27\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:27\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:341;s:12:\"workout_type\";s:6:\"situps\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:65;s:10:\"percentage\";d:70;s:10:\"created_at\";s:19:\"2026-03-16 10:21:27\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:27\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:7;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:342;s:12:\"workout_type\";s:6:\"situps\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:70;s:10:\"percentage\";d:80;s:10:\"created_at\";s:19:\"2026-03-16 10:21:27\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:27\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:342;s:12:\"workout_type\";s:6:\"situps\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:70;s:10:\"percentage\";d:80;s:10:\"created_at\";s:19:\"2026-03-16 10:21:27\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:27\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:8;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:343;s:12:\"workout_type\";s:6:\"situps\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:75;s:10:\"percentage\";d:90;s:10:\"created_at\";s:19:\"2026-03-16 10:21:27\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:27\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:343;s:12:\"workout_type\";s:6:\"situps\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:75;s:10:\"percentage\";d:90;s:10:\"created_at\";s:19:\"2026-03-16 10:21:27\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:27\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}i:9;O:23:\"App\\Models\\WorkoutScore\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"workout_scores\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:344;s:12:\"workout_type\";s:6:\"situps\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:80;s:10:\"percentage\";d:100;s:10:\"created_at\";s:19:\"2026-03-16 10:21:27\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:27\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:344;s:12:\"workout_type\";s:6:\"situps\";s:7:\"min_age\";i:18;s:7:\"max_age\";i:26;s:11:\"score_value\";d:80;s:10:\"percentage\";d:100;s:10:\"created_at\";s:19:\"2026-03-16 10:21:27\";s:10:\"updated_at\";s:19:\"2026-03-16 10:21:27\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 1778368112);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dahya_entries`
--

CREATE TABLE `dahya_entries` (
  `id` bigint UNSIGNED NOT NULL,
  `dahya_week_id` bigint UNSIGNED NOT NULL,
  `fog_user_id` bigint UNSIGNED NOT NULL,
  `duration` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dahya_entries`
--

INSERT INTO `dahya_entries` (`id`, `dahya_week_id`, `fog_user_id`, `duration`, `created_at`, `updated_at`) VALUES
(273, 5, 69, '00:30:15', '2026-04-25 12:39:32', '2026-04-25 12:39:32'),
(274, 5, 117, '00:29:30', '2026-04-25 12:39:32', '2026-04-25 12:39:32'),
(275, 5, 94, '00:30:15', '2026-04-25 12:39:32', '2026-04-25 12:39:32'),
(276, 5, 49, '00:28:00', '2026-04-25 12:39:32', '2026-04-25 12:39:32'),
(277, 5, 116, '00:29:30', '2026-04-25 12:39:32', '2026-04-25 12:39:32'),
(278, 5, 36, '00:23:00', '2026-04-25 12:39:32', '2026-04-25 12:39:32'),
(279, 5, 55, '00:22:30', '2026-04-25 12:39:32', '2026-04-25 12:39:32'),
(280, 5, 37, '00:21:50', '2026-04-25 12:39:32', '2026-04-25 12:39:32'),
(281, 5, 99, '00:22:00', '2026-04-25 12:39:32', '2026-04-25 12:39:32'),
(282, 5, 122, '00:29:30', '2026-04-25 12:39:32', '2026-04-25 12:39:32'),
(283, 5, 119, '00:26:30', '2026-04-25 12:39:32', '2026-04-25 12:39:32'),
(284, 5, 59, '00:21:00', '2026-04-25 12:39:32', '2026-04-25 12:39:32'),
(285, 5, 103, '00:28:30', '2026-04-25 12:39:32', '2026-04-25 12:39:32'),
(286, 5, 115, '00:21:30', '2026-04-25 12:39:32', '2026-04-25 12:39:32'),
(287, 5, 107, '00:26:30', '2026-04-25 12:39:32', '2026-04-25 12:39:32'),
(288, 5, 110, '00:18:30', '2026-04-25 12:39:32', '2026-04-25 12:39:32'),
(289, 5, 75, '00:20:13', '2026-04-25 12:39:32', '2026-04-25 12:39:32'),
(290, 5, 112, '00:30:30', '2026-04-25 12:39:32', '2026-04-25 12:39:32'),
(291, 5, 111, '00:24:30', '2026-04-25 12:39:32', '2026-04-25 12:39:32'),
(292, 5, 104, '00:23:00', '2026-04-25 12:39:32', '2026-04-25 12:39:32'),
(293, 5, 113, '00:22:30', '2026-04-25 12:39:32', '2026-04-25 12:39:32'),
(294, 5, 105, '00:23:15', '2026-04-25 12:39:32', '2026-04-25 12:39:32'),
(295, 6, 69, '00:27:30', '2026-04-25 12:55:21', '2026-04-25 12:55:21'),
(296, 6, 59, '00:22:10', '2026-04-25 12:55:21', '2026-04-25 12:55:21'),
(297, 6, 115, '00:24:30', '2026-04-25 12:55:21', '2026-04-25 12:55:21'),
(298, 6, 110, '00:26:00', '2026-04-25 12:55:21', '2026-04-25 12:55:21'),
(299, 6, 104, '00:23:30', '2026-04-25 12:55:21', '2026-04-25 12:55:21'),
(300, 6, 113, '00:22:30', '2026-04-25 12:55:21', '2026-04-25 12:55:21'),
(301, 6, 23, '00:18:10', '2026-04-25 12:55:21', '2026-04-25 12:55:21'),
(302, 6, 41, '00:23:40', '2026-04-25 12:55:21', '2026-04-25 12:55:21'),
(303, 6, 120, '00:23:10', '2026-04-25 12:55:21', '2026-04-25 12:55:21'),
(304, 6, 108, '00:25:10', '2026-04-25 12:55:22', '2026-04-25 12:55:22'),
(305, 6, 89, '00:23:00', '2026-04-25 12:55:22', '2026-04-25 12:55:22'),
(306, 6, 47, '00:24:30', '2026-04-25 12:55:22', '2026-04-25 12:55:22'),
(307, 6, 78, '00:24:50', '2026-04-25 12:55:22', '2026-04-25 12:55:22'),
(308, 6, 63, '00:25:00', '2026-04-25 12:55:22', '2026-04-25 12:55:22'),
(309, 6, 73, '00:16:15', '2026-04-25 12:55:22', '2026-04-25 12:55:22'),
(310, 6, 58, '00:24:30', '2026-04-25 12:55:22', '2026-04-25 12:55:22'),
(311, 6, 90, '00:23:40', '2026-04-25 12:55:22', '2026-04-25 12:55:22'),
(312, 6, 102, '00:18:30', '2026-04-25 12:55:22', '2026-04-25 12:55:22'),
(313, 6, 84, '00:24:30', '2026-04-25 12:55:22', '2026-04-25 12:55:22'),
(314, 6, 105, '00:23:30', '2026-04-25 12:55:22', '2026-04-25 12:55:22'),
(315, 6, 20, '00:23:30', '2026-04-25 12:55:22', '2026-04-25 12:55:22'),
(316, 6, 45, '00:24:10', '2026-04-25 12:55:22', '2026-04-25 12:55:22'),
(317, 7, 69, '00:26:30', '2026-04-25 12:59:28', '2026-04-25 12:59:28'),
(318, 7, 92, '00:20:10', '2026-04-25 12:59:28', '2026-04-25 12:59:28'),
(319, 7, 117, '00:23:30', '2026-04-25 12:59:28', '2026-04-25 12:59:28'),
(320, 7, 94, '00:25:30', '2026-04-25 12:59:28', '2026-04-25 12:59:28'),
(321, 7, 116, '00:25:30', '2026-04-25 12:59:28', '2026-04-25 12:59:28'),
(322, 7, 37, '00:26:30', '2026-04-25 12:59:28', '2026-04-25 12:59:28'),
(323, 7, 88, '00:19:50', '2026-04-25 12:59:28', '2026-04-25 12:59:28'),
(324, 7, 99, '00:21:30', '2026-04-25 12:59:28', '2026-04-25 12:59:28'),
(325, 7, 122, '00:23:10', '2026-04-25 12:59:28', '2026-04-25 12:59:28'),
(326, 7, 107, '00:23:30', '2026-04-25 12:59:28', '2026-04-25 12:59:28'),
(327, 7, 74, '00:17:10', '2026-04-25 12:59:28', '2026-04-25 12:59:28'),
(328, 7, 52, '00:24:30', '2026-04-25 12:59:28', '2026-04-25 12:59:28'),
(329, 7, 126, '00:25:30', '2026-04-25 12:59:28', '2026-04-25 12:59:28'),
(330, 7, 68, '00:23:50', '2026-04-25 12:59:28', '2026-04-25 12:59:28'),
(331, 7, 23, '00:18:30', '2026-04-25 12:59:28', '2026-04-25 12:59:28'),
(332, 7, 34, '00:23:30', '2026-04-25 12:59:28', '2026-04-25 12:59:28'),
(333, 7, 30, '00:25:10', '2026-04-25 12:59:28', '2026-04-25 12:59:28'),
(334, 7, 51, '00:26:30', '2026-04-25 12:59:29', '2026-04-25 12:59:29'),
(335, 7, 100, '00:26:40', '2026-04-25 12:59:29', '2026-04-25 12:59:29'),
(336, 7, 73, '00:17:00', '2026-04-25 12:59:29', '2026-04-25 12:59:29'),
(337, 7, 90, '00:23:30', '2026-04-25 12:59:29', '2026-04-25 12:59:29'),
(338, 7, 105, '00:22:00', '2026-04-25 12:59:29', '2026-04-25 12:59:29'),
(339, 7, 20, '00:22:10', '2026-04-25 12:59:29', '2026-04-25 12:59:29'),
(340, 4, 69, '00:22:10', '2026-04-26 05:34:43', '2026-04-26 05:34:43'),
(341, 4, 92, '00:22:00', '2026-04-26 05:34:43', '2026-04-26 05:34:43'),
(342, 4, 94, '00:35:00', '2026-04-26 05:34:43', '2026-04-26 05:34:43'),
(343, 4, 55, '00:22:10', '2026-04-26 05:34:43', '2026-04-26 05:34:43'),
(344, 4, 88, '00:23:30', '2026-04-26 05:34:43', '2026-04-26 05:34:43'),
(345, 4, 99, '00:19:30', '2026-04-26 05:34:43', '2026-04-26 05:34:43'),
(346, 4, 122, '00:24:10', '2026-04-26 05:34:43', '2026-04-26 05:34:43'),
(347, 4, 119, '00:19:30', '2026-04-26 05:34:43', '2026-04-26 05:34:43'),
(348, 4, 115, '00:19:20', '2026-04-26 05:34:43', '2026-04-26 05:34:43'),
(349, 4, 53, '00:23:30', '2026-04-26 05:34:43', '2026-04-26 05:34:43'),
(350, 4, 74, '00:19:30', '2026-04-26 05:34:43', '2026-04-26 05:34:43'),
(351, 4, 75, '00:19:10', '2026-04-26 05:34:43', '2026-04-26 05:34:43'),
(352, 4, 113, '00:21:30', '2026-04-26 05:34:43', '2026-04-26 05:34:43'),
(353, 4, 126, '00:37:00', '2026-04-26 05:34:43', '2026-04-26 05:34:43'),
(354, 4, 23, '00:18:00', '2026-04-26 05:34:43', '2026-04-26 05:34:43'),
(355, 4, 41, '00:23:10', '2026-04-26 05:34:43', '2026-04-26 05:34:43'),
(356, 4, 128, '00:21:30', '2026-04-26 05:34:43', '2026-04-26 05:34:43'),
(357, 4, 60, '00:21:30', '2026-04-26 05:34:43', '2026-04-26 05:34:43'),
(358, 4, 124, '00:23:40', '2026-04-26 05:34:43', '2026-04-26 05:34:43'),
(359, 4, 83, '00:24:00', '2026-04-26 05:34:43', '2026-04-26 05:34:43'),
(360, 4, 106, '00:21:20', '2026-04-26 05:34:43', '2026-04-26 05:34:43'),
(361, 4, 85, '00:23:30', '2026-04-26 05:34:43', '2026-04-26 05:34:43'),
(362, 4, 42, '00:25:30', '2026-04-26 05:34:43', '2026-04-26 05:34:43'),
(363, 4, 46, '00:18:30', '2026-04-26 05:34:43', '2026-04-26 05:34:43'),
(364, 4, 108, '00:19:40', '2026-04-26 05:34:43', '2026-04-26 05:34:43'),
(365, 4, 35, '00:20:30', '2026-04-26 05:34:43', '2026-04-26 05:34:43'),
(366, 4, 26, '00:21:00', '2026-04-26 05:34:43', '2026-04-26 05:34:43'),
(367, 4, 89, '00:22:00', '2026-04-26 05:34:43', '2026-04-26 05:34:43'),
(368, 4, 47, '00:25:10', '2026-04-26 05:34:44', '2026-04-26 05:34:44'),
(369, 4, 63, '00:18:30', '2026-04-26 05:34:44', '2026-04-26 05:34:44'),
(370, 4, 24, '00:23:00', '2026-04-26 05:34:44', '2026-04-26 05:34:44'),
(371, 4, 102, '00:21:00', '2026-04-26 05:34:44', '2026-04-26 05:34:44'),
(372, 4, 84, '00:23:40', '2026-04-26 05:34:44', '2026-04-26 05:34:44'),
(373, 4, 93, '00:37:00', '2026-04-26 05:34:44', '2026-04-26 05:34:44'),
(374, 4, 105, '00:19:00', '2026-04-26 05:34:44', '2026-04-26 05:34:44'),
(375, 4, 50, '00:17:10', '2026-04-26 05:34:44', '2026-04-26 05:34:44'),
(376, 4, 61, '00:17:10', '2026-04-26 05:34:44', '2026-04-26 05:34:44'),
(377, 4, 62, '00:18:10', '2026-04-26 05:34:44', '2026-04-26 05:34:44'),
(378, 4, 31, '00:20:00', '2026-04-26 05:34:44', '2026-04-26 05:34:44'),
(379, 4, 82, '00:21:30', '2026-04-26 05:34:44', '2026-04-26 05:34:44'),
(380, 1, 37, '00:22:30', '2026-05-01 00:49:00', '2026-05-01 00:49:00'),
(381, 1, 88, '00:21:10', '2026-05-01 00:49:00', '2026-05-01 00:49:00'),
(382, 1, 119, '00:22:00', '2026-05-01 00:49:00', '2026-05-01 00:49:00'),
(383, 1, 59, '00:21:30', '2026-05-01 00:49:00', '2026-05-01 00:49:00'),
(384, 1, 111, '00:23:00', '2026-05-01 00:49:00', '2026-05-01 00:49:00'),
(385, 1, 104, '00:22:00', '2026-05-01 00:49:00', '2026-05-01 00:49:00'),
(386, 1, 113, '00:21:50', '2026-05-01 00:49:00', '2026-05-01 00:49:00'),
(387, 1, 95, '00:23:10', '2026-05-01 00:49:00', '2026-05-01 00:49:00'),
(388, 1, 34, '00:24:00', '2026-05-01 00:49:00', '2026-05-01 00:49:00'),
(389, 1, 66, '00:21:00', '2026-05-01 00:49:00', '2026-05-01 00:49:00'),
(390, 1, 29, '00:20:40', '2026-05-01 00:49:00', '2026-05-01 00:49:00'),
(391, 1, 128, '00:23:00', '2026-05-01 00:49:00', '2026-05-01 00:49:00'),
(392, 1, 60, '00:23:00', '2026-05-01 00:49:00', '2026-05-01 00:49:00'),
(393, 1, 24, '00:21:30', '2026-05-01 00:49:00', '2026-05-01 00:49:00'),
(394, 1, 118, '00:23:00', '2026-05-01 00:49:00', '2026-05-01 00:49:00'),
(395, 1, 65, '00:21:00', '2026-05-01 00:49:00', '2026-05-01 00:49:00'),
(396, 1, 54, '00:22:00', '2026-05-01 00:49:00', '2026-05-01 00:49:00'),
(397, 1, 93, '00:29:00', '2026-05-01 00:49:00', '2026-05-01 00:49:00'),
(398, 1, 105, '00:20:00', '2026-05-01 00:49:00', '2026-05-01 00:49:00'),
(399, 1, 125, '00:24:00', '2026-05-01 00:49:00', '2026-05-01 00:49:00'),
(400, 1, 32, '00:21:10', '2026-05-01 00:49:00', '2026-05-01 00:49:00'),
(401, 9, 69, '00:22:10', '2026-05-04 06:58:09', '2026-05-04 06:58:09'),
(402, 9, 92, '00:19:00', '2026-05-04 06:58:09', '2026-05-04 06:58:09'),
(403, 9, 88, '00:20:00', '2026-05-04 06:58:10', '2026-05-04 06:58:10'),
(404, 9, 99, '00:19:30', '2026-05-04 06:58:10', '2026-05-04 06:58:10'),
(405, 9, 110, '00:18:00', '2026-05-04 06:58:10', '2026-05-04 06:58:10'),
(406, 9, 75, '00:19:00', '2026-05-04 06:58:10', '2026-05-04 06:58:10'),
(407, 9, 111, '00:19:20', '2026-05-04 06:58:10', '2026-05-04 06:58:10'),
(408, 9, 34, '00:21:30', '2026-05-04 06:58:10', '2026-05-04 06:58:10'),
(409, 9, 120, '00:21:00', '2026-05-04 06:58:10', '2026-05-04 06:58:10'),
(410, 9, 124, '00:22:10', '2026-05-04 06:58:10', '2026-05-04 06:58:10'),
(411, 9, 64, '00:21:10', '2026-05-04 06:58:10', '2026-05-04 06:58:10'),
(412, 9, 85, '00:21:40', '2026-05-04 06:58:10', '2026-05-04 06:58:10'),
(413, 9, 108, '00:18:30', '2026-05-04 06:58:11', '2026-05-04 06:58:11'),
(414, 9, 26, '00:20:10', '2026-05-04 06:58:11', '2026-05-04 06:58:11'),
(415, 9, 24, '00:19:40', '2026-05-04 06:58:11', '2026-05-04 06:58:11'),
(416, 9, 102, '00:19:40', '2026-05-04 06:58:11', '2026-05-04 06:58:11'),
(417, 9, 71, '00:19:00', '2026-05-04 06:58:11', '2026-05-04 06:58:11'),
(418, 9, 93, '00:26:00', '2026-05-04 06:58:11', '2026-05-04 06:58:11'),
(419, 9, 121, '00:19:40', '2026-05-04 06:58:11', '2026-05-04 06:58:11'),
(420, 9, 105, '00:19:10', '2026-05-04 06:58:11', '2026-05-04 06:58:11'),
(421, 9, 127, '00:18:00', '2026-05-04 06:58:12', '2026-05-04 06:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `dahya_weeks`
--

CREATE TABLE `dahya_weeks` (
  `id` bigint UNSIGNED NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `week_number` tinyint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dahya_weeks`
--

INSERT INTO `dahya_weeks` (`id`, `month`, `week_number`, `date`, `created_at`, `updated_at`) VALUES
(1, 'April', 1, '2026-01-04', '2026-04-25 07:23:17', '2026-05-01 00:48:59'),
(2, 'April', 2, '2026-04-25', '2026-04-25 07:23:18', '2026-04-25 07:23:18'),
(3, 'April', 3, '2026-04-25', '2026-04-25 07:23:18', '2026-04-25 07:23:18'),
(4, 'April', 4, '2026-04-26', '2026-04-25 07:23:18', '2026-04-26 05:34:42'),
(5, 'January', 1, '2026-01-04', '2026-04-25 11:33:47', '2026-04-25 12:39:32'),
(6, 'January', 2, '2026-01-11', '2026-04-25 11:33:47', '2026-04-25 12:55:21'),
(7, 'January', 3, '2026-01-18', '2026-04-25 11:33:47', '2026-04-25 12:59:28'),
(8, 'January', 4, '2026-04-25', '2026-04-25 11:33:47', '2026-04-25 11:33:47'),
(9, 'May', 1, '2026-05-03', '2026-05-04 05:54:49', '2026-05-04 06:58:08'),
(10, 'May', 2, '2026-05-04', '2026-05-04 05:54:49', '2026-05-04 05:54:49'),
(11, 'May', 3, '2026-05-04', '2026-05-04 05:54:49', '2026-05-04 05:54:49'),
(12, 'May', 4, '2026-05-04', '2026-05-04 05:54:49', '2026-05-04 05:54:49');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fog_users`
--

CREATE TABLE `fog_users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'جندى',
  `age` int NOT NULL,
  `groub_id` bigint UNSIGNED NOT NULL,
  `medanya_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fog_users`
--

INSERT INTO `fog_users` (`id`, `name`, `role`, `age`, `groub_id`, `medanya_id`, `created_at`, `updated_at`) VALUES
(20, 'مصطفى إبراهم محمـد', 'جندى', 20, 1, 1, '2026-03-16 12:20:01', '2026-03-16 12:20:01'),
(21, 'زياد الغريب محمـد', 'جندى', 20, 1, 1, '2026-03-16 12:20:01', '2026-03-16 12:20:01'),
(22, 'على إبراهيم إبراهيم', 'جندى', 20, 1, 1, '2026-03-16 12:20:02', '2026-03-16 12:20:02'),
(23, 'خالد عصام جاد', 'جندى', 20, 1, 1, '2026-03-16 12:20:02', '2026-03-16 12:20:02'),
(24, 'محمـد زرق السيد', 'جندى', 20, 1, 1, '2026-03-16 12:20:02', '2026-03-16 12:20:02'),
(25, 'مصطفى إبراهم المتولى', 'جندى', 20, 1, 2, '2026-03-16 12:20:02', '2026-03-16 12:20:02'),
(26, 'فارس محمـد صديق', 'جندى', 20, 1, 2, '2026-03-16 12:20:02', '2026-03-16 12:20:02'),
(27, 'محمـد على محمود أحمد', 'جندى', 20, 1, 2, '2026-03-16 12:20:02', '2026-03-16 12:20:02'),
(28, 'عبده محمـد عبدالفتاح', 'جندى', 20, 1, 2, '2026-03-16 12:20:02', '2026-03-16 12:20:02'),
(29, 'شريف بشير السيد', 'جندى', 20, 1, 3, '2026-03-16 12:20:02', '2026-03-16 12:20:02'),
(30, 'عبدالرحمن محمـد فريد', 'جندى', 20, 1, 3, '2026-03-16 12:20:02', '2026-03-16 12:20:02'),
(31, 'يوسف رجب رشاد', 'جندى', 20, 1, 3, '2026-03-16 12:20:02', '2026-03-16 12:20:02'),
(32, 'يوسف إبراهيم محمـد', 'جندى', 20, 1, 3, '2026-03-16 12:20:02', '2026-03-16 12:20:02'),
(34, 'رضا عصام بركات', 'جندى', 20, 4, 4, '2026-03-16 12:20:02', '2026-03-16 12:20:02'),
(35, 'فارس سلامة عطالله', 'جندى', 20, 1, 4, '2026-03-16 12:20:02', '2026-03-16 12:20:02'),
(36, 'أحمد صلاح حامد', 'جندى', 20, 1, 4, '2026-03-16 12:20:02', '2026-03-16 12:20:02'),
(37, 'أحمد علاء منصور', 'جندى', 20, 1, 4, '2026-03-16 12:20:02', '2026-03-16 12:20:02'),
(39, 'إبراهيم عمرو محمـد', 'جندى', 20, 1, 4, '2026-03-16 12:20:02', '2026-03-16 12:20:02'),
(41, 'سعد عادل محمـد', 'جندى', 20, 2, 1, '2026-03-16 12:20:02', '2026-03-16 12:20:02'),
(42, 'عمرو خالد صبيح', 'جندى', 20, 2, 1, '2026-03-16 12:20:02', '2026-03-16 12:20:02'),
(44, 'هشام إبراهيم سريا', 'جندى', 20, 2, 1, '2026-03-16 12:20:03', '2026-03-16 12:20:03'),
(45, 'ياسر أبو النصر محمـد', 'جندى', 20, 2, 2, '2026-03-16 12:20:03', '2026-03-16 12:20:03'),
(46, 'عمرو رمضان الشحات', 'جندى', 20, 2, 2, '2026-03-16 12:20:03', '2026-03-16 12:20:03'),
(47, 'كريم عيد شحاته', 'جندى', 20, 2, 2, '2026-03-16 12:20:03', '2026-03-16 12:20:03'),
(48, 'يوسف ربيع عبدالعزيز', 'جندى', 20, 2, 2, '2026-03-16 12:20:03', '2026-03-16 12:20:03'),
(49, 'أحمد زكريا مسعد', 'جندى', 20, 2, 3, '2026-03-16 12:20:03', '2026-03-16 12:20:03'),
(50, 'محمود فتحى حامد', 'جندى', 20, 2, 3, '2026-03-16 12:20:03', '2026-03-16 12:20:03'),
(51, 'عبدالله غريب على', 'جندى', 20, 2, 3, '2026-03-16 12:20:03', '2026-03-16 12:20:03'),
(52, 'جمال ممدوح يوسف ', 'جندى', 20, 2, 3, '2026-03-16 12:20:03', '2026-03-16 12:20:03'),
(53, 'أمير نبيه عبدالهادى', 'جندى', 20, 2, 4, '2026-03-16 12:20:03', '2026-03-16 12:20:03'),
(54, 'محمـد عكاشه عمر', 'جندى', 20, 2, 4, '2026-03-16 12:20:03', '2026-03-16 12:20:03'),
(55, 'أحمد عبدالبديع محـمـد', 'جندى', 20, 2, 4, '2026-03-16 12:20:03', '2026-03-16 12:20:03'),
(57, 'محمـد رمضان السيد', 'جندى', 20, 2, 4, '2026-03-16 12:20:03', '2026-03-16 12:20:03'),
(58, 'محمـد طارق عطيه', 'جندى', 20, 2, 4, '2026-03-16 12:20:03', '2026-03-16 12:20:03'),
(59, 'أحمد مصطفى شفيق', 'جندى', 20, 2, 4, '2026-03-16 12:20:03', '2026-03-16 12:20:03'),
(60, 'عاصم محمـد وجيه', 'جندى', 20, 3, 1, '2026-03-16 12:20:04', '2026-03-16 12:20:04'),
(61, 'نبيل محمـد عاشور', 'جندى', 20, 3, 1, '2026-03-16 12:20:04', '2026-03-16 12:20:04'),
(62, 'يسرى أحمد على', 'جندى', 20, 3, 1, '2026-03-16 12:20:04', '2026-03-16 12:20:04'),
(63, 'محمـد رضا عطيه', 'جندى', 20, 3, 1, '2026-03-16 12:20:04', '2026-03-16 12:20:04'),
(64, 'على السيد على', 'جندى', 20, 3, 1, '2026-03-16 12:20:04', '2026-03-16 12:20:04'),
(65, 'محمـد عصمت حنيدق', 'جندى', 20, 3, 1, '2026-03-16 12:20:04', '2026-03-16 12:20:04'),
(66, 'سامح محمد محمد', 'جندى', 20, 2, 1, '2026-03-16 12:20:04', '2026-03-16 12:20:04'),
(68, 'حسين نورالدين سليم', 'جندى', 20, 3, 2, '2026-03-16 12:20:04', '2026-03-16 12:20:04'),
(69, ' ضياء أحمد حسين', 'جندى', 20, 3, 2, '2026-03-16 12:20:04', '2026-03-16 12:20:04'),
(70, 'عمر محمـد شعيب', 'جندى', 20, 3, 2, '2026-03-16 12:20:04', '2026-03-16 12:20:04'),
(71, 'محمـد محمود شحاته', 'جندى', 20, 3, 3, '2026-03-16 12:20:04', '2026-03-16 12:20:04'),
(72, 'رأفت السيد السيد', 'جندى', 20, 3, 3, '2026-03-16 12:20:04', '2026-03-16 12:20:04'),
(73, 'محمـد شريف محمـد', 'جندى', 20, 3, 3, '2026-03-16 12:20:04', '2026-03-16 12:20:04'),
(74, 'إسلام سعد محمـد ', 'جندى', 20, 3, 3, '2026-03-16 12:20:04', '2026-03-16 12:20:04'),
(75, 'إسماعيل شعبان حسين', 'جندى', 20, 3, 4, '2026-03-16 12:20:04', '2026-03-16 12:20:04'),
(78, 'محمـد السيد عباس', 'جندى', 20, 3, 4, '2026-03-16 12:20:04', '2026-03-16 12:20:04'),
(82, 'يوسف وليد حسن', 'جندى', 20, 3, 4, '2026-03-16 12:20:04', '2026-03-16 12:20:04'),
(83, 'على الهادى على', 'جندى', 20, 3, 4, '2026-03-16 12:20:05', '2026-03-16 12:20:05'),
(84, 'محمـد محمـد حسن', 'جندى', 20, 4, 1, '2026-03-16 12:20:05', '2026-03-16 12:20:05'),
(85, 'عمر إيهاب أحمد', 'جندى', 20, 4, 1, '2026-03-16 12:20:05', '2026-03-16 12:20:05'),
(86, 'محمود وحيد فرج أحمد', 'جندى', 20, 4, 1, '2026-03-16 12:20:05', '2026-03-16 12:20:05'),
(88, 'أحمد على شعبان', 'جندى', 20, 4, 1, '2026-03-16 12:20:05', '2026-03-16 12:20:05'),
(89, 'كريم سامى محمـد', 'جندى', 20, 4, 1, '2026-03-16 12:20:05', '2026-03-16 12:20:05'),
(90, 'محمـد عبدالحكيم سالم', 'جندى', 20, 4, 1, '2026-03-16 12:20:05', '2026-03-16 12:20:05'),
(91, 'محمـد أكرم جمال', 'جندى', 20, 4, 1, '2026-03-16 12:20:05', '2026-03-16 12:20:05'),
(92, 'أحمد أشرف محمـد', 'جندى', 20, 4, 1, '2026-03-16 12:20:05', '2026-03-16 12:20:05'),
(93, 'محمـد مصطفى أبو الحسن', 'جندى', 20, 4, 1, '2026-03-16 12:20:05', '2026-03-16 12:20:05'),
(94, 'أحمد إيهاب مسعود', 'جندى', 20, 4, 1, '2026-03-16 12:20:05', '2026-03-20 14:48:54'),
(95, 'ربيع سعد عبدالهادى إبراهيم', 'جندى', 20, 4, 1, '2026-03-16 12:20:05', '2026-03-16 12:20:05'),
(96, 'محمـد سعد الدسوقى سنجاب', 'جندى', 20, 4, 1, '2026-03-16 12:20:05', '2026-03-16 12:20:05'),
(97, 'مازن إيهاب سليمان الفار', 'جندى', 20, 4, 2, '2026-03-16 12:20:05', '2026-03-16 12:20:05'),
(98, 'كريم شريف إسماعيل', 'جندى', 20, 4, 2, '2026-03-16 12:20:05', '2026-03-16 12:20:05'),
(99, 'أحمد عوض مصطفى ', 'جندى', 20, 4, 2, '2026-03-16 12:20:05', '2026-03-16 12:20:05'),
(100, 'محمـد أحمد قدرى', 'جندى', 20, 4, 2, '2026-03-16 12:20:05', '2026-03-16 12:20:05'),
(101, 'عبدالمعطى أشرف عبدالمعطي', 'جندى', 20, 4, 2, '2026-03-16 12:20:05', '2026-03-16 12:20:05'),
(102, 'محمـد على صبرى', 'جندى', 20, 4, 2, '2026-03-16 12:20:05', '2026-03-16 12:20:05'),
(103, 'أحمد نادر عبدالمنعم', 'جندى', 20, 4, 2, '2026-03-16 12:20:05', '2026-03-16 12:20:05'),
(104, 'بدر على بدر', 'جندى', 20, 4, 2, '2026-03-16 12:20:05', '2026-03-16 12:20:05'),
(105, 'محمد سعد إبراهيم سعد', 'جندى', 20, 4, 2, '2026-03-16 12:20:05', '2026-03-20 18:07:35'),
(106, 'على عثمان رجب', 'جندى', 20, 4, 2, '2026-03-16 12:20:05', '2026-03-16 12:20:05'),
(107, 'إسحاق خالد إبراهيم', 'جندى', 20, 4, 3, '2026-03-16 12:20:05', '2026-03-16 12:20:05'),
(108, 'فارس جميل عبدالحميد على', 'جندى', 20, 4, 3, '2026-03-16 12:20:06', '2026-03-16 12:20:06'),
(109, 'يوسف سامي حسن', 'جندى', 20, 4, 3, '2026-03-16 12:20:06', '2026-03-16 12:20:06'),
(110, 'إسلام محمـد عوض', 'جندى', 20, 4, 3, '2026-03-16 12:20:06', '2026-03-16 12:20:06'),
(111, 'المتولى ود غريب', 'جندى', 20, 4, 3, '2026-03-16 12:20:06', '2026-03-16 12:20:06'),
(112, 'السيد أحمد السيد', 'جندى', 20, 4, 3, '2026-03-16 12:20:06', '2026-03-16 12:20:06'),
(113, 'بسام علاء يسن', 'جندى', 20, 4, 4, '2026-03-16 12:20:06', '2026-03-16 12:20:06'),
(114, 'محمـدعمرو عبدالرازق', 'جندى', 20, 4, 4, '2026-03-16 12:20:06', '2026-03-16 12:20:06'),
(115, 'أحمد هانى أحمد سليم', 'جندى', 20, 4, 4, '2026-03-16 12:20:06', '2026-03-16 12:20:06'),
(116, 'أحمد سعد طلبه', 'جندى', 20, 4, 4, '2026-03-16 12:20:06', '2026-03-16 12:20:06'),
(117, 'أحمد إبراهيم السيد إبراهيم', 'جندى', 20, 4, 4, '2026-03-16 12:20:06', '2026-03-16 12:20:06'),
(118, 'محمـد سامى جميل', 'جندى', 20, 4, 4, '2026-03-16 12:20:06', '2026-03-16 12:20:06'),
(119, 'أحمد محمـد محمـد أبوالفتوح ', 'جندى', 20, 4, 4, '2026-03-16 12:20:06', '2026-03-16 12:20:06'),
(120, 'سعيد أشرف محمـد ', 'جندى', 20, 4, 4, '2026-03-16 12:20:06', '2026-03-16 12:20:06'),
(121, 'محمـد وائل عبد الحميد', 'جندى', 20, 4, 4, '2026-03-16 12:20:06', '2026-03-16 12:20:06'),
(122, 'أحمد محمـد زكى العجوز', 'جندى', 20, 4, 4, '2026-03-16 12:20:06', '2026-03-16 12:20:06'),
(123, 'محمود إبراهيم عثمان عثمان', 'جندى', 20, 4, 4, '2026-03-16 12:20:06', '2026-03-16 12:20:06'),
(124, 'عبدالعزيز ناصر حافظ', 'جندى', 20, 4, 2, '2026-03-20 19:05:33', '2026-03-20 19:05:33'),
(125, 'محمد فتحى عبدالعزيز', 'جندى', 20, 4, 2, '2026-03-20 19:06:09', '2026-03-20 19:06:09'),
(126, 'حسنى ناصر شعبان', 'جندى', 20, 1, 1, '2026-03-20 19:26:33', '2026-03-20 19:26:33'),
(127, 'وليد إبراهيمعبدالهادى', 'جندى', 20, 3, 3, '2026-03-22 08:29:45', '2026-03-22 08:29:45'),
(128, 'عادل عادل الغريب حماد', 'جندى', 20, 4, 4, '2026-03-22 08:30:37', '2026-03-22 08:30:37'),
(129, 'إبراهيم محمد إبراهيم', 'ملازم أول', 24, 4, 2, '2026-04-04 07:48:06', '2026-04-04 07:48:06');

-- --------------------------------------------------------

--
-- Table structure for table `groubs`
--

CREATE TABLE `groubs` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groubs`
--

INSERT INTO `groubs` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'الكتيبة الأولى ( ك 1 )', NULL, '2026-02-26 14:56:54'),
(2, '( ك  2 ) الكتيبة الثانية', NULL, '2026-02-26 15:11:36'),
(3, '( ك 3 ) الكتيبة الثالثة', NULL, '2026-02-26 15:12:09'),
(4, ' ( قيا ) قيادة الفوج', NULL, '2026-03-16 09:19:43');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leyaqas`
--

CREATE TABLE `leyaqas` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leyaqas`
--

INSERT INTO `leyaqas` (`id`, `name`, `month`, `created_at`, `updated_at`) VALUES
(25, 'First Medanya', 'April', '2026-03-19 18:28:32', '2026-03-19 18:28:32'),
(26, 'Second Medanya', 'April', '2026-03-19 18:28:32', '2026-03-19 18:28:32'),
(27, 'Third Medanya', 'April', '2026-03-19 18:28:32', '2026-03-19 18:28:32'),
(28, 'Fourth Medanya', 'April', '2026-03-19 18:28:32', '2026-03-19 18:28:32'),
(29, 'First Medanya', 'December', '2026-03-20 00:16:29', '2026-03-20 00:16:29'),
(30, 'Second Medanya', 'December', '2026-03-20 00:16:29', '2026-03-20 00:16:29'),
(31, 'Third Medanya', 'December', '2026-03-20 00:16:29', '2026-03-20 00:16:29'),
(32, 'Fourth Medanya', 'December', '2026-03-20 00:16:29', '2026-03-20 00:16:29'),
(33, 'First Medanya', 'July', '2026-03-27 17:22:56', '2026-03-27 17:22:56'),
(34, 'Second Medanya', 'July', '2026-03-27 17:22:56', '2026-03-27 17:22:56'),
(35, 'Third Medanya', 'July', '2026-03-27 17:22:56', '2026-03-27 17:22:56'),
(36, 'Fourth Medanya', 'July', '2026-03-27 17:22:56', '2026-03-27 17:22:56'),
(37, 'First Medanya', 'october', '2026-03-29 08:50:28', '2026-03-29 08:50:28'),
(38, 'Second Medanya', 'october', '2026-03-29 08:50:28', '2026-03-29 08:50:28'),
(39, 'Third Medanya', 'october', '2026-03-29 08:50:28', '2026-03-29 08:50:28'),
(40, 'Fourth Medanya', 'october', '2026-03-29 08:50:28', '2026-03-29 08:50:28'),
(41, 'First Medanya', 'September', '2026-03-29 08:47:21', '2026-03-29 08:47:21'),
(42, 'Second Medanya', 'September', '2026-03-29 08:47:21', '2026-03-29 08:47:21'),
(43, 'Third Medanya', 'September', '2026-03-29 08:47:22', '2026-03-29 08:47:22'),
(44, 'Fourth Medanya', 'September', '2026-03-29 08:47:22', '2026-03-29 08:47:22'),
(45, 'First Medanya', 'December', '2026-04-04 07:48:37', '2026-04-04 07:48:37'),
(46, 'Second Medanya', 'December', '2026-04-04 07:48:37', '2026-04-04 07:48:37'),
(47, 'Third Medanya', 'December', '2026-04-04 07:48:37', '2026-04-04 07:48:37'),
(48, 'Fourth Medanya', 'December', '2026-04-04 07:48:37', '2026-04-04 07:48:37');

-- --------------------------------------------------------

--
-- Table structure for table `medanyas`
--

CREATE TABLE `medanyas` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medanyas`
--

INSERT INTO `medanyas` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'first Medanya', '2026-02-27 06:34:09', '2026-02-27 06:34:09'),
(2, 'Second Medanya', '2026-02-27 06:34:30', '2026-02-27 06:34:30'),
(3, 'Third Medanya', '2026-02-27 06:34:48', '2026-02-27 06:34:48'),
(4, 'Fourth Medanya', '2026-02-27 06:34:58', '2026-02-27 06:34:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_02_18_092918_create_leyaqas_table', 2),
(5, '2026_02_19_002939_create_groubs_table', 3),
(6, '2026_02_26_172127_create_fog_users_table', 4),
(7, '2026_02_27_080555_create_medanyas_table', 5),
(8, '2026_02_27_080933_add_medanya_id_to_users_table', 6),
(9, '2026_02_28_124716_create_workout_scores_table', 7),
(10, '2026_02_28_171212_create_tests_table', 8),
(11, '2026_03_06_192812_change_score_type_tests', 9),
(12, '2026_03_15_092549_add_month_to_leyaqas', 10),
(14, '2026_03_16_200250_remove_month_from_medanyas_table', 11),
(15, '2025_01_01_000000_swap_medanya_id_for_leyaqa_id_on_tests', 12),
(16, '2026_03_16_204125_swap_medanya_id_for_leyaqa_id', 13),
(19, '2026_04_06_064404_create_quick_tests_table', 14),
(20, '2026_04_23_150503_create_dahyas_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quick_tests`
--

CREATE TABLE `quick_tests` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('BMoWJIyC6jqCLzkNbLWOo63jHLaczKANt2yJ845w', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiTlpRNmZ2SG1JS0pJS3M0dXlLd2drZGhLQ05xeFk1YXN2ZVRDYnBvUCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjI6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvdGFkcmViNzA3IjtzOjU6InJvdXRlIjtzOjM0OiJmaWxhbWVudC50YWRyZWI3MDcucGFnZXMuZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2NDoiNGRkNjc4ZDUzYTkxMzQ2ZmJhODhhZmVkMTQ5MjkzMWQ1NzIyMjJhYmRjZGY3YmNmYTkyN2Q5MDI2ODgyYWM0MiI7czo4OiJmaWxhbWVudCI7YTowOnt9czo2OiJ0YWJsZXMiO2E6NTp7czo0MDoiMjg3MzlhZmM0M2M5NzE2MmRiZWMwMTg0OWZiNTA5N2VfY29sdW1ucyI7YTo1OntpOjA7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTI6IndvcmtvdXRfdHlwZSI7czo1OiJsYWJlbCI7czoxMjoiV29ya291dCB0eXBlIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMToic2NvcmVfdmFsdWUiO3M6NToibGFiZWwiO3M6MTE6IlNjb3JlIHZhbHVlIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoicGVyY2VudGFnZSI7czo1OiJsYWJlbCI7czoxMDoiUGVyY2VudGFnZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjM7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NzoibWluX2FnZSI7czo1OiJsYWJlbCI7czo3OiJNaW4gYWdlIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO2I6MTt9aTo0O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjc6Im1heF9hZ2UiO3M6NToibGFiZWwiO3M6NzoiTWF4IGFnZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fX1zOjQwOiI3ZmQ2NjU5YTYyODFhMmE2ZjUwZGVlYzY4ZDgyYTU3M19jb2x1bW5zIjthOjE6e2k6MDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo0OiJuYW1lIjtzOjU6ImxhYmVsIjtzOjQ6Ik5hbWUiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9fXM6NDA6ImQ1ZjE4MzU2ODYyN2YxNzdhYzEyODNhNzk3ZGFjZmNhX2NvbHVtbnMiO2E6MTp7aTowO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjQ6Im5hbWUiO3M6NToibGFiZWwiO3M6NDoiTmFtZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO319czo0MDoiZTY0NDgzM2Y0ZTRlMDg3MTIzMTVkYTcxYjMzZmFjZDJfY29sdW1ucyI7YToyOntpOjA7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NDoibmFtZSI7czo1OiJsYWJlbCI7czo0OiJOYW1lIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMjoibWVkYW55YS5uYW1lIjtzOjU6ImxhYmVsIjtzOjc6Ik1lZGFueWEiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9fXM6NDA6IjRkMWJiOTUyNTdmZGY4ZjE5OGJlMzdmOGI1NzAzOTk5X2NvbHVtbnMiO2E6NDp7aTowO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEyOiJsZXlhcWEubW9udGgiO3M6NToibGFiZWwiO3M6MTE6IkxleWFxYSBUZXN0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo0OiJuYW1lIjtzOjU6ImxhYmVsIjtzOjg6IkV4ZXJjaXNlIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo2OiJudWJtZXIiO3M6NToibGFiZWwiO3M6NToiQ291bnQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTozO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjU6InNjb3JlIjtzOjU6ImxhYmVsIjtzOjc6IlNjb3JlICUiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9fX19', 1778366589);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nubmer` int NOT NULL,
  `score` double NOT NULL,
  `users_id` bigint UNSIGNED NOT NULL,
  `leyaqa_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `name`, `nubmer`, `score`, `users_id`, `leyaqa_id`, `created_at`, `updated_at`) VALUES
(209, 'pushup', 12, 10, 29, 27, '2026-03-19 18:41:36', '2026-03-19 18:41:36'),
(210, 'pullup', 122, 100, 29, 27, '2026-03-19 18:41:36', '2026-03-19 18:41:36'),
(211, 'situps', 1211, 100, 29, 27, '2026-03-19 18:41:36', '2026-03-19 18:41:36'),
(212, 'moderated_run', 12, 17.5, 29, 27, '2026-03-19 18:41:36', '2026-03-19 18:41:36'),
(213, 'pushup', 0, 10, 30, 27, '2026-03-19 18:41:36', '2026-03-19 18:41:36'),
(214, 'pullup', 0, 10, 30, 27, '2026-03-19 18:41:36', '2026-03-19 18:41:36'),
(215, 'situps', 0, 10, 30, 27, '2026-03-19 18:41:36', '2026-03-19 18:41:36'),
(216, 'moderated_run', 0, 10, 30, 27, '2026-03-19 18:41:36', '2026-03-19 18:41:36'),
(217, 'pushup', 0, 10, 31, 27, '2026-03-19 18:41:36', '2026-03-19 18:41:36'),
(218, 'pullup', 0, 10, 31, 27, '2026-03-19 18:41:36', '2026-03-19 18:41:36'),
(219, 'situps', 0, 10, 31, 27, '2026-03-19 18:41:36', '2026-03-19 18:41:36'),
(220, 'moderated_run', 0, 10, 31, 27, '2026-03-19 18:41:36', '2026-03-19 18:41:36'),
(221, 'pushup', 0, 10, 32, 27, '2026-03-19 18:41:36', '2026-03-19 18:41:36'),
(222, 'pullup', 0, 10, 32, 27, '2026-03-19 18:41:36', '2026-03-19 18:41:36'),
(223, 'situps', 0, 10, 32, 27, '2026-03-19 18:41:36', '2026-03-19 18:41:36'),
(224, 'moderated_run', 0, 10, 32, 27, '2026-03-19 18:41:37', '2026-03-19 18:41:37'),
(225, 'pushup', 0, 10, 49, 27, '2026-03-19 18:41:37', '2026-03-19 18:41:37'),
(226, 'pullup', 0, 10, 49, 27, '2026-03-19 18:41:37', '2026-03-19 18:41:37'),
(227, 'situps', 0, 10, 49, 27, '2026-03-19 18:41:37', '2026-03-19 18:41:37'),
(228, 'moderated_run', 0, 10, 49, 27, '2026-03-19 18:41:37', '2026-03-19 18:41:37'),
(229, 'pushup', 0, 10, 50, 27, '2026-03-19 18:41:37', '2026-03-19 18:41:37'),
(230, 'pullup', 0, 10, 50, 27, '2026-03-19 18:41:37', '2026-03-19 18:41:37'),
(231, 'situps', 0, 10, 50, 27, '2026-03-19 18:41:37', '2026-03-19 18:41:37'),
(232, 'moderated_run', 0, 10, 50, 27, '2026-03-19 18:41:37', '2026-03-19 18:41:37'),
(233, 'pushup', 0, 10, 51, 27, '2026-03-19 18:41:37', '2026-03-19 18:41:37'),
(234, 'pullup', 0, 10, 51, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(235, 'situps', 0, 10, 51, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(236, 'moderated_run', 0, 10, 51, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(237, 'pushup', 0, 10, 52, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(238, 'pullup', 0, 10, 52, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(239, 'situps', 0, 10, 52, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(240, 'moderated_run', 0, 10, 52, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(241, 'pushup', 0, 10, 71, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(242, 'pullup', 0, 10, 71, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(243, 'situps', 0, 10, 71, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(244, 'moderated_run', 0, 10, 71, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(245, 'pushup', 0, 10, 72, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(246, 'pullup', 0, 10, 72, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(247, 'situps', 0, 10, 72, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(248, 'moderated_run', 0, 10, 72, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(249, 'pushup', 0, 10, 73, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(250, 'pullup', 0, 10, 73, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(251, 'situps', 0, 10, 73, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(252, 'moderated_run', 0, 10, 73, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(253, 'pushup', 0, 10, 74, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(254, 'pullup', 0, 10, 74, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(255, 'situps', 0, 10, 74, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(256, 'moderated_run', 0, 10, 74, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(257, 'pushup', 0, 10, 107, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(258, 'pullup', 0, 10, 107, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(259, 'situps', 0, 10, 107, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(260, 'moderated_run', 0, 10, 107, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(261, 'pushup', 0, 10, 108, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(262, 'pullup', 0, 10, 108, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(263, 'situps', 0, 10, 108, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(264, 'moderated_run', 0, 10, 108, 27, '2026-03-19 18:41:38', '2026-03-19 18:41:38'),
(265, 'pushup', 0, 10, 109, 27, '2026-03-19 18:41:39', '2026-03-19 18:41:39'),
(266, 'pullup', 0, 10, 109, 27, '2026-03-19 18:41:39', '2026-03-19 18:41:39'),
(267, 'situps', 0, 10, 109, 27, '2026-03-19 18:41:39', '2026-03-19 18:41:39'),
(268, 'moderated_run', 0, 10, 109, 27, '2026-03-19 18:41:39', '2026-03-19 18:41:39'),
(269, 'pushup', 0, 10, 110, 27, '2026-03-19 18:41:39', '2026-03-19 18:41:39'),
(270, 'pullup', 0, 10, 110, 27, '2026-03-19 18:41:39', '2026-03-19 18:41:39'),
(271, 'situps', 0, 10, 110, 27, '2026-03-19 18:41:39', '2026-03-19 18:41:39'),
(272, 'moderated_run', 0, 10, 110, 27, '2026-03-19 18:41:39', '2026-03-19 18:41:39'),
(273, 'pushup', 0, 10, 111, 27, '2026-03-19 18:41:39', '2026-03-19 18:41:39'),
(274, 'pullup', 0, 10, 111, 27, '2026-03-19 18:41:39', '2026-03-19 18:41:39'),
(275, 'situps', 0, 10, 111, 27, '2026-03-19 18:41:39', '2026-03-19 18:41:39'),
(276, 'moderated_run', 0, 10, 111, 27, '2026-03-19 18:41:39', '2026-03-19 18:41:39'),
(277, 'pushup', 0, 10, 112, 27, '2026-03-19 18:41:39', '2026-03-19 18:41:39'),
(278, 'pullup', 0, 10, 112, 27, '2026-03-19 18:41:39', '2026-03-19 18:41:39'),
(279, 'situps', 0, 10, 112, 27, '2026-03-19 18:41:39', '2026-03-19 18:41:39'),
(280, 'moderated_run', 0, 10, 112, 27, '2026-03-19 18:41:39', '2026-03-19 18:41:39'),
(289, 'pushup', 45, 75, 69, 26, '2026-03-19 18:42:55', '2026-03-19 18:42:55'),
(290, 'pullup', 17, 75, 69, 26, '2026-03-19 18:42:55', '2026-03-19 18:42:55'),
(291, 'situps', 34, 10, 69, 26, '2026-03-19 18:42:55', '2026-03-19 18:42:55'),
(292, 'moderated_run', 45, 100, 69, 26, '2026-03-19 18:42:55', '2026-03-19 18:42:55'),
(297, 'pushup', 55, 100, 34, 28, '2026-03-19 19:10:50', '2026-03-19 19:10:50'),
(298, 'pullup', 14, 60, 34, 28, '2026-03-19 19:10:50', '2026-03-19 19:10:50'),
(299, 'situps', 40, 20, 34, 28, '2026-03-19 19:10:50', '2026-03-19 19:10:50'),
(300, 'moderated_run', 30, 62.5, 34, 28, '2026-03-19 19:10:50', '2026-03-19 19:10:50'),
(301, 'pushup', 41, 65, 35, 28, '2026-03-19 19:10:50', '2026-03-19 19:10:50'),
(302, 'pullup', 15, 65, 35, 28, '2026-03-19 19:10:50', '2026-03-19 19:10:50'),
(303, 'situps', 30, 10, 35, 28, '2026-03-19 19:10:50', '2026-03-19 19:10:50'),
(304, 'moderated_run', 30, 62.5, 35, 28, '2026-03-19 19:10:50', '2026-03-19 19:10:50'),
(305, 'pushup', 50, 87.5, 36, 28, '2026-03-19 19:10:50', '2026-03-19 19:10:50'),
(306, 'pullup', 16, 70, 36, 28, '2026-03-19 19:10:50', '2026-03-19 19:10:50'),
(307, 'situps', 40, 20, 36, 28, '2026-03-19 19:10:50', '2026-03-19 19:10:50'),
(308, 'moderated_run', 30, 62.5, 36, 28, '2026-03-19 19:10:50', '2026-03-19 19:10:50'),
(309, 'pushup', 35, 50, 37, 28, '2026-03-19 19:10:50', '2026-03-19 19:10:50'),
(310, 'pullup', 14, 60, 37, 28, '2026-03-19 19:10:50', '2026-03-19 19:10:50'),
(311, 'situps', 30, 10, 37, 28, '2026-03-19 19:10:50', '2026-03-19 19:10:50'),
(312, 'moderated_run', 40, 87.5, 37, 28, '2026-03-19 19:10:50', '2026-03-19 19:10:50'),
(313, 'pushup', 45, 75, 39, 28, '2026-03-19 19:10:50', '2026-03-19 19:10:50'),
(314, 'pullup', 17, 75, 39, 28, '2026-03-19 19:10:50', '2026-03-19 19:10:50'),
(315, 'situps', 30, 10, 39, 28, '2026-03-19 19:10:50', '2026-03-19 19:10:50'),
(316, 'moderated_run', 40, 87.5, 39, 28, '2026-03-19 19:10:50', '2026-03-19 19:10:50'),
(317, 'pushup', 40, 62.5, 53, 28, '2026-03-19 19:10:50', '2026-03-19 19:10:50'),
(318, 'pullup', 10, 40, 53, 28, '2026-03-19 19:10:50', '2026-03-19 19:10:50'),
(319, 'situps', 30, 10, 53, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(320, 'moderated_run', 40, 87.5, 53, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(321, 'pushup', 45, 75, 54, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(322, 'pullup', 16, 70, 54, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(323, 'situps', 40, 20, 54, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(324, 'moderated_run', 30, 62.5, 54, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(325, 'pushup', 55, 100, 55, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(326, 'pullup', 12, 50, 55, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(327, 'situps', 45, 30, 55, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(328, 'moderated_run', 30, 62.5, 55, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(329, 'pushup', 41, 65, 57, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(330, 'pullup', 14, 60, 57, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(331, 'situps', 30, 10, 57, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(332, 'moderated_run', 30, 62.5, 57, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(333, 'pushup', 40, 62.5, 58, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(334, 'pullup', 13, 55, 58, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(335, 'situps', 40, 20, 58, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(336, 'moderated_run', 30, 62.5, 58, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(337, 'pushup', 55, 100, 59, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(338, 'pullup', 15, 65, 59, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(339, 'situps', 45, 30, 59, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(340, 'moderated_run', 35, 75, 59, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(341, 'pushup', 45, 75, 75, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(342, 'pullup', 13, 55, 75, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(343, 'situps', 40, 20, 75, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(344, 'moderated_run', 30, 62.5, 75, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(345, 'pushup', 40, 62.5, 78, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(346, 'pullup', 12, 50, 78, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(347, 'situps', 45, 30, 78, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(348, 'moderated_run', 30, 62.5, 78, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(349, 'pushup', 40, 62.5, 82, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(350, 'pullup', 12, 50, 82, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(351, 'situps', 40, 20, 82, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(352, 'moderated_run', 30, 62.5, 82, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(353, 'pushup', 35, 50, 83, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(354, 'pullup', 12, 50, 83, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(355, 'situps', 35, 10, 83, 28, '2026-03-19 19:10:51', '2026-03-19 19:10:51'),
(356, 'moderated_run', 30, 62.5, 83, 28, '2026-03-19 19:10:52', '2026-03-19 19:10:52'),
(357, 'pushup', 55, 100, 113, 28, '2026-03-19 19:10:52', '2026-03-19 19:10:52'),
(358, 'pullup', 15, 65, 113, 28, '2026-03-19 19:10:52', '2026-03-19 19:10:52'),
(359, 'situps', 30, 10, 113, 28, '2026-03-19 19:10:52', '2026-03-19 19:10:52'),
(360, 'moderated_run', 40, 87.5, 113, 28, '2026-03-19 19:10:52', '2026-03-19 19:10:52'),
(361, 'pushup', 45, 75, 114, 28, '2026-03-19 19:10:52', '2026-03-19 19:10:52'),
(362, 'pullup', 12, 50, 114, 28, '2026-03-19 19:10:52', '2026-03-19 19:10:52'),
(363, 'situps', 45, 30, 114, 28, '2026-03-19 19:10:52', '2026-03-19 19:10:52'),
(364, 'moderated_run', 30, 62.5, 114, 28, '2026-03-19 19:10:52', '2026-03-19 19:10:52'),
(365, 'pushup', 35, 50, 115, 28, '2026-03-19 19:10:52', '2026-03-19 19:10:52'),
(366, 'pullup', 12, 50, 115, 28, '2026-03-19 19:10:52', '2026-03-19 19:10:52'),
(367, 'situps', 40, 20, 115, 28, '2026-03-19 19:10:52', '2026-03-19 19:10:52'),
(368, 'moderated_run', 40, 87.5, 115, 28, '2026-03-19 19:10:52', '2026-03-19 19:10:52'),
(369, 'pushup', 45, 75, 116, 28, '2026-03-19 19:10:52', '2026-03-19 19:10:52'),
(370, 'pullup', 12, 50, 116, 28, '2026-03-19 19:10:52', '2026-03-19 19:10:52'),
(371, 'situps', 35, 10, 116, 28, '2026-03-19 19:10:52', '2026-03-19 19:10:52'),
(372, 'moderated_run', 40, 87.5, 116, 28, '2026-03-19 19:10:52', '2026-03-19 19:10:52'),
(373, 'pushup', 55, 100, 117, 28, '2026-03-19 19:10:52', '2026-03-19 19:10:52'),
(374, 'pullup', 15, 65, 117, 28, '2026-03-19 19:10:52', '2026-03-19 19:10:52'),
(375, 'situps', 40, 20, 117, 28, '2026-03-19 19:10:53', '2026-03-19 19:10:53'),
(376, 'moderated_run', 35, 75, 117, 28, '2026-03-19 19:10:53', '2026-03-19 19:10:53'),
(377, 'pushup', 40, 62.5, 118, 28, '2026-03-19 19:10:53', '2026-03-19 19:10:53'),
(378, 'pullup', 15, 65, 118, 28, '2026-03-19 19:10:53', '2026-03-19 19:10:53'),
(379, 'situps', 30, 10, 118, 28, '2026-03-19 19:10:53', '2026-03-19 19:10:53'),
(380, 'moderated_run', 40, 87.5, 118, 28, '2026-03-19 19:10:53', '2026-03-19 19:10:53'),
(381, 'pushup', 45, 75, 119, 28, '2026-03-19 19:10:53', '2026-03-19 19:10:53'),
(382, 'pullup', 12, 50, 119, 28, '2026-03-19 19:10:53', '2026-03-19 19:10:53'),
(383, 'situps', 45, 30, 119, 28, '2026-03-19 19:10:53', '2026-03-19 19:10:53'),
(384, 'moderated_run', 30, 62.5, 119, 28, '2026-03-19 19:10:53', '2026-03-19 19:10:53'),
(385, 'pushup', 50, 87.5, 120, 28, '2026-03-19 19:10:53', '2026-03-19 19:10:53'),
(386, 'pullup', 20, 90, 120, 28, '2026-03-19 19:10:53', '2026-03-19 19:10:53'),
(387, 'situps', 59, 58, 120, 28, '2026-03-19 19:10:53', '2026-03-19 19:10:53'),
(388, 'moderated_run', 39, 85, 120, 28, '2026-03-19 19:10:53', '2026-03-19 19:10:53'),
(389, 'pushup', 45, 75, 121, 28, '2026-03-19 19:10:54', '2026-03-19 19:10:54'),
(390, 'pullup', 15, 65, 121, 28, '2026-03-19 19:10:54', '2026-03-19 19:10:54'),
(391, 'situps', 50, 40, 121, 28, '2026-03-19 19:10:54', '2026-03-19 19:10:54'),
(392, 'moderated_run', 30, 62.5, 121, 28, '2026-03-19 19:10:54', '2026-03-19 19:10:54'),
(393, 'pushup', 45, 75, 122, 28, '2026-03-19 19:10:54', '2026-03-19 19:10:54'),
(394, 'pullup', 12, 50, 122, 28, '2026-03-19 19:10:54', '2026-03-19 19:10:54'),
(395, 'situps', 40, 20, 122, 28, '2026-03-19 19:10:54', '2026-03-19 19:10:54'),
(396, 'moderated_run', 30, 62.5, 122, 28, '2026-03-19 19:10:54', '2026-03-19 19:10:54'),
(397, 'pushup', 45, 75, 123, 28, '2026-03-19 19:10:54', '2026-03-19 19:10:54'),
(398, 'pullup', 12, 50, 123, 28, '2026-03-19 19:10:54', '2026-03-19 19:10:54'),
(399, 'situps', 40, 20, 123, 28, '2026-03-19 19:10:54', '2026-03-19 19:10:54'),
(400, 'moderated_run', 35, 75, 123, 28, '2026-03-19 19:10:54', '2026-03-19 19:10:54'),
(401, 'pushup', 0, 10, 25, 30, '2026-03-20 00:19:45', '2026-03-20 00:19:45'),
(402, 'pullup', 0, 10, 25, 30, '2026-03-20 00:19:46', '2026-03-20 00:19:46'),
(403, 'situps', 0, 10, 25, 30, '2026-03-20 00:19:46', '2026-03-20 00:19:46'),
(404, 'moderated_run', 0, 10, 25, 30, '2026-03-20 00:19:46', '2026-03-20 00:19:46'),
(405, 'pushup', 0, 10, 26, 30, '2026-03-20 00:19:46', '2026-03-20 00:19:46'),
(406, 'pullup', 0, 10, 26, 30, '2026-03-20 00:19:46', '2026-03-20 00:19:46'),
(407, 'situps', 0, 10, 26, 30, '2026-03-20 00:19:46', '2026-03-20 00:19:46'),
(408, 'moderated_run', 0, 10, 26, 30, '2026-03-20 00:19:46', '2026-03-20 00:19:46'),
(409, 'pushup', 0, 10, 27, 30, '2026-03-20 00:19:46', '2026-03-20 00:19:46'),
(410, 'pullup', 0, 10, 27, 30, '2026-03-20 00:19:46', '2026-03-20 00:19:46'),
(411, 'situps', 0, 10, 27, 30, '2026-03-20 00:19:46', '2026-03-20 00:19:46'),
(412, 'moderated_run', 0, 10, 27, 30, '2026-03-20 00:19:46', '2026-03-20 00:19:46'),
(413, 'pushup', 0, 10, 28, 30, '2026-03-20 00:19:46', '2026-03-20 00:19:46'),
(414, 'pullup', 0, 10, 28, 30, '2026-03-20 00:19:46', '2026-03-20 00:19:46'),
(415, 'situps', 0, 10, 28, 30, '2026-03-20 00:19:46', '2026-03-20 00:19:46'),
(416, 'moderated_run', 0, 10, 28, 30, '2026-03-20 00:19:47', '2026-03-20 00:19:47'),
(417, 'pushup', 0, 10, 45, 30, '2026-03-20 00:19:47', '2026-03-20 00:19:47'),
(418, 'pullup', 0, 10, 45, 30, '2026-03-20 00:19:47', '2026-03-20 00:19:47'),
(419, 'situps', 0, 10, 45, 30, '2026-03-20 00:19:47', '2026-03-20 00:19:47'),
(420, 'moderated_run', 0, 10, 45, 30, '2026-03-20 00:19:47', '2026-03-20 00:19:47'),
(421, 'pushup', 0, 10, 46, 30, '2026-03-20 00:19:47', '2026-03-20 00:19:47'),
(422, 'pullup', 0, 10, 46, 30, '2026-03-20 00:19:47', '2026-03-20 00:19:47'),
(423, 'situps', 0, 10, 46, 30, '2026-03-20 00:19:47', '2026-03-20 00:19:47'),
(424, 'moderated_run', 0, 10, 46, 30, '2026-03-20 00:19:47', '2026-03-20 00:19:47'),
(425, 'pushup', 0, 10, 47, 30, '2026-03-20 00:19:48', '2026-03-20 00:19:48'),
(426, 'pullup', 0, 10, 47, 30, '2026-03-20 00:19:48', '2026-03-20 00:19:48'),
(427, 'situps', 0, 10, 47, 30, '2026-03-20 00:19:48', '2026-03-20 00:19:48'),
(428, 'moderated_run', 0, 10, 47, 30, '2026-03-20 00:19:48', '2026-03-20 00:19:48'),
(429, 'pushup', 0, 10, 48, 30, '2026-03-20 00:19:48', '2026-03-20 00:19:48'),
(430, 'pullup', 0, 10, 48, 30, '2026-03-20 00:19:48', '2026-03-20 00:19:48'),
(431, 'situps', 0, 10, 48, 30, '2026-03-20 00:19:48', '2026-03-20 00:19:48'),
(432, 'moderated_run', 0, 10, 48, 30, '2026-03-20 00:19:48', '2026-03-20 00:19:48'),
(433, 'pushup', 0, 10, 68, 30, '2026-03-20 00:19:48', '2026-03-20 00:19:48'),
(434, 'pullup', 0, 10, 68, 30, '2026-03-20 00:19:48', '2026-03-20 00:19:48'),
(435, 'situps', 0, 10, 68, 30, '2026-03-20 00:19:48', '2026-03-20 00:19:48'),
(436, 'moderated_run', 0, 10, 68, 30, '2026-03-20 00:19:48', '2026-03-20 00:19:48'),
(437, 'pushup', 15, 10, 69, 30, '2026-03-20 00:19:48', '2026-03-20 00:19:48'),
(438, 'pullup', 6, 20, 69, 30, '2026-03-20 00:19:48', '2026-03-20 00:19:48'),
(439, 'situps', 46, 32, 69, 30, '2026-03-20 00:19:48', '2026-03-20 00:19:48'),
(440, 'moderated_run', 36, 77.5, 69, 30, '2026-03-20 00:19:48', '2026-03-20 00:19:48'),
(441, 'pushup', 0, 10, 70, 30, '2026-03-20 00:19:48', '2026-03-20 00:19:48'),
(442, 'pullup', 0, 10, 70, 30, '2026-03-20 00:19:48', '2026-03-20 00:19:48'),
(443, 'situps', 0, 10, 70, 30, '2026-03-20 00:19:48', '2026-03-20 00:19:48'),
(444, 'moderated_run', 0, 10, 70, 30, '2026-03-20 00:19:49', '2026-03-20 00:19:49'),
(445, 'pushup', 0, 10, 97, 30, '2026-03-20 00:19:49', '2026-03-20 00:19:49'),
(446, 'pullup', 0, 10, 97, 30, '2026-03-20 00:19:49', '2026-03-20 00:19:49'),
(447, 'situps', 0, 10, 97, 30, '2026-03-20 00:19:49', '2026-03-20 00:19:49'),
(448, 'moderated_run', 0, 10, 97, 30, '2026-03-20 00:19:49', '2026-03-20 00:19:49'),
(449, 'pushup', 0, 10, 98, 30, '2026-03-20 00:19:49', '2026-03-20 00:19:49'),
(450, 'pullup', 0, 10, 98, 30, '2026-03-20 00:19:49', '2026-03-20 00:19:49'),
(451, 'situps', 0, 10, 98, 30, '2026-03-20 00:19:49', '2026-03-20 00:19:49'),
(452, 'moderated_run', 0, 10, 98, 30, '2026-03-20 00:19:49', '2026-03-20 00:19:49'),
(453, 'pushup', 0, 10, 99, 30, '2026-03-20 00:19:49', '2026-03-20 00:19:49'),
(454, 'pullup', 0, 10, 99, 30, '2026-03-20 00:19:49', '2026-03-20 00:19:49'),
(455, 'situps', 0, 10, 99, 30, '2026-03-20 00:19:49', '2026-03-20 00:19:49'),
(456, 'moderated_run', 0, 10, 99, 30, '2026-03-20 00:19:49', '2026-03-20 00:19:49'),
(457, 'pushup', 0, 10, 100, 30, '2026-03-20 00:19:49', '2026-03-20 00:19:49'),
(458, 'pullup', 0, 10, 100, 30, '2026-03-20 00:19:49', '2026-03-20 00:19:49'),
(459, 'situps', 0, 10, 100, 30, '2026-03-20 00:19:49', '2026-03-20 00:19:49'),
(460, 'moderated_run', 0, 10, 100, 30, '2026-03-20 00:19:49', '2026-03-20 00:19:49'),
(461, 'pushup', 0, 10, 101, 30, '2026-03-20 00:19:49', '2026-03-20 00:19:49'),
(462, 'pullup', 0, 10, 101, 30, '2026-03-20 00:19:49', '2026-03-20 00:19:49'),
(463, 'situps', 0, 10, 101, 30, '2026-03-20 00:19:50', '2026-03-20 00:19:50'),
(464, 'moderated_run', 0, 10, 101, 30, '2026-03-20 00:19:50', '2026-03-20 00:19:50'),
(465, 'pushup', 0, 10, 102, 30, '2026-03-20 00:19:50', '2026-03-20 00:19:50'),
(466, 'pullup', 0, 10, 102, 30, '2026-03-20 00:19:50', '2026-03-20 00:19:50'),
(467, 'situps', 0, 10, 102, 30, '2026-03-20 00:19:50', '2026-03-20 00:19:50'),
(468, 'moderated_run', 0, 10, 102, 30, '2026-03-20 00:19:50', '2026-03-20 00:19:50'),
(469, 'pushup', 0, 10, 103, 30, '2026-03-20 00:19:50', '2026-03-20 00:19:50'),
(470, 'pullup', 0, 10, 103, 30, '2026-03-20 00:19:50', '2026-03-20 00:19:50'),
(471, 'situps', 0, 10, 103, 30, '2026-03-20 00:19:50', '2026-03-20 00:19:50'),
(472, 'moderated_run', 0, 10, 103, 30, '2026-03-20 00:19:50', '2026-03-20 00:19:50'),
(473, 'pushup', 0, 10, 104, 30, '2026-03-20 00:19:50', '2026-03-20 00:19:50'),
(474, 'pullup', 0, 10, 104, 30, '2026-03-20 00:19:50', '2026-03-20 00:19:50'),
(475, 'situps', 0, 10, 104, 30, '2026-03-20 00:19:50', '2026-03-20 00:19:50'),
(476, 'moderated_run', 0, 10, 104, 30, '2026-03-20 00:19:50', '2026-03-20 00:19:50'),
(477, 'pushup', 0, 10, 105, 30, '2026-03-20 00:19:50', '2026-03-20 00:19:50'),
(478, 'pullup', 0, 10, 105, 30, '2026-03-20 00:19:50', '2026-03-20 00:19:50'),
(479, 'situps', 0, 10, 105, 30, '2026-03-20 00:19:50', '2026-03-20 00:19:50'),
(480, 'moderated_run', 0, 10, 105, 30, '2026-03-20 00:19:50', '2026-03-20 00:19:50'),
(481, 'pushup', 0, 10, 117, 30, '2026-03-20 00:19:50', '2026-03-20 00:19:50'),
(482, 'pullup', 0, 10, 117, 30, '2026-03-20 00:19:50', '2026-03-20 00:19:50'),
(483, 'situps', 0, 10, 117, 30, '2026-03-20 00:19:50', '2026-03-20 00:19:50'),
(484, 'moderated_run', 0, 10, 117, 30, '2026-03-20 00:19:50', '2026-03-20 00:19:50'),
(485, 'pushup', 49, 85, 25, 26, '2026-03-21 08:16:35', '2026-03-21 08:16:35'),
(486, 'pullup', 12, 50, 25, 26, '2026-03-21 08:16:35', '2026-03-21 08:16:35'),
(487, 'situps', 40, 20, 25, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(488, 'moderated_run', 29, 60, 25, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(489, 'pushup', 35, 50, 26, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(490, 'pullup', 12, 50, 26, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(491, 'situps', 40, 20, 26, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(492, 'moderated_run', 28, 57.5, 26, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(493, 'pushup', 40, 62.5, 27, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(494, 'pullup', 12, 50, 27, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(495, 'situps', 40, 20, 27, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(496, 'moderated_run', 35, 75, 27, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(497, 'pushup', 50, 87.5, 28, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(498, 'pullup', 14, 60, 28, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(499, 'situps', 40, 20, 28, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(500, 'moderated_run', 35, 75, 28, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(501, 'pushup', 45, 75, 45, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(502, 'pullup', 10, 40, 45, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(503, 'situps', 40, 20, 45, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(504, 'moderated_run', 30, 62.5, 45, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(505, 'pushup', 46, 77.5, 46, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(506, 'pullup', 13, 55, 46, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(507, 'situps', 44, 28, 46, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(508, 'moderated_run', 28, 57.5, 46, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(509, 'pushup', 35, 50, 47, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(510, 'pullup', 8, 30, 47, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(511, 'situps', 40, 20, 47, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(512, 'moderated_run', 36, 77.5, 47, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(513, 'pushup', 0, 10, 48, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(514, 'pullup', 0, 10, 48, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(515, 'situps', 0, 10, 48, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(516, 'moderated_run', 0, 10, 48, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(517, 'pushup', 0, 10, 68, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(518, 'pullup', 0, 10, 68, 26, '2026-03-21 08:16:36', '2026-03-21 08:16:36'),
(519, 'situps', 0, 10, 68, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(520, 'moderated_run', 0, 10, 68, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(521, 'pushup', 0, 10, 70, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(522, 'pullup', 0, 10, 70, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(523, 'situps', 0, 10, 70, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(524, 'moderated_run', 0, 10, 70, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(525, 'pushup', 0, 10, 97, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(526, 'pullup', 0, 10, 97, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(527, 'situps', 0, 10, 97, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(528, 'moderated_run', 0, 10, 97, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(529, 'pushup', 0, 10, 98, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(530, 'pullup', 0, 10, 98, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(531, 'situps', 0, 10, 98, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(532, 'moderated_run', 0, 10, 98, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(533, 'pushup', 0, 10, 99, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(534, 'pullup', 0, 10, 99, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(535, 'situps', 0, 10, 99, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(536, 'moderated_run', 0, 10, 99, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(537, 'pushup', 0, 10, 100, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(538, 'pullup', 0, 10, 100, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(539, 'situps', 0, 10, 100, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(540, 'moderated_run', 0, 10, 100, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(541, 'pushup', 0, 10, 101, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(542, 'pullup', 0, 10, 101, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(543, 'situps', 0, 10, 101, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(544, 'moderated_run', 0, 10, 101, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(545, 'pushup', 0, 10, 102, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(546, 'pullup', 0, 10, 102, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(547, 'situps', 0, 10, 102, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(548, 'moderated_run', 0, 10, 102, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(549, 'pushup', 0, 10, 103, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(550, 'pullup', 0, 10, 103, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(551, 'situps', 0, 10, 103, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(552, 'moderated_run', 0, 10, 103, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(553, 'pushup', 0, 10, 104, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(554, 'pullup', 0, 10, 104, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(555, 'situps', 0, 10, 104, 26, '2026-03-21 08:16:37', '2026-03-21 08:16:37'),
(556, 'moderated_run', 0, 10, 104, 26, '2026-03-21 08:16:38', '2026-03-21 08:16:38'),
(557, 'pushup', 0, 10, 105, 26, '2026-03-21 08:16:38', '2026-03-21 08:16:38'),
(558, 'pullup', 0, 10, 105, 26, '2026-03-21 08:16:38', '2026-03-21 08:16:38'),
(559, 'situps', 0, 10, 105, 26, '2026-03-21 08:16:38', '2026-03-21 08:16:38'),
(560, 'moderated_run', 0, 10, 105, 26, '2026-03-21 08:16:38', '2026-03-21 08:16:38'),
(561, 'pushup', 0, 10, 106, 26, '2026-03-21 08:16:38', '2026-03-21 08:16:38'),
(562, 'pullup', 0, 10, 106, 26, '2026-03-21 08:16:38', '2026-03-21 08:16:38'),
(563, 'situps', 0, 10, 106, 26, '2026-03-21 08:16:38', '2026-03-21 08:16:38'),
(564, 'moderated_run', 0, 10, 106, 26, '2026-03-21 08:16:38', '2026-03-21 08:16:38'),
(565, 'pushup', 0, 10, 124, 26, '2026-03-21 08:16:38', '2026-03-21 08:16:38'),
(566, 'pullup', 0, 10, 124, 26, '2026-03-21 08:16:38', '2026-03-21 08:16:38'),
(567, 'situps', 0, 10, 124, 26, '2026-03-21 08:16:38', '2026-03-21 08:16:38'),
(568, 'moderated_run', 0, 10, 124, 26, '2026-03-21 08:16:38', '2026-03-21 08:16:38'),
(569, 'pushup', 0, 10, 125, 26, '2026-03-21 08:16:38', '2026-03-21 08:16:38'),
(570, 'pullup', 0, 10, 125, 26, '2026-03-21 08:16:38', '2026-03-21 08:16:38'),
(571, 'situps', 0, 10, 125, 26, '2026-03-21 08:16:38', '2026-03-21 08:16:38'),
(572, 'moderated_run', 0, 10, 125, 26, '2026-03-21 08:16:38', '2026-03-21 08:16:38'),
(573, 'pushup', 55, 100, 20, 33, '2026-03-27 17:24:28', '2026-03-27 17:24:28'),
(574, 'pullup', 22, 100, 20, 33, '2026-03-27 17:24:28', '2026-03-27 17:24:28'),
(575, 'situps', 80, 100, 20, 33, '2026-03-27 17:24:28', '2026-03-27 17:24:28'),
(576, 'moderated_run', 40, 87.5, 20, 33, '2026-03-27 17:24:28', '2026-03-27 17:24:28'),
(577, 'pushup', 51, 90, 21, 33, '2026-03-27 17:24:28', '2026-03-27 17:24:28'),
(578, 'pullup', 20, 90, 21, 33, '2026-03-27 17:24:28', '2026-03-27 17:24:28'),
(579, 'situps', 70, 80, 21, 33, '2026-03-27 17:24:28', '2026-03-27 17:24:28'),
(580, 'moderated_run', 35, 75, 21, 33, '2026-03-27 17:24:28', '2026-03-27 17:24:28'),
(581, 'pushup', 44, 72.5, 22, 33, '2026-03-27 17:24:28', '2026-03-27 17:24:28'),
(582, 'pullup', 12, 50, 22, 33, '2026-03-27 17:24:28', '2026-03-27 17:24:28'),
(583, 'situps', 50, 40, 22, 33, '2026-03-27 17:24:28', '2026-03-27 17:24:28'),
(584, 'moderated_run', 25, 50, 22, 33, '2026-03-27 17:24:28', '2026-03-27 17:24:28'),
(585, 'pushup', 0, 10, 23, 33, '2026-03-27 17:24:28', '2026-03-27 17:24:28'),
(586, 'pullup', 0, 10, 23, 33, '2026-03-27 17:24:28', '2026-03-27 17:24:28'),
(587, 'situps', 0, 10, 23, 33, '2026-03-27 17:24:28', '2026-03-27 17:24:28'),
(588, 'moderated_run', 0, 10, 23, 33, '2026-03-27 17:24:28', '2026-03-27 17:24:28'),
(589, 'pushup', 0, 10, 41, 33, '2026-03-27 17:24:28', '2026-03-27 17:24:28'),
(590, 'pullup', 0, 10, 41, 33, '2026-03-27 17:24:28', '2026-03-27 17:24:28'),
(591, 'situps', 0, 10, 41, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(592, 'moderated_run', 0, 10, 41, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(593, 'pushup', 0, 10, 42, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(594, 'pullup', 0, 10, 42, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(595, 'situps', 0, 10, 42, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(596, 'moderated_run', 0, 10, 42, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(597, 'pushup', 0, 10, 44, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(598, 'pullup', 0, 10, 44, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(599, 'situps', 0, 10, 44, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(600, 'moderated_run', 0, 10, 44, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(601, 'pushup', 0, 10, 60, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(602, 'pullup', 0, 10, 60, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(603, 'situps', 0, 10, 60, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(604, 'moderated_run', 0, 10, 60, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(605, 'pushup', 0, 10, 61, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(606, 'pullup', 0, 10, 61, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(607, 'situps', 0, 10, 61, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(608, 'moderated_run', 0, 10, 61, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(609, 'pushup', 0, 10, 62, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(610, 'pullup', 0, 10, 62, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(611, 'situps', 0, 10, 62, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(612, 'moderated_run', 0, 10, 62, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(613, 'pushup', 0, 10, 63, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(614, 'pullup', 0, 10, 63, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(615, 'situps', 0, 10, 63, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(616, 'moderated_run', 0, 10, 63, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(617, 'pushup', 0, 10, 64, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(618, 'pullup', 0, 10, 64, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(619, 'situps', 0, 10, 64, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(620, 'moderated_run', 0, 10, 64, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(621, 'pushup', 0, 10, 65, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(622, 'pullup', 0, 10, 65, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(623, 'situps', 0, 10, 65, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(624, 'moderated_run', 0, 10, 65, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(625, 'pushup', 0, 10, 66, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(626, 'pullup', 0, 10, 66, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(627, 'situps', 0, 10, 66, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(628, 'moderated_run', 0, 10, 66, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(629, 'pushup', 0, 10, 84, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(630, 'pullup', 0, 10, 84, 33, '2026-03-27 17:24:29', '2026-03-27 17:24:29'),
(631, 'situps', 0, 10, 84, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(632, 'moderated_run', 0, 10, 84, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(633, 'pushup', 0, 10, 85, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(634, 'pullup', 0, 10, 85, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(635, 'situps', 0, 10, 85, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(636, 'moderated_run', 0, 10, 85, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(637, 'pushup', 0, 10, 86, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(638, 'pullup', 0, 10, 86, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(639, 'situps', 0, 10, 86, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(640, 'moderated_run', 0, 10, 86, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(641, 'pushup', 0, 10, 88, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(642, 'pullup', 0, 10, 88, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(643, 'situps', 0, 10, 88, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(644, 'moderated_run', 0, 10, 88, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(645, 'pushup', 0, 10, 89, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(646, 'pullup', 0, 10, 89, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(647, 'situps', 0, 10, 89, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(648, 'moderated_run', 0, 10, 89, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(649, 'pushup', 0, 10, 90, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(650, 'pullup', 0, 10, 90, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(651, 'situps', 0, 10, 90, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(652, 'moderated_run', 0, 10, 90, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(653, 'pushup', 0, 10, 91, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(654, 'pullup', 0, 10, 91, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(655, 'situps', 0, 10, 91, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(656, 'moderated_run', 0, 10, 91, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(657, 'pushup', 0, 10, 92, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(658, 'pullup', 0, 10, 92, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(659, 'situps', 0, 10, 92, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(660, 'moderated_run', 0, 10, 92, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(661, 'pushup', 0, 10, 93, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(662, 'pullup', 0, 10, 93, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(663, 'situps', 0, 10, 93, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(664, 'moderated_run', 0, 10, 93, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(665, 'pushup', 0, 10, 94, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(666, 'pullup', 0, 10, 94, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(667, 'situps', 0, 10, 94, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(668, 'moderated_run', 0, 10, 94, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(669, 'pushup', 0, 10, 95, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(670, 'pullup', 0, 10, 95, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(671, 'situps', 0, 10, 95, 33, '2026-03-27 17:24:30', '2026-03-27 17:24:30'),
(672, 'moderated_run', 0, 10, 95, 33, '2026-03-27 17:24:31', '2026-03-27 17:24:31'),
(673, 'pushup', 0, 10, 96, 33, '2026-03-27 17:24:31', '2026-03-27 17:24:31'),
(674, 'pullup', 0, 10, 96, 33, '2026-03-27 17:24:31', '2026-03-27 17:24:31'),
(675, 'situps', 0, 10, 96, 33, '2026-03-27 17:24:31', '2026-03-27 17:24:31'),
(676, 'moderated_run', 0, 10, 96, 33, '2026-03-27 17:24:31', '2026-03-27 17:24:31'),
(677, 'pushup', 0, 10, 105, 33, '2026-03-27 17:24:31', '2026-03-27 17:24:31'),
(678, 'pullup', 0, 10, 105, 33, '2026-03-27 17:24:31', '2026-03-27 17:24:31'),
(679, 'situps', 0, 10, 105, 33, '2026-03-27 17:24:31', '2026-03-27 17:24:31'),
(680, 'moderated_run', 0, 10, 105, 33, '2026-03-27 17:24:31', '2026-03-27 17:24:31'),
(681, 'pushup', 55, 100, 20, 37, '2026-03-29 08:50:43', '2026-03-29 08:50:43'),
(682, 'pullup', 20, 90, 20, 37, '2026-03-29 08:50:43', '2026-03-29 08:50:43'),
(683, 'situps', 60, 60, 20, 37, '2026-03-29 08:50:44', '2026-03-29 08:50:44'),
(684, 'moderated_run', 40, 87.5, 20, 37, '2026-03-29 08:50:44', '2026-03-29 08:50:44'),
(685, 'pushup', 0, 10, 21, 37, '2026-03-29 08:50:44', '2026-03-29 08:50:44'),
(686, 'pullup', 0, 10, 21, 37, '2026-03-29 08:50:44', '2026-03-29 08:50:44'),
(687, 'situps', 0, 10, 21, 37, '2026-03-29 08:50:44', '2026-03-29 08:50:44'),
(688, 'moderated_run', 0, 10, 21, 37, '2026-03-29 08:50:44', '2026-03-29 08:50:44'),
(689, 'pushup', 40, 62.5, 22, 37, '2026-03-29 08:50:44', '2026-03-29 08:51:31'),
(690, 'pullup', 0, 10, 22, 37, '2026-03-29 08:50:44', '2026-03-29 08:50:44'),
(691, 'situps', 30, 10, 22, 37, '2026-03-29 08:50:44', '2026-03-29 08:51:31'),
(692, 'moderated_run', 30, 62.5, 22, 37, '2026-03-29 08:50:44', '2026-03-29 08:51:31'),
(693, 'pushup', 0, 10, 23, 37, '2026-03-29 08:50:44', '2026-03-29 08:50:44'),
(694, 'pullup', 0, 10, 23, 37, '2026-03-29 08:50:44', '2026-03-29 08:50:44'),
(695, 'situps', 0, 10, 23, 37, '2026-03-29 08:50:44', '2026-03-29 08:50:44'),
(696, 'moderated_run', 0, 10, 23, 37, '2026-03-29 08:50:44', '2026-03-29 08:50:44'),
(697, 'pushup', 0, 10, 24, 37, '2026-03-29 08:50:44', '2026-03-29 08:50:44'),
(698, 'pullup', 0, 10, 24, 37, '2026-03-29 08:50:44', '2026-03-29 08:50:44'),
(699, 'situps', 0, 10, 24, 37, '2026-03-29 08:50:44', '2026-03-29 08:50:44'),
(700, 'moderated_run', 0, 10, 24, 37, '2026-03-29 08:50:44', '2026-03-29 08:50:44'),
(701, 'pushup', 0, 10, 41, 37, '2026-03-29 08:50:44', '2026-03-29 08:50:44'),
(702, 'pullup', 0, 10, 41, 37, '2026-03-29 08:50:44', '2026-03-29 08:50:44'),
(703, 'situps', 0, 10, 41, 37, '2026-03-29 08:50:44', '2026-03-29 08:50:44'),
(704, 'moderated_run', 0, 10, 41, 37, '2026-03-29 08:50:44', '2026-03-29 08:50:44'),
(705, 'pushup', 0, 10, 42, 37, '2026-03-29 08:50:44', '2026-03-29 08:50:44'),
(706, 'pullup', 0, 10, 42, 37, '2026-03-29 08:50:44', '2026-03-29 08:50:44'),
(707, 'situps', 0, 10, 42, 37, '2026-03-29 08:50:44', '2026-03-29 08:50:44'),
(708, 'moderated_run', 0, 10, 42, 37, '2026-03-29 08:50:44', '2026-03-29 08:50:44'),
(709, 'pushup', 0, 10, 44, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(710, 'pullup', 0, 10, 44, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(711, 'situps', 0, 10, 44, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(712, 'moderated_run', 0, 10, 44, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(713, 'pushup', 0, 10, 60, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(714, 'pullup', 0, 10, 60, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(715, 'situps', 0, 10, 60, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(716, 'moderated_run', 0, 10, 60, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(717, 'pushup', 0, 10, 61, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(718, 'pullup', 0, 10, 61, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(719, 'situps', 0, 10, 61, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(720, 'moderated_run', 0, 10, 61, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(721, 'pushup', 0, 10, 62, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(722, 'pullup', 0, 10, 62, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(723, 'situps', 0, 10, 62, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(724, 'moderated_run', 0, 10, 62, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(725, 'pushup', 0, 10, 63, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(726, 'pullup', 0, 10, 63, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(727, 'situps', 0, 10, 63, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(728, 'moderated_run', 0, 10, 63, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(729, 'pushup', 0, 10, 64, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(730, 'pullup', 0, 10, 64, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(731, 'situps', 0, 10, 64, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(732, 'moderated_run', 0, 10, 64, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(733, 'pushup', 0, 10, 65, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(734, 'pullup', 0, 10, 65, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(735, 'situps', 0, 10, 65, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(736, 'moderated_run', 0, 10, 65, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(737, 'pushup', 0, 10, 66, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(738, 'pullup', 0, 10, 66, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(739, 'situps', 0, 10, 66, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(740, 'moderated_run', 0, 10, 66, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(741, 'pushup', 0, 10, 84, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(742, 'pullup', 0, 10, 84, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(743, 'situps', 0, 10, 84, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(744, 'moderated_run', 0, 10, 84, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(745, 'pushup', 0, 10, 85, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(746, 'pullup', 0, 10, 85, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(747, 'situps', 0, 10, 85, 37, '2026-03-29 08:50:45', '2026-03-29 08:50:45'),
(748, 'moderated_run', 0, 10, 85, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(749, 'pushup', 0, 10, 86, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(750, 'pullup', 0, 10, 86, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(751, 'situps', 0, 10, 86, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(752, 'moderated_run', 0, 10, 86, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(753, 'pushup', 0, 10, 88, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(754, 'pullup', 0, 10, 88, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(755, 'situps', 0, 10, 88, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(756, 'moderated_run', 0, 10, 88, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(757, 'pushup', 0, 10, 89, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(758, 'pullup', 0, 10, 89, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(759, 'situps', 0, 10, 89, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(760, 'moderated_run', 0, 10, 89, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(761, 'pushup', 0, 10, 90, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(762, 'pullup', 0, 10, 90, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(763, 'situps', 0, 10, 90, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(764, 'moderated_run', 0, 10, 90, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(765, 'pushup', 0, 10, 91, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(766, 'pullup', 0, 10, 91, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(767, 'situps', 0, 10, 91, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(768, 'moderated_run', 0, 10, 91, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(769, 'pushup', 0, 10, 92, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(770, 'pullup', 0, 10, 92, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(771, 'situps', 0, 10, 92, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(772, 'moderated_run', 0, 10, 92, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(773, 'pushup', 0, 10, 93, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(774, 'pullup', 0, 10, 93, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(775, 'situps', 0, 10, 93, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(776, 'moderated_run', 0, 10, 93, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(777, 'pushup', 0, 10, 94, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(778, 'pullup', 0, 10, 94, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(779, 'situps', 0, 10, 94, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(780, 'moderated_run', 0, 10, 94, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(781, 'pushup', 0, 10, 95, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(782, 'pullup', 0, 10, 95, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(783, 'situps', 0, 10, 95, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(784, 'moderated_run', 0, 10, 95, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(785, 'pushup', 0, 10, 96, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(786, 'pullup', 0, 10, 96, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(787, 'situps', 0, 10, 96, 37, '2026-03-29 08:50:46', '2026-03-29 08:50:46'),
(788, 'moderated_run', 0, 10, 96, 37, '2026-03-29 08:50:47', '2026-03-29 08:50:47'),
(789, 'pushup', 0, 10, 126, 37, '2026-03-29 08:50:47', '2026-03-29 08:50:47'),
(790, 'pullup', 0, 10, 126, 37, '2026-03-29 08:50:47', '2026-03-29 08:50:47'),
(791, 'situps', 0, 10, 126, 37, '2026-03-29 08:50:47', '2026-03-29 08:50:47'),
(792, 'moderated_run', 0, 10, 126, 37, '2026-03-29 08:50:47', '2026-03-29 08:50:47'),
(793, 'pushup', 0, 10, 106, 30, '2026-04-04 07:51:12', '2026-04-04 07:51:12'),
(794, 'pullup', 0, 10, 106, 30, '2026-04-04 07:51:12', '2026-04-04 07:51:12'),
(795, 'situps', 0, 10, 106, 30, '2026-04-04 07:51:12', '2026-04-04 07:51:12'),
(796, 'moderated_run', 0, 10, 106, 30, '2026-04-04 07:51:12', '2026-04-04 07:51:12'),
(797, 'pushup', 0, 10, 124, 30, '2026-04-04 07:51:12', '2026-04-04 07:51:12'),
(798, 'pullup', 0, 10, 124, 30, '2026-04-04 07:51:12', '2026-04-04 07:51:12'),
(799, 'situps', 0, 10, 124, 30, '2026-04-04 07:51:12', '2026-04-04 07:51:12'),
(800, 'moderated_run', 0, 10, 124, 30, '2026-04-04 07:51:12', '2026-04-04 07:51:12'),
(801, 'pushup', 0, 10, 125, 30, '2026-04-04 07:51:12', '2026-04-04 07:51:12'),
(802, 'pullup', 0, 10, 125, 30, '2026-04-04 07:51:13', '2026-04-04 07:51:13'),
(803, 'situps', 0, 10, 125, 30, '2026-04-04 07:51:13', '2026-04-04 07:51:13'),
(804, 'moderated_run', 0, 10, 125, 30, '2026-04-04 07:51:13', '2026-04-04 07:51:13'),
(805, 'pushup', 70, 100, 129, 30, '2026-04-04 07:51:13', '2026-04-04 07:51:13'),
(806, 'pullup', 30, 100, 129, 30, '2026-04-04 07:51:13', '2026-04-04 07:51:13'),
(807, 'situps', 80, 100, 129, 30, '2026-04-04 07:51:13', '2026-04-04 07:51:13'),
(808, 'moderated_run', 40, 87.5, 129, 30, '2026-04-04 07:51:13', '2026-04-04 07:51:13'),
(809, 'pushup', 50, 87.5, 20, 25, '2026-05-09 19:08:32', '2026-05-09 19:08:32'),
(810, 'pullup', 20, 90, 20, 25, '2026-05-09 19:08:32', '2026-05-09 19:08:32'),
(811, 'situps', 70, 80, 20, 25, '2026-05-09 19:08:33', '2026-05-09 19:08:33'),
(812, 'moderated_run', 35, 75, 20, 25, '2026-05-09 19:08:33', '2026-05-09 19:08:33'),
(813, 'pushup', 55, 100, 21, 25, '2026-05-09 19:08:33', '2026-05-09 19:09:50'),
(814, 'pullup', 22, 100, 21, 25, '2026-05-09 19:08:33', '2026-05-09 19:08:33'),
(815, 'situps', 80, 100, 21, 25, '2026-05-09 19:08:33', '2026-05-09 19:08:33'),
(816, 'moderated_run', 50, 100, 21, 25, '2026-05-09 19:08:33', '2026-05-09 19:10:32'),
(817, 'pushup', 0, 10, 23, 25, '2026-05-09 19:08:33', '2026-05-09 19:08:33'),
(818, 'pullup', 0, 10, 23, 25, '2026-05-09 19:08:33', '2026-05-09 19:08:33'),
(819, 'situps', 0, 10, 23, 25, '2026-05-09 19:08:33', '2026-05-09 19:08:33'),
(820, 'moderated_run', 0, 10, 23, 25, '2026-05-09 19:08:33', '2026-05-09 19:08:33'),
(821, 'pushup', 0, 10, 24, 25, '2026-05-09 19:08:33', '2026-05-09 19:08:33'),
(822, 'pullup', 0, 10, 24, 25, '2026-05-09 19:08:33', '2026-05-09 19:08:33'),
(823, 'situps', 0, 10, 24, 25, '2026-05-09 19:08:33', '2026-05-09 19:08:33'),
(824, 'moderated_run', 0, 10, 24, 25, '2026-05-09 19:08:33', '2026-05-09 19:08:33'),
(825, 'pushup', 0, 10, 41, 25, '2026-05-09 19:08:33', '2026-05-09 19:08:33'),
(826, 'pullup', 0, 10, 41, 25, '2026-05-09 19:08:33', '2026-05-09 19:08:33'),
(827, 'situps', 0, 10, 41, 25, '2026-05-09 19:08:33', '2026-05-09 19:08:33'),
(828, 'moderated_run', 0, 10, 41, 25, '2026-05-09 19:08:33', '2026-05-09 19:08:33'),
(829, 'pushup', 0, 10, 42, 25, '2026-05-09 19:08:33', '2026-05-09 19:08:33'),
(830, 'pullup', 0, 10, 42, 25, '2026-05-09 19:08:33', '2026-05-09 19:08:33'),
(831, 'situps', 0, 10, 42, 25, '2026-05-09 19:08:33', '2026-05-09 19:08:33'),
(832, 'moderated_run', 0, 10, 42, 25, '2026-05-09 19:08:33', '2026-05-09 19:08:33'),
(833, 'pushup', 0, 10, 44, 25, '2026-05-09 19:08:33', '2026-05-09 19:08:33'),
(834, 'pullup', 0, 10, 44, 25, '2026-05-09 19:08:33', '2026-05-09 19:08:33'),
(835, 'situps', 0, 10, 44, 25, '2026-05-09 19:08:33', '2026-05-09 19:08:33'),
(836, 'moderated_run', 0, 10, 44, 25, '2026-05-09 19:08:33', '2026-05-09 19:08:33'),
(837, 'pushup', 0, 10, 60, 25, '2026-05-09 19:08:33', '2026-05-09 19:08:33'),
(838, 'pullup', 0, 10, 60, 25, '2026-05-09 19:08:33', '2026-05-09 19:08:33'),
(839, 'situps', 0, 10, 60, 25, '2026-05-09 19:08:33', '2026-05-09 19:08:33'),
(840, 'moderated_run', 0, 10, 60, 25, '2026-05-09 19:08:33', '2026-05-09 19:08:33'),
(841, 'pushup', 0, 10, 61, 25, '2026-05-09 19:08:33', '2026-05-09 19:08:33'),
(842, 'pullup', 0, 10, 61, 25, '2026-05-09 19:08:33', '2026-05-09 19:08:33'),
(843, 'situps', 0, 10, 61, 25, '2026-05-09 19:08:34', '2026-05-09 19:08:34'),
(844, 'moderated_run', 0, 10, 61, 25, '2026-05-09 19:08:34', '2026-05-09 19:08:34'),
(845, 'pushup', 0, 10, 62, 25, '2026-05-09 19:08:34', '2026-05-09 19:08:34'),
(846, 'pullup', 0, 10, 62, 25, '2026-05-09 19:08:34', '2026-05-09 19:08:34'),
(847, 'situps', 0, 10, 62, 25, '2026-05-09 19:08:34', '2026-05-09 19:08:34'),
(848, 'moderated_run', 0, 10, 62, 25, '2026-05-09 19:08:34', '2026-05-09 19:08:34'),
(849, 'pushup', 0, 10, 63, 25, '2026-05-09 19:08:34', '2026-05-09 19:08:34'),
(850, 'pullup', 0, 10, 63, 25, '2026-05-09 19:08:34', '2026-05-09 19:08:34'),
(851, 'situps', 0, 10, 63, 25, '2026-05-09 19:08:34', '2026-05-09 19:08:34'),
(852, 'moderated_run', 0, 10, 63, 25, '2026-05-09 19:08:34', '2026-05-09 19:08:34'),
(853, 'pushup', 0, 10, 64, 25, '2026-05-09 19:08:34', '2026-05-09 19:08:34'),
(854, 'pullup', 0, 10, 64, 25, '2026-05-09 19:08:34', '2026-05-09 19:08:34'),
(855, 'situps', 0, 10, 64, 25, '2026-05-09 19:08:34', '2026-05-09 19:08:34');
INSERT INTO `tests` (`id`, `name`, `nubmer`, `score`, `users_id`, `leyaqa_id`, `created_at`, `updated_at`) VALUES
(856, 'moderated_run', 0, 10, 64, 25, '2026-05-09 19:08:34', '2026-05-09 19:08:34'),
(857, 'pushup', 0, 10, 65, 25, '2026-05-09 19:08:34', '2026-05-09 19:08:34'),
(858, 'pullup', 0, 10, 65, 25, '2026-05-09 19:08:34', '2026-05-09 19:08:34'),
(859, 'situps', 0, 10, 65, 25, '2026-05-09 19:08:34', '2026-05-09 19:08:34'),
(860, 'moderated_run', 0, 10, 65, 25, '2026-05-09 19:08:34', '2026-05-09 19:08:34'),
(861, 'pushup', 0, 10, 66, 25, '2026-05-09 19:08:34', '2026-05-09 19:08:34'),
(862, 'pullup', 0, 10, 66, 25, '2026-05-09 19:08:34', '2026-05-09 19:08:34'),
(863, 'situps', 0, 10, 66, 25, '2026-05-09 19:08:35', '2026-05-09 19:08:35'),
(864, 'moderated_run', 0, 10, 66, 25, '2026-05-09 19:08:35', '2026-05-09 19:08:35'),
(865, 'pushup', 0, 10, 84, 25, '2026-05-09 19:08:35', '2026-05-09 19:08:35'),
(866, 'pullup', 0, 10, 84, 25, '2026-05-09 19:08:35', '2026-05-09 19:08:35'),
(867, 'situps', 0, 10, 84, 25, '2026-05-09 19:08:35', '2026-05-09 19:08:35'),
(868, 'moderated_run', 0, 10, 84, 25, '2026-05-09 19:08:35', '2026-05-09 19:08:35'),
(869, 'pushup', 0, 10, 85, 25, '2026-05-09 19:08:35', '2026-05-09 19:08:35'),
(870, 'pullup', 0, 10, 85, 25, '2026-05-09 19:08:35', '2026-05-09 19:08:35'),
(871, 'situps', 0, 10, 85, 25, '2026-05-09 19:08:35', '2026-05-09 19:08:35'),
(872, 'moderated_run', 0, 10, 85, 25, '2026-05-09 19:08:35', '2026-05-09 19:08:35'),
(873, 'pushup', 0, 10, 86, 25, '2026-05-09 19:08:35', '2026-05-09 19:08:35'),
(874, 'pullup', 0, 10, 86, 25, '2026-05-09 19:08:35', '2026-05-09 19:08:35'),
(875, 'situps', 0, 10, 86, 25, '2026-05-09 19:08:35', '2026-05-09 19:08:35'),
(876, 'moderated_run', 0, 10, 86, 25, '2026-05-09 19:08:35', '2026-05-09 19:08:35'),
(877, 'pushup', 0, 10, 88, 25, '2026-05-09 19:08:35', '2026-05-09 19:08:35'),
(878, 'pullup', 0, 10, 88, 25, '2026-05-09 19:08:35', '2026-05-09 19:08:35'),
(879, 'situps', 0, 10, 88, 25, '2026-05-09 19:08:35', '2026-05-09 19:08:35'),
(880, 'moderated_run', 0, 10, 88, 25, '2026-05-09 19:08:35', '2026-05-09 19:08:35'),
(881, 'pushup', 0, 10, 89, 25, '2026-05-09 19:08:35', '2026-05-09 19:08:35'),
(882, 'pullup', 0, 10, 89, 25, '2026-05-09 19:08:35', '2026-05-09 19:08:35'),
(883, 'situps', 0, 10, 89, 25, '2026-05-09 19:08:35', '2026-05-09 19:08:35'),
(884, 'moderated_run', 0, 10, 89, 25, '2026-05-09 19:08:35', '2026-05-09 19:08:35'),
(885, 'pushup', 0, 10, 90, 25, '2026-05-09 19:08:35', '2026-05-09 19:08:35'),
(886, 'pullup', 0, 10, 90, 25, '2026-05-09 19:08:35', '2026-05-09 19:08:35'),
(887, 'situps', 0, 10, 90, 25, '2026-05-09 19:08:36', '2026-05-09 19:08:36'),
(888, 'moderated_run', 0, 10, 90, 25, '2026-05-09 19:08:36', '2026-05-09 19:08:36'),
(889, 'pushup', 0, 10, 91, 25, '2026-05-09 19:08:36', '2026-05-09 19:08:36'),
(890, 'pullup', 0, 10, 91, 25, '2026-05-09 19:08:36', '2026-05-09 19:08:36'),
(891, 'situps', 0, 10, 91, 25, '2026-05-09 19:08:36', '2026-05-09 19:08:36'),
(892, 'moderated_run', 0, 10, 91, 25, '2026-05-09 19:08:36', '2026-05-09 19:08:36'),
(893, 'pushup', 0, 10, 92, 25, '2026-05-09 19:08:36', '2026-05-09 19:08:36'),
(894, 'pullup', 0, 10, 92, 25, '2026-05-09 19:08:36', '2026-05-09 19:08:36'),
(895, 'situps', 0, 10, 92, 25, '2026-05-09 19:08:36', '2026-05-09 19:08:36'),
(896, 'moderated_run', 0, 10, 92, 25, '2026-05-09 19:08:36', '2026-05-09 19:08:36'),
(897, 'pushup', 0, 10, 93, 25, '2026-05-09 19:08:36', '2026-05-09 19:08:36'),
(898, 'pullup', 0, 10, 93, 25, '2026-05-09 19:08:36', '2026-05-09 19:08:36'),
(899, 'situps', 0, 10, 93, 25, '2026-05-09 19:08:36', '2026-05-09 19:08:36'),
(900, 'moderated_run', 0, 10, 93, 25, '2026-05-09 19:08:36', '2026-05-09 19:08:36'),
(901, 'pushup', 0, 10, 94, 25, '2026-05-09 19:08:36', '2026-05-09 19:08:36'),
(902, 'pullup', 0, 10, 94, 25, '2026-05-09 19:08:36', '2026-05-09 19:08:36'),
(903, 'situps', 0, 10, 94, 25, '2026-05-09 19:08:36', '2026-05-09 19:08:36'),
(904, 'moderated_run', 0, 10, 94, 25, '2026-05-09 19:08:36', '2026-05-09 19:08:36'),
(905, 'pushup', 0, 10, 95, 25, '2026-05-09 19:08:36', '2026-05-09 19:08:36'),
(906, 'pullup', 0, 10, 95, 25, '2026-05-09 19:08:36', '2026-05-09 19:08:36'),
(907, 'situps', 0, 10, 95, 25, '2026-05-09 19:08:36', '2026-05-09 19:08:36'),
(908, 'moderated_run', 0, 10, 95, 25, '2026-05-09 19:08:36', '2026-05-09 19:08:36'),
(909, 'pushup', 0, 10, 96, 25, '2026-05-09 19:08:36', '2026-05-09 19:08:36'),
(910, 'pullup', 0, 10, 96, 25, '2026-05-09 19:08:36', '2026-05-09 19:08:36'),
(911, 'situps', 0, 10, 96, 25, '2026-05-09 19:08:36', '2026-05-09 19:08:36'),
(912, 'moderated_run', 0, 10, 96, 25, '2026-05-09 19:08:37', '2026-05-09 19:08:37'),
(913, 'pushup', 0, 10, 126, 25, '2026-05-09 19:08:37', '2026-05-09 19:08:37'),
(914, 'pullup', 0, 10, 126, 25, '2026-05-09 19:08:37', '2026-05-09 19:08:37'),
(915, 'situps', 0, 10, 126, 25, '2026-05-09 19:08:37', '2026-05-09 19:08:37'),
(916, 'moderated_run', 0, 10, 126, 25, '2026-05-09 19:08:37', '2026-05-09 19:08:37'),
(917, 'pushup', 0, 10, 22, 25, '2026-05-09 19:09:50', '2026-05-09 19:09:50'),
(918, 'pullup', 0, 10, 22, 25, '2026-05-09 19:09:50', '2026-05-09 19:09:50'),
(919, 'situps', 0, 10, 22, 25, '2026-05-09 19:09:50', '2026-05-09 19:09:50'),
(920, 'moderated_run', 0, 10, 22, 25, '2026-05-09 19:09:50', '2026-05-09 19:09:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Saad', 'Saad@tadreb707.com', NULL, '$2y$12$b69MYh/FcCb56lGQsF/OOupXzqW8UVkR./LG/.p0lNEgB/PEPK6mm', 'jBUMMadWlNtjlnYxRQrZnbGbjXOl3h246Q4Jwd7UuMVZZYI6yt5VVrMx4Vs4', '2026-02-27 06:28:02', '2026-02-27 06:28:02');

-- --------------------------------------------------------

--
-- Table structure for table `workout_scores`
--

CREATE TABLE `workout_scores` (
  `id` bigint UNSIGNED NOT NULL,
  `workout_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_age` int NOT NULL,
  `max_age` int NOT NULL,
  `score_value` double NOT NULL,
  `percentage` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workout_scores`
--

INSERT INTO `workout_scores` (`id`, `workout_type`, `min_age`, `max_age`, `score_value`, `percentage`, `created_at`, `updated_at`) VALUES
(221, 'pushup', 18, 26, 19, 10, '2026-03-16 08:21:24', '2026-03-16 08:21:24'),
(222, 'pushup', 18, 26, 23, 20, '2026-03-16 08:21:24', '2026-03-16 08:21:24'),
(223, 'pushup', 18, 26, 27, 30, '2026-03-16 08:21:24', '2026-03-16 08:21:24'),
(224, 'pushup', 18, 26, 31, 40, '2026-03-16 08:21:24', '2026-03-16 08:21:24'),
(225, 'pushup', 18, 26, 35, 50, '2026-03-16 08:21:24', '2026-03-16 08:21:24'),
(226, 'pushup', 18, 26, 39, 60, '2026-03-16 08:21:24', '2026-03-16 08:21:24'),
(227, 'pushup', 18, 26, 43, 70, '2026-03-16 08:21:24', '2026-03-16 08:21:24'),
(228, 'pushup', 18, 26, 47, 80, '2026-03-16 08:21:24', '2026-03-16 08:21:24'),
(229, 'pushup', 18, 26, 51, 90, '2026-03-16 08:21:24', '2026-03-16 08:21:24'),
(230, 'pushup', 18, 26, 55, 100, '2026-03-16 08:21:24', '2026-03-16 08:21:24'),
(231, 'pushup', 27, 31, 15, 10, '2026-03-16 08:21:24', '2026-03-16 08:21:24'),
(232, 'pushup', 27, 31, 19, 20, '2026-03-16 08:21:25', '2026-03-16 08:21:25'),
(233, 'pushup', 27, 31, 23, 30, '2026-03-16 08:21:25', '2026-03-16 08:21:25'),
(234, 'pushup', 27, 31, 27, 40, '2026-03-16 08:21:25', '2026-03-16 08:21:25'),
(235, 'pushup', 27, 31, 31, 50, '2026-03-16 08:21:25', '2026-03-16 08:21:25'),
(236, 'pushup', 27, 31, 35, 60, '2026-03-16 08:21:25', '2026-03-16 08:21:25'),
(237, 'pushup', 27, 31, 39, 70, '2026-03-16 08:21:25', '2026-03-16 08:21:25'),
(238, 'pushup', 27, 31, 43, 80, '2026-03-16 08:21:25', '2026-03-16 08:21:25'),
(239, 'pushup', 27, 31, 47, 90, '2026-03-16 08:21:25', '2026-03-16 08:21:25'),
(240, 'pushup', 27, 31, 51, 100, '2026-03-16 08:21:25', '2026-03-16 08:21:25'),
(241, 'pushup', 32, 36, 11, 10, '2026-03-16 08:21:25', '2026-03-16 08:21:25'),
(242, 'pushup', 32, 36, 15, 20, '2026-03-16 08:21:25', '2026-03-16 08:21:25'),
(243, 'pushup', 32, 36, 19, 30, '2026-03-16 08:21:25', '2026-03-16 08:21:25'),
(244, 'pushup', 32, 36, 23, 40, '2026-03-16 08:21:25', '2026-03-16 08:21:25'),
(245, 'pushup', 32, 36, 27, 50, '2026-03-16 08:21:25', '2026-03-16 08:21:25'),
(246, 'pushup', 32, 36, 31, 60, '2026-03-16 08:21:25', '2026-03-16 08:21:25'),
(247, 'pushup', 32, 36, 35, 70, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(248, 'pushup', 32, 36, 39, 80, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(249, 'pushup', 32, 36, 43, 90, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(250, 'pushup', 32, 36, 47, 100, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(251, 'pushup', 37, 41, 7, 10, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(252, 'pushup', 37, 41, 11, 20, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(253, 'pushup', 37, 41, 15, 30, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(254, 'pushup', 37, 41, 19, 40, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(255, 'pushup', 37, 41, 23, 50, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(256, 'pushup', 37, 41, 27, 60, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(257, 'pushup', 37, 41, 31, 70, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(258, 'pushup', 37, 41, 35, 80, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(259, 'pushup', 37, 41, 39, 90, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(260, 'pushup', 37, 41, 43, 100, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(261, 'pushup', 42, 46, 3, 10, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(262, 'pushup', 42, 46, 7, 20, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(263, 'pushup', 42, 46, 11, 30, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(264, 'pushup', 42, 46, 15, 40, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(265, 'pushup', 42, 46, 19, 50, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(266, 'pushup', 42, 46, 23, 60, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(267, 'pushup', 42, 46, 27, 70, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(268, 'pushup', 42, 46, 31, 80, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(269, 'pushup', 42, 46, 35, 90, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(270, 'pushup', 42, 46, 39, 100, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(271, 'pushup', 47, 100, 0, 10, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(272, 'pushup', 47, 100, 3, 20, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(273, 'pushup', 47, 100, 7, 30, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(274, 'pushup', 47, 100, 11, 40, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(275, 'pushup', 47, 100, 15, 50, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(276, 'pushup', 47, 100, 19, 60, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(277, 'pushup', 47, 100, 23, 70, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(278, 'pushup', 47, 100, 27, 80, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(279, 'pushup', 47, 100, 31, 90, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(280, 'pushup', 47, 100, 35, 100, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(281, 'pullup', 18, 26, 4, 10, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(282, 'pullup', 18, 26, 6, 20, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(283, 'pullup', 18, 26, 8, 30, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(284, 'pullup', 18, 26, 10, 40, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(285, 'pullup', 18, 26, 12, 50, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(286, 'pullup', 18, 26, 14, 60, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(287, 'pullup', 18, 26, 16, 70, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(288, 'pullup', 18, 26, 18, 80, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(289, 'pullup', 18, 26, 20, 90, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(290, 'pullup', 18, 26, 22, 100, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(291, 'pullup', 27, 31, 2, 10, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(292, 'pullup', 27, 31, 4, 20, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(293, 'pullup', 27, 31, 6, 30, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(294, 'pullup', 27, 31, 8, 40, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(295, 'pullup', 27, 31, 10, 50, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(296, 'pullup', 27, 31, 12, 60, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(297, 'pullup', 27, 31, 14, 70, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(298, 'pullup', 27, 31, 16, 80, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(299, 'pullup', 27, 31, 18, 90, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(300, 'pullup', 27, 31, 20, 100, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(301, 'pullup', 32, 36, 0, 10, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(302, 'pullup', 32, 36, 2, 20, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(303, 'pullup', 32, 36, 4, 30, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(304, 'pullup', 32, 36, 6, 40, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(305, 'pullup', 32, 36, 8, 50, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(306, 'pullup', 32, 36, 10, 60, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(307, 'pullup', 32, 36, 12, 70, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(308, 'pullup', 32, 36, 14, 80, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(309, 'pullup', 32, 36, 16, 90, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(310, 'pullup', 32, 36, 18, 100, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(311, 'pullup', 37, 41, 0, 20, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(312, 'pullup', 37, 41, 2, 30, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(313, 'pullup', 37, 41, 4, 40, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(314, 'pullup', 37, 41, 6, 50, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(315, 'pullup', 37, 41, 8, 60, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(316, 'pullup', 37, 41, 10, 70, '2026-03-16 08:21:26', '2026-03-16 08:21:26'),
(317, 'pullup', 37, 41, 12, 80, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(318, 'pullup', 37, 41, 14, 90, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(319, 'pullup', 37, 41, 16, 100, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(320, 'pullup', 42, 46, 0, 30, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(321, 'pullup', 42, 46, 2, 40, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(322, 'pullup', 42, 46, 4, 50, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(323, 'pullup', 42, 46, 6, 60, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(324, 'pullup', 42, 46, 8, 70, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(325, 'pullup', 42, 46, 10, 80, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(326, 'pullup', 42, 46, 12, 90, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(327, 'pullup', 42, 46, 14, 100, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(328, 'pullup', 47, 100, 0, 40, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(329, 'pullup', 47, 100, 2, 50, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(330, 'pullup', 47, 100, 4, 60, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(331, 'pullup', 47, 100, 6, 70, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(332, 'pullup', 47, 100, 8, 80, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(333, 'pullup', 47, 100, 10, 90, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(334, 'pullup', 47, 100, 12, 100, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(335, 'situps', 18, 26, 35, 10, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(336, 'situps', 18, 26, 40, 20, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(337, 'situps', 18, 26, 45, 30, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(338, 'situps', 18, 26, 50, 40, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(339, 'situps', 18, 26, 55, 50, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(340, 'situps', 18, 26, 60, 60, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(341, 'situps', 18, 26, 65, 70, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(342, 'situps', 18, 26, 70, 80, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(343, 'situps', 18, 26, 75, 90, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(344, 'situps', 18, 26, 80, 100, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(345, 'situps', 27, 31, 30, 10, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(346, 'situps', 27, 31, 35, 20, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(347, 'situps', 27, 31, 40, 30, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(348, 'situps', 27, 31, 45, 40, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(349, 'situps', 27, 31, 50, 50, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(350, 'situps', 27, 31, 55, 60, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(351, 'situps', 27, 31, 60, 70, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(352, 'situps', 27, 31, 65, 80, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(353, 'situps', 27, 31, 70, 90, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(354, 'situps', 27, 31, 75, 100, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(355, 'situps', 32, 36, 25, 10, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(356, 'situps', 32, 36, 30, 20, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(357, 'situps', 32, 36, 35, 30, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(358, 'situps', 32, 36, 40, 40, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(359, 'situps', 32, 36, 45, 50, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(360, 'situps', 32, 36, 50, 60, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(361, 'situps', 32, 36, 55, 70, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(362, 'situps', 32, 36, 60, 80, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(363, 'situps', 32, 36, 65, 90, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(364, 'situps', 32, 36, 70, 100, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(365, 'situps', 37, 41, 20, 10, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(366, 'situps', 37, 41, 25, 20, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(367, 'situps', 37, 41, 30, 30, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(368, 'situps', 37, 41, 35, 40, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(369, 'situps', 37, 41, 40, 50, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(370, 'situps', 37, 41, 45, 60, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(371, 'situps', 37, 41, 50, 70, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(372, 'situps', 37, 41, 55, 80, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(373, 'situps', 37, 41, 60, 90, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(374, 'situps', 37, 41, 65, 100, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(375, 'situps', 42, 46, 15, 10, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(376, 'situps', 42, 46, 20, 20, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(377, 'situps', 42, 46, 25, 30, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(378, 'situps', 42, 46, 30, 40, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(379, 'situps', 42, 46, 35, 50, '2026-03-16 08:21:27', '2026-03-16 08:21:27'),
(380, 'situps', 42, 46, 40, 60, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(381, 'situps', 42, 46, 45, 70, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(382, 'situps', 42, 46, 50, 80, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(383, 'situps', 42, 46, 55, 90, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(384, 'situps', 42, 46, 60, 100, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(385, 'situps', 47, 100, 10, 10, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(386, 'situps', 47, 100, 15, 20, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(387, 'situps', 47, 100, 20, 30, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(388, 'situps', 47, 100, 25, 40, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(389, 'situps', 47, 100, 30, 50, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(390, 'situps', 47, 100, 35, 60, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(391, 'situps', 47, 100, 40, 70, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(392, 'situps', 47, 100, 45, 80, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(393, 'situps', 47, 100, 50, 90, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(394, 'situps', 47, 100, 55, 100, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(395, 'moderated_run', 18, 26, 9, 10, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(396, 'moderated_run', 18, 26, 13, 20, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(397, 'moderated_run', 18, 26, 17, 30, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(398, 'moderated_run', 18, 26, 21, 40, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(399, 'moderated_run', 18, 26, 25, 50, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(400, 'moderated_run', 18, 26, 29, 60, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(401, 'moderated_run', 18, 26, 33, 70, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(402, 'moderated_run', 18, 26, 37, 80, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(403, 'moderated_run', 18, 26, 41, 90, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(404, 'moderated_run', 18, 26, 45, 100, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(405, 'moderated_run', 27, 31, 5, 10, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(406, 'moderated_run', 27, 31, 9, 20, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(407, 'moderated_run', 27, 31, 13, 30, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(408, 'moderated_run', 27, 31, 17, 40, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(409, 'moderated_run', 27, 31, 21, 50, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(410, 'moderated_run', 27, 31, 25, 60, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(411, 'moderated_run', 27, 31, 29, 70, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(412, 'moderated_run', 27, 31, 33, 80, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(413, 'moderated_run', 27, 31, 37, 90, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(414, 'moderated_run', 27, 31, 41, 100, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(415, 'moderated_run', 32, 36, 0, 10, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(416, 'moderated_run', 32, 36, 5, 20, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(417, 'moderated_run', 32, 36, 9, 30, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(418, 'moderated_run', 32, 36, 13, 40, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(419, 'moderated_run', 32, 36, 17, 50, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(420, 'moderated_run', 32, 36, 21, 60, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(421, 'moderated_run', 32, 36, 25, 70, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(422, 'moderated_run', 32, 36, 29, 80, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(423, 'moderated_run', 32, 36, 33, 90, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(424, 'moderated_run', 32, 36, 37, 100, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(425, 'moderated_run', 37, 41, 0, 20, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(426, 'moderated_run', 37, 41, 5, 30, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(427, 'moderated_run', 37, 41, 9, 40, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(428, 'moderated_run', 37, 41, 13, 50, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(429, 'moderated_run', 37, 41, 17, 60, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(430, 'moderated_run', 37, 41, 21, 70, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(431, 'moderated_run', 37, 41, 25, 80, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(432, 'moderated_run', 37, 41, 29, 90, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(433, 'moderated_run', 37, 41, 33, 100, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(434, 'moderated_run', 42, 46, 0, 30, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(435, 'moderated_run', 42, 46, 5, 40, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(436, 'moderated_run', 42, 46, 9, 50, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(437, 'moderated_run', 42, 46, 13, 60, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(438, 'moderated_run', 42, 46, 17, 70, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(439, 'moderated_run', 42, 46, 21, 80, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(440, 'moderated_run', 42, 46, 25, 90, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(441, 'moderated_run', 42, 46, 29, 100, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(442, 'moderated_run', 47, 100, 0, 40, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(443, 'moderated_run', 47, 100, 5, 50, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(444, 'moderated_run', 47, 100, 9, 60, '2026-03-16 08:21:28', '2026-03-16 08:21:28'),
(445, 'moderated_run', 47, 100, 13, 70, '2026-03-16 08:21:29', '2026-03-16 08:21:29'),
(446, 'moderated_run', 47, 100, 17, 80, '2026-03-16 08:21:29', '2026-03-16 08:21:29'),
(447, 'moderated_run', 47, 100, 21, 90, '2026-03-16 08:21:29', '2026-03-16 08:21:29'),
(448, 'moderated_run', 47, 100, 25, 100, '2026-03-16 08:21:29', '2026-03-16 08:21:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `dahya_entries`
--
ALTER TABLE `dahya_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dahya_entries_dahya_week_id_foreign` (`dahya_week_id`),
  ADD KEY `dahya_entries_fog_user_id_foreign` (`fog_user_id`);

--
-- Indexes for table `dahya_weeks`
--
ALTER TABLE `dahya_weeks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fog_users`
--
ALTER TABLE `fog_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fog_users_groub_foreign` (`groub_id`),
  ADD KEY `fog_users_medanya_id_foreign` (`medanya_id`);

--
-- Indexes for table `groubs`
--
ALTER TABLE `groubs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leyaqas`
--
ALTER TABLE `leyaqas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medanyas`
--
ALTER TABLE `medanyas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `quick_tests`
--
ALTER TABLE `quick_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tests_users_id_foreign` (`users_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `workout_scores`
--
ALTER TABLE `workout_scores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dahya_entries`
--
ALTER TABLE `dahya_entries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=422;

--
-- AUTO_INCREMENT for table `dahya_weeks`
--
ALTER TABLE `dahya_weeks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fog_users`
--
ALTER TABLE `fog_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `groubs`
--
ALTER TABLE `groubs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leyaqas`
--
ALTER TABLE `leyaqas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `medanyas`
--
ALTER TABLE `medanyas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `quick_tests`
--
ALTER TABLE `quick_tests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=921;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `workout_scores`
--
ALTER TABLE `workout_scores`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=449;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dahya_entries`
--
ALTER TABLE `dahya_entries`
  ADD CONSTRAINT `dahya_entries_dahya_week_id_foreign` FOREIGN KEY (`dahya_week_id`) REFERENCES `dahya_weeks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `dahya_entries_fog_user_id_foreign` FOREIGN KEY (`fog_user_id`) REFERENCES `fog_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fog_users`
--
ALTER TABLE `fog_users`
  ADD CONSTRAINT `fog_users_groub_foreign` FOREIGN KEY (`groub_id`) REFERENCES `groubs` (`id`),
  ADD CONSTRAINT `fog_users_medanya_id_foreign` FOREIGN KEY (`medanya_id`) REFERENCES `medanyas` (`id`);

--
-- Constraints for table `tests`
--
ALTER TABLE `tests`
  ADD CONSTRAINT `tests_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `fog_users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
