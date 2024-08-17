-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2024 at 07:41 PM
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
-- Database: `sports`
--

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--
DROP TABLE IF EXISTS `recipes`;
CREATE TABLE  `recipes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time` enum('breakfast','lunch','dinner') NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `day_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `time`, `description`, `image`, `day_id`, `created_at`, `updated_at`) VALUES
(1, 'breakfast', 'Tuna mushroom meal is a very hearty dish that contains tuna, mushrooms and broccoli. You can put two pieces of tuna with three pieces of mushrooms and broccoli as desired. It is a very useful dish', 'images/recipes/1722613730_photo_1_2024-08-02_18-46-14.jpg', 1, '2024-08-02 15:48:52', '2024-08-02 15:48:52'),
(2, 'lunch', 'Corn meal with meat. It is a very useful dish. It takes a few minutes to prepare. Put one head of corn and also a little piece of meat. Add a cup of water and add salt. It is a wonderful and delicious meal', 'images/recipes/1722613787_photo_2_2024-08-02_18-46-14.jpg', 1, '2024-08-02 15:49:47', '2024-08-02 15:49:47'),
(3, 'dinner', 'Carrot salad with nuts. This is a very useful salad that helps make your body healthy. All you have to do is put two carrots with the nuts you prefer', 'images/recipes/1722613827_photo_3_2024-08-02_18-46-14.jpg', 1, '2024-08-02 15:50:27', '2024-08-02 15:50:27'),
(4, 'breakfast', 'Oatmeal meal with berries, friso and banana. It is a meal rich in minerals and very beneficial. Just mash the banana, then put a handful of berries and two strawberries, and add nuts as you wish', 'images/recipes/1722613918_photo_1_2024-08-02_18-51-20.jpg', 2, '2024-08-02 15:51:58', '2024-08-02 15:51:58'),
(5, 'lunch', 'Grilled Mushroom Meal with Eggs and Avocado Just grill three heads of mushrooms, then place them on toasted bread, add two eggs, one avocado, and a head of tomato', 'images/recipes/1722613952_photo_2_2024-08-02_18-51-20.jpg', 2, '2024-08-02 15:52:32', '2024-08-02 15:52:32'),
(6, 'dinner', 'Bean salad is a very useful salad. Put half a cup of kidney beans, then put arugula leaves with pieces of avocado and add a pinch of salt with lemon', 'images/recipes/1722613971_photo_3_2024-08-02_18-51-20.jpg', 2, '2024-08-02 15:52:51', '2024-08-02 15:52:51'),
(7, 'breakfast', 'Egg salad with pineapple and toasted bread. It is a very useful salad. Put three pieces of pineapple, then cut two eggs and put the toasted bread. You can add salt and lemon', 'images/recipes/1722614034_photo_1_2024-08-02_18-53-03.jpg', 3, '2024-08-02 15:53:54', '2024-08-02 15:53:54'),
(8, 'lunch', 'The rice meal with mushrooms and peppers is a very healthy meal. It contains a cup of boiled rice, in addition to a head of pepper and two heads of mushrooms. It is very wonderfu', 'images/recipes/1722614067_photo_2_2024-08-02_18-53-03.jpg', 3, '2024-08-02 15:54:27', '2024-08-02 15:54:27'),
(9, 'dinner', 'Strawberry salad with grapes and berries. It is a very healthy recipe. You can put three strawberries with a handful of berries, and you can also put a lot of grapes. It is a very useful and healthy salad', 'images/recipes/1722614090_photo_3_2024-08-02_18-53-03.jpg', 3, '2024-08-02 15:54:50', '2024-08-02 15:54:50'),
(10, 'breakfast', 'Banana salad with mint. It is a very useful salad and helps the digestive system. You can cut two bananas and add mint. It is a very wonderful salad. I recommend eating it often', 'images/recipes/1722614132_photo_2_2024-08-02_18-55-13.jpg', 4, '2024-08-02 15:55:32', '2024-08-02 15:55:32'),
(11, 'lunch', 'Egg meal with avocado. Just boil two eggs, mash them, add salt, put a piece of avocado and a head of chopped tomatoes', 'images/recipes/1722614170_photo_2_2024-08-02_18-55-13.jpg', 4, '2024-08-02 15:56:10', '2024-08-02 15:56:10'),
(12, 'dinner', 'Chinglish salad with avocado and cabbage. Place a small piece of chinglish and cut it, then place a small part of the cabbage, then put a piece of avocado and salt as desired', 'images/recipes/1722614202_photo_3_2024-08-02_18-55-13.jpg', 4, '2024-08-02 15:56:42', '2024-08-02 15:56:42'),
(13, 'breakfast', 'Pasta salad is a wonderful and very healthy salad. You need to boil a cup of pasta with mint and the spices you want', 'images/recipes/1722614258_photo_1_2024-08-02_18-57-09.jpg', 5, '2024-08-02 15:57:38', '2024-08-02 15:57:38'),
(14, 'lunch', 'Chicken meal with carrots, pearls and lettuce. It is a very popular and useful meal. Cut half a chicken breast, cut the carrots, put a handful of corn, then put it on the fire with a little oil and do not forget to put the lettuce', 'images/recipes/1722614288_photo_2_2024-08-02_18-57-09.jpg', 5, '2024-08-02 15:58:08', '2024-08-02 15:58:08'),
(15, 'dinner', 'Apple salad with lettuce. It is a very useful salad. Walnuts can be added to it. Cut an apple, then put as much lettuce as you want', 'images/recipes/1722614312_photo_3_2024-08-02_18-57-09.jpg', 5, '2024-08-02 15:58:32', '2024-08-02 15:58:32'),
(16, 'breakfast', 'Cheese salad with cucumber. It is a very useful salad and the way to prepare it is very easy. Just put three cucumbers, grate any type of cheese you want, and add mint', 'images/recipes/1722614364_photo_1_2024-08-02_18-58-54.jpg', 6, '2024-08-02 15:59:24', '2024-08-02 15:59:24'),
(17, 'lunch', 'It\'s a simple dish. Just grill two pieces of sausage with two fried eggs, and don\'t forget the cucumbers and tomatoes. Add as much as you like', 'images/recipes/1722614426_photo_2_2024-08-02_18-58-54.jpg', 6, '2024-08-02 16:00:26', '2024-08-02 16:00:26'),
(18, 'dinner', 'Strawberry salad with dates and mint. It is a very wonderful salad. First, cut three strawberries and put them in three pieces. Cut them however you like, then put the mint', 'images/recipes/1722614447_photo_3_2024-08-02_18-58-54.jpg', 6, '2024-08-02 16:00:47', '2024-08-02 16:00:47'),
(19, 'breakfast', 'Fattoush salad is a salad that contains many nutritional benefits. To prepare it, cut three cucumbers, then tomatoes, then add mint and add onions with toasted khadibis, and do not forget to add lemon', 'images/recipes/1722614521_photo_1_2024-08-02_19-01-03.jpg', 7, '2024-08-02 16:02:01', '2024-08-02 16:02:01'),
(20, 'lunch', 'Mushroom meal with smoked chicken breast. First, smoke the chicken breast, then grill the mushrooms, three heads of mushrooms, then add a handful of boiled corn, and do not forget the broccoli and tomatoes', 'images/recipes/1722614551_photo_2_2024-08-02_19-01-03.jpg', 7, '2024-08-02 16:02:31', '2024-08-02 16:02:31'),
(21, 'dinner', 'Raspberry salad. It is a very useful salad. Add this fruit to it. It is also rich in nutritional benefits. Add the amount you want because it is very useful', 'images/recipes/1722614584_photo_3_2024-08-02_19-01-03.jpg', 7, '2024-08-02 16:03:04', '2024-08-02 16:03:04'),
(22, 'breakfast', 'Mango, strawberry and kiwi salad. Cut one of each of these fruits and add a squeeze of lemon to it. It is very delicious', 'images/recipes/1722614687_photo_1_2024-08-02_19-04-42.jpg', 8, '2024-08-02 16:04:47', '2024-08-02 16:04:47'),
(23, 'lunch', 'Steamed prawns with rice meal. First, steam the prawns five pieces, then boil the rice with broccoli, and good luck', 'images/recipes/1722614719_photo_2_2024-08-02_19-04-42.jpg', 8, '2024-08-02 16:05:19', '2024-08-02 16:05:19'),
(24, 'dinner', 'Legume salad. It is a very useful salad. Place boiled peas and boiled chickpeas with the addition of carrots, onions and zucchini', 'images/recipes/1722614744_photo_3_2024-08-02_19-04-42.jpg', 8, '2024-08-02 16:05:44', '2024-08-02 16:05:44'),
(25, 'breakfast', 'Grape salad with kiwi and berries. Cut three kiwis, a bunch of grapes, and a handful of berries, then add lemon juice to them', 'images/recipes/1722614822_photo_1_2024-08-02_19-06-00.jpg', 9, '2024-08-02 16:07:02', '2024-08-02 16:07:02'),
(26, 'lunch', 'Cooked zucchini with tomatoes is a wonderful and healthy meal. Cook a head of zucchini with tomatoes and eat', 'images/recipes/1722614862_photo_2_2024-08-02_19-06-00.jpg', 9, '2024-08-02 16:07:42', '2024-08-02 16:07:42'),
(27, 'dinner', 'Lettuce salad with broccoli. It is a wonderful salad. Just cut the lettuce and add the broccoli', 'images/recipes/1722614908_photo_3_2024-08-02_19-06-00.jpg', 9, '2024-08-02 16:08:28', '2024-08-02 16:08:28'),
(28, 'breakfast', 'Fig and avocado salad: Cut two figs and add a piece of avocado', 'images/recipes/1722614956_photo_1_2024-08-02_19-08-52.jpg', 10, '2024-08-02 16:09:16', '2024-08-02 16:09:16'),
(29, 'lunch', 'Pasta meal with prawns: First, boil the pasta, then put the fried prawns on top of it and put a little boiled corn', 'images/recipes/1722614983_photo_2_2024-08-02_19-08-52.jpg', 10, '2024-08-02 16:09:43', '2024-08-02 16:09:43'),
(30, 'dinner', 'Avocado salad with cucumber. Cut three cucumbers, then a head of avocado with lettuce. Do not forget to add salt and lemon', 'images/recipes/1722615006_photo_3_2024-08-02_19-08-52.jpg', 10, '2024-08-02 16:10:06', '2024-08-02 16:10:06'),
(31, 'breakfast', 'Carrot salad with nuts. This is a very useful salad that helps make your body healthy. All you have to do is put two carrots with the nuts you prefer', 'images/recipes/1722616460_photo_1_2024-08-02_19-13-52.jpg', 16, '2024-08-02 16:34:20', '2024-08-02 16:34:20'),
(32, 'lunch', 'Tuna mushroom meal is a very hearty dish that contains tuna, mushrooms and broccoli. You can put two pieces of tuna with three pieces of mushrooms and broccoli as desired. It is a very useful dish', 'images/recipes/1722616491_photo_2_2024-08-02_19-13-52.jpg', 16, '2024-08-02 16:34:51', '2024-08-02 16:34:51'),
(33, 'dinner', 'Corn meal with meat. It is a very useful dish. It takes a few minutes to prepare. Put one head of corn and also a little piece of meat. Add a cup of water and add salt. It is a wonderful and delicious meal', 'images/recipes/1722616515_photo_3_2024-08-02_19-13-52.jpg', 16, '2024-08-02 16:35:15', '2024-08-02 16:35:15'),
(34, 'breakfast', 'Legume salad. It is a very useful salad. Place boiled peas and boiled chickpeas with the addition of carrots, onions and zucchini', 'images/recipes/1722616583_photo_1_2024-08-02_19-35-54.jpg', 17, '2024-08-02 16:36:23', '2024-08-02 16:36:23'),
(35, 'lunch', 'Strawberry salad with berries. It is a delicious and very useful salad. First, cut three strawberries and put a handful of berries on top of them', 'images/recipes/1722616619_photo_2_2024-08-02_19-35-54.jpg', 17, '2024-08-02 16:36:59', '2024-08-02 16:36:59'),
(36, 'dinner', 'Meat meal with potatoes and carrots: First, pour a small piece of meat with tomato paste, then put the potato heads, and do not forget to add a head of carrots', 'images/recipes/1722616640_photo_3_2024-08-02_19-35-54.jpg', 17, '2024-08-02 16:37:20', '2024-08-02 16:37:20'),
(37, 'breakfast', 'Legume salad. It is a very useful salad. Place boiled peas and boiled chickpeas with the addition of carrots, onions and zucchini', 'images/recipes/1722616790_photo_1_2024-08-02_19-39-07.jpg', 18, '2024-08-02 16:39:50', '2024-08-02 16:39:50'),
(38, 'lunch', 'Berry salad with watermelon. Cut a little watermelon as shown in the picture, then add berries and cherries. It is delicious and useful', 'images/recipes/1722616818_photo_2_2024-08-02_19-39-07.jpg', 18, '2024-08-02 16:40:18', '2024-08-02 16:40:18'),
(39, 'dinner', 'Cordonbleu meal is a delicious and very useful meal with beans. First, grill a chicken breast, then cook the cream and put it on top, and put the beans as well', 'images/recipes/1722616896_photo_3_2024-08-02_19-39-07.jpg', 18, '2024-08-02 16:41:36', '2024-08-02 16:41:36'),
(40, 'breakfast', 'Cucumber salad with onions. Cut three cucumbers with an onion head and add the seven spices with salt, and do not forget the lemon', 'images/recipes/1722616975_photo_1_2024-08-02_19-42-00.jpg', 19, '2024-08-02 16:42:55', '2024-08-02 16:42:55'),
(41, 'lunch', 'Kiwi salad with strawberries and berries. Place pieces of kiwi with strawberries and berries', 'images/recipes/1722616997_photo_2_2024-08-02_19-42-00.jpg', 19, '2024-08-02 16:43:17', '2024-08-02 16:43:17'),
(42, 'dinner', 'Pasta soup with carrots: First, boil a cup of pasta, then add a head of carrots to boil', 'images/recipes/1722617017_photo_3_2024-08-02_19-42-00.jpg', 19, '2024-08-02 16:43:37', '2024-08-02 16:43:37'),
(43, 'breakfast', 'Cucumber salad with onions. Cut three cucumbers with an onion head and add the seven spices with salt, and do not forget the lemon', 'images/recipes/1722617111_photo_1_2024-08-02_19-43-55.jpg', 20, '2024-08-02 16:45:11', '2024-08-02 16:45:11'),
(44, 'lunch', 'Kiwi salad with apples and oranges. First, cut three heads of kiwi, then one head of apple, and put an orange with a squeeze of lemon', 'images/recipes/1722617156_photo_2_2024-08-02_19-43-55.jpg', 20, '2024-08-02 16:45:56', '2024-08-02 16:45:56'),
(45, 'dinner', 'Meatball meal with boiled peas and mashed potatoes. First, cook the meatballs, then boil the potatoes, mash them by the size of a head, and put the boiled peas', 'images/recipes/1722617198_photo_3_2024-08-02_19-43-55.jpg', 20, '2024-08-02 16:46:38', '2024-08-02 16:46:38'),
(46, 'breakfast', 'Radish salad with beans: Cut three heads of radishes, add a handful of boiled beans, and do not forget the mint with salt', 'images/recipes/1722617269_photo_1_2024-08-02_19-47-10.jpg', 21, '2024-08-02 16:47:49', '2024-08-02 16:47:49'),
(47, 'lunch', 'Grape salad with avocado', 'images/recipes/1722617323_photo_2_2024-08-02_19-47-10.jpg', 21, '2024-08-02 16:48:43', '2024-08-02 16:48:43'),
(48, 'dinner', 'Mushroom meal with mashed potatoes. First, fry a head of mushrooms in olive oil, then boil a head of potatoes, then mash it, put all the ingredients together, then add the cream', 'images/recipes/1722617363_photo_3_2024-08-02_19-47-10.jpg', 21, '2024-08-02 16:49:23', '2024-08-02 16:49:23'),
(49, 'breakfast', 'Avocado salad with cucumber. Cut three cucumbers, then a head of avocado with lettuce. Do not forget to add salt and lemon', 'images/recipes/1722617457_photo_1_2024-08-02_19-50-22.jpg', 22, '2024-08-02 16:50:57', '2024-08-02 16:50:57'),
(50, 'lunch', 'Fig and avocado salad: Cut two figs and add a piece of avocado', 'images/recipes/1722617480_photo_2_2024-08-02_19-50-22.jpg', 22, '2024-08-02 16:51:20', '2024-08-02 16:51:20'),
(51, 'dinner', 'Pasta meal with prawns: First, boil the pasta, then put the fried prawns on top of it and put a little boiled corn', 'images/recipes/1722617517_photo_3_2024-08-02_19-50-22.jpg', 22, '2024-08-02 16:51:57', '2024-08-02 16:51:57'),
(52, 'breakfast', 'Lettuce salad with broccoli. It is a wonderful salad. Just cut the lettuce and add the broccoli', 'images/recipes/1722617689_photo_1_2024-08-02_19-53-44.jpg', 23, '2024-08-02 16:54:49', '2024-08-02 16:54:49'),
(53, 'lunch', 'Grape salad with kiwi and berries. Cut three kiwis, a bunch of grapes, and a handful of berries, then add lemon juice to them', 'images/recipes/1722617725_photo_2_2024-08-02_19-53-44.jpg', 23, '2024-08-02 16:55:25', '2024-08-02 16:55:25'),
(54, 'dinner', 'Cooked zucchini with tomatoes is a wonderful and healthy meal. Cook a head of zucchini with tomatoes and eat', 'images/recipes/1722617748_photo_3_2024-08-02_19-53-44.jpg', 23, '2024-08-02 16:55:48', '2024-08-02 16:55:48'),
(55, 'breakfast', 'Legume salad. It is a very useful salad. Place boiled peas and boiled chickpeas with the addition of carrots, onions and zucchini', 'images/recipes/1722617802_photo_1_2024-08-02_19-56-16.jpg', 24, '2024-08-02 16:56:42', '2024-08-02 16:56:42'),
(56, 'lunch', 'Mango, strawberry and kiwi salad. Cut one of each of these fruits and add a squeeze of lemon to it. It is very delicious', 'images/recipes/1722617827_photo_2_2024-08-02_19-56-16.jpg', 24, '2024-08-02 16:57:07', '2024-08-02 16:57:07'),
(57, 'dinner', 'Steamed prawns with rice meal. First, steam the prawns five pieces, then boil the rice with broccoli, and good luck', 'images/recipes/1722617848_photo_3_2024-08-02_19-56-16.jpg', 24, '2024-08-02 16:57:28', '2024-08-02 16:57:28'),
(58, 'breakfast', 'Raspberry salad. It is a very useful salad. Add this fruit to it. It is also rich in nutritional benefits. Add the amount you want because it is very useful', 'images/recipes/1722617903_photo_1_2024-08-02_19-57-43.jpg', 25, '2024-08-02 16:58:23', '2024-08-02 16:58:23'),
(59, 'lunch', 'Mushroom meal with smoked chicken breast. First, smoke the chicken breast, then grill the mushrooms, three heads of mushrooms, then add a handful of boiled corn, and do not forget the broccoli and tomatoes', 'images/recipes/1722617933_photo_2_2024-08-02_19-57-43.jpg', 25, '2024-08-02 16:58:53', '2024-08-02 16:58:53'),
(60, 'dinner', 'Fattoush salad is a salad that contains many nutritional benefits. To prepare it, cut three cucumbers, then tomatoes, then add mint and add onions with toasted khadibis, and do not forget to add lemon', 'images/recipes/1722617959_photo_3_2024-08-02_19-57-43.jpg', 25, '2024-08-02 16:59:19', '2024-08-02 16:59:19'),
(61, 'breakfast', 'Strawberry salad with grapes and berries. It is a very healthy recipe. You can put three strawberries with a handful of berries, and you can also put a lot of grapes. It is a very useful and healthy salad', 'images/recipes/1722618691_photo_1_2024-08-02_20-10-05.jpg', 31, '2024-08-02 17:11:31', '2024-08-02 17:11:31'),
(62, 'lunch', 'Egg salad with pineapple and toasted bread. It is a very useful salad. Put three pieces of pineapple, then cut two eggs and put the toasted bread. You can add salt and lemon', 'images/recipes/1722618730_photo_2_2024-08-02_20-10-05.jpg', 31, '2024-08-02 17:12:10', '2024-08-02 17:12:10'),
(63, 'dinner', 'The rice meal with mushrooms and peppers is a very healthy meal. It contains a cup of boiled rice, in addition to a head of pepper and two heads of mushrooms. It is very wonderful', 'images/recipes/1722618815_photo_3_2024-08-02_20-10-05.jpg', 31, '2024-08-02 17:13:35', '2024-08-02 17:13:35'),
(64, 'breakfast', 'Oatmeal meal with berries, friso and banana. It is a meal rich in minerals and very beneficial. Just mash the banana, then put a handful of berries and two strawberries, and add nuts as you wish', 'images/recipes/1722618870_photo_1_2024-08-02_20-14-03.jpg', 32, '2024-08-02 17:14:30', '2024-08-02 17:14:30'),
(65, 'lunch', 'Grilled Mushroom Meal with Eggs and Avocado Just grill three heads of mushrooms, then place them on toasted bread, add two eggs, one avocado, and a head of tomato', 'images/recipes/1722618897_photo_2_2024-08-02_20-14-03.jpg', 32, '2024-08-02 17:14:57', '2024-08-02 17:14:57'),
(66, 'dinner', 'Bean salad is a very useful salad. Put half a cup of kidney beans, then put arugula leaves with pieces of avocado and add a pinch of salt with lemon', 'images/recipes/1722618921_photo_3_2024-08-02_20-14-03.jpg', 32, '2024-08-02 17:15:21', '2024-08-02 17:15:21'),
(67, 'breakfast', 'Chinglish salad with avocado and cabbage. Place a small piece of chinglish and cut it, then place a small part of the cabbage, then put a piece of avocado and salt as desired', 'images/recipes/1722618994_photo_1_2024-08-02_20-16-02.jpg', 33, '2024-08-02 17:16:34', '2024-08-02 17:16:34'),
(68, 'lunch', 'Banana salad with mint. It is a very useful salad and helps the digestive system. You can cut two bananas and add mint. It is a very wonderful salad. I recommend eating it often', 'images/recipes/1722619023_photo_2_2024-08-02_20-16-02.jpg', 33, '2024-08-02 17:17:03', '2024-08-02 17:17:03'),
(69, 'dinner', 'Egg meal with avocado. Just boil two eggs, mash them, add salt, put a piece of avocado and a head of chopped tomatoes', 'images/recipes/1722619056_photo_3_2024-08-02_20-16-02.jpg', 33, '2024-08-02 17:17:36', '2024-08-02 17:17:36'),
(70, 'breakfast', 'Apple salad with lettuce. It is a very useful salad. Walnuts can be added to it. Cut an apple, then put as much lettuce as you want', 'images/recipes/1722619130_photo_1_2024-08-02_20-17-51.jpg', 34, '2024-08-02 17:18:50', '2024-08-02 17:18:50'),
(71, 'lunch', 'Pasta salad is a wonderful and very healthy salad. You need to boil a cup of pasta with mint and the spices you want', 'images/recipes/1722619157_photo_2_2024-08-02_20-17-51.jpg', 34, '2024-08-02 17:19:17', '2024-08-02 17:19:17'),
(72, 'dinner', 'Chicken meal with carrots, pearls and lettuce. It is a very popular and useful meal. Cut half a chicken breast, cut the carrots, put a handful of corn, then put it on the fire with a little oil and do not forget to put the lettuce', 'images/recipes/1722619183_photo_3_2024-08-02_20-17-51.jpg', 34, '2024-08-02 17:19:43', '2024-08-02 17:19:43'),
(73, 'breakfast', 'Strawberry salad with dates and mint. It is a very wonderful salad. First, cut three strawberries and put them in three pieces. Cut them however you like, then put the mint', 'images/recipes/1722619657_photo_1_2024-08-02_20-20-06.jpg', 35, '2024-08-02 17:27:37', '2024-08-02 17:27:37'),
(74, 'lunch', 'Cheese salad with cucumber. It is a very useful salad and the way to prepare it is very easy. Just put three cucumbers, grate any type of cheese you want, and add mint', 'images/recipes/1722619685_photo_2_2024-08-02_20-20-06.jpg', 35, '2024-08-02 17:28:05', '2024-08-02 17:28:05'),
(75, 'dinner', 'It\'s a simple dish. Just grill two pieces of sausage with two fried eggs, and don\'t forget the cucumbers and tomatoes. Add as much as you like', 'images/recipes/1722619708_photo_3_2024-08-02_20-20-06.jpg', 35, '2024-08-02 17:28:28', '2024-08-02 17:28:28'),
(76, 'breakfast', 'Raspberry salad. It is a very useful salad. Add this fruit to it. It is also rich in nutritional benefits. Add the amount you want because it is very useful', 'images/recipes/1722619814_photo_1_2024-08-02_20-29-43.jpg', 36, '2024-08-02 17:30:14', '2024-08-02 17:30:14'),
(77, 'lunch', 'Mushroom meal with smoked chicken breast. First, smoke the chicken breast, then grill the mushrooms, three heads of mushrooms, then add a handful of boiled corn, and do not forget the broccoli and tomatoes', 'images/recipes/1722619866_photo_2_2024-08-02_20-29-43.jpg', 36, '2024-08-02 17:31:06', '2024-08-02 17:31:06'),
(78, 'dinner', 'Fattoush salad is a salad that contains many nutritional benefits. To prepare it, cut three cucumbers, then tomatoes, then add mint and add onions with toasted khadibis, and do not forget to add lemon', 'images/recipes/1722619887_photo_3_2024-08-02_20-29-43.jpg', 36, '2024-08-02 17:31:27', '2024-08-02 17:31:27'),
(79, 'breakfast', 'Legume salad. It is a very useful salad. Place boiled peas and boiled chickpeas with the addition of carrots, onions and zucchini', 'images/recipes/1722619964_photo_1_2024-08-02_20-31-52.jpg', 37, '2024-08-02 17:32:44', '2024-08-02 17:32:44'),
(80, 'lunch', 'Mango, strawberry and kiwi salad. Cut one of each of these fruits and add a squeeze of lemon to it. It is very delicious', 'images/recipes/1722619986_photo_2_2024-08-02_20-31-52.jpg', 37, '2024-08-02 17:33:06', '2024-08-02 17:33:06'),
(81, 'dinner', 'Steamed prawns with rice meal. First, steam the prawns five pieces, then boil the rice with broccoli, and good luck', 'images/recipes/1722620009_photo_3_2024-08-02_20-31-52.jpg', 37, '2024-08-02 17:33:29', '2024-08-02 17:33:29'),
(82, 'breakfast', 'Lettuce salad with broccoli. It is a wonderful salad. Just cut the lettuce and add the broccoli', 'images/recipes/1722620078_photo_1_2024-08-02_20-34-27.jpg', 38, '2024-08-02 17:34:38', '2024-08-02 17:34:38'),
(83, 'lunch', 'Grape salad with kiwi and berries. Cut three kiwis, a bunch of grapes, and a handful of berries, then add lemon juice to them', 'images/recipes/1722620107_photo_2_2024-08-02_20-34-27.jpg', 38, '2024-08-02 17:35:07', '2024-08-02 17:35:07'),
(84, 'dinner', 'Cooked zucchini with tomatoes is a wonderful and healthy meal. Cook a head of zucchini with tomatoes and eat', 'images/recipes/1722620133_photo_3_2024-08-02_20-34-27.jpg', 38, '2024-08-02 17:35:33', '2024-08-02 17:35:33'),
(85, 'breakfast', 'Avocado salad with cucumber. Cut three cucumbers, then a head of avocado with lettuce. Do not forget to add salt and lemon', 'images/recipes/1722620201_photo_1_2024-08-02_20-35-54.jpg', 39, '2024-08-02 17:36:41', '2024-08-02 17:36:41'),
(86, 'lunch', 'Fig and avocado salad: Cut two figs and add a piece of avocado', 'images/recipes/1722620231_photo_2_2024-08-02_20-35-54.jpg', 39, '2024-08-02 17:37:11', '2024-08-02 17:37:11'),
(87, 'dinner', 'Pasta meal with prawns: First, boil the pasta, then put the fried prawns on top of it and put a little boiled corn', 'images/recipes/1722620259_photo_3_2024-08-02_20-35-54.jpg', 39, '2024-08-02 17:37:39', '2024-08-02 17:37:39'),
(88, 'breakfast', 'Radish salad with beans: Cut three heads of radishes, add a handful of boiled beans, and do not forget the mint with salt', 'images/recipes/1722620371_photo_1_2024-08-02_20-37-54.jpg', 40, '2024-08-02 17:39:31', '2024-08-02 17:39:31'),
(89, 'lunch', 'Grape salad with avocado', 'images/recipes/1722620397_photo_2_2024-08-02_20-37-54.jpg', 40, '2024-08-02 17:39:57', '2024-08-02 17:39:57'),
(90, 'dinner', 'Mushroom meal with mashed potatoes. First, fry a head of mushrooms in olive oil, then boil a head of potatoes, then mash it, put all the ingredients together, then add the cream', 'images/recipes/1722620438_photo_3_2024-08-02_20-37-54.jpg', 40, '2024-08-02 17:40:38', '2024-08-02 17:40:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipes_day_id_foreign` (`day_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `recipes_day_id_foreign` FOREIGN KEY (`day_id`) REFERENCES `days` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
