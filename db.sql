-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for fsjs_project
CREATE DATABASE IF NOT EXISTS `fsjs_project` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `fsjs_project`;

-- Dumping structure for table fsjs_project.recipes
CREATE TABLE IF NOT EXISTS `recipes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `hours` int(11) DEFAULT NULL,
  `minutes` int(11) DEFAULT NULL,
  `ingredients` mediumtext,
  `directions` mediumtext,
  `category` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- Dumping data for table fsjs_project.recipes: ~36 rows (approximately)
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` (`id`, `name`, `hours`, `minutes`, `ingredients`, `directions`, `category`, `photo`, `createdAt`, `updatedAt`) VALUES
	(3, 'Breakfast 1', 5, 0, 'oats, ', 'stir', 'breakfast', NULL, '2020-07-31 15:22:24', '2020-08-07 19:23:56'),
	(4, 'Breakfast 2', 10, NULL, '', '', 'breakfast', NULL, '2020-07-31 15:24:32', '2020-08-04 15:59:58'),
	(5, 'Breakfast 3', 5, NULL, '', '', 'breakfast', NULL, '2020-07-31 15:25:28', '2020-08-04 16:00:21'),
	(11, 'Ravioli', 50, NULL, 'flour, ricotta', 'boil, water make pasta', 'dinner', NULL, '2020-08-04 13:29:26', '2020-08-04 19:49:16'),
	(12, 'Teriyaki Chicken', 45, NULL, '2 pounds boneless, skinless chicken thighs (about 6), cut into 1 1/2-inch pieces 1/2 medium yellow onion, diced (about 1 cup) 2 cloves garlic, minced 1/2 cup tamari or soy sauce 1/2 cup honey 1/4 cup rice vinegar 1/4 teaspoon freshly ground black pepper 1 tablespoon grated peeled fresh ginger 1/4 cup water 2 tablespoons cornstarch', 'Arrange the chicken in a single layer in the bottom of a 6-quart or larger slow cooker. Scatter the onion and garlic over the top. Whisk the soy sauce, honey, rice vinegar, pepper, and ginger together in a small bowl and pour over the chicken.', 'dinner', NULL, '2020-08-04 15:46:33', '2020-08-04 15:46:33'),
	(13, 'Cocktail 1', 5, NULL, '', '', 'cocktails', NULL, '2020-08-04 18:56:39', '2020-08-04 18:56:39'),
	(14, 'Fried Chicken', 45, NULL, 'chicken, flour, eggs', 'fry the chicken ', 'dinner', NULL, '2020-08-04 19:48:26', '2020-08-04 19:48:58'),
	(15, 'cake 1', 10, NULL, '', '', 'dessert', NULL, '2020-08-05 13:19:30', '2020-08-05 13:19:30'),
	(17, 'Breakfast 5', 0, 25, '', '', 'breakfast', NULL, '2020-08-05 13:41:52', '2020-08-05 13:41:52'),
	(18, 'Dinner 5', 1, 30, 'practice', 'practice', 'dinner', NULL, '2020-08-05 17:52:19', '2020-08-05 17:52:19'),
	(19, 'Dinner 15', 3, 25, '', '', '', NULL, '2020-08-05 20:52:49', '2020-08-05 20:52:49'),
	(20, 'Dinner 30', 2, 10, '', '', '', NULL, '2020-08-05 20:53:36', '2020-08-05 20:53:36'),
	(21, 'dinner test', 3, 15, '', '', '', NULL, '2020-08-05 20:54:39', '2020-08-05 20:54:39'),
	(22, 'Breakfast 8', 3, 25, 'flour, ricotta', 'Arrange the chicken in a single layer in the bottom of a 6-quart or larger slow cooker. Scatter the onion and garlic over the top. Whisk the soy sauce, honey, rice vinegar, pepper, and ginger together in a small bowl and pour over the chicken.', 'breakfast', NULL, '2020-08-05 22:43:54', '2020-08-05 22:43:54'),
	(23, 'yay', 4, 8, 'it worked', 'hurray', 'dinner', NULL, '2020-08-05 23:01:31', '2020-08-05 23:01:31'),
	(24, 'Cocktail 2', 0, 15, 'alcohol', 'muddle', 'cocktails', NULL, '2020-08-07 14:09:07', '2020-08-07 14:09:07'),
	(25, 'Cocktail 3', 0, 5, 'cherries', 'stir', 'cocktails', NULL, '2020-08-07 14:09:38', '2020-08-07 14:09:38'),
	(26, 'Cocktail 4', 0, 10, 'sldkfj', 'dlkf', 'cocktails', NULL, '2020-08-07 14:10:09', '2020-08-07 14:10:09'),
	(27, 'cake 3', 3, 0, 'flour', 'put it in the oven', 'dessert', NULL, '2020-08-07 14:10:59', '2020-08-07 14:10:59'),
	(28, 'cake 4', 4, 4, 'aldk', 'dlkj', 'dessert', NULL, '2020-08-07 14:11:17', '2020-08-07 14:11:17'),
	(29, 'cake 5', 5, 0, 'a;lkda', 'ad;lk', 'dessert', NULL, '2020-08-07 14:11:38', '2020-08-07 14:11:38'),
	(30, 'cake 6', 6, 6, 'aldk', 'a;ld', 'dessert', NULL, '2020-08-07 14:12:00', '2020-08-07 14:12:00'),
	(31, 'Breakfast 8', 0, 25, 'dsafd', 'adf', 'breakfast', NULL, '2020-08-07 20:55:35', '2020-08-07 20:55:35'),
	(32, 'test', 8, 7, 'test', 'test', 'breakfast', NULL, '2020-08-07 20:57:08', '2020-08-07 20:57:08'),
	(33, 'test', 5, 5, 'test', 'test', 'breakfast', 'added.PNG', '2020-08-07 21:00:23', '2020-08-07 21:00:23'),
	(34, 'test', 5, 5, 'alskdfj', 'as;ldkfj', 'breakfast', 'deleted.PNG', '2020-08-07 21:02:23', '2020-08-07 21:02:23'),
	(35, 'test', 5, 5, 'lakj', 'aldk', 'breakfast', 'added.PNG', '2020-08-07 21:04:12', '2020-08-07 21:04:12'),
	(36, 'test', 5, 5, 'a;slkdj', 'a;dklfj', 'breakfast', './images/added.PNG', '2020-08-07 21:08:29', '2020-08-07 21:08:29'),
	(37, 'test', 5, 5, 'tjl;k', ';lk', 'breakfast', './public/images/added.PNG', '2020-08-07 21:10:27', '2020-08-07 21:10:27'),
	(38, 'Lemon Orzo Soup', 0, 40, '1 lb boneless, skinless chicken breasts\r\nSalt and freshly ground black pepper\r\n2 1/2 Tbsp olive oil, divided\r\n1 1/2 cups chopped carrots (about 3 large)\r\n1 1/2 cups chopped celery (about 3 stalks)\r\n1 1/2 cups chopped yellow onion (1 medium)\r\n5 cloves garlic, minced\r\n7 cups chicken broth\r\n1 1/2 tsp dried oregano\r\n1/2 tsp each dried basil, thyme and rosemary\r\n1 cup (5.8 oz) dried orzo pasta\r\n1 parmesan rind, plus shredded parmesan for serving\r\n1 1/2 tsp lemon zest\r\n1/3 cup fresh lemon juice\r\n5 oz (5 packed cups) fresh spinach, roughly chopped', 'Place chicken on a cutting board, cover with plastic wrap and pound evenly to about 1/2-inch thickness. Season chicken with salt and pepper on both sides. \r\nHeat 2 Tbsp olive oil a large enameled cast iron pot over medium-high heat. Add chicken and sear on both sides until browned, about 2 - 3 minutes per side. Transfer chicken to plate leaving oil in pan. \r\nAdd an additional 1/2 Tbsp olive oil to pan then add carrots, celery and onion and saute 3 minutes. Move veggies to the side, add garlic and saute 1 minute. \r\nPour in chicken broth, oregano, basil, thyme, rosemary and season with salt and pepper to taste. Return chicken to pot and bring to a simmer. \r\nAdd orzo and parmesan rind, reduce heat to medium-low, cover and simmer stirring occasionally, about 8 - 10 minutes or until chicken is cooked through (it should register 165 degrees in center on an instant read thermometer). \r\nRemove parmesan rind and chicken and transfer chicken to a cutting board. Let chicken rest 5 minutes then cut into very small cubes, about the length of the orzo. Meanwhile continue to cook soup, covered while chicken is resting.\r\n\r\n\r\nReturn chicken to soup along with lemon juice, lemon zest and spinach and heat through. Serve warm with parmesan cheese. Note that as soup rests the pasta will absorb the broth so you can as a little more broth as desired.', 'dinner', './public/images/error.PNG', '2020-08-08 14:53:59', '2020-08-08 14:53:59'),
	(39, 'test', 5, 5, 'test', 'test', 'breakfast', '/images/Error2.PNG', '2020-08-08 15:10:48', '2020-08-08 15:10:48'),
	(40, 'LEMON HERB MEDITERRANEAN CHICKEN', 0, 55, '4 skin-on , bone-in chicken thighs\r\n¼ cup lemon juice (juice of 1 lemon)\r\n3 tablespoons olive oil , divided\r\n1 tablespoon red wine vinegar\r\n4 large garlic cloves , crushed\r\n3 teaspoons dried basil\r\n2 teaspoons dried oregano\r\n2 teaspoons dried parsley\r\n2 teaspoons salt , plus extra\r\n8 baby potatoes , halved\r\n1 red onion , cut into wedges\r\n1 red bell pepper (capsicum), deseeded and cut into wedges\r\n1 large zucchini , sliced\r\n4 tablespoons pitted Kalamata olives\r\nLemon slices , to serve', 'Pat thighs dry with paper towel. In a shallow dish, combine the lemon juice, 2 tablespoon of olive oil, vinegar, garlic, basil, oregano, parsley and salt. Pour out half of the marinade and store in a jug to use later.\r\n\r\nAdd the chicken to the marinade in the dish and coat evenly. Cover and marinate for 15 minutes if rushed; 1 hour if time allows; or over night, turning each chicken thigh occasionally in the marinade.\r\n\r\nPreheat oven to 220°C | 430°F. Heat the remaining 1 tablespoon of olive oil in a large oven-proof pan or skillet over medium-high heat. Sear the chicken on both sides until golden browned (about 4 minutes each side). Drain some of the excess fat, leaving about a tablespoon for added flavour.\r\n\r\nArrange the vegetables around each chicken thigh. Drizzle the vegetables with the remaining marinade, tossing them through the oil mixture to evenly coat.\r\n\r\nCover skillet or dish with lid (or foil), and bake until the potatoes are soft and the chicken is completely cooked through (about 35 minutes). Change oven setting to grill / broil on a medium heat setting; uncover and cook for about 5-10 minutes, or until chicken and potatoes are crispy and golden browned. Serve with olives and lemon slices.', 'dinner', NULL, '2020-08-08 15:47:35', '2020-08-08 15:47:35'),
	(41, 'Dinner 5', 1, 30, 'flour', 'stir', 'Breakfast', NULL, '2020-08-08 18:16:44', '2020-08-08 18:16:44'),
	(42, 'Breakfast 3', 5, 0, 'kuh', 'hg', 'Breakfast', NULL, '2020-08-08 19:49:16', '2020-08-08 19:49:16'),
	(43, 'test', 5, 5, 'kj', 'kjg\r\n', 'Breakfast', NULL, '2020-08-09 16:51:23', '2020-08-09 16:51:23'),
	(44, 'cake 5', 5, 0, 'ljh', ';jl', 'Breakfast', NULL, '2020-08-09 17:35:40', '2020-08-09 17:35:40');
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;

-- Dumping structure for table fsjs_project.sequelizemeta
CREATE TABLE IF NOT EXISTS `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table fsjs_project.sequelizemeta: ~1 rows (approximately)
/*!40000 ALTER TABLE `sequelizemeta` DISABLE KEYS */;
INSERT INTO `sequelizemeta` (`name`) VALUES
	('20200731124024-create-recipe.js');
/*!40000 ALTER TABLE `sequelizemeta` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
