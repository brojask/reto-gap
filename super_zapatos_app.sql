-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 15-03-2016 a las 00:17:29
-- Versión del servidor: 5.5.46-0ubuntu0.14.04.2
-- Versión de PHP: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `super_zapatos_app`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `total_in_shelf` int(11) NOT NULL,
  `total_in_vault` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=51 ;

--
-- Volcado de datos para la tabla `articles`
--

INSERT INTO `articles` (`id`, `name`, `description`, `price`, `total_in_shelf`, `total_in_vault`, `store_id`, `created_at`, `updated_at`) VALUES
(1, 'green shoe', 'The best quality of shoes in a green color', 20.15, 25, 40, 1, '2016-03-15 08:42:10', '2016-03-15 08:42:10'),
(2, 'Perspiciatis debitis dolores quia voluptate voluptatem enim. Rerum unde laboriosam qui.', 'Consequatur est et incidunt aut debitis. Eius non doloremque et fugiat aliquam. Voluptas illum facilis sit ducimus autem. Dolorem quis nobis sit illum tempore. Sunt fuga accusantium est aliquid optio ut.', 999999.99, 203, 2111, 9, '2016-03-15 08:42:10', '2016-03-15 08:42:10'),
(3, 'Sit maiores et exercitationem necessitatibus minus. Neque non blanditiis deleniti veritatis architecto. Natus architecto rerum et expedita.', 'Recusandae illum id eveniet quo sed sint ut. Sapiente expedita at odio. Quos quia repellat nobis suscipit ea non. Non cum tempore consequatur enim laudantium. Et laborum ab velit.', 289.51, 20, 6633, 3, '2016-03-15 08:42:10', '2016-03-15 08:42:10'),
(4, 'Nostrum laboriosam mollitia velit dolore maiores omnis eligendi. Omnis quis dolorum quia consequatur voluptatibus. Tempore quasi assumenda laborum et id autem.', 'Tenetur quod recusandae iste deleniti libero. Qui voluptas est est eos pariatur doloribus eos. Facilis eligendi est earum qui debitis vel consequatur. Corporis nulla modi veritatis. Architecto id id sunt culpa fuga doloremque.', 0.00, 289, 1690, 8, '2016-03-15 08:42:10', '2016-03-15 08:42:10'),
(5, 'Blanditiis repellendus et maiores minima maxime. Officia animi est quia omnis fugit.', 'Recusandae accusantium dignissimos rerum in sint aut. Error eligendi ut quo corporis. Atque dolores maiores debitis recusandae quia. Et ducimus omnis rerum praesentium cumque cumque.', 4092.93, 390, 1333, 6, '2016-03-15 08:42:10', '2016-03-15 08:42:10'),
(6, 'Quod quam ullam non sed ea beatae ipsam. Velit sapiente voluptas sed necessitatibus excepturi sed est. Exercitationem et quibusdam omnis exercitationem facere.', 'Aspernatur et eaque voluptatem dignissimos sunt id. Cumque asperiores error ab quas asperiores porro assumenda voluptatem. Dicta dolor similique quasi aut aut et minus. Dolores ea tempore molestias consequatur qui neque qui facere.', 97421.42, 261, 7391, 8, '2016-03-15 08:42:10', '2016-03-15 08:42:10'),
(7, 'Quo nesciunt non omnis nobis ut. Reiciendis doloribus doloremque ea dolor temporibus vel.', 'Id est sed voluptates ipsam quidem rerum. Iusto sint dolorem id. Nesciunt et omnis et recusandae et facilis maiores. Laborum accusantium aut at optio commodi pariatur qui. Velit voluptatem accusamus dolor qui veritatis.', 1.68, 167, 6774, 4, '2016-03-15 08:42:10', '2016-03-15 08:42:10'),
(8, 'Rerum rem dolor aut omnis. Officiis iste velit praesentium amet saepe incidunt.', 'Neque necessitatibus quaerat maxime provident ut. Atque et quae eos alias id ut. Ab non beatae molestiae quam odio.', 999999.99, 181, 3310, 12, '2016-03-15 08:42:10', '2016-03-15 08:42:10'),
(9, 'Aut totam labore ratione recusandae. Beatae et pariatur dicta autem reprehenderit commodi. Architecto eum consequuntur delectus consequatur vitae expedita.', 'Et aut iste est et ut tenetur fuga. Neque sed repellat aspernatur omnis. Hic quis voluptates qui modi aperiam quibusdam.', 999999.99, 353, 217, 1, '2016-03-15 08:42:10', '2016-03-15 08:42:10'),
(10, 'Consectetur harum nam sint nemo. Praesentium praesentium quia et ducimus magni esse.', 'Similique excepturi labore harum doloremque voluptates. Eaque deserunt quia aut eum. Illo accusantium maxime ea ad ea eos. Officiis voluptas vitae consequatur qui aspernatur ut.', 934.18, 48, 4312, 10, '2016-03-15 08:42:10', '2016-03-15 08:42:10'),
(11, 'Eos rem quasi soluta repellat doloribus. Laborum sint sint doloribus est accusamus atque debitis.', 'Ratione dignissimos qui id rerum natus. Quasi non aliquid quae ipsa molestiae. Et officiis at aut. Quibusdam aliquam excepturi autem voluptatem.', 425.00, 6, 4974, 5, '2016-03-15 08:42:10', '2016-03-15 08:42:10'),
(12, 'Facere enim reiciendis rerum ipsa quis sit debitis. Tempore deserunt alias minus iusto vel. Odit ipsam assumenda quia repellat in ratione earum.', 'Dolorem qui sequi eligendi molestiae non in. Assumenda in cupiditate beatae odit quae repudiandae. Architecto quis culpa vel blanditiis.', 19.72, 368, 5027, 20, '2016-03-15 08:42:10', '2016-03-15 08:42:10'),
(13, 'Et ea quod sunt dolores. Hic vel officia voluptatum voluptatem numquam provident fugiat.', 'Et earum ut sunt. Modi ipsam dicta quis et. Nam beatae voluptatem provident nostrum quaerat reprehenderit. Non odio fuga rerum nobis nesciunt cupiditate autem.', 888985.22, 161, 836, 13, '2016-03-15 08:42:10', '2016-03-15 08:42:10'),
(14, 'Odio non beatae velit. Id ut ut eveniet vel. Asperiores earum quo qui nisi placeat enim alias.', 'Recusandae ut amet odio dolores quia est a. Fugit aut consequatur quis est qui et. Amet numquam deserunt harum maxime consectetur. Illum qui placeat nesciunt quos incidunt ea.', 42.91, 270, 1211, 6, '2016-03-15 08:42:10', '2016-03-15 08:42:10'),
(15, 'Nemo hic eveniet quis. Impedit explicabo minus quia.', 'Necessitatibus quos aut ab neque error repellat repellat. Dolores officia doloribus cupiditate autem. Ea iure sed corporis aut alias laudantium. Voluptatem commodi reprehenderit adipisci sunt vero est et. Aut deleniti numquam ipsa sint.', 27820.69, 214, 6146, 19, '2016-03-15 08:42:10', '2016-03-15 08:42:10'),
(16, 'Repellendus ea dolorem nihil qui sequi quae. Sit repellendus omnis eum impedit. Alias nobis at nostrum sunt illum dignissimos et vitae.', 'Sapiente eum quaerat omnis tempora magnam vel sint sit. Assumenda explicabo nemo voluptas voluptatem nobis. Suscipit qui est ipsum. Vel amet dignissimos velit veniam mollitia. Ut suscipit provident cumque minima omnis cupiditate.', 2.30, 315, 1567, 8, '2016-03-15 08:42:10', '2016-03-15 08:42:10'),
(17, 'Fugit illo veritatis explicabo qui. Laboriosam voluptatem aut quisquam vel excepturi facere voluptas sed. Exercitationem tempora perferendis nihil sint ratione accusamus reiciendis.', 'Vel ea fuga blanditiis qui quas excepturi amet. Quis delectus itaque voluptatibus natus harum et reprehenderit ut. Aut totam cumque harum nesciunt.', 291035.00, 99, 2084, 12, '2016-03-15 08:42:10', '2016-03-15 08:42:10'),
(18, 'Facere voluptatem qui impedit rem blanditiis sint provident. Sint itaque earum voluptas corporis consequatur et nostrum. Facilis minima laborum numquam repudiandae in aliquam debitis.', 'Ipsam minima beatae consequatur ea in hic. Quia debitis natus rerum blanditiis. Soluta sed esse debitis magni nulla ut aspernatur nobis. Eos ipsa alias non. Architecto quia nisi ipsa repellat doloribus quia magni.', 999999.99, 173, 7076, 13, '2016-03-15 08:42:10', '2016-03-15 08:42:10'),
(19, 'Recusandae sapiente debitis et sed dolores. Et consequuntur voluptas voluptates ducimus.', 'Dolores iusto aliquid nobis necessitatibus quisquam eaque consequuntur. Repellat suscipit eum cum reprehenderit quis ex quisquam. Corporis ea sit non praesentium.', 27.67, 169, 4835, 13, '2016-03-15 08:42:10', '2016-03-15 08:42:10'),
(20, 'Nulla voluptatibus repellendus neque veritatis non consequatur. A inventore rerum ad id voluptas.', 'Autem voluptas culpa et ullam. Ducimus quia corrupti illum laudantium. Qui voluptatum facere earum maiores dolor. In maiores consectetur quidem deleniti est debitis.', 999999.99, 46, 5780, 18, '2016-03-15 08:42:10', '2016-03-15 08:42:10'),
(21, 'Aperiam deleniti mollitia et rerum harum eum. Tempore odio in quisquam sit.', 'Aspernatur officiis odio esse. Ut blanditiis quam veritatis sed. Voluptatem quaerat ullam fugit adipisci quo quidem vitae. Sed quo deleniti illum ipsum aliquid aliquam debitis.', 999999.99, 241, 6195, 20, '2016-03-15 08:42:10', '2016-03-15 08:42:10'),
(22, 'Qui laborum odit provident fugit recusandae itaque. Fuga assumenda veniam sed qui maiores blanditiis expedita.', 'Ut ex adipisci ex nihil voluptatem iste ut. Consequatur non sint corrupti quia distinctio fuga. Vel similique in voluptas ea.', 2.13, 129, 2172, 16, '2016-03-15 08:42:10', '2016-03-15 08:42:10'),
(23, 'Quas veritatis natus autem dolores quam quia molestiae perspiciatis. Esse et quasi totam modi fugiat magnam numquam.', 'Dolorem quo aut quam doloribus. Cupiditate facilis dolor officiis aspernatur consequatur aut voluptates. Corrupti itaque aliquam doloribus sit et consequatur iusto.', 999999.99, 86, 3813, 4, '2016-03-15 08:42:10', '2016-03-15 08:42:10'),
(24, 'Aut dolorem quia nobis blanditiis vel minus voluptatem quaerat. Vel saepe consectetur placeat consequatur beatae.', 'Amet voluptates dolore sed et est. Et magni quidem quas unde non error. Corrupti assumenda suscipit et. Beatae consectetur impedit saepe asperiores.', 329.34, 41, 720, 19, '2016-03-15 08:42:11', '2016-03-15 08:42:11'),
(25, 'Animi in beatae et. Rem voluptas rerum praesentium tempora voluptatem tempore.', 'Dignissimos odit minima aliquam ad enim quia accusamus. Est quis in reiciendis in odio eum. Quae consectetur magni aut quos animi nam. Beatae illum eius quos voluptates vel dolor in.', 891526.71, 308, 4221, 2, '2016-03-15 08:42:11', '2016-03-15 08:42:11'),
(26, 'Doloremque quibusdam sequi vel magnam alias voluptatem laudantium. Omnis omnis aut dolorum velit. Quia et dignissimos nostrum eius.', 'Expedita perferendis aliquam et rem aut modi quia. Aliquid et quam vitae hic. Aliquid perspiciatis placeat velit quia.', 36786.90, 124, 4582, 20, '2016-03-15 08:42:11', '2016-03-15 08:42:11'),
(27, 'Quam est et voluptas iste aliquid eos. Fuga iste nostrum omnis et ut. Voluptatem omnis ipsum ad molestiae enim in.', 'Ea et non dolor inventore minus cum quod. Maiores ut vitae quis animi dolorum labore. Id molestiae quis itaque minima molestiae praesentium reiciendis sint.', 999999.99, 156, 1508, 7, '2016-03-15 08:42:11', '2016-03-15 08:42:11'),
(28, 'Illo nisi consequuntur veniam cum et repudiandae dicta. Nesciunt labore labore totam sint ipsa qui perspiciatis vero. Aut non officia rerum aut aspernatur.', 'Autem perferendis maxime voluptatem ut et aut. Quo adipisci cum ut sint. Molestiae et aut nesciunt. Voluptates rerum quae totam consequatur est ipsum et.', 7.06, 194, 1093, 7, '2016-03-15 08:42:11', '2016-03-15 08:42:11'),
(29, 'Ipsa quia officiis sed ratione. Dolorum sint sit sed consequuntur.', 'Omnis asperiores quo in aut cum ut aspernatur. Porro consequatur et veniam nesciunt molestiae excepturi sint. At quaerat rerum non vitae enim voluptatem doloribus qui.', 0.30, 291, 418, 4, '2016-03-15 08:42:11', '2016-03-15 08:42:11'),
(30, 'Amet qui inventore nihil quia dolorum. Impedit fuga est nisi et aut saepe.', 'Magni saepe omnis veniam inventore fugiat tenetur. Et repellat eveniet saepe alias porro corporis. Similique aliquid facilis beatae consequatur sed quasi cupiditate. Blanditiis a non omnis consequatur.', 999999.99, 226, 3104, 19, '2016-03-15 08:42:11', '2016-03-15 08:42:11'),
(31, 'Autem quia et quis tempora quaerat. Ea nemo nostrum sed.', 'Perspiciatis quas labore eum. Velit sed nihil incidunt modi ducimus. Voluptas magni laboriosam quae vitae. Cupiditate molestiae aut voluptatem in voluptas.', 999999.99, 74, 3439, 10, '2016-03-15 08:42:11', '2016-03-15 08:42:11'),
(32, 'Et sequi necessitatibus numquam quia assumenda. Voluptatem consectetur recusandae consequuntur aut ipsa placeat.', 'Ut porro nulla tempore aliquam consequatur quo. Omnis corrupti cupiditate saepe. Esse saepe nobis omnis dicta et quam et ex. Laboriosam voluptates non nam.', 69.61, 385, 4154, 7, '2016-03-15 08:42:11', '2016-03-15 08:42:11'),
(33, 'Et ut eligendi rerum accusantium accusantium. Ut necessitatibus accusantium eaque rem velit et. Iusto quibusdam quibusdam voluptatem.', 'Voluptas officiis beatae perferendis fuga. Impedit et quia consequatur autem laboriosam inventore. Sint velit impedit natus eaque assumenda. Debitis id qui nesciunt nemo mollitia excepturi et.', 999999.99, 199, 6992, 14, '2016-03-15 08:42:11', '2016-03-15 08:42:11'),
(34, 'Est hic voluptas et. Sunt velit a cupiditate dolorum vero ratione exercitationem. Culpa et praesentium totam iusto vero nemo.', 'Quia eligendi explicabo ut est. Asperiores rerum voluptatem quia earum repellendus ea. Est placeat velit dolor tempora. Rerum ab possimus sit.', 62.39, 186, 5548, 10, '2016-03-15 08:42:11', '2016-03-15 08:42:11'),
(35, 'Eaque corrupti enim rerum nam. Expedita ex enim enim velit dolorem.', 'Nobis laboriosam atque enim impedit. A dolores quis accusantium sit magni ut qui vel. Excepturi fugit cum est fugiat qui.', 41455.50, 150, 2170, 12, '2016-03-15 08:42:11', '2016-03-15 08:42:11'),
(36, 'Ex sequi nemo aut aspernatur. Eos voluptate aut voluptas ut qui ipsam ducimus. Non corporis et recusandae velit est porro in.', 'Non minima ullam voluptas eum alias ad tenetur. Vitae suscipit autem quaerat aliquid dolorem qui. Corporis animi debitis ipsum. Perspiciatis rerum et harum delectus sint.', 999999.99, 366, 6276, 9, '2016-03-15 08:42:11', '2016-03-15 08:42:11'),
(37, 'Suscipit voluptatum facere magnam rerum. Et ut cum sint consequuntur reiciendis qui et. Unde dolorum eum est hic est totam.', 'Numquam ipsum qui nisi quisquam enim. Ratione porro provident aut et voluptate non dolore facere. Odio voluptatem ex ut similique. Beatae quia voluptates nulla ea.', 23.92, 125, 6324, 18, '2016-03-15 08:42:11', '2016-03-15 08:42:11'),
(38, 'Accusantium corrupti adipisci vitae earum. Reprehenderit eum qui delectus quae qui tempore fugiat natus. Sequi ea repudiandae aliquam.', 'Et dolores perferendis ipsam voluptates repudiandae possimus neque iure. Quos aperiam qui et id. Laudantium cumque qui et molestiae ut autem.', 27412.36, 124, 7804, 19, '2016-03-15 08:42:11', '2016-03-15 08:42:11'),
(39, 'Aliquid id officia reiciendis est. Velit quae quaerat necessitatibus veritatis.', 'Aspernatur aut non quasi aut. Ut quas temporibus cum repellat ex sint ipsum.', 999999.99, 237, 4409, 11, '2016-03-15 08:42:11', '2016-03-15 08:42:11'),
(40, 'Eum sapiente quas expedita explicabo nihil. Aut ullam ducimus aliquam perspiciatis distinctio necessitatibus et.', 'Rerum quaerat omnis in accusamus aspernatur placeat ut. Ut harum consectetur non dolores nihil. Rerum animi impedit aperiam animi delectus. Enim dolorem tempore debitis neque. At soluta omnis unde perferendis.', 3.48, 164, 1621, 8, '2016-03-15 08:42:11', '2016-03-15 08:42:11'),
(41, 'Et nulla eaque laudantium aliquam harum debitis. Delectus nemo nobis eos aspernatur et et. Nihil eum consequatur culpa tempore ipsum.', 'Ratione ut qui sint repellat mollitia amet adipisci sit. Odit inventore et voluptate placeat repudiandae numquam perspiciatis. Reprehenderit tenetur perspiciatis vitae reiciendis. Pariatur veniam aut sed eius nam blanditiis illum.', 35.69, 378, 1627, 13, '2016-03-15 08:42:11', '2016-03-15 08:42:11'),
(42, 'Aut molestiae ab in sunt aperiam ex. Vel pariatur atque accusantium. Dolorem hic eum inventore sunt.', 'Eius ducimus quo saepe cupiditate. Repellat asperiores porro modi eum omnis odio rerum. Velit inventore adipisci reiciendis quia eius.', 999999.99, 388, 1417, 7, '2016-03-15 08:42:11', '2016-03-15 08:42:11'),
(43, 'Exercitationem amet excepturi eligendi excepturi tempore possimus sint. Placeat et assumenda debitis quibusdam rem odio. Saepe totam qui rerum quia non.', 'In accusamus velit corrupti omnis. Voluptatem voluptatem iure unde dolorem esse in nihil. Veniam voluptas aut voluptatem eaque et sunt.', 815698.02, 23, 4585, 3, '2016-03-15 08:42:11', '2016-03-15 08:42:11'),
(44, 'Non ut ut et exercitationem placeat fugiat a. Iste rerum eos est labore sit libero. Velit fugiat voluptates totam sed.', 'Qui itaque tempora dolores in laboriosam facilis. Eos numquam excepturi nobis impedit. Doloribus et sint in et magni aspernatur quos.', 999999.99, 328, 2989, 5, '2016-03-15 08:42:11', '2016-03-15 08:42:11'),
(45, 'Aliquid laudantium doloribus et vitae quisquam accusamus non. Qui facere earum sit tempore.', 'Aut asperiores voluptatibus facilis iure natus sint pariatur. Non dolorem reprehenderit fuga laborum velit accusantium eius. Ut atque ipsum nulla labore aliquam eligendi quaerat. Et amet officia sed voluptate.', 17.75, 160, 4837, 8, '2016-03-15 08:42:11', '2016-03-15 08:42:11'),
(46, 'Dolor a ad quidem tempora nisi placeat provident velit. Quaerat blanditiis asperiores rerum voluptatem.', 'Provident culpa vero dolore odit aliquam ut distinctio. Exercitationem sint reiciendis ut deleniti. Distinctio facilis vel odit reiciendis vel eos voluptates id. Iure aperiam nam voluptates.', 477524.33, 211, 3133, 2, '2016-03-15 08:42:11', '2016-03-15 08:42:11'),
(47, 'Perferendis laboriosam et repellat quidem fugit. Alias laudantium sit aut eaque sequi accusamus voluptatem doloremque.', 'Dolorem necessitatibus corrupti aut quidem ad vitae error. Illo maiores mollitia expedita. Quis aperiam impedit facere aliquam.', 2.48, 350, 5712, 16, '2016-03-15 08:42:11', '2016-03-15 08:42:11'),
(48, 'Et et minima quas eum rerum eum sed. Ratione provident aspernatur id. Voluptatem inventore quaerat molestiae sed.', 'Omnis vel numquam et id voluptatem incidunt ea enim. Quas et facilis provident est placeat magni possimus. Labore eos distinctio quis ut necessitatibus. Debitis illum quia molestiae et. Quia dolorum porro dicta ratione commodi maiores voluptas.', 393.00, 393, 2607, 20, '2016-03-15 08:42:11', '2016-03-15 08:42:11'),
(49, 'Et praesentium rerum dicta. Et autem nihil consequatur nam autem. Et neque eveniet aut officiis.', 'Praesentium delectus iste delectus nemo sit. Perspiciatis et ut nulla aut deserunt debitis. Fuga quidem quas minus sed similique omnis exercitationem hic.', 10.74, 0, 4941, 7, '2016-03-15 08:42:11', '2016-03-15 08:42:11'),
(50, 'Ad odit quisquam illo magni voluptas enim. Quae eaque nam laborum optio velit voluptate. Corrupti dolorum tenetur aut possimus praesentium qui dolorem.', 'Facilis est et est occaecati iusto laudantium. Adipisci fuga amet tenetur et aut quidem adipisci. Corrupti sapiente molestias dignissimos quia corporis perspiciatis. Et aut quo asperiores recusandae debitis.', 999999.99, 22, 7399, 19, '2016-03-15 08:42:11', '2016-03-15 08:42:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_03_15_013744_create_stores_table', 1),
('2016_03_15_015321_create_articles_migration', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stores`
--

CREATE TABLE IF NOT EXISTS `stores` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=81 ;

--
-- Volcado de datos para la tabla `stores`
--

INSERT INTO `stores` (`id`, `name`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Super Store', 'Somewhere over the rainbow', '2016-03-15 08:37:51', '2016-03-15 08:37:51'),
(2, 'Quae consequatur neque ea ex officiis aut deleniti. Consequatur et atque eveniet nam est deleniti maiores. Est accusamus veritatis beatae accusantium. Qui quisquam quis veniam dolorum quia repellat in.', 'Quasi quo tempore occaecati ut sed corporis. Rerum ut qui dolorum voluptatibus. Qui aut et est fugit quasi qui. Unde in amet nihil iste vel aspernatur.', '2016-03-15 08:37:51', '2016-03-15 08:37:51'),
(3, 'Adipisci non et aut aliquam maxime et unde maiores. Provident provident est illum in deleniti et. Repellendus quasi consectetur unde quisquam est reprehenderit a assumenda. Sunt non beatae dolor sapiente fugiat id recusandae.', 'Dolorum expedita tempore voluptates autem enim et ratione. Dicta blanditiis numquam quis. Aut blanditiis veritatis ea praesentium accusantium. Vel sed adipisci doloremque sit architecto assumenda officia.', '2016-03-15 08:37:51', '2016-03-15 08:37:51'),
(4, 'Dicta cum ab quis nulla quia eum occaecati harum. Ut qui eum voluptas enim corrupti. Sapiente aut quia id nihil accusamus aliquid eveniet sed. Voluptatem nulla eius libero officiis modi eos natus ut.', 'Quia temporibus quibusdam nisi sapiente debitis. Officia aut eius maiores et in amet ab quis. Labore at omnis in dicta eos omnis nihil. Quia aperiam molestiae quo consequatur id.', '2016-03-15 08:37:51', '2016-03-15 08:37:51'),
(5, 'Eum perspiciatis dolor voluptatem esse. Dolor animi aliquam nihil sed vel ut fugit. Nostrum nostrum unde quo perspiciatis veritatis iusto nostrum. Qui amet atque quibusdam.', 'Blanditiis sunt et ea non. Eligendi adipisci aut voluptate voluptas magni quaerat. Quasi nostrum quia facere.', '2016-03-15 08:37:51', '2016-03-15 08:37:51'),
(6, 'Sed maiores eos id autem ipsum omnis dolorem. Tempora quaerat non tenetur quod deserunt molestiae iure. Explicabo quia temporibus neque quia voluptatibus illum rerum quidem.', 'Voluptatem consequatur quia quaerat voluptas laboriosam facilis. Ut amet repellat labore aliquam quam quia. Ullam occaecati molestiae est et nemo enim unde.', '2016-03-15 08:37:51', '2016-03-15 08:37:51'),
(7, 'Rerum nihil omnis pariatur aut perspiciatis voluptatem quae. Sed id quisquam vel veniam quisquam. Doloremque minima expedita iure voluptas ex voluptas molestiae.', 'Dicta et tempora consequatur sapiente totam rem. Dolore facilis officia pariatur delectus eum omnis numquam incidunt. Atque assumenda recusandae neque voluptatibus.', '2016-03-15 08:37:51', '2016-03-15 08:37:51'),
(8, 'Quas ut adipisci ab quis aut est earum. Nulla ut aut et accusamus. Ipsam sequi ipsum soluta voluptas. Ea veritatis quibusdam doloribus laboriosam est quasi rem illo.', 'Asperiores dolorem rerum laborum sunt in eius. Quia mollitia molestias voluptatem labore occaecati assumenda ut. Illum nisi deleniti quas fuga. Commodi dolores consequatur quia ullam provident qui.', '2016-03-15 08:37:51', '2016-03-15 08:37:51'),
(9, 'Quis nisi voluptatem et consequatur inventore nam aut quas. Deleniti et voluptatem corrupti tempore.', 'Nulla aliquid cupiditate aut quia. Quis repellendus nam iusto vero deserunt voluptas. Rerum quae nostrum sapiente omnis dolorem ipsum.', '2016-03-15 08:37:51', '2016-03-15 08:37:51'),
(10, 'Quidem sequi aut sed ut ut. Nostrum cum et id consequuntur culpa provident veniam. Dolore voluptatem repudiandae corporis non aspernatur.', 'Nihil eos animi aut consequatur numquam officiis quasi. Rem hic recusandae eos molestias quis excepturi ea. Facere recusandae sint consequatur aut explicabo.', '2016-03-15 08:37:51', '2016-03-15 08:37:51'),
(11, 'Exercitationem culpa maiores eaque dolores aliquid autem sunt. Totam facilis blanditiis expedita excepturi. Molestiae laboriosam ut cupiditate eum.', 'Occaecati nobis cumque quia consequatur quo dolor culpa excepturi. Rerum optio optio incidunt aut aut. Maxime labore id qui nemo odit vel.', '2016-03-15 08:37:51', '2016-03-15 08:37:51'),
(12, 'Consequatur vero id porro doloribus officia aut. Nemo sed ut odio odit quod vero alias sunt. Sit consequuntur ut quia et eligendi totam.', 'Vero eos sunt nihil ut. Repudiandae eveniet cumque quaerat esse doloremque explicabo. Et reprehenderit in voluptatibus aliquam doloremque. Nemo dolores illo velit ex.', '2016-03-15 08:37:51', '2016-03-15 08:37:51'),
(13, 'Est repellat earum id eligendi cupiditate sed nisi. Molestias fuga voluptatibus quam modi repellendus voluptatem. Consequatur facilis reiciendis qui voluptatem id. Laboriosam tenetur tempora commodi quaerat non qui deleniti aut.', 'Deserunt omnis aperiam pariatur iste voluptatem. Recusandae laborum eos sapiente qui qui iusto. Aut ea vero iste ad a consequatur.', '2016-03-15 08:37:51', '2016-03-15 08:37:51'),
(14, 'Officia porro et odit. Hic ut deserunt mollitia aliquid ratione. Porro dolorem dolorem velit error illum.', 'Quaerat suscipit ipsa sunt atque debitis sit laudantium quaerat. Quae quaerat beatae voluptatem.', '2016-03-15 08:37:51', '2016-03-15 08:37:51'),
(15, 'Minima enim dolorem voluptate eos. Rerum doloribus architecto sapiente magnam est. Ut facilis aliquid vel aut illum nihil quos.', 'Et recusandae voluptatem cupiditate nisi ut. Modi tenetur quia sapiente laborum et. Omnis tempora voluptatem molestiae ut voluptatibus illum dolorem. Et et temporibus libero exercitationem autem.', '2016-03-15 08:37:51', '2016-03-15 08:37:51'),
(16, 'Neque sit ea eos qui. Non animi qui voluptatem in aut omnis aliquam. Fugit iure voluptates cupiditate error possimus expedita vel possimus.', 'Sed necessitatibus soluta fugiat tenetur fuga. Accusamus sunt consequatur minima eaque. Omnis minus et velit quia omnis.', '2016-03-15 08:37:52', '2016-03-15 08:37:52'),
(17, 'Enim laudantium rerum iste omnis omnis eum odit. Voluptatibus iste corrupti illum adipisci facere aperiam. Cupiditate ab velit ad porro.', 'Quia tempore ipsa asperiores facilis quibusdam eum. Sed amet neque sunt praesentium quod dolore. Quo molestiae voluptas cupiditate provident. Voluptatum repellat dolor magnam est totam.', '2016-03-15 08:37:52', '2016-03-15 08:37:52'),
(18, 'Consequatur ex sed est. Quis eos assumenda veritatis quia quia. Labore doloremque vero suscipit possimus vitae.', 'Ut eveniet eaque quis corrupti blanditiis omnis sunt. Rem ut nobis non vel repudiandae modi. Maiores odio quasi quia rerum sit quia.', '2016-03-15 08:37:52', '2016-03-15 08:37:52'),
(19, 'Libero soluta voluptatum laborum. Cum reiciendis magnam quisquam vel voluptatem quaerat animi. At explicabo et est unde id error. Enim quia nulla aut eaque ut accusantium.', 'Numquam a et recusandae omnis. Quia aliquam rem deserunt repellat ut suscipit quam. Esse neque ab magnam beatae aut magni. Omnis soluta natus eaque maxime.', '2016-03-15 08:37:52', '2016-03-15 08:37:52'),
(20, 'Cupiditate qui et consequuntur recusandae delectus id quae. Error accusantium porro rem officiis modi. Enim recusandae aut repudiandae veritatis.', 'Qui minima harum odit expedita. Rem eum perspiciatis ut voluptas rerum voluptas animi ut. Nobis est nostrum harum vero eum. Doloremque similique necessitatibus adipisci debitis eaque.', '2016-03-15 08:37:52', '2016-03-15 08:37:52'),
(21, 'Numquam et aperiam aut voluptate. Quae dolor voluptates voluptatem ut rerum facilis. Veniam quo voluptatibus reiciendis voluptas fuga sequi. Est reprehenderit maiores omnis aliquam nam nemo quos enim.', 'Voluptatibus eligendi exercitationem odio sit et. Laudantium rerum cupiditate natus sequi illum atque nihil ea. Quos qui hic enim.', '2016-03-15 08:39:15', '2016-03-15 08:39:15'),
(22, 'Expedita nulla laborum ad nisi. Voluptatem totam quo molestiae rem perspiciatis. Consectetur voluptatem repellendus et sit. Magnam ipsa eligendi aut repellendus optio dolorem ut.', 'Fugiat blanditiis occaecati sed debitis hic. Nostrum ea rerum necessitatibus autem recusandae sapiente recusandae. Mollitia commodi qui officiis quibusdam.', '2016-03-15 08:39:15', '2016-03-15 08:39:15'),
(23, 'Qui aut quasi cum aliquid deserunt architecto qui placeat. Beatae praesentium repellat ut ea fugit dicta dolore saepe. Corporis inventore similique deserunt eos qui dolorem. Est iure quasi qui unde sit rem dolor.', 'At laudantium provident occaecati ad. Aut vero quam similique non beatae aut.', '2016-03-15 08:39:15', '2016-03-15 08:39:15'),
(24, 'Non error et dolorem. Perspiciatis accusamus est voluptas quia. At dolorem inventore atque laboriosam amet ipsum in. Quibusdam quidem vel sequi voluptas id qui perspiciatis. Quod voluptatum eveniet quia.', 'Iure sit pariatur sunt beatae placeat natus. Sint odit quia delectus commodi non esse et laborum.', '2016-03-15 08:39:15', '2016-03-15 08:39:15'),
(25, 'Est nam non id quisquam rerum ut. Aliquid et voluptatum sunt sed ab necessitatibus itaque. Eius voluptates praesentium neque aut odit. Est officiis quasi vel repellat iure quasi.', 'Voluptas quasi officiis harum alias et. Vero soluta harum libero esse qui exercitationem. Sequi tempore delectus nemo accusamus consectetur esse earum minus. Ullam in adipisci itaque aut minus consectetur harum et.', '2016-03-15 08:39:15', '2016-03-15 08:39:15'),
(26, 'Et similique facere provident quis quis provident. Saepe maxime ratione sint. Consectetur dicta autem sapiente dolorum.', 'Tempore error nemo voluptas voluptas dolor doloremque. Consequatur aut aut dolore repudiandae. Ab ut sint fugit.', '2016-03-15 08:39:15', '2016-03-15 08:39:15'),
(27, 'Sed dolor molestiae maxime officiis recusandae. Nisi qui omnis cupiditate itaque. Quia ea eum consectetur laboriosam. Incidunt qui voluptas facere placeat enim adipisci. Nobis voluptatem quas omnis.', 'Dolores soluta enim officia. Itaque facere delectus debitis voluptatem earum quaerat officiis. Nostrum et in laudantium earum omnis.', '2016-03-15 08:39:15', '2016-03-15 08:39:15'),
(28, 'Reiciendis voluptatem asperiores in voluptatum tempore dolores. Sapiente hic ipsam necessitatibus et iure dolorem esse. Incidunt sed id exercitationem excepturi eum.', 'Vel sunt cumque eum est magnam voluptas. Aut neque doloremque deserunt molestiae. Aspernatur voluptate facere fugit non. Et quae dolorum et ipsam totam. Quia aut quis quos magni officia et magnam.', '2016-03-15 08:39:15', '2016-03-15 08:39:15'),
(29, 'Quia saepe deleniti fugit voluptatem doloribus magni. Quia dolorem soluta aut voluptatem officia. Quo sunt quia optio velit magnam ea. Harum laboriosam quam aut vitae voluptatem.', 'Et cum sed molestiae ut error autem. Ab nisi culpa vero tenetur rem ea. Autem nemo sequi est et error quibusdam numquam.', '2016-03-15 08:39:15', '2016-03-15 08:39:15'),
(30, 'Aspernatur nisi quia consectetur soluta blanditiis esse nemo. Modi consectetur placeat non est dicta. Sint ut debitis perspiciatis veniam beatae eos. Nisi suscipit est illo inventore nesciunt et quos.', 'Explicabo quae ratione quis et accusantium est. Nemo voluptates dolor unde aut iusto reprehenderit. Exercitationem est distinctio libero similique occaecati.', '2016-03-15 08:39:15', '2016-03-15 08:39:15'),
(31, 'Enim qui amet in numquam sed. A dolor nemo veritatis eum enim et. Voluptatem quibusdam nemo ad blanditiis. Repellendus voluptas vitae id et voluptas est sint.', 'Minima error qui eum ut quod veritatis reiciendis. Quas sit quia sint qui laboriosam incidunt. Molestiae et et quidem repudiandae quo suscipit rerum.', '2016-03-15 08:39:15', '2016-03-15 08:39:15'),
(32, 'Ratione nihil libero dolores soluta rerum et. Blanditiis facilis tempora quisquam ea est mollitia non autem. Sed qui nam consequuntur repudiandae. Illo provident corporis optio ex. Quis quia rem laborum sit.', 'Odit dolorem dicta sed minima ea et iure corporis. Sequi incidunt ut illo est impedit sed. Sint dolorum ex sapiente. Aperiam qui eius voluptatibus non.', '2016-03-15 08:39:15', '2016-03-15 08:39:15'),
(33, 'Alias nemo qui mollitia eius recusandae repudiandae. Natus ab beatae ut esse pariatur. Et repellat minima aut officiis quo hic. Placeat quis velit sapiente ut laudantium.', 'Cupiditate veniam similique ratione aut ea rerum odio. Rerum magnam a repellendus. Animi quos rerum saepe quos enim asperiores inventore. Ad optio possimus autem labore et est blanditiis. Ea non quisquam quae aliquam.', '2016-03-15 08:39:15', '2016-03-15 08:39:15'),
(34, 'Facilis voluptatibus libero qui est pariatur ut. Harum facere et excepturi labore ab cupiditate in. Ex placeat autem ab delectus unde perferendis nisi et.', 'Ullam repellendus ipsam sit itaque. Vel laborum non illo et. Ut repellat reiciendis illum voluptate. Aut aut accusamus est sit perferendis ipsum nesciunt.', '2016-03-15 08:39:15', '2016-03-15 08:39:15'),
(35, 'Aut ducimus fugiat voluptas voluptate. Alias sunt natus cum.', 'Voluptatem nihil est ut corporis vel fugiat. Consequatur eius dolore sequi et dignissimos. Officia est magnam doloribus accusamus est rerum eaque minus.', '2016-03-15 08:39:15', '2016-03-15 08:39:15'),
(36, 'Odit omnis quis sint recusandae. Ut aut mollitia aspernatur quod deleniti beatae. Voluptatibus et ut ratione.', 'Qui temporibus sunt consequuntur earum expedita tempore. Perferendis cumque ad est officia eius inventore vel fugit. Nam ea atque et est ut nesciunt dicta. Dolores consequatur ipsa fugiat blanditiis enim delectus veritatis. In et consequatur doloremque quod quo perferendis.', '2016-03-15 08:39:15', '2016-03-15 08:39:15'),
(37, 'Libero non hic quasi doloribus est illum animi deleniti. Quis voluptatum deserunt commodi tempore ipsam. Error laborum porro quia.', 'Culpa labore est dicta tempora reprehenderit. Praesentium aut dolorum ullam optio officiis aut. Adipisci esse voluptatem consequuntur excepturi tempora ea distinctio omnis. Ipsam nam deleniti possimus voluptatem.', '2016-03-15 08:39:15', '2016-03-15 08:39:15'),
(38, 'Qui minima ut occaecati adipisci deleniti incidunt officiis. Voluptas aspernatur porro aut ut. Ea perspiciatis voluptatem sed ut.', 'Ipsa nihil velit sed doloribus sapiente sequi. Delectus et laboriosam modi cumque assumenda dolorem. Accusamus nesciunt veritatis ea qui nostrum id. Porro nisi molestiae autem doloribus.', '2016-03-15 08:39:16', '2016-03-15 08:39:16'),
(39, 'Voluptatem pariatur temporibus magni velit beatae id. Quisquam a et magnam. Nobis veritatis rerum et ab. Corrupti id ab sit vel in laudantium.', 'Voluptatem iste ut quisquam dignissimos et quia quos dolor. Optio laudantium et amet autem veritatis. Ducimus et consequuntur ducimus alias.', '2016-03-15 08:39:16', '2016-03-15 08:39:16'),
(40, 'Accusantium quia sit corrupti vel fugiat sit. Ducimus aperiam nisi quaerat culpa autem qui deleniti. Quidem quo et voluptas iste dolore fugiat. Aspernatur est dolore repellat perferendis enim assumenda veritatis.', 'Aut amet ratione ad odit. Corrupti quam consectetur reiciendis aut. Quae ipsa culpa omnis at voluptas eveniet. Voluptatem distinctio illum est.', '2016-03-15 08:39:16', '2016-03-15 08:39:16'),
(41, 'Quam molestiae neque quaerat ea architecto nihil dolorum. Sit nihil nobis repellendus in. Voluptatem ut eum enim cumque.', 'Nostrum vitae nihil in corrupti voluptas. Incidunt hic dolorem aut eveniet soluta illo id. Aut rerum illo perspiciatis. Beatae laboriosam consequuntur vel. Odio earum omnis porro explicabo.', '2016-03-15 08:41:24', '2016-03-15 08:41:24'),
(42, 'Dolor aut sunt minus error esse. Ipsa laborum aut officiis alias aut perferendis facere. Rerum voluptas rem perferendis ipsum.', 'Consectetur ea sit aliquid in assumenda aliquid asperiores. Non et quasi sed voluptas ipsam. Quaerat officiis quidem aperiam aut. Numquam sed ducimus velit reprehenderit.', '2016-03-15 08:41:24', '2016-03-15 08:41:24'),
(43, 'Repellendus ut facere perspiciatis vero impedit corporis magnam totam. Unde veritatis suscipit eum adipisci itaque. Minus deleniti velit soluta voluptatem. Voluptatem velit aspernatur velit eveniet in aut.', 'Esse eos impedit asperiores eligendi saepe itaque. Et enim quia debitis eos. Impedit eum nemo rerum non enim tempora qui. Vitae autem sunt odit sunt et.', '2016-03-15 08:41:24', '2016-03-15 08:41:24'),
(44, 'Expedita optio minus ut ratione quibusdam pariatur eum laudantium. Numquam accusantium quia aut voluptatibus et. Totam nesciunt consequatur est exercitationem corrupti ex a. Corrupti non ut iure non accusamus.', 'Necessitatibus cumque et voluptatem repellendus. Ut praesentium quasi cumque est molestiae dignissimos. Corrupti tempore quae unde temporibus vitae in fuga. Corporis aut perferendis repudiandae doloremque sit omnis deserunt.', '2016-03-15 08:41:24', '2016-03-15 08:41:24'),
(45, 'Et numquam porro recusandae quas eum et recusandae. Sapiente assumenda sequi excepturi et. Minima aut ipsum ratione reiciendis corrupti a minima. Perspiciatis velit facilis in velit.', 'Omnis cumque expedita aspernatur et. Consequuntur asperiores aperiam deserunt fugit consequatur explicabo sunt. Provident et aliquid laudantium accusantium nam quidem id officia.', '2016-03-15 08:41:24', '2016-03-15 08:41:24'),
(46, 'Doloribus architecto autem doloribus quam quaerat esse non. Deleniti eum reprehenderit eum culpa ab occaecati. Magni placeat magnam saepe animi.', 'Saepe iste laudantium reprehenderit sint. Voluptatem harum ut quia enim vitae minima voluptatibus consequatur. Eos consequuntur quo natus aut a.', '2016-03-15 08:41:25', '2016-03-15 08:41:25'),
(47, 'Perspiciatis eius accusamus quae alias ipsum rerum ut. Id consequuntur consequatur autem iure nam corporis a. Animi ut qui sapiente. Et reiciendis et explicabo.', 'Culpa nobis iste fuga aperiam. Totam molestiae et perspiciatis. Placeat non rerum autem consequatur rerum. Possimus sit sint nesciunt impedit modi consequatur. Ex nihil voluptates dolor.', '2016-03-15 08:41:25', '2016-03-15 08:41:25'),
(48, 'Doloribus eaque nulla dolorem nam est voluptas omnis. Culpa odio laborum voluptas amet id saepe fugiat. Vero commodi quos pariatur itaque.', 'Consequatur veniam earum qui ipsam voluptatem at officia neque. Illum enim deleniti voluptatem nihil enim ut alias. Earum consectetur ipsam temporibus tempore.', '2016-03-15 08:41:25', '2016-03-15 08:41:25'),
(49, 'Accusamus enim doloribus et eos rerum optio autem. Adipisci delectus magnam accusantium reiciendis. Voluptas in tempore reiciendis perspiciatis totam.', 'Quidem veritatis id sed sed. Consectetur vel maxime voluptatem cupiditate nihil sapiente. Occaecati eos mollitia magni voluptatum explicabo eaque sed.', '2016-03-15 08:41:25', '2016-03-15 08:41:25'),
(50, 'Rerum quidem fugiat ut eveniet sit. Suscipit sit earum beatae consequatur veritatis.', 'Qui animi ipsum labore sit sint iusto impedit voluptatem. Omnis eaque voluptas sint molestiae qui. Reprehenderit at nemo perferendis perferendis odio impedit.', '2016-03-15 08:41:25', '2016-03-15 08:41:25'),
(51, 'Voluptatem beatae explicabo recusandae voluptas dolor voluptates soluta. Nesciunt ducimus est ratione. Ut eos nesciunt sed et accusantium.', 'Repellat odit asperiores quos voluptatem quae doloremque autem. Omnis perferendis nemo dicta. Accusantium voluptatem id sit voluptatem.', '2016-03-15 08:41:25', '2016-03-15 08:41:25'),
(52, 'Tempora autem rerum et quia minus quaerat facere. Consequatur aperiam voluptatum quam. Quo aut ratione exercitationem atque mollitia et. Molestiae autem aut excepturi non unde.', 'Sed magnam optio fuga eveniet. Atque quas incidunt laudantium fuga. Similique delectus in nam autem id consequatur sint.', '2016-03-15 08:41:25', '2016-03-15 08:41:25'),
(53, 'Harum veniam voluptatem est rerum eos. Officia quis aliquid animi necessitatibus placeat numquam. Eligendi quia sit debitis deleniti incidunt et.', 'Eos sint tempora eveniet autem ut eos. Natus consequatur et voluptatem ut eaque voluptatem. Ipsa ut et ex adipisci sint iure. Ea doloribus fugiat tempora natus. Qui sit dolorem rem porro in at velit.', '2016-03-15 08:41:25', '2016-03-15 08:41:25'),
(54, 'Mollitia ad qui voluptas rem odit. Molestiae numquam sunt qui excepturi dolores cum. Ipsam autem at sunt esse unde iste.', 'Dolorem nihil dolores odit ut velit consequuntur voluptatem. Sunt voluptatem quos nihil nihil id ut ut. Sint facere ad nisi est numquam quos culpa. Dolorem ipsa voluptatem autem cumque.', '2016-03-15 08:41:25', '2016-03-15 08:41:25'),
(55, 'Omnis et est officia molestiae enim. Aspernatur maiores consectetur animi fugiat delectus. Nihil ut voluptatem deserunt asperiores reiciendis vitae. Quia sit sapiente necessitatibus ut optio quis. Aliquam est voluptatem fuga deserunt provident fugiat sunt.', 'Tenetur est ipsum accusamus reiciendis corporis sint voluptas debitis. Explicabo sit est id consequatur. Et qui eligendi est mollitia. Nam impedit debitis id incidunt aliquid dolorem reiciendis illo.', '2016-03-15 08:41:25', '2016-03-15 08:41:25'),
(56, 'Accusantium aut et quasi similique. Expedita aut est dicta odio velit ut. Nemo rerum optio ut. Recusandae aut rerum qui animi mollitia.', 'Tenetur laboriosam est ex inventore ea. Nemo consectetur nobis error ipsa. Sint adipisci deserunt qui qui aut.', '2016-03-15 08:41:25', '2016-03-15 08:41:25'),
(57, 'Consequatur nam sint corporis qui nemo nisi. Praesentium et odio est omnis. Dolorum et alias totam distinctio eaque eum rem. Sapiente est distinctio libero eum voluptatem laboriosam. Et id quis sed corrupti deserunt reprehenderit consequuntur.', 'Recusandae repellendus excepturi cumque et dolores omnis. Aut sit sint architecto asperiores. Sint aut dignissimos odio dolores similique voluptatem. Quisquam molestiae est non molestias quia distinctio.', '2016-03-15 08:41:25', '2016-03-15 08:41:25'),
(58, 'Aut odio beatae et aut hic id. Recusandae qui beatae fugiat. Rerum nesciunt ipsam in ullam harum aut temporibus. Fugit aperiam nemo praesentium incidunt voluptate.', 'Quas qui consequatur accusantium quidem aliquam. Odio vel consectetur quasi totam suscipit.', '2016-03-15 08:41:25', '2016-03-15 08:41:25'),
(59, 'Soluta provident quaerat possimus quia. Distinctio aut voluptate cupiditate architecto quam ex consequatur. Id similique rerum eum voluptatem consectetur autem. Corporis saepe voluptas omnis facere reprehenderit.', 'Numquam labore fugit dolore ipsum deserunt voluptas. Reiciendis eveniet doloribus eum minima repudiandae. Non qui distinctio est quia repellendus. Ipsum aliquam quia sit odit aut quas sunt.', '2016-03-15 08:41:25', '2016-03-15 08:41:25'),
(60, 'Quibusdam eligendi ea omnis. Impedit ut aut quia rerum qui qui illum.', 'Rerum dolor et corporis rem qui perferendis impedit. Ipsam placeat provident excepturi cum nihil. Soluta distinctio minima aut et illum nemo. Sed ut officiis necessitatibus.', '2016-03-15 08:41:25', '2016-03-15 08:41:25'),
(61, 'Officiis enim ea repudiandae qui est quo voluptatem. Omnis laborum magni distinctio libero sapiente. Libero numquam sint qui officia perspiciatis. Dolor id asperiores repellendus odit.', 'Maxime quos libero modi laborum ad accusamus eos. Qui tempora iure alias et dolorum excepturi aut.', '2016-03-15 08:42:09', '2016-03-15 08:42:09'),
(62, 'Cumque voluptate error quas cumque doloribus. Voluptas porro cupiditate sint vel. Eaque id et architecto nemo.', 'Minima perspiciatis consequatur consequatur modi repellendus cumque. Dolor non quidem impedit expedita exercitationem. Expedita dolor dolor dicta voluptatem animi quis amet.', '2016-03-15 08:42:09', '2016-03-15 08:42:09'),
(63, 'Nisi laborum nobis hic repudiandae ea tempora. Occaecati sit aut labore beatae tenetur reprehenderit. Harum vel eos aut sed officiis facere et. Ipsum ipsum nam quisquam dignissimos cumque eos magni. Quibusdam possimus labore qui consequatur.', 'Vitae dicta tempore est necessitatibus unde consequatur. Consectetur animi minima nam beatae. Doloribus sint ad corporis qui et animi eveniet.', '2016-03-15 08:42:09', '2016-03-15 08:42:09'),
(64, 'Quos est et est. Quas soluta voluptas repellat sit. Voluptatem amet sed autem autem.', 'Impedit velit id autem qui. Velit impedit perferendis provident non necessitatibus. Sed minus praesentium quasi perspiciatis laborum. Ut voluptatem nesciunt vero quo quas neque.', '2016-03-15 08:42:09', '2016-03-15 08:42:09'),
(65, 'Quidem ea autem rem nobis est dolores veritatis. Necessitatibus fugit ea impedit similique aliquid. Voluptas nemo velit qui natus. Eius error laborum ea assumenda rerum temporibus.', 'Et numquam rem tempora ullam quo corrupti nisi. Quibusdam velit ut eligendi illo. Beatae id sapiente odio dolorem.', '2016-03-15 08:42:09', '2016-03-15 08:42:09'),
(66, 'Recusandae dicta delectus nobis dolore minus repudiandae. Vitae excepturi et possimus sit. Eius quia rerum at.', 'Perferendis veritatis corrupti eum cupiditate culpa nihil. Cumque occaecati quam et amet dignissimos aperiam. Consequatur iusto et aut labore. Possimus debitis repellat ut totam odit eaque quia.', '2016-03-15 08:42:09', '2016-03-15 08:42:09'),
(67, 'Qui est quae quae nisi culpa omnis excepturi. Distinctio nihil dolorum quaerat. Sint unde sapiente itaque et qui.', 'Ipsam rem blanditiis fuga doloremque laudantium necessitatibus non. Eligendi possimus id vel iure illum dolorem dolores.', '2016-03-15 08:42:09', '2016-03-15 08:42:09'),
(68, 'Voluptatem nihil quas quisquam atque non et sit. Pariatur quod et sed iste quibusdam. Animi perspiciatis quia est magni. Omnis est distinctio voluptates aut officia dolores atque quibusdam.', 'Quas reiciendis voluptas dolores fugiat. Laboriosam minus et dolorem sint. Voluptate delectus rerum sit voluptatem quis harum sint cum.', '2016-03-15 08:42:09', '2016-03-15 08:42:09'),
(69, 'Voluptas eos magnam et. Aliquid pariatur molestiae velit praesentium enim aliquam facere.', 'Pariatur possimus ullam velit nisi dolorum voluptatem. A in ducimus est exercitationem recusandae beatae. Magni facere necessitatibus aut ut adipisci ut assumenda.', '2016-03-15 08:42:09', '2016-03-15 08:42:09'),
(70, 'Odio quia neque vel numquam eum. Earum et minima et dolor dignissimos minima tempore. Ut totam repellendus aut repudiandae totam explicabo.', 'Dolorem voluptatem non dolor et. Consectetur eligendi et dolores harum expedita. Et vero praesentium nihil illo.', '2016-03-15 08:42:09', '2016-03-15 08:42:09'),
(71, 'Consequatur mollitia ipsum dolor quos numquam et autem. Eos ut tempore nostrum voluptatem est. Molestias nulla eum temporibus in beatae sapiente delectus. Dolorem eaque qui harum nostrum deleniti neque. Culpa non nemo occaecati distinctio nulla unde magni.', 'Ipsam qui enim quam eveniet omnis voluptate numquam. Sit eius sed adipisci. Delectus eos in voluptates dignissimos laboriosam. Sint ut officiis blanditiis quae quia.', '2016-03-15 08:42:09', '2016-03-15 08:42:09'),
(72, 'Libero officiis repudiandae ut ut. In nihil similique qui. Exercitationem ullam aut nisi quaerat.', 'Omnis impedit libero veritatis autem. Ab voluptas minus accusantium vitae nulla praesentium et. Fugiat nihil officiis vel veritatis voluptatem.', '2016-03-15 08:42:09', '2016-03-15 08:42:09'),
(73, 'Facilis vel facilis ut esse dolorem. Quos non dignissimos enim impedit voluptates ducimus.', 'Sapiente enim laborum nemo voluptates et nemo quos. Ea molestiae quas voluptatem deserunt dolore et. Illum dolorum est et unde magnam aut voluptatem. Nemo ut molestias occaecati consequatur in fugiat aut praesentium.', '2016-03-15 08:42:09', '2016-03-15 08:42:09'),
(74, 'Reprehenderit et quod quis voluptas minima. Enim consequatur est quo qui non. Voluptas et est dolores aut laboriosam.', 'Ut possimus tempore sit architecto. Sed qui inventore praesentium tempore amet. Aut consectetur doloribus mollitia. Quaerat aliquid consectetur blanditiis vel quo.', '2016-03-15 08:42:09', '2016-03-15 08:42:09'),
(75, 'Expedita reprehenderit animi et harum. Voluptatibus fugiat neque dolor voluptas quis placeat officiis. Consequatur natus dolor doloribus optio delectus.', 'Aperiam sit pariatur quis. Vel officia quo voluptas. Fuga consequatur id cupiditate inventore tempora. Iste necessitatibus eum dolorem voluptatem autem ad.', '2016-03-15 08:42:09', '2016-03-15 08:42:09'),
(76, 'Iure maxime voluptas magnam ut ratione iusto sed. Non vel quaerat pariatur itaque cum praesentium. Esse qui et facilis corrupti odio exercitationem.', 'Reiciendis accusamus nisi delectus atque. Enim repellendus ex quia quidem asperiores voluptatem commodi voluptatem. Aut odio quam placeat ducimus maiores libero expedita inventore. Quisquam quibusdam culpa nostrum illum quam quam.', '2016-03-15 08:42:09', '2016-03-15 08:42:09'),
(77, 'Quo magni reiciendis maiores ipsa ad tempore. Blanditiis necessitatibus molestias quidem iste ducimus et cumque. Ratione fugiat repellat et at et sapiente sed.', 'Qui molestiae error quae et. Incidunt sequi repellendus odit est autem corrupti. Libero iusto velit aut soluta ipsum inventore assumenda aliquid. Aut ut delectus ut similique laudantium blanditiis enim necessitatibus.', '2016-03-15 08:42:09', '2016-03-15 08:42:09'),
(78, 'Dolorum ut molestias qui beatae sed inventore qui voluptas. Et dolorem a voluptatum quo error officiis sed. Sed eaque adipisci non.', 'Nihil molestiae ullam harum aliquam atque perferendis ipsam sit. Tenetur vitae voluptas reprehenderit earum dolore voluptatem. Et quam tenetur in est. Pariatur placeat occaecati aut sunt voluptatibus aut libero.', '2016-03-15 08:42:10', '2016-03-15 08:42:10'),
(79, 'Ut magni nesciunt ipsam voluptate consequatur. Quo debitis ut voluptates tenetur error ipsam labore ipsa. Libero rerum dolores debitis voluptatem animi quaerat molestiae.', 'Sed culpa pariatur laboriosam praesentium velit. Consectetur aspernatur ut autem veritatis. Esse quia et consectetur iste vero ut.', '2016-03-15 08:42:10', '2016-03-15 08:42:10'),
(80, 'Illo veniam pariatur soluta ut maiores. Est molestiae et vero voluptatem et nihil et. Dolore vero voluptatem tempore.', 'Quis accusamus voluptatem autem et. Ipsum laboriosam omnis quo sint voluptate aliquam a. Necessitatibus debitis quia dolorum. Velit quae quo veniam ut ipsa accusantium.', '2016-03-15 08:42:10', '2016-03-15 08:42:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Gerda.Runolfsdottir', 'Damon.Gottlieb@Witting.com', '$2y$10$4uWqxjjRuIMnjSrCNcKYpuBn8ku5tBVBeWTn8dRUMzw1lVLZYnOcW', NULL, '2016-03-15 08:39:14', '2016-03-15 08:39:14'),
(2, 'bWyman', 'Guillermo.Flatley@Lemke.com', '$2y$10$nsnau.6S/It5aIQktrX8qefHq3J4uQKx6pDZdHE6X0.szPHpraBkW', NULL, '2016-03-15 08:39:14', '2016-03-15 08:39:14'),
(3, 'Bogisich.Norbert', 'Dorothy.Mante@yahoo.com', '$2y$10$9.WMXGglZob7e3AJ66oL2O1nKgBAkfOzRrBdTUtG8w2gPLFqkfkii', NULL, '2016-03-15 08:39:14', '2016-03-15 08:39:14'),
(4, 'Estell.Klocko', 'Cecile56@yahoo.com', '$2y$10$nvu7h1hVFPh0zdY/3cmv1uNYkpgR7D9bWfSTb/y6/t.dWjRZ3iTqC', NULL, '2016-03-15 08:39:15', '2016-03-15 08:39:15'),
(5, 'Volkman.Henriette', 'hLarkin@gmail.com', '$2y$10$H1dyqG2ZED32DLx6I75co.YQ1Fye2FFOAK7xpNpOh5Fn0kd31Bue2', NULL, '2016-03-15 08:39:15', '2016-03-15 08:39:15'),
(6, 'Dangelo58', 'Wiza.Hailee@hotmail.com', '$2y$10$XipZf3jhjJRVS//C/RatreINKKXkfvhoNBqOkqeoRbSGPo.G9G1oW', NULL, '2016-03-15 08:41:24', '2016-03-15 08:41:24'),
(7, 'Bahringer.Jerrold', 'Cronin.Mac@Hyatt.org', '$2y$10$3gIDammiYJJ/I9YMuWg3xu2Ma7fUYsNR6KLxduijQGmUElYFv5YfO', NULL, '2016-03-15 08:41:24', '2016-03-15 08:41:24'),
(8, 'Shields.Myrtice', 'Heidenreich.Norberto@Berge.com', '$2y$10$T9/6NPOgzELb2ahnGYIUd./3/EmsDQpwQazn8nL71tzDd7scHhEdy', NULL, '2016-03-15 08:41:24', '2016-03-15 08:41:24'),
(9, 'Daren36', 'Antonina13@Block.org', '$2y$10$LE/1VQGa3XkY4r2aeisI1ebxLdnOTLz6WSRbo3340ip6HqaSU9CKu', NULL, '2016-03-15 08:41:24', '2016-03-15 08:41:24'),
(10, 'xCummings', 'qFerry@hotmail.com', '$2y$10$cuvtVuLNO96CNzhjnPFrtOS939Ug5Vgb2SxQuJ3ORxY6SEaLKKXFe', NULL, '2016-03-15 08:41:24', '2016-03-15 08:41:24'),
(11, 'cBosco', 'Kip.Fay@hotmail.com', '$2y$10$mKcfVnhNhterxzN1dXehueteJnvS8HI09xjKfyzii7TOgr80ZY.Gm', NULL, '2016-03-15 08:42:08', '2016-03-15 08:42:08'),
(12, 'kJacobi', 'rOkuneva@hotmail.com', '$2y$10$8UUNUYTyeHtFHrg0S43ssu15pW5sav3SrVtFCG8b07esx8ojbg1pS', NULL, '2016-03-15 08:42:08', '2016-03-15 08:42:08'),
(13, 'wTorp', 'bBode@hotmail.com', '$2y$10$/puil7sliYUTaToU4RHN0.VMzjHp35iHka3NCimTHwaGggIJxGCU2', NULL, '2016-03-15 08:42:08', '2016-03-15 08:42:08'),
(14, 'Gaston43', 'qBayer@yahoo.com', '$2y$10$6Qn6/jdhSfK8WhFKkvIlfOg9zBzYy1FRzUChFSw.h4ZOUmzmDkdr6', NULL, '2016-03-15 08:42:09', '2016-03-15 08:42:09'),
(15, 'Yundt.Marisol', 'Wiley74@gmail.com', '$2y$10$W7dzVBFvw9oi3kHR6XqJVOXh/kLHdWb8nmEUpp8hWAjL5lm/Jqij2', NULL, '2016-03-15 08:42:09', '2016-03-15 08:42:09');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
