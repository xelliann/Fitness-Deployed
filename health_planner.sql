-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2025 at 09:01 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `health_planner`
--

-- --------------------------------------------------------

--
-- Table structure for table `daily_stats`
--

CREATE TABLE `daily_stats` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `calories` int(11) DEFAULT NULL,
  `carbs` int(11) DEFAULT NULL,
  `heart_rate` int(11) DEFAULT NULL,
  `water` int(11) DEFAULT NULL,
  `exercise_minutes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daily_stats`
--

INSERT INTO `daily_stats` (`id`, `user_id`, `date`, `calories`, `carbs`, `heart_rate`, `water`, `exercise_minutes`) VALUES
(3, 4, '2025-08-21', 2200, 250, 72, 9, 40),
(4, 4, '2025-08-22', 2200, 250, 72, 9, 40),
(23, 4, '2025-08-20', 2150, 245, 75, 8, 35),
(24, 4, '2025-08-19', 2300, 260, 70, 10, 45);

-- --------------------------------------------------------

--
-- Table structure for table `diet_plan`
--

CREATE TABLE `diet_plan` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `day` varchar(10) NOT NULL,
  `meal_type` varchar(20) NOT NULL,
  `meal_name` varchar(255) NOT NULL,
  `calories` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diet_plan`
--

INSERT INTO `diet_plan` (`id`, `user_id`, `day`, `meal_type`, `meal_name`, `calories`, `created_at`) VALUES
(106, 3, 'monday', 'breakfast', 'Scrambled Eggs with Spinach and Whole Wheat Toast', 350, '2025-05-19 17:59:06'),
(107, 3, 'monday', 'brunch', 'Greek Yogurt with Berries', 200, '2025-05-19 17:59:06'),
(108, 3, 'monday', 'lunch', 'Grilled Chicken Salad with Avocado and Balsamic Vinaigrette', 400, '2025-05-19 17:59:06'),
(109, 3, 'monday', 'dinner', 'Baked Salmon with Quinoa and Roasted Vegetables', 500, '2025-05-19 17:59:06'),
(110, 3, 'tuesday', 'breakfast', 'Smoothie with Protein Powder, Spinach, Banana, and Almond Milk', 300, '2025-05-19 17:59:06'),
(111, 3, 'tuesday', 'brunch', 'Apple with Almond Butter', 150, '2025-05-19 17:59:06'),
(112, 3, 'tuesday', 'lunch', 'Turkey and Cheese Wrap with Mixed Greens', 350, '2025-05-19 17:59:06'),
(113, 3, 'tuesday', 'dinner', 'Stir-Fried Tofu with Brown Rice and Broccoli', 450, '2025-05-19 17:59:06'),
(114, 3, 'wednesday', 'breakfast', 'Whole Wheat Pancakes with Maple Syrup and Berries', 400, '2025-05-19 17:59:06'),
(115, 3, 'wednesday', 'brunch', 'Carrot Sticks with Hummus', 150, '2025-05-19 17:59:06'),
(116, 3, 'wednesday', 'lunch', 'Quinoa Salad with Chickpeas, Cucumber, and Feta Cheese', 350, '2025-05-19 17:59:06'),
(117, 3, 'wednesday', 'dinner', 'Grilled Steak with Sweet Potato Fries and Asparagus', 500, '2025-05-19 17:59:06'),
(118, 3, 'thursday', 'breakfast', 'Greek Yogurt Parfait with Granola and Mixed Berries', 300, '2025-05-19 17:59:06'),
(119, 3, 'thursday', 'brunch', 'Handful of Almonds', 200, '2025-05-19 17:59:06'),
(120, 3, 'thursday', 'lunch', 'Veggie and Hummus Wrap with Side Salad', 350, '2025-05-19 17:59:06'),
(121, 3, 'thursday', 'dinner', 'Baked Chicken with Quinoa and Steamed Green Beans', 450, '2025-05-19 17:59:06'),
(122, 3, 'friday', 'breakfast', 'Avocado Toast with Poached Eggs and Sriracha', 350, '2025-05-19 17:59:06'),
(123, 3, 'friday', 'brunch', 'Cottage Cheese with Pineapple', 200, '2025-05-19 17:59:06'),
(124, 3, 'friday', 'lunch', 'Tuna Salad Sandwich on Whole Wheat Bread', 350, '2025-05-19 17:59:06'),
(125, 3, 'friday', 'dinner', 'Vegetable Stir-Fry with Brown Rice and Tofu', 450, '2025-05-19 17:59:06'),
(126, 3, 'saturday', 'breakfast', 'Smoothie Bowl with Acai, Banana, Granola, and Coconut Flakes', 400, '2025-05-19 17:59:06'),
(127, 3, 'saturday', 'brunch', 'Whole Grain Crackers with Cheese', 200, '2025-05-19 17:59:06'),
(128, 3, 'saturday', 'lunch', 'Grilled Shrimp Caesar Salad', 400, '2025-05-19 17:59:06'),
(129, 3, 'saturday', 'dinner', 'Pasta Primavera with Mixed Vegetables and Parmesan Cheese', 500, '2025-05-19 17:59:06'),
(130, 3, 'sunday', 'breakfast', 'Whole Wheat Bagel with Cream Cheese and Smoked Salmon', 350, '2025-05-19 17:59:06'),
(131, 3, 'sunday', 'brunch', 'Trail Mix with Dried Fruit and Nuts', 200, '2025-05-19 17:59:06'),
(132, 3, 'sunday', 'lunch', 'Turkey and Avocado Wrap with Side of Fruit', 350, '2025-05-19 17:59:06'),
(133, 3, 'sunday', 'dinner', 'Baked Cod with Quinoa and Steamed Broccoli', 450, '2025-05-19 17:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `exercise_images`
--

CREATE TABLE `exercise_images` (
  `id` int(11) NOT NULL,
  `file_id` varchar(100) NOT NULL,
  `tags` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exercise_plan`
--

CREATE TABLE `exercise_plan` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `day` varchar(20) DEFAULT NULL,
  `exercise_name` varchar(255) DEFAULT NULL,
  `reps_or_duration` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exercise_plan`
--

INSERT INTO `exercise_plan` (`id`, `user_id`, `day`, `exercise_name`, `reps_or_duration`) VALUES
(59, 3, 'monday', 'Running', '30 minutes'),
(60, 3, 'monday', 'Push-ups', '3 sets of 15'),
(61, 3, 'monday', 'Lunges', '3 sets of 12'),
(62, 3, 'monday', 'Plank', '1 minute'),
(63, 3, 'tuesday', 'Cycling', '45 minutes'),
(64, 3, 'tuesday', 'Pull-ups', '3 sets of 10'),
(65, 3, 'tuesday', 'Squats', '3 sets of 12'),
(66, 3, 'tuesday', 'Russian Twists', '3 sets of 20'),
(67, 3, 'wednesday', 'HIIT Workout', '20 minutes'),
(68, 3, 'wednesday', 'Bicep Curls', '3 sets of 12'),
(69, 3, 'wednesday', 'Tricep Dips', '3 sets of 15'),
(70, 3, 'wednesday', 'Mountain Climbers', '3 sets of 30'),
(71, 3, 'thursday', 'Swimming', '30 minutes'),
(72, 3, 'thursday', 'Deadlifts', '3 sets of 8'),
(73, 3, 'thursday', 'Leg Press', '3 sets of 12'),
(74, 3, 'thursday', 'Side Plank', '30 seconds each side'),
(75, 3, 'friday', 'Cardio Kickboxing', '40 minutes'),
(76, 3, 'friday', 'Burpees', '3 sets of 10'),
(77, 3, 'friday', 'Shoulder Press', '3 sets of 12'),
(78, 3, 'friday', 'Russian Twists', '3 sets of 20'),
(79, 3, 'saturday', 'Yoga', '1 hour'),
(80, 3, 'saturday', 'Renegade Rows', '3 sets of 10'),
(81, 3, 'saturday', 'Jumping Jacks', '3 sets of 30'),
(82, 3, 'saturday', 'Leg Raises', '3 sets of 15'),
(83, 3, 'sunday', 'Rest Day', '');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `message`, `created_at`) VALUES
(1, 1, 'Your application is impeccible', '2025-04-23 12:16:42'),
(2, 1, 'Your application is impeccible', '2025-04-23 12:17:21');

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `amount` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`id`, `user_id`, `date`, `time`, `name`, `category`, `amount`) VALUES
(1, 1, '2025-05-19', '08:00:00', 'Oatmeal', 'Breakfast', 1),
(2, 1, '2025-05-19', '12:30:00', 'Grilled Chicken Salad', 'Lunch', 1),
(3, 1, '2025-05-19', '19:00:00', 'Steamed Vegetables & Rice', 'Dinner', 1),
(4, 1, '2025-05-19', '16:00:00', 'Banana', 'Snack', 2),
(5, 3, '2025-05-23', '08:00:00', 'Avocado Toast', 'Breakfast', 1),
(6, 3, '2025-05-23', '10:30:00', 'Greek Yogurt', 'Snack', 1),
(7, 3, '2025-05-23', '13:00:00', 'Grilled Fish & Quinoa', 'Lunch', 1),
(8, 3, '2025-05-23', '16:30:00', 'Apple', 'Snack', 2),
(9, 3, '2025-05-23', '19:30:00', 'Vegetable Stir-fry with Tofu', 'Dinner', 1),
(10, 4, '2025-08-22', '08:00:00', 'Protein Oatmeal', 'Breakfast', 1),
(11, 4, '2025-08-22', '11:00:00', 'Greek Yogurt with Nuts', 'Snack', 1),
(12, 4, '2025-08-22', '13:00:00', 'Grilled Chicken Salad', 'Lunch', 1),
(13, 4, '2025-08-22', '16:00:00', 'Protein Shake', 'Snack', 1),
(14, 4, '2025-08-22', '19:00:00', 'Salmon with Vegetables', 'Dinner', 1);

-- --------------------------------------------------------

--
-- Table structure for table `recommended_food`
--

CREATE TABLE `recommended_food` (
  `id` int(11) NOT NULL,
  `food_name` varchar(100) DEFAULT NULL,
  `carbs` int(11) DEFAULT NULL,
  `fats` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recommended_food`
--

INSERT INTO `recommended_food` (`id`, `food_name`, `carbs`, `fats`, `quantity`, `icon`) VALUES
(1, 'Oatmeal', 27, 3, 1, '🥣'),
(2, 'Grilled Chicken Breast', 0, 3, 100, '🍗'),
(3, 'Banana', 27, 0, 1, '🍌'),
(4, 'Brown Rice', 45, 1, 1, '🍚'),
(5, 'Avocado', 12, 15, 1, '🥑'),
(6, 'Greek Yogurt', 9, 5, 1, '🥛'),
(7, 'Boiled Egg', 1, 5, 1, '🥚'),
(8, 'Broccoli', 6, 0, 1, '🥦'),
(9, 'Almonds', 6, 14, 1, '🌰'),
(10, 'Apple', 25, 0, 1, '🍎');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `height` float DEFAULT NULL,
  `goal` varchar(50) DEFAULT NULL,
  `activity_level` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `age`, `weight`, `height`, `goal`, `activity_level`, `created_at`, `role`) VALUES
(4, 'Mohit', 'mohisharma7890@gmail.com', '$2y$10$R6gdNTGocevYyyfTem0h9eF.iRRiyU0qZznZN4y7zMJGTeTR1Opiy', NULL, NULL, NULL, NULL, NULL, '2025-08-21 06:58:20', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_fitness_data`
--

CREATE TABLE `user_fitness_data` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `steps` int(11) DEFAULT 0,
  `calories_burned` int(11) DEFAULT 0,
  `active_minutes` int(11) DEFAULT 0,
  `sleep_hours` float DEFAULT 0,
  `workout_type` varchar(100) DEFAULT NULL,
  `workout_duration` int(11) DEFAULT 0,
  `avg_heart_rate` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_fitness_data`
--

INSERT INTO `user_fitness_data` (`id`, `user_id`, `date`, `steps`, `calories_burned`, `active_minutes`, `sleep_hours`, `workout_type`, `workout_duration`, `avg_heart_rate`, `created_at`) VALUES
(1, 1, '2025-04-15', 8500, 450, 60, 7.5, 'Running', 30, 130, '2025-04-16 10:27:54'),
(2, 1, '2025-04-14', 4000, 250, 25, 6.8, 'Walking', 20, 110, '2025-04-16 10:27:54'),
(3, 1, '2025-04-13', 10000, 300, 80, 8, 'Cycling', 40, 140, '2025-04-16 10:27:54'),
(4, 1, '2025-04-12', 6500, 600, 50, 7.2, 'Yoga', 45, 95, '2025-04-16 10:27:54'),
(5, 4, '2025-04-11', 12000, 400, 90, 6.5, 'HIIT', 35, 150, '2025-04-16 10:27:54'),
(6, 4, '2025-04-15', 8500, 450, 60, 7.5, 'Running', 30, 130, '2025-04-16 10:27:54'),
(7, 4, '2025-04-14', 4000, 250, 25, 6.8, 'Walking', 20, 110, '2025-04-16 10:27:54'),
(8, 4, '2025-04-13', 10000, 300, 80, 8, 'Cycling', 40, 140, '2025-04-16 10:27:54'),
(9, 3, '2025-04-12', 6500, 600, 50, 7.2, 'Yoga', 45, 95, '2025-04-16 10:27:54'),
(10, 3, '2025-04-11', 12000, 400, 90, 6.5, 'HIIT', 35, 150, '2025-04-16 10:27:54'),
(11, 4, '2025-08-22', 8500, 450, 65, 8, 'Mixed Workout', 45, 130, '2025-08-22 06:39:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daily_stats`
--
ALTER TABLE `daily_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `diet_plan`
--
ALTER TABLE `diet_plan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `exercise_images`
--
ALTER TABLE `exercise_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exercise_plan`
--
ALTER TABLE `exercise_plan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recommended_food`
--
ALTER TABLE `recommended_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_fitness_data`
--
ALTER TABLE `user_fitness_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daily_stats`
--
ALTER TABLE `daily_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `diet_plan`
--
ALTER TABLE `diet_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `exercise_images`
--
ALTER TABLE `exercise_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `exercise_plan`
--
ALTER TABLE `exercise_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `recommended_food`
--
ALTER TABLE `recommended_food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_fitness_data`
--
ALTER TABLE `user_fitness_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
