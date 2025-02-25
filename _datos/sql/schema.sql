CREATE TABLE `city` (
  `city_id` smallint UNSIGNED NOT NULL,
  `city` varchar(50) NOT NULL,
  `country_id` smallint UNSIGNED NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `country` (
  `country_id` smallint UNSIGNED NOT NULL,
  `country` varchar(50) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `customer` (
  `customer_id` smallint UNSIGNED NOT NULL,
  `store_id` tinyint UNSIGNED NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address_id` smallint UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `create_date` datetime NOT NULL,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `customer` (`customer_id`, `store_id`, `first_name`, `last_name`, `email`, `address_id`, `active`, `create_date`, `last_update`) VALUES
(1, 1, 'MARY', 'SMITH', 'MARY.SMITH@sakilacustomer.org', 5, 1, '2006-02-14 22:04:36', '2006-02-15 04:57:20'),
(2, 1, 'PATRICIA', 'JOHNSON', 'PATRICIA.JOHNSON@sakilacustomer.org', 6, 1, '2006-02-14 22:04:36', '2006-02-15 04:57:20'),
(3, 1, 'LINDA', 'WILLIAMS', 'LINDA.WILLIAMS@sakilacustomer.org', 7, 1, '2006-02-14 22:04:36', '2006-02-15 04:57:20'),
(4, 2, 'BARBARA', 'JONES', 'BARBARA.JONES@sakilacustomer.org', 8, 1, '2006-02-14 22:04:36', '2006-02-15 04:57:20'),
(5, 1, 'ELIZABETH', 'BROWN', 'ELIZABETH.BROWN@sakilacustomer.org', 9, 1, '2006-02-14 22:04:36', '2006-02-15 04:57:20'),
(6, 2, 'JENNIFER', 'DAVIS', 'JENNIFER.DAVIS@sakilacustomer.org', 10, 1, '2006-02-14 22:04:36', '2006-02-15 04:57:20'),
(7, 1, 'MARIA', 'MILLER', 'MARIA.MILLER@sakilacustomer.org', 11, 1, '2006-02-14 22:04:36', '2006-02-15 04:57:20'),
(8, 2, 'SUSAN', 'WILSON', 'SUSAN.WILSON@sakilacustomer.org', 12, 1, '2006-02-14 22:04:36', '2006-02-15 04:57:20'),
(9, 2, 'MARGARET', 'MOORE', 'MARGARET.MOORE@sakilacustomer.org', 13, 1, '2006-02-14 22:04:36', '2006-02-15 04:57:20'),
(10, 1, 'DOROTHY', 'TAYLOR', 'DOROTHY.TAYLOR@sakilacustomer.org', 14, 1, '2006-02-14 22:04:36', '2006-02-15 04:57:20'),
(11, 2, 'LISA', 'ANDERSON', 'LISA.ANDERSON@sakilacustomer.org', 15, 1, '2006-02-14 22:04:36', '2006-02-15 04:57:20'),
(12, 1, 'NANCY', 'THOMAS', 'NANCY.THOMAS@sakilacustomer.org', 16, 1, '2006-02-14 22:04:36', '2006-02-15 04:57:20'),
(13, 2, 'KAREN', 'JACKSON', 'KAREN.JACKSON@sakilacustomer.org', 17, 1, '2006-02-14 22:04:36', '2006-02-15 04:57:20'),
(14, 2, 'BETTY', 'WHITE', 'BETTY.WHITE@sakilacustomer.org', 18, 1, '2006-02-14 22:04:36', '2006-02-15 04:57:20'),
(15, 1, 'HELEN', 'HARRIS', 'HELEN.HARRIS@sakilacustomer.org', 19, 1, '2006-02-14 22:04:36', '2006-02-15 04:57:20'),
(16, 2, 'SANDRA', 'MARTIN', 'SANDRA.MARTIN@sakilacustomer.org', 20, 0, '2006-02-14 22:04:36', '2006-02-15 04:57:20'),
(17, 1, 'DONNA', 'THOMPSON', 'DONNA.THOMPSON@sakilacustomer.org', 21, 1, '2006-02-14 22:04:36', '2006-02-15 04:57:20'),
(18, 2, 'CAROL', 'GARCIA', 'CAROL.GARCIA@sakilacustomer.org', 22, 1, '2006-02-14 22:04:36', '2006-02-15 04:57:20'),
(19, 1, 'RUTH', 'MARTINEZ', 'RUTH.MARTINEZ@sakilacustomer.org', 23, 1, '2006-02-14 22:04:36', '2006-02-15 04:57:20'),
(20, 2, 'SHARON', 'ROBINSON', 'SHARON.ROBINSON@sakilacustomer.org', 24, 1, '2006-02-14 22:04:36', '2006-02-15 04:57:20'),
(21, 1, 'MICHELLE', 'CLARK', 'MICHELLE.CLARK@sakilacustomer.org', 25, 1, '2006-02-14 22:04:36', '2006-02-15 04:57:20'),
(22, 1, 'LAURA', 'RODRIGUEZ', 'LAURA.RODRIGUEZ@sakilacustomer.org', 26, 1, '2006-02-14 22:04:36', '2006-02-15 04:57:20'),
(23, 2, 'SARAH', 'LEWIS', 'SARAH.LEWIS@sakilacustomer.org', 27, 1, '2006-02-14 22:04:36', '2006-02-15 04:57:20'),
(24, 2, 'KIMBERLY', 'LEE', 'KIMBERLY.LEE@sakilacustomer.org', 28, 1, '2006-02-14 22:04:36', '2006-02-15 04:57:20'),
(25, 1, 'DEBORAH', 'WALKER', 'DEBORAH.WALKER@sakilacustomer.org', 29, 1, '2006-02-14 22:04:36', '2006-02-15 04:57:20');


CREATE TABLE `inventory` (
  `inventory_id` mediumint UNSIGNED NOT NULL,
  `film_id` smallint UNSIGNED NOT NULL,
  `store_id` tinyint UNSIGNED NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `language` (
  `language_id` tinyint UNSIGNED NOT NULL,
  `name` char(20) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


password_reset_tokens