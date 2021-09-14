-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2021 at 05:52 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `profilex-2.0-without-installer`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 - deactive, 1 - active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `role_id`, `username`, `email`, `first_name`, `last_name`, `image`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'admin', 'admin@gmail.com', 'Johny', 'Barristow', '5f5797dbc520b.png', '$2y$10$UmZ3nP0JIUOI0CxLG/175efcigYJDbfg45Ga4cYz/YdZOshZ0GPMm', 1, NULL, '2020-09-08 08:40:27'),
(12, 9, 'editor', 'editor@gmail.com', 'Muro', 'Hernandes', '60f4fd0e1d55a.png', '$2y$10$1o5Jnv7upNPGMWfg98KC6.DZHNUt9QhqAjsGH3WJ4ll9Gr6Ju0GHW', 1, '2021-07-18 19:18:22', '2021-07-18 19:18:22'),
(13, 10, 'manager', 'manager@gmail.com', 'Helen', 'Waugh', '60f4fd2d7b846.png', '$2y$10$Sk8JJjIJ1Xp3y.xTgbxQLeoS5pOWkzkKw9kfHcwjtHK8jKy.ysoFW', 1, '2021-07-18 19:18:53', '2021-07-18 19:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `basic_extendeds`
--

CREATE TABLE `basic_extendeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `cookie_alert_status` tinyint(4) NOT NULL DEFAULT 1,
  `cookie_alert_text` blob DEFAULT NULL,
  `cookie_alert_button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_mail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_language_direction` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ltr' COMMENT 'ltr / rtl',
  `from_mail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_smtp` tinyint(4) NOT NULL DEFAULT 0,
  `smtp_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encryption` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_currency_symbol` blob DEFAULT NULL,
  `base_currency_symbol_position` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'left',
  `base_currency_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_currency_text_position` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'right',
  `base_currency_rate` decimal(8,2) NOT NULL DEFAULT 0.00,
  `hero_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_button_text` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_button_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_video_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_img` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_addresses` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_numbers` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_mails` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiration_reminder` int(11) NOT NULL DEFAULT 3,
  `domain_request_success_message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cname_record_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cname_record_section_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_extendeds`
--

INSERT INTO `basic_extendeds` (`id`, `language_id`, `cookie_alert_status`, `cookie_alert_text`, `cookie_alert_button_text`, `to_mail`, `default_language_direction`, `from_mail`, `from_name`, `is_smtp`, `smtp_host`, `smtp_port`, `encryption`, `smtp_username`, `smtp_password`, `base_currency_symbol`, `base_currency_symbol_position`, `base_currency_text`, `base_currency_text_position`, `base_currency_rate`, `hero_section_title`, `hero_section_text`, `hero_section_button_text`, `hero_section_button_url`, `hero_section_video_url`, `hero_img`, `timezone`, `contact_addresses`, `contact_numbers`, `contact_mails`, `expiration_reminder`, `domain_request_success_message`, `cname_record_section_title`, `cname_record_section_text`) VALUES
(147, 176, 1, 0x596f757220657870657269656e6365206f6e207468697320736974652077696c6c20626520696d70726f76656420627920616c6c6f77696e6720636f6f6b6965732e, 'Allow Cookies', 'pratik.anwar@gmail.com', 'ltr', 'admin@kreativdev.com', 'Profilex', 1, 'mail.kreativdev.com', '2525', 'TLS', 'admin@kreativdev.com', 'ZAOP!~rSk~gb', 0x24, 'left', 'USD', 'right', '1.00', 'Our Platform, Your Success', 'Minimize the time, it takes to initiate a relationship between you and the customer.', 'Explore Plans', 'http://example.com/', 'https://www.youtube.com/watch?v=6KJqEPVfoDs', '60f55aec0aba4.png', 'America/Maceio', 'House - 44, Road - 03, Sector - 11, Uttara, Dhaka\r\nDhanmondi, Dhaka\r\nMohammadpur, Dhaka', '237237237,72372332', 'contact@gmail.com,support@gmail.com,query@gmail.com', 3, 'We have received your custom domain request. Please allow us 2 business days to connect the domain with our server.', 'Read Before Sending Custom Domain Request', '<ul><li><font color=\"#575962\"><b> Before sending request for your custom domain, You need to add a CNAME record (given in below table) in your custom domain from your domain registrar account (like - namecheap, godaddy etc...).</b></font></li><li><font color=\"#575962\"><b> CNAME record is needed to point your custom domain to our domain ( profilo.xyz ), so that our website can show your portfolio on your domain</b></font></li><li><font color=\"#575962\"><b> Different domain registrar (like - godaddy, namecheap etc...) has different interface for adding CNAME record. If you cannot find the place to add CNAME record in your domain registrar account, then please contact your domain registrar support, they will show you the place to add CNAME record for your custom domain</b></font></li></ul>'),
(148, 177, 1, 0xd8b3d98ad8aad98520d8aad8add8b3d98ad98620d8aad8acd8b1d8a8d8aad98320d8b9d984d98920d987d8b0d8a720d8a7d984d985d988d982d8b920d985d98620d8aed984d8a7d98420d8a7d984d8b3d985d8a7d8ad20d8a8d985d984d981d8a7d8aa20d8aad8b9d8b1d98ad98120d8a7d984d8a7d8b1d8aad8a8d8a7d8b7, 'السماح للكوكيز', 'pratik.anwar@gmail.com', 'ltr', 'admin@kreativdev.com', 'Profilex', 1, 'mail.kreativdev.com', '2525', 'TLS', 'admin@kreativdev.com', 'ZAOP!~rSk~gb', 0x24, 'left', 'USD', 'right', '1.00', 'منصتنا ، نجاحك', 'قلل الوقت الذي تستغرقه لبدء علاقة بينك وبين العميل.', 'اكتشف الخطط', 'http://example.com/', 'https://www.youtube.com/watch?v=6KJqEPVfoDs', '60f5096d5a28b.png', 'America/Maceio', 'منزل - 44 ، طريق - 03 ، قطاع - 11 ، أوتارا ، دكا\r\nدهانوندي ، دكا\r\nمحمدبور ، دكا', '237237237,72372332', 'contact@gmail.com,support@gmail.com,query@gmail.com', 3, 'We have received your custom domain request. Please allow us 2 business days to connect the domain with our server.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `basic_settings`
--

CREATE TABLE `basic_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `favicon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preloader_status` tinyint(4) NOT NULL DEFAULT 1,
  `preloader` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newsletter_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` blob DEFAULT NULL,
  `intro_subtitle` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_main_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_form_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_info_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tawk_to_script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_recaptcha` tinyint(4) NOT NULL DEFAULT 0,
  `google_recaptcha_site_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_recaptcha_secret_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_tawkto` tinyint(4) NOT NULL DEFAULT 1,
  `tawkto_property_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_disqus` tinyint(4) NOT NULL DEFAULT 1,
  `is_user_disqus` tinyint(4) NOT NULL DEFAULT 1,
  `disqus_shortname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disqus_script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintainance_mode` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 - active, 0 - deactive',
  `maintainance_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintenance_img` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintenance_status` tinyint(4) NOT NULL DEFAULT 0,
  `secret_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_section` tinyint(4) NOT NULL DEFAULT 1,
  `process_section` tinyint(4) NOT NULL DEFAULT 1,
  `featured_users_section` tinyint(4) NOT NULL DEFAULT 1,
  `pricing_section` tinyint(4) NOT NULL DEFAULT 1,
  `partners_section` tinyint(4) NOT NULL DEFAULT 1,
  `intro_section` tinyint(4) NOT NULL DEFAULT 1,
  `testimonial_section` tinyint(4) NOT NULL DEFAULT 1,
  `feature_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_process_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_process_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_users_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_users_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pricing_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pricing_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_section` tinyint(4) NOT NULL DEFAULT 1,
  `top_footer_section` tinyint(4) NOT NULL DEFAULT 1,
  `copyright_section` tinyint(4) NOT NULL DEFAULT 1,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useful_links_title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newsletter_title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newsletter_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_whatsapp` tinyint(4) NOT NULL DEFAULT 1,
  `whatsapp_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_header_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_popup_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_popup` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_settings`
--

INSERT INTO `basic_settings` (`id`, `language_id`, `favicon`, `logo`, `preloader_status`, `preloader`, `website_title`, `base_color`, `breadcrumb`, `footer_logo`, `footer_text`, `newsletter_text`, `copyright_text`, `intro_subtitle`, `intro_title`, `intro_text`, `intro_main_image`, `contact_form_title`, `contact_text`, `contact_info_title`, `tawk_to_script`, `is_recaptcha`, `google_recaptcha_site_key`, `google_recaptcha_secret_key`, `is_tawkto`, `tawkto_property_id`, `is_disqus`, `is_user_disqus`, `disqus_shortname`, `disqus_script`, `maintainance_mode`, `maintainance_text`, `maintenance_img`, `maintenance_status`, `secret_path`, `feature_section`, `process_section`, `featured_users_section`, `pricing_section`, `partners_section`, `intro_section`, `testimonial_section`, `feature_title`, `work_process_title`, `work_process_subtitle`, `featured_users_title`, `featured_users_subtitle`, `pricing_title`, `pricing_subtitle`, `testimonial_title`, `testimonial_subtitle`, `news_section`, `top_footer_section`, `copyright_section`, `blog_title`, `blog_subtitle`, `useful_links_title`, `newsletter_title`, `newsletter_subtitle`, `is_whatsapp`, `whatsapp_number`, `whatsapp_header_title`, `whatsapp_popup_message`, `whatsapp_popup`) VALUES
(153, 176, '60f55ab7169e1.jpg', '60f55a8eea308.png', 1, '60fba38c3e9e3.jpg', 'Profilex', '0B0840', '60ea8dcf724d7.jpg', '60f576b00d941.png', 'We are a awward winning multinaitonal Company. We Believe quality and standard worlwidex Consider.', 'Subscribe to gate Latest News, Offer and connect With Us.', 0x436f7079726967687420c2a920323032312e20416c6c2072696768747320726573657276656420627920536173736f2e, 'We beilieve in Customer Trust', 'About US', 'Donec scelerisque dolor id nunc dictum, interdum gravida mauris rhoncus. Aliquam at ultrices nunc. In sem leo, fermentum at lorem in, porta finibus mauris. Aliquam consectetur, ex in gravida porttitor,', '60ebf89bc1f45.png', 'Leave Reply', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum.', 'CONTACT INFO', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/6101013ad6e7610a49ad56e7/1fblupkb1\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 0, '6Lf9jOQUAAAAABJKj_nQBNvji7wh4DdOZIPAdRKk', '6Lf9jOQUAAAAALO4C5pC7O_HHw0Z1BuYCU_FA606', 1, '60b886bbde99a4282a1b22a3', 1, 1, 'plusagency-2-5', '<script>\r\n\r\n/**\r\n*  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n*  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/\r\n/*\r\nvar disqus_config = function () {\r\nthis.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\nthis.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n};\r\n*/\r\n(function() { // DON\'T EDIT BELOW THIS LINE\r\nvar d = document, s = d.createElement(\'script\');\r\ns.src = \'https://plusagency.disqus.com/embed.js\';\r\ns.setAttribute(\'data-timestamp\', +new Date());\r\n(d.head || d.body).appendChild(s);\r\n})();\r\n</script>', 0, 'We are upgrading our site. We will come back soon. \r\nPlease stay with us.\r\nThank you....', '60f109af58110.png', 0, NULL, 1, 1, 1, 1, 1, 1, 1, 'Features', 'Work Process', 'How It Works', 'Featured Users', 'Take a look at the featured users', 'Pricing', 'Choose Your Perfect Package', 'Testimonials', 'What Our Cliets Say', 1, 1, 1, NULL, 'Our Latest Blogs', 'Useful Links', 'Newsletter', 'Get latest updates first', 0, '+2372377', 'Hi, There!', 'How can I help you?\r\ngreat', 1),
(154, 177, '60f55ab7169e1.jpg', '60f55a8eea308.png', 1, '60fba38c3e9e3.jpg', 'Profilex', '0B0840', '60ea8dcf724d7.jpg', '60f916429e1c8.png', 'نحن شركة متعددة الأطراف فائزة بشكل كبير. نحن نؤمن بالجودة والمعايير التي نأخذها بعين الاعتبار.', 'Subscribe to gate Latest News, Offer and connect With Us.', 0xd8acd985d98ad8b920d8a7d984d8add982d988d98220d985d8add981d988d8b8d8a920c2a920323032312e, 'قصتنا', 'لدينا 20 عاما من الخبرة العملية في مقهى.', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام', '60f5098351317.png', 'اترك الرد', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل', 'معلومات الاتصال', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/6101013ad6e7610a49ad56e7/1fblupkb1\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 0, '6Lf9jOQUAAAAABJKj_nQBNvji7wh4DdOZIPAdRKk', '6Lf9jOQUAAAAALO4C5pC7O_HHw0Z1BuYCU_FA606', 1, '60b886bbde99a4282a1b22a3', 1, 1, 'plusagency-2-5', '<script>\r\n\r\n/**\r\n*  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n*  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/\r\n/*\r\nvar disqus_config = function () {\r\nthis.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\nthis.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n};\r\n*/\r\n(function() { // DON\'T EDIT BELOW THIS LINE\r\nvar d = document, s = d.createElement(\'script\');\r\ns.src = \'https://plusagency.disqus.com/embed.js\';\r\ns.setAttribute(\'data-timestamp\', +new Date());\r\n(d.head || d.body).appendChild(s);\r\n})();\r\n</script>', 0, 'We are upgrading our site. We will come back soon. \r\nPlease stay with us.\r\nThank you....', NULL, 0, NULL, 1, 1, 1, 1, 1, 1, 1, 'متميز', 'آلية العمل', 'آلية العمل', 'مستخدم مميز', 'مستخدم مميز', 'التسعير', 'التسعير', 'شهادة', 'شهادة', 1, 1, 1, '', NULL, 'روابط مفيدة', 'النشرة الإخبارية', 'احصل على آخر التحديثات أولاً', 0, '+2372377', 'Hi, There!', 'How can I help you?\r\ngreat', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bcategories`
--

CREATE TABLE `bcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `serial_number` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bcategories`
--

INSERT INTO `bcategories` (`id`, `language_id`, `name`, `slug`, `status`, `serial_number`) VALUES
(13, 176, 'International', NULL, 1, 1),
(14, 176, 'Tech', NULL, 1, 2),
(15, 176, 'Miscellaneous', NULL, 1, 3),
(16, 176, 'Lifestyle', NULL, 1, 4),
(17, 177, 'دولي', NULL, 1, 1),
(18, 177, 'تقنية', NULL, 1, 2),
(19, 177, 'متفرقات', NULL, 1, 3),
(20, 177, 'أسلوب الحياة', NULL, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `bcategory_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` blob DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `language_id`, `bcategory_id`, `title`, `slug`, `main_image`, `content`, `tags`, `meta_keywords`, `meta_description`, `serial_number`, `created_at`, `updated_at`) VALUES
(86, 176, 13, 'It has survived not only five centuries', 'it-has-survived-not-only-five-centuries', '1627199088.jpg', 0x3c703e3c7370616e207374796c653d22666f6e742d66616d696c793a274f70656e2053616e73272c20417269616c2c2073616e732d73657269663b746578742d616c69676e3a6a7573746966793b666f6e742d73697a653a313470783b223e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73656374657475722061646970697363696e6720656c69742c2073656420646f20656975736d6f642074656d706f7220696e6369646964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c697175612e20557420656e696d206164206d696e696d2076656e69616d2c2071756973206e6f737472756420657865726369746174696f6e20756c6c616d636f206c61626f726973206e69736920757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e2044756973206175746520697275726520646f6c6f7220696e20726570726568656e646572697420696e20766f6c7570746174652076656c697420657373652063696c6c756d20646f6c6f726520657520667567696174206e756c6c612070617269617475722e204578636570746575722073696e74206f6363616563617420637570696461746174206e6f6e2070726f6964656e742c2073756e7420696e2063756c706120717569206f666669636961206465736572756e74206d6f6c6c697420616e696d20696420657374206c61626f72756d3c2f7370616e3e3c2f703e3c703e3c7370616e207374796c653d22666f6e742d66616d696c793a274f70656e2053616e73272c20417269616c2c2073616e732d73657269663b746578742d616c69676e3a6a7573746966793b666f6e742d73697a653a313470783b223e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73656374657475722061646970697363696e6720656c69742c2073656420646f20656975736d6f642074656d706f7220696e6369646964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c697175612e20557420656e696d206164206d696e696d2076656e69616d2c2071756973206e6f737472756420657865726369746174696f6e20756c6c616d636f206c61626f726973206e69736920757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e2044756973206175746520697275726520646f6c6f7220696e20726570726568656e646572697420696e20766f6c7570746174652076656c697420657373652063696c6c756d20646f6c6f726520657520667567696174206e756c6c612070617269617475722e204578636570746575722073696e74206f6363616563617420637570696461746174206e6f6e2070726f6964656e742c2073756e7420696e2063756c706120717569206f666669636961206465736572756e74206d6f6c6c697420616e696d20696420657374206c61626f72756d3c2f7370616e3e3c7370616e207374796c653d22666f6e742d66616d696c793a274f70656e2053616e73272c20417269616c2c2073616e732d73657269663b746578742d616c69676e3a6a7573746966793b223e3c62723e3c2f7370616e3e3c62723e3c2f703e, NULL, NULL, NULL, 1, '2021-07-24 22:44:48', '2021-07-24 22:44:48'),
(87, 176, 14, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem', 'sed-ut-perspiciatis-unde-omnis-iste-natus-error-sit-voluptatem', '1627199180.jpg', 0x3c703e3c7370616e207374796c653d22666f6e742d66616d696c793a274f70656e2053616e73272c20417269616c2c2073616e732d73657269663b746578742d616c69676e3a6a7573746966793b666f6e742d73697a653a313470783b223e5365642075742070657273706963696174697320756e6465206f6d6e69732069737465206e61747573206572726f722073697420766f6c7570746174656d206163637573616e7469756d20646f6c6f72656d717565206c617564616e7469756d2c20746f74616d2072656d206170657269616d2c2065617175652069707361207175616520616220696c6c6f20696e76656e746f726520766572697461746973206574207175617369206172636869746563746f206265617461652076697461652064696374612073756e74206578706c696361626f2e204e656d6f20656e696d20697073616d20766f6c7570746174656d207175696120766f6c7570746173207369742061737065726e6174757220617574206f646974206175742066756769742c20736564207175696120636f6e73657175756e747572206d61676e6920646f6c6f72657320656f732071756920726174696f6e6520766f6c7570746174656d207365717569206e65736369756e742e204e6571756520706f72726f20717569737175616d206573742c2071756920646f6c6f72656d20697073756d207175696120646f6c6f722073697420616d65742c20636f6e73656374657475722c2061646970697363692076656c69742c207365642071756961206e6f6e206e756d7175616d2065697573206d6f64692074656d706f726120696e636964756e74207574206c61626f726520657420646f6c6f7265206d61676e616d20616c697175616d207175616572617420766f6c7570746174656d2e20557420656e696d206164206d696e696d612076656e69616d2c2071756973206e6f737472756d20657865726369746174696f6e656d20756c6c616d20636f72706f726973207375736369706974206c61626f72696f73616d2c206e69736920757420616c697175696420657820656120636f6d6d6f646920636f6e73657175617475723f205175697320617574656d2076656c2065756d206975726520726570726568656e64657269742071756920696e20656120766f6c7570746174652076656c69742065737365207175616d206e6968696c206d6f6c65737469616520636f6e73657175617475722c2076656c20696c6c756d2071756920646f6c6f72656d2065756d206675676961742071756f20766f6c7570746173206e756c6c612070617269617475723c2f7370616e3e3c62723e3c2f703e, NULL, NULL, NULL, 2, '2021-07-24 22:46:20', '2021-07-24 22:46:20'),
(88, 176, 15, 'expound the actual teachings of the great explorer of the truth', 'expound-the-actual-teachings-of-the-great-explorer-of-the-truth', '1627199238.jpg', 0x3c703e3c7370616e207374796c653d22666f6e742d66616d696c793a274f70656e2053616e73272c20417269616c2c2073616e732d73657269663b746578742d616c69676e3a6a7573746966793b223e4275742049206d757374206578706c61696e20746f20796f7520686f7720616c6c2074686973206d697374616b656e2069646561206f662064656e6f756e63696e6720706c65617375726520616e64207072616973696e67207061696e2077617320626f726e20616e6420492077696c6c206769766520796f75206120636f6d706c657465206163636f756e74206f66207468652073797374656d2c20616e64206578706f756e64207468652061637475616c207465616368696e6773206f6620746865206772656174206578706c6f726572206f66207468652074727574682c20746865206d61737465722d6275696c646572206f662068756d616e2068617070696e6573732e204e6f206f6e652072656a656374732c206469736c696b65732c206f722061766f69647320706c65617375726520697473656c662c206265636175736520697420697320706c6561737572652c2062757420626563617573652074686f73652077686f20646f206e6f74206b6e6f7720686f7720746f2070757273756520706c65617375726520726174696f6e616c6c7920656e636f756e74657220636f6e73657175656e6365732074686174206172652065787472656d656c79207061696e66756c2e204e6f7220616761696e20697320746865726520616e796f6e652077686f206c6f766573206f722070757273756573206f72206465736972657320746f206f627461696e207061696e206f6620697473656c662c2062656361757365206974206973207061696e2c206275742062656361757365206f63636173696f6e616c6c792063697263756d7374616e636573206f6363757220696e20776869636820746f696c20616e64207061696e2063616e2070726f637572652068696d20736f6d6520677265617420706c6561737572652e20546f2074616b652061207472697669616c206578616d706c652c207768696368206f66207573206576657220756e64657274616b6573206c61626f72696f757320706879736963616c2065786572636973652c2065786365707420746f206f627461696e20736f6d6520616476616e746167652066726f6d2069743f204275742077686f2068617320616e7920726967687420746f2066696e64206661756c7420776974682061206d616e2077686f2063686f6f73657320746f20656e6a6f79206120706c656173757265207468617420686173206e6f20616e6e6f79696e6720636f6e73657175656e6365732c206f72206f6e652077686f2061766f6964732061207061696e20746861742070726f6475636573206e6f20726573756c74616e7420706c6561737572653c2f7370616e3e3c62723e3c2f703e, NULL, NULL, NULL, 3, '2021-07-24 22:47:18', '2021-07-24 22:47:18'),
(89, 176, 16, 'At vero eos et accusamus et iusto odio dignissimos ducimus', 'at-vero-eos-et-accusamus-et-iusto-odio-dignissimos-ducimus', '1627199437.jpg', 0x3c703e3c7370616e207374796c653d22666f6e742d66616d696c793a274f70656e2053616e73272c20417269616c2c2073616e732d73657269663b746578742d616c69676e3a6a7573746966793b223e4174207665726f20656f73206574206163637573616d757320657420697573746f206f64696f206469676e697373696d6f7320647563696d75732071756920626c616e646974696973207072616573656e7469756d20766f6c7570746174756d2064656c656e69746920617471756520636f7272757074692071756f7320646f6c6f7265732065742071756173206d6f6c657374696173206578636570747572692073696e74206f63636165636174692063757069646974617465206e6f6e2070726f766964656e742c2073696d696c697175652073756e7420696e2063756c706120717569206f666669636961206465736572756e74206d6f6c6c6974696120616e696d692c20696420657374206c61626f72756d20657420646f6c6f72756d20667567612e20457420686172756d2071756964656d20726572756d20666163696c6973206573742065742065787065646974612064697374696e6374696f2e204e616d206c696265726f2074656d706f72652c2063756d20736f6c757461206e6f6269732065737420656c6967656e6469206f7074696f2063756d717565206e6968696c20696d70656469742071756f206d696e75732069642071756f64206d6178696d6520706c61636561742066616365726520706f7373696d75732c206f6d6e697320766f6c757074617320617373756d656e6461206573742c206f6d6e697320646f6c6f7220726570656c6c656e6475732e2054656d706f726962757320617574656d2071756962757364616d20657420617574206f6666696369697320646562697469732061757420726572756d206e65636573736974617469627573207361657065206576656e69657420757420657420766f6c7570746174657320726570756469616e6461652073696e74206574206d6f6c657374696165206e6f6e207265637573616e6461652e2049746171756520656172756d20726572756d206869632074656e6574757220612073617069656e74652064656c65637475732c20757420617574207265696369656e64697320766f6c757074617469627573206d61696f72657320616c69617320636f6e73657175617475722061757420706572666572656e64697320646f6c6f7269627573206173706572696f72657320726570656c6c61743c2f7370616e3e3c62723e3c2f703e, NULL, NULL, NULL, 4, '2021-07-24 22:48:00', '2021-07-24 22:50:37'),
(90, 176, 13, 'On the other hand, we denounce with righteous indignation', 'on-the-other-hand,-we-denounce-with-righteous-indignation', '1627199343.jpg', 0x3c703e3c7370616e207374796c653d22666f6e742d66616d696c793a274f70656e2053616e73272c20417269616c2c2073616e732d73657269663b746578742d616c69676e3a6a7573746966793b223e4f6e20746865206f746865722068616e642c2077652064656e6f756e63652077697468207269676874656f757320696e6469676e6174696f6e20616e64206469736c696b65206d656e2077686f2061726520736f2062656775696c656420616e642064656d6f72616c697a65642062792074686520636861726d73206f6620706c656173757265206f6620746865206d6f6d656e742c20736f20626c696e646564206279206465736972652c207468617420746865792063616e6e6f7420666f726573656520746865207061696e20616e642074726f75626c6520746861742061726520626f756e6420746f20656e7375653b20616e6420657175616c20626c616d652062656c6f6e677320746f2074686f73652077686f206661696c20696e2074686569722064757479207468726f756768207765616b6e657373206f662077696c6c2c207768696368206973207468652073616d6520617320736179696e67207468726f75676820736872696e6b696e672066726f6d20746f696c20616e64207061696e2e2054686573652063617365732061726520706572666563746c792073696d706c6520616e64206561737920746f2064697374696e67756973682e20496e2061206672656520686f75722c207768656e206f757220706f776572206f662063686f69636520697320756e7472616d6d656c6c656420616e64207768656e206e6f7468696e672070726576656e7473206f7572206265696e672061626c6520746f20646f2077686174207765206c696b6520626573742c20657665727920706c65617375726520697320746f2062652077656c636f6d656420616e64206576657279207061696e2061766f696465642e2042757420696e206365727461696e2063697263756d7374616e63657320616e64206f77696e6720746f2074686520636c61696d73206f662064757479206f7220746865206f626c69676174696f6e73206f6620627573696e6573732069742077696c6c206672657175656e746c79206f63637572207468617420706c65617375726573206861766520746f206265207265707564696174656420616e6420616e6e6f79616e6365732061636365707465642e205468652077697365206d616e207468657265666f726520616c7761797320686f6c647320696e207468657365206d61747465727320746f2074686973207072696e6369706c65206f662073656c656374696f6e3a2068652072656a6563747320706c6561737572657320746f20736563757265206f74686572206772656174657220706c656173757265732c206f7220656c736520686520656e6475726573207061696e7320746f2061766f696420776f727365207061696e733c2f7370616e3e3c62723e3c2f703e, NULL, NULL, NULL, 5, '2021-07-24 22:49:03', '2021-07-24 22:49:03'),
(91, 176, 14, 'consectetur, adipisci velit, sed quia non numquam eius', 'consectetur,-adipisci-velit,-sed-quia-non-numquam-eius', '1627199423.jpg', 0x3c626c6f636b71756f74653e3c703e3c7370616e207374796c653d22666f6e742d73697a653a313470783b666f6e742d66616d696c793a27436f6d69632053616e73204d53273b223e546865726520617265206d616e7920766172696174696f6e73206f66207061737361676573206f66204c6f72656d20497073756d20617661696c61626c652c2062757420746865206d616a6f72697479206861766520737566666572656420616c7465726174696f6e20696e20736f6d6520666f726d2c20627920696e6a65637465642068756d6f75722c206f722072616e646f6d6973656420776f72647320776869636820646f6e2774206c6f6f6b206576656e20736c696768746c792062656c69657661626c652e20496620796f752061726520676f696e6720746f2075736520612070617373616765206f66204c6f72656d20497073756d2c20796f75206e65656420746f20626520737572652074686572652069736e277420616e797468696e6720656d62617272617373696e672068696464656e20696e20746865206d6964646c65206f6620746578742e20416c6c20746865204c6f72656d20497073756d2067656e657261746f7273206f6e2074686520496e7465726e65742074656e6420746f2072657065617420707265646566696e6564206368756e6b73206173206e65636573736172792c206d616b696e6720746869732074686520666972737420747275652067656e657261746f72206f6e2074686520496e7465726e65742e204974207573657320612064696374696f6e617279206f66206f76657220323030204c6174696e20776f7264732c20636f6d62696e6564207769746820612068616e6466756c206f66206d6f64656c2073656e74656e636520737472756374757265732c20746f2067656e6572617465204c6f72656d20497073756d207768696368206c6f6f6b7320726561736f6e61626c652e205468652067656e657261746564204c6f72656d20497073756d206973207468657265666f726520616c7761797320667265652066726f6d2072657065746974696f6e2c20696e6a65637465642068756d6f75722c206f72206e6f6e2d636861726163746572697374696320776f726473206574632e3c2f7370616e3e3c2f703e3c2f626c6f636b71756f74653e3c703e3c7370616e207374796c653d22636f6c6f723a72676228302c302c30293b666f6e742d66616d696c793a274f70656e2053616e73272c20417269616c2c2073616e732d73657269663b746578742d616c69676e3a6a7573746966793b223e436f6e747261727920746f20706f70756c61722062656c6965662c204c6f72656d20497073756d206973206e6f742073696d706c792072616e646f6d20746578742e2049742068617320726f6f747320696e2061207069656365206f6620636c6173736963616c204c6174696e206c6974657261747572652066726f6d2034352042432c206d616b696e67206974206f7665722032303030207965617273206f6c642e2052696368617264204d63436c696e746f636b2c2061204c6174696e2070726f666573736f722061742048616d7064656e2d5379646e657920436f6c6c65676520696e2056697267696e69612c206c6f6f6b6564207570206f6e65206f6620746865206d6f7265206f627363757265204c6174696e20776f7264732c20636f6e73656374657475722c2066726f6d2061204c6f72656d20497073756d20706173736167652c20616e6420676f696e67207468726f75676820746865206369746573206f662074686520776f726420696e20636c6173736963616c206c6974657261747572653c2f7370616e3e3c62723e3c2f703e, NULL, NULL, NULL, 6, '2021-07-24 22:50:07', '2021-07-25 19:43:39'),
(92, 177, 17, 'وقد نجا خمسة قرون فحسب', 'وقد-نجا-خمسة-قرون-فحسب', '1627199088.jpg', 0xd987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e, NULL, NULL, NULL, 1, '2021-07-24 22:44:48', '2021-07-24 22:44:48'),
(93, 177, 18, 'لكن يجب أن أشرح لكم كيف كل هذه الفكرة الخاطئة عن المتعة', 'لكن-يجب-أن-أشرح-لكم-كيف-كل-هذه-الفكرة-الخاطئة-عن-المتعة', '1627199180.jpg', 0xd987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e, NULL, NULL, NULL, 2, '2021-07-24 22:46:20', '2021-07-24 22:46:20'),
(94, 177, 19, 'شرح التعاليم الفعلية للمستكشف العظيم للحقيقة', 'شرح-التعاليم-الفعلية-للمستكشف-العظيم-للحقيقة', '1627199238.jpg', 0xd987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e, NULL, NULL, NULL, 3, '2021-07-24 22:47:18', '2021-07-24 22:47:18'),
(95, 177, 20, 'شرح التعاليم الفعلية للمستكشف العظيم للحقيقة', 'شرح-التعاليم-الفعلية-للمستكشف-العظيم-للحقيقة', '1627199437.jpg', 0xd987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e, NULL, NULL, NULL, 4, '2021-07-24 22:48:00', '2021-07-24 22:50:37'),
(96, 177, 17, 'من ناحية أخرى ، نشجب بسخط مستقيم', 'من-ناحية-أخرى-،-نشجب-بسخط-مستقيم', '1627199343.jpg', 0xd987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e, NULL, NULL, NULL, 5, '2021-07-24 22:49:03', '2021-07-24 22:49:03'),
(97, 177, 18, 'إنه يرغب في الحصول على الاحتياطي الفيدرالي ، ولكن أيضًا لأنه لا يمكن إلحاقه أبدًا', 'إنه-يرغب-في-الحصول-على-الاحتياطي-الفيدرالي-،-ولكن-أيضًا-لأنه-لا-يمكن-إلحاقه-أبدًا', '1627199423.jpg', 0xd987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e, NULL, NULL, NULL, 6, '2021-07-24 22:50:07', '2021-07-24 22:50:23');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_body` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`) VALUES
(2, 'email_verification', 'Verify Your Email', '<p style=\"line-height: 1.6;\">Hello<b> {customer_name}</b>,</p><p style=\"line-height: 1.6;\"><br>Please click the link below to verify your email.</p><p>{verification_link}</p><p><br></p><p>Best Regards,</p><p>{website_title}</p>'),
(12, 'custom_domain_connected', 'Custom Domain is Connected with Our Server', 'Hi {username},<br><br>\n\nThanks for your custom domain request.<br>\nYour requested domain {requested_domain} has been connected to your server.<br>\nPlease <strong>clear your browser cache</strong> & visit {requested_domain} to see your portfolio website.<br>\n\nYour current domain: {requested_domain}.<br>\nYour previous domain: {previous_domain}.<br><br>\n\nBest Regards,<br>\n{website_title}.<br>'),
(13, 'custom_domain_rejected', 'Custom Domain Request is Rejected', 'Hi {username},<br><br>\r\n\r\nThanks for your custom domain request.<br>\r\nUnfortunately, we have rejected your custom domain request<br>\r\n\r\nYour requested domain: {requested_domain}.<br>\r\nYour current domain: {current_domain}.<br><br>\r\n\r\nBest Regards,<br>\r\n{website_title}.<br>'),
(16, 'registration_with_premium_package', 'You have registered successfully', '<p>Hi {username},<br /><br />\r\n\r\nThis is a confirmation mail from us</p><p><b><span style=\"font-size:18px;\">Membership Information:</span></b><br />\r\n<strong>Package Title:</strong> {package_title}<br />\r\n<strong>Package Price:</strong> {package_price}<br />\r\n<strong>Activation Date:</strong> {activation_date}<br />\r\n<strong>Expire Date:</strong> {expire_date}</p><p><br /></p><p>We have attached an invoice with this mail.<br />\r\nThank you for your purchase.</p><p><br />\r\n\r\nBest Regards,<br />\r\n{website_title}.<br /></p>'),
(17, 'registration_with_trial_package', 'You have registered successfully', 'Hi {username},<br /><br />\r\n\r\nThis is a confirmation mail from us.<br />\r\nYou have purchased a trial package<br /><br />\r\n\r\n<h4>Membership Information:</h4>\r\n<strong>Package Title:</strong> {package_title}<br />\r\n<strong>Package Price:</strong> {package_price}<br />\r\n<strong>Activation Date:</strong> {activation_date}<br />\r\n<strong>Expire Date:</strong> {expire_date}<br /><br />\r\n\r\nWe have attached an invoice in this mail<br />\r\nThank you for your purchase.<br /><br />\r\n\r\nBest Regards,<br />\r\n{website_title}.<br />'),
(18, 'registration_with_free_package', 'You have registered successfully', 'Hi {username},<br /><br />\r\n\r\nThis is a confirmation mail from us.<br />\r\nYou have purchased a free package<br /><br />\r\n\r\n<h4>Membership Information:</h4>\r\n<strong>Package Title:</strong> {package_title}<br />\r\n<strong>Package Price:</strong> {package_price}<br />\r\n<strong>Activation Date:</strong> {activation_date}<br />\r\n<strong>Expire Date:</strong> {expire_date}<br /><br />\r\n\r\nWe have attached an invoice in this mail<br />\r\nThank you for your purchase.<br /><br />\r\n\r\nBest Regards,<br />\r\n{website_title}.<br />'),
(19, 'membership_expiry_reminder', 'Your membership will be expired soon', 'Hi {username},<br /><br />\r\n\r\nYour membership will be expired soon.<br />\r\nYour membership is valid till <strong>{last_day_of_membership}</strong><br />\r\nPlease click here - {login_link} to log into the dashboard to purchase a new package / extend the current package to extend your membership.<br /><br />\r\n\r\nBest Regards,<br />\r\n{website_title}.'),
(20, 'membership_expired', 'Your membership is expired', 'Hi {username},<br><br>\r\n\r\nYour membership is expired.<br>\r\nPlease click here - {login_link} to log into the dashboard to purchase a new package / extend the current package to continue the membership.<br><br>\r\n\r\nBest Regards,<br>\r\n{website_title}.'),
(21, 'membership_extend', 'Your membership is extended', '<p>Hi {username},<br /><br />\n\nThis is a confirmation mail from us.<br />\nYou have extended your membership.<br />\n\n<strong>Package Title:</strong> {package_title}<br />\n<strong>Package Price:</strong> {package_price}<br />\n<strong>Activation Date:</strong> {activation_date}<br />\n<strong>Expire Date:</strong> {expire_date}</p><p><br /></p><p>We have attached an invoice with this mail.<br />\nThank you for your purchase.</p><p><br />\n\nBest Regards,<br />\n{website_title}.<br /></p>'),
(22, 'payment_accepted_for_membership_extension_offline_gateway', 'Your payment for membership extension is accepted', '<p>Hi {username},<br /><br />\r\n\r\nThis is a confirmation mail from us.<br />\r\nYour payment has been accepted & your membership is extended.<br />\r\n\r\n<strong>Package Title:</strong> {package_title}<br />\r\n<strong>Package Price:</strong> {package_price}<br />\r\n<strong>Activation Date:</strong> {activation_date}<br />\r\n<strong>Expire Date:</strong> {expire_date}</p><p><br /></p><p>We have attached an invoice with this mail.<br />\r\nThank you for your purchase.</p><p><br />\r\n\r\nBest Regards,<br />\r\n{website_title}.<br /></p>'),
(23, 'payment_accepted_for_registration_offline_gateway', 'Your payment for registration is approved', '<p>Hi {username},<br /><br />\r\n\r\nThis is a confirmation mail from us.<br />\r\nYour payment has been accepted & now you can login to your user dashboard to build your portfolio website.<br />\r\n\r\n<strong>Package Title:</strong> {package_title}<br />\r\n<strong>Package Price:</strong> {package_price}<br />\r\n<strong>Activation Date:</strong> {activation_date}<br />\r\n<strong>Expire Date:</strong> {expire_date}</p><p><br /></p><p>We have attached an invoice with this mail.<br />\r\nThank you for your purchase.</p><p><br />\r\n\r\nBest Regards,<br />\r\n{website_title}.<br /></p>'),
(24, 'payment_rejected_for_membership_extension_offline_gateway', 'Your payment for membership extension is rejected', '<p>Hi {username},<br /><br />\r\n\r\nWe are sorry to inform you that your payment has been rejected<br />\r\n\r\n<strong>Package Title:</strong> {package_title}<br />\r\n<strong>Package Price:</strong> {package_price}<br />\r\n\r\nBest Regards,<br />\r\n{website_title}.<br /></p>'),
(25, 'payment_rejected_for_registration_offline_gateway', 'Your payment for registration is rejected', '<p>Hi {username},<br /><br />\r\n\r\nWe are sorry to inform you that your payment has been rejected<br>\r\n\r\n<strong>Package Title:</strong> {package_title}<br />\r\n<strong>Package Price:</strong> {package_price}<br />\r\n\r\nBest Regards,<br />\r\n{website_title}.<br /></p>');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `language_id`, `question`, `answer`, `serial_number`) VALUES
(20, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 1),
(21, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 2),
(22, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 3),
(23, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 4),
(24, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 5),
(25, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 6),
(26, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 7),
(27, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 8),
(28, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 9),
(29, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 10),
(50, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 1),
(51, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 2),
(52, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 3),
(53, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 4),
(54, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 5),
(55, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 6),
(56, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 7),
(57, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 8),
(58, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 9),
(59, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 10);

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `language_id`, `icon`, `title`, `text`, `serial_number`) VALUES
(63, 176, 'fas fa-adjust', 'Dark & Light Version', 'It is a long established fact that a reader will be distracted by the readable content of a page', 1),
(64, 176, 'fas fa-globe-americas', 'Unlimited Language', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum', 2),
(65, 176, 'fas fa-gamepad', 'Powerful Control Panel', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered', 3),
(66, 177, 'fas fa-adjust', 'نسخة داكنة وخفيفة', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على القراءة', 1),
(67, 177, 'fas fa-globe-americas', 'لغة غير محدودة', 'لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. لوريم إيبسوم', 2),
(68, 177, 'fas fa-gamepad', 'لوحة تحكم قوية', 'هناك العديد من الاختلافات المتوفرة لنصوص لوريم إيبسوم ، لكن الغالبية عانت منها', 3);

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `follower_id` int(11) NOT NULL,
  `following_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`id`, `follower_id`, `following_id`, `created_at`, `updated_at`) VALUES
(3, 37, 43, '2021-01-25 07:39:24', '2021-01-25 07:39:24'),
(4, 22, 21, '2021-07-06 05:56:14', '2021-07-06 05:56:14'),
(5, 22, 20, '2021-07-06 05:56:20', '2021-07-06 05:56:20'),
(7, 22, 24, '2021-07-06 05:56:34', '2021-07-06 05:56:34'),
(17, 38, 22, '2021-07-07 00:21:18', '2021-07-07 00:21:18'),
(19, 22, 38, '2021-07-07 04:24:45', '2021-07-07 04:24:45');

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `endpoint` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
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
-- Table structure for table `job_experiences`
--

CREATE TABLE `job_experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `is_continue` tinyint(1) NOT NULL DEFAULT 0,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `lang_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_experiences`
--

INSERT INTO `job_experiences` (`id`, `company_name`, `designation`, `content`, `start_date`, `end_date`, `is_continue`, `serial_number`, `lang_id`, `user_id`, `created_at`, `updated_at`) VALUES
(11, 'ABC Group', 'Laravel Developer', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', '2021-07-01', NULL, 1, 1, 62, 62, '2021-07-25 22:45:01', '2021-07-25 22:45:01'),
(12, 'XYZsoft LTD', 'Full-stack Developer', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words', '2020-02-26', '2021-06-09', 0, 2, 62, 62, '2021-07-25 22:46:06', '2021-07-25 22:46:06'),
(13, 'MNO Tech', 'Frontend Designer', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it', '2020-02-26', '2020-03-09', 0, 3, 62, 62, '2021-07-25 22:47:19', '2021-07-25 22:47:36'),
(14, 'مجموعة ABC', 'مطور Laravel', 'خلافًا للاعتقاد الشائع ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 عام.', '2021-07-01', NULL, 1, 1, 63, 62, '2021-07-25 22:45:01', '2021-07-25 22:45:01'),
(15, 'XYZsoft المحدودة', 'مطور كامل المكدس', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال الدعابة أو الكلمات العشوائية.', '2020-02-26', '2021-06-09', 0, 2, 63, 62, '2021-07-25 22:46:06', '2021-07-25 22:46:06'),
(16, 'МНО е', 'مصمم الواجهة الأمامية', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو ذلك', '2020-02-26', '2020-03-09', 0, 3, 63, 62, '2021-07-25 22:47:19', '2021-07-25 22:47:36'),
(17, 'ABC Group', 'Laravel Developer', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', '2021-07-01', NULL, 1, 1, 64, 63, '2021-07-25 22:45:01', '2021-07-25 22:45:01'),
(18, 'XYZsoft LTD', 'Full-stack Developer', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words', '2020-02-26', '2021-06-09', 0, 2, 64, 63, '2021-07-25 22:46:06', '2021-07-25 22:46:06'),
(19, 'MNO Tech', 'Frontend Designer', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it', '2020-02-26', '2020-03-09', 0, 3, 64, 63, '2021-07-25 22:47:19', '2021-07-25 22:47:36'),
(20, 'مجموعة ABC', 'مطور Laravel', 'خلافًا للاعتقاد الشائع ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 عام.', '2021-07-01', NULL, 1, 1, 65, 63, '2021-07-25 22:45:01', '2021-07-25 22:45:01'),
(21, 'XYZsoft المحدودة', 'مطور كامل المكدس', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال الدعابة أو الكلمات العشوائية.', '2020-02-26', '2021-06-09', 0, 2, 65, 63, '2021-07-25 22:46:06', '2021-07-25 22:46:06'),
(22, 'МНО е', 'مصمم الواجهة الأمامية', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو ذلك', '2020-02-26', '2020-03-09', 0, 3, 65, 63, '2021-07-25 22:47:19', '2021-07-25 22:47:36'),
(23, 'ABC Group', 'Laravel Developer', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', '2021-07-01', NULL, 1, 1, 66, 64, '2021-07-25 22:45:01', '2021-07-25 22:45:01'),
(24, 'XYZsoft LTD', 'Full-stack Developer', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words', '2020-02-26', '2021-06-09', 0, 2, 66, 64, '2021-07-25 22:46:06', '2021-07-25 22:46:06'),
(25, 'MNO Tech', 'Frontend Designer', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it', '2020-02-26', '2020-03-09', 0, 3, 66, 64, '2021-07-25 22:47:19', '2021-07-25 22:47:36'),
(26, 'مجموعة ABC', 'مطور Laravel', 'خلافًا للاعتقاد الشائع ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 عام.', '2021-07-01', NULL, 1, 1, 67, 64, '2021-07-25 22:45:01', '2021-07-25 22:45:01'),
(27, 'XYZsoft المحدودة', 'مطور كامل المكدس', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال الدعابة أو الكلمات العشوائية.', '2020-02-26', '2021-06-09', 0, 2, 67, 64, '2021-07-25 22:46:06', '2021-07-25 22:46:06'),
(28, 'МНО е', 'مصمم الواجهة الأمامية', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو ذلك', '2020-02-26', '2020-03-09', 0, 3, 67, 64, '2021-07-25 22:47:19', '2021-07-25 22:47:36'),
(29, 'ABC Group', 'Laravel Developer', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', '2021-07-01', NULL, 1, 1, 68, 65, '2021-07-25 22:45:01', '2021-07-25 22:45:01'),
(30, 'XYZsoft LTD', 'Full-stack Developer', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words', '2020-02-26', '2021-06-09', 0, 2, 68, 65, '2021-07-25 22:46:06', '2021-07-25 22:46:06'),
(31, 'MNO Tech', 'Frontend Designer', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it', '2020-02-26', '2020-03-09', 0, 3, 68, 65, '2021-07-25 22:47:19', '2021-07-25 22:47:36'),
(32, 'مجموعة ABC', 'مطور Laravel', 'خلافًا للاعتقاد الشائع ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 عام.', '2021-07-01', NULL, 1, 1, 69, 65, '2021-07-25 22:45:01', '2021-07-25 22:45:01'),
(33, 'XYZsoft المحدودة', 'مطور كامل المكدس', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال الدعابة أو الكلمات العشوائية.', '2020-02-26', '2021-06-09', 0, 2, 69, 65, '2021-07-25 22:46:06', '2021-07-25 22:46:06'),
(34, 'МНО е', 'مصمم الواجهة الأمامية', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو ذلك', '2020-02-26', '2020-03-09', 0, 3, 69, 65, '2021-07-25 22:47:19', '2021-07-25 22:47:36'),
(35, 'ABC Group', 'Laravel Developer', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', '2021-07-01', NULL, 1, 1, 70, 66, '2021-07-25 22:45:01', '2021-07-25 22:45:01'),
(36, 'XYZsoft LTD', 'Full-stack Developer', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words', '2020-02-26', '2021-06-09', 0, 2, 70, 66, '2021-07-25 22:46:06', '2021-07-25 22:46:06'),
(37, 'MNO Tech', 'Frontend Designer', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it', '2020-02-26', '2020-03-09', 0, 3, 70, 66, '2021-07-25 22:47:19', '2021-07-25 22:47:36'),
(38, 'مجموعة ABC', 'مطور Laravel', 'خلافًا للاعتقاد الشائع ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 عام.', '2021-07-01', NULL, 1, 1, 71, 66, '2021-07-25 22:45:01', '2021-07-25 22:45:01'),
(39, 'XYZsoft المحدودة', 'مطور كامل المكدس', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال الدعابة أو الكلمات العشوائية.', '2020-02-26', '2021-06-09', 0, 2, 71, 66, '2021-07-25 22:46:06', '2021-07-25 22:46:06'),
(40, 'МНО е', 'مصمم الواجهة الأمامية', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو ذلك', '2020-02-26', '2020-03-09', 0, 3, 71, 66, '2021-07-25 22:47:19', '2021-07-25 22:47:36'),
(41, 'ABC Group', 'Laravel Developer', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', '2021-07-01', NULL, 1, 1, 72, 67, '2021-07-25 22:45:01', '2021-07-25 22:45:01'),
(42, 'XYZsoft LTD', 'Full-stack Developer', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words', '2020-02-26', '2021-06-09', 0, 2, 72, 67, '2021-07-25 22:46:06', '2021-07-25 22:46:06'),
(43, 'MNO Tech', 'Frontend Designer', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it', '2020-02-26', '2020-03-09', 0, 3, 72, 67, '2021-07-25 22:47:19', '2021-07-25 22:47:36'),
(44, 'مجموعة ABC', 'مطور Laravel', 'خلافًا للاعتقاد الشائع ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 عام.', '2021-07-01', NULL, 1, 1, 73, 67, '2021-07-25 22:45:01', '2021-07-25 22:45:01'),
(45, 'XYZsoft المحدودة', 'مطور كامل المكدس', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال الدعابة أو الكلمات العشوائية.', '2020-02-26', '2021-06-09', 0, 2, 73, 67, '2021-07-25 22:46:06', '2021-07-25 22:46:06'),
(46, 'МНО е', 'مصمم الواجهة الأمامية', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو ذلك', '2020-02-26', '2020-03-09', 0, 3, 73, 67, '2021-07-25 22:47:19', '2021-07-25 22:47:36');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 1,
  `rtl` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - LTR, 1- RTL',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `is_default`, `rtl`, `created_at`, `updated_at`) VALUES
(176, 'English', 'en', 1, 0, '2020-08-07 04:43:05', '2021-01-07 11:43:05'),
(177, 'عربى', 'ar', 0, 1, '2020-08-07 04:51:17', '2021-01-07 11:43:05');

-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

CREATE TABLE `memberships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_symbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `is_trial` tinyint(1) NOT NULL DEFAULT 0,
  `trial_days` int(11) NOT NULL DEFAULT 0,
  `receipt` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `memberships`
--

INSERT INTO `memberships` (`id`, `price`, `currency`, `currency_symbol`, `payment_method`, `transaction_id`, `status`, `is_trial`, `trial_days`, `receipt`, `transaction_details`, `settings`, `package_id`, `user_id`, `start_date`, `expire_date`, `created_at`, `updated_at`) VALUES
(119, 19, 'USD', '$', 'Mollie Payment', '76b77138', 1, 0, 0, NULL, '{\"resource\":\"payment\",\"id\":\"tr_zQdRT6WfGH\",\"mode\":\"test\",\"amount\":{\"value\":\"19.00\",\"currency\":\"USD\"},\"settlementAmount\":{\"value\":\"15.65\",\"currency\":\"EUR\"},\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"USD\"},\"amountRemaining\":{\"value\":\"19.00\",\"currency\":\"USD\"},\"amountChargedBack\":null,\"description\":\"You are purchasing a membership\",\"method\":\"creditcard\",\"status\":\"paid\",\"createdAt\":\"2021-07-26T06:39:39+00:00\",\"paidAt\":\"2021-07-26T06:39:45+00:00\",\"canceledAt\":null,\"expiresAt\":null,\"failedAt\":null,\"dueDate\":null,\"billingEmail\":null,\"profileId\":\"pfl_wWVQgHa2jS\",\"sequenceType\":\"oneoff\",\"redirectUrl\":\"http:\\/\\/localhost\\/sasso\\/membership\\/mollie\\/success\",\"webhookUrl\":null,\"mandateId\":null,\"subscriptionId\":null,\"orderId\":null,\"settlementId\":null,\"locale\":null,\"metadata\":null,\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardAudience\":\"consumer\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"restrictPaymentMethodsToCountry\":null,\"_links\":{\"self\":{\"href\":\"https:\\/\\/api.mollie.com\\/v2\\/payments\\/tr_zQdRT6WfGH\",\"type\":\"application\\/hal+json\"},\"dashboard\":{\"href\":\"https:\\/\\/www.mollie.com\\/dashboard\\/org_6529881\\/payments\\/tr_zQdRT6WfGH\",\"type\":\"text\\/html\"},\"changePaymentState\":{\"href\":\"https:\\/\\/www.mollie.com\\/paymentscreen\\/testmode\\/?method=creditcard&token=2.1kq5kx\",\"type\":\"text\\/html\"},\"documentation\":{\"href\":\"https:\\/\\/docs.mollie.com\\/reference\\/v2\\/payments-api\\/get-payment\",\"type\":\"text\\/html\"}},\"_embedded\":null,\"isCancelable\":null,\"amountCaptured\":null,\"applicationFee\":null,\"authorizedAt\":null,\"expiredAt\":null,\"customerId\":null,\"countryCode\":\"BD\"}', '{\"id\":147,\"language_id\":176,\"cookie_alert_status\":1,\"cookie_alert_text\":\"Your experience on this site will be improved by allowing cookies.\",\"cookie_alert_button_text\":\"Allow Cookies\",\"to_mail\":\"pratik.anwar@gmail.com\",\"default_language_direction\":\"ltr\",\"from_mail\":\"pratik.anwar@gmail.com\",\"from_name\":\"Superv\",\"is_smtp\":1,\"smtp_host\":\"smtp.gmail.com\",\"smtp_port\":\"587\",\"encryption\":\"TLS\",\"smtp_username\":\"geniustest11@gmail.com\",\"smtp_password\":\"xwgatpmwcvjiomzp\",\"base_currency_symbol\":\"$\",\"base_currency_symbol_position\":\"left\",\"base_currency_text\":\"USD\",\"base_currency_text_position\":\"right\",\"base_currency_rate\":\"1.00\",\"hero_section_title\":\"fundado em 1950\",\"hero_section_text\":\"Fa\\u00e7a-se mais forte do que suas desculpas\",\"hero_section_button_text\":\"ayr\\u0131nt\\u0131lar\",\"hero_section_button_url\":\"http:\\/\\/example.com\\/\",\"hero_section_video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=EC0oTev5R9A\",\"hero_img\":\"60f55aec0aba4.png\",\"timezone\":\"America\\/Maceio\",\"contact_addresses\":\"House - 44, Road - 03, Sector - 11, Uttara, Dhaka\\r\\nDhanmondi, Dhaka\\r\\nMohammadpur, Dhaka\",\"contact_numbers\":\"237237237,72372332\",\"contact_mails\":\"contact@gmail.com,support@gmail.com,query@gmail.com\",\"is_whatsapp\":1,\"whatsapp_number\":null,\"whatsapp_header_title\":null,\"whatsapp_popup_message\":null,\"whatsapp_popup\":1}', 15, 62, '2021-07-26', '2030-08-26', '2021-07-25 21:39:50', '2021-07-25 21:39:50'),
(120, 19, 'USD', '$', 'Paypal', '5d3f6b76', 1, 0, 0, NULL, '{\n    \"id\": \"PAYID-MD74ELQ8EF18883FW638473V\",\n    \"intent\": \"sale\",\n    \"state\": \"approved\",\n    \"cart\": \"14N71376VX0063358\",\n    \"payer\": {\n        \"payment_method\": \"paypal\",\n        \"status\": \"VERIFIED\",\n        \"payer_info\": {\n            \"email\": \"megasoft.envato@gmail.com\",\n            \"first_name\": \"Samiul Alim\",\n            \"last_name\": \"Pratik\",\n            \"payer_id\": \"8C5NYJ7EZ7QSS\",\n            \"shipping_address\": {\n                \"recipient_name\": \"Samiul Alim Pratik\",\n                \"line1\": \"1 Main St\",\n                \"city\": \"San Jose\",\n                \"state\": \"CA\",\n                \"postal_code\": \"95131\",\n                \"country_code\": \"US\"\n            },\n            \"country_code\": \"US\"\n        }\n    },\n    \"transactions\": [\n        {\n            \"amount\": {\n                \"total\": \"19.00\",\n                \"currency\": \"USD\",\n                \"details\": {\n                    \"subtotal\": \"19.00\",\n                    \"shipping\": \"0.00\",\n                    \"insurance\": \"0.00\",\n                    \"handling_fee\": \"0.00\",\n                    \"shipping_discount\": \"0.00\",\n                    \"discount\": \"0.00\"\n                }\n            },\n            \"payee\": {\n                \"merchant_id\": \"BKNWZYE3MAUNU\",\n                \"email\": \"megasoft.envato-facilitator@gmail.com\"\n            },\n            \"description\": \"You are purchasing a membership Via Paypal\",\n            \"item_list\": {\n                \"items\": [\n                    {\n                        \"name\": \"You are purchasing a membership\",\n                        \"price\": \"19.00\",\n                        \"currency\": \"USD\",\n                        \"tax\": \"0.00\",\n                        \"quantity\": 1\n                    }\n                ],\n                \"shipping_address\": {\n                    \"recipient_name\": \"Samiul Alim Pratik\",\n                    \"line1\": \"1 Main St\",\n                    \"city\": \"San Jose\",\n                    \"state\": \"CA\",\n                    \"postal_code\": \"95131\",\n                    \"country_code\": \"US\"\n                }\n            },\n            \"related_resources\": [\n                {\n                    \"sale\": {\n                        \"id\": \"8W556584051321648\",\n                        \"state\": \"completed\",\n                        \"amount\": {\n                            \"total\": \"19.00\",\n                            \"currency\": \"USD\",\n                            \"details\": {\n                                \"subtotal\": \"19.00\",\n                                \"shipping\": \"0.00\",\n                                \"insurance\": \"0.00\",\n                                \"handling_fee\": \"0.00\",\n                                \"shipping_discount\": \"0.00\",\n                                \"discount\": \"0.00\"\n                            }\n                        },\n                        \"payment_mode\": \"INSTANT_TRANSFER\",\n                        \"protection_eligibility\": \"ELIGIBLE\",\n                        \"protection_eligibility_type\": \"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\n                        \"transaction_fee\": {\n                            \"value\": \"0.85\",\n                            \"currency\": \"USD\"\n                        },\n                        \"parent_payment\": \"PAYID-MD74ELQ8EF18883FW638473V\",\n                        \"create_time\": \"2021-07-27T08:22:27Z\",\n                        \"update_time\": \"2021-07-27T08:22:27Z\",\n                        \"links\": [\n                            {\n                                \"href\": \"https://api.sandbox.paypal.com/v1/payments/sale/8W556584051321648\",\n                                \"rel\": \"self\",\n                                \"method\": \"GET\"\n                            },\n                            {\n                                \"href\": \"https://api.sandbox.paypal.com/v1/payments/sale/8W556584051321648/refund\",\n                                \"rel\": \"refund\",\n                                \"method\": \"POST\"\n                            },\n                            {\n                                \"href\": \"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-MD74ELQ8EF18883FW638473V\",\n                                \"rel\": \"parent_payment\",\n                                \"method\": \"GET\"\n                            }\n                        ]\n                    }\n                }\n            ]\n        }\n    ],\n    \"redirect_urls\": {\n        \"return_url\": \"http://localhost/sasso/membership/paypal/success?paymentId=PAYID-MD74ELQ8EF18883FW638473V\",\n        \"cancel_url\": \"http://localhost/sasso/membership/paypal/cancel\"\n    },\n    \"create_time\": \"2021-07-27T08:22:05Z\",\n    \"update_time\": \"2021-07-27T08:22:27Z\",\n    \"links\": [\n        {\n            \"href\": \"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-MD74ELQ8EF18883FW638473V\",\n            \"rel\": \"self\",\n            \"method\": \"GET\"\n        }\n    ],\n    \"failed_transactions\": []\n}', '{\"id\":147,\"language_id\":176,\"cookie_alert_status\":1,\"cookie_alert_text\":\"Your experience on this site will be improved by allowing cookies.\",\"cookie_alert_button_text\":\"Allow Cookies\",\"to_mail\":\"pratik.anwar@gmail.com\",\"default_language_direction\":\"ltr\",\"from_mail\":\"pratik.anwar@gmail.com\",\"from_name\":\"Superv\",\"is_smtp\":1,\"smtp_host\":\"smtp.gmail.com\",\"smtp_port\":\"587\",\"encryption\":\"TLS\",\"smtp_username\":\"geniustest11@gmail.com\",\"smtp_password\":\"xwgatpmwcvjiomzp\",\"base_currency_symbol\":\"$\",\"base_currency_symbol_position\":\"left\",\"base_currency_text\":\"USD\",\"base_currency_text_position\":\"right\",\"base_currency_rate\":\"1.00\",\"hero_section_title\":\"fundado em 1950\",\"hero_section_text\":\"Fa\\u00e7a-se mais forte do que suas desculpas\",\"hero_section_button_text\":\"ayr\\u0131nt\\u0131lar\",\"hero_section_button_url\":\"http:\\/\\/example.com\\/\",\"hero_section_video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=EC0oTev5R9A\",\"hero_img\":\"60f55aec0aba4.png\",\"timezone\":\"America\\/Maceio\",\"contact_addresses\":\"House - 44, Road - 03, Sector - 11, Uttara, Dhaka\\r\\nDhanmondi, Dhaka\\r\\nMohammadpur, Dhaka\",\"contact_numbers\":\"237237237,72372332\",\"contact_mails\":\"contact@gmail.com,support@gmail.com,query@gmail.com\",\"is_whatsapp\":1,\"whatsapp_number\":null,\"whatsapp_header_title\":null,\"whatsapp_popup_message\":null,\"whatsapp_popup\":1}', 15, 63, '2021-07-27', '2030-08-29', '2021-07-26 23:22:31', '2021-07-26 23:22:31'),
(121, 180, 'USD', '$', 'Mollie Payment', '9051eb24', 1, 0, 0, NULL, '{\"resource\":\"payment\",\"id\":\"tr_JtjHD6Ux2v\",\"mode\":\"test\",\"amount\":{\"value\":\"180.00\",\"currency\":\"USD\"},\"settlementAmount\":{\"value\":\"148.11\",\"currency\":\"EUR\"},\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"USD\"},\"amountRemaining\":{\"value\":\"180.00\",\"currency\":\"USD\"},\"amountChargedBack\":null,\"description\":\"You are purchasing a membership\",\"method\":\"creditcard\",\"status\":\"paid\",\"createdAt\":\"2021-07-27T11:15:28+00:00\",\"paidAt\":\"2021-07-27T11:15:34+00:00\",\"canceledAt\":null,\"expiresAt\":null,\"failedAt\":null,\"dueDate\":null,\"billingEmail\":null,\"profileId\":\"pfl_wWVQgHa2jS\",\"sequenceType\":\"oneoff\",\"redirectUrl\":\"http:\\/\\/localhost\\/sasso\\/membership\\/mollie\\/success\",\"webhookUrl\":null,\"mandateId\":null,\"subscriptionId\":null,\"orderId\":null,\"settlementId\":null,\"locale\":null,\"metadata\":null,\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardAudience\":\"consumer\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"restrictPaymentMethodsToCountry\":null,\"_links\":{\"self\":{\"href\":\"https:\\/\\/api.mollie.com\\/v2\\/payments\\/tr_JtjHD6Ux2v\",\"type\":\"application\\/hal+json\"},\"dashboard\":{\"href\":\"https:\\/\\/www.mollie.com\\/dashboard\\/org_6529881\\/payments\\/tr_JtjHD6Ux2v\",\"type\":\"text\\/html\"},\"changePaymentState\":{\"href\":\"https:\\/\\/www.mollie.com\\/paymentscreen\\/testmode\\/?method=creditcard&token=2.hzoaqd\",\"type\":\"text\\/html\"},\"documentation\":{\"href\":\"https:\\/\\/docs.mollie.com\\/reference\\/v2\\/payments-api\\/get-payment\",\"type\":\"text\\/html\"}},\"_embedded\":null,\"isCancelable\":null,\"amountCaptured\":null,\"applicationFee\":null,\"authorizedAt\":null,\"expiredAt\":null,\"customerId\":null,\"countryCode\":\"BD\"}', '{\"id\":147,\"language_id\":176,\"cookie_alert_status\":1,\"cookie_alert_text\":\"Your experience on this site will be improved by allowing cookies.\",\"cookie_alert_button_text\":\"Allow Cookies\",\"to_mail\":\"pratik.anwar@gmail.com\",\"default_language_direction\":\"ltr\",\"from_mail\":\"pratik.anwar@gmail.com\",\"from_name\":\"Superv\",\"is_smtp\":1,\"smtp_host\":\"smtp.gmail.com\",\"smtp_port\":\"587\",\"encryption\":\"TLS\",\"smtp_username\":\"geniustest11@gmail.com\",\"smtp_password\":\"xwgatpmwcvjiomzp\",\"base_currency_symbol\":\"$\",\"base_currency_symbol_position\":\"left\",\"base_currency_text\":\"USD\",\"base_currency_text_position\":\"right\",\"base_currency_rate\":\"1.00\",\"hero_section_title\":\"Our Platform, Your Success\",\"hero_section_text\":\"Minimize the time, it takes to initiate a relationship between you and the customer.\",\"hero_section_button_text\":\"Explore Plans\",\"hero_section_button_url\":\"http:\\/\\/example.com\\/\",\"hero_section_video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=6KJqEPVfoDs\",\"hero_img\":\"60f55aec0aba4.png\",\"timezone\":\"America\\/Maceio\",\"contact_addresses\":\"House - 44, Road - 03, Sector - 11, Uttara, Dhaka\\r\\nDhanmondi, Dhaka\\r\\nMohammadpur, Dhaka\",\"contact_numbers\":\"237237237,72372332\",\"contact_mails\":\"contact@gmail.com,support@gmail.com,query@gmail.com\",\"is_whatsapp\":1,\"whatsapp_number\":null,\"whatsapp_header_title\":null,\"whatsapp_popup_message\":null,\"whatsapp_popup\":1}', 16, 64, '2021-07-27', '2030-07-17', '2021-07-27 02:15:39', '2021-07-27 02:15:39'),
(122, 19, 'USD', '$', 'Paypal', '9d36b8fb', 1, 0, 0, NULL, '{\n    \"id\": \"PAYID-MEAAFFI05G02856H3761233V\",\n    \"intent\": \"sale\",\n    \"state\": \"approved\",\n    \"cart\": \"4VJ68432BK790454X\",\n    \"payer\": {\n        \"payment_method\": \"paypal\",\n        \"status\": \"VERIFIED\",\n        \"payer_info\": {\n            \"email\": \"megasoft.envato@gmail.com\",\n            \"first_name\": \"Samiul Alim\",\n            \"last_name\": \"Pratik\",\n            \"payer_id\": \"8C5NYJ7EZ7QSS\",\n            \"shipping_address\": {\n                \"recipient_name\": \"Samiul Alim Pratik\",\n                \"line1\": \"1 Main St\",\n                \"city\": \"San Jose\",\n                \"state\": \"CA\",\n                \"postal_code\": \"95131\",\n                \"country_code\": \"US\"\n            },\n            \"country_code\": \"US\"\n        }\n    },\n    \"transactions\": [\n        {\n            \"amount\": {\n                \"total\": \"19.00\",\n                \"currency\": \"USD\",\n                \"details\": {\n                    \"subtotal\": \"19.00\",\n                    \"shipping\": \"0.00\",\n                    \"insurance\": \"0.00\",\n                    \"handling_fee\": \"0.00\",\n                    \"shipping_discount\": \"0.00\",\n                    \"discount\": \"0.00\"\n                }\n            },\n            \"payee\": {\n                \"merchant_id\": \"BKNWZYE3MAUNU\",\n                \"email\": \"megasoft.envato-facilitator@gmail.com\"\n            },\n            \"description\": \"You are purchasing a membership Via Paypal\",\n            \"item_list\": {\n                \"items\": [\n                    {\n                        \"name\": \"You are purchasing a membership\",\n                        \"price\": \"19.00\",\n                        \"currency\": \"USD\",\n                        \"tax\": \"0.00\",\n                        \"quantity\": 1\n                    }\n                ],\n                \"shipping_address\": {\n                    \"recipient_name\": \"Samiul Alim Pratik\",\n                    \"line1\": \"1 Main St\",\n                    \"city\": \"San Jose\",\n                    \"state\": \"CA\",\n                    \"postal_code\": \"95131\",\n                    \"country_code\": \"US\"\n                }\n            },\n            \"related_resources\": [\n                {\n                    \"sale\": {\n                        \"id\": \"1S278269V6022434M\",\n                        \"state\": \"completed\",\n                        \"amount\": {\n                            \"total\": \"19.00\",\n                            \"currency\": \"USD\",\n                            \"details\": {\n                                \"subtotal\": \"19.00\",\n                                \"shipping\": \"0.00\",\n                                \"insurance\": \"0.00\",\n                                \"handling_fee\": \"0.00\",\n                                \"shipping_discount\": \"0.00\",\n                                \"discount\": \"0.00\"\n                            }\n                        },\n                        \"payment_mode\": \"INSTANT_TRANSFER\",\n                        \"protection_eligibility\": \"ELIGIBLE\",\n                        \"protection_eligibility_type\": \"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\n                        \"transaction_fee\": {\n                            \"value\": \"0.85\",\n                            \"currency\": \"USD\"\n                        },\n                        \"parent_payment\": \"PAYID-MEAAFFI05G02856H3761233V\",\n                        \"create_time\": \"2021-07-27T12:57:16Z\",\n                        \"update_time\": \"2021-07-27T12:57:16Z\",\n                        \"links\": [\n                            {\n                                \"href\": \"https://api.sandbox.paypal.com/v1/payments/sale/1S278269V6022434M\",\n                                \"rel\": \"self\",\n                                \"method\": \"GET\"\n                            },\n                            {\n                                \"href\": \"https://api.sandbox.paypal.com/v1/payments/sale/1S278269V6022434M/refund\",\n                                \"rel\": \"refund\",\n                                \"method\": \"POST\"\n                            },\n                            {\n                                \"href\": \"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-MEAAFFI05G02856H3761233V\",\n                                \"rel\": \"parent_payment\",\n                                \"method\": \"GET\"\n                            }\n                        ]\n                    }\n                }\n            ]\n        }\n    ],\n    \"redirect_urls\": {\n        \"return_url\": \"http://localhost/sasso/membership/paypal/success?paymentId=PAYID-MEAAFFI05G02856H3761233V\",\n        \"cancel_url\": \"http://localhost/sasso/membership/paypal/cancel\"\n    },\n    \"create_time\": \"2021-07-27T12:56:53Z\",\n    \"update_time\": \"2021-07-27T12:57:16Z\",\n    \"links\": [\n        {\n            \"href\": \"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-MEAAFFI05G02856H3761233V\",\n            \"rel\": \"self\",\n            \"method\": \"GET\"\n        }\n    ],\n    \"failed_transactions\": []\n}', '{\"id\":147,\"language_id\":176,\"cookie_alert_status\":1,\"cookie_alert_text\":\"Your experience on this site will be improved by allowing cookies.\",\"cookie_alert_button_text\":\"Allow Cookies\",\"to_mail\":\"pratik.anwar@gmail.com\",\"default_language_direction\":\"ltr\",\"from_mail\":\"pratik.anwar@gmail.com\",\"from_name\":\"Superv\",\"is_smtp\":1,\"smtp_host\":\"smtp.gmail.com\",\"smtp_port\":\"587\",\"encryption\":\"TLS\",\"smtp_username\":\"geniustest11@gmail.com\",\"smtp_password\":\"xwgatpmwcvjiomzp\",\"base_currency_symbol\":\"$\",\"base_currency_symbol_position\":\"left\",\"base_currency_text\":\"USD\",\"base_currency_text_position\":\"right\",\"base_currency_rate\":\"1.00\",\"hero_section_title\":\"Our Platform, Your Success\",\"hero_section_text\":\"Minimize the time, it takes to initiate a relationship between you and the customer.\",\"hero_section_button_text\":\"Explore Plans\",\"hero_section_button_url\":\"http:\\/\\/example.com\\/\",\"hero_section_video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=6KJqEPVfoDs\",\"hero_img\":\"60f55aec0aba4.png\",\"timezone\":\"America\\/Maceio\",\"contact_addresses\":\"House - 44, Road - 03, Sector - 11, Uttara, Dhaka\\r\\nDhanmondi, Dhaka\\r\\nMohammadpur, Dhaka\",\"contact_numbers\":\"237237237,72372332\",\"contact_mails\":\"contact@gmail.com,support@gmail.com,query@gmail.com\",\"is_whatsapp\":1,\"whatsapp_number\":null,\"whatsapp_header_title\":null,\"whatsapp_popup_message\":null,\"whatsapp_popup\":1}', 15, 65, '2021-07-27', '2030-08-20', '2021-07-27 03:57:21', '2021-07-27 03:57:21'),
(123, 19, 'USD', '$', 'Mollie Payment', '6b56b8de', 1, 0, 0, NULL, '{\"resource\":\"payment\",\"id\":\"tr_yg6n3DJ6J4\",\"mode\":\"test\",\"amount\":{\"value\":\"19.00\",\"currency\":\"USD\"},\"settlementAmount\":{\"value\":\"15.60\",\"currency\":\"EUR\"},\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"USD\"},\"amountRemaining\":{\"value\":\"19.00\",\"currency\":\"USD\"},\"amountChargedBack\":null,\"description\":\"You are purchasing a membership\",\"method\":\"creditcard\",\"status\":\"paid\",\"createdAt\":\"2021-07-27T13:52:30+00:00\",\"paidAt\":\"2021-07-27T13:52:37+00:00\",\"canceledAt\":null,\"expiresAt\":null,\"failedAt\":null,\"dueDate\":null,\"billingEmail\":null,\"profileId\":\"pfl_wWVQgHa2jS\",\"sequenceType\":\"oneoff\",\"redirectUrl\":\"http:\\/\\/localhost\\/sasso\\/membership\\/mollie\\/success\",\"webhookUrl\":null,\"mandateId\":null,\"subscriptionId\":null,\"orderId\":null,\"settlementId\":null,\"locale\":null,\"metadata\":null,\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardAudience\":\"consumer\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"restrictPaymentMethodsToCountry\":null,\"_links\":{\"self\":{\"href\":\"https:\\/\\/api.mollie.com\\/v2\\/payments\\/tr_yg6n3DJ6J4\",\"type\":\"application\\/hal+json\"},\"dashboard\":{\"href\":\"https:\\/\\/www.mollie.com\\/dashboard\\/org_6529881\\/payments\\/tr_yg6n3DJ6J4\",\"type\":\"text\\/html\"},\"changePaymentState\":{\"href\":\"https:\\/\\/www.mollie.com\\/paymentscreen\\/testmode\\/?method=creditcard&token=2.hobabh\",\"type\":\"text\\/html\"},\"documentation\":{\"href\":\"https:\\/\\/docs.mollie.com\\/reference\\/v2\\/payments-api\\/get-payment\",\"type\":\"text\\/html\"}},\"_embedded\":null,\"isCancelable\":null,\"amountCaptured\":null,\"applicationFee\":null,\"authorizedAt\":null,\"expiredAt\":null,\"customerId\":null,\"countryCode\":\"BD\"}', '{\"id\":147,\"language_id\":176,\"cookie_alert_status\":1,\"cookie_alert_text\":\"Your experience on this site will be improved by allowing cookies.\",\"cookie_alert_button_text\":\"Allow Cookies\",\"to_mail\":\"pratik.anwar@gmail.com\",\"default_language_direction\":\"ltr\",\"from_mail\":\"pratik.anwar@gmail.com\",\"from_name\":\"Superv\",\"is_smtp\":1,\"smtp_host\":\"smtp.gmail.com\",\"smtp_port\":\"587\",\"encryption\":\"TLS\",\"smtp_username\":\"geniustest11@gmail.com\",\"smtp_password\":\"xwgatpmwcvjiomzp\",\"base_currency_symbol\":\"$\",\"base_currency_symbol_position\":\"left\",\"base_currency_text\":\"USD\",\"base_currency_text_position\":\"right\",\"base_currency_rate\":\"1.00\",\"hero_section_title\":\"Our Platform, Your Success\",\"hero_section_text\":\"Minimize the time, it takes to initiate a relationship between you and the customer.\",\"hero_section_button_text\":\"Explore Plans\",\"hero_section_button_url\":\"http:\\/\\/example.com\\/\",\"hero_section_video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=6KJqEPVfoDs\",\"hero_img\":\"60f55aec0aba4.png\",\"timezone\":\"America\\/Maceio\",\"contact_addresses\":\"House - 44, Road - 03, Sector - 11, Uttara, Dhaka\\r\\nDhanmondi, Dhaka\\r\\nMohammadpur, Dhaka\",\"contact_numbers\":\"237237237,72372332\",\"contact_mails\":\"contact@gmail.com,support@gmail.com,query@gmail.com\",\"is_whatsapp\":1,\"whatsapp_number\":null,\"whatsapp_header_title\":null,\"whatsapp_popup_message\":null,\"whatsapp_popup\":1}', 15, 66, '2021-07-27', '2031-08-21', '2021-07-27 04:52:43', '2021-07-27 04:52:43'),
(124, 180, 'USD', '$', 'Paypal', '50e276da', 1, 0, 0, NULL, '{\n    \"id\": \"PAYID-MEABRWY7DN180772W6812434\",\n    \"intent\": \"sale\",\n    \"state\": \"approved\",\n    \"cart\": \"1FD41977125564301\",\n    \"payer\": {\n        \"payment_method\": \"paypal\",\n        \"status\": \"VERIFIED\",\n        \"payer_info\": {\n            \"email\": \"megasoft.envato@gmail.com\",\n            \"first_name\": \"Samiul Alim\",\n            \"last_name\": \"Pratik\",\n            \"payer_id\": \"8C5NYJ7EZ7QSS\",\n            \"shipping_address\": {\n                \"recipient_name\": \"Samiul Alim Pratik\",\n                \"line1\": \"1 Main St\",\n                \"city\": \"San Jose\",\n                \"state\": \"CA\",\n                \"postal_code\": \"95131\",\n                \"country_code\": \"US\"\n            },\n            \"country_code\": \"US\"\n        }\n    },\n    \"transactions\": [\n        {\n            \"amount\": {\n                \"total\": \"180.00\",\n                \"currency\": \"USD\",\n                \"details\": {\n                    \"subtotal\": \"180.00\",\n                    \"shipping\": \"0.00\",\n                    \"insurance\": \"0.00\",\n                    \"handling_fee\": \"0.00\",\n                    \"shipping_discount\": \"0.00\",\n                    \"discount\": \"0.00\"\n                }\n            },\n            \"payee\": {\n                \"merchant_id\": \"BKNWZYE3MAUNU\",\n                \"email\": \"megasoft.envato-facilitator@gmail.com\"\n            },\n            \"description\": \"You are purchasing a membership Via Paypal\",\n            \"item_list\": {\n                \"items\": [\n                    {\n                        \"name\": \"You are purchasing a membership\",\n                        \"price\": \"180.00\",\n                        \"currency\": \"USD\",\n                        \"tax\": \"0.00\",\n                        \"quantity\": 1\n                    }\n                ],\n                \"shipping_address\": {\n                    \"recipient_name\": \"Samiul Alim Pratik\",\n                    \"line1\": \"1 Main St\",\n                    \"city\": \"San Jose\",\n                    \"state\": \"CA\",\n                    \"postal_code\": \"95131\",\n                    \"country_code\": \"US\"\n                }\n            },\n            \"related_resources\": [\n                {\n                    \"sale\": {\n                        \"id\": \"76R5402786680304A\",\n                        \"state\": \"completed\",\n                        \"amount\": {\n                            \"total\": \"180.00\",\n                            \"currency\": \"USD\",\n                            \"details\": {\n                                \"subtotal\": \"180.00\",\n                                \"shipping\": \"0.00\",\n                                \"insurance\": \"0.00\",\n                                \"handling_fee\": \"0.00\",\n                                \"shipping_discount\": \"0.00\",\n                                \"discount\": \"0.00\"\n                            }\n                        },\n                        \"payment_mode\": \"INSTANT_TRANSFER\",\n                        \"protection_eligibility\": \"ELIGIBLE\",\n                        \"protection_eligibility_type\": \"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\n                        \"transaction_fee\": {\n                            \"value\": \"5.52\",\n                            \"currency\": \"USD\"\n                        },\n                        \"parent_payment\": \"PAYID-MEABRWY7DN180772W6812434\",\n                        \"create_time\": \"2021-07-27T14:32:14Z\",\n                        \"update_time\": \"2021-07-27T14:32:14Z\",\n                        \"links\": [\n                            {\n                                \"href\": \"https://api.sandbox.paypal.com/v1/payments/sale/76R5402786680304A\",\n                                \"rel\": \"self\",\n                                \"method\": \"GET\"\n                            },\n                            {\n                                \"href\": \"https://api.sandbox.paypal.com/v1/payments/sale/76R5402786680304A/refund\",\n                                \"rel\": \"refund\",\n                                \"method\": \"POST\"\n                            },\n                            {\n                                \"href\": \"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-MEABRWY7DN180772W6812434\",\n                                \"rel\": \"parent_payment\",\n                                \"method\": \"GET\"\n                            }\n                        ]\n                    }\n                }\n            ]\n        }\n    ],\n    \"redirect_urls\": {\n        \"return_url\": \"http://localhost/sasso/membership/paypal/success?paymentId=PAYID-MEABRWY7DN180772W6812434\",\n        \"cancel_url\": \"http://localhost/sasso/membership/paypal/cancel\"\n    },\n    \"create_time\": \"2021-07-27T14:31:55Z\",\n    \"update_time\": \"2021-07-27T14:32:14Z\",\n    \"links\": [\n        {\n            \"href\": \"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-MEABRWY7DN180772W6812434\",\n            \"rel\": \"self\",\n            \"method\": \"GET\"\n        }\n    ],\n    \"failed_transactions\": []\n}', '{\"id\":147,\"language_id\":176,\"cookie_alert_status\":1,\"cookie_alert_text\":\"Your experience on this site will be improved by allowing cookies.\",\"cookie_alert_button_text\":\"Allow Cookies\",\"to_mail\":\"pratik.anwar@gmail.com\",\"default_language_direction\":\"ltr\",\"from_mail\":\"pratik.anwar@gmail.com\",\"from_name\":\"Superv\",\"is_smtp\":1,\"smtp_host\":\"smtp.gmail.com\",\"smtp_port\":\"587\",\"encryption\":\"TLS\",\"smtp_username\":\"geniustest11@gmail.com\",\"smtp_password\":\"xwgatpmwcvjiomzp\",\"base_currency_symbol\":\"$\",\"base_currency_symbol_position\":\"left\",\"base_currency_text\":\"USD\",\"base_currency_text_position\":\"right\",\"base_currency_rate\":\"1.00\",\"hero_section_title\":\"Our Platform, Your Success\",\"hero_section_text\":\"Minimize the time, it takes to initiate a relationship between you and the customer.\",\"hero_section_button_text\":\"Explore Plans\",\"hero_section_button_url\":\"http:\\/\\/example.com\\/\",\"hero_section_video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=6KJqEPVfoDs\",\"hero_img\":\"60f55aec0aba4.png\",\"timezone\":\"America\\/Maceio\",\"contact_addresses\":\"House - 44, Road - 03, Sector - 11, Uttara, Dhaka\\r\\nDhanmondi, Dhaka\\r\\nMohammadpur, Dhaka\",\"contact_numbers\":\"237237237,72372332\",\"contact_mails\":\"contact@gmail.com,support@gmail.com,query@gmail.com\",\"is_whatsapp\":1,\"whatsapp_number\":null,\"whatsapp_header_title\":null,\"whatsapp_popup_message\":null,\"whatsapp_popup\":1}', 16, 67, '2021-07-27', '2032-07-29', '2021-07-27 05:32:19', '2021-07-27 05:32:19'),
(219, 110, 'USD', '$', 'Stripe', '9f60990b', 1, 0, 0, NULL, '{\"id\":\"ch_3JRs75JlIV5dN9n70exx6xaq\",\"object\":\"charge\",\"amount\":11000,\"amount_captured\":11000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_3JRs75JlIV5dN9n70U6N22G6\",\"billing_details\":{\"address\":{\"city\":null,\"country\":null,\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"email\":null,\"name\":null,\"phone\":null},\"calculated_statement_descriptor\":\"Stripe\",\"captured\":true,\"created\":1629782635,\"currency\":\"usd\",\"customer\":null,\"description\":\"You are extending your membership\",\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"risk_score\":57,\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1JRs74JlIV5dN9n7rO5OCn1A\",\"payment_method_details\":{\"card\":{\"brand\":\"visa\",\"checks\":{\"address_line1_check\":null,\"address_postal_code_check\":null,\"cvc_check\":\"pass\"},\"country\":\"US\",\"exp_month\":12,\"exp_year\":2024,\"fingerprint\":\"WXDgVUSzrY61Nnm6\",\"funding\":\"credit\",\"installments\":null,\"last4\":\"4242\",\"network\":\"visa\",\"three_d_secure\":null,\"wallet\":null},\"type\":\"card\"},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_1Azeo3JlIV5dN9n7\\/ch_3JRs75JlIV5dN9n70exx6xaq\\/rcpt_K64FFoolN4CvbdpepP4Ro7WUnebRr5E\",\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_3JRs75JlIV5dN9n70exx6xaq\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1JRs74JlIV5dN9n7rO5OCn1A\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":null,\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":12,\"exp_year\":2024,\"fingerprint\":\"WXDgVUSzrY61Nnm6\",\"funding\":\"credit\",\"last4\":\"4242\",\"metadata\":[],\"name\":null,\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null}', '{\"id\":147,\"language_id\":176,\"cookie_alert_status\":1,\"cookie_alert_text\":\"Your experience on this site will be improved by allowing cookies.\",\"cookie_alert_button_text\":\"Allow Cookies\",\"to_mail\":\"pratik.anwar@gmail.com\",\"default_language_direction\":\"ltr\",\"from_mail\":\"admin@kreativdev.com\",\"from_name\":\"Profilex\",\"is_smtp\":1,\"smtp_host\":\"mail.kreativdev.com\",\"smtp_port\":\"2525\",\"encryption\":\"TLS\",\"smtp_username\":\"admin@kreativdev.com\",\"smtp_password\":\"ZAOP!~rSk~gb\",\"base_currency_symbol\":\"$\",\"base_currency_symbol_position\":\"left\",\"base_currency_text\":\"USD\",\"base_currency_text_position\":\"right\",\"base_currency_rate\":\"1.00\",\"hero_section_title\":\"Our Platform, Your Success\",\"hero_section_text\":\"Minimize the time, it takes to initiate a relationship between you and the customer.\",\"hero_section_button_text\":\"Explore Plans\",\"hero_section_button_url\":\"http:\\/\\/example.com\\/\",\"hero_section_video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=6KJqEPVfoDs\",\"hero_img\":\"60f55aec0aba4.png\",\"timezone\":\"America\\/Maceio\",\"contact_addresses\":\"House - 44, Road - 03, Sector - 11, Uttara, Dhaka\\r\\nDhanmondi, Dhaka\\r\\nMohammadpur, Dhaka\",\"contact_numbers\":\"237237237,72372332\",\"contact_mails\":\"contact@gmail.com,support@gmail.com,query@gmail.com\",\"expiration_reminder\":3,\"domain_request_success_message\":\"We have received your custom domain request. Please allow us 2 business days to connect the domain with our server.\",\"cname_record_section_title\":\"Read Before Sending Custom Domain Request\",\"cname_record_section_text\":\"<ul><li><font color=\\\"#575962\\\"><b>\\u00a0Before sending request for your custom domain, You need to add 2 CNAME records (given in below table) in your custom domain from your domain registrar account (like - namecheap, godaddy etc...).<\\/b><\\/font><\\/li><li><font color=\\\"#575962\\\"><b>\\u00a0CNAME records are needed to point your custom domain to our domain ( profilex.local.com ), so that our website can show your portfolio on your domain<\\/b><\\/font><\\/li><li><font color=\\\"#575962\\\"><b>\\u00a0A Domain\'s CNAME record adding option is available in different place depending on different domain registrar (like - godaddy, namecheap etc...). If you cannot find the place to add CNAME record in your domain registrar account, then please contact your domain registrar support, they will show you the place to add CNAME record for your custom domain<\\/b><\\/font><\\/li><\\/ul>\",\"subdomain_request_success_message\":\"We have received your subdomain request\\r\\nPlease allow us 2 business days to connect your subdomain with our server\\r\\nAfter connecting subdomain, it will take upto 72 hours (usually, takes few hours) for DNS propagation which is not in our control\"}', 14, 67, '2032-07-30', '2033-07-29', '2021-08-23 20:23:55', '2021-08-23 20:23:55');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `menus` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `language_id`, `menus`, `created_at`, `updated_at`) VALUES
(120, 176, '[{\"text\":\"Home\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"home\"},{\"text\":\"Profiles\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"profiles\"},{\"text\":\"Pricing\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"pricing\"},{\"type\":\"custom\",\"text\":\"Pages\",\"href\":\"\",\"target\":\"_self\",\"children\":[{\"type\":\"10\",\"text\":\"About Us\",\"href\":\"\",\"target\":\"_self\"},{\"type\":\"11\",\"text\":\"Terms & Conditions\",\"href\":\"\",\"target\":\"_self\"}]},{\"text\":\"Blogs\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"blogs\"},{\"text\":\"FAQs\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"faq\"},{\"text\":\"Contact\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"contact\"}]', '2021-07-25 01:31:54', '2021-07-25 01:31:54'),
(122, 177, '[{\"text\":\"منزل\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"home\"},{\"text\":\"مظهر\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"profiles\"},{\"text\":\"التسعير\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"pricing\"},{\"type\":\"custom\",\"text\":\"الصفحات\",\"href\":\"\",\"target\":\"_self\",\"children\":[{\"type\":\"12\",\"text\":\"معلومات عنا\",\"href\":\"\",\"target\":\"_self\"},{\"type\":\"13\",\"text\":\"البنود و الظروف\",\"href\":\"\",\"target\":\"_self\"}]},{\"text\":\"المدونات\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"blogs\"},{\"type\":\"faq\",\"text\":\"أسئلة وأجوبة\",\"href\":\"\",\"target\":\"_self\"},{\"text\":\"اتصال\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"contact\"}]', '2021-07-25 21:18:23', '2021-07-25 21:18:23');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_08_06_003612_create_payments_table', 1),
(3, '2021_08_14_014209_add_custom_domain_cols_in_users', 2),
(6, '2021_08_16_112018_user_custom_domains_table', 3),
(7, '2021_08_19_005842_drop_custom_domain_cols_from_users', 4),
(8, '2021_08_19_105429_add_domain_request_success_message_col_to_basic_extendeds', 5),
(9, '2021_08_19_121741_add_cname_record_info_cols_to_basic_extendeds', 6),
(13, '2021_08_20_033744_add_subdomain_status_in_users_table', 7),
(14, '2021_08_20_041628_drop_column_status_from_user_custom_domains', 8),
(16, '2021_08_20_041734_add_status_col_to_user_custom_domains', 9),
(17, '2021_08_20_050934_drop_subdomain_status_from_users', 10),
(18, '2021_08_20_051057_add_subdomain_status_to_users', 11),
(19, '2021_08_20_053401_add_subdomain_request_success_message', 12),
(20, '2021_08_20_054829_add_subdomain_request_time_to_users', 13),
(21, '2021_08_24_025452_add_feature_time', 14),
(23, '2021_08_24_111315_create_user_vcards_table', 15),
(24, '2021_08_25_113215_add_template_type_to_user_vcards', 16),
(25, '2021_08_25_120333_drop_slug_id_from_user_vcards', 17),
(26, '2021_08_25_121034_add_vcard_name_in_user_vcards', 17),
(27, '2021_08_30_051129_drop_status_from_user_custom_domains', 18),
(28, '2021_08_30_051213_add_status_to_user_custom_domains', 19),
(29, '2021_08_30_124754_drop_subdomain_request_success_message', 20),
(30, '2021_08_30_125850_drop_subdomain_cols_from_users', 21),
(33, '2021_08_31_012259_create_user_cvs_table', 22),
(36, '2021_08_31_034154_add_cv_information_in_user_cvs', 23),
(37, '2021_08_31_043106_add_contact_info_title', 24),
(39, '2021_08_31_072155_create_user_cv_sections_table', 25),
(40, '2021_09_01_021542_add_default_value_to_contact_title', 26),
(41, '2021_09_01_131514_add_template_in_user_cvs', 27),
(42, '2021_09_03_120151_add_qr_url_to_user_basic_settings', 28),
(43, '2021_09_03_130558_create_user_qr_codes_table', 29),
(44, '2021_09_04_121841_drop_portfolios_table', 30),
(45, '2021_09_09_071826_add_subdomain_status_in_users', 31);

-- --------------------------------------------------------

--
-- Table structure for table `offline_gateways`
--

CREATE TABLE `offline_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instructions` blob DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `is_receipt` tinyint(4) NOT NULL DEFAULT 1,
  `receipt` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offline_gateways`
--

INSERT INTO `offline_gateways` (`id`, `name`, `short_description`, `instructions`, `status`, `serial_number`, `is_receipt`, `receipt`, `created_at`, `updated_at`) VALUES
(1, 'JPMorgan Chase & Co.', 'Please send your payment to the following account.\r\nBank Name: Lorem Ipsum.\r\nBeneficiary Name: John Doe.\r\nAccount Number/IBAN: 12345678', 0x3c70207374796c653d226c696e652d6865696768743a20312e383b223e3c666f6e7420666163653d2243697263756c61725374642d426f6f6b2c20417269616c2c2073616e732d7365726966223e43686173652042616e6b2069732074686520636f6e73756d65722062616e6b696e67206469766973696f6e206f66204a504d6f7267616e2043686173652e20556e6c696b652069747320636f6d70657469746f72732c2043686173652069732074616b696e6720737465707320746f20657870616e6420697473206272616e6368206e6574776f726b20696e206b6579206d61726b6574732e205468652062616e6b2063757272656e746c7920686173206e6561726c7920352c303030206272616e6368657320616e642031362c3030302041544d732e204163636f7264696e6720746f207468652062616e6b2c206e6561726c792068616c66206f662074686520636f756e747279e280997320686f757365686f6c64732061726520436861736520637573746f6d6572732e3c2f666f6e743e3c62723e3c2f703e, 1, 1, 1, NULL, '2020-09-17 01:06:39', '2020-09-17 01:22:50'),
(2, 'Bank of America Corp.', 'Please send your payment to the following account.\r\nBank Name: Lorem Ipsum.\r\nBeneficiary Name: John Doe.\r\nAccount Number/IBAN: 12345678', 0x3c70207374796c653d226c696e652d6865696768743a20312e383b223e3c7370616e207374796c653d22666f6e742d66616d696c793a2043697263756c61725374642d426f6f6b2c20417269616c2c2073616e732d73657269663b20666f6e742d73697a653a20313470783b223e42616e6b206f6620416d6572696361207365727665732061626f7574203636206d696c6c696f6e20636f6e73756d65727320616e6420736d616c6c20627573696e65737320636c69656e747320776f726c64776964652e204c696b65206d616e79206f662074686520626967676573742062616e6b732c2042616e6b206f6620416d6572696361206973206b6e6f776e20666f7220697473206469676974616c20696e6e6f766174696f6e2e20497420686173206d6f7265207468616e203337206d696c6c696f6e206469676974616c20636c69656e747320616e6420697320657870657269656e63696e67207375636365737320616674657220696e74726f647563696e6720697473207669727475616c20617373697374616e742c2045726963612c20746861742061737369737473206163636f756e7420686f6c64657273207769746820766172696f7573207461736b733c2f7370616e3e3c62723e3c2f703e, 1, 2, 0, NULL, '2020-09-17 01:07:37', '2020-09-17 01:15:31');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_trial` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `trial_days` int(11) DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `features` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `title`, `slug`, `price`, `term`, `featured`, `is_trial`, `trial_days`, `status`, `features`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(10, 'Begninner', 'begninner', 6, 'monthly', '1', '1', 14, '1', '[\"Follow\\/Unfollow\",\"Portfolio\",\"Skill\",\"Service\"]', NULL, NULL, '2021-07-24 23:27:38', '2021-07-24 23:31:05'),
(11, 'Begninner', 'begninner', 40, 'yearly', '1', '1', 14, '1', '[\"Follow\\/Unfollow\",\"Portfolio\",\"Skill\",\"Service\"]', NULL, NULL, '2021-07-24 23:27:38', '2021-08-04 19:28:15'),
(13, 'Freelancer', 'freelancer', 11, 'monthly', '1', '1', 21, '1', '[\"Subdomain\",\"Follow\\/Unfollow\",\"Blog\",\"Portfolio\",\"Skill\",\"Service\",\"Experience\"]', NULL, NULL, '2021-07-25 01:14:40', '2021-08-21 20:33:25'),
(14, 'Freelancer', 'freelancer', 110, 'yearly', '1', '1', 21, '1', '[\"Subdomain\",\"Follow\\/Unfollow\",\"Blog\",\"Portfolio\",\"Skill\",\"Service\",\"Experience\"]', NULL, NULL, '2021-07-25 01:14:40', '2021-08-21 20:33:18'),
(15, 'Entrepreneur', 'entrepreneur', 19, 'monthly', '1', '1', 21, '1', '[\"Custom Domain\",\"Subdomain\",\"QR Builder\",\"vCard\",\"Online CV & Export\",\"Follow\\/Unfollow\",\"Blog\",\"Portfolio\",\"Achievements\",\"Skill\",\"Service\",\"Experience\",\"Testimonial\"]', NULL, NULL, '2021-07-25 01:17:33', '2021-09-05 04:03:08'),
(16, 'Entrepreneur', 'entrepreneur', 180, 'yearly', '1', '1', 21, '1', '[\"Custom Domain\",\"Subdomain\",\"QR Builder\",\"vCard\",\"Online CV & Export\",\"Follow\\/Unfollow\",\"Blog\",\"Portfolio\",\"Achievements\",\"Skill\",\"Service\",\"Experience\",\"Testimonial\"]', NULL, NULL, '2021-07-25 01:17:33', '2021-09-05 04:03:02');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` blob DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `language_id`, `name`, `title`, `slug`, `body`, `status`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(10, 176, 'About Us', 'About Us', 'about-us', 0x3c70207374796c653d22746578742d616c69676e3a63656e7465723b223e3c696d67207372633d22687474703a2f2f6c6f63616c686f73742f736173736f2f6173736574732f66726f6e742f696d672f73756d6d65726e6f74652f363066653439363063393834392e6a706722207374796c653d2277696474683a313030253b2220616c743d22363066653439363063393834392e6a706722202f3e3c6272202f3e3c2f703e3c70207374796c653d226c696e652d6865696768743a323b223e3c7370616e207374796c653d22666f6e742d66616d696c793a274f70656e2053616e73272c20417269616c2c2073616e732d73657269663b746578742d616c69676e3a6a7573746966793b666f6e742d73697a653a313870783b223e4275742049206d757374206578706c61696e20746f20796f7520686f7720616c6c2074686973206d697374616b656e2069646561206f662064656e6f756e63696e6720706c65617375726520616e64207072616973696e67207061696e2077617320626f726e20616e6420492077696c6c206769766520796f75206120636f6d706c657465206163636f756e74206f66207468652073797374656d2c20616e64206578706f756e64207468652061637475616c207465616368696e6773206f6620746865206772656174206578706c6f726572206f66207468652074727574682c20746865206d61737465722d6275696c646572206f662068756d616e2068617070696e6573732e204e6f206f6e652072656a656374732c206469736c696b65732c206f722061766f69647320706c65617375726520697473656c662c206265636175736520697420697320706c6561737572652c2062757420626563617573652074686f73652077686f20646f206e6f74206b6e6f7720686f7720746f2070757273756520706c65617375726520726174696f6e616c6c7920656e636f756e74657220636f6e73657175656e6365732074686174206172652065787472656d656c79207061696e66756c2e204e6f7220616761696e20697320746865726520616e796f6e652077686f206c6f766573206f722070757273756573206f72206465736972657320746f206f627461696e207061696e206f6620697473656c662c2062656361757365206974206973207061696e2c206275742062656361757365206f63636173696f6e616c6c792063697263756d7374616e636573206f6363757220696e20776869636820746f696c20616e64207061696e2063616e2070726f637572652068696d20736f6d6520677265617420706c6561737572652e20546f2074616b652061207472697669616c206578616d706c652c207768696368206f66207573206576657220756e64657274616b6573206c61626f72696f757320706879736963616c2065786572636973652c2065786365707420746f206f627461696e20736f6d6520616476616e746167652066726f6d2069743f204275742077686f2068617320616e7920726967687420746f2066696e64206661756c7420776974682061206d616e2077686f2063686f6f73657320746f20656e6a6f79206120706c656173757265207468617420686173206e6f20616e6e6f79696e6720636f6e73657175656e6365732c206f72206f6e652077686f2061766f6964732061207061696e20746861742070726f6475636573206e6f20726573756c74616e7420706c6561737572653c2f7370616e3e3c2f703e3c703e3c6272202f3e3c2f703e3c703e3c7370616e207374796c653d22666f6e742d66616d696c793a274f70656e2053616e73272c20417269616c2c2073616e732d73657269663b746578742d616c69676e3a6a7573746966793b666f6e742d73697a653a313870783b223e4275742049206d757374206578706c61696e20746f20796f7520686f7720616c6c2074686973206d697374616b656e2069646561206f662064656e6f756e63696e6720706c65617375726520616e64207072616973696e67207061696e2077617320626f726e20616e6420492077696c6c206769766520796f75206120636f6d706c657465206163636f756e74206f66207468652073797374656d2c20616e64206578706f756e64207468652061637475616c207465616368696e6773206f6620746865206772656174206578706c6f726572206f66207468652074727574682c20746865206d61737465722d6275696c646572206f662068756d616e2068617070696e6573732e204e6f206f6e652072656a656374732c206469736c696b65732c206f722061766f69647320706c65617375726520697473656c662c206265636175736520697420697320706c6561737572652c2062757420626563617573652074686f73652077686f20646f206e6f74206b6e6f7720686f7720746f2070757273756520706c65617375726520726174696f6e616c6c7920656e636f756e74657220636f6e73657175656e6365732074686174206172652065787472656d656c79207061696e66756c2e204e6f7220616761696e20697320746865726520616e796f6e652077686f206c6f766573206f722070757273756573206f72206465736972657320746f206f627461696e207061696e206f6620697473656c662c2062656361757365206974206973207061696e2c206275742062656361757365206f63636173696f6e616c6c792063697263756d7374616e636573206f6363757220696e20776869636820746f696c20616e64207061696e2063616e2070726f637572652068696d20736f6d6520677265617420706c6561737572652e20546f2074616b652061207472697669616c206578616d706c652c207768696368206f66207573206576657220756e64657274616b6573206c61626f72696f757320706879736963616c2065786572636973652c2065786365707420746f206f627461696e20736f6d6520616476616e746167652066726f6d2069743f204275742077686f2068617320616e7920726967687420746f2066696e64206661756c7420776974682061206d616e2077686f2063686f6f73657320746f20656e6a6f79206120706c656173757265207468617420686173206e6f20616e6e6f79696e6720636f6e73657175656e6365732c206f72206f6e652077686f2061766f6964732061207061696e20746861742070726f6475636573206e6f20726573756c74616e7420706c6561737572653c2f7370616e3e3c7370616e207374796c653d22666f6e742d66616d696c793a274f70656e2053616e73272c20417269616c2c2073616e732d73657269663b746578742d616c69676e3a6a7573746966793b223e3c6272202f3e3c2f7370616e3e3c6272202f3e3c2f703e, 1, NULL, NULL, '2021-07-25 01:22:57', '2021-07-25 20:34:29'),
(11, 176, 'Terms & Conditions', 'Terms & Conditions', 'terms-&-conditions', 0x3c68323e5465726d732026616d703b20436f6e646974696f6e733a3c2f68323e3c756c3e3c6c69207374796c653d226c696e652d6865696768743a333b223e3c7370616e207374796c653d22666f6e742d73697a653a313870783b223e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742e3c2f7370616e3e3c2f6c693e3c6c69207374796c653d226c696e652d6865696768743a333b223e3c7370616e207374796c653d22666f6e742d73697a653a313870783b223e416c697175616d2074696e636964756e74206d61757269732065752072697375732e3c2f7370616e3e3c2f6c693e3c6c69207374796c653d226c696e652d6865696768743a333b223e3c7370616e207374796c653d22666f6e742d73697a653a313870783b223e566573746962756c756d20617563746f722064617069627573206e657175652e3c2f7370616e3e3c2f6c693e3c6c69207374796c653d226c696e652d6865696768743a333b223e3c7370616e207374796c653d22666f6e742d73697a653a313870783b223e4e756e63206469676e697373696d207269737573206964206d657475732e3c2f7370616e3e3c2f6c693e3c6c69207374796c653d226c696e652d6865696768743a333b223e3c7370616e207374796c653d22666f6e742d73697a653a313870783b223e43726173206f726e6172652074726973746971756520656c69742e3c2f7370616e3e3c2f6c693e3c6c69207374796c653d226c696e652d6865696768743a333b223e3c7370616e207374796c653d22666f6e742d73697a653a313870783b223e566976616d757320766573746962756c756d206e74756c6c61206e656320616e74652e3c2f7370616e3e3c2f6c693e3c6c69207374796c653d226c696e652d6865696768743a333b223e3c7370616e207374796c653d22666f6e742d73697a653a313870783b223e5072616573656e7420706c61636572617420726973757320717569732065726f732e3c2f7370616e3e3c2f6c693e3c6c69207374796c653d226c696e652d6865696768743a333b223e3c7370616e207374796c653d22666f6e742d73697a653a313870783b223e46757363652070656c6c656e746573717565207375736369706974206e6962682e3c2f7370616e3e3c2f6c693e3c6c69207374796c653d226c696e652d6865696768743a333b223e3c7370616e207374796c653d22666f6e742d73697a653a313870783b223e496e7465676572207669746165206c696265726f206163207269737573206567657374617320706c6163657261742e3c2f7370616e3e3c2f6c693e3c6c69207374796c653d226c696e652d6865696768743a333b223e3c7370616e207374796c653d22666f6e742d73697a653a313870783b223e566573746962756c756d20636f6d6d6f646f2066656c6973207175697320746f72746f722e3c2f7370616e3e3c2f6c693e3c6c69207374796c653d226c696e652d6865696768743a333b223e3c7370616e207374796c653d22666f6e742d73697a653a313870783b223e557420616c697175616d20736f6c6c696369747564696e206c656f2e3c2f7370616e3e3c2f6c693e3c6c69207374796c653d226c696e652d6865696768743a333b223e3c7370616e207374796c653d22666f6e742d73697a653a313870783b223e4372617320696163756c697320756c74726963696573206e756c6c612e3c2f7370616e3e3c2f6c693e3c6c69207374796c653d226c696e652d6865696768743a333b223e3c7370616e207374796c653d22666f6e742d73697a653a313870783b223e446f6e656320717569732064756920617420646f6c6f722074656d706f7220696e74657264756d3c2f7370616e3e3c2f6c693e3c2f756c3e, 1, NULL, NULL, '2021-07-25 01:25:50', '2021-07-25 20:35:45'),
(12, 177, 'معلومات عنا', 'معلومات عنا', 'معلومات-عنا', 0x3c703e3c696d67207372633d22687474703a2f2f6c6f63616c686f73742f736173736f2f6173736574732f66726f6e742f696d672f73756d6d65726e6f74652f363066653533646438363934312e6a706722207374796c653d2277696474683a313030253b2220616c743d22363066653533646438363934312e6a706722202f3e3c7370616e3e3c6272202f3e3c2f7370616e3e3c2f703e3c703e3c7370616e3ed988d984d983d98620d98ad8acd8a820d8a3d98620d8a3d8b4d8b1d8ad20d984d98320d983d98ad98120d983d98420d987d8b0d98720d8a7d984d981d983d8b1d8a920d8a7d984d8aed8a7d8b7d8a6d8a920d984d984d8aad986d8afd98ad8af20d984d982d8af20d988d984d8afd8aa20d8a7d984d984d8b0d8a920d988d8a7d984d8abd986d8a7d8a120d88c20d988d8b3d8a3d982d8afd98520d984d98320d988d8b5d981d98bd8a720d983d8a7d985d984d8a7d98b20d984d984d986d8b8d8a7d98520d88c20d988d8a3d8b4d8b1d8ad20d8a7d984d8aad8b9d8a7d984d98ad98520d8a7d984d981d8b9d984d98ad8a920d984d984d985d8b3d8aad983d8b4d98120d8a7d984d8b9d8b8d98ad98520d984d984d8add982d98ad982d8a920d88c20d8a7d984d8a8d8a7d986d98a20d8a7d984d8b1d8a6d98ad8b3d98a20d984d984d8b3d8b9d8a7d8afd8a920d8a7d984d8a8d8b4d8b1d98ad8a92e20d984d8a720d8a3d8add8af20d98ad8b1d981d8b620d8a3d98820d98ad983d8b1d98720d8a3d98820d98ad8aad8acd986d8a820d8a7d984d985d8aad8b9d8a920d986d981d8b3d987d8a720d88c20d984d8a3d986d987d8a720d985d8aad8b9d8a920d88c20d988d984d983d98620d984d8a3d98620d8a3d988d984d8a6d98320d8a7d984d8b0d98ad98620d984d8a720d98ad8b9d8b1d981d988d98620d983d98ad981d98ad8a920d8a7d984d8b3d8b9d98a20d988d8b1d8a7d8a120d8a7d984d985d8aad8b9d8a920d98ad988d8a7d8acd987d988d98620d8b9d988d8a7d982d8a820d985d8a4d984d985d8a920d984d984d8bad8a7d98ad8a92e20d988d984d8a720d98ad988d8acd8af20d8a3d98ad8b6d98bd8a720d8a3d98a20d8b4d8aed8b520d98ad8add8a820d8a3d98820d98ad8b3d8b9d98920d8a3d98820d98ad8b1d8bad8a820d981d98a20d8a7d984d8add8b5d988d98420d8b9d984d98920d8a7d984d8a3d984d98520d985d98620d986d981d8b3d98720d88c20d984d8a3d986d98720d8a3d984d98520d88c20d988d984d983d98620d984d8a3d986d98720d98ad8add8afd8ab20d8a3d8add98ad8a7d986d98bd8a720d8b8d8b1d988d98120d98ad985d983d98620d8a3d98620d98ad985d986d8add98720d981d98ad987d8a720d8a7d984d983d8afd8ad20d988d8a7d984d8a3d984d98520d8a8d8b9d8b620d8a7d984d985d8aad8b9d8a920d8a7d984d8b9d8b8d98ad985d8a92e20d984d986d8a3d8aed8b020d985d8abd8a7d984d8a720d8aad8a7d981d987d8a720d88c20d8a3d98a20d985d986d8a720d98ad982d988d98520d8a8d8aad985d8a7d8b1d98ad98620d8a8d8afd986d98ad8a920d8b4d8a7d982d8a920d88c20d8a5d984d8a720d984d984d8add8b5d988d98420d8b9d984d98920d8a8d8b9d8b620d8a7d984d985d8b2d8a7d98ad8a720d985d986d987d8a7d89f20d984d983d98620d985d98620d984d98720d8a7d984d8add98220d981d98a20d8a7d984d8b9d8abd988d8b120d8b9d984d98920d8aed8b7d8a320d985d8b920d8b1d8acd98420d98ad8aed8aad8a7d8b120d8a7d984d8a7d8b3d8aad985d8aad8a7d8b920d8a8d8b3d8b1d988d8b120d984d98ad8b320d984d98720d8b9d988d8a7d982d8a820d985d8b2d8b9d8acd8a920d88c20d8a3d98820d985d98620d98ad8aad8acd986d8a820d8a7d984d8a3d984d98520d8a7d984d8b0d98a20d984d8a720d98ad986d8aad8ac20d8b9d986d98720d985d8aad8b9d8a920203c2f7370616e3e3c2f703e203c703e203c6272202f3e20203c2f703e3c703e203c7370616e3e20d988d984d983d98620d98ad8acd8a820d8a3d98620d8a3d8b4d8b1d8ad20d984d98320d983d98ad98120d983d98420d987d8b0d98720d8a7d984d981d983d8b1d8a920d8a7d984d8aed8a7d8b7d8a6d8a920d985d98620d8a5d8afd8a7d986d8a920d8a7d984d984d8b0d8a920d988d8aad985d8acd98ad8af20d8a7d984d8a3d984d98520d988d984d8afd8aa20d988d8b3d8a3d982d8afd98520d984d98320d988d8b5d981d98bd8a720d983d8a7d985d984d8a7d98b20d984d984d986d8b8d8a7d98520d88c20d988d8a3d8b4d8b1d8ad20d8a7d984d8aad8b9d8a7d984d98ad98520d8a7d984d981d8b9d984d98ad8a920d984d984d985d8b3d8aad983d8b4d98120d8a7d984d8b9d8b8d98ad98520d984d984d8add982d98ad982d8a920d88c20d8a7d984d8a8d8a7d986d98a20d8a7d984d8a8d8a7d8b1d8b920d984d984d8b3d8b9d8a7d8afd8a920d8a7d984d8a8d8b4d8b1d98ad8a92e20d984d8a720d8a3d8add8af20d98ad8b1d981d8b620d8a3d98820d98ad983d8b1d98720d8a3d98820d98ad8aad8acd986d8a820d8a7d984d985d8aad8b9d8a920d986d981d8b3d987d8a720d88c20d984d8a3d986d987d8a720d985d8aad8b9d8a920d88c20d988d984d983d98620d984d8a3d98620d8a3d988d984d8a6d98320d8a7d984d8b0d98ad98620d984d8a720d98ad8b9d8b1d981d988d98620d983d98ad981d98ad8a920d8a7d984d8b3d8b9d98a20d988d8b1d8a7d8a120d8a7d984d985d8aad8b9d8a920d98ad988d8a7d8acd987d988d98620d8b9d988d8a7d982d8a820d985d8a4d984d985d8a920d984d984d8bad8a7d98ad8a92e20d988d984d8a720d98ad988d8acd8af20d8a3d98ad8b6d98bd8a720d8a3d98a20d8b4d8aed8b520d98ad8add8a820d8a3d98820d98ad8b3d8b9d98920d8a3d98820d98ad8b1d8bad8a820d981d98a20d8a7d984d8add8b5d988d98420d8b9d984d98920d8a7d984d8a3d984d98520d985d98620d986d981d8b3d98720d88c20d984d8a3d986d98720d8a3d984d98520d88c20d988d984d983d98620d984d8a3d986d98720d98ad8add8afd8ab20d8a3d8add98ad8a7d986d98bd8a720d8b8d8b1d988d98120d98ad985d983d98620d8a3d98620d98ad985d986d8add98720d981d98ad987d8a720d8a7d984d983d8afd8ad20d988d8a7d984d8a3d984d98520d8a8d8b9d8b620d8a7d984d985d8aad8b9d8a920d8a7d984d8b9d8b8d98ad985d8a92e20d984d986d8a3d8aed8b020d985d8abd8a7d984d8a720d8aad8a7d981d987d8a720d88c20d8a3d98a20d985d986d8a720d98ad982d988d98520d8a8d8aad985d8a7d8b1d98ad98620d8a8d8afd986d98ad8a920d8b4d8a7d982d8a920d88c20d8a5d984d8a720d984d984d8add8b5d988d98420d8b9d984d98920d8a8d8b9d8b620d8a7d984d985d8b2d8a7d98ad8a720d985d986d987d8a7d89f20d988d984d983d98620d985d98620d984d98720d8a7d984d8add98220d981d98a20d8a7d984d8b9d8abd988d8b120d8b9d984d98920d8aed8b7d8a320d985d8b920d8b1d8acd98420d98ad8aed8aad8a7d8b120d8a7d984d8a7d8b3d8aad985d8aad8a7d8b920d8a8d8b3d8b1d988d8b120d984d98ad8b320d984d98720d8b9d988d8a7d982d8a820d985d8b2d8b9d8acd8a920d88c20d8a3d98820d985d98620d98ad8aad8acd986d8a820d8a7d984d8a3d984d98520d8a7d984d8b0d98a20d984d8a720d98ad986d8aad8ac20d8b9d986d98720d985d8aad8b9d8a920203c7370616e3e203c6272202f3e203c2f7370616e3e203c6272202f3e203c2f7370616e3e3c2f703e, 1, NULL, NULL, '2021-07-25 01:22:57', '2021-07-25 21:19:15'),
(13, 177, 'البنود و الظروف', 'البنود و الظروف', 'البنود-و-الظروف', 0x3c68323ed8b4d8b1d988d8b720d988d8a3d985d8a8d98ad8b12e20d8a7d984d8b4d8b1d988d8b7203c2f68323e3c756c3e203c6c69207374796c653d226c696e652d6865696768743a333b223e203c7370616e3e206c6f72656d20697073756d20636172726f747320d88c20d8aad8add8b3d98ad98620d8a7d984d8a8d98ad8a6d8a920d8a7d984d8a8d98ad8a6d98ad8a92e2020203c2f7370616e3e3c2f6c693e3c6c693e203c7370616e3e20d8a3d8add8afd8ab20d985d8b7d988d991d8b1d98a20d8a7d984d8a8d8b1d8a7d985d8ac20d985d988d8b1d98ad8b320d98ad8b6d8add983d988d9862e2020203c2f7370616e3e3c2f6c693e3c6c693e203c7370616e3e2066656c69732070726f7465696e206f722e2020203c2f7370616e3e3c2f6c693e3c6c693e203c7370616e3e20d8a7d984d8a2d98620d8b6d8add98320d983d8b1d8a920d8a7d984d982d8afd98520d984d984d8aed988d9812e2020203c2f7370616e3e3c2f6c693e3c6c693e203c7370616e3e20d985d8b7d988d8b120d983d8b1d8a920d8a7d984d982d8afd98520d8a7d984d8add8b2d98ad98620d8bad8afd98bd8a72e2020266c743b202f206c692667743b203c2f7370616e3e3c2f6c693e3c6c693e203c7370616e3e20d8a7d984d8b1d987d8a7d98620d8a7d984d985d8a8d8a7d8b4d8b1206e74756c6c6120d984d98ad8b320d982d8a8d98420d8b0d984d9832e2020203c2f7370616e3e3c2f6c693e3c6c693e203c7370616e3e20d985d988d8acd988d8af20d8a5d98ad8b1d988d8b320d8a7d984d8b9d982d8a7d8b1d98ad8a920d8a7d984d8b6d8add9832e2020203c2f7370616e3e3c2f6c693e3c6c693e203c7370616e3e20436c696e6963616c2070726f6d6f206e6962682e2020203c2f7370616e3e3c2f6c693e3c6c693e203c7370616e3e20d8b9d8afd8af20d8b5d8add98ad8ad20d8bad98ad8b120d985d8b9d988d98220d988d8a7d8b3d8aad8abd985d8a7d8b120d8a7d984d8b6d8add9832e2020203c2f7370616e3e3c2f6c693e3c6c693e203c7370616e3e20d8b2d8b120d8a7d984d8afd987d984d98ad8b220d8b9d984d98920d8afd8b1d8acd8a920d8a7d984d8add8b1d8a7d8b1d8a92e2020203c2f7370616e3e3c2f6c693e3c6c693e203c7370616e3e20d8a5d984d98920d8a8d8b9d8b620d8a3d8b3d8af20d8a7d984d8b1d8b9d8a7d98ad8a92e2020203c2f7370616e3e3c2f6c693e3c6c693e203c7370616e3e20d8aad8b3d8aad987d8afd98120d8a7d984d8bad8af20d8a7d984d985d8aad8b7d8b1d981d98ad98620d8b5d981d8b12e2020203c2f7370616e3e3c2f6c693e3c6c693e203c7370616e3e20d8add8aad9892064756920d981d98a20d8a3d98a20d988d982d8aa20d988d984d983d98620d8a3d8add98ad8a7d986d98bd8a720d98ad983d988d98620d8a7d984d8a3d984d9852e2020203c2f7370616e3e3c2f6c693e3c2f756c3e, 1, NULL, NULL, '2021-07-25 01:25:50', '2021-07-25 21:19:59');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'manual',
  `information` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `details`, `name`, `type`, `information`, `keyword`, `status`) VALUES
(6, NULL, NULL, NULL, 'Flutterwave', 'automatic', '{\"public_key\":\"FLWPUBK_TEST-a34940f2f87746abbdd8c117caee81cf-X\",\"secret_key\":\"FLWSECK_TEST-1cb427c96e0b1e6772a04504be3638bd-X\",\"text\":\"Pay via your Flutterwave account.\"}', 'flutterwave', 1),
(9, NULL, NULL, NULL, 'Razorpay', 'automatic', '{\"key\":\"rzp_test_fV9dM9URYbqjm7\",\"secret\":\"nickxZ1du2ojPYVVRTDif2Xr\",\"text\":\"Pay via your Razorpay account.\"}', 'razorpay', 1),
(11, NULL, NULL, NULL, 'Paytm', 'automatic', '{\"environment\":\"local\",\"merchant\":\"tkogux49985047638244\",\"secret\":\"LhNGUUKE9xCQ9xY8\",\"website\":\"WEBSTAGING\",\"industry\":\"Retail\",\"text\":\"Pay via your paytm account.\"}', 'paytm', 1),
(12, NULL, NULL, NULL, 'Paystack', 'automatic', '{\"key\":\"sk_test_4ac9f2c43514e3cc08ab68f922201549ebda1bfd\",\"email\":null,\"text\":\"Pay via your Paystack account.\"}', 'paystack', 1),
(13, NULL, NULL, NULL, 'Instamojo', 'automatic', '{\"key\":\"test_172371aa837ae5cad6047dc3052\",\"token\":\"test_4ac5a785e25fc596b67dbc5c267\",\"sandbox_check\":\"1\",\"text\":\"Pay via your Instamojo account.\"}', 'instamojo', 1),
(14, NULL, NULL, NULL, 'Stripe', 'automatic', '{\"key\":\"pk_test_UnU1Coi1p5qFGwtpjZMRMgJM\",\"secret\":\"sk_test_QQcg3vGsKRPlW6T3dXcNJsor\",\"text\":\"Pay via your Credit account.\"}', 'stripe', 1),
(15, NULL, NULL, NULL, 'Paypal', 'automatic', '{\"client_id\":\"AVYKFEw63FtDt9aeYOe9biyifNI56s2Hc2F1Us11hWoY5GMuegipJRQBfWLiIKNbwQ5tmqKSrQTU3zB3\",\"client_secret\":\"EJY0qOKliVg7wKsR3uPN7lngr9rL1N7q4WV0FulT1h4Fw3_e5Itv1mxSdbtSUwAaQoXQFgq-RLlk_sQu\",\"sandbox_check\":\"1\",\"text\":\"Pay via your PayPal account.\"}', 'paypal', 1),
(17, NULL, NULL, NULL, 'Mollie Payment', 'automatic', '{\"key\":\"test_5HcWVs9qc5pzy36H9Tu9mwAyats33J\",\"text\":\"Pay via your Mollie Payment account.\"}', 'mollie', 1),
(19, NULL, NULL, NULL, 'Mercado Pago', 'automatic', '{\"token\":\"TEST-705032440135962-041006-ad2e021853f22338fe1a4db9f64d1491-421886156\",\"sandbox_check\":\"1\",\"text\":\"Pay via your Mercado Pago account.\"}', 'mercadopago', 1),
(20, NULL, NULL, NULL, 'Authorize.net', 'automatic', '{\"login_id\":\"3Ca5hYQ6h\",\"transaction_key\":\"8bt8Kr5gPZ3ZE23C\",\"public_key\":\"7m38JBnNjStNFq58BA6Wrr852ahtT533cGKavWwu6Fge28RDc5wC7wTL8Vsb35B3\",\"sandbox_check\":\"1\",\"text\":\"Pay via your Authorize.net account.\"}', 'authorize.net', 1);

-- --------------------------------------------------------

--
-- Table structure for table `popups`
--

CREATE TABLE `popups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_opacity` decimal(8,2) NOT NULL DEFAULT 1.00,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delay` int(11) NOT NULL DEFAULT 1000 COMMENT 'in milisconds',
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - active, 0 - deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `processes`
--

CREATE TABLE `processes` (
  `id` int(11) NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `processes`
--

INSERT INTO `processes` (`id`, `language_id`, `image`, `title`, `serial_number`) VALUES
(7, 176, '1627279406.jpg', 'Trial & Purchase Plan', 1),
(8, 176, '1627279445.jpg', 'Regiser & Verify Email', 2),
(9, 176, '1627279524.jpg', 'Add Languages', 3),
(10, 176, '1627279541.jpg', 'Upload Profile Contents', 4),
(11, 176, '1627279606.jpg', 'You are good to go!', 5),
(12, 177, '1627279406.jpg', 'التجربة وخطة الشراء', 1),
(13, 177, '1627279445.jpg', 'المسجل والتحقق من البريد الإلكتروني', 2),
(14, 177, '1627279524.jpg', 'أضف اللغات', 3),
(15, 177, '1627279541.jpg', 'تحميل محتويات الملف الشخصي', 4),
(16, 177, '1627279606.jpg', 'يمكنك الذهاب!', 5);

-- --------------------------------------------------------

--
-- Table structure for table `push_subscriptions`
--

CREATE TABLE `push_subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `subscribable_id` int(11) DEFAULT NULL,
  `subscribable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endpoint` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_encoding` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(9, 'Editor', '[\"Dashboard\",\"Packages\",\"Menu Builder\",\"Home Page\",\"Footer\",\"Pages\",\"Blogs\",\"FAQ Management\",\"Contact Page\",\"Announcement Popup\",\"Language Management\"]', '2021-07-18 19:17:38', '2021-09-04 06:14:19'),
(10, 'Manager', '[\"Dashboard\",\"Packages\",\"Payment Log\",\"Menu Builder\",\"Home Page\",\"Footer\",\"Pages\",\"Blogs\",\"FAQ Management\",\"Contact Page\",\"Announcement Popup\",\"Registered Users\",\"Subscribers\",\"Settings\",\"Language Management\",\"Role Management\",\"Admins Management\"]', '2021-07-18 19:17:48', '2021-07-18 19:51:10');

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` int(11) NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `home_meta_keywords` text DEFAULT NULL,
  `home_meta_description` text DEFAULT NULL,
  `profiles_meta_keywords` text DEFAULT NULL,
  `profiles_meta_description` text DEFAULT NULL,
  `pricing_meta_keywords` text DEFAULT NULL,
  `pricing_meta_description` text DEFAULT NULL,
  `blogs_meta_keywords` text DEFAULT NULL,
  `blogs_meta_description` text DEFAULT NULL,
  `faqs_meta_keywords` text DEFAULT NULL,
  `faqs_meta_description` text DEFAULT NULL,
  `contact_meta_keywords` text DEFAULT NULL,
  `contact_meta_description` text DEFAULT NULL,
  `login_meta_keywords` text DEFAULT NULL,
  `login_meta_description` text DEFAULT NULL,
  `forget_password_meta_keywords` text DEFAULT NULL,
  `forget_password_meta_description` text DEFAULT NULL,
  `checkout_meta_keywords` text DEFAULT NULL,
  `checkout_meta_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `language_id`, `home_meta_keywords`, `home_meta_description`, `profiles_meta_keywords`, `profiles_meta_description`, `pricing_meta_keywords`, `pricing_meta_description`, `blogs_meta_keywords`, `blogs_meta_description`, `faqs_meta_keywords`, `faqs_meta_description`, `contact_meta_keywords`, `contact_meta_description`, `login_meta_keywords`, `login_meta_description`, `forget_password_meta_keywords`, `forget_password_meta_description`, `checkout_meta_keywords`, `checkout_meta_description`) VALUES
(7, 177, 'home,page', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'profiles,page', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered', 'pricing,packages', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered', 'blogs,page', 'Content here, content here\', making it look like readable English. Many desktop publishing packages', 'faq,page', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered', 'contact,page', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 176, 'home,page', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'profiles,page', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered', 'pricing,packages', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered', 'blogs,page', 'Content here, content here\', making it look like readable English. Many desktop publishing packages', 'faq,page', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered', 'contact,page', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered', 'login,page', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered', 'forget,password', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered', 'checkout,page', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered');

-- --------------------------------------------------------

--
-- Table structure for table `sitemaps`
--

CREATE TABLE `sitemaps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sitemap_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitemaps`
--

INSERT INTO `sitemaps` (`id`, `sitemap_url`, `filename`, `created_at`, `updated_at`) VALUES
(2, 'http://localhost/superv/without_license/superv-1.2/', 'sitemap5f5e377957033.xml', '2020-09-13 09:15:26', '2020-09-13 09:15:26');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `icon`, `url`, `serial_number`) VALUES
(1, 'fab fa-facebook-f', 'https://www.facebook.com/', 1),
(2, 'fab fa-twitter', 'https://twitter.com/', 2),
(3, 'fab fa-linkedin-in', 'https://bd.linkedin.com/', 3),
(4, 'fab fa-instagram', 'https://www.instagram.com/', 4),
(5, 'fab fa-dribbble', 'https://dribbble.com/', 5);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(13, 'pratik.anwar@gmail.com', NULL, NULL),
(15, 'kreativdev.envato@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `language_id`, `image`, `comment`, `name`, `rank`, `serial_number`, `created_at`, `updated_at`) VALUES
(36, 176, '1627201144.jpg', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum', 'Barella', 'Bank Manager', 1, NULL, NULL),
(37, 176, '1627201214.jpg', 'avoids pleasure itself, because it is pleasure, but because those who do not know how', 'Jorginho', 'CEO, Malao', 2, NULL, NULL),
(38, 176, '1627201257.jpg', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium', 'Insigne', 'Coach, Raoland', 3, NULL, NULL),
(39, 176, '1627201326.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt', 'Banega', 'Chef, Jastiford', 4, NULL, NULL),
(40, 177, '1627201144.jpg', 'يتجنب اللذة نفسها ، لأنها لذة ، ولكن لأن أولئك الذين لا يعرفون كيف', 'نقالة', 'مدير بنك', 1, NULL, NULL),
(41, 177, '1627201214.jpg', 'يتجنب اللذة نفسها ، لأنها لذة ، ولكن لأن أولئك الذين لا يعرفون كيف', 'جورجينيو', 'الرئيس التنفيذي ، ملالا', 2, NULL, NULL),
(42, 177, '1627201257.jpg', 'إلا أن أشرح لكم كيف كل هذه الفكرة الخاطئة من استنكار اللذة وتمجيد الألم', 'شارة', 'المدرب ، راولاند', 3, NULL, NULL),
(43, 177, '1627201326.jpg', 'جزر لوريم إيبسوم ، مطور جامعي محسّن ، لكنها تحبس الوقت والحيوية', 'بانيجا', 'الشيف ، جستيفورد', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gmt_offset` decimal(10,2) NOT NULL,
  `dst_offset` decimal(10,2) NOT NULL,
  `raw_offset` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`id`, `country_code`, `timezone`, `gmt_offset`, `dst_offset`, `raw_offset`) VALUES
(1, 'AD', 'Europe/Andorra', '1.00', '2.00', '1.00'),
(2, 'AE', 'Asia/Dubai', '4.00', '4.00', '4.00'),
(3, 'AF', 'Asia/Kabul', '4.50', '4.50', '4.50'),
(4, 'AG', 'America/Antigua', '-4.00', '-4.00', '-4.00'),
(5, 'AI', 'America/Anguilla', '-4.00', '-4.00', '-4.00'),
(6, 'AL', 'Europe/Tirane', '1.00', '2.00', '1.00'),
(7, 'AM', 'Asia/Yerevan', '4.00', '4.00', '4.00'),
(8, 'AO', 'Africa/Luanda', '1.00', '1.00', '1.00'),
(9, 'AQ', 'Antarctica/Casey', '8.00', '8.00', '8.00'),
(10, 'AQ', 'Antarctica/Davis', '7.00', '7.00', '7.00'),
(11, 'AQ', 'Antarctica/DumontDUrville', '10.00', '10.00', '10.00'),
(12, 'AQ', 'Antarctica/Mawson', '5.00', '5.00', '5.00'),
(13, 'AQ', 'Antarctica/McMurdo', '13.00', '12.00', '12.00'),
(14, 'AQ', 'Antarctica/Palmer', '-3.00', '-4.00', '-4.00'),
(15, 'AQ', 'Antarctica/Rothera', '-3.00', '-3.00', '-3.00'),
(16, 'AQ', 'Antarctica/South_Pole', '13.00', '12.00', '12.00'),
(17, 'AQ', 'Antarctica/Syowa', '3.00', '3.00', '3.00'),
(18, 'AQ', 'Antarctica/Vostok', '6.00', '6.00', '6.00'),
(19, 'AR', 'America/Argentina/Buenos_Aires', '-3.00', '-3.00', '-3.00'),
(20, 'AR', 'America/Argentina/Catamarca', '-3.00', '-3.00', '-3.00'),
(21, 'AR', 'America/Argentina/Cordoba', '-3.00', '-3.00', '-3.00'),
(22, 'AR', 'America/Argentina/Jujuy', '-3.00', '-3.00', '-3.00'),
(23, 'AR', 'America/Argentina/La_Rioja', '-3.00', '-3.00', '-3.00'),
(24, 'AR', 'America/Argentina/Mendoza', '-3.00', '-3.00', '-3.00'),
(25, 'AR', 'America/Argentina/Rio_Gallegos', '-3.00', '-3.00', '-3.00'),
(26, 'AR', 'America/Argentina/Salta', '-3.00', '-3.00', '-3.00'),
(27, 'AR', 'America/Argentina/San_Juan', '-3.00', '-3.00', '-3.00'),
(28, 'AR', 'America/Argentina/San_Luis', '-3.00', '-3.00', '-3.00'),
(29, 'AR', 'America/Argentina/Tucuman', '-3.00', '-3.00', '-3.00'),
(30, 'AR', 'America/Argentina/Ushuaia', '-3.00', '-3.00', '-3.00'),
(31, 'AS', 'Pacific/Pago_Pago', '-11.00', '-11.00', '-11.00'),
(32, 'AT', 'Europe/Vienna', '1.00', '2.00', '1.00'),
(33, 'AU', 'Antarctica/Macquarie', '11.00', '11.00', '11.00'),
(34, 'AU', 'Australia/Adelaide', '10.50', '9.50', '9.50'),
(35, 'AU', 'Australia/Brisbane', '10.00', '10.00', '10.00'),
(36, 'AU', 'Australia/Broken_Hill', '10.50', '9.50', '9.50'),
(37, 'AU', 'Australia/Currie', '11.00', '10.00', '10.00'),
(38, 'AU', 'Australia/Darwin', '9.50', '9.50', '9.50'),
(39, 'AU', 'Australia/Eucla', '8.75', '8.75', '8.75'),
(40, 'AU', 'Australia/Hobart', '11.00', '10.00', '10.00'),
(41, 'AU', 'Australia/Lindeman', '10.00', '10.00', '10.00'),
(42, 'AU', 'Australia/Lord_Howe', '11.00', '10.50', '10.50'),
(43, 'AU', 'Australia/Melbourne', '11.00', '10.00', '10.00'),
(44, 'AU', 'Australia/Perth', '8.00', '8.00', '8.00'),
(45, 'AU', 'Australia/Sydney', '11.00', '10.00', '10.00'),
(46, 'AW', 'America/Aruba', '-4.00', '-4.00', '-4.00'),
(47, 'AX', 'Europe/Mariehamn', '2.00', '3.00', '2.00'),
(48, 'AZ', 'Asia/Baku', '4.00', '5.00', '4.00'),
(49, 'BA', 'Europe/Sarajevo', '1.00', '2.00', '1.00'),
(50, 'BB', 'America/Barbados', '-4.00', '-4.00', '-4.00'),
(51, 'BD', 'Asia/Dhaka', '6.00', '6.00', '6.00'),
(52, 'BE', 'Europe/Brussels', '1.00', '2.00', '1.00'),
(53, 'BF', 'Africa/Ouagadougou', '0.00', '0.00', '0.00'),
(54, 'BG', 'Europe/Sofia', '2.00', '3.00', '2.00'),
(55, 'BH', 'Asia/Bahrain', '3.00', '3.00', '3.00'),
(56, 'BI', 'Africa/Bujumbura', '2.00', '2.00', '2.00'),
(57, 'BJ', 'Africa/Porto-Novo', '1.00', '1.00', '1.00'),
(58, 'BL', 'America/St_Barthelemy', '-4.00', '-4.00', '-4.00'),
(59, 'BM', 'Atlantic/Bermuda', '-4.00', '-3.00', '-4.00'),
(60, 'BN', 'Asia/Brunei', '8.00', '8.00', '8.00'),
(61, 'BO', 'America/La_Paz', '-4.00', '-4.00', '-4.00'),
(62, 'BQ', 'America/Kralendijk', '-4.00', '-4.00', '-4.00'),
(63, 'BR', 'America/Araguaina', '-3.00', '-3.00', '-3.00'),
(64, 'BR', 'America/Bahia', '-3.00', '-3.00', '-3.00'),
(65, 'BR', 'America/Belem', '-3.00', '-3.00', '-3.00'),
(66, 'BR', 'America/Boa_Vista', '-4.00', '-4.00', '-4.00'),
(67, 'BR', 'America/Campo_Grande', '-3.00', '-4.00', '-4.00'),
(68, 'BR', 'America/Cuiaba', '-3.00', '-4.00', '-4.00'),
(69, 'BR', 'America/Eirunepe', '-5.00', '-5.00', '-5.00'),
(70, 'BR', 'America/Fortaleza', '-3.00', '-3.00', '-3.00'),
(71, 'BR', 'America/Maceio', '-3.00', '-3.00', '-3.00'),
(72, 'BR', 'America/Manaus', '-4.00', '-4.00', '-4.00'),
(73, 'BR', 'America/Noronha', '-2.00', '-2.00', '-2.00'),
(74, 'BR', 'America/Porto_Velho', '-4.00', '-4.00', '-4.00'),
(75, 'BR', 'America/Recife', '-3.00', '-3.00', '-3.00'),
(76, 'BR', 'America/Rio_Branco', '-5.00', '-5.00', '-5.00'),
(77, 'BR', 'America/Santarem', '-3.00', '-3.00', '-3.00'),
(78, 'BR', 'America/Sao_Paulo', '-2.00', '-3.00', '-3.00'),
(79, 'BS', 'America/Nassau', '-5.00', '-4.00', '-5.00'),
(80, 'BT', 'Asia/Thimphu', '6.00', '6.00', '6.00'),
(81, 'BW', 'Africa/Gaborone', '2.00', '2.00', '2.00'),
(82, 'BY', 'Europe/Minsk', '3.00', '3.00', '3.00'),
(83, 'BZ', 'America/Belize', '-6.00', '-6.00', '-6.00'),
(84, 'CA', 'America/Atikokan', '-5.00', '-5.00', '-5.00'),
(85, 'CA', 'America/Blanc-Sablon', '-4.00', '-4.00', '-4.00'),
(86, 'CA', 'America/Cambridge_Bay', '-7.00', '-6.00', '-7.00'),
(87, 'CA', 'America/Creston', '-7.00', '-7.00', '-7.00'),
(88, 'CA', 'America/Dawson', '-8.00', '-7.00', '-8.00'),
(89, 'CA', 'America/Dawson_Creek', '-7.00', '-7.00', '-7.00'),
(90, 'CA', 'America/Edmonton', '-7.00', '-6.00', '-7.00'),
(91, 'CA', 'America/Glace_Bay', '-4.00', '-3.00', '-4.00'),
(92, 'CA', 'America/Goose_Bay', '-4.00', '-3.00', '-4.00'),
(93, 'CA', 'America/Halifax', '-4.00', '-3.00', '-4.00'),
(94, 'CA', 'America/Inuvik', '-7.00', '-6.00', '-7.00'),
(95, 'CA', 'America/Iqaluit', '-5.00', '-4.00', '-5.00'),
(96, 'CA', 'America/Moncton', '-4.00', '-3.00', '-4.00'),
(97, 'CA', 'America/Montreal', '-5.00', '-4.00', '-5.00'),
(98, 'CA', 'America/Nipigon', '-5.00', '-4.00', '-5.00'),
(99, 'CA', 'America/Pangnirtung', '-5.00', '-4.00', '-5.00'),
(100, 'CA', 'America/Rainy_River', '-6.00', '-5.00', '-6.00'),
(101, 'CA', 'America/Rankin_Inlet', '-6.00', '-5.00', '-6.00'),
(102, 'CA', 'America/Regina', '-6.00', '-6.00', '-6.00'),
(103, 'CA', 'America/Resolute', '-6.00', '-5.00', '-6.00'),
(104, 'CA', 'America/St_Johns', '-3.50', '-2.50', '-3.50'),
(105, 'CA', 'America/Swift_Current', '-6.00', '-6.00', '-6.00'),
(106, 'CA', 'America/Thunder_Bay', '-5.00', '-4.00', '-5.00'),
(107, 'CA', 'America/Toronto', '-5.00', '-4.00', '-5.00'),
(108, 'CA', 'America/Vancouver', '-8.00', '-7.00', '-8.00'),
(109, 'CA', 'America/Whitehorse', '-8.00', '-7.00', '-8.00'),
(110, 'CA', 'America/Winnipeg', '-6.00', '-5.00', '-6.00'),
(111, 'CA', 'America/Yellowknife', '-7.00', '-6.00', '-7.00'),
(112, 'CC', 'Indian/Cocos', '6.50', '6.50', '6.50'),
(113, 'CD', 'Africa/Kinshasa', '1.00', '1.00', '1.00'),
(114, 'CD', 'Africa/Lubumbashi', '2.00', '2.00', '2.00'),
(115, 'CF', 'Africa/Bangui', '1.00', '1.00', '1.00'),
(116, 'CG', 'Africa/Brazzaville', '1.00', '1.00', '1.00'),
(117, 'CH', 'Europe/Zurich', '1.00', '2.00', '1.00'),
(118, 'CI', 'Africa/Abidjan', '0.00', '0.00', '0.00'),
(119, 'CK', 'Pacific/Rarotonga', '-10.00', '-10.00', '-10.00'),
(120, 'CL', 'America/Santiago', '-3.00', '-4.00', '-4.00'),
(121, 'CL', 'Pacific/Easter', '-5.00', '-6.00', '-6.00'),
(122, 'CM', 'Africa/Douala', '1.00', '1.00', '1.00'),
(123, 'CN', 'Asia/Chongqing', '8.00', '8.00', '8.00'),
(124, 'CN', 'Asia/Harbin', '8.00', '8.00', '8.00'),
(125, 'CN', 'Asia/Kashgar', '8.00', '8.00', '8.00'),
(126, 'CN', 'Asia/Shanghai', '8.00', '8.00', '8.00'),
(127, 'CN', 'Asia/Urumqi', '8.00', '8.00', '8.00'),
(128, 'CO', 'America/Bogota', '-5.00', '-5.00', '-5.00'),
(129, 'CR', 'America/Costa_Rica', '-6.00', '-6.00', '-6.00'),
(130, 'CU', 'America/Havana', '-5.00', '-4.00', '-5.00'),
(131, 'CV', 'Atlantic/Cape_Verde', '-1.00', '-1.00', '-1.00'),
(132, 'CW', 'America/Curacao', '-4.00', '-4.00', '-4.00'),
(133, 'CX', 'Indian/Christmas', '7.00', '7.00', '7.00'),
(134, 'CY', 'Asia/Nicosia', '2.00', '3.00', '2.00'),
(135, 'CZ', 'Europe/Prague', '1.00', '2.00', '1.00'),
(136, 'DE', 'Europe/Berlin', '1.00', '2.00', '1.00'),
(137, 'DE', 'Europe/Busingen', '1.00', '2.00', '1.00'),
(138, 'DJ', 'Africa/Djibouti', '3.00', '3.00', '3.00'),
(139, 'DK', 'Europe/Copenhagen', '1.00', '2.00', '1.00'),
(140, 'DM', 'America/Dominica', '-4.00', '-4.00', '-4.00'),
(141, 'DO', 'America/Santo_Domingo', '-4.00', '-4.00', '-4.00'),
(142, 'DZ', 'Africa/Algiers', '1.00', '1.00', '1.00'),
(143, 'EC', 'America/Guayaquil', '-5.00', '-5.00', '-5.00'),
(144, 'EC', 'Pacific/Galapagos', '-6.00', '-6.00', '-6.00'),
(145, 'EE', 'Europe/Tallinn', '2.00', '3.00', '2.00'),
(146, 'EG', 'Africa/Cairo', '2.00', '2.00', '2.00'),
(147, 'EH', 'Africa/El_Aaiun', '0.00', '0.00', '0.00'),
(148, 'ER', 'Africa/Asmara', '3.00', '3.00', '3.00'),
(149, 'ES', 'Africa/Ceuta', '1.00', '2.00', '1.00'),
(150, 'ES', 'Atlantic/Canary', '0.00', '1.00', '0.00'),
(151, 'ES', 'Europe/Madrid', '1.00', '2.00', '1.00'),
(152, 'ET', 'Africa/Addis_Ababa', '3.00', '3.00', '3.00'),
(153, 'FI', 'Europe/Helsinki', '2.00', '3.00', '2.00'),
(154, 'FJ', 'Pacific/Fiji', '13.00', '12.00', '12.00'),
(155, 'FK', 'Atlantic/Stanley', '-3.00', '-3.00', '-3.00'),
(156, 'FM', 'Pacific/Chuuk', '10.00', '10.00', '10.00'),
(157, 'FM', 'Pacific/Kosrae', '11.00', '11.00', '11.00'),
(158, 'FM', 'Pacific/Pohnpei', '11.00', '11.00', '11.00'),
(159, 'FO', 'Atlantic/Faroe', '0.00', '1.00', '0.00'),
(160, 'FR', 'Europe/Paris', '1.00', '2.00', '1.00'),
(161, 'GA', 'Africa/Libreville', '1.00', '1.00', '1.00'),
(162, 'GB', 'Europe/London', '0.00', '1.00', '0.00'),
(163, 'GD', 'America/Grenada', '-4.00', '-4.00', '-4.00'),
(164, 'GE', 'Asia/Tbilisi', '4.00', '4.00', '4.00'),
(165, 'GF', 'America/Cayenne', '-3.00', '-3.00', '-3.00'),
(166, 'GG', 'Europe/Guernsey', '0.00', '1.00', '0.00'),
(167, 'GH', 'Africa/Accra', '0.00', '0.00', '0.00'),
(168, 'GI', 'Europe/Gibraltar', '1.00', '2.00', '1.00'),
(169, 'GL', 'America/Danmarkshavn', '0.00', '0.00', '0.00'),
(170, 'GL', 'America/Godthab', '-3.00', '-2.00', '-3.00'),
(171, 'GL', 'America/Scoresbysund', '-1.00', '0.00', '-1.00'),
(172, 'GL', 'America/Thule', '-4.00', '-3.00', '-4.00'),
(173, 'GM', 'Africa/Banjul', '0.00', '0.00', '0.00'),
(174, 'GN', 'Africa/Conakry', '0.00', '0.00', '0.00'),
(175, 'GP', 'America/Guadeloupe', '-4.00', '-4.00', '-4.00'),
(176, 'GQ', 'Africa/Malabo', '1.00', '1.00', '1.00'),
(177, 'GR', 'Europe/Athens', '2.00', '3.00', '2.00'),
(178, 'GS', 'Atlantic/South_Georgia', '-2.00', '-2.00', '-2.00'),
(179, 'GT', 'America/Guatemala', '-6.00', '-6.00', '-6.00'),
(180, 'GU', 'Pacific/Guam', '10.00', '10.00', '10.00'),
(181, 'GW', 'Africa/Bissau', '0.00', '0.00', '0.00'),
(182, 'GY', 'America/Guyana', '-4.00', '-4.00', '-4.00'),
(183, 'HK', 'Asia/Hong_Kong', '8.00', '8.00', '8.00'),
(184, 'HN', 'America/Tegucigalpa', '-6.00', '-6.00', '-6.00'),
(185, 'HR', 'Europe/Zagreb', '1.00', '2.00', '1.00'),
(186, 'HT', 'America/Port-au-Prince', '-5.00', '-4.00', '-5.00'),
(187, 'HU', 'Europe/Budapest', '1.00', '2.00', '1.00'),
(188, 'ID', 'Asia/Jakarta', '7.00', '7.00', '7.00'),
(189, 'ID', 'Asia/Jayapura', '9.00', '9.00', '9.00'),
(190, 'ID', 'Asia/Makassar', '8.00', '8.00', '8.00'),
(191, 'ID', 'Asia/Pontianak', '7.00', '7.00', '7.00'),
(192, 'IE', 'Europe/Dublin', '0.00', '1.00', '0.00'),
(193, 'IL', 'Asia/Jerusalem', '2.00', '3.00', '2.00'),
(194, 'IM', 'Europe/Isle_of_Man', '0.00', '1.00', '0.00'),
(195, 'IN', 'Asia/Kolkata', '5.50', '5.50', '5.50'),
(196, 'IO', 'Indian/Chagos', '6.00', '6.00', '6.00'),
(197, 'IQ', 'Asia/Baghdad', '3.00', '3.00', '3.00'),
(198, 'IR', 'Asia/Tehran', '3.50', '4.50', '3.50'),
(199, 'IS', 'Atlantic/Reykjavik', '0.00', '0.00', '0.00'),
(200, 'IT', 'Europe/Rome', '1.00', '2.00', '1.00'),
(201, 'JE', 'Europe/Jersey', '0.00', '1.00', '0.00'),
(202, 'JM', 'America/Jamaica', '-5.00', '-5.00', '-5.00'),
(203, 'JO', 'Asia/Amman', '2.00', '3.00', '2.00'),
(204, 'JP', 'Asia/Tokyo', '9.00', '9.00', '9.00'),
(205, 'KE', 'Africa/Nairobi', '3.00', '3.00', '3.00'),
(206, 'KG', 'Asia/Bishkek', '6.00', '6.00', '6.00'),
(207, 'KH', 'Asia/Phnom_Penh', '7.00', '7.00', '7.00'),
(208, 'KI', 'Pacific/Enderbury', '13.00', '13.00', '13.00'),
(209, 'KI', 'Pacific/Kiritimati', '14.00', '14.00', '14.00'),
(210, 'KI', 'Pacific/Tarawa', '12.00', '12.00', '12.00'),
(211, 'KM', 'Indian/Comoro', '3.00', '3.00', '3.00'),
(212, 'KN', 'America/St_Kitts', '-4.00', '-4.00', '-4.00'),
(213, 'KP', 'Asia/Pyongyang', '9.00', '9.00', '9.00'),
(214, 'KR', 'Asia/Seoul', '9.00', '9.00', '9.00'),
(215, 'KW', 'Asia/Kuwait', '3.00', '3.00', '3.00'),
(216, 'KY', 'America/Cayman', '-5.00', '-5.00', '-5.00'),
(217, 'KZ', 'Asia/Almaty', '6.00', '6.00', '6.00'),
(218, 'KZ', 'Asia/Aqtau', '5.00', '5.00', '5.00'),
(219, 'KZ', 'Asia/Aqtobe', '5.00', '5.00', '5.00'),
(220, 'KZ', 'Asia/Oral', '5.00', '5.00', '5.00'),
(221, 'KZ', 'Asia/Qyzylorda', '6.00', '6.00', '6.00'),
(222, 'LA', 'Asia/Vientiane', '7.00', '7.00', '7.00'),
(223, 'LB', 'Asia/Beirut', '2.00', '3.00', '2.00'),
(224, 'LC', 'America/St_Lucia', '-4.00', '-4.00', '-4.00'),
(225, 'LI', 'Europe/Vaduz', '1.00', '2.00', '1.00'),
(226, 'LK', 'Asia/Colombo', '5.50', '5.50', '5.50'),
(227, 'LR', 'Africa/Monrovia', '0.00', '0.00', '0.00'),
(228, 'LS', 'Africa/Maseru', '2.00', '2.00', '2.00'),
(229, 'LT', 'Europe/Vilnius', '2.00', '3.00', '2.00'),
(230, 'LU', 'Europe/Luxembourg', '1.00', '2.00', '1.00'),
(231, 'LV', 'Europe/Riga', '2.00', '3.00', '2.00'),
(232, 'LY', 'Africa/Tripoli', '2.00', '2.00', '2.00'),
(233, 'MA', 'Africa/Casablanca', '0.00', '0.00', '0.00'),
(234, 'MC', 'Europe/Monaco', '1.00', '2.00', '1.00'),
(235, 'MD', 'Europe/Chisinau', '2.00', '3.00', '2.00'),
(236, 'ME', 'Europe/Podgorica', '1.00', '2.00', '1.00'),
(237, 'MF', 'America/Marigot', '-4.00', '-4.00', '-4.00'),
(238, 'MG', 'Indian/Antananarivo', '3.00', '3.00', '3.00'),
(239, 'MH', 'Pacific/Kwajalein', '12.00', '12.00', '12.00'),
(240, 'MH', 'Pacific/Majuro', '12.00', '12.00', '12.00'),
(241, 'MK', 'Europe/Skopje', '1.00', '2.00', '1.00'),
(242, 'ML', 'Africa/Bamako', '0.00', '0.00', '0.00'),
(243, 'MM', 'Asia/Rangoon', '6.50', '6.50', '6.50'),
(244, 'MN', 'Asia/Choibalsan', '8.00', '8.00', '8.00'),
(245, 'MN', 'Asia/Hovd', '7.00', '7.00', '7.00'),
(246, 'MN', 'Asia/Ulaanbaatar', '8.00', '8.00', '8.00'),
(247, 'MO', 'Asia/Macau', '8.00', '8.00', '8.00'),
(248, 'MP', 'Pacific/Saipan', '10.00', '10.00', '10.00'),
(249, 'MQ', 'America/Martinique', '-4.00', '-4.00', '-4.00'),
(250, 'MR', 'Africa/Nouakchott', '0.00', '0.00', '0.00'),
(251, 'MS', 'America/Montserrat', '-4.00', '-4.00', '-4.00'),
(252, 'MT', 'Europe/Malta', '1.00', '2.00', '1.00'),
(253, 'MU', 'Indian/Mauritius', '4.00', '4.00', '4.00'),
(254, 'MV', 'Indian/Maldives', '5.00', '5.00', '5.00'),
(255, 'MW', 'Africa/Blantyre', '2.00', '2.00', '2.00'),
(256, 'MX', 'America/Bahia_Banderas', '-6.00', '-5.00', '-6.00'),
(257, 'MX', 'America/Cancun', '-6.00', '-5.00', '-6.00'),
(258, 'MX', 'America/Chihuahua', '-7.00', '-6.00', '-7.00'),
(259, 'MX', 'America/Hermosillo', '-7.00', '-7.00', '-7.00'),
(260, 'MX', 'America/Matamoros', '-6.00', '-5.00', '-6.00'),
(261, 'MX', 'America/Mazatlan', '-7.00', '-6.00', '-7.00'),
(262, 'MX', 'America/Merida', '-6.00', '-5.00', '-6.00'),
(263, 'MX', 'America/Mexico_City', '-6.00', '-5.00', '-6.00'),
(264, 'MX', 'America/Monterrey', '-6.00', '-5.00', '-6.00'),
(265, 'MX', 'America/Ojinaga', '-7.00', '-6.00', '-7.00'),
(266, 'MX', 'America/Santa_Isabel', '-8.00', '-7.00', '-8.00'),
(267, 'MX', 'America/Tijuana', '-8.00', '-7.00', '-8.00'),
(268, 'MY', 'Asia/Kuala_Lumpur', '8.00', '8.00', '8.00'),
(269, 'MY', 'Asia/Kuching', '8.00', '8.00', '8.00'),
(270, 'MZ', 'Africa/Maputo', '2.00', '2.00', '2.00'),
(271, 'NA', 'Africa/Windhoek', '2.00', '1.00', '1.00'),
(272, 'NC', 'Pacific/Noumea', '11.00', '11.00', '11.00'),
(273, 'NE', 'Africa/Niamey', '1.00', '1.00', '1.00'),
(274, 'NF', 'Pacific/Norfolk', '11.50', '11.50', '11.50'),
(275, 'NG', 'Africa/Lagos', '1.00', '1.00', '1.00'),
(276, 'NI', 'America/Managua', '-6.00', '-6.00', '-6.00'),
(277, 'NL', 'Europe/Amsterdam', '1.00', '2.00', '1.00'),
(278, 'NO', 'Europe/Oslo', '1.00', '2.00', '1.00'),
(279, 'NP', 'Asia/Kathmandu', '5.75', '5.75', '5.75'),
(280, 'NR', 'Pacific/Nauru', '12.00', '12.00', '12.00'),
(281, 'NU', 'Pacific/Niue', '-11.00', '-11.00', '-11.00'),
(282, 'NZ', 'Pacific/Auckland', '13.00', '12.00', '12.00'),
(283, 'NZ', 'Pacific/Chatham', '13.75', '12.75', '12.75'),
(284, 'OM', 'Asia/Muscat', '4.00', '4.00', '4.00'),
(285, 'PA', 'America/Panama', '-5.00', '-5.00', '-5.00'),
(286, 'PE', 'America/Lima', '-5.00', '-5.00', '-5.00'),
(287, 'PF', 'Pacific/Gambier', '-9.00', '-9.00', '-9.00'),
(288, 'PF', 'Pacific/Marquesas', '-9.50', '-9.50', '-9.50'),
(289, 'PF', 'Pacific/Tahiti', '-10.00', '-10.00', '-10.00'),
(290, 'PG', 'Pacific/Port_Moresby', '10.00', '10.00', '10.00'),
(291, 'PH', 'Asia/Manila', '8.00', '8.00', '8.00'),
(292, 'PK', 'Asia/Karachi', '5.00', '5.00', '5.00'),
(293, 'PL', 'Europe/Warsaw', '1.00', '2.00', '1.00'),
(294, 'PM', 'America/Miquelon', '-3.00', '-2.00', '-3.00'),
(295, 'PN', 'Pacific/Pitcairn', '-8.00', '-8.00', '-8.00'),
(296, 'PR', 'America/Puerto_Rico', '-4.00', '-4.00', '-4.00'),
(297, 'PS', 'Asia/Gaza', '2.00', '3.00', '2.00'),
(298, 'PS', 'Asia/Hebron', '2.00', '3.00', '2.00'),
(299, 'PT', 'Atlantic/Azores', '-1.00', '0.00', '-1.00'),
(300, 'PT', 'Atlantic/Madeira', '0.00', '1.00', '0.00'),
(301, 'PT', 'Europe/Lisbon', '0.00', '1.00', '0.00'),
(302, 'PW', 'Pacific/Palau', '9.00', '9.00', '9.00'),
(303, 'PY', 'America/Asuncion', '-3.00', '-4.00', '-4.00'),
(304, 'QA', 'Asia/Qatar', '3.00', '3.00', '3.00'),
(305, 'RE', 'Indian/Reunion', '4.00', '4.00', '4.00'),
(306, 'RO', 'Europe/Bucharest', '2.00', '3.00', '2.00'),
(307, 'RS', 'Europe/Belgrade', '1.00', '2.00', '1.00'),
(308, 'RU', 'Asia/Anadyr', '12.00', '12.00', '12.00'),
(309, 'RU', 'Asia/Irkutsk', '9.00', '9.00', '9.00'),
(310, 'RU', 'Asia/Kamchatka', '12.00', '12.00', '12.00'),
(311, 'RU', 'Asia/Khandyga', '10.00', '10.00', '10.00'),
(312, 'RU', 'Asia/Krasnoyarsk', '8.00', '8.00', '8.00'),
(313, 'RU', 'Asia/Magadan', '12.00', '12.00', '12.00'),
(314, 'RU', 'Asia/Novokuznetsk', '7.00', '7.00', '7.00'),
(315, 'RU', 'Asia/Novosibirsk', '7.00', '7.00', '7.00'),
(316, 'RU', 'Asia/Omsk', '7.00', '7.00', '7.00'),
(317, 'RU', 'Asia/Sakhalin', '11.00', '11.00', '11.00'),
(318, 'RU', 'Asia/Ust-Nera', '11.00', '11.00', '11.00'),
(319, 'RU', 'Asia/Vladivostok', '11.00', '11.00', '11.00'),
(320, 'RU', 'Asia/Yakutsk', '10.00', '10.00', '10.00'),
(321, 'RU', 'Asia/Yekaterinburg', '6.00', '6.00', '6.00'),
(322, 'RU', 'Europe/Kaliningrad', '3.00', '3.00', '3.00'),
(323, 'RU', 'Europe/Moscow', '4.00', '4.00', '4.00'),
(324, 'RU', 'Europe/Samara', '4.00', '4.00', '4.00'),
(325, 'RU', 'Europe/Volgograd', '4.00', '4.00', '4.00'),
(326, 'RW', 'Africa/Kigali', '2.00', '2.00', '2.00'),
(327, 'SA', 'Asia/Riyadh', '3.00', '3.00', '3.00'),
(328, 'SB', 'Pacific/Guadalcanal', '11.00', '11.00', '11.00'),
(329, 'SC', 'Indian/Mahe', '4.00', '4.00', '4.00'),
(330, 'SD', 'Africa/Khartoum', '3.00', '3.00', '3.00'),
(331, 'SE', 'Europe/Stockholm', '1.00', '2.00', '1.00'),
(332, 'SG', 'Asia/Singapore', '8.00', '8.00', '8.00'),
(333, 'SH', 'Atlantic/St_Helena', '0.00', '0.00', '0.00'),
(334, 'SI', 'Europe/Ljubljana', '1.00', '2.00', '1.00'),
(335, 'SJ', 'Arctic/Longyearbyen', '1.00', '2.00', '1.00'),
(336, 'SK', 'Europe/Bratislava', '1.00', '2.00', '1.00'),
(337, 'SL', 'Africa/Freetown', '0.00', '0.00', '0.00'),
(338, 'SM', 'Europe/San_Marino', '1.00', '2.00', '1.00'),
(339, 'SN', 'Africa/Dakar', '0.00', '0.00', '0.00'),
(340, 'SO', 'Africa/Mogadishu', '3.00', '3.00', '3.00'),
(341, 'SR', 'America/Paramaribo', '-3.00', '-3.00', '-3.00'),
(342, 'SS', 'Africa/Juba', '3.00', '3.00', '3.00'),
(343, 'ST', 'Africa/Sao_Tome', '0.00', '0.00', '0.00'),
(344, 'SV', 'America/El_Salvador', '-6.00', '-6.00', '-6.00'),
(345, 'SX', 'America/Lower_Princes', '-4.00', '-4.00', '-4.00'),
(346, 'SY', 'Asia/Damascus', '2.00', '3.00', '2.00'),
(347, 'SZ', 'Africa/Mbabane', '2.00', '2.00', '2.00'),
(348, 'TC', 'America/Grand_Turk', '-5.00', '-4.00', '-5.00'),
(349, 'TD', 'Africa/Ndjamena', '1.00', '1.00', '1.00'),
(350, 'TF', 'Indian/Kerguelen', '5.00', '5.00', '5.00'),
(351, 'TG', 'Africa/Lome', '0.00', '0.00', '0.00'),
(352, 'TH', 'Asia/Bangkok', '7.00', '7.00', '7.00'),
(353, 'TJ', 'Asia/Dushanbe', '5.00', '5.00', '5.00'),
(354, 'TK', 'Pacific/Fakaofo', '13.00', '13.00', '13.00'),
(355, 'TL', 'Asia/Dili', '9.00', '9.00', '9.00'),
(356, 'TM', 'Asia/Ashgabat', '5.00', '5.00', '5.00'),
(357, 'TN', 'Africa/Tunis', '1.00', '1.00', '1.00'),
(358, 'TO', 'Pacific/Tongatapu', '13.00', '13.00', '13.00'),
(359, 'TR', 'Europe/Istanbul', '2.00', '3.00', '2.00'),
(360, 'TT', 'America/Port_of_Spain', '-4.00', '-4.00', '-4.00'),
(361, 'TV', 'Pacific/Funafuti', '12.00', '12.00', '12.00'),
(362, 'TW', 'Asia/Taipei', '8.00', '8.00', '8.00'),
(363, 'TZ', 'Africa/Dar_es_Salaam', '3.00', '3.00', '3.00'),
(364, 'UA', 'Europe/Kiev', '2.00', '3.00', '2.00'),
(365, 'UA', 'Europe/Simferopol', '2.00', '4.00', '4.00'),
(366, 'UA', 'Europe/Uzhgorod', '2.00', '3.00', '2.00'),
(367, 'UA', 'Europe/Zaporozhye', '2.00', '3.00', '2.00'),
(368, 'UG', 'Africa/Kampala', '3.00', '3.00', '3.00'),
(369, 'UM', 'Pacific/Johnston', '-10.00', '-10.00', '-10.00'),
(370, 'UM', 'Pacific/Midway', '-11.00', '-11.00', '-11.00'),
(371, 'UM', 'Pacific/Wake', '12.00', '12.00', '12.00'),
(372, 'US', 'America/Adak', '-10.00', '-9.00', '-10.00'),
(373, 'US', 'America/Anchorage', '-9.00', '-8.00', '-9.00'),
(374, 'US', 'America/Boise', '-7.00', '-6.00', '-7.00'),
(375, 'US', 'America/Chicago', '-6.00', '-5.00', '-6.00'),
(376, 'US', 'America/Denver', '-7.00', '-6.00', '-7.00'),
(377, 'US', 'America/Detroit', '-5.00', '-4.00', '-5.00'),
(378, 'US', 'America/Indiana/Indianapolis', '-5.00', '-4.00', '-5.00'),
(379, 'US', 'America/Indiana/Knox', '-6.00', '-5.00', '-6.00'),
(380, 'US', 'America/Indiana/Marengo', '-5.00', '-4.00', '-5.00'),
(381, 'US', 'America/Indiana/Petersburg', '-5.00', '-4.00', '-5.00'),
(382, 'US', 'America/Indiana/Tell_City', '-6.00', '-5.00', '-6.00'),
(383, 'US', 'America/Indiana/Vevay', '-5.00', '-4.00', '-5.00'),
(384, 'US', 'America/Indiana/Vincennes', '-5.00', '-4.00', '-5.00'),
(385, 'US', 'America/Indiana/Winamac', '-5.00', '-4.00', '-5.00'),
(386, 'US', 'America/Juneau', '-9.00', '-8.00', '-9.00'),
(387, 'US', 'America/Kentucky/Louisville', '-5.00', '-4.00', '-5.00'),
(388, 'US', 'America/Kentucky/Monticello', '-5.00', '-4.00', '-5.00'),
(389, 'US', 'America/Los_Angeles', '-8.00', '-7.00', '-8.00'),
(390, 'US', 'America/Menominee', '-6.00', '-5.00', '-6.00'),
(391, 'US', 'America/Metlakatla', '-8.00', '-8.00', '-8.00'),
(392, 'US', 'America/New_York', '-5.00', '-4.00', '-5.00'),
(393, 'US', 'America/Nome', '-9.00', '-8.00', '-9.00'),
(394, 'US', 'America/North_Dakota/Beulah', '-6.00', '-5.00', '-6.00'),
(395, 'US', 'America/North_Dakota/Center', '-6.00', '-5.00', '-6.00'),
(396, 'US', 'America/North_Dakota/New_Salem', '-6.00', '-5.00', '-6.00'),
(397, 'US', 'America/Phoenix', '-7.00', '-7.00', '-7.00'),
(398, 'US', 'America/Shiprock', '-7.00', '-6.00', '-7.00'),
(399, 'US', 'America/Sitka', '-9.00', '-8.00', '-9.00'),
(400, 'US', 'America/Yakutat', '-9.00', '-8.00', '-9.00'),
(401, 'US', 'Pacific/Honolulu', '-10.00', '-10.00', '-10.00'),
(402, 'UY', 'America/Montevideo', '-2.00', '-3.00', '-3.00'),
(403, 'UZ', 'Asia/Samarkand', '5.00', '5.00', '5.00'),
(404, 'UZ', 'Asia/Tashkent', '5.00', '5.00', '5.00'),
(405, 'VA', 'Europe/Vatican', '1.00', '2.00', '1.00'),
(406, 'VC', 'America/St_Vincent', '-4.00', '-4.00', '-4.00'),
(407, 'VE', 'America/Caracas', '-4.50', '-4.50', '-4.50'),
(408, 'VG', 'America/Tortola', '-4.00', '-4.00', '-4.00'),
(409, 'VI', 'America/St_Thomas', '-4.00', '-4.00', '-4.00'),
(410, 'VN', 'Asia/Ho_Chi_Minh', '7.00', '7.00', '7.00'),
(411, 'VU', 'Pacific/Efate', '11.00', '11.00', '11.00'),
(412, 'WF', 'Pacific/Wallis', '12.00', '12.00', '12.00'),
(413, 'WS', 'Pacific/Apia', '14.00', '13.00', '13.00'),
(414, 'YE', 'Asia/Aden', '3.00', '3.00', '3.00'),
(415, 'YT', 'Indian/Mayotte', '3.00', '3.00', '3.00'),
(416, 'ZA', 'Africa/Johannesburg', '2.00', '2.00', '2.00'),
(417, 'ZM', 'Africa/Lusaka', '2.00', '2.00', '2.00'),
(418, 'ZW', 'Africa/Harare', '2.00', '2.00', '2.00');

-- --------------------------------------------------------

--
-- Table structure for table `ulinks`
--

CREATE TABLE `ulinks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ulinks`
--

INSERT INTO `ulinks` (`id`, `language_id`, `name`, `url`, `created_at`, `updated_at`) VALUES
(42, 176, 'About Us', 'http://example.com/', NULL, NULL),
(43, 176, 'Terms & Conditions', 'http://example.com/', NULL, NULL),
(44, 176, 'Privacy Policy', 'http://example.com/', NULL, NULL),
(45, 176, 'Contact Us', 'http://example.com/', NULL, NULL),
(46, 176, 'Our Blogs', 'http://example.com/', NULL, NULL),
(47, 177, 'معلومات عنا', 'http://example.com/', NULL, NULL),
(48, 177, 'البنود و الظروف', 'http://example.com/', NULL, NULL),
(49, 177, 'سياسة الخصوصية', 'http://example.com/', NULL, NULL),
(50, 177, 'اتصل بنا', 'http://example.com/', NULL, NULL),
(51, 177, 'مدوناتنا', 'http://example.com/', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` int(11) NOT NULL DEFAULT 0,
  `feature_time` timestamp NOT NULL DEFAULT '2021-08-23 20:56:02',
  `status` int(11) NOT NULL DEFAULT 0,
  `online_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = Active ,0 = offline',
  `verification_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 - verified, 0 - not verified',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subdomain_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - pending, 1 - connected'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `photo`, `username`, `email`, `password`, `phone`, `city`, `state`, `address`, `country`, `remember_token`, `featured`, `feature_time`, `status`, `online_status`, `verification_link`, `email_verified`, `created_at`, `updated_at`, `subdomain_status`) VALUES
(62, 'Romario', 'Sara', '1627281726thumb-4.jpg', 'Romario', 'romario@gmail.com', '$2y$10$N84F8Pl5oKVSRoSnGiH4guMY/.RxMLhTTeRyKhcg/CSU3aCx971G2', '1253447823', 'CA', 'CA', 'CA, USA', 'USA', NULL, 1, '2021-08-23 20:56:02', 1, 1, 'b9d5f804e4f6b2f8d7d4024795e5cbb4', 1, '2021-07-25 21:39:46', '2021-09-09 01:43:40', 0),
(63, 'Ciro', 'Immobile', '162737889801 220x220.jpg', 'Immobile', 'immobile@gmail.com', '$2y$10$puww1zW1.kQE6S68C1Mhw.bOyBAJ1DtMgrH6egJXg3pFt1.35CSQq', '237237', 'test', 'test', 'test', 'Italy', NULL, 1, '2021-08-23 20:56:02', 1, 1, '9975d805502cfd70d16d9d4bc0b671b1', 1, '2021-07-26 23:22:27', '2021-07-27 19:48:26', 0),
(64, 'Lorenzo', 'Insigne', '162738555302 220x220.jpg', 'Insigne', 'insigne@gmail.com', '$2y$10$FK2LlMcbc8gf4EGeOSjMdOyrIEdmrTGNbS4BEnW2w1AQqKcOVr5Ta', '9847531621', 'test', 'test', 'test', 'test', NULL, 0, '2021-08-23 20:56:02', 1, 1, 'd0807024fc0710854f2680030d19f69c', 1, '2021-07-27 02:15:35', '2021-08-21 19:49:35', 0),
(65, 'Dani', 'Olmo', '162739107109 220x220.png', 'Olmo', 'olmo@gmail.com', '$2y$10$fXZG2l4bdmK2jwcwtMz8B.yHmftBuZs.wwSXV3Mjn0EPZbv9hUyPO', '3545298692', 'test', 'test', 'test', 'Spain', NULL, 1, '2021-08-23 20:56:02', 1, 1, 'd0a4aab71785a3d91446b529f14724eb', 1, '2021-07-27 03:57:16', '2021-09-09 01:43:48', 1),
(66, 'Adrien', 'Rabiot', '162739530003 220x220.jpg', 'Rabiot', 'rabiot@gmail.com', '$2y$10$qB/Z51pZoeSs4bhT3HtAJOS3.yMUmYvfxo3HzHurzsXQ96KnR1TCm', '4793593914', 'test', 'test', 'test', 'test', NULL, 0, '2021-08-23 20:58:36', 1, 1, '1b9728ee643470215930c17553cbef8a', 1, '2021-07-27 04:52:38', '2021-08-23 20:58:36', 0),
(67, 'Ivan', 'Rakitic', '162739662810 220x220.png', 'Rakitic', 'rakitic@gmail.com', '$2y$10$90ml19MpLpuzP87b4EQMD.hIwxko/.hQfmWCWgU4AbcIn6CFc8gaC', '1689583182', 'test', 'test', 'test', 'test', NULL, 1, '2021-08-23 20:56:02', 1, 1, 'a905b880975ec3652c2048abf9d41ee5', 1, '2021-07-27 05:32:14', '2021-09-06 23:25:18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_achievements`
--

CREATE TABLE `user_achievements` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_achievements`
--

INSERT INTO `user_achievements` (`id`, `user_id`, `language_id`, `title`, `count`, `serial_number`) VALUES
(11, 62, 62, 'Years of Experience', 12, 1),
(12, 62, 62, 'Satisfied Customes', 250, 2),
(13, 62, 62, 'Projects Completed', 800, 3),
(14, 62, 62, 'Countries', 70, 4),
(15, 62, 63, 'سنوات من الخبرة', 12, 1),
(16, 62, 63, 'جمارك راضية', 250, 2),
(17, 62, 63, 'المشاريع المنجزة', 800, 3),
(18, 62, 63, 'بلدان', 70, 4),
(19, 63, 64, 'Years of Experience', 12, 1),
(20, 63, 64, 'Satisfied Customes', 250, 2),
(21, 63, 64, 'Projects Completed', 800, 3),
(22, 63, 64, 'Countries', 70, 4),
(23, 63, 65, 'سنوات من الخبرة', 12, 1),
(24, 63, 65, 'جمارك راضية', 250, 2),
(25, 63, 65, 'المشاريع المنجزة', 800, 3),
(26, 63, 65, 'بلدان', 70, 4),
(27, 64, 66, 'Years of Experience', 12, 1),
(28, 64, 66, 'Satisfied Customes', 250, 2),
(29, 64, 66, 'Projects Completed', 800, 3),
(30, 64, 66, 'Countries', 70, 4),
(31, 64, 67, 'سنوات من الخبرة', 12, 1),
(32, 64, 67, 'جمارك راضية', 250, 2),
(33, 64, 67, 'المشاريع المنجزة', 800, 3),
(34, 64, 67, 'بلدان', 70, 4),
(35, 65, 68, 'Years of Experience', 12, 1),
(36, 65, 68, 'Satisfied Customes', 250, 2),
(37, 65, 68, 'Projects Completed', 800, 3),
(38, 65, 68, 'Countries', 70, 4),
(39, 65, 69, 'سنوات من الخبرة', 12, 1),
(40, 65, 69, 'جمارك راضية', 250, 2),
(41, 65, 69, 'المشاريع المنجزة', 800, 3),
(42, 65, 69, 'بلدان', 70, 4),
(43, 66, 70, 'Years of Experience', 12, 1),
(44, 66, 70, 'Satisfied Customes', 250, 2),
(45, 66, 70, 'Projects Completed', 800, 3),
(46, 66, 70, 'Countries', 70, 4),
(47, 66, 71, 'سنوات من الخبرة', 12, 1),
(48, 66, 71, 'جمارك راضية', 250, 2),
(49, 66, 71, 'المشاريع المنجزة', 800, 3),
(50, 66, 71, 'بلدان', 70, 4),
(51, 67, 72, 'Years of Experience', 12, 1),
(52, 67, 72, 'Satisfied Customes', 250, 2),
(53, 67, 72, 'Projects Completed', 800, 3),
(54, 67, 72, 'Countries', 70, 4),
(55, 67, 73, 'سنوات من الخبرة', 12, 1),
(56, 67, 73, 'جمارك راضية', 250, 2),
(57, 67, 73, 'المشاريع المنجزة', 800, 3),
(58, 67, 73, 'بلدان', 70, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_basic_settings`
--

CREATE TABLE `user_basic_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `favicon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preloader` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '4C3EC7',
  `theme` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'light' COMMENT 'light, dark',
  `user_id` int(11) NOT NULL,
  `qr_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_color` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '000000',
  `qr_size` int(11) NOT NULL DEFAULT 250,
  `qr_style` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'square',
  `qr_eye_style` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'square',
  `qr_margin` int(11) NOT NULL DEFAULT 0,
  `qr_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_text_color` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '000000',
  `qr_text_size` int(11) NOT NULL DEFAULT 15,
  `qr_text_x` int(11) NOT NULL DEFAULT 50,
  `qr_text_y` int(11) NOT NULL DEFAULT 50,
  `qr_inserted_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_inserted_image_size` int(11) NOT NULL DEFAULT 20,
  `qr_inserted_image_x` int(11) NOT NULL DEFAULT 50,
  `qr_inserted_image_y` int(11) NOT NULL DEFAULT 50,
  `qr_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default' COMMENT 'default, image, text	',
  `qr_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_basic_settings`
--

INSERT INTO `user_basic_settings` (`id`, `favicon`, `logo`, `preloader`, `cv`, `base_color`, `theme`, `user_id`, `qr_image`, `qr_color`, `qr_size`, `qr_style`, `qr_eye_style`, `qr_margin`, `qr_text`, `qr_text_color`, `qr_text_size`, `qr_text_x`, `qr_text_y`, `qr_inserted_image`, `qr_inserted_image_size`, `qr_inserted_image_x`, `qr_inserted_image_y`, `qr_type`, `qr_url`, `created_at`, `updated_at`) VALUES
(8, '60fe931084502.png', '60fe92120fba7.png', '60fe9223486dc.jpg', NULL, '4C3EC7', 'light', 62, '61382cb0503d1.png', '000000', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default', 'http://profilex.test/Romario', '2021-07-26 01:44:34', '2021-09-07 18:23:29'),
(9, '60fe931084502.png', '60fe92120fba7.png', '60ffd5eb7d3dc.jpg', NULL, '4C3EC7', 'dark', 63, NULL, '0', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default', NULL, '2021-07-26 01:44:34', '2021-07-27 00:46:19'),
(10, '60fe931084502.png', '60fe92120fba7.png', '60fe92123486dc.jpg', NULL, '4C3EC7', 'light', 62, NULL, '0', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default', NULL, '2021-07-26 01:44:34', '2021-07-26 01:50:59'),
(11, '60fe931084502.png', '60fe92120fba7.png', '60ffeeafc2617.jpg', NULL, '4C3EC7', 'dark', 64, NULL, '0', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default', NULL, '2021-07-27 02:31:59', '2021-07-27 02:31:59'),
(12, '60fe931084502.png', '60fe92120fba7.png', '610005afa2d07.png', NULL, '4C3EC7', 'light', 65, NULL, '0', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default', NULL, '2021-07-27 02:31:59', '2021-07-27 04:10:07'),
(13, '60fe931084502.png', '60fe92120fba7.png', '6100123c766e1.jpg', NULL, '4C3EC7', 'dark', 66, NULL, '0', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default', NULL, '2021-07-27 02:31:59', '2021-07-27 05:03:40'),
(14, '60fe931084502.png', '60fe92120fba7.png', '61001b4e40ffa.png', NULL, '4C3EC7', 'light', 67, NULL, '0', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default', NULL, '2021-07-27 02:31:59', '2021-07-27 05:42:22');

-- --------------------------------------------------------

--
-- Table structure for table `user_blogs`
--

CREATE TABLE `user_blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `language_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_blogs`
--

INSERT INTO `user_blogs` (`id`, `title`, `slug`, `image`, `content`, `serial_number`, `language_id`, `category_id`, `user_id`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(11, 'Lorem Ipsum is simply dummy text of the printing', 'lorem-ipsum-is-simply-dummy-text-of-the-printing', '1627288299.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 62, 12, 62, NULL, NULL, '2021-07-25 23:31:39', '2021-07-25 23:31:39'),
(12, 'It is a long established fact that a reader will be distracted', 'it-is-a-long-established-fact-that-a-reader-will-be-distracted', '1627288326.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 2, 62, 13, 62, NULL, NULL, '2021-07-25 23:32:06', '2021-07-25 23:32:06'),
(13, 'Contrary to popular belief, Lorem Ipsum is not simply', 'contrary-to-popular-belief,-lorem-ipsum-is-not-simply', '1627288350.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 3, 62, 14, 62, NULL, NULL, '2021-07-25 23:32:30', '2021-07-25 23:32:30'),
(14, 'There are many variations of passages of Lorem Ipsum', 'there-are-many-variations-of-passages-of-lorem-ipsum', '1627288376.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 4, 62, 12, 62, NULL, NULL, '2021-07-25 23:32:56', '2021-07-25 23:32:56'),
(15, 'Many desktop publishing packages and web page', 'many-desktop-publishing-packages-and-web-page', '1627288401.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 5, 62, 13, 62, NULL, NULL, '2021-07-25 23:33:21', '2021-07-25 23:33:21'),
(16, 'Richard McClintock, a Latin professor at Hampden-Sydney College', 'richard-mcclintock,-a-latin-professor-at-hampden-sydney-college', '1627288437.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 6, 62, 14, 62, NULL, NULL, '2021-07-25 23:33:57', '2021-07-25 23:33:57'),
(17, 'لوريم إيبسوم هو ببساطة نص شكلي للطباعة', 'لوريم-إيبسوم-هو-ببساطة-نص-شكلي-للطباعة', '1627288299.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 1, 63, 15, 62, NULL, NULL, '2021-07-25 23:31:39', '2021-07-25 23:31:39'),
(18, 'هناك حقيقة مثبتة منذ زمن طويل وهي أن القارئ سوف يشتت انتباهه', 'هناك-حقيقة-مثبتة-منذ-زمن-طويل-وهي-أن-القارئ-سوف-يشتت-انتباهه', '1627288326.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 2, 63, 16, 62, NULL, NULL, '2021-07-25 23:32:06', '2021-07-25 23:32:06'),
(19, 'خلافًا للاعتقاد الشائع ، فإن لوريم إيبسوم ليس ببساطة', 'خلافًا-للاعتقاد-الشائع-،-فإن-لوريم-إيبسوم-ليس-ببساطة', '1627288350.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 3, 63, 17, 62, NULL, NULL, '2021-07-25 23:32:30', '2021-07-25 23:32:30'),
(20, 'هناك العديد من الاختلافات في نصوص لوريم إيبسوم', 'هناك-العديد-من-الاختلافات-في-نصوص-لوريم-إيبسوم', '1627288376.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 4, 63, 15, 62, NULL, NULL, '2021-07-25 23:32:56', '2021-07-25 23:32:56'),
(21, 'العديد من حزم النشر المكتبي وصفحة الويب', 'العديد-من-حزم-النشر-المكتبي-وصفحة-الويب', '1627288401.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 5, 63, 16, 62, NULL, NULL, '2021-07-25 23:33:21', '2021-07-25 23:33:21'),
(22, 'ريتشارد مكلينتوك ، أستاذ اللغة اللاتينية في كلية هامبدن - سيدني', 'ريتشارد-مكلينتوك-،-أستاذ-اللغة-اللاتينية-في-كلية-هامبدن-سيدني', '1627288437.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 6, 63, 17, 62, NULL, NULL, '2021-07-25 23:33:57', '2021-07-25 23:33:57'),
(23, 'Lorem Ipsum is simply dummy text of the printing', 'lorem-ipsum-is-simply-dummy-text-of-the-printing', '1627288299.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 64, 18, 63, NULL, NULL, '2021-07-25 23:31:39', '2021-07-25 23:31:39'),
(24, 'It is a long established fact that a reader will be distracted', 'it-is-a-long-established-fact-that-a-reader-will-be-distracted', '1627288326.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 2, 64, 19, 63, NULL, NULL, '2021-07-25 23:32:06', '2021-07-25 23:32:06'),
(25, 'Contrary to popular belief, Lorem Ipsum is not simply', 'contrary-to-popular-belief,-lorem-ipsum-is-not-simply', '1627288350.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 3, 64, 20, 63, NULL, NULL, '2021-07-25 23:32:30', '2021-07-25 23:32:30'),
(26, 'There are many variations of passages of Lorem Ipsum', 'there-are-many-variations-of-passages-of-lorem-ipsum', '1627288376.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 4, 64, 18, 63, NULL, NULL, '2021-07-25 23:32:56', '2021-07-25 23:32:56'),
(27, 'Many desktop publishing packages and web page', 'many-desktop-publishing-packages-and-web-page', '1627288401.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 5, 64, 19, 63, NULL, NULL, '2021-07-25 23:33:21', '2021-07-25 23:33:21'),
(28, 'Richard McClintock, a Latin professor at Hampden-Sydney College', 'richard-mcclintock,-a-latin-professor-at-hampden-sydney-college', '1627288437.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 6, 64, 20, 63, NULL, NULL, '2021-07-25 23:33:57', '2021-07-25 23:33:57'),
(29, 'لوريم إيبسوم هو ببساطة نص شكلي للطباعة', 'لوريم-إيبسوم-هو-ببساطة-نص-شكلي-للطباعة', '1627288299.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 1, 65, 21, 63, NULL, NULL, '2021-07-25 23:31:39', '2021-07-25 23:31:39'),
(30, 'هناك حقيقة مثبتة منذ زمن طويل وهي أن القارئ سوف يشتت انتباهه', 'هناك-حقيقة-مثبتة-منذ-زمن-طويل-وهي-أن-القارئ-سوف-يشتت-انتباهه', '1627288326.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 2, 65, 22, 63, NULL, NULL, '2021-07-25 23:32:06', '2021-07-25 23:32:06'),
(31, 'خلافًا للاعتقاد الشائع ، فإن لوريم إيبسوم ليس ببساطة', 'خلافًا-للاعتقاد-الشائع-،-فإن-لوريم-إيبسوم-ليس-ببساطة', '1627288350.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 3, 65, 23, 63, NULL, NULL, '2021-07-25 23:32:30', '2021-07-25 23:32:30'),
(32, 'هناك العديد من الاختلافات في نصوص لوريم إيبسوم', 'هناك-العديد-من-الاختلافات-في-نصوص-لوريم-إيبسوم', '1627288376.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 4, 65, 21, 63, NULL, NULL, '2021-07-25 23:32:56', '2021-07-25 23:32:56'),
(33, 'العديد من حزم النشر المكتبي وصفحة الويب', 'العديد-من-حزم-النشر-المكتبي-وصفحة-الويب', '1627288401.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 5, 65, 22, 63, NULL, NULL, '2021-07-25 23:33:21', '2021-07-25 23:33:21'),
(34, 'ريتشارد مكلينتوك ، أستاذ اللغة اللاتينية في كلية هامبدن - سيدني', 'ريتشارد-مكلينتوك-،-أستاذ-اللغة-اللاتينية-في-كلية-هامبدن-سيدني', '1627288437.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 6, 65, 23, 63, NULL, NULL, '2021-07-25 23:33:57', '2021-07-25 23:33:57'),
(35, 'Lorem Ipsum is simply dummy text of the printing', 'lorem-ipsum-is-simply-dummy-text-of-the-printing', '1627288299.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 66, 24, 64, NULL, NULL, '2021-07-25 23:31:39', '2021-07-25 23:31:39'),
(36, 'It is a long established fact that a reader will be distracted', 'it-is-a-long-established-fact-that-a-reader-will-be-distracted', '1627288326.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 2, 66, 25, 64, NULL, NULL, '2021-07-25 23:32:06', '2021-07-25 23:32:06'),
(37, 'Contrary to popular belief, Lorem Ipsum is not simply', 'contrary-to-popular-belief,-lorem-ipsum-is-not-simply', '1627288350.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 3, 66, 26, 64, NULL, NULL, '2021-07-25 23:32:30', '2021-07-25 23:32:30'),
(38, 'There are many variations of passages of Lorem Ipsum', 'there-are-many-variations-of-passages-of-lorem-ipsum', '1627288376.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 4, 66, 24, 64, NULL, NULL, '2021-07-25 23:32:56', '2021-07-25 23:32:56'),
(39, 'Many desktop publishing packages and web page', 'many-desktop-publishing-packages-and-web-page', '1627288401.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 5, 66, 25, 64, NULL, NULL, '2021-07-25 23:33:21', '2021-07-25 23:33:21'),
(40, 'Richard McClintock, a Latin professor at Hampden-Sydney College', 'richard-mcclintock,-a-latin-professor-at-hampden-sydney-college', '1627288437.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 6, 66, 26, 64, NULL, NULL, '2021-07-25 23:33:57', '2021-07-25 23:33:57'),
(41, 'لوريم إيبسوم هو ببساطة نص شكلي للطباعة', 'لوريم-إيبسوم-هو-ببساطة-نص-شكلي-للطباعة', '1627288299.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 1, 67, 27, 64, NULL, NULL, '2021-07-25 23:31:39', '2021-07-25 23:31:39'),
(42, 'هناك حقيقة مثبتة منذ زمن طويل وهي أن القارئ سوف يشتت انتباهه', 'هناك-حقيقة-مثبتة-منذ-زمن-طويل-وهي-أن-القارئ-سوف-يشتت-انتباهه', '1627288326.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 2, 67, 28, 64, NULL, NULL, '2021-07-25 23:32:06', '2021-07-25 23:32:06'),
(43, 'خلافًا للاعتقاد الشائع ، فإن لوريم إيبسوم ليس ببساطة', 'خلافًا-للاعتقاد-الشائع-،-فإن-لوريم-إيبسوم-ليس-ببساطة', '1627288350.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 3, 67, 29, 64, NULL, NULL, '2021-07-25 23:32:30', '2021-07-25 23:32:30'),
(44, 'هناك العديد من الاختلافات في نصوص لوريم إيبسوم', 'هناك-العديد-من-الاختلافات-في-نصوص-لوريم-إيبسوم', '1627288376.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 4, 67, 27, 64, NULL, NULL, '2021-07-25 23:32:56', '2021-07-25 23:32:56'),
(45, 'العديد من حزم النشر المكتبي وصفحة الويب', 'العديد-من-حزم-النشر-المكتبي-وصفحة-الويب', '1627288401.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 5, 67, 28, 64, NULL, NULL, '2021-07-25 23:33:21', '2021-07-25 23:33:21'),
(46, 'ريتشارد مكلينتوك ، أستاذ اللغة اللاتينية في كلية هامبدن - سيدني', 'ريتشارد-مكلينتوك-،-أستاذ-اللغة-اللاتينية-في-كلية-هامبدن-سيدني', '1627288437.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 6, 67, 29, 64, NULL, NULL, '2021-07-25 23:33:57', '2021-07-25 23:33:57'),
(47, 'Lorem Ipsum is simply dummy text of the printing', 'lorem-ipsum-is-simply-dummy-text-of-the-printing', '1627288299.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 68, 30, 65, NULL, NULL, '2021-07-25 23:31:39', '2021-07-25 23:31:39'),
(48, 'It is a long established fact that a reader will be distracted', 'it-is-a-long-established-fact-that-a-reader-will-be-distracted', '1627288326.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 2, 68, 31, 65, NULL, NULL, '2021-07-25 23:32:06', '2021-07-25 23:32:06'),
(49, 'Contrary to popular belief, Lorem Ipsum is not simply', 'contrary-to-popular-belief,-lorem-ipsum-is-not-simply', '1627288350.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 3, 68, 32, 65, NULL, NULL, '2021-07-25 23:32:30', '2021-07-25 23:32:30'),
(50, 'There are many variations of passages of Lorem Ipsum', 'there-are-many-variations-of-passages-of-lorem-ipsum', '1627288376.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 4, 68, 30, 65, NULL, NULL, '2021-07-25 23:32:56', '2021-07-25 23:32:56'),
(51, 'Many desktop publishing packages and web page', 'many-desktop-publishing-packages-and-web-page', '1627288401.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 5, 68, 31, 65, NULL, NULL, '2021-07-25 23:33:21', '2021-07-25 23:33:21'),
(52, 'Richard McClintock, a Latin professor at Hampden-Sydney College', 'richard-mcclintock,-a-latin-professor-at-hampden-sydney-college', '1627288437.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 6, 68, 32, 65, NULL, NULL, '2021-07-25 23:33:57', '2021-07-25 23:33:57'),
(53, 'لوريم إيبسوم هو ببساطة نص شكلي للطباعة', 'لوريم-إيبسوم-هو-ببساطة-نص-شكلي-للطباعة', '1627288299.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 1, 69, 33, 65, NULL, NULL, '2021-07-25 23:31:39', '2021-07-25 23:31:39'),
(54, 'هناك حقيقة مثبتة منذ زمن طويل وهي أن القارئ سوف يشتت انتباهه', 'هناك-حقيقة-مثبتة-منذ-زمن-طويل-وهي-أن-القارئ-سوف-يشتت-انتباهه', '1627288326.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 2, 69, 34, 65, NULL, NULL, '2021-07-25 23:32:06', '2021-07-25 23:32:06'),
(55, 'خلافًا للاعتقاد الشائع ، فإن لوريم إيبسوم ليس ببساطة', 'خلافًا-للاعتقاد-الشائع-،-فإن-لوريم-إيبسوم-ليس-ببساطة', '1627288350.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 3, 69, 35, 65, NULL, NULL, '2021-07-25 23:32:30', '2021-07-25 23:32:30'),
(56, 'هناك العديد من الاختلافات في نصوص لوريم إيبسوم', 'هناك-العديد-من-الاختلافات-في-نصوص-لوريم-إيبسوم', '1627288376.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 4, 69, 33, 65, NULL, NULL, '2021-07-25 23:32:56', '2021-07-25 23:32:56'),
(57, 'العديد من حزم النشر المكتبي وصفحة الويب', 'العديد-من-حزم-النشر-المكتبي-وصفحة-الويب', '1627288401.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 5, 69, 34, 65, NULL, NULL, '2021-07-25 23:33:21', '2021-07-25 23:33:21'),
(58, 'ريتشارد مكلينتوك ، أستاذ اللغة اللاتينية في كلية هامبدن - سيدني', 'ريتشارد-مكلينتوك-،-أستاذ-اللغة-اللاتينية-في-كلية-هامبدن-سيدني', '1627288437.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 6, 69, 35, 65, NULL, NULL, '2021-07-25 23:33:57', '2021-07-25 23:33:57'),
(59, 'Lorem Ipsum is simply dummy text of the printing', 'lorem-ipsum-is-simply-dummy-text-of-the-printing', '1627288299.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 70, 36, 66, NULL, NULL, '2021-07-25 23:31:39', '2021-07-25 23:31:39'),
(60, 'It is a long established fact that a reader will be distracted', 'it-is-a-long-established-fact-that-a-reader-will-be-distracted', '1627288326.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 2, 70, 37, 66, NULL, NULL, '2021-07-25 23:32:06', '2021-07-25 23:32:06'),
(61, 'Contrary to popular belief, Lorem Ipsum is not simply', 'contrary-to-popular-belief,-lorem-ipsum-is-not-simply', '1627288350.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 3, 70, 38, 66, NULL, NULL, '2021-07-25 23:32:30', '2021-07-25 23:32:30'),
(62, 'There are many variations of passages of Lorem Ipsum', 'there-are-many-variations-of-passages-of-lorem-ipsum', '1627288376.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 4, 70, 36, 66, NULL, NULL, '2021-07-25 23:32:56', '2021-07-25 23:32:56'),
(63, 'Many desktop publishing packages and web page', 'many-desktop-publishing-packages-and-web-page', '1627288401.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 5, 70, 37, 66, NULL, NULL, '2021-07-25 23:33:21', '2021-07-25 23:33:21'),
(64, 'Richard McClintock, a Latin professor at Hampden-Sydney College', 'richard-mcclintock,-a-latin-professor-at-hampden-sydney-college', '1627288437.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 6, 70, 38, 66, NULL, NULL, '2021-07-25 23:33:57', '2021-07-25 23:33:57');
INSERT INTO `user_blogs` (`id`, `title`, `slug`, `image`, `content`, `serial_number`, `language_id`, `category_id`, `user_id`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(65, 'لوريم إيبسوم هو ببساطة نص شكلي للطباعة', 'لوريم-إيبسوم-هو-ببساطة-نص-شكلي-للطباعة', '1627288299.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 1, 71, 39, 66, NULL, NULL, '2021-07-25 23:31:39', '2021-07-25 23:31:39'),
(66, 'هناك حقيقة مثبتة منذ زمن طويل وهي أن القارئ سوف يشتت انتباهه', 'هناك-حقيقة-مثبتة-منذ-زمن-طويل-وهي-أن-القارئ-سوف-يشتت-انتباهه', '1627288326.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 2, 71, 40, 66, NULL, NULL, '2021-07-25 23:32:06', '2021-07-25 23:32:06'),
(67, 'خلافًا للاعتقاد الشائع ، فإن لوريم إيبسوم ليس ببساطة', 'خلافًا-للاعتقاد-الشائع-،-فإن-لوريم-إيبسوم-ليس-ببساطة', '1627288350.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 3, 71, 41, 66, NULL, NULL, '2021-07-25 23:32:30', '2021-07-25 23:32:30'),
(68, 'هناك العديد من الاختلافات في نصوص لوريم إيبسوم', 'هناك-العديد-من-الاختلافات-في-نصوص-لوريم-إيبسوم', '1627288376.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 4, 71, 39, 66, NULL, NULL, '2021-07-25 23:32:56', '2021-07-25 23:32:56'),
(69, 'العديد من حزم النشر المكتبي وصفحة الويب', 'العديد-من-حزم-النشر-المكتبي-وصفحة-الويب', '1627288401.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 5, 71, 40, 66, NULL, NULL, '2021-07-25 23:33:21', '2021-07-25 23:33:21'),
(70, 'ريتشارد مكلينتوك ، أستاذ اللغة اللاتينية في كلية هامبدن - سيدني', 'ريتشارد-مكلينتوك-،-أستاذ-اللغة-اللاتينية-في-كلية-هامبدن-سيدني', '1627288437.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 6, 71, 41, 66, NULL, NULL, '2021-07-25 23:33:57', '2021-07-25 23:33:57'),
(71, 'Lorem Ipsum is simply dummy text of the printing', 'lorem-ipsum-is-simply-dummy-text-of-the-printing', '1627288299.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 72, 42, 67, NULL, NULL, '2021-07-25 23:31:39', '2021-07-25 23:31:39'),
(72, 'It is a long established fact that a reader will be distracted', 'it-is-a-long-established-fact-that-a-reader-will-be-distracted', '1627288326.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 2, 72, 43, 67, NULL, NULL, '2021-07-25 23:32:06', '2021-07-25 23:32:06'),
(73, 'Contrary to popular belief, Lorem Ipsum is not simply', 'contrary-to-popular-belief,-lorem-ipsum-is-not-simply', '1627288350.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 3, 72, 44, 67, NULL, NULL, '2021-07-25 23:32:30', '2021-07-25 23:32:30'),
(74, 'There are many variations of passages of Lorem Ipsum', 'there-are-many-variations-of-passages-of-lorem-ipsum', '1627288376.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 4, 72, 42, 67, NULL, NULL, '2021-07-25 23:32:56', '2021-07-25 23:32:56'),
(75, 'Many desktop publishing packages and web page', 'many-desktop-publishing-packages-and-web-page', '1627288401.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 5, 72, 43, 67, NULL, NULL, '2021-07-25 23:33:21', '2021-07-25 23:33:21'),
(76, 'Richard McClintock, a Latin professor at Hampden-Sydney College', 'richard-mcclintock,-a-latin-professor-at-hampden-sydney-college', '1627288437.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 6, 72, 44, 67, NULL, NULL, '2021-07-25 23:33:57', '2021-07-25 23:33:57'),
(77, 'لوريم إيبسوم هو ببساطة نص شكلي للطباعة', 'لوريم-إيبسوم-هو-ببساطة-نص-شكلي-للطباعة', '1627288299.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 1, 73, 45, 67, NULL, NULL, '2021-07-25 23:31:39', '2021-07-25 23:31:39'),
(78, 'هناك حقيقة مثبتة منذ زمن طويل وهي أن القارئ سوف يشتت انتباهه', 'هناك-حقيقة-مثبتة-منذ-زمن-طويل-وهي-أن-القارئ-سوف-يشتت-انتباهه', '1627288326.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 2, 73, 46, 67, NULL, NULL, '2021-07-25 23:32:06', '2021-07-25 23:32:06'),
(79, 'خلافًا للاعتقاد الشائع ، فإن لوريم إيبسوم ليس ببساطة', 'خلافًا-للاعتقاد-الشائع-،-فإن-لوريم-إيبسوم-ليس-ببساطة', '1627288350.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 3, 73, 47, 67, NULL, NULL, '2021-07-25 23:32:30', '2021-07-25 23:32:30'),
(80, 'هناك العديد من الاختلافات في نصوص لوريم إيبسوم', 'هناك-العديد-من-الاختلافات-في-نصوص-لوريم-إيبسوم', '1627288376.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 4, 73, 45, 67, NULL, NULL, '2021-07-25 23:32:56', '2021-07-25 23:32:56'),
(81, 'العديد من حزم النشر المكتبي وصفحة الويب', 'العديد-من-حزم-النشر-المكتبي-وصفحة-الويب', '1627288401.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 5, 73, 46, 67, NULL, NULL, '2021-07-25 23:33:21', '2021-07-25 23:33:21'),
(82, 'ريتشارد مكلينتوك ، أستاذ اللغة اللاتينية في كلية هامبدن - سيدني', 'ريتشارد-مكلينتوك-،-أستاذ-اللغة-اللاتينية-في-كلية-هامبدن-سيدني', '1627288437.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 6, 73, 47, 67, NULL, NULL, '2021-07-25 23:33:57', '2021-07-25 23:33:57');

-- --------------------------------------------------------

--
-- Table structure for table `user_blog_categories`
--

CREATE TABLE `user_blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `language_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_blog_categories`
--

INSERT INTO `user_blog_categories` (`id`, `name`, `status`, `language_id`, `user_id`, `serial_number`, `created_at`, `updated_at`) VALUES
(12, 'Tech', 1, 62, 62, 1, '2021-07-25 23:21:31', '2021-07-25 23:21:31'),
(13, 'Lifestyle', 1, 62, 62, 2, '2021-07-25 23:21:45', '2021-07-25 23:21:45'),
(14, 'MISC', 1, 62, 62, 3, '2021-07-25 23:21:54', '2021-07-25 23:21:54'),
(15, 'تقنية', 1, 63, 62, 1, '2021-07-25 23:21:31', '2021-07-25 23:21:31'),
(16, 'أسلوب الحياة', 1, 63, 62, 2, '2021-07-25 23:21:45', '2021-07-25 23:21:45'),
(17, 'متفرقات', 1, 63, 62, 3, '2021-07-25 23:21:54', '2021-07-25 23:21:54'),
(18, 'Tech', 1, 64, 63, 1, '2021-07-25 23:21:31', '2021-07-25 23:21:31'),
(19, 'Lifestyle', 1, 64, 63, 2, '2021-07-25 23:21:45', '2021-07-25 23:21:45'),
(20, 'MISC', 1, 64, 63, 3, '2021-07-25 23:21:54', '2021-07-25 23:21:54'),
(21, 'تقنية', 1, 65, 63, 1, '2021-07-25 23:21:31', '2021-07-25 23:21:31'),
(22, 'أسلوب الحياة', 1, 65, 63, 2, '2021-07-25 23:21:45', '2021-07-25 23:21:45'),
(23, 'متفرقات', 1, 65, 63, 3, '2021-07-25 23:21:54', '2021-07-25 23:21:54'),
(24, 'Tech', 1, 66, 64, 1, '2021-07-25 23:21:31', '2021-07-25 23:21:31'),
(25, 'Lifestyle', 1, 66, 64, 2, '2021-07-25 23:21:45', '2021-07-25 23:21:45'),
(26, 'MISC', 1, 66, 64, 3, '2021-07-25 23:21:54', '2021-07-25 23:21:54'),
(27, 'تقنية', 1, 67, 64, 1, '2021-07-25 23:21:31', '2021-07-25 23:21:31'),
(28, 'أسلوب الحياة', 1, 67, 64, 2, '2021-07-25 23:21:45', '2021-07-25 23:21:45'),
(29, 'متفرقات', 1, 67, 64, 3, '2021-07-25 23:21:54', '2021-07-25 23:21:54'),
(30, 'Tech', 1, 68, 65, 1, '2021-07-25 23:21:31', '2021-07-25 23:21:31'),
(31, 'Lifestyle', 1, 68, 65, 2, '2021-07-25 23:21:45', '2021-07-25 23:21:45'),
(32, 'MISC', 1, 68, 65, 3, '2021-07-25 23:21:54', '2021-07-25 23:21:54'),
(33, 'تقنية', 1, 69, 65, 1, '2021-07-25 23:21:31', '2021-07-25 23:21:31'),
(34, 'أسلوب الحياة', 1, 69, 65, 2, '2021-07-25 23:21:45', '2021-07-25 23:21:45'),
(35, 'متفرقات', 1, 69, 65, 3, '2021-07-25 23:21:54', '2021-07-25 23:21:54'),
(36, 'Tech', 1, 70, 66, 1, '2021-07-25 23:21:31', '2021-07-25 23:21:31'),
(37, 'Lifestyle', 1, 70, 66, 2, '2021-07-25 23:21:45', '2021-07-25 23:21:45'),
(38, 'MISC', 1, 70, 66, 3, '2021-07-25 23:21:54', '2021-07-25 23:21:54'),
(39, 'تقنية', 1, 71, 66, 1, '2021-07-25 23:21:31', '2021-07-25 23:21:31'),
(40, 'أسلوب الحياة', 1, 71, 66, 2, '2021-07-25 23:21:45', '2021-07-25 23:21:45'),
(41, 'متفرقات', 1, 71, 66, 3, '2021-07-25 23:21:54', '2021-07-25 23:21:54'),
(42, 'Tech', 1, 72, 67, 1, '2021-07-25 23:21:31', '2021-07-25 23:21:31'),
(43, 'Lifestyle', 1, 72, 67, 2, '2021-07-25 23:21:45', '2021-07-25 23:21:45'),
(44, 'MISC', 1, 72, 67, 3, '2021-07-25 23:21:54', '2021-07-25 23:21:54'),
(45, 'تقنية', 1, 73, 67, 1, '2021-07-25 23:21:31', '2021-07-25 23:21:31'),
(46, 'أسلوب الحياة', 1, 73, 67, 2, '2021-07-25 23:21:45', '2021-07-25 23:21:45'),
(47, 'متفرقات', 1, 73, 67, 3, '2021-07-25 23:21:54', '2021-07-25 23:21:54');

-- --------------------------------------------------------

--
-- Table structure for table `user_custom_domains`
--

CREATE TABLE `user_custom_domains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `requested_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0 - Pending, 1 - Connected, 2 - Rejected, 3 - Removed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_custom_domains`
--

INSERT INTO `user_custom_domains` (`id`, `user_id`, `requested_domain`, `current_domain`, `created_at`, `updated_at`, `status`) VALUES
(59, 62, 'customer.tattoo', '0', '2021-09-07 18:38:50', '2021-09-07 18:39:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_cvs`
--

CREATE TABLE `user_cvs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cv_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direction` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - LTR, 2 - RTL',
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv_information` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contact_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Contact Information',
  `template` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - template 1, 2 - template 2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_cvs`
--

INSERT INTO `user_cvs` (`id`, `user_id`, `cv_name`, `direction`, `image`, `name`, `occupation`, `base_color`, `cv_information`, `created_at`, `updated_at`, `contact_title`, `template`) VALUES
(9, 62, 'Full Stack Web Developer', 1, '612fac4bd4671.jpg', 'Alan Walker', 'Full Stack Web Developer', 'F4B0AE', '[{\"icon\":\"fas fa-phone\",\"color\":\"FF0000\",\"content\":\"+874307266\"},{\"icon\":\"far fa-envelope\",\"color\":\"00A19D\",\"content\":\"alan@gmail.com\"},{\"icon\":\"far fa-address-book\",\"color\":\"B42B51\",\"content\":\"California, USA\"},{\"icon\":\"fas fa-code-branch\",\"color\":\"2D46B9\",\"content\":\"https:\\/\\/github.com\\/\"},{\"icon\":\"fab fa-linkedin-in\",\"color\":\"2DB554\",\"content\":\"https:\\/\\/www.linkedin.com\\/\"},{\"icon\":\"fab fa-behance\",\"color\":\"A6607D\",\"content\":\"https:\\/\\/www.behance.net\\/\"}]', '2021-09-01 07:37:31', '2021-09-05 04:50:13', 'Contact Info', 1),
(10, 62, 'Graphic Designer', 1, '61306b0ac5cb5.jpg', 'Gianluigi Chiesa', 'Graphic Designer', '00B24F', '[{\"icon\":\"fas fa-phone\",\"color\":\"FF2D59\",\"content\":\"+874307266\"},{\"icon\":\"far fa-envelope\",\"color\":\"0C2904\",\"content\":\"alan@gmail.com\"},{\"icon\":\"far fa-address-book\",\"color\":\"FF459E\",\"content\":\"California, USA\"},{\"icon\":\"fas fa-code-branch\",\"color\":\"131313\",\"content\":\"https:\\/\\/github.com\\/\"},{\"icon\":\"fab fa-linkedin-in\",\"color\":\"254BFF\",\"content\":\"https:\\/\\/www.linkedin.com\\/\"},{\"icon\":\"fab fa-dribbble\",\"color\":\"6874FF\",\"content\":\"https:\\/\\/dribbble.com\\/\"}]', '2021-09-01 07:37:31', '2021-09-05 04:52:25', 'Contact Information', 2),
(16, 62, 'مطور ويب كامل المكدس', 2, '612fac4bd4671.jpg', 'آلان ووكر', 'مطور ويب كامل المكدس', 'F4B0AE', '[{\"icon\":\"fas fa-phone\",\"color\":\"FF0000\",\"content\":\"+874307266\"},{\"icon\":\"far fa-envelope\",\"color\":\"00A19D\",\"content\":\"alan@gmail.com\"},{\"icon\":\"far fa-address-book\",\"color\":\"B42B51\",\"content\":\"\\u0643\\u0627\\u0644\\u064a\\u0641\\u0648\\u0631\\u0646\\u064a\\u0627\\u060c \\u0627\\u0644\\u0648\\u0644\\u0627\\u064a\\u0627\\u062a \\u0627\\u0644\\u0645\\u062a\\u062d\\u062f\\u0629 \\u0627\\u0644\\u0623\\u0645\\u0631\\u064a\\u0643\\u064a\\u0629\"},{\"icon\":\"fas fa-code-branch\",\"color\":\"2D46B9\",\"content\":\"<span dir=\\\"ltr\\\">https:\\/\\/github.com\\/<\\/span>\"},{\"icon\":\"fab fa-linkedin-in\",\"color\":\"2DB554\",\"content\":\"<span dir=\\\"ltr\\\">https:\\/\\/www.linkedin.com\\/<\\/span>\"},{\"icon\":\"fab fa-behance\",\"color\":\"A6607D\",\"content\":\"<span dir=\\\"ltr\\\">https:\\/\\/www.behance.net\\/<\\/span>\"}]', '2021-09-01 07:37:31', '2021-09-07 06:34:15', 'معلومات الاتصال', 1),
(17, 62, 'फुल स्टैक वेब डेवलपर', 1, '612fac4bd4671.jpg', 'एलन वॉकर', 'फुल स्टैक वेब डेवलपर', 'F4B0AE', '[{\"icon\":\"fas fa-phone\",\"color\":\"FF0000\",\"content\":\"+874307266\"},{\"icon\":\"far fa-envelope\",\"color\":\"00A19D\",\"content\":\"alan@gmail.com\"},{\"icon\":\"far fa-address-book\",\"color\":\"B42B51\",\"content\":\"California, USA\"},{\"icon\":\"fas fa-code-branch\",\"color\":\"2D46B9\",\"content\":\"https:\\/\\/github.com\\/\"},{\"icon\":\"fab fa-linkedin-in\",\"color\":\"2DB554\",\"content\":\"https:\\/\\/www.linkedin.com\\/\"},{\"icon\":\"fab fa-behance\",\"color\":\"A6607D\",\"content\":\"https:\\/\\/www.behance.net\\/\"}]', '2021-09-01 07:37:31', '2021-09-06 01:40:44', 'संपर्क सूचना', 1),
(20, 62, 'مطور ويب كامل المكدس', 2, '6138207b0ab5f.jpg', 'آلان ووكر', 'مطور ويب كامل المكدس', '00A19D', '[{\"icon\":\"fas fa-phone\",\"color\":\"FF0000\",\"content\":\"+874307266\"},{\"icon\":\"far fa-envelope\",\"color\":\"00A19D\",\"content\":\"alan@gmail.com\"},{\"icon\":\"far fa-address-book\",\"color\":\"B42B51\",\"content\":\"\\u0643\\u0627\\u0644\\u064a\\u0641\\u0648\\u0631\\u0646\\u064a\\u0627\\u060c \\u0627\\u0644\\u0648\\u0644\\u0627\\u064a\\u0627\\u062a \\u0627\\u0644\\u0645\\u062a\\u062d\\u062f\\u0629 \\u0627\\u0644\\u0623\\u0645\\u0631\\u064a\\u0643\\u064a\\u0629\"},{\"icon\":\"fas fa-code-branch\",\"color\":\"2D46B9\",\"content\":\"<span dir=\\\"ltr\\\">https:\\/\\/github.com\\/<\\/span>\"},{\"icon\":\"fab fa-linkedin-in\",\"color\":\"2DB554\",\"content\":\"<span dir=\\\"ltr\\\">https:\\/\\/www.linkedin.com\\/<\\/span>\"},{\"icon\":\"fab fa-behance\",\"color\":\"A6607D\",\"content\":\"<span dir=\\\"ltr\\\">https:\\/\\/www.behance.net\\/<\\/span>\"}]', '2021-09-01 07:37:31', '2021-09-07 18:06:05', 'معلومات الاتصال', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_cv_sections`
--

CREATE TABLE `user_cv_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_cv_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `column` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - left, 2 - right',
  `order` tinyint(4) NOT NULL DEFAULT 1,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_cv_sections`
--

INSERT INTO `user_cv_sections` (`id`, `user_cv_id`, `name`, `icon`, `column`, `order`, `content`, `created_at`, `updated_at`) VALUES
(13, 9, 'Objective', 'fas fa-info-circle', 1, 1, '[{\"left_border\":\"0\",\"duration\":null,\"title\":null,\"subtitle\":null,\"description\":\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi\",\"newLines\":\"0\"}]', '2021-09-01 08:05:30', '2021-09-01 19:50:06'),
(14, 9, 'Education', 'fas fa-graduation-cap', 2, 2, '[{\"left_border\":\"1\",\"duration\":\"Oct 2010 - May 2011\",\"title\":\"Secondary School Certificate\",\"subtitle\":\"California High School\",\"description\":\"- Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":\"Oct 2011 - May 2012\",\"title\":\"Higher Secondary Certificate\",\"subtitle\":\"Texas College\",\"description\":\"- Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":\"Oct 2013 - May 2017\",\"title\":\"Bachelor of Sciences\",\"subtitle\":\"Newyork University\",\"description\":\"Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur\",\"newLines\":\"0\"}]', '2021-09-01 08:05:47', '2021-09-05 00:52:46'),
(17, 9, 'Work Experience', 'fas fa-briefcase', 2, 3, '[{\"left_border\":\"1\",\"duration\":\"Oct 2018 - May 2021\",\"title\":\"Python Developer\",\"subtitle\":\"Google\",\"description\":\"- At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":\"Oct 2021 - May 2023\",\"title\":\"C# Game Developer\",\"subtitle\":\"EA Sports\",\"description\":\"- Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil\\r\\n- Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":\"Oct 2023 - Present\",\"title\":\"PWA Developer\",\"subtitle\":\"Twitter\",\"description\":\"- every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures\",\"newLines\":\"0\"}]', '2021-09-01 19:53:07', '2021-09-05 22:44:13'),
(18, 9, 'Projects', 'fas fa-desktop', 2, 4, '[{\"left_border\":\"1\",\"duration\":null,\"title\":\"Laravel Classified Website\",\"subtitle\":null,\"description\":\"- voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet \\r\\n- Project Link: https:\\/\\/example.com\\/\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":null,\"title\":\"Photo Sharing PWA Platform\",\"subtitle\":null,\"description\":\"- voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et\\r\\n- Project Link: https:\\/\\/example.com\\/\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":null,\"title\":\"Social Networking Python Platform\",\"subtitle\":null,\"description\":\"- voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam\\r\\n- Project Link: https:\\/\\/example.com\\/\",\"newLines\":\"0\"}]', '2021-09-01 19:53:41', '2021-09-01 20:17:51'),
(19, 9, 'Skills', 'fas fa-wrench', 1, 5, '[{\"left_border\":\"0\",\"duration\":null,\"title\":null,\"subtitle\":null,\"description\":\"- Laravel, Vue.js, HTML5, CSS3, Vanilla Javascript, PHP, jQuery, PWA, PSD to HTML, Python, Node.js\",\"newLines\":\"0\"}]', '2021-09-01 20:12:28', '2021-09-05 04:44:16'),
(20, 9, 'Awards', 'fas fa-trophy', 2, 6, '[{\"left_border\":\"0\",\"duration\":\"10th Oct, 2015\",\"title\":\"8th in ICPC Contest\",\"subtitle\":null,\"description\":\"- omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae\",\"newLines\":\"0\"}]', '2021-09-01 20:15:12', '2021-09-05 04:45:41'),
(21, 10, 'Objective', 'fas fa-info-circle', 1, 1, '[{\"left_border\":\"0\",\"duration\":null,\"title\":null,\"subtitle\":null,\"description\":\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi\",\"newLines\":\"0\"}]', '2021-09-01 08:05:30', '2021-09-05 07:30:10'),
(22, 10, 'Education', 'fas fa-graduation-cap', 1, 2, '[{\"left_border\":\"1\",\"duration\":\"Oct 2010 - May 2011\",\"title\":\"Secondary School Certificate\",\"subtitle\":\"California High School\",\"description\":\"- Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod. Et harum quidem rerum facilis est et expedita distinctio. . Et harum quidem rerum facilis est et expedita distinctio.\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":\"Oct 2011 - May 2012\",\"title\":\"Higher Secondary Certificate\",\"subtitle\":\"Texas College\",\"description\":\"- Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco. sed do eiusmod\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":\"Oct 2013 - May 2017\",\"title\":\"Bachelor of Sciences\",\"subtitle\":\"Newyork University\",\"description\":\"Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur\\r\\nNor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occurNor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occurNor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occurNor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur\",\"newLines\":\"0\"}]', '2021-09-01 08:05:47', '2021-09-05 22:21:58'),
(23, 10, 'Work Experience', 'fas fa-briefcase', 1, 3, '[{\"left_border\":\"1\",\"duration\":\"Oct 2018 - May 2021\",\"title\":\"Python Developer\",\"subtitle\":\"Google\",\"description\":\"- At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":\"Oct 2021 - May 2023\",\"title\":\"C# Game Developer\",\"subtitle\":\"EA Sports\",\"description\":\"- Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil\\r\\n- Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":\"Oct 2023 - Present\",\"title\":\"PWA Developer\",\"subtitle\":\"Twitter\",\"description\":\"- every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures\\r\\n- At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati\",\"newLines\":\"0\"}]', '2021-09-01 19:53:07', '2021-09-05 22:43:32'),
(24, 10, 'Projects', 'fas fa-desktop', 2, 4, '[{\"left_border\":\"1\",\"duration\":null,\"title\":\"Laravel Classified Website\",\"subtitle\":null,\"description\":\"- voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet . voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet .\\r\\n- Project Link: https:\\/\\/example.com\\/\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":null,\"title\":\"Social Networking Python Platform\",\"subtitle\":null,\"description\":\"- voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam\\r\\n- Project Link: https:\\/\\/example.com\\/\",\"newLines\":\"0\"}]', '2021-09-01 19:53:41', '2021-09-05 07:16:11'),
(25, 10, 'Skills', 'fas fa-wrench', 2, 5, '[{\"left_border\":\"0\",\"duration\":null,\"title\":null,\"subtitle\":null,\"description\":\"- Laravel, Vue.js, HTML5, CSS3, Vanilla Javascript, PHP, jQuery, PWA, PSD to HTML, Python, Node.js\",\"newLines\":\"0\"}]', '2021-09-01 20:12:28', '2021-09-05 02:08:02'),
(26, 10, 'Conpetitions & Awards', 'fas fa-trophy', 2, 6, '[{\"left_border\":\"1\",\"duration\":\"10th Oct, 2015\",\"title\":\"8th in ICPC Contest\",\"subtitle\":null,\"description\":\"- omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":\"17th Aug, 2016\",\"title\":\"University Rover Challenge\",\"subtitle\":null,\"description\":\"- omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae\\r\\n- indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":\"24th Mar, 2018\",\"title\":\"Backpack Hackathon\",\"subtitle\":null,\"description\":\"- omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae\",\"newLines\":\"0\"}]', '2021-09-01 20:15:12', '2021-09-05 02:08:02'),
(36, 16, 'موضوعي', 'fas fa-info-circle', 1, 1, '[{\"left_border\":\"0\",\"duration\":null,\"title\":null,\"subtitle\":null,\"description\":\"\\u0648\\u0644\\u0643\\u0646 \\u0644\\u0643\\u064a \\u062a\\u0641\\u0647\\u0645 \\u0645\\u0646 \\u0623\\u064a\\u0646 \\u0648\\u0644\\u062f \\u0643\\u0644 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u062e\\u0637\\u0623 \\u060c \\u0641\\u0625\\u0646 \\u0644\\u0630\\u0629 \\u0627\\u0644\\u0627\\u062a\\u0647\\u0627\\u0645 \\u0648\\u0627\\u0644\\u062a\\u0645\\u062c\\u064a\\u062f \\u0644\\u0644\\u0623\\u0644\\u0645 \\u0647\\u064a \\u0644\\u0630\\u0629 \\u0627\\u0644\\u0627\\u062a\\u0647\\u0627\\u0645 \\u0648\\u0627\\u0644\\u062b\\u0646\\u0627\\u0621 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0623\\u0645\\u0631 \\u0643\\u0644\\u0647.\",\"newLines\":\"0\"}]', '2021-09-01 08:05:30', '2021-09-05 20:04:02'),
(37, 16, 'تعليم', 'fas fa-graduation-cap', 2, 2, '[{\"left_border\":\"1\",\"duration\":\"\\u0623\\u0643\\u062a\\u0648\\u0628\\u0631 2010 - \\u0645\\u0627\\u064a\\u0648 2011\",\"title\":\"\\u0634\\u0647\\u0627\\u062f\\u0629 \\u0627\\u0644\\u062b\\u0627\\u0646\\u0648\\u064a\\u0629 \\u0627\\u0644\\u0639\\u0627\\u0645\\u0629\",\"subtitle\":\"\\u0645\\u062f\\u0631\\u0633\\u0629 \\u0643\\u0627\\u0644\\u064a\\u0641\\u0648\\u0631\\u0646\\u064a\\u0627 \\u0627\\u0644\\u062b\\u0627\\u0646\\u0648\\u064a\\u0629\",\"description\":\"\\u0648\\u0627\\u0644\\u062a\\u0645\\u064a\\u064a\\u0632 \\u0628\\u064a\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0623\\u0634\\u064a\\u0627\\u0621 \\u0633\\u0647\\u0644 \\u0648\\u0633\\u0647\\u0644. \\u0641\\u064a \\u0648\\u0642\\u062a \\u0627\\u0644\\u0641\\u0631\\u0627\\u063a \\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u064a\\u0643\\u0648\\u0646 \\u0644\\u062f\\u064a\\u0646\\u0627 \\u062e\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0645\\u062c\\u0627\\u0646\\u064a\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":\"\\u0623\\u0643\\u062a\\u0648\\u0628\\u0631 2011 - \\u0645\\u0627\\u064a\\u0648 2012\",\"title\":\"\\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0629 \\u0627\\u0644\\u062b\\u0627\\u0646\\u0648\\u064a\\u0629 \\u0627\\u0644\\u0639\\u0644\\u064a\\u0627\",\"subtitle\":\"\\u0643\\u0644\\u064a\\u0629 \\u062a\\u0643\\u0633\\u0627\\u0633\",\"description\":\"- \\u0627\\u0644\\u0623\\u0644\\u0645 \\u0628\\u062d\\u062f \\u0630\\u0627\\u062a\\u0647 \\u0643\\u062b\\u064a\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u0622\\u0644\\u0627\\u0645 \\u060c \\u0644\\u0643\\u0646 \\u0627\\u0644\\u0633\\u0628\\u0628 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a \\u0647\\u0648 \\u0627\\u0644\\u0623\\u0644\\u0645 \\u060c \\u0644\\u0643\\u0646\\u0646\\u064a \\u0623\\u0639\\u0637\\u064a\\u0647\\u0627 \\u0627\\u0644\\u0648\\u0642\\u062a \\u0644\\u062a\\u0642\\u0639 \\u0641\\u064a\\u0647 \\u0628\\u0628\\u0639\\u0636 \\u0627\\u0644\\u0623\\u0644\\u0645 \\u0648\\u0627\\u0644\\u0623\\u0644\\u0645 \\u0627\\u0644\\u0634\\u062f\\u064a\\u062f. \\u0644\\u0645\\u0632\\u064a\\u062f \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u062d\\u0648\\u0644 \\u0645\\u0627 \\u064a\\u062c\\u0628 \\u0627\\u0644\\u0642\\u064a\\u0627\\u0645 \\u0628\\u0647\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":\"\\u0623\\u0643\\u062a\\u0648\\u0628\\u0631 2013 - \\u0645\\u0627\\u064a\\u0648 2017\",\"title\":\"\\u0628\\u0643\\u0627\\u0644\\u0648\\u0631\\u064a\\u0648\\u0633 \\u0641\\u064a \\u0627\\u0644\\u0639\\u0644\\u0648\\u0645\",\"subtitle\":\"\\u062c\\u0627\\u0645\\u0639\\u0629 \\u0646\\u064a\\u0648\\u064a\\u0648\\u0631\\u0643\",\"description\":\"\\u0648\\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0623\\u064a\\u0636\\u064b\\u0627 \\u0623\\u064a \\u0634\\u062e\\u0635 \\u064a\\u062d\\u0628 \\u0623\\u0648 \\u064a\\u0633\\u0639\\u0649 \\u0623\\u0648 \\u064a\\u0631\\u063a\\u0628 \\u0641\\u064a \\u0627\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0623\\u0644\\u0645 \\u0645\\u0646 \\u0646\\u0641\\u0633\\u0647 \\u060c \\u0644\\u0623\\u0646\\u0647 \\u0623\\u0644\\u0645 \\u060c \\u0648\\u0644\\u0643\\u0646 \\u0644\\u0623\\u0646 \\u0638\\u0631\\u0648\\u0641\\u064b\\u0627 \\u062a\\u062d\\u062f\\u062b \\u0641\\u064a \\u0628\\u0639\\u0636 \\u0627\\u0644\\u0623\\u062d\\u064a\\u0627\\u0646\",\"newLines\":\"0\"}]', '2021-09-01 08:05:47', '2021-09-05 20:03:45'),
(38, 16, 'خبرة في العمل', 'fas fa-briefcase', 2, 3, '[{\"left_border\":\"1\",\"duration\":\"\\u0623\\u0643\\u062a\\u0648\\u0628\\u0631 2018 - \\u0645\\u0627\\u064a\\u0648 2021\",\"title\":\"\\u0645\\u0637\\u0648\\u0631 \\u0628\\u0627\\u064a\\u062b\\u0648\\u0646\",\"subtitle\":\"\\u0645\\u062a\\u0635\\u0641\\u062d \\u0627\\u0644\\u062c\\u0648\\u062c\\u0644\",\"description\":\"- \\u0644\\u0643\\u0646 \\u060c \\u0641\\u064a \\u0627\\u0644\\u0648\\u0627\\u0642\\u0639 \\u060c \\u0646\\u062d\\u0646 \\u0646\\u062a\\u0647\\u0645\\u0647\\u0645 \\u0648\\u0646\\u0639\\u062a\\u0628\\u0631\\u0647\\u0645 \\u0627\\u0644\\u0623\\u0643\\u062b\\u0631 \\u0627\\u0633\\u062a\\u062d\\u0642\\u0627\\u0642\\u064b\\u0627 \\u0644\\u0644\\u0643\\u0631\\u0627\\u0647\\u064a\\u0629 \\u0627\\u0644\\u0639\\u0627\\u062f\\u0644\\u0629 \\u060c \\u0627\\u0644\\u0630\\u064a\\u0646 \\u0623\\u0639\\u0645\\u062a\\u0647\\u0645 \\u0627\\u0644\\u0625\\u0637\\u0631\\u0627\\u0621 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0644\\u0630\\u0627\\u062a \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a\\u0629 \\u060c \\u0648\\u062a\\u0647\\u062f\\u0623\\u0648\\u0627 \\u0648\\u062a\\u0641\\u0633\\u062f\\u0647\\u0645 \\u0627\\u0644\\u0622\\u0644\\u0627\\u0645 \\u0648\\u0627\\u0644\\u0645\\u062a\\u0627\\u0639\\u0628 \\u0627\\u0644\\u062a\\u064a \\u0633\\u064a\\u0648\\u0627\\u062c\\u0647\\u0648\\u0646\\u0647\\u0627\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":\"\\u0623\\u0643\\u062a\\u0648\\u0628\\u0631 2021 - \\u0645\\u0627\\u064a\\u0648 2023\",\"title\":\"\\u0645\\u0637\\u0648\\u0631 \\u0623\\u0644\\u0639\\u0627\\u0628 C #\",\"subtitle\":\"\\u0631\\u064a\\u0627\\u0636\\u0629 \\u0625\\u064a\\u0649 \\u0623\\u064a\\u0647 - \\u0639\\u0644\\u0627\\u0645\\u0629 \\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u0643 \\u0622\\u0631\\u062a\\u0633\",\"description\":\"- \\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0645\\u0631\\u0629 \\u0623\\u062e\\u0631\\u0649 \\u0623\\u064a \\u0634\\u062e\\u0635 \\u064a\\u062d\\u0628 \\u0623\\u0648 \\u064a\\u0633\\u0639\\u0649 \\u0623\\u0648 \\u064a\\u0631\\u063a\\u0628 \\u0641\\u064a \\u0627\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0623\\u0644\\u0645 \\u0645\\u0646 \\u0646\\u0641\\u0633\\u0647 \\u060c \\u0644\\u0623\\u0646\\u0647 \\u0623\\u0644\\u0645 \\u060c \\u0648\\u0644\\u0643\\u0646 \\u0644\\u0623\\u0646\\u0647 \\u064a\\u062d\\u062f\\u062b \\u0623\\u062d\\u064a\\u0627\\u0646\\u064b\\u0627 \\u0638\\u0631\\u0648\\u0641 \\u064a\\u0643\\u062f\\u062d \\u0641\\u064a\\u0647\\u0627\\r\\n- \\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0645\\u0631\\u0629 \\u0623\\u062e\\u0631\\u0649 \\u0623\\u064a \\u0634\\u062e\\u0635 \\u064a\\u062d\\u0628 \\u0623\\u0648 \\u064a\\u0633\\u0639\\u0649 \\u0623\\u0648 \\u064a\\u0631\\u063a\\u0628 \\u0641\\u064a \\u0627\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0623\\u0644\\u0645 \\u0645\\u0646 \\u0646\\u0641\\u0633\\u0647 \\u060c \\u0644\\u0623\\u0646\\u0647 \\u0623\\u0644\\u0645 \\u060c \\u0648\\u0644\\u0643\\u0646 \\u0644\\u0623\\u0646\\u0647 \\u064a\\u062d\\u062f\\u062b \\u0623\\u062d\\u064a\\u0627\\u0646\\u064b\\u0627 \\u0638\\u0631\\u0648\\u0641 \\u064a\\u0643\\u062f\\u062d \\u0641\\u064a\\u0647\\u0627\\r\\n- \\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0645\\u0631\\u0629 \\u0623\\u062e\\u0631\\u0649 \\u0623\\u064a \\u0634\\u062e\\u0635 \\u064a\\u062d\\u0628 \\u0623\\u0648 \\u064a\\u0633\\u0639\\u0649 \\u0623\\u0648 \\u064a\\u0631\\u063a\\u0628 \\u0641\\u064a \\u0627\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0623\\u0644\\u0645 \\u0645\\u0646 \\u0646\\u0641\\u0633\\u0647 \\u060c \\u0644\\u0623\\u0646\\u0647 \\u0623\\u0644\\u0645 \\u060c \\u0648\\u0644\\u0643\\u0646 \\u0644\\u0623\\u0646\\u0647 \\u064a\\u062d\\u062f\\u062b \\u0623\\u062d\\u064a\\u0627\\u0646\\u064b\\u0627 \\u0638\\u0631\\u0648\\u0641 \\u064a\\u0643\\u062f\\u062d \\u0641\\u064a\\u0647\\u0627\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":\"\\u0623\\u0643\\u062a\\u0648\\u0628\\u0631 2023 - \\u062d\\u062a\\u0649 \\u0627\\u0644\\u0622\\u0646\",\"title\":\"\\u0645\\u0637\\u0648\\u0631 \\u0627\\u0644\\u0648\\u0632\\u0646\",\"subtitle\":\"\\u062a\\u0648\\u064a\\u062a\\u0631\",\"description\":\"- \\u062a\\u062c\\u0646\\u0628 \\u0643\\u0644 \\u0627\\u0644\\u0622\\u0644\\u0627\\u0645. \\u0648\\u0644\\u0643\\u0646 \\u0641\\u064a \\u0638\\u0631\\u0648\\u0641 \\u0645\\u0639\\u064a\\u0646\\u0629 \\u0648\\u0628\\u0633\\u0628\\u0628 \\u0627\\u062f\\u0639\\u0627\\u0621\\u0627\\u062a \\u0627\\u0644\\u0648\\u0627\\u062c\\u0628 \\u0623\\u0648 \\u0627\\u0644\\u062a\\u0632\\u0627\\u0645\\u0627\\u062a \\u0627\\u0644\\u0639\\u0645\\u0644 \\u060c \\u063a\\u0627\\u0644\\u0628\\u064b\\u0627 \\u0645\\u0627 \\u064a\\u062d\\u062f\\u062b \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0645\\u0644\\u0630\\u0627\\u062a\",\"newLines\":\"0\"}]', '2021-09-01 19:53:07', '2021-09-05 19:57:44'),
(39, 16, 'المشاريع', 'fas fa-desktop', 2, 4, '[{\"left_border\":\"1\",\"duration\":null,\"title\":\"\\u0645\\u0648\\u0642\\u0639 \\u0648\\u064a\\u0628 Laravel Classified\",\"subtitle\":null,\"description\":\"- \\u0627\\u0644\\u0644\\u0630\\u0629 \\u064a\\u062c\\u0628 \\u0623\\u0646 \\u062a\\u0624\\u062e\\u0630 \\u060c \\u064a\\u062c\\u0628 \\u062a\\u062c\\u0646\\u0628 \\u0643\\u0644 \\u0627\\u0644\\u0622\\u0644\\u0627\\u0645. \\u0648\\u0645\\u0639 \\u0630\\u0644\\u0643 \\u060c \\u0641\\u064a \\u0623\\u0648\\u0642\\u0627\\u062a \\u0645\\u0639\\u064a\\u0646\\u0629 \\u064a\\u062d\\u062f\\u062b \\u0630\\u0644\\u0643 \\u063a\\u0627\\u0644\\u0628\\u064b\\u0627 \\u0645\\u0639 \\u0627\\u0644\\u0627\\u0644\\u062a\\u0632\\u0627\\u0645\\u0627\\u062a \\u0623\\u0648 \\u0627\\u0644\\u0636\\u0631\\u0648\\u0631\\u0627\\u062a \\u0627\\u0644\\u0648\\u0627\\u062c\\u0628\\u0629.\\r\\n- \\u0631\\u0627\\u0628\\u0637 \\u0627\\u0644\\u0645\\u0634\\u0631\\u0648\\u0639: <span dir=\\\"ltr\\\">https:\\/\\/example.com\\/<\\/span>\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":null,\"title\":\"\\u0645\\u0646\\u0635\\u0629 PWA \\u0644\\u0645\\u0634\\u0627\\u0631\\u0643\\u0629 \\u0627\\u0644\\u0635\\u0648\\u0631\",\"subtitle\":null,\"description\":\"- \\u0627\\u0644\\u0644\\u0630\\u0629 \\u064a\\u062c\\u0628 \\u0623\\u0646 \\u062a\\u0624\\u062e\\u0630 \\u060c \\u064a\\u062c\\u0628 \\u062a\\u062c\\u0646\\u0628 \\u0643\\u0644 \\u0627\\u0644\\u0622\\u0644\\u0627\\u0645. \\u0641\\u064a \\u0628\\u0639\\u0636 \\u0627\\u0644\\u0623\\u0648\\u0642\\u0627\\u062a \\u0648\\r\\n- \\u0631\\u0627\\u0628\\u0637 \\u0627\\u0644\\u0645\\u0634\\u0631\\u0648\\u0639: <span dir=\\\"ltr\\\">https:\\/\\/example.com\\/<\\/span>\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":null,\"title\":\"\\u0645\\u0646\\u0635\\u0629 \\u0628\\u0627\\u064a\\u062b\\u0648\\u0646 \\u0644\\u0644\\u062a\\u0648\\u0627\\u0635\\u0644 \\u0627\\u0644\\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a\",\"subtitle\":null,\"description\":\"- \\u0627\\u0644\\u0644\\u0630\\u0629 \\u064a\\u062c\\u0628 \\u0623\\u0646 \\u062a\\u0624\\u062e\\u0630 \\u060c \\u064a\\u062c\\u0628 \\u062a\\u062c\\u0646\\u0628 \\u0643\\u0644 \\u0627\\u0644\\u0622\\u0644\\u0627\\u0645. \\u0627\\u0644\\u0622\\u0646 \\u0641\\u064a \\u0628\\u0639\\u0636 \\u0627\\u0644\\u0623\\u0648\\u0642\\u0627\\u062a\\r\\n- \\u0631\\u0627\\u0628\\u0637 \\u0627\\u0644\\u0645\\u0634\\u0631\\u0648\\u0639: <span dir=\\\"ltr\\\">https:\\/\\/example.com\\/<\\/span>\",\"newLines\":\"0\"},{\"left_border\":\"0\",\"duration\":null,\"title\":null,\"subtitle\":null,\"description\":\"- \\u0627\\u0644\\u0644\\u0630\\u0629 \\u064a\\u062c\\u0628 \\u0623\\u0646 \\u062a\\u0624\\u062e\\u0630 \\u060c \\u064a\\u062c\\u0628 \\u062a\\u062c\\u0646\\u0628 \\u0643\\u0644 \\u0627\\u0644\\u0622\\u0644\\u0627\\u0645. \\u0627\\u0644\\u0622\\u0646 \\u0641\\u064a \\u0628\\u0639\\u0636 \\u0627\\u0644\\u0623\\u0648\\u0642\\u0627\\u062a\\r\\n- \\u0631\\u0627\\u0628\\u0637 \\u0627\\u0644\\u0645\\u0634\\u0631\\u0648\\u0639:  <span dir=\\\"ltr\\\">https:\\/\\/example.com\\/<\\/span>\",\"newLines\":\"0\"}]', '2021-09-01 19:53:41', '2021-09-07 01:47:51'),
(40, 16, 'مهارات', 'fas fa-wrench', 1, 5, '[{\"left_border\":\"0\",\"duration\":null,\"title\":null,\"subtitle\":null,\"description\":\"- <span dir=\\\"ltr\\\">Laravel<\\/span> \\u0648 <span dir=\\\"ltr\\\">Vue.js<\\/span> \\u0648 <span dir=\\\"ltr\\\">HTML5<\\/span> \\u0648 <span dir=\\\"ltr\\\">CSS3<\\/span>\\u0648 <span dir=\\\"ltr\\\">Vanilla Javascript<\\/span> \\u0648 <span dir=\\\"ltr\\\">PHP<\\/span>\\u0648 <span dir=\\\"ltr\\\">jQuery<\\/span>\\u0648 <span dir=\\\"ltr\\\">PWA<\\/span>\\u0648 <span dir=\\\"ltr\\\">PSD<\\/span> \\u0625\\u0644\\u0649 <span dir=\\\"ltr\\\">HTML<\\/span>\\u0648 <span dir=\\\"ltr\\\">Python<\\/span>\\u0648 <span dir=\\\"ltr\\\">Node.js<\\/span>\",\"newLines\":\"0\"}]', '2021-09-01 20:12:28', '2021-09-07 01:52:35'),
(41, 16, 'الجوائز', 'fas fa-trophy', 2, 6, '[{\"left_border\":\"0\",\"duration\":\"10th Oct, 2015\",\"title\":\"\\u0627\\u0644\\u0645\\u0631\\u0643\\u0632 \\u0627\\u0644\\u062b\\u0627\\u0645\\u0646 \\u0641\\u064a \\u0645\\u0633\\u0627\\u0628\\u0642\\u0629 ICPC\",\"subtitle\":null,\"description\":\"- \\u064a\\u062c\\u0628 \\u062a\\u062c\\u0646\\u0628 \\u0643\\u0644 \\u0627\\u0644\\u0622\\u0644\\u0627\\u0645. \\u0648\\u0644\\u0643\\u0646 \\u0641\\u064a \\u0623\\u0648\\u0642\\u0627\\u062a \\u0645\\u0639\\u064a\\u0646\\u0629 \\u0648\\u0628\\u0633\\u0628\\u0628 \\u0648\\u0627\\u062c\\u0628\\u0627\\u062a \\u0623\\u0648 \\u0636\\u0631\\u0648\\u0631\\u0627\\u062a \\u0627\\u0644\\u062d\\u064a\\u0627\\u0629 \\u060c \\u063a\\u0627\\u0644\\u0628\\u064b\\u0627 \\u0645\\u0627 \\u064a\\u062d\\u062f\\u062b \\u0623\\u0646 \\u064a\\u062a\\u0645 \\u0646\\u0628\\u0630 \\u0627\\u0644\\u0645\\u0644\\u0630\\u0627\\u062a\",\"newLines\":\"0\"}]', '2021-09-01 20:15:12', '2021-09-05 19:54:20'),
(42, 17, 'उद्देश्य', 'fas fa-info-circle', 1, 1, '[{\"left_border\":\"0\",\"duration\":null,\"title\":null,\"subtitle\":null,\"description\":\"\\u0932\\u0947\\u0915\\u093f\\u0928 \\u092f\\u0939 \\u0938\\u092e\\u091d\\u0928\\u0947 \\u0915\\u0947 \\u0932\\u093f\\u090f \\u0915\\u093f \\u092f\\u0939 \\u0938\\u092c \\u0924\\u094d\\u0930\\u0941\\u091f\\u093f \\u0915\\u0939\\u093e\\u0901 \\u0938\\u0947 \\u092a\\u0948\\u0926\\u093e \\u0939\\u0941\\u0908 \\u0925\\u0940, \\u0906\\u0930\\u094b\\u092a \\u0932\\u0917\\u093e\\u0928\\u0947 \\u0914\\u0930 \\u0926\\u0930\\u094d\\u0926 \\u0915\\u0940 \\u092a\\u094d\\u0930\\u0936\\u0902\\u0938\\u093e \\u0915\\u0930\\u0928\\u0947 \\u0915\\u093e \\u0906\\u0928\\u0902\\u0926 \\u0926\\u094b\\u0937\\u093e\\u0930\\u094b\\u092a\\u0923 \\u0914\\u0930 \\u092a\\u094d\\u0930\\u0936\\u0902\\u0938\\u093e \\u0915\\u0930\\u0928\\u0947 \\u0915\\u093e \\u0906\\u0928\\u0902\\u0926 \\u0939\\u0948;\",\"newLines\":\"0\"}]', '2021-09-01 08:05:30', '2021-09-06 01:39:55'),
(43, 17, 'शिक्षा', 'fas fa-graduation-cap', 2, 2, '[{\"left_border\":\"1\",\"duration\":\"\\u0905\\u0915\\u094d\\u091f\\u0942\\u092c\\u0930 2010 - \\u092e\\u0908 2011\",\"title\":\"\\u092e\\u093e\\u0927\\u094d\\u092f\\u092e\\u093f\\u0915 \\u0938\\u094d\\u0915\\u0942\\u0932 \\u092a\\u094d\\u0930\\u092e\\u093e\\u0923\\u092a\\u0924\\u094d\\u0930\",\"subtitle\":\"\\u0915\\u0948\\u0932\\u093f\\u092b\\u094b\\u0930\\u094d\\u0928\\u093f\\u092f\\u093e \\u0939\\u093e\\u0908 \\u0938\\u094d\\u0915\\u0942\\u0932\",\"description\":\"\\u0914\\u0930 \\u0907\\u0928 \\u091a\\u0940\\u091c\\u094b\\u0902 \\u0915\\u0947 \\u092c\\u0940\\u091a \\u0915\\u093e \\u0905\\u0902\\u0924\\u0930 \\u0938\\u0930\\u0932 \\u0914\\u0930 \\u0906\\u0938\\u093e\\u0928 \\u0939\\u0948\\u0964 \\u0916\\u093e\\u0932\\u0940 \\u0938\\u092e\\u092f \\u0915\\u0947 \\u0932\\u093f\\u090f, \\u091c\\u092c \\u0939\\u092e\\u093e\\u0930\\u0947 \\u092a\\u093e\\u0938 \\u092e\\u0941\\u092b\\u094d\\u0924 \\u091a\\u0941\\u0928\\u0928\\u0947 \\u0915\\u093e \\u0935\\u093f\\u0915\\u0932\\u094d\\u092a \\u0939\\u094b\\u0924\\u093e \\u0939\\u0948\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":\"\\u0905\\u0915\\u094d\\u091f\\u0942\\u092c\\u0930 2011 - \\u092e\\u0908 2012\",\"title\":\"\\u0939\\u093e\\u092f\\u0930 \\u0938\\u0947\\u0915\\u0947\\u0902\\u0921\\u0930\\u0940 \\u0938\\u0930\\u094d\\u091f\\u093f\\u092b\\u093f\\u0915\\u0947\\u091f\",\"subtitle\":\"\\u091f\\u0947\\u0915\\u094d\\u0938\\u093e\\u0938 \\u0915\\u0949\\u0932\\u0947\\u091c\",\"description\":\"-\\u0926\\u0930\\u094d\\u0926 \\u0905\\u092a\\u0928\\u0947 \\u0906\\u092a \\u092e\\u0947\\u0902 \\u092c\\u0939\\u0941\\u0924 \\u0926\\u0930\\u094d\\u0926 \\u0939\\u0948, \\u0932\\u0947\\u0915\\u093f\\u0928 \\u092e\\u0941\\u0916\\u094d\\u092f \\u0915\\u093e\\u0930\\u0923 \\u0926\\u0930\\u094d\\u0926 \\u0939\\u0948, \\u0932\\u0947\\u0915\\u093f\\u0928 \\u092e\\u0948\\u0902 \\u0907\\u0938\\u0947 \\u0915\\u0941\\u091b \\u092c\\u0921\\u093c\\u0947 \\u0926\\u0930\\u094d\\u0926 \\u0914\\u0930 \\u092a\\u0940\\u0921\\u093c\\u093e \\u0915\\u0947 \\u0938\\u093e\\u0925 \\u0907\\u0938\\u092e\\u0947\\u0902 \\u0917\\u093f\\u0930\\u0928\\u0947 \\u0915\\u093e \\u0938\\u092e\\u092f \\u0926\\u0947\\u0924\\u093e \\u0939\\u0942\\u0902\\u0964 \\u0915\\u094d\\u092f\\u093e \\u0915\\u0930\\u0928\\u093e \\u0939\\u0948 \\u0907\\u0938\\u0915\\u0947 \\u092c\\u093e\\u0930\\u0947 \\u092e\\u0947\\u0902 \\u0905\\u0927\\u093f\\u0915 \\u091c\\u093e\\u0928\\u0915\\u093e\\u0930\\u0940 \\u0915\\u0947 \\u0932\\u093f\\u090f\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":\"\\u0905\\u0915\\u094d\\u091f\\u0942\\u092c\\u0930 2013 - \\u092e\\u0908 2017\",\"title\":\"\\u0935\\u093f\\u091c\\u094d\\u091e\\u093e\\u0928 \\u0938\\u094d\\u0928\\u093e\\u0924\\u0915\",\"subtitle\":\"\\u0928\\u094d\\u092f\\u0942\\u092f\\u0949\\u0930\\u094d\\u0915 \\u0935\\u093f\\u0936\\u094d\\u0935\\u0935\\u093f\\u0926\\u094d\\u092f\\u093e\\u0932\\u092f\",\"description\":\"\\u092b\\u093f\\u0930 \\u0938\\u0947 \\u0915\\u094b\\u0908 \\u0928\\u0939\\u0940\\u0902 \\u0939\\u0948 \\u091c\\u094b \\u092a\\u094d\\u092f\\u093e\\u0930 \\u0915\\u0930\\u0924\\u093e \\u0939\\u0948 \\u092f\\u093e \\u0905\\u0928\\u0941\\u0938\\u0930\\u0923 \\u0915\\u0930\\u0924\\u093e \\u0939\\u0948 \\u092f\\u093e \\u0905\\u092a\\u0928\\u093e \\u0926\\u0930\\u094d\\u0926 \\u092a\\u094d\\u0930\\u093e\\u092a\\u094d\\u0924 \\u0915\\u0930\\u0928\\u093e \\u091a\\u093e\\u0939\\u0924\\u093e \\u0939\\u0948, \\u0915\\u094d\\u092f\\u094b\\u0902\\u0915\\u093f \\u092f\\u0939 \\u0926\\u0930\\u094d\\u0926 \\u0939\\u094b\\u0924\\u093e \\u0939\\u0948, \\u0932\\u0947\\u0915\\u093f\\u0928 \\u0915\\u094d\\u092f\\u094b\\u0902\\u0915\\u093f \\u0915\\u092d\\u0940-\\u0915\\u092d\\u0940 \\u0938\\u094d\\u0925\\u093f\\u0924\\u093f \\u0939\\u094b\\u0924\\u0940 \\u0939\\u0948\",\"newLines\":\"0\"}]', '2021-09-01 08:05:47', '2021-09-07 17:25:05'),
(44, 17, 'कार्य अनुभव', 'fas fa-briefcase', 2, 3, '[{\"left_border\":\"1\",\"duration\":\"\\u0905\\u0915\\u094d\\u091f\\u0942\\u092c\\u0930 2018 - \\u092e\\u0908 2021\",\"title\":\"\\u092a\\u093e\\u092f\\u0925\\u0928 \\u0921\\u0947\\u0935\\u0932\\u092a\\u0930\",\"subtitle\":\"\\u0917\\u0942\\u0917\\u0932\",\"description\":\"- \\u0932\\u0947\\u0915\\u093f\\u0928, \\u0935\\u093e\\u0938\\u094d\\u0924\\u0935 \\u092e\\u0947\\u0902, \\u0939\\u092e \\u0926\\u094b\\u0928\\u094b\\u0902 \\u0915\\u0947\\u0935\\u0932 \\u0909\\u0928\\u0915\\u0940 \\u0918\\u0943\\u0923\\u093e \\u0915\\u0947 \\u0932\\u093f\\u090f \\u0909\\u0928\\u0915\\u0940 \\u0928\\u093f\\u0902\\u0926\\u093e \\u0915\\u0930\\u0924\\u0947 \\u0939\\u0948\\u0902 \\u0914\\u0930 \\u0938\\u094b\\u091a\\u0924\\u0947 \\u0939\\u0948\\u0902 \\u0915\\u093f \\u091c\\u094b \\u0932\\u094b\\u0917 \\u0935\\u0930\\u094d\\u0924\\u092e\\u093e\\u0928 \\u0938\\u0941\\u0916 \\u0915\\u0940 \\u091a\\u093e\\u092a\\u0932\\u0942\\u0938\\u0940 \\u0938\\u0947 \\u0905\\u0902\\u0927\\u0947 \\u0939\\u094b \\u0917\\u090f \\u0939\\u0948\\u0902, \\u0935\\u0947 \\u0915\\u093f\\u0938 \\u092a\\u0940\\u0921\\u093c\\u093e \\u0914\\u0930 \\u092a\\u0940\\u0921\\u093c\\u093e \\u0938\\u0947 \\u0936\\u093e\\u0902\\u0924 \\u0914\\u0930 \\u092a\\u094d\\u0930\\u0926\\u0942\\u0937\\u093f\\u0924 \\u0939\\u0948\\u0902\\u0964\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":\"\\u0905\\u0915\\u094d\\u091f\\u0942\\u092c\\u0930 2021 - \\u092e\\u0908 2023\",\"title\":\"\\u0938\\u0940 # \\u0917\\u0947\\u092e \\u0921\\u0947\\u0935\\u0932\\u092a\\u0930\",\"subtitle\":\"\\u0908\\u090f \\u0938\\u094d\\u092a\\u094b\\u0930\\u094d\\u091f\\u094d\\u0938\",\"description\":\"- \\u0914\\u0930 \\u0928 \\u0939\\u0940 \\u0915\\u094b\\u0908 \\u0939\\u0948 \\u091c\\u094b \\u092a\\u094d\\u092f\\u093e\\u0930 \\u0915\\u0930\\u0924\\u093e \\u0939\\u0948 \\u092f\\u093e \\u092a\\u0940\\u091b\\u093e \\u0915\\u0930\\u0924\\u093e \\u0939\\u0948 \\u092f\\u093e \\u0916\\u0941\\u0926 \\u0915\\u093e \\u0926\\u0930\\u094d\\u0926 \\u092a\\u094d\\u0930\\u093e\\u092a\\u094d\\u0924 \\u0915\\u0930\\u0928\\u0947 \\u0915\\u0940 \\u0907\\u091a\\u094d\\u091b\\u093e \\u0930\\u0916\\u0924\\u093e \\u0939\\u0948, \\u0915\\u094d\\u092f\\u094b\\u0902\\u0915\\u093f \\u092f\\u0939 \\u0926\\u0930\\u094d\\u0926 \\u0939\\u0948, \\u0932\\u0947\\u0915\\u093f\\u0928 \\u0915\\u092d\\u0940-\\u0915\\u092d\\u0940 \\u0910\\u0938\\u0940 \\u092a\\u0930\\u093f\\u0938\\u094d\\u0925\\u093f\\u0924\\u093f\\u092f\\u093e\\u0902 \\u0939\\u094b\\u0924\\u0940 \\u0939\\u0948\\u0902 \\u091c\\u093f\\u0928\\u092e\\u0947\\u0902 \\u092a\\u0930\\u093f\\u0936\\u094d\\u0930\\u092e \\u0939\\u094b\\u0924\\u093e \\u0939\\u0948\\r\\n- \\u0914\\u0930 \\u0928 \\u0939\\u0940 \\u0915\\u094b\\u0908 \\u0939\\u0948 \\u091c\\u094b \\u092a\\u094d\\u092f\\u093e\\u0930 \\u0915\\u0930\\u0924\\u093e \\u0939\\u0948 \\u092f\\u093e \\u092a\\u0940\\u091b\\u093e \\u0915\\u0930\\u0924\\u093e \\u0939\\u0948 \\u092f\\u093e \\u0916\\u0941\\u0926 \\u0915\\u093e \\u0926\\u0930\\u094d\\u0926 \\u092a\\u094d\\u0930\\u093e\\u092a\\u094d\\u0924 \\u0915\\u0930\\u0928\\u0947 \\u0915\\u0940 \\u0907\\u091a\\u094d\\u091b\\u093e \\u0930\\u0916\\u0924\\u093e \\u0939\\u0948, \\u0915\\u094d\\u092f\\u094b\\u0902\\u0915\\u093f \\u092f\\u0939 \\u0926\\u0930\\u094d\\u0926 \\u0939\\u0948, \\u0932\\u0947\\u0915\\u093f\\u0928 \\u0915\\u092d\\u0940-\\u0915\\u092d\\u0940 \\u0910\\u0938\\u0940 \\u092a\\u0930\\u093f\\u0938\\u094d\\u0925\\u093f\\u0924\\u093f\\u092f\\u093e\\u0902 \\u0939\\u094b\\u0924\\u0940 \\u0939\\u0948\\u0902 \\u091c\\u093f\\u0928\\u092e\\u0947\\u0902 \\u092a\\u0930\\u093f\\u0936\\u094d\\u0930\\u092e \\u0939\\u094b\\u0924\\u093e \\u0939\\u0948\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":\"\\u0905\\u0915\\u094d\\u091f\\u0942\\u092c\\u0930 2023 - \\u0935\\u0930\\u094d\\u0924\\u092e\\u093e\\u0928 \\u092e\\u0947\\u0902\",\"title\":\"\\u0935\\u0932\\u094d\\u092a\\u0947\\u0930\",\"subtitle\":\"\\u091f\\u094d\\u0935\\u093f\\u091f\\u0930\",\"description\":\"- \\u0939\\u0930 \\u0926\\u0930\\u094d\\u0926 \\u0938\\u0947 \\u092c\\u091a\\u093e \\u0925\\u093e\\u0964 \\u0932\\u0947\\u0915\\u093f\\u0928 \\u0915\\u0941\\u091b \\u0938\\u094d\\u0925\\u093f\\u0924\\u093f\\u092f\\u094b\\u0902 \\u092e\\u0947\\u0902 \\u0914\\u0930 \\u0935\\u094d\\u092f\\u093e\\u092a\\u093e\\u0930 \\u0915\\u0947 \\u0926\\u093e\\u0935\\u094b\\u0902 \\u092f\\u093e \\u0926\\u093e\\u092f\\u093f\\u0924\\u094d\\u0935\\u094b\\u0902 \\u0915\\u0947 \\u0915\\u093e\\u0930\\u0923 \\u092f\\u0939 \\u0905\\u0915\\u094d\\u0938\\u0930 \\u0916\\u0941\\u0936\\u0940 \\u0926\\u0947\\u0924\\u093e \\u0939\\u0948\",\"newLines\":\"0\"}]', '2021-09-01 19:53:07', '2021-09-07 17:26:58'),
(45, 17, 'परियोजनाओं', 'fas fa-desktop', 2, 4, '[{\"left_border\":\"1\",\"duration\":null,\"title\":\"\\u0932\\u093e\\u0930\\u0935\\u0947\\u0932 \\u0915\\u094d\\u0932\\u093e\\u0938\\u0940\\u092b\\u093e\\u0907\\u0921 \\u0935\\u0947\\u092c\\u0938\\u093e\\u0907\\u091f\",\"subtitle\":null,\"description\":\"- \\u0938\\u0941\\u0916 \\u0932\\u0947\\u0928\\u093e \\u0939\\u0948, \\u0938\\u092d\\u0940 \\u0926\\u0941\\u0916\\u094b\\u0902 \\u0938\\u0947 \\u092c\\u091a\\u0928\\u093e \\u0939\\u0948\\u0964 \\u0939\\u093e\\u0932\\u093e\\u0902\\u0915\\u093f, \\u0928\\u093f\\u0936\\u094d\\u091a\\u093f\\u0924 \\u0938\\u092e\\u092f \\u092e\\u0947\\u0902 \\u092f\\u0939 \\u0905\\u0915\\u094d\\u0938\\u0930 \\u0909\\u091a\\u093f\\u0924 \\u0926\\u093e\\u092f\\u093f\\u0924\\u094d\\u0935\\u094b\\u0902 \\u092f\\u093e \\u0906\\u0935\\u0936\\u094d\\u092f\\u0915\\u0924\\u093e\\u0913\\u0902 \\u0915\\u0947 \\u0938\\u093e\\u0925 \\u0939\\u094b\\u0924\\u093e \\u0939\\u0948\\r\\n- \\u092a\\u094d\\u0930\\u094b\\u091c\\u0947\\u0915\\u094d\\u091f \\u0932\\u093f\\u0902\\u0915: https:\\/\\/example.com\\/\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":null,\"title\":\"\\u092b\\u094b\\u091f\\u094b \\u0936\\u0947\\u092f\\u0930\\u093f\\u0902\\u0917 PWA \\u092a\\u094d\\u0932\\u0947\\u091f\\u092b\\u0949\\u0930\\u094d\\u092e\",\"subtitle\":null,\"description\":\"- \\u0938\\u0941\\u0916 \\u0932\\u0947\\u0928\\u093e \\u0939\\u0948, \\u0938\\u092d\\u0940 \\u0926\\u0941\\u0916\\u094b\\u0902 \\u0938\\u0947 \\u092c\\u091a\\u0928\\u093e \\u0939\\u0948\\u0964 \\u0915\\u0941\\u091b \\u092c\\u093e\\u0930 \\u0914\\u0930\\r\\n- \\u092a\\u094d\\u0930\\u094b\\u091c\\u0947\\u0915\\u094d\\u091f \\u0932\\u093f\\u0902\\u0915: https:\\/\\/example.com\\/\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":null,\"title\":\"\\u0938\\u094b\\u0936\\u0932 \\u0928\\u0947\\u091f\\u0935\\u0930\\u094d\\u0915\\u093f\\u0902\\u0917 \\u092a\\u093e\\u092f\\u0925\\u0928 \\u092a\\u094d\\u0932\\u0947\\u091f\\u092b\\u0949\\u0930\\u094d\\u092e\",\"subtitle\":null,\"description\":\"- \\u0938\\u0941\\u0916 \\u0932\\u0947\\u0928\\u093e \\u0939\\u0948, \\u0938\\u092d\\u0940 \\u0926\\u0941\\u0916\\u094b\\u0902 \\u0938\\u0947 \\u092c\\u091a\\u0928\\u093e \\u0939\\u0948\\u0964 \\u0905\\u092c \\u0915\\u0941\\u091b \\u092c\\u093e\\u0930\\r\\n- \\u092a\\u094d\\u0930\\u094b\\u091c\\u0947\\u0915\\u094d\\u091f \\u0932\\u093f\\u0902\\u0915: https:\\/\\/example.com\\/\",\"newLines\":\"0\"}]', '2021-09-01 19:53:41', '2021-09-06 01:39:21'),
(46, 17, 'कौशल', 'fas fa-wrench', 1, 5, '[{\"left_border\":\"0\",\"duration\":null,\"title\":null,\"subtitle\":null,\"description\":\"- Laravel, Vue.js, HTML5, CSS3, Vanilla Javascript, PHP, jQuery, PWA, PSD \\u0938\\u0947 HTML, Python, Node.js\",\"newLines\":\"0\"}]', '2021-09-01 20:12:28', '2021-09-06 01:39:10'),
(47, 17, 'पुरस्कार', 'fas fa-trophy', 2, 6, '[{\"left_border\":\"0\",\"duration\":\"10 \\u0905\\u0915\\u094d\\u091f\\u0942\\u092c\\u0930, 2015\",\"title\":\"ICPC \\u092a\\u094d\\u0930\\u0924\\u093f\\u092f\\u094b\\u0917\\u093f\\u0924\\u093e \\u092e\\u0947\\u0902 8\\u0935\\u093e\\u0902\",\"subtitle\":null,\"description\":\"- \\u0938\\u092d\\u0940 \\u0926\\u0930\\u094d\\u0926 \\u0938\\u0947 \\u092c\\u091a\\u0928\\u093e \\u091a\\u093e\\u0939\\u093f\\u090f\\u0964 \\u0932\\u0947\\u0915\\u093f\\u0928 \\u0928\\u093f\\u0936\\u094d\\u091a\\u093f\\u0924 \\u0938\\u092e\\u092f \\u092e\\u0947\\u0902 \\u0914\\u0930 \\u091c\\u0940\\u0935\\u0928 \\u0915\\u0940 \\u092c\\u093e\\u0927\\u094d\\u092f\\u0924\\u093e\\u0913\\u0902 \\u092f\\u093e \\u0906\\u0935\\u0936\\u094d\\u092f\\u0915\\u0924\\u093e\\u0913\\u0902 \\u0915\\u0947 \\u0915\\u093e\\u0930\\u0923 \\u0905\\u0915\\u094d\\u0938\\u0930 \\u0910\\u0938\\u093e \\u0939\\u094b\\u0924\\u093e \\u0939\\u0948 \\u0915\\u093f \\u0938\\u0941\\u0916\\u094b\\u0902 \\u0915\\u093e \\u0924\\u094d\\u092f\\u093e\\u0917 \\u0915\\u0930\\u0928\\u093e \\u092a\\u0921\\u093c\\u0924\\u093e \\u0939\\u0948\",\"newLines\":\"0\"}]', '2021-09-01 20:15:12', '2021-09-06 01:38:58'),
(50, 20, 'موضوعي', 'fas fa-info-circle', 1, 1, '[{\"left_border\":\"0\",\"duration\":\"\",\"title\":\"\",\"subtitle\":\"\",\"description\":\"\\u0648\\u0644\\u0643\\u0646 \\u0644\\u0643\\u064a \\u062a\\u0641\\u0647\\u0645 \\u0645\\u0646 \\u0623\\u064a\\u0646 \\u0648\\u0644\\u062f \\u0643\\u0644 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u062e\\u0637\\u0623 \\u060c \\u0641\\u0625\\u0646 \\u0644\\u0630\\u0629 \\u0627\\u0644\\u0627\\u062a\\u0647\\u0627\\u0645 \\u0648\\u0627\\u0644\\u062a\\u0645\\u062c\\u064a\\u062f \\u0644\\u0644\\u0623\\u0644\\u0645 \\u0647\\u064a \\u0644\\u0630\\u0629 \\u0627\\u0644\\u0627\\u062a\\u0647\\u0627\\u0645 \\u0648\\u0627\\u0644\\u062b\\u0646\\u0627\\u0621 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0623\\u0645\\u0631 \\u0643\\u0644\\u0647. \\u0648\\u0644\\u0643\\u0646 \\u0644\\u0643\\u064a \\u062a\\u0641\\u0647\\u0645 \\u0645\\u0646 \\u0623\\u064a\\u0646 \\u0648\\u0644\\u062f \\u0643\\u0644 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u062e\\u0637\\u0623 \\u060c \\u0641\\u0625\\u0646 \\u0644\\u0630\\u0629 \\u0627\\u0644\\u0627\\u062a\\u0647\\u0627\\u0645 \\u0648\\u0627\\u0644\\u062a\\u0645\\u062c\\u064a\\u062f \\u0644\\u0644\\u0623\\u0644\\u0645 \\u0647\\u064a \\u0644\\u0630\\u0629 \\u0627\\u0644\\u0627\\u062a\\u0647\\u0627\\u0645 \\u0648\\u0627\\u0644\\u062b\\u0646\\u0627\\u0621 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0623\\u0645\\u0631 \\u0643\\u0644\\u0647. \\u0648\\u0644\\u0643\\u0646 \\u0644\\u0643\\u064a \\u062a\\u0641\\u0647\\u0645 \\u0645\\u0646 \\u0623\\u064a\\u0646 \\u0648\\u0644\\u062f \\u0643\\u0644 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u062e\\u0637\\u0623 \\u060c \\u0641\\u0625\\u0646 \\u0644\\u0630\\u0629 \\u0627\\u0644\\u0627\\u062a\\u0647\\u0627\\u0645 \\u0648\\u0627\\u0644\\u062a\\u0645\\u062c\\u064a\\u062f \\u0644\\u0644\\u0623\\u0644\\u0645 \\u0647\\u064a \\u0644\\u0630\\u0629 \\u0627\\u0644\\u0627\\u062a\\u0647\\u0627\\u0645 \\u0648\\u0627\\u0644\\u062b\\u0646\\u0627\\u0621 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0623\\u0645\\u0631 \\u0643\\u0644\\u0647. \\u0648\\u0644\\u0643\\u0646 \\u0644\\u0643\\u064a \\u062a\\u0641\\u0647\\u0645 \\u0645\\u0646 \\u0623\\u064a\\u0646 \\u0648\\u0644\\u062f \\u0643\\u0644 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u062e\\u0637\\u0623 \\u060c \\u0641\\u0625\\u0646 \\u0644\\u0630\\u0629 \\u0627\\u0644\\u0627\\u062a\\u0647\\u0627\\u0645 \\u0648\\u0627\\u0644\\u062a\\u0645\\u062c\\u064a\\u062f \\u0644\\u0644\\u0623\\u0644\\u0645 \\u0647\\u064a \\u0644\\u0630\\u0629 \\u0627\\u0644\\u0627\\u062a\\u0647\\u0627\\u0645 \\u0648\\u0627\\u0644\\u062b\\u0646\\u0627\\u0621 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0623\\u0645\\u0631 \\u0643\\u0644\\u0647. \\u0648\\u0644\\u0643\\u0646 \\u0644\\u0643\\u064a \\u062a\\u0641\\u0647\\u0645 \\u0645\\u0646 \\u0623\\u064a\\u0646 \\u0648\\u0644\\u062f \\u0643\\u0644 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u062e\\u0637\\u0623 \\u060c \\u0641\\u0625\\u0646 \\u0644\\u0630\\u0629 \\u0627\\u0644\\u0627\\u062a\\u0647\\u0627\\u0645 \\u0648\\u0627\\u0644\\u062a\\u0645\\u062c\\u064a\\u062f \\u0644\\u0644\\u0623\\u0644\\u0645 \\u0647\\u064a \\u0644\\u0630\\u0629 \\u0627\\u0644\\u0627\\u062a\\u0647\\u0627\\u0645 \\u0648\\u0627\\u0644\\u062b\\u0646\\u0627\\u0621 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0623\\u0645\\u0631 \\u0643\\u0644\\u0647.\",\"newLines\":\"0\"}]', '2021-09-01 08:05:30', '2021-09-07 18:07:09'),
(51, 20, 'تعليم', 'fas fa-graduation-cap', 2, 2, '[{\"left_border\":\"1\",\"duration\":\"\\u0623\\u0643\\u062a\\u0648\\u0628\\u0631 2010 - \\u0645\\u0627\\u064a\\u0648 2011\",\"title\":\"\\u0634\\u0647\\u0627\\u062f\\u0629 \\u0627\\u0644\\u062b\\u0627\\u0646\\u0648\\u064a\\u0629 \\u0627\\u0644\\u0639\\u0627\\u0645\\u0629\",\"subtitle\":\"\\u0645\\u062f\\u0631\\u0633\\u0629 \\u0643\\u0627\\u0644\\u064a\\u0641\\u0648\\u0631\\u0646\\u064a\\u0627 \\u0627\\u0644\\u062b\\u0627\\u0646\\u0648\\u064a\\u0629\",\"description\":\"\\u0648\\u0627\\u0644\\u062a\\u0645\\u064a\\u064a\\u0632 \\u0628\\u064a\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0623\\u0634\\u064a\\u0627\\u0621 \\u0633\\u0647\\u0644 \\u0648\\u0633\\u0647\\u0644. \\u0641\\u064a \\u0648\\u0642\\u062a \\u0627\\u0644\\u0641\\u0631\\u0627\\u063a \\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u064a\\u0643\\u0648\\u0646 \\u0644\\u062f\\u064a\\u0646\\u0627 \\u062e\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0645\\u062c\\u0627\\u0646\\u064a \\u0648\\u0627\\u0644\\u062a\\u0645\\u064a\\u064a\\u0632 \\u0628\\u064a\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0623\\u0634\\u064a\\u0627\\u0621 \\u0633\\u0647\\u0644 \\u0648\\u0633\\u0647\\u0644. \\u0641\\u064a \\u0648\\u0642\\u062a \\u0627\\u0644\\u0641\\u0631\\u0627\\u063a \\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u064a\\u0643\\u0648\\u0646 \\u0644\\u062f\\u064a\\u0646\\u0627 \\u062e\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0645\\u062c\\u0627\\u0646\\u064a \\u0648\\u0627\\u0644\\u062a\\u0645\\u064a\\u064a\\u0632 \\u0628\\u064a\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0623\\u0634\\u064a\\u0627\\u0621 \\u0633\\u0647\\u0644 \\u0648\\u0633\\u0647\\u0644. \\u0641\\u064a \\u0648\\u0642\\u062a \\u0627\\u0644\\u0641\\u0631\\u0627\\u063a \\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u064a\\u0643\\u0648\\u0646 \\u0644\\u062f\\u064a\\u0646\\u0627 \\u062e\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0645\\u062c\\u0627\\u0646\\u064a \\u0648\\u0627\\u0644\\u062a\\u0645\\u064a\\u064a\\u0632 \\u0628\\u064a\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0623\\u0634\\u064a\\u0627\\u0621 \\u0633\\u0647\\u0644 \\u0648\\u0633\\u0647\\u0644. \\u0641\\u064a \\u0648\\u0642\\u062a \\u0627\\u0644\\u0641\\u0631\\u0627\\u063a \\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u064a\\u0643\\u0648\\u0646 \\u0644\\u062f\\u064a\\u0646\\u0627 \\u062e\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0645\\u062c\\u0627\\u0646\\u064a\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":\"\\u0623\\u0643\\u062a\\u0648\\u0628\\u0631 2011 - \\u0645\\u0627\\u064a\\u0648 2012\",\"title\":\"\\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0629 \\u0627\\u0644\\u062b\\u0627\\u0646\\u0648\\u064a\\u0629 \\u0627\\u0644\\u0639\\u0644\\u064a\\u0627\",\"subtitle\":\"\\u0643\\u0644\\u064a\\u0629 \\u062a\\u0643\\u0633\\u0627\\u0633\",\"description\":\"- \\u0627\\u0644\\u0623\\u0644\\u0645 \\u0628\\u062d\\u062f \\u0630\\u0627\\u062a\\u0647 \\u0643\\u062b\\u064a\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u0622\\u0644\\u0627\\u0645 \\u060c \\u0644\\u0643\\u0646 \\u0627\\u0644\\u0633\\u0628\\u0628 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a \\u0647\\u0648 \\u0627\\u0644\\u0623\\u0644\\u0645 \\u060c \\u0644\\u0643\\u0646\\u0646\\u064a \\u0623\\u0639\\u0637\\u064a\\u0647\\u0627 \\u0627\\u0644\\u0648\\u0642\\u062a \\u0644\\u062a\\u0642\\u0639 \\u0641\\u064a\\u0647 \\u0628\\u0628\\u0639\\u0636 \\u0627\\u0644\\u0623\\u0644\\u0645 \\u0648\\u0627\\u0644\\u0623\\u0644\\u0645 \\u0627\\u0644\\u0634\\u062f\\u064a\\u062f. \\u0644\\u0645\\u0632\\u064a\\u062f \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u062d\\u0648\\u0644 \\u0645\\u0627 \\u064a\\u062c\\u0628 \\u0627\\u0644\\u0642\\u064a\\u0627\\u0645 \\u0628\\u0647 \\u0648\\u0627\\u0644\\u062a\\u0645\\u064a\\u064a\\u0632 \\u0628\\u064a\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0623\\u0634\\u064a\\u0627\\u0621 \\u0633\\u0647\\u0644 \\u0648\\u0633\\u0647\\u0644. \\u0641\\u064a \\u0648\\u0642\\u062a \\u0627\\u0644\\u0641\\u0631\\u0627\\u063a \\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u064a\\u0643\\u0648\\u0646 \\u0644\\u062f\\u064a\\u0646\\u0627 \\u062e\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0645\\u062c\\u0627\\u0646\\u064a \\u0648\\u0627\\u0644\\u062a\\u0645\\u064a\\u064a\\u0632 \\u0628\\u064a\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0623\\u0634\\u064a\\u0627\\u0621 \\u0633\\u0647\\u0644 \\u0648\\u0633\\u0647\\u0644. \\u0641\\u064a \\u0648\\u0642\\u062a \\u0627\\u0644\\u0641\\u0631\\u0627\\u063a \\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u064a\\u0643\\u0648\\u0646 \\u0644\\u062f\\u064a\\u0646\\u0627 \\u062e\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0645\\u062c\\u0627\\u0646\\u064a\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":\"\\u0623\\u0643\\u062a\\u0648\\u0628\\u0631 2013 - \\u0645\\u0627\\u064a\\u0648 2017\",\"title\":\"\\u0628\\u0643\\u0627\\u0644\\u0648\\u0631\\u064a\\u0648\\u0633 \\u0641\\u064a \\u0627\\u0644\\u0639\\u0644\\u0648\\u0645\",\"subtitle\":\"\\u062c\\u0627\\u0645\\u0639\\u0629 \\u0646\\u064a\\u0648\\u064a\\u0648\\u0631\\u0643\",\"description\":\"\\u0648\\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0623\\u064a\\u0636\\u064b\\u0627 \\u0623\\u064a \\u0634\\u062e\\u0635 \\u064a\\u062d\\u0628 \\u0623\\u0648 \\u064a\\u0633\\u0639\\u0649 \\u0623\\u0648 \\u064a\\u0631\\u063a\\u0628 \\u0641\\u064a \\u0627\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0623\\u0644\\u0645 \\u0645\\u0646 \\u0646\\u0641\\u0633\\u0647 \\u060c \\u0644\\u0623\\u0646\\u0647 \\u0623\\u0644\\u0645 \\u060c \\u0648\\u0644\\u0643\\u0646 \\u0644\\u0623\\u0646 \\u0638\\u0631\\u0648\\u0641\\u064b\\u0627 \\u062a\\u062d\\u062f\\u062b \\u0641\\u064a \\u0628\\u0639\\u0636 \\u0627\\u0644\\u0623\\u062d\\u064a\\u0627\\u0646 \\u0648\\u0627\\u0644\\u062a\\u0645\\u064a\\u064a\\u0632 \\u0628\\u064a\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0623\\u0634\\u064a\\u0627\\u0621 \\u0633\\u0647\\u0644 \\u0648\\u0633\\u0647\\u0644. \\u0641\\u064a \\u0648\\u0642\\u062a \\u0627\\u0644\\u0641\\u0631\\u0627\\u063a \\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u064a\\u0643\\u0648\\u0646 \\u0644\\u062f\\u064a\\u0646\\u0627 \\u062e\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0645\\u062c\\u0627\\u0646\\u064a \\u0648\\u0627\\u0644\\u062a\\u0645\\u064a\\u064a\\u0632 \\u0628\\u064a\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0623\\u0634\\u064a\\u0627\\u0621 \\u0633\\u0647\\u0644 \\u0648\\u0633\\u0647\\u0644. \\u0641\\u064a \\u0648\\u0642\\u062a \\u0627\\u0644\\u0641\\u0631\\u0627\\u063a \\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u064a\\u0643\\u0648\\u0646 \\u0644\\u062f\\u064a\\u0646\\u0627 \\u062e\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0645\\u062c\\u0627\\u0646\\u064a\",\"newLines\":\"0\"}]', '2021-09-01 08:05:47', '2021-09-07 18:07:43');
INSERT INTO `user_cv_sections` (`id`, `user_cv_id`, `name`, `icon`, `column`, `order`, `content`, `created_at`, `updated_at`) VALUES
(52, 20, 'خبرة في العمل', 'fas fa-briefcase', 2, 3, '[{\"left_border\":\"1\",\"duration\":\"\\u0623\\u0643\\u062a\\u0648\\u0628\\u0631 2018 - \\u0645\\u0627\\u064a\\u0648 2021\",\"title\":\"\\u0645\\u0637\\u0648\\u0631 \\u0628\\u0627\\u064a\\u062b\\u0648\\u0646\",\"subtitle\":\"\\u0645\\u062a\\u0635\\u0641\\u062d \\u0627\\u0644\\u062c\\u0648\\u062c\\u0644\",\"description\":\"- \\u0644\\u0643\\u0646 \\u060c \\u0641\\u064a \\u0627\\u0644\\u0648\\u0627\\u0642\\u0639 \\u060c \\u0646\\u062d\\u0646 \\u0646\\u062a\\u0647\\u0645\\u0647\\u0645 \\u0648\\u0646\\u0639\\u062a\\u0628\\u0631\\u0647\\u0645 \\u0627\\u0644\\u0623\\u0643\\u062b\\u0631 \\u0627\\u0633\\u062a\\u062d\\u0642\\u0627\\u0642\\u064b\\u0627 \\u0644\\u0644\\u0643\\u0631\\u0627\\u0647\\u064a\\u0629 \\u0627\\u0644\\u0639\\u0627\\u062f\\u0644\\u0629 \\u060c \\u0627\\u0644\\u0630\\u064a\\u0646 \\u0623\\u0639\\u0645\\u062a\\u0647\\u0645 \\u0627\\u0644\\u0625\\u0637\\u0631\\u0627\\u0621 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0644\\u0630\\u0627\\u062a \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a\\u0629 \\u060c \\u0648\\u062a\\u0647\\u062f\\u0623\\u0648\\u0627 \\u0648\\u062a\\u0641\\u0633\\u062f\\u0647\\u0645 \\u0627\\u0644\\u0622\\u0644\\u0627\\u0645 \\u0648\\u0627\\u0644\\u0645\\u062a\\u0627\\u0639\\u0628 \\u0627\\u0644\\u062a\\u064a \\u0633\\u064a\\u0648\\u0627\\u062c\\u0647\\u0648\\u0646\\u0647\\u0627\\r\\n- \\u0648\\u0627\\u0644\\u062a\\u0645\\u064a\\u064a\\u0632 \\u0628\\u064a\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0623\\u0634\\u064a\\u0627\\u0621 \\u0633\\u0647\\u0644 \\u0648\\u0633\\u0647\\u0644. \\u0641\\u064a \\u0648\\u0642\\u062a \\u0627\\u0644\\u0641\\u0631\\u0627\\u063a \\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u064a\\u0643\\u0648\\u0646 \\u0644\\u062f\\u064a\\u0646\\u0627 \\u062e\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0645\\u062c\\u0627\\u0646\\u064a\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":\"\\u0623\\u0643\\u062a\\u0648\\u0628\\u0631 2021 - \\u0645\\u0627\\u064a\\u0648 2023\",\"title\":\"\\u0645\\u0637\\u0648\\u0631 \\u0623\\u0644\\u0639\\u0627\\u0628 C #\",\"subtitle\":\"\\u0631\\u064a\\u0627\\u0636\\u0629 \\u0625\\u064a\\u0649 \\u0623\\u064a\\u0647 - \\u0639\\u0644\\u0627\\u0645\\u0629 \\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u0643 \\u0622\\u0631\\u062a\\u0633\",\"description\":\"- \\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0645\\u0631\\u0629 \\u0623\\u062e\\u0631\\u0649 \\u0623\\u064a \\u0634\\u062e\\u0635 \\u064a\\u062d\\u0628 \\u0623\\u0648 \\u064a\\u0633\\u0639\\u0649 \\u0623\\u0648 \\u064a\\u0631\\u063a\\u0628 \\u0641\\u064a \\u0627\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0623\\u0644\\u0645 \\u0645\\u0646 \\u0646\\u0641\\u0633\\u0647 \\u060c \\u0644\\u0623\\u0646\\u0647 \\u0623\\u0644\\u0645 \\u060c \\u0648\\u0644\\u0643\\u0646 \\u0644\\u0623\\u0646\\u0647 \\u064a\\u062d\\u062f\\u062b \\u0623\\u062d\\u064a\\u0627\\u0646\\u064b\\u0627 \\u0638\\u0631\\u0648\\u0641 \\u064a\\u0643\\u062f\\u062d \\u0641\\u064a\\u0647\\u0627\\r\\n- \\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0645\\u0631\\u0629 \\u0623\\u062e\\u0631\\u0649 \\u0623\\u064a \\u0634\\u062e\\u0635 \\u064a\\u062d\\u0628 \\u0623\\u0648 \\u064a\\u0633\\u0639\\u0649 \\u0623\\u0648 \\u064a\\u0631\\u063a\\u0628 \\u0641\\u064a \\u0627\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0623\\u0644\\u0645 \\u0645\\u0646 \\u0646\\u0641\\u0633\\u0647 \\u060c \\u0644\\u0623\\u0646\\u0647 \\u0623\\u0644\\u0645 \\u060c \\u0648\\u0644\\u0643\\u0646 \\u0644\\u0623\\u0646\\u0647 \\u064a\\u062d\\u062f\\u062b \\u0623\\u062d\\u064a\\u0627\\u0646\\u064b\\u0627 \\u0638\\u0631\\u0648\\u0641 \\u064a\\u0643\\u062f\\u062d \\u0641\\u064a\\u0647\\u0627\\r\\n- \\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0645\\u0631\\u0629 \\u0623\\u062e\\u0631\\u0649 \\u0623\\u064a \\u0634\\u062e\\u0635 \\u064a\\u062d\\u0628 \\u0623\\u0648 \\u064a\\u0633\\u0639\\u0649 \\u0623\\u0648 \\u064a\\u0631\\u063a\\u0628 \\u0641\\u064a \\u0627\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0623\\u0644\\u0645 \\u0645\\u0646 \\u0646\\u0641\\u0633\\u0647 \\u060c \\u0644\\u0623\\u0646\\u0647 \\u0623\\u0644\\u0645 \\u060c \\u0648\\u0644\\u0643\\u0646 \\u0644\\u0623\\u0646\\u0647 \\u064a\\u062d\\u062f\\u062b \\u0623\\u062d\\u064a\\u0627\\u0646\\u064b\\u0627 \\u0638\\u0631\\u0648\\u0641 \\u064a\\u0643\\u062f\\u062d \\u0641\\u064a\\u0647\\u0627\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":\"\\u0623\\u0643\\u062a\\u0648\\u0628\\u0631 2023 - \\u062d\\u062a\\u0649 \\u0627\\u0644\\u0622\\u0646\",\"title\":\"\\u0645\\u0637\\u0648\\u0631 \\u0627\\u0644\\u0648\\u0632\\u0646\",\"subtitle\":\"\\u062a\\u0648\\u064a\\u062a\\u0631\",\"description\":\"- \\u0648\\u0627\\u0644\\u062a\\u0645\\u064a\\u064a\\u0632 \\u0628\\u064a\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0623\\u0634\\u064a\\u0627\\u0621 \\u0633\\u0647\\u0644 \\u0648\\u0633\\u0647\\u0644. \\u0641\\u064a \\u0648\\u0642\\u062a \\u0627\\u0644\\u0641\\u0631\\u0627\\u063a \\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u064a\\u0643\\u0648\\u0646 \\u0644\\u062f\\u064a\\u0646\\u0627 \\u062e\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0645\\u062c\\u0627\\u0646\\u064a\\r\\n- \\u062a\\u062c\\u0646\\u0628 \\u0643\\u0644 \\u0627\\u0644\\u0622\\u0644\\u0627\\u0645. \\u0648\\u0644\\u0643\\u0646 \\u0641\\u064a \\u0638\\u0631\\u0648\\u0641 \\u0645\\u0639\\u064a\\u0646\\u0629 \\u0648\\u0628\\u0633\\u0628\\u0628 \\u0627\\u062f\\u0639\\u0627\\u0621\\u0627\\u062a \\u0627\\u0644\\u0648\\u0627\\u062c\\u0628 \\u0623\\u0648 \\u0627\\u0644\\u062a\\u0632\\u0627\\u0645\\u0627\\u062a \\u0627\\u0644\\u0639\\u0645\\u0644 \\u060c \\u063a\\u0627\\u0644\\u0628\\u064b\\u0627 \\u0645\\u0627 \\u064a\\u062d\\u062f\\u062b \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0645\\u0644\\u0630\\u0627\\u062a\",\"newLines\":\"0\"}]', '2021-09-01 19:53:07', '2021-09-07 18:08:46'),
(53, 20, 'المشاريع', 'fas fa-desktop', 2, 4, '[{\"left_border\":\"1\",\"duration\":null,\"title\":\"\\u0645\\u0648\\u0642\\u0639 \\u0648\\u064a\\u0628 Laravel Classified\",\"subtitle\":null,\"description\":\"- \\u0627\\u0644\\u0644\\u0630\\u0629 \\u064a\\u062c\\u0628 \\u0623\\u0646 \\u062a\\u0624\\u062e\\u0630 \\u060c \\u064a\\u062c\\u0628 \\u062a\\u062c\\u0646\\u0628 \\u0643\\u0644 \\u0627\\u0644\\u0622\\u0644\\u0627\\u0645. \\u0648\\u0645\\u0639 \\u0630\\u0644\\u0643 \\u060c \\u0641\\u064a \\u0623\\u0648\\u0642\\u0627\\u062a \\u0645\\u0639\\u064a\\u0646\\u0629 \\u064a\\u062d\\u062f\\u062b \\u0630\\u0644\\u0643 \\u063a\\u0627\\u0644\\u0628\\u064b\\u0627 \\u0645\\u0639 \\u0627\\u0644\\u0627\\u0644\\u062a\\u0632\\u0627\\u0645\\u0627\\u062a \\u0623\\u0648 \\u0627\\u0644\\u0636\\u0631\\u0648\\u0631\\u0627\\u062a \\u0627\\u0644\\u0648\\u0627\\u062c\\u0628\\u0629.\\r\\n- \\u0631\\u0627\\u0628\\u0637 \\u0627\\u0644\\u0645\\u0634\\u0631\\u0648\\u0639: <span dir=\\\"ltr\\\">https:\\/\\/example.com\\/<\\/span>\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":null,\"title\":\"\\u0645\\u0646\\u0635\\u0629 PWA \\u0644\\u0645\\u0634\\u0627\\u0631\\u0643\\u0629 \\u0627\\u0644\\u0635\\u0648\\u0631\",\"subtitle\":null,\"description\":\"- \\u0627\\u0644\\u0644\\u0630\\u0629 \\u064a\\u062c\\u0628 \\u0623\\u0646 \\u062a\\u0624\\u062e\\u0630 \\u060c \\u064a\\u062c\\u0628 \\u062a\\u062c\\u0646\\u0628 \\u0643\\u0644 \\u0627\\u0644\\u0622\\u0644\\u0627\\u0645. \\u0641\\u064a \\u0628\\u0639\\u0636 \\u0627\\u0644\\u0623\\u0648\\u0642\\u0627\\u062a \\u0648\\r\\n- \\u0631\\u0627\\u0628\\u0637 \\u0627\\u0644\\u0645\\u0634\\u0631\\u0648\\u0639: <span dir=\\\"ltr\\\">https:\\/\\/example.com\\/<\\/span>\",\"newLines\":\"0\"},{\"left_border\":\"1\",\"duration\":null,\"title\":\"\\u0645\\u0646\\u0635\\u0629 \\u0628\\u0627\\u064a\\u062b\\u0648\\u0646 \\u0644\\u0644\\u062a\\u0648\\u0627\\u0635\\u0644 \\u0627\\u0644\\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a\",\"subtitle\":null,\"description\":\"- \\u0627\\u0644\\u0644\\u0630\\u0629 \\u064a\\u062c\\u0628 \\u0623\\u0646 \\u062a\\u0624\\u062e\\u0630 \\u060c \\u064a\\u062c\\u0628 \\u062a\\u062c\\u0646\\u0628 \\u0643\\u0644 \\u0627\\u0644\\u0622\\u0644\\u0627\\u0645. \\u0627\\u0644\\u0622\\u0646 \\u0641\\u064a \\u0628\\u0639\\u0636 \\u0627\\u0644\\u0623\\u0648\\u0642\\u0627\\u062a\\r\\n- \\u0631\\u0627\\u0628\\u0637 \\u0627\\u0644\\u0645\\u0634\\u0631\\u0648\\u0639: <span dir=\\\"ltr\\\">https:\\/\\/example.com\\/<\\/span>\",\"newLines\":\"0\"},{\"left_border\":\"0\",\"duration\":null,\"title\":null,\"subtitle\":null,\"description\":\"- \\u0627\\u0644\\u0644\\u0630\\u0629 \\u064a\\u062c\\u0628 \\u0623\\u0646 \\u062a\\u0624\\u062e\\u0630 \\u060c \\u064a\\u062c\\u0628 \\u062a\\u062c\\u0646\\u0628 \\u0643\\u0644 \\u0627\\u0644\\u0622\\u0644\\u0627\\u0645. \\u0627\\u0644\\u0622\\u0646 \\u0641\\u064a \\u0628\\u0639\\u0636 \\u0627\\u0644\\u0623\\u0648\\u0642\\u0627\\u062a\\r\\n- \\u0631\\u0627\\u0628\\u0637 \\u0627\\u0644\\u0645\\u0634\\u0631\\u0648\\u0639:  <span dir=\\\"ltr\\\">https:\\/\\/example.com\\/<\\/span>\",\"newLines\":\"0\"}]', '2021-09-01 19:53:41', '2021-09-07 01:47:51'),
(54, 20, 'مهارات', 'fas fa-wrench', 1, 5, '[{\"left_border\":\"0\",\"duration\":null,\"title\":null,\"subtitle\":null,\"description\":\"- <span dir=\\\"ltr\\\">Laravel<\\/span> \\u0648 <span dir=\\\"ltr\\\">Vue.js<\\/span> \\u0648 <span dir=\\\"ltr\\\">HTML5<\\/span> \\u0648 <span dir=\\\"ltr\\\">CSS3<\\/span>\\u0648 <span dir=\\\"ltr\\\">Vanilla Javascript<\\/span> \\u0648 <span dir=\\\"ltr\\\">PHP<\\/span>\\u0648 <span dir=\\\"ltr\\\">jQuery<\\/span>\\u0648 <span dir=\\\"ltr\\\">PWA<\\/span>\\u0648 <span dir=\\\"ltr\\\">PSD<\\/span> \\u0625\\u0644\\u0649 <span dir=\\\"ltr\\\">HTML<\\/span>\\u0648 <span dir=\\\"ltr\\\">Python<\\/span>\\u0648 <span dir=\\\"ltr\\\">Node.js<\\/span>\",\"newLines\":\"0\"}]', '2021-09-01 20:12:28', '2021-09-07 01:52:35'),
(55, 20, 'الجوائز', 'fas fa-trophy', 2, 6, '[{\"left_border\":\"0\",\"duration\":\"10th Oct, 2015\",\"title\":\"\\u0627\\u0644\\u0645\\u0631\\u0643\\u0632 \\u0627\\u0644\\u062b\\u0627\\u0645\\u0646 \\u0641\\u064a \\u0645\\u0633\\u0627\\u0628\\u0642\\u0629 ICPC\",\"subtitle\":null,\"description\":\"- \\u064a\\u062c\\u0628 \\u062a\\u062c\\u0646\\u0628 \\u0643\\u0644 \\u0627\\u0644\\u0622\\u0644\\u0627\\u0645. \\u0648\\u0644\\u0643\\u0646 \\u0641\\u064a \\u0623\\u0648\\u0642\\u0627\\u062a \\u0645\\u0639\\u064a\\u0646\\u0629 \\u0648\\u0628\\u0633\\u0628\\u0628 \\u0648\\u0627\\u062c\\u0628\\u0627\\u062a \\u0623\\u0648 \\u0636\\u0631\\u0648\\u0631\\u0627\\u062a \\u0627\\u0644\\u062d\\u064a\\u0627\\u0629 \\u060c \\u063a\\u0627\\u0644\\u0628\\u064b\\u0627 \\u0645\\u0627 \\u064a\\u062d\\u062f\\u062b \\u0623\\u0646 \\u064a\\u062a\\u0645 \\u0646\\u0628\\u0630 \\u0627\\u0644\\u0645\\u0644\\u0630\\u0627\\u062a\",\"newLines\":\"0\"}]', '2021-09-01 20:15:12', '2021-09-05 19:54:20');

-- --------------------------------------------------------

--
-- Table structure for table `user_educations`
--

CREATE TABLE `user_educations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `degree_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lang_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_educations`
--

INSERT INTO `user_educations` (`id`, `degree_name`, `slug`, `short_description`, `start_date`, `end_date`, `serial_number`, `user_id`, `lang_id`, `created_at`, `updated_at`) VALUES
(11, 'Secondary School Certificate', 'secondary-school-certificate', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it', '2001-01-26', '2010-12-28', 3, 62, 62, '2021-07-25 22:55:44', '2021-07-25 22:55:44'),
(12, 'Higher Secondary School Certificate', 'higher-secondary-school-certificate', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2011-01-01', '2012-12-14', 2, 62, 62, '2021-07-25 22:56:41', '2021-07-25 22:56:41'),
(13, 'Bachelor of Science', 'bachelor-of-science', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised', '2013-01-18', '2017-11-28', 1, 62, 62, '2021-07-25 22:57:31', '2021-07-25 22:57:31'),
(14, 'شهادة الثانوية العامة', 'secondary-school-certificate', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو ذلك', '2001-01-26', '2010-12-28', 3, 62, 63, '2021-07-25 22:55:44', '2021-07-25 22:55:44'),
(15, 'شهادة الثانوية العامة', 'higher-secondary-school-certificate', 'لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي', '2011-01-01', '2012-12-14', 2, 62, 63, '2021-07-25 22:56:41', '2021-07-25 22:56:41'),
(16, 'بكالوريوس العلوم', 'bachelor-of-science', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال الدعابة أو العشوائية', '2013-01-18', '2017-11-28', 1, 62, 63, '2021-07-25 22:57:31', '2021-07-25 22:57:31'),
(17, 'Secondary School Certificate', 'secondary-school-certificate', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it', '2001-01-26', '2010-12-28', 3, 63, 64, '2021-07-25 22:55:44', '2021-07-25 22:55:44'),
(18, 'Higher Secondary School Certificate', 'higher-secondary-school-certificate', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2011-01-01', '2012-12-14', 2, 63, 64, '2021-07-25 22:56:41', '2021-07-25 22:56:41'),
(19, 'Bachelor of Science', 'bachelor-of-science', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised', '2013-01-18', '2017-11-28', 1, 63, 64, '2021-07-25 22:57:31', '2021-07-25 22:57:31'),
(20, 'شهادة الثانوية العامة', 'secondary-school-certificate', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو ذلك', '2001-01-26', '2010-12-28', 3, 63, 65, '2021-07-25 22:55:44', '2021-07-25 22:55:44'),
(21, 'شهادة الثانوية العامة', 'higher-secondary-school-certificate', 'لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي', '2011-01-01', '2012-12-14', 2, 63, 65, '2021-07-25 22:56:41', '2021-07-25 22:56:41'),
(22, 'بكالوريوس العلوم', 'bachelor-of-science', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال الدعابة أو العشوائية', '2013-01-18', '2017-11-28', 1, 63, 65, '2021-07-25 22:57:31', '2021-07-25 22:57:31'),
(23, 'Secondary School Certificate', 'secondary-school-certificate', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it', '2001-01-26', '2010-12-28', 3, 64, 66, '2021-07-25 22:55:44', '2021-07-25 22:55:44'),
(24, 'Higher Secondary School Certificate', 'higher-secondary-school-certificate', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2011-01-01', '2012-12-14', 2, 64, 66, '2021-07-25 22:56:41', '2021-07-25 22:56:41'),
(25, 'Bachelor of Science', 'bachelor-of-science', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised', '2013-01-18', '2017-11-28', 1, 64, 66, '2021-07-25 22:57:31', '2021-07-25 22:57:31'),
(26, 'شهادة الثانوية العامة', 'secondary-school-certificate', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو ذلك', '2001-01-26', '2010-12-28', 3, 64, 67, '2021-07-25 22:55:44', '2021-07-25 22:55:44'),
(27, 'شهادة الثانوية العامة', 'higher-secondary-school-certificate', 'لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي', '2011-01-01', '2012-12-14', 2, 64, 67, '2021-07-25 22:56:41', '2021-07-25 22:56:41'),
(28, 'بكالوريوس العلوم', 'bachelor-of-science', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال الدعابة أو العشوائية', '2013-01-18', '2017-11-28', 1, 64, 67, '2021-07-25 22:57:31', '2021-07-25 22:57:31'),
(29, 'Secondary School Certificate', 'secondary-school-certificate', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it', '2001-01-26', '2010-12-28', 3, 65, 68, '2021-07-25 22:55:44', '2021-07-25 22:55:44'),
(30, 'Higher Secondary School Certificate', 'higher-secondary-school-certificate', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2011-01-01', '2012-12-14', 2, 65, 68, '2021-07-25 22:56:41', '2021-07-25 22:56:41'),
(31, 'Bachelor of Science', 'bachelor-of-science', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised', '2013-01-18', '2017-11-28', 1, 65, 68, '2021-07-25 22:57:31', '2021-07-25 22:57:31'),
(32, 'شهادة الثانوية العامة', 'secondary-school-certificate', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو ذلك', '2001-01-26', '2010-12-28', 3, 65, 69, '2021-07-25 22:55:44', '2021-07-25 22:55:44'),
(33, 'شهادة الثانوية العامة', 'higher-secondary-school-certificate', 'لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي', '2011-01-01', '2012-12-14', 2, 65, 69, '2021-07-25 22:56:41', '2021-07-25 22:56:41'),
(34, 'بكالوريوس العلوم', 'bachelor-of-science', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال الدعابة أو العشوائية', '2013-01-18', '2017-11-28', 1, 65, 69, '2021-07-25 22:57:31', '2021-07-25 22:57:31'),
(35, 'Secondary School Certificate', 'secondary-school-certificate', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it', '2001-01-26', '2010-12-28', 3, 66, 70, '2021-07-25 22:55:44', '2021-07-25 22:55:44'),
(36, 'Higher Secondary School Certificate', 'higher-secondary-school-certificate', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2011-01-01', '2012-12-14', 2, 66, 70, '2021-07-25 22:56:41', '2021-07-25 22:56:41'),
(37, 'Bachelor of Science', 'bachelor-of-science', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised', '2013-01-18', '2017-11-28', 1, 66, 70, '2021-07-25 22:57:31', '2021-07-25 22:57:31'),
(38, 'شهادة الثانوية العامة', 'secondary-school-certificate', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو ذلك', '2001-01-26', '2010-12-28', 3, 66, 71, '2021-07-25 22:55:44', '2021-07-25 22:55:44'),
(39, 'شهادة الثانوية العامة', 'higher-secondary-school-certificate', 'لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي', '2011-01-01', '2012-12-14', 2, 66, 71, '2021-07-25 22:56:41', '2021-07-25 22:56:41'),
(40, 'بكالوريوس العلوم', 'bachelor-of-science', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال الدعابة أو العشوائية', '2013-01-18', '2017-11-28', 1, 66, 71, '2021-07-25 22:57:31', '2021-07-25 22:57:31'),
(41, 'Secondary School Certificate', 'secondary-school-certificate', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it', '2001-01-26', '2010-12-28', 3, 67, 72, '2021-07-25 22:55:44', '2021-07-25 22:55:44'),
(42, 'Higher Secondary School Certificate', 'higher-secondary-school-certificate', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2011-01-01', '2012-12-14', 2, 67, 72, '2021-07-25 22:56:41', '2021-07-25 22:56:41'),
(43, 'Bachelor of Science', 'bachelor-of-science', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised', '2013-01-18', '2017-11-28', 1, 67, 72, '2021-07-25 22:57:31', '2021-07-25 22:57:31'),
(44, 'شهادة الثانوية العامة', 'secondary-school-certificate', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو ذلك', '2001-01-26', '2010-12-28', 3, 67, 73, '2021-07-25 22:55:44', '2021-07-25 22:55:44'),
(45, 'شهادة الثانوية العامة', 'higher-secondary-school-certificate', 'لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي', '2011-01-01', '2012-12-14', 2, 67, 73, '2021-07-25 22:56:41', '2021-07-25 22:56:41'),
(46, 'بكالوريوس العلوم', 'bachelor-of-science', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال الدعابة أو العشوائية', '2013-01-18', '2017-11-28', 1, 67, 73, '2021-07-25 22:57:31', '2021-07-25 22:57:31');

-- --------------------------------------------------------

--
-- Table structure for table `user_home_page_texts`
--

CREATE TABLE `user_home_page_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hero_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skills_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skills_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skills_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skills_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `achievement_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `achievement_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `achievement_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_home_page_texts`
--

INSERT INTO `user_home_page_texts` (`id`, `hero_image`, `first_name`, `last_name`, `designation`, `about_image`, `about_title`, `about_subtitle`, `about_content`, `skills_image`, `skills_title`, `skills_subtitle`, `skills_content`, `service_title`, `service_subtitle`, `experience_title`, `experience_subtitle`, `achievement_image`, `achievement_title`, `achievement_subtitle`, `portfolio_title`, `portfolio_subtitle`, `testimonial_title`, `testimonial_subtitle`, `blog_title`, `blog_subtitle`, `contact_title`, `contact_subtitle`, `language_id`, `user_id`, `created_at`, `updated_at`) VALUES
(10, '60fe595e232a1.jpg', 'Romario', 'Sara', 'Web Designer,Web Developer,Mobile App Developer', '60fe5a0ff1573.png', 'My Resume', 'About Me', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at est id leo luctus gravida a in ipsum. Vivamus vel molestie nisi. Aliquam maximus maximus velit, id scelerisque urna elementum nec. Aenean laoreet bibendum tellus sed tincidunt. Proin commodo blandit gravida. Etiam sollicitudin aliquet vehicula. Morbi ante libero, porttitor ut sodales non, gravida at lacus.', '60fe5a0ff1a9c.png', 'Skills', 'Technical Skills', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at est id leo luctus gravida a in ipsum. Vivamus vel molestie nisi. Aliquam maximus maximus velit, id scelerisque urna elementum nec. Aenean laoreet bibendum tellus sed tincidunt.', 'Service', 'Services I Provide', 'Experience', 'Job and Educational Experiences', '60fe5a94d25ab.jpg', 'Achievements', 'My Achievements', 'Portfolios', 'Awesome Projects', 'Testimonials', 'Clients Sayings', 'Blogs', 'Latest Blogs', 'Contact', 'Get in Touch', 62, 62, '2021-07-25 21:42:19', '2021-07-25 21:50:42'),
(11, '60fe595e232a1.jpg', 'روماريو', 'سارا', 'مصمم الويب ، مطور الويب ، مطور تطبيقات الجوال', '60fe5a0ff1573.png', 'سيرتي الذاتية', 'عني', 'Lorem ipsum dolor sit amet، consectetur adipiscing elit. الواجب المنزلي بل هو أسد الحزن الحامل من اللعبة. بث تلفزيوني مباشر أم لا. أعظم أمنيات البعض ، ليس عنصر الجرة الحرارية. لوريت تشرب الياسمين بالمنطقة لكن المطورين. الراحة في الميكروويف تجلس الحامل. حتى رعاية سيارات الموز. قبل كرة القدم الحرة ، والرياح ، والأعضاء غير الحوامل في البحيرة.', '60fe5a0ff1a9c.png', 'مهارات', 'مهارات تقنية', 'Lorem ipsum dolor sit amet، consectetur adipiscing elit. الواجب المنزلي بل هو أسد الحزن الحامل من اللعبة. بث تلفزيوني مباشر أم لا. أعظم أمنيات البعض ، ليس عنصر الجرة الحرارية. لوريت تشرب الياسمين بالمنطقة لكن المطورين.', 'خدمة', 'الخدمات التي أقدمها', 'خبرة', 'الخبرات الوظيفية والتعليمية', '60fe5a94d25ab.jpg', 'إنجازات', 'انجازاتي', 'المحافظ', 'مشاريع رائعة', 'الشهادات - التوصيات', 'اقوال العملاء', 'المدونات', 'أحدث المدونات', 'اتصال', 'ابقى على تواصل', 63, 62, '2021-07-25 21:42:19', '2021-07-25 21:50:42'),
(13, '60ffd575d1a2d.jpg', 'Ciro', 'Immobile', 'PSD Designer,Banner Designer,Logo Designer', '60fe5a0ff1573.png', 'My Resume', 'About Me', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at est id leo luctus gravida a in ipsum. Vivamus vel molestie nisi. Aliquam maximus maximus velit, id scelerisque urna elementum nec. Aenean laoreet bibendum tellus sed tincidunt. Proin commodo blandit gravida. Etiam sollicitudin aliquet vehicula. Morbi ante libero, porttitor ut sodales non, gravida at lacus.', '60fe5a0ff1a9c.png', 'Skills', 'Technical Skills', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at est id leo luctus gravida a in ipsum. Vivamus vel molestie nisi. Aliquam maximus maximus velit, id scelerisque urna elementum nec. Aenean laoreet bibendum tellus sed tincidunt.', 'Service', 'Services I Provide', 'Experience', 'Job and Educational Experiences', '60fe5a94d25ab.jpg', 'Achievements', 'My Achievements', 'Portfolios', 'Awesome Projects', 'Testimonials', 'Clients Sayings', 'Blogs', 'Latest Blogs', 'Contact', 'Get in Touch', 64, 63, '2021-07-25 21:42:19', '2021-07-27 00:44:21'),
(14, '60ffd6915a021.jpg', 'روماريو', 'سارا', 'مصمم PSD,مصمم البانر,مصمم الشعار', '60fe5a0ff1573.png', 'سيرتي الذاتية', 'عني', 'Lorem ipsum dolor sit amet، consectetur adipiscing elit. الواجب المنزلي بل هو أسد الحزن الحامل من اللعبة. بث تلفزيوني مباشر أم لا. أعظم أمنيات البعض ، ليس عنصر الجرة الحرارية. لوريت تشرب الياسمين بالمنطقة لكن المطورين. الراحة في الميكروويف تجلس الحامل. حتى رعاية سيارات الموز. قبل كرة القدم الحرة ، والرياح ، والأعضاء غير الحوامل في البحيرة.', '60fe5a0ff1a9c.png', 'مهارات', 'مهارات تقنية', 'Lorem ipsum dolor sit amet، consectetur adipiscing elit. الواجب المنزلي بل هو أسد الحزن الحامل من اللعبة. بث تلفزيوني مباشر أم لا. أعظم أمنيات البعض ، ليس عنصر الجرة الحرارية. لوريت تشرب الياسمين بالمنطقة لكن المطورين.', 'خدمة', 'الخدمات التي أقدمها', 'خبرة', 'الخبرات الوظيفية والتعليمية', '60fe5a94d25ab.jpg', 'إنجازات', 'انجازاتي', 'المحافظ', 'مشاريع رائعة', 'الشهادات - التوصيات', 'اقوال العملاء', 'المدونات', 'أحدث المدونات', 'اتصال', 'ابقى على تواصل', 65, 63, '2021-07-25 21:42:19', '2021-07-27 00:50:40'),
(15, '60ffee13877df.jpg', 'Lorenzo', 'Insigne', 'HTML Designer,Frontend Developer,Website Designer', '60fe5a0ff1573.png', 'My Resume', 'About Me', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at est id leo luctus gravida a in ipsum. Vivamus vel molestie nisi. Aliquam maximus maximus velit, id scelerisque urna elementum nec. Aenean laoreet bibendum tellus sed tincidunt. Proin commodo blandit gravida. Etiam sollicitudin aliquet vehicula. Morbi ante libero, porttitor ut sodales non, gravida at lacus.', '60fe5a0ff1a9c.png', 'Skills', 'Technical Skills', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at est id leo luctus gravida a in ipsum. Vivamus vel molestie nisi. Aliquam maximus maximus velit, id scelerisque urna elementum nec. Aenean laoreet bibendum tellus sed tincidunt.', 'Service', 'Services I Provide', 'Experience', 'Job and Educational Experiences', '60fe5a94d25ab.jpg', 'Achievements', 'My Achievements', 'Portfolios', 'Awesome Projects', 'Testimonials', 'Clients Sayings', 'Blogs', 'Latest Blogs', 'Contact', 'Get in Touch', 66, 64, '2021-07-25 21:42:19', '2021-07-27 02:29:23'),
(16, '60ffee4257a36.jpg', 'لورينزو', 'شارة', 'مصمم HTML,مطور الواجهة الأمامية,مصمم مواقع الويب', '60fe5a0ff1573.png', 'سيرتي الذاتية', 'عني', 'Lorem ipsum dolor sit amet، consectetur adipiscing elit. الواجب المنزلي بل هو أسد الحزن الحامل من اللعبة. بث تلفزيوني مباشر أم لا. أعظم أمنيات البعض ، ليس عنصر الجرة الحرارية. لوريت تشرب الياسمين بالمنطقة لكن المطورين. الراحة في الميكروويف تجلس الحامل. حتى رعاية سيارات الموز. قبل كرة القدم الحرة ، والرياح ، والأعضاء غير الحوامل في البحيرة.', '60fe5a0ff1a9c.png', 'مهارات', 'مهارات تقنية', 'Lorem ipsum dolor sit amet، consectetur adipiscing elit. الواجب المنزلي بل هو أسد الحزن الحامل من اللعبة. بث تلفزيوني مباشر أم لا. أعظم أمنيات البعض ، ليس عنصر الجرة الحرارية. لوريت تشرب الياسمين بالمنطقة لكن المطورين.', 'خدمة', 'الخدمات التي أقدمها', 'خبرة', 'الخبرات الوظيفية والتعليمية', '60fe5a94d25ab.jpg', 'إنجازات', 'انجازاتي', 'المحافظ', 'مشاريع رائعة', 'الشهادات - التوصيات', 'اقوال العملاء', 'المدونات', 'أحدث المدونات', 'اتصال', 'ابقى على تواصل', 67, 64, '2021-07-25 21:42:19', '2021-07-27 02:31:05'),
(17, '61000471bb3c4.png', 'Dani', 'Olmo', 'Web Designer,Web Developer,Mobile App Developer', '60fe5a0ff1573.png', 'My Resume', 'About Me', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at est id leo luctus gravida a in ipsum. Vivamus vel molestie nisi. Aliquam maximus maximus velit, id scelerisque urna elementum nec. Aenean laoreet bibendum tellus sed tincidunt. Proin commodo blandit gravida. Etiam sollicitudin aliquet vehicula. Morbi ante libero, porttitor ut sodales non, gravida at lacus.', '60fe5a0ff1a9c.png', 'Skills', 'Technical Skills', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at est id leo luctus gravida a in ipsum. Vivamus vel molestie nisi. Aliquam maximus maximus velit, id scelerisque urna elementum nec. Aenean laoreet bibendum tellus sed tincidunt.', 'Service', 'Services I Provide', 'Experience', 'Job and Educational Experiences', '60fe5a94d25ab.jpg', 'Achievements', 'My Achievements', 'Portfolios', 'Awesome Projects', 'Testimonials', 'Clients Sayings', 'Blogs', 'Latest Blogs', 'Contact', 'Get in Touch', 68, 65, '2021-07-25 21:42:19', '2021-07-27 04:04:49'),
(18, '6100048e2a464.png', 'داني', 'أولمو', 'مصمم الويب ، مطور الويب ، مطور تطبيقات الجوال', '60fe5a0ff1573.png', 'سيرتي الذاتية', 'عني', 'Lorem ipsum dolor sit amet، consectetur adipiscing elit. الواجب المنزلي بل هو أسد الحزن الحامل من اللعبة. بث تلفزيوني مباشر أم لا. أعظم أمنيات البعض ، ليس عنصر الجرة الحرارية. لوريت تشرب الياسمين بالمنطقة لكن المطورين. الراحة في الميكروويف تجلس الحامل. حتى رعاية سيارات الموز. قبل كرة القدم الحرة ، والرياح ، والأعضاء غير الحوامل في البحيرة.', '60fe5a0ff1a9c.png', 'مهارات', 'مهارات تقنية', 'Lorem ipsum dolor sit amet، consectetur adipiscing elit. الواجب المنزلي بل هو أسد الحزن الحامل من اللعبة. بث تلفزيوني مباشر أم لا. أعظم أمنيات البعض ، ليس عنصر الجرة الحرارية. لوريت تشرب الياسمين بالمنطقة لكن المطورين.', 'خدمة', 'الخدمات التي أقدمها', 'خبرة', 'الخبرات الوظيفية والتعليمية', '60fe5a94d25ab.jpg', 'إنجازات', 'انجازاتي', 'المحافظ', 'مشاريع رائعة', 'الشهادات - التوصيات', 'اقوال العملاء', 'المدونات', 'أحدث المدونات', 'اتصال', 'ابقى على تواصل', 69, 65, '2021-07-25 21:42:19', '2021-07-27 04:05:18'),
(19, '610011d32ac4f.jpg', 'Adrien', 'Rabiot', 'Lawyer,Attorney', '60fe5a0ff1573.png', 'My Resume', 'About Me', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at est id leo luctus gravida a in ipsum. Vivamus vel molestie nisi. Aliquam maximus maximus velit, id scelerisque urna elementum nec. Aenean laoreet bibendum tellus sed tincidunt. Proin commodo blandit gravida. Etiam sollicitudin aliquet vehicula. Morbi ante libero, porttitor ut sodales non, gravida at lacus.', '60fe5a0ff1a9c.png', 'Skills', 'Technical Skills', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at est id leo luctus gravida a in ipsum. Vivamus vel molestie nisi. Aliquam maximus maximus velit, id scelerisque urna elementum nec. Aenean laoreet bibendum tellus sed tincidunt.', 'Service', 'Services I Provide', 'Experience', 'Job and Educational Experiences', '60fe5a94d25ab.jpg', 'Achievements', 'My Achievements', 'Portfolios', 'Awesome Projects', 'Testimonials', 'Clients Sayings', 'Blogs', 'Latest Blogs', 'Contact', 'Get in Touch', 70, 66, '2021-07-25 21:42:19', '2021-07-27 05:01:55'),
(20, '61001204bf8bd.jpg', 'أدريان', 'رابيوت', 'محامي', '60fe5a0ff1573.png', 'سيرتي الذاتية', 'عني', 'Lorem ipsum dolor sit amet، consectetur adipiscing elit. الواجب المنزلي بل هو أسد الحزن الحامل من اللعبة. بث تلفزيوني مباشر أم لا. أعظم أمنيات البعض ، ليس عنصر الجرة الحرارية. لوريت تشرب الياسمين بالمنطقة لكن المطورين. الراحة في الميكروويف تجلس الحامل. حتى رعاية سيارات الموز. قبل كرة القدم الحرة ، والرياح ، والأعضاء غير الحوامل في البحيرة.', '60fe5a0ff1a9c.png', 'مهارات', 'مهارات تقنية', 'Lorem ipsum dolor sit amet، consectetur adipiscing elit. الواجب المنزلي بل هو أسد الحزن الحامل من اللعبة. بث تلفزيوني مباشر أم لا. أعظم أمنيات البعض ، ليس عنصر الجرة الحرارية. لوريت تشرب الياسمين بالمنطقة لكن المطورين.', 'خدمة', 'الخدمات التي أقدمها', 'خبرة', 'الخبرات الوظيفية والتعليمية', '60fe5a94d25ab.jpg', 'إنجازات', 'انجازاتي', 'المحافظ', 'مشاريع رائعة', 'الشهادات - التوصيات', 'اقوال العملاء', 'المدونات', 'أحدث المدونات', 'اتصال', 'ابقى على تواصل', 71, 66, '2021-07-25 21:42:19', '2021-07-27 05:02:44'),
(22, '61001b0f20d41.png', 'Ivan', 'Rakitic', 'Teacher,Lecturer,Math Techer', '60fe5a0ff1573.png', 'My Resume', 'About Me', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at est id leo luctus gravida a in ipsum. Vivamus vel molestie nisi. Aliquam maximus maximus velit, id scelerisque urna elementum nec. Aenean laoreet bibendum tellus sed tincidunt. Proin commodo blandit gravida. Etiam sollicitudin aliquet vehicula. Morbi ante libero, porttitor ut sodales non, gravida at lacus.', '60fe5a0ff1a9c.png', 'Skills', 'Technical Skills', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at est id leo luctus gravida a in ipsum. Vivamus vel molestie nisi. Aliquam maximus maximus velit, id scelerisque urna elementum nec. Aenean laoreet bibendum tellus sed tincidunt.', 'Service', 'Services I Provide', 'Experience', 'Job and Educational Experiences', '60fe5a94d25ab.jpg', 'Achievements', 'My Achievements', 'Portfolios', 'Awesome Projects', 'Testimonials', 'Clients Sayings', 'Blogs', 'Latest Blogs', 'Contact', 'Get in Touch', 72, 67, '2021-07-25 21:42:19', '2021-07-27 05:41:19'),
(23, '61001b47dda7f.png', 'إيفان', 'راكيتيتش', 'تاتشر,محاضر,مدرس رياضيات', '60fe5a0ff1573.png', 'سيرتي الذاتية', 'عني', 'Lorem ipsum dolor sit amet، consectetur adipiscing elit. الواجب المنزلي بل هو أسد الحزن الحامل من اللعبة. بث تلفزيوني مباشر أم لا. أعظم أمنيات البعض ، ليس عنصر الجرة الحرارية. لوريت تشرب الياسمين بالمنطقة لكن المطورين. الراحة في الميكروويف تجلس الحامل. حتى رعاية سيارات الموز. قبل كرة القدم الحرة ، والرياح ، والأعضاء غير الحوامل في البحيرة.', '60fe5a0ff1a9c.png', 'مهارات', 'مهارات تقنية', 'Lorem ipsum dolor sit amet، consectetur adipiscing elit. الواجب المنزلي بل هو أسد الحزن الحامل من اللعبة. بث تلفزيوني مباشر أم لا. أعظم أمنيات البعض ، ليس عنصر الجرة الحرارية. لوريت تشرب الياسمين بالمنطقة لكن المطورين.', 'خدمة', 'الخدمات التي أقدمها', 'خبرة', 'الخبرات الوظيفية والتعليمية', '60fe5a94d25ab.jpg', 'إنجازات', 'انجازاتي', 'المحافظ', 'مشاريع رائعة', 'الشهادات - التوصيات', 'اقوال العملاء', 'المدونات', 'أحدث المدونات', 'اتصال', 'ابقى على تواصل', 73, 67, '2021-07-25 21:42:19', '2021-07-27 05:42:15');

-- --------------------------------------------------------

--
-- Table structure for table `user_languages`
--

CREATE TABLE `user_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) NOT NULL COMMENT '0 - LTR, 1- RTL',
  `keywords` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_languages`
--

INSERT INTO `user_languages` (`id`, `name`, `code`, `is_default`, `rtl`, `keywords`, `user_id`, `created_at`, `updated_at`) VALUES
(52, 'Default', 'de', 0, 0, '{\"Home\":\"Home\",\"Services\":\"Services\",\"Portfolios\":\"Portfolios\",\"Blogs\":\"Blogs\",\"Contact\":\"Contact\",\"Download_CV\":\"Download CV\",\"Hire_me\":\"Hire me\",\"Job\":\"Job\",\"Education\":\"Education\",\"All\":\"All\",\"Name\":\"Name\",\"Email_Address\":\"Email Address\",\"Subject\":\"Subject\",\"Message\":\"Message\",\"Send_Message\":\"Send Message\",\"Stay_Connected\":\"Stay Connected\",\"Service_Details\":\"Service Details\",\"Categories\":\"Categories\",\"Portfolio_Details\":\"Portfolio Details\",\"Related_Portfolios\":\"Related Portfolios\",\"by\":\"by\",\"Search_Here\":\"Search Here\",\"Search_your_keyword\":\"Search your keyword\",\"Latest_Blogs\":\"Latest Blogs\",\"Blog_Details\":\"Blog Details\",\"Facebook\":\"Facebook\",\"Twitter\":\"Twitter\",\"Linkedin\":\"Linkedin\"}', NULL, NULL, NULL),
(62, 'English', 'en', 1, 0, '{\"Home\":\"Home\",\"Services\":\"Services\",\"Portfolios\":\"Portfolios\",\"Blogs\":\"Blogs\",\"Contact\":\"Contact\",\"Download_CV\":\"Download CV\",\"Hire_me\":\"Hire me\",\"Job\":\"Job\",\"Education\":\"Education\",\"All\":\"All\",\"Name\":\"Name\",\"Email_Address\":\"Email Address\",\"Subject\":\"Subject\",\"Message\":\"Message\",\"Send_Message\":\"Send Message\",\"Stay_Connected\":\"Stay Connected\",\"Service_Details\":\"Service Details\",\"Categories\":\"Categories\",\"Portfolio_Details\":\"Portfolio Details\",\"Related_Portfolios\":\"Related Portfolios\",\"by\":\"by\",\"Search_Here\":\"Search Here\",\"Search_your_keyword\":\"Search your keyword\",\"Latest_Blogs\":\"Latest Blogs\",\"Blog_Details\":\"Blog Details\",\"Facebook\":\"Facebook\",\"Twitter\":\"Twitter\",\"Linkedin\":\"Linkedin\"}', 62, '2021-07-25 21:39:46', '2021-07-25 21:39:46'),
(63, 'عربى', 'ar', 0, 1, '{\"Home\":\"\\u0627\\u0644\\u0635\\u0641\\u062d\\u0629 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\",\"Services\":\"\\u062e\\u062f\\u0645\\u0627\\u062a\",\"Portfolios\":\"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0641\\u0638\",\"Blogs\":\"\\u0627\\u0644\\u0645\\u062f\\u0648\\u0646\\u0627\\u062a\",\"Contact\":\"\\u0627\\u062a\\u0635\\u0627\\u0644\",\"Download_CV\":\"\\u062a\\u062d\\u0645\\u064a\\u0644 \\u0627\\u0644\\u0633\\u064a\\u0631\\u0629 \\u0627\\u0644\\u0630\\u0627\\u062a\\u064a\\u0629\",\"Hire_me\":\"\\u0648\\u0638\\u0641\\u0646\\u064a\",\"Job\":\"\\u0645\\u0647\\u0646\\u0629\",\"Education\":\"\\u062a\\u0639\\u0644\\u064a\\u0645\",\"All\":\"\\u0627\\u0644\\u062c\\u0645\\u064a\\u0639\",\"Name\":\"\\u0627\\u0633\\u0645\",\"Email_Address\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"Subject\":\"\\u0645\\u0648\\u0636\\u0648\\u0639\",\"Message\":\"\\u0631\\u0633\\u0627\\u0644\\u0629\",\"Send_Message\":\"\\u0623\\u0631\\u0633\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629\",\"Stay_Connected\":\"\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644\",\"Service_Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629\",\"Categories\":\"\\u0641\\u0626\\u0627\\u062a\",\"Portfolio_Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0645\\u062d\\u0641\\u0638\\u0629\",\"Related_Portfolios\":\"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0641\\u0638 \\u0630\\u0627\\u062a \\u0627\\u0644\\u0635\\u0644\\u0629\",\"by\":\"\\u0628\\u0648\\u0627\\u0633\\u0637\\u0629\",\"Search_Here\":\"\\u0627\\u0628\\u062d\\u062b \\u0647\\u0646\\u0627\",\"Search_your_keyword\":\"\\u0627\\u0628\\u062d\\u062b \\u0641\\u064a \\u0643\\u0644\\u0645\\u062a\\u0643 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\",\"Latest_Blogs\":\"\\u0623\\u062d\\u062f\\u062b \\u0627\\u0644\\u0645\\u062f\\u0648\\u0646\\u0627\\u062a\",\"Blog_Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0645\\u062f\\u0648\\u0646\\u0629\",\"Facebook\":\"\\u0641\\u064a\\u0633\\u0628\\u0648\\u0643\",\"Twitter\":\"\\u062a\\u0648\\u064a\\u062a\\u0631\",\"Linkedin\":\"\\u064a\\u0646\\u0643\\u062f\\u064a\\u0646\"}', 62, '2021-07-25 22:22:10', '2021-07-26 01:43:47'),
(64, 'English', 'en', 1, 0, '{\"Home\":\"Home\",\"Services\":\"Services\",\"Portfolios\":\"Portfolios\",\"Blogs\":\"Blogs\",\"Contact\":\"Contact\",\"Download_CV\":\"Download CV\",\"Hire_me\":\"Hire me\",\"Job\":\"Job\",\"Education\":\"Education\",\"All\":\"All\",\"Name\":\"Name\",\"Email_Address\":\"Email Address\",\"Subject\":\"Subject\",\"Message\":\"Message\",\"Send_Message\":\"Send Message\",\"Stay_Connected\":\"Stay Connected\",\"Service_Details\":\"Service Details\",\"Categories\":\"Categories\",\"Portfolio_Details\":\"Portfolio Details\",\"Related_Portfolios\":\"Related Portfolios\",\"by\":\"by\",\"Search_Here\":\"Search Here\",\"Search_your_keyword\":\"Search your keyword\",\"Latest_Blogs\":\"Latest Blogs\",\"Blog_Details\":\"Blog Details\",\"Facebook\":\"Facebook\",\"Twitter\":\"Twitter\",\"Linkedin\":\"Linkedin\"}', 63, '2021-07-26 23:22:27', '2021-07-26 23:22:27'),
(65, 'عربى', 'ar', 0, 1, '{\"Home\":\"\\u0627\\u0644\\u0635\\u0641\\u062d\\u0629 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\",\"Services\":\"\\u062e\\u062f\\u0645\\u0627\\u062a\",\"Portfolios\":\"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0641\\u0638\",\"Blogs\":\"\\u0627\\u0644\\u0645\\u062f\\u0648\\u0646\\u0627\\u062a\",\"Contact\":\"\\u0627\\u062a\\u0635\\u0627\\u0644\",\"Download_CV\":\"\\u062a\\u062d\\u0645\\u064a\\u0644 \\u0627\\u0644\\u0633\\u064a\\u0631\\u0629 \\u0627\\u0644\\u0630\\u0627\\u062a\\u064a\\u0629\",\"Hire_me\":\"\\u0648\\u0638\\u0641\\u0646\\u064a\",\"Job\":\"\\u0645\\u0647\\u0646\\u0629\",\"Education\":\"\\u062a\\u0639\\u0644\\u064a\\u0645\",\"All\":\"\\u0627\\u0644\\u062c\\u0645\\u064a\\u0639\",\"Name\":\"\\u0627\\u0633\\u0645\",\"Email_Address\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"Subject\":\"\\u0645\\u0648\\u0636\\u0648\\u0639\",\"Message\":\"\\u0631\\u0633\\u0627\\u0644\\u0629\",\"Send_Message\":\"\\u0623\\u0631\\u0633\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629\",\"Stay_Connected\":\"\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644\",\"Service_Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629\",\"Categories\":\"\\u0641\\u0626\\u0627\\u062a\",\"Portfolio_Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0645\\u062d\\u0641\\u0638\\u0629\",\"Related_Portfolios\":\"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0641\\u0638 \\u0630\\u0627\\u062a \\u0627\\u0644\\u0635\\u0644\\u0629\",\"by\":\"\\u0628\\u0648\\u0627\\u0633\\u0637\\u0629\",\"Search_Here\":\"\\u0627\\u0628\\u062d\\u062b \\u0647\\u0646\\u0627\",\"Search_your_keyword\":\"\\u0627\\u0628\\u062d\\u062b \\u0641\\u064a \\u0643\\u0644\\u0645\\u062a\\u0643 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\",\"Latest_Blogs\":\"\\u0623\\u062d\\u062f\\u062b \\u0627\\u0644\\u0645\\u062f\\u0648\\u0646\\u0627\\u062a\",\"Blog_Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0645\\u062f\\u0648\\u0646\\u0629\",\"Facebook\":\"\\u0641\\u064a\\u0633\\u0628\\u0648\\u0643\",\"Twitter\":\"\\u062a\\u0648\\u064a\\u062a\\u0631\",\"Linkedin\":\"\\u064a\\u0646\\u0643\\u062f\\u064a\\u0646\"}', 63, '2021-07-25 22:22:10', '2021-07-26 01:43:47'),
(66, 'English', 'en', 1, 0, '{\"Home\":\"Home\",\"Services\":\"Services\",\"Portfolios\":\"Portfolios\",\"Blogs\":\"Blogs\",\"Contact\":\"Contact\",\"Download_CV\":\"Download CV\",\"Hire_me\":\"Hire me\",\"Job\":\"Job\",\"Education\":\"Education\",\"All\":\"All\",\"Name\":\"Name\",\"Email_Address\":\"Email Address\",\"Subject\":\"Subject\",\"Message\":\"Message\",\"Send_Message\":\"Send Message\",\"Stay_Connected\":\"Stay Connected\",\"Service_Details\":\"Service Details\",\"Categories\":\"Categories\",\"Portfolio_Details\":\"Portfolio Details\",\"Related_Portfolios\":\"Related Portfolios\",\"by\":\"by\",\"Search_Here\":\"Search Here\",\"Search_your_keyword\":\"Search your keyword\",\"Latest_Blogs\":\"Latest Blogs\",\"Blog_Details\":\"Blog Details\",\"Facebook\":\"Facebook\",\"Twitter\":\"Twitter\",\"Linkedin\":\"Linkedin\"}', 64, '2021-07-27 02:15:35', '2021-07-27 02:15:35'),
(67, 'عربى', 'ar', 0, 1, '{\"Home\":\"\\u0627\\u0644\\u0635\\u0641\\u062d\\u0629 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\",\"Services\":\"\\u062e\\u062f\\u0645\\u0627\\u062a\",\"Portfolios\":\"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0641\\u0638\",\"Blogs\":\"\\u0627\\u0644\\u0645\\u062f\\u0648\\u0646\\u0627\\u062a\",\"Contact\":\"\\u0627\\u062a\\u0635\\u0627\\u0644\",\"Download_CV\":\"\\u062a\\u062d\\u0645\\u064a\\u0644 \\u0627\\u0644\\u0633\\u064a\\u0631\\u0629 \\u0627\\u0644\\u0630\\u0627\\u062a\\u064a\\u0629\",\"Hire_me\":\"\\u0648\\u0638\\u0641\\u0646\\u064a\",\"Job\":\"\\u0645\\u0647\\u0646\\u0629\",\"Education\":\"\\u062a\\u0639\\u0644\\u064a\\u0645\",\"All\":\"\\u0627\\u0644\\u062c\\u0645\\u064a\\u0639\",\"Name\":\"\\u0627\\u0633\\u0645\",\"Email_Address\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"Subject\":\"\\u0645\\u0648\\u0636\\u0648\\u0639\",\"Message\":\"\\u0631\\u0633\\u0627\\u0644\\u0629\",\"Send_Message\":\"\\u0623\\u0631\\u0633\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629\",\"Stay_Connected\":\"\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644\",\"Service_Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629\",\"Categories\":\"\\u0641\\u0626\\u0627\\u062a\",\"Portfolio_Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0645\\u062d\\u0641\\u0638\\u0629\",\"Related_Portfolios\":\"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0641\\u0638 \\u0630\\u0627\\u062a \\u0627\\u0644\\u0635\\u0644\\u0629\",\"by\":\"\\u0628\\u0648\\u0627\\u0633\\u0637\\u0629\",\"Search_Here\":\"\\u0627\\u0628\\u062d\\u062b \\u0647\\u0646\\u0627\",\"Search_your_keyword\":\"\\u0627\\u0628\\u062d\\u062b \\u0641\\u064a \\u0643\\u0644\\u0645\\u062a\\u0643 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\",\"Latest_Blogs\":\"\\u0623\\u062d\\u062f\\u062b \\u0627\\u0644\\u0645\\u062f\\u0648\\u0646\\u0627\\u062a\",\"Blog_Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0645\\u062f\\u0648\\u0646\\u0629\",\"Facebook\":\"\\u0641\\u064a\\u0633\\u0628\\u0648\\u0643\",\"Twitter\":\"\\u062a\\u0648\\u064a\\u062a\\u0631\",\"Linkedin\":\"\\u064a\\u0646\\u0643\\u062f\\u064a\\u0646\"}', 64, '2021-07-25 22:22:10', '2021-07-26 01:43:47'),
(68, 'English', 'en', 1, 0, '{\"Home\":\"Home\",\"Services\":\"Services\",\"Portfolios\":\"Portfolios\",\"Blogs\":\"Blogs\",\"Contact\":\"Contact\",\"Download_CV\":\"Download CV\",\"Hire_me\":\"Hire me\",\"Job\":\"Job\",\"Education\":\"Education\",\"All\":\"All\",\"Name\":\"Name\",\"Email_Address\":\"Email Address\",\"Subject\":\"Subject\",\"Message\":\"Message\",\"Send_Message\":\"Send Message\",\"Stay_Connected\":\"Stay Connected\",\"Service_Details\":\"Service Details\",\"Categories\":\"Categories\",\"Portfolio_Details\":\"Portfolio Details\",\"Related_Portfolios\":\"Related Portfolios\",\"by\":\"by\",\"Search_Here\":\"Search Here\",\"Search_your_keyword\":\"Search your keyword\",\"Latest_Blogs\":\"Latest Blogs\",\"Blog_Details\":\"Blog Details\",\"Facebook\":\"Facebook\",\"Twitter\":\"Twitter\",\"Linkedin\":\"Linkedin\"}', 65, '2021-07-27 03:57:16', '2021-07-27 03:57:16'),
(69, 'عربى', 'ar', 0, 1, '{\"Home\":\"\\u0627\\u0644\\u0635\\u0641\\u062d\\u0629 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\",\"Services\":\"\\u062e\\u062f\\u0645\\u0627\\u062a\",\"Portfolios\":\"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0641\\u0638\",\"Blogs\":\"\\u0627\\u0644\\u0645\\u062f\\u0648\\u0646\\u0627\\u062a\",\"Contact\":\"\\u0627\\u062a\\u0635\\u0627\\u0644\",\"Download_CV\":\"\\u062a\\u062d\\u0645\\u064a\\u0644 \\u0627\\u0644\\u0633\\u064a\\u0631\\u0629 \\u0627\\u0644\\u0630\\u0627\\u062a\\u064a\\u0629\",\"Hire_me\":\"\\u0648\\u0638\\u0641\\u0646\\u064a\",\"Job\":\"\\u0645\\u0647\\u0646\\u0629\",\"Education\":\"\\u062a\\u0639\\u0644\\u064a\\u0645\",\"All\":\"\\u0627\\u0644\\u062c\\u0645\\u064a\\u0639\",\"Name\":\"\\u0627\\u0633\\u0645\",\"Email_Address\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"Subject\":\"\\u0645\\u0648\\u0636\\u0648\\u0639\",\"Message\":\"\\u0631\\u0633\\u0627\\u0644\\u0629\",\"Send_Message\":\"\\u0623\\u0631\\u0633\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629\",\"Stay_Connected\":\"\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644\",\"Service_Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629\",\"Categories\":\"\\u0641\\u0626\\u0627\\u062a\",\"Portfolio_Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0645\\u062d\\u0641\\u0638\\u0629\",\"Related_Portfolios\":\"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0641\\u0638 \\u0630\\u0627\\u062a \\u0627\\u0644\\u0635\\u0644\\u0629\",\"by\":\"\\u0628\\u0648\\u0627\\u0633\\u0637\\u0629\",\"Search_Here\":\"\\u0627\\u0628\\u062d\\u062b \\u0647\\u0646\\u0627\",\"Search_your_keyword\":\"\\u0627\\u0628\\u062d\\u062b \\u0641\\u064a \\u0643\\u0644\\u0645\\u062a\\u0643 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\",\"Latest_Blogs\":\"\\u0623\\u062d\\u062f\\u062b \\u0627\\u0644\\u0645\\u062f\\u0648\\u0646\\u0627\\u062a\",\"Blog_Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0645\\u062f\\u0648\\u0646\\u0629\",\"Facebook\":\"\\u0641\\u064a\\u0633\\u0628\\u0648\\u0643\",\"Twitter\":\"\\u062a\\u0648\\u064a\\u062a\\u0631\",\"Linkedin\":\"\\u064a\\u0646\\u0643\\u062f\\u064a\\u0646\"}', 65, '2021-07-25 22:22:10', '2021-07-26 01:43:47'),
(70, 'English', 'en', 1, 0, '{\"Home\":\"Home\",\"Services\":\"Services\",\"Portfolios\":\"Portfolios\",\"Blogs\":\"Blogs\",\"Contact\":\"Contact\",\"Download_CV\":\"Download CV\",\"Hire_me\":\"Hire me\",\"Job\":\"Job\",\"Education\":\"Education\",\"All\":\"All\",\"Name\":\"Name\",\"Email_Address\":\"Email Address\",\"Subject\":\"Subject\",\"Message\":\"Message\",\"Send_Message\":\"Send Message\",\"Stay_Connected\":\"Stay Connected\",\"Service_Details\":\"Service Details\",\"Categories\":\"Categories\",\"Portfolio_Details\":\"Portfolio Details\",\"Related_Portfolios\":\"Related Portfolios\",\"by\":\"by\",\"Search_Here\":\"Search Here\",\"Search_your_keyword\":\"Search your keyword\",\"Latest_Blogs\":\"Latest Blogs\",\"Blog_Details\":\"Blog Details\",\"Facebook\":\"Facebook\",\"Twitter\":\"Twitter\",\"Linkedin\":\"Linkedin\"}', 66, '2021-07-27 04:52:38', '2021-07-27 04:52:38'),
(71, 'عربى', 'ar', 0, 1, '{\"Home\":\"\\u0627\\u0644\\u0635\\u0641\\u062d\\u0629 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\",\"Services\":\"\\u062e\\u062f\\u0645\\u0627\\u062a\",\"Portfolios\":\"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0641\\u0638\",\"Blogs\":\"\\u0627\\u0644\\u0645\\u062f\\u0648\\u0646\\u0627\\u062a\",\"Contact\":\"\\u0627\\u062a\\u0635\\u0627\\u0644\",\"Download_CV\":\"\\u062a\\u062d\\u0645\\u064a\\u0644 \\u0627\\u0644\\u0633\\u064a\\u0631\\u0629 \\u0627\\u0644\\u0630\\u0627\\u062a\\u064a\\u0629\",\"Hire_me\":\"\\u0648\\u0638\\u0641\\u0646\\u064a\",\"Job\":\"\\u0645\\u0647\\u0646\\u0629\",\"Education\":\"\\u062a\\u0639\\u0644\\u064a\\u0645\",\"All\":\"\\u0627\\u0644\\u062c\\u0645\\u064a\\u0639\",\"Name\":\"\\u0627\\u0633\\u0645\",\"Email_Address\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"Subject\":\"\\u0645\\u0648\\u0636\\u0648\\u0639\",\"Message\":\"\\u0631\\u0633\\u0627\\u0644\\u0629\",\"Send_Message\":\"\\u0623\\u0631\\u0633\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629\",\"Stay_Connected\":\"\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644\",\"Service_Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629\",\"Categories\":\"\\u0641\\u0626\\u0627\\u062a\",\"Portfolio_Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0645\\u062d\\u0641\\u0638\\u0629\",\"Related_Portfolios\":\"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0641\\u0638 \\u0630\\u0627\\u062a \\u0627\\u0644\\u0635\\u0644\\u0629\",\"by\":\"\\u0628\\u0648\\u0627\\u0633\\u0637\\u0629\",\"Search_Here\":\"\\u0627\\u0628\\u062d\\u062b \\u0647\\u0646\\u0627\",\"Search_your_keyword\":\"\\u0627\\u0628\\u062d\\u062b \\u0641\\u064a \\u0643\\u0644\\u0645\\u062a\\u0643 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\",\"Latest_Blogs\":\"\\u0623\\u062d\\u062f\\u062b \\u0627\\u0644\\u0645\\u062f\\u0648\\u0646\\u0627\\u062a\",\"Blog_Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0645\\u062f\\u0648\\u0646\\u0629\",\"Facebook\":\"\\u0641\\u064a\\u0633\\u0628\\u0648\\u0643\",\"Twitter\":\"\\u062a\\u0648\\u064a\\u062a\\u0631\",\"Linkedin\":\"\\u064a\\u0646\\u0643\\u062f\\u064a\\u0646\"}', 66, '2021-07-25 22:22:10', '2021-07-26 01:43:47'),
(72, 'English', 'en', 1, 0, '{\"Home\":\"Home\",\"Services\":\"Services\",\"Portfolios\":\"Portfolios\",\"Blogs\":\"Blogs\",\"Contact\":\"Contact\",\"Download_CV\":\"Download CV\",\"Hire_me\":\"Hire me\",\"Job\":\"Job\",\"Education\":\"Education\",\"All\":\"All\",\"Name\":\"Name\",\"Email_Address\":\"Email Address\",\"Subject\":\"Subject\",\"Message\":\"Message\",\"Send_Message\":\"Send Message\",\"Stay_Connected\":\"Stay Connected\",\"Service_Details\":\"Service Details\",\"Categories\":\"Categories\",\"Portfolio_Details\":\"Portfolio Details\",\"Related_Portfolios\":\"Related Portfolios\",\"by\":\"by\",\"Search_Here\":\"Search Here\",\"Search_your_keyword\":\"Search your keyword\",\"Latest_Blogs\":\"Latest Blogs\",\"Blog_Details\":\"Blog Details\",\"Facebook\":\"Facebook\",\"Twitter\":\"Twitter\",\"Linkedin\":\"Linkedin\"}', 67, '2021-07-27 05:32:14', '2021-07-27 05:32:14'),
(73, 'عربى', 'ar', 0, 1, '{\"Home\":\"\\u0627\\u0644\\u0635\\u0641\\u062d\\u0629 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\",\"Services\":\"\\u062e\\u062f\\u0645\\u0627\\u062a\",\"Portfolios\":\"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0641\\u0638\",\"Blogs\":\"\\u0627\\u0644\\u0645\\u062f\\u0648\\u0646\\u0627\\u062a\",\"Contact\":\"\\u0627\\u062a\\u0635\\u0627\\u0644\",\"Download_CV\":\"\\u062a\\u062d\\u0645\\u064a\\u0644 \\u0627\\u0644\\u0633\\u064a\\u0631\\u0629 \\u0627\\u0644\\u0630\\u0627\\u062a\\u064a\\u0629\",\"Hire_me\":\"\\u0648\\u0638\\u0641\\u0646\\u064a\",\"Job\":\"\\u0645\\u0647\\u0646\\u0629\",\"Education\":\"\\u062a\\u0639\\u0644\\u064a\\u0645\",\"All\":\"\\u0627\\u0644\\u062c\\u0645\\u064a\\u0639\",\"Name\":\"\\u0627\\u0633\\u0645\",\"Email_Address\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"Subject\":\"\\u0645\\u0648\\u0636\\u0648\\u0639\",\"Message\":\"\\u0631\\u0633\\u0627\\u0644\\u0629\",\"Send_Message\":\"\\u0623\\u0631\\u0633\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629\",\"Stay_Connected\":\"\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644\",\"Service_Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629\",\"Categories\":\"\\u0641\\u0626\\u0627\\u062a\",\"Portfolio_Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0645\\u062d\\u0641\\u0638\\u0629\",\"Related_Portfolios\":\"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0641\\u0638 \\u0630\\u0627\\u062a \\u0627\\u0644\\u0635\\u0644\\u0629\",\"by\":\"\\u0628\\u0648\\u0627\\u0633\\u0637\\u0629\",\"Search_Here\":\"\\u0627\\u0628\\u062d\\u062b \\u0647\\u0646\\u0627\",\"Search_your_keyword\":\"\\u0627\\u0628\\u062d\\u062b \\u0641\\u064a \\u0643\\u0644\\u0645\\u062a\\u0643 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\",\"Latest_Blogs\":\"\\u0623\\u062d\\u062f\\u062b \\u0627\\u0644\\u0645\\u062f\\u0648\\u0646\\u0627\\u062a\",\"Blog_Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0645\\u062f\\u0648\\u0646\\u0629\",\"Facebook\":\"\\u0641\\u064a\\u0633\\u0628\\u0648\\u0643\",\"Twitter\":\"\\u062a\\u0648\\u064a\\u062a\\u0631\",\"Linkedin\":\"\\u064a\\u0646\\u0643\\u062f\\u064a\\u0646\"}', 67, '2021-07-25 22:22:10', '2021-07-26 01:43:47');

-- --------------------------------------------------------

--
-- Table structure for table `user_permissions`
--

CREATE TABLE `user_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_permissions`
--

INSERT INTO `user_permissions` (`id`, `package_id`, `user_id`, `permissions`, `created_at`, `updated_at`) VALUES
(28, 15, 62, '[\"Follow\\/Unfollow\",\"Blog\",\"Portfolio\",\"Achievements\",\"Skill\",\"Service\",\"Experience\",\"Testimonial\",\"Contact\"]', '2021-07-25 21:39:50', '2021-08-21 19:52:54'),
(29, 15, 63, '[\"Follow\\/Unfollow\",\"Blog\",\"Portfolio\",\"Achievements\",\"Skill\",\"Service\",\"Experience\",\"Testimonial\",\"Contact\",\"QR Builder\"]', '2021-07-26 23:22:31', '2021-08-04 19:35:45'),
(30, 16, 64, '[\"Follow\\/Unfollow\",\"Blog\",\"Portfolio\",\"Achievements\",\"Skill\",\"Service\",\"Experience\",\"Testimonial\",\"Contact\",\"QR Builder\"]', '2021-07-27 02:15:39', '2021-08-04 19:35:45'),
(31, 15, 65, '[\"Follow\\/Unfollow\",\"Blog\",\"Portfolio\",\"Achievements\",\"Skill\",\"Service\",\"Experience\",\"Testimonial\",\"Contact\",\"QR Builder\"]', '2021-07-27 03:57:21', '2021-08-04 19:35:45'),
(32, 15, 66, '[\"Follow\\/Unfollow\",\"Blog\",\"Portfolio\",\"Achievements\",\"Skill\",\"Service\",\"Experience\",\"Testimonial\",\"Contact\",\"QR Builder\"]', '2021-07-27 04:52:43', '2021-08-04 19:35:45'),
(33, 16, 67, '[\"Follow\\/Unfollow\",\"Blog\",\"Portfolio\",\"Achievements\",\"Skill\",\"Service\",\"Experience\",\"Testimonial\",\"Contact\",\"QR Builder\"]', '2021-07-27 05:32:19', '2021-08-04 19:35:45');

-- --------------------------------------------------------

--
-- Table structure for table `user_portfolios`
--

CREATE TABLE `user_portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_portfolios`
--

INSERT INTO `user_portfolios` (`id`, `title`, `slug`, `image`, `content`, `serial_number`, `featured`, `language_id`, `category_id`, `user_id`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(26, 'Ecommerce Website', 'ecommerce-website', '1627286836.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 1, 62, 15, 62, NULL, NULL, '2021-07-25 23:07:16', '2021-07-25 23:07:16'),
(27, 'Logo Design', 'logo-design', '1627286882.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 2, 1, 62, 16, 62, NULL, NULL, '2021-07-25 23:08:02', '2021-07-25 23:08:02'),
(28, 'Medical App', 'medical-app', '1627286919.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 3, 1, 62, 17, 62, NULL, NULL, '2021-07-25 23:08:39', '2021-07-25 23:08:39'),
(29, 'Taxi App', 'taxi-app', '1627286965.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 4, 1, 62, 17, 62, NULL, NULL, '2021-07-25 23:09:25', '2021-07-26 22:57:44'),
(30, 'Investment App UI', 'investment-app-ui', '1627287017.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 5, 1, 62, 16, 62, NULL, NULL, '2021-07-25 23:10:17', '2021-07-25 23:10:17'),
(31, 'QR Menu Maker', 'qr-menu-maker', '1627287054.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 6, 1, 62, 15, 62, NULL, NULL, '2021-07-25 23:10:54', '2021-07-25 23:10:54'),
(32, 'موقع التجارة الإلكترونية', 'موقع-التجارة-الإلكترونية', '1627286836.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 1, 1, 63, 18, 62, NULL, NULL, '2021-07-25 23:07:16', '2021-07-25 23:07:16'),
(33, 'تصميم شعار', 'تصميم-شعار', '1627286882.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 2, 1, 63, 19, 62, NULL, NULL, '2021-07-25 23:08:02', '2021-07-25 23:08:02'),
(34, 'التطبيق الطبي', 'التطبيق-الطبي', '1627286919.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 3, 1, 63, 20, 62, NULL, NULL, '2021-07-25 23:08:39', '2021-07-25 23:08:39'),
(35, 'تطبيق تاكسي', 'تطبيق-تاكسي', '1627286965.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 4, 1, 63, 20, 62, NULL, NULL, '2021-07-25 23:09:25', '2021-07-25 23:09:25'),
(36, 'واجهة مستخدم تطبيق الاستثمار', 'واجهة-مستخدم-تطبيق-الاستثمار', '1627287017.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 5, 1, 63, 19, 62, NULL, NULL, '2021-07-25 23:10:17', '2021-07-25 23:10:17'),
(37, 'صانع قائمة QR', 'صانع-قائمة-qr', '1627287054.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 6, 1, 63, 18, 62, NULL, NULL, '2021-07-25 23:10:54', '2021-07-25 23:10:54'),
(38, 'Ecommerce Website', 'ecommerce-website', '1627286836.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 1, 64, 21, 63, NULL, NULL, '2021-07-25 23:07:16', '2021-07-25 23:07:16'),
(39, 'Logo Design', 'logo-design', '1627286882.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 2, 1, 64, 22, 63, NULL, NULL, '2021-07-25 23:08:02', '2021-07-25 23:08:02'),
(40, 'Medical App', 'medical-app', '1627286919.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 3, 1, 64, 23, 63, NULL, NULL, '2021-07-25 23:08:39', '2021-07-25 23:08:39'),
(41, 'Taxi App', 'taxi-app', '1627286965.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 4, 1, 64, 21, 63, NULL, NULL, '2021-07-25 23:09:25', '2021-07-26 22:57:44'),
(42, 'Investment App UI', 'investment-app-ui', '1627287017.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 5, 1, 64, 22, 63, NULL, NULL, '2021-07-25 23:10:17', '2021-07-25 23:10:17'),
(43, 'QR Menu Maker', 'qr-menu-maker', '1627287054.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 6, 1, 64, 23, 63, NULL, NULL, '2021-07-25 23:10:54', '2021-07-25 23:10:54'),
(44, 'موقع التجارة الإلكترونية', 'موقع-التجارة-الإلكترونية', '1627286836.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 1, 1, 65, 24, 63, NULL, NULL, '2021-07-25 23:07:16', '2021-07-25 23:07:16'),
(45, 'تصميم شعار', 'تصميم-شعار', '1627286882.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 2, 1, 65, 25, 63, NULL, NULL, '2021-07-25 23:08:02', '2021-07-25 23:08:02'),
(46, 'التطبيق الطبي', 'التطبيق-الطبي', '1627286919.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 3, 1, 65, 26, 63, NULL, NULL, '2021-07-25 23:08:39', '2021-07-25 23:08:39'),
(47, 'تطبيق تاكسي', 'تطبيق-تاكسي', '1627286965.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 4, 1, 65, 24, 63, NULL, NULL, '2021-07-25 23:09:25', '2021-07-25 23:09:25'),
(48, 'واجهة مستخدم تطبيق الاستثمار', 'واجهة-مستخدم-تطبيق-الاستثمار', '1627287017.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 5, 1, 65, 25, 63, NULL, NULL, '2021-07-25 23:10:17', '2021-07-25 23:10:17'),
(49, 'صانع قائمة QR', 'صانع-قائمة-qr', '1627287054.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 6, 1, 65, 26, 63, NULL, NULL, '2021-07-25 23:10:54', '2021-07-25 23:10:54'),
(50, 'Ecommerce Website', 'ecommerce-website', '1627286836.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 1, 66, 27, 64, NULL, NULL, '2021-07-25 23:07:16', '2021-07-25 23:07:16'),
(51, 'Logo Design', 'logo-design', '1627286882.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 2, 1, 66, 28, 64, NULL, NULL, '2021-07-25 23:08:02', '2021-07-25 23:08:02'),
(52, 'Medical App', 'medical-app', '1627286919.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 3, 1, 66, 29, 64, NULL, NULL, '2021-07-25 23:08:39', '2021-07-25 23:08:39'),
(53, 'Taxi App', 'taxi-app', '1627286965.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 4, 1, 66, 27, 64, NULL, NULL, '2021-07-25 23:09:25', '2021-07-26 22:57:44'),
(54, 'Investment App UI', 'investment-app-ui', '1627287017.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 5, 1, 66, 28, 64, NULL, NULL, '2021-07-25 23:10:17', '2021-07-25 23:10:17'),
(55, 'QR Menu Maker', 'qr-menu-maker', '1627287054.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 6, 1, 66, 29, 64, NULL, NULL, '2021-07-25 23:10:54', '2021-07-25 23:10:54'),
(56, 'موقع التجارة الإلكترونية', 'موقع-التجارة-الإلكترونية', '1627286836.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 1, 1, 67, 30, 64, NULL, NULL, '2021-07-25 23:07:16', '2021-07-25 23:07:16'),
(57, 'تصميم شعار', 'تصميم-شعار', '1627286882.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 2, 1, 67, 31, 64, NULL, NULL, '2021-07-25 23:08:02', '2021-07-25 23:08:02'),
(58, 'التطبيق الطبي', 'التطبيق-الطبي', '1627286919.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 3, 1, 67, 32, 64, NULL, NULL, '2021-07-25 23:08:39', '2021-07-25 23:08:39'),
(59, 'تطبيق تاكسي', 'تطبيق-تاكسي', '1627286965.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 4, 1, 67, 30, 64, NULL, NULL, '2021-07-25 23:09:25', '2021-07-25 23:09:25'),
(60, 'واجهة مستخدم تطبيق الاستثمار', 'واجهة-مستخدم-تطبيق-الاستثمار', '1627287017.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 5, 1, 67, 31, 64, NULL, NULL, '2021-07-25 23:10:17', '2021-07-25 23:10:17'),
(61, 'صانع قائمة QR', 'صانع-قائمة-qr', '1627287054.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 6, 1, 67, 32, 64, NULL, NULL, '2021-07-25 23:10:54', '2021-07-25 23:10:54'),
(62, 'Ecommerce Website', 'ecommerce-website', '1627286836.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 1, 68, 33, 65, NULL, NULL, '2021-07-25 23:07:16', '2021-07-25 23:07:16'),
(63, 'Logo Design', 'logo-design', '1627286882.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 2, 1, 68, 34, 65, NULL, NULL, '2021-07-25 23:08:02', '2021-07-25 23:08:02'),
(64, 'Medical App', 'medical-app', '1627286919.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 3, 1, 68, 35, 65, NULL, NULL, '2021-07-25 23:08:39', '2021-07-25 23:08:39'),
(65, 'Taxi App', 'taxi-app', '1627286965.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 4, 1, 68, 33, 65, NULL, NULL, '2021-07-25 23:09:25', '2021-07-26 22:57:44'),
(66, 'Investment App UI', 'investment-app-ui', '1627287017.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 5, 1, 68, 34, 65, NULL, NULL, '2021-07-25 23:10:17', '2021-07-25 23:10:17'),
(67, 'QR Menu Maker', 'qr-menu-maker', '1627287054.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 6, 1, 68, 35, 65, NULL, NULL, '2021-07-25 23:10:54', '2021-07-25 23:10:54'),
(68, 'موقع التجارة الإلكترونية', 'موقع-التجارة-الإلكترونية', '1627286836.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 1, 1, 69, 36, 65, NULL, NULL, '2021-07-25 23:07:16', '2021-07-25 23:07:16'),
(69, 'تصميم شعار', 'تصميم-شعار', '1627286882.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 2, 1, 69, 37, 65, NULL, NULL, '2021-07-25 23:08:02', '2021-07-25 23:08:02'),
(70, 'التطبيق الطبي', 'التطبيق-الطبي', '1627286919.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 3, 1, 69, 38, 65, NULL, NULL, '2021-07-25 23:08:39', '2021-07-25 23:08:39'),
(71, 'تطبيق تاكسي', 'تطبيق-تاكسي', '1627286965.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 4, 1, 69, 36, 65, NULL, NULL, '2021-07-25 23:09:25', '2021-07-25 23:09:25'),
(72, 'واجهة مستخدم تطبيق الاستثمار', 'واجهة-مستخدم-تطبيق-الاستثمار', '1627287017.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 5, 1, 69, 37, 65, NULL, NULL, '2021-07-25 23:10:17', '2021-07-25 23:10:17'),
(73, 'صانع قائمة QR', 'صانع-قائمة-qr', '1627287054.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 6, 1, 69, 38, 65, NULL, NULL, '2021-07-25 23:10:54', '2021-07-25 23:10:54'),
(74, 'Ecommerce Website', 'ecommerce-website', '1627286836.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 1, 70, 39, 66, NULL, NULL, '2021-07-25 23:07:16', '2021-07-25 23:07:16'),
(75, 'Logo Design', 'logo-design', '1627286882.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 2, 1, 70, 40, 66, NULL, NULL, '2021-07-25 23:08:02', '2021-07-25 23:08:02'),
(76, 'Medical App', 'medical-app', '1627286919.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 3, 1, 70, 41, 66, NULL, NULL, '2021-07-25 23:08:39', '2021-07-25 23:08:39'),
(77, 'Taxi App', 'taxi-app', '1627286965.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 4, 1, 70, 39, 66, NULL, NULL, '2021-07-25 23:09:25', '2021-07-26 22:57:44'),
(78, 'Investment App UI', 'investment-app-ui', '1627287017.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 5, 1, 70, 40, 66, NULL, NULL, '2021-07-25 23:10:17', '2021-07-25 23:10:17'),
(79, 'QR Menu Maker', 'qr-menu-maker', '1627287054.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 6, 1, 70, 41, 66, NULL, NULL, '2021-07-25 23:10:54', '2021-07-25 23:10:54'),
(80, 'موقع التجارة الإلكترونية', 'موقع-التجارة-الإلكترونية', '1627286836.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 1, 1, 71, 42, 66, NULL, NULL, '2021-07-25 23:07:16', '2021-07-25 23:07:16'),
(81, 'تصميم شعار', 'تصميم-شعار', '1627286882.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 2, 1, 71, 43, 66, NULL, NULL, '2021-07-25 23:08:02', '2021-07-25 23:08:02'),
(82, 'التطبيق الطبي', 'التطبيق-الطبي', '1627286919.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 3, 1, 71, 44, 66, NULL, NULL, '2021-07-25 23:08:39', '2021-07-25 23:08:39'),
(83, 'تطبيق تاكسي', 'تطبيق-تاكسي', '1627286965.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 4, 1, 71, 42, 66, NULL, NULL, '2021-07-25 23:09:25', '2021-07-25 23:09:25');
INSERT INTO `user_portfolios` (`id`, `title`, `slug`, `image`, `content`, `serial_number`, `featured`, `language_id`, `category_id`, `user_id`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(84, 'واجهة مستخدم تطبيق الاستثمار', 'واجهة-مستخدم-تطبيق-الاستثمار', '1627287017.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 5, 1, 71, 43, 66, NULL, NULL, '2021-07-25 23:10:17', '2021-07-25 23:10:17'),
(85, 'صانع قائمة QR', 'صانع-قائمة-qr', '1627287054.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 6, 1, 71, 44, 66, NULL, NULL, '2021-07-25 23:10:54', '2021-07-25 23:10:54'),
(86, 'Ecommerce Website', 'ecommerce-website', '1627286836.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 1, 72, 45, 67, NULL, NULL, '2021-07-25 23:07:16', '2021-07-25 23:07:16'),
(87, 'Logo Design', 'logo-design', '1627286882.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 2, 1, 72, 46, 67, NULL, NULL, '2021-07-25 23:08:02', '2021-07-25 23:08:02'),
(88, 'Medical App', 'medical-app', '1627286919.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 3, 1, 72, 47, 67, NULL, NULL, '2021-07-25 23:08:39', '2021-07-25 23:08:39'),
(89, 'Taxi App', 'taxi-app', '1627286965.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 4, 1, 72, 45, 67, NULL, NULL, '2021-07-25 23:09:25', '2021-07-26 22:57:44'),
(90, 'Investment App UI', 'investment-app-ui', '1627287017.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 5, 1, 72, 46, 67, NULL, NULL, '2021-07-25 23:10:17', '2021-07-25 23:10:17'),
(91, 'QR Menu Maker', 'qr-menu-maker', '1627287054.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 6, 1, 72, 47, 67, NULL, NULL, '2021-07-25 23:10:54', '2021-07-25 23:10:54'),
(92, 'موقع التجارة الإلكترونية', 'موقع-التجارة-الإلكترونية', '1627286836.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 1, 1, 73, 48, 67, NULL, NULL, '2021-07-25 23:07:16', '2021-07-25 23:07:16'),
(93, 'تصميم شعار', 'تصميم-شعار', '1627286882.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 2, 1, 73, 49, 67, NULL, NULL, '2021-07-25 23:08:02', '2021-07-25 23:08:02'),
(94, 'التطبيق الطبي', 'التطبيق-الطبي', '1627286919.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 3, 1, 73, 50, 67, NULL, NULL, '2021-07-25 23:08:39', '2021-07-25 23:08:39'),
(95, 'تطبيق تاكسي', 'تطبيق-تاكسي', '1627286965.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 4, 1, 73, 48, 67, NULL, NULL, '2021-07-25 23:09:25', '2021-07-25 23:09:25'),
(96, 'واجهة مستخدم تطبيق الاستثمار', 'واجهة-مستخدم-تطبيق-الاستثمار', '1627287017.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 5, 1, 73, 49, 67, NULL, NULL, '2021-07-25 23:10:17', '2021-07-25 23:10:17'),
(97, 'صانع قائمة QR', 'صانع-قائمة-qr', '1627287054.jpg', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 6, 1, 73, 50, 67, NULL, NULL, '2021-07-25 23:10:54', '2021-07-25 23:10:54');

-- --------------------------------------------------------

--
-- Table structure for table `user_portfolio_categories`
--

CREATE TABLE `user_portfolio_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_portfolio_categories`
--

INSERT INTO `user_portfolio_categories` (`id`, `name`, `status`, `language_id`, `user_id`, `serial_number`, `created_at`, `updated_at`) VALUES
(15, 'Web Development', 1, 62, 62, 1, '2021-07-25 23:03:26', '2021-07-25 23:03:26'),
(16, 'Graphic Design', 1, 62, 62, 2, '2021-07-25 23:03:52', '2021-07-25 23:03:52'),
(17, 'MISC', 1, 62, 62, 3, '2021-07-25 23:04:32', '2021-07-25 23:04:32'),
(18, 'تطوير الشبكة', 1, 63, 62, 1, '2021-07-25 23:03:26', '2021-07-25 23:03:26'),
(19, 'تصميم غرافيك', 1, 63, 62, 2, '2021-07-25 23:03:52', '2021-07-25 23:03:52'),
(20, 'متفرقات', 1, 63, 62, 3, '2021-07-25 23:04:32', '2021-07-25 23:04:32'),
(21, 'Web Development', 1, 64, 63, 1, '2021-07-25 23:03:26', '2021-07-25 23:03:26'),
(22, 'Graphic Design', 1, 64, 63, 2, '2021-07-25 23:03:52', '2021-07-25 23:03:52'),
(23, 'MISC', 1, 64, 63, 3, '2021-07-25 23:04:32', '2021-07-25 23:04:32'),
(24, 'تطوير الشبكة', 1, 65, 63, 1, '2021-07-25 23:03:26', '2021-07-25 23:03:26'),
(25, 'تصميم غرافيك', 1, 65, 63, 2, '2021-07-25 23:03:52', '2021-07-25 23:03:52'),
(26, 'متفرقات', 1, 65, 63, 3, '2021-07-25 23:04:32', '2021-07-25 23:04:32'),
(27, 'Web Development', 1, 66, 64, 1, '2021-07-25 23:03:26', '2021-07-25 23:03:26'),
(28, 'Graphic Design', 1, 66, 64, 2, '2021-07-25 23:03:52', '2021-07-25 23:03:52'),
(29, 'MISC', 1, 66, 64, 3, '2021-07-25 23:04:32', '2021-07-25 23:04:32'),
(30, 'تطوير الشبكة', 1, 67, 64, 1, '2021-07-25 23:03:26', '2021-07-25 23:03:26'),
(31, 'تصميم غرافيك', 1, 67, 64, 2, '2021-07-25 23:03:52', '2021-07-25 23:03:52'),
(32, 'متفرقات', 1, 67, 64, 3, '2021-07-25 23:04:32', '2021-07-25 23:04:32'),
(33, 'Web Development', 1, 68, 65, 1, '2021-07-25 23:03:26', '2021-07-25 23:03:26'),
(34, 'Graphic Design', 1, 68, 65, 2, '2021-07-25 23:03:52', '2021-07-25 23:03:52'),
(35, 'MISC', 1, 68, 65, 3, '2021-07-25 23:04:32', '2021-07-25 23:04:32'),
(36, 'تطوير الشبكة', 1, 69, 65, 1, '2021-07-25 23:03:26', '2021-07-25 23:03:26'),
(37, 'تصميم غرافيك', 1, 69, 65, 2, '2021-07-25 23:03:52', '2021-07-25 23:03:52'),
(38, 'متفرقات', 1, 69, 65, 3, '2021-07-25 23:04:32', '2021-07-25 23:04:32'),
(39, 'Web Development', 1, 70, 66, 1, '2021-07-25 23:03:26', '2021-07-25 23:03:26'),
(40, 'Graphic Design', 1, 70, 66, 2, '2021-07-25 23:03:52', '2021-07-25 23:03:52'),
(41, 'MISC', 1, 70, 66, 3, '2021-07-25 23:04:32', '2021-07-25 23:04:32'),
(42, 'تطوير الشبكة', 1, 71, 66, 1, '2021-07-25 23:03:26', '2021-07-25 23:03:26'),
(43, 'تصميم غرافيك', 1, 71, 66, 2, '2021-07-25 23:03:52', '2021-07-25 23:03:52'),
(44, 'متفرقات', 1, 71, 66, 3, '2021-07-25 23:04:32', '2021-07-25 23:04:32'),
(45, 'Web Development', 1, 72, 67, 1, '2021-07-25 23:03:26', '2021-07-25 23:03:26'),
(46, 'Graphic Design', 1, 72, 67, 2, '2021-07-25 23:03:52', '2021-07-25 23:03:52'),
(47, 'MISC', 1, 72, 67, 3, '2021-07-25 23:04:32', '2021-07-25 23:04:32'),
(48, 'تطوير الشبكة', 1, 73, 67, 1, '2021-07-25 23:03:26', '2021-07-25 23:03:26'),
(49, 'تصميم غرافيك', 1, 73, 67, 2, '2021-07-25 23:03:52', '2021-07-25 23:03:52'),
(50, 'متفرقات', 1, 73, 67, 3, '2021-07-25 23:04:32', '2021-07-25 23:04:32');

-- --------------------------------------------------------

--
-- Table structure for table `user_portfolio_images`
--

CREATE TABLE `user_portfolio_images` (
  `id` int(11) NOT NULL,
  `user_portfolio_id` int(11) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_portfolio_images`
--

INSERT INTO `user_portfolio_images` (`id`, `user_portfolio_id`, `image`, `user_id`) VALUES
(159, 26, '60fe6d147739d.jpg', 62),
(160, 26, '60fe6d1477378.jpg', 62),
(161, 26, '60fe6d14d1aec.jpg', 62),
(162, 27, '60fe6d3ecb2be.jpg', 62),
(163, 27, '60fe6d3ed3558.jpg', 62),
(164, 28, '60fe6d6e3713e.jpg', 62),
(165, 28, '60fe6d6e37396.jpg', 62),
(166, 29, '60fe6d95bf8ad.jpg', 62),
(167, 29, '60fe6d95cd899.jpg', 62),
(168, 30, '60fe6dbf19813.jpg', 62),
(169, 30, '60fe6dbf19e6c.jpg', 62),
(170, 31, '60fe6df67552b.jpg', 62),
(171, 31, '60fe6df6764c8.jpg', 62),
(172, 32, '60fe6d147739d.jpg', 62),
(173, 32, '60fe6d1477378.jpg', 62),
(174, 32, '60fe6d14d1aec.jpg', 62),
(175, 33, '60fe6d3ecb2be.jpg', 62),
(176, 33, '60fe6d3ed3558.jpg', 62),
(177, 34, '60fe6d6e3713e.jpg', 62),
(178, 34, '60fe6d6e37396.jpg', 62),
(179, 35, '60fe6d95bf8ad.jpg', 62),
(180, 35, '60fe6d95cd899.jpg', 62),
(181, 36, '60fe6dbf19813.jpg', 62),
(182, 36, '60fe6dbf19e6c.jpg', 62),
(183, 37, '60fe6df67552b.jpg', 62),
(184, 37, '60fe6df6764c8.jpg', 62),
(185, 38, '60fe6d147739d.jpg', 62),
(186, 38, '60fe6d1477378.jpg', 62),
(187, 38, '60fe6d14d1aec.jpg', 62),
(188, 39, '60fe6d3ecb2be.jpg', 62),
(189, 39, '60fe6d3ed3558.jpg', 62),
(190, 40, '60fe6d6e3713e.jpg', 62),
(191, 40, '60fe6d6e37396.jpg', 62),
(192, 41, '60fe6d95bf8ad.jpg', 62),
(193, 41, '60fe6d95cd899.jpg', 62),
(194, 42, '60fe6dbf19813.jpg', 62),
(195, 42, '60fe6dbf19e6c.jpg', 62),
(196, 43, '60fe6df67552b.jpg', 62),
(197, 43, '60fe6df6764c8.jpg', 62),
(198, 44, '60fe6d147739d.jpg', 62),
(199, 44, '60fe6d1477378.jpg', 62),
(200, 44, '60fe6d14d1aec.jpg', 62),
(201, 45, '60fe6d3ecb2be.jpg', 62),
(202, 45, '60fe6d3ed3558.jpg', 62),
(203, 46, '60fe6d6e3713e.jpg', 62),
(204, 46, '60fe6d6e37396.jpg', 62),
(205, 47, '60fe6d95bf8ad.jpg', 62),
(206, 47, '60fe6d95cd899.jpg', 62),
(207, 48, '60fe6dbf19813.jpg', 62),
(208, 48, '60fe6dbf19e6c.jpg', 62),
(209, 49, '60fe6df67552b.jpg', 62),
(210, 49, '60fe6df6764c8.jpg', 62),
(211, 50, '60fe6d147739d.jpg', 62),
(212, 50, '60fe6d1477378.jpg', 62),
(213, 50, '60fe6d14d1aec.jpg', 62),
(214, 51, '60fe6d3ecb2be.jpg', 62),
(215, 51, '60fe6d3ed3558.jpg', 62),
(216, 52, '60fe6d6e3713e.jpg', 62),
(217, 52, '60fe6d6e37396.jpg', 62),
(218, 53, '60fe6d95bf8ad.jpg', 62),
(219, 53, '60fe6d95cd899.jpg', 62),
(220, 54, '60fe6dbf19813.jpg', 62),
(221, 54, '60fe6dbf19e6c.jpg', 62),
(222, 55, '60fe6df67552b.jpg', 62),
(223, 55, '60fe6df6764c8.jpg', 62),
(224, 56, '60fe6d147739d.jpg', 62),
(225, 56, '60fe6d1477378.jpg', 62),
(226, 32, '60fe6d14d1aec.jpg', 62),
(227, 57, '60fe6d3ecb2be.jpg', 62),
(228, 57, '60fe6d3ed3558.jpg', 62),
(229, 58, '60fe6d6e3713e.jpg', 62),
(230, 58, '60fe6d6e37396.jpg', 62),
(231, 59, '60fe6d95bf8ad.jpg', 62),
(232, 59, '60fe6d95cd899.jpg', 62),
(233, 60, '60fe6dbf19813.jpg', 62),
(234, 60, '60fe6dbf19e6c.jpg', 62),
(235, 61, '60fe6df67552b.jpg', 62),
(236, 61, '60fe6df6764c8.jpg', 62),
(237, 62, '60fe6d147739d.jpg', 65),
(238, 62, '60fe6d1477378.jpg', 65),
(239, 62, '60fe6d14d1aec.jpg', 65),
(240, 63, '60fe6d3ecb2be.jpg', 65),
(241, 63, '60fe6d3ed3558.jpg', 65),
(242, 64, '60fe6d6e3713e.jpg', 65),
(243, 64, '60fe6d6e37396.jpg', 65),
(244, 65, '60fe6d95bf8ad.jpg', 65),
(245, 65, '60fe6d95cd899.jpg', 65),
(246, 66, '60fe6dbf19813.jpg', 65),
(247, 66, '60fe6dbf19e6c.jpg', 65),
(248, 67, '60fe6df67552b.jpg', 65),
(249, 67, '60fe6df6764c8.jpg', 65),
(250, 68, '60fe6d147739d.jpg', 65),
(251, 68, '60fe6d1477378.jpg', 65),
(252, 68, '60fe6d14d1aec.jpg', 65),
(253, 69, '60fe6d3ecb2be.jpg', 65),
(254, 69, '60fe6d3ed3558.jpg', 65),
(255, 70, '60fe6d6e3713e.jpg', 65),
(256, 70, '60fe6d6e37396.jpg', 65),
(257, 71, '60fe6d95bf8ad.jpg', 65),
(258, 71, '60fe6d95cd899.jpg', 65),
(259, 72, '60fe6dbf19813.jpg', 65),
(260, 72, '60fe6dbf19e6c.jpg', 65),
(261, 73, '60fe6df67552b.jpg', 65),
(262, 73, '60fe6df6764c8.jpg', 65),
(263, 74, '60fe6d147739d.jpg', 66),
(264, 74, '60fe6d1477378.jpg', 66),
(265, 74, '60fe6d14d1aec.jpg', 66),
(266, 75, '60fe6d3ecb2be.jpg', 66),
(267, 75, '60fe6d3ed3558.jpg', 66),
(268, 76, '60fe6d6e3713e.jpg', 66),
(269, 76, '60fe6d6e37396.jpg', 66),
(270, 77, '60fe6d95bf8ad.jpg', 66),
(271, 77, '60fe6d95cd899.jpg', 66),
(272, 78, '60fe6dbf19813.jpg', 66),
(273, 78, '60fe6dbf19e6c.jpg', 66),
(274, 79, '60fe6df67552b.jpg', 66),
(275, 79, '60fe6df6764c8.jpg', 66),
(276, 80, '60fe6d147739d.jpg', 66),
(277, 80, '60fe6d1477378.jpg', 66),
(278, 80, '60fe6d14d1aec.jpg', 66),
(279, 81, '60fe6d3ecb2be.jpg', 66),
(280, 81, '60fe6d3ed3558.jpg', 66),
(281, 82, '60fe6d6e3713e.jpg', 66),
(282, 82, '60fe6d6e37396.jpg', 66),
(283, 83, '60fe6d95bf8ad.jpg', 66),
(284, 83, '60fe6d95cd899.jpg', 66),
(285, 84, '60fe6dbf19813.jpg', 66),
(286, 84, '60fe6dbf19e6c.jpg', 66),
(287, 85, '60fe6df67552b.jpg', 66),
(288, 85, '60fe6df6764c8.jpg', 66),
(289, 86, '60fe6d147739d.jpg', 67),
(290, 86, '60fe6d1477378.jpg', 67),
(291, 86, '60fe6d14d1aec.jpg', 67),
(292, 87, '60fe6d3ecb2be.jpg', 67),
(293, 87, '60fe6d3ed3558.jpg', 67),
(294, 88, '60fe6d6e3713e.jpg', 67),
(295, 88, '60fe6d6e37396.jpg', 67),
(296, 89, '60fe6d95bf8ad.jpg', 67),
(297, 89, '60fe6d95cd899.jpg', 67),
(298, 90, '60fe6dbf19813.jpg', 67),
(299, 90, '60fe6dbf19e6c.jpg', 67),
(300, 91, '60fe6df67552b.jpg', 67),
(301, 91, '60fe6df6764c8.jpg', 67),
(302, 92, '60fe6d147739d.jpg', 67),
(303, 92, '60fe6d1477378.jpg', 67),
(304, 92, '60fe6d14d1aec.jpg', 67),
(305, 93, '60fe6d3ecb2be.jpg', 67),
(306, 93, '60fe6d3ed3558.jpg', 67),
(307, 94, '60fe6d6e3713e.jpg', 67),
(308, 94, '60fe6d6e37396.jpg', 67),
(309, 95, '60fe6d95bf8ad.jpg', 67),
(310, 95, '60fe6d95cd899.jpg', 67),
(311, 96, '60fe6dbf19813.jpg', 67),
(312, 96, '60fe6dbf19e6c.jpg', 67),
(313, 97, '60fe6df67552b.jpg', 67),
(314, 97, '60fe6df6764c8.jpg', 67);

-- --------------------------------------------------------

--
-- Table structure for table `user_qr_codes`
--

CREATE TABLE `user_qr_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_qr_codes`
--

INSERT INTO `user_qr_codes` (`id`, `user_id`, `name`, `url`, `image`, `created_at`, `updated_at`) VALUES
(1, 149, 'Free Formatter', 'https://www.freeformatter.com/', '6132406d50013.png', '2021-09-03 07:32:04', '2021-09-03 07:32:04'),
(2, 149, 'Profile Subdomain', 'http://genius.profilex.test/', '6132510833e00.png', '2021-09-03 07:45:31', '2021-09-03 07:45:31'),
(13, 154, 'test', 'http://profilex.test/profilex', '6133473ed5746.png', '2021-09-04 01:15:31', '2021-09-04 01:15:31');

-- --------------------------------------------------------

--
-- Table structure for table `user_seos`
--

CREATE TABLE `user_seos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `home_meta_keywords` text DEFAULT NULL,
  `home_meta_description` text DEFAULT NULL,
  `services_meta_keywords` text DEFAULT NULL,
  `services_meta_description` text DEFAULT NULL,
  `blogs_meta_keywords` text DEFAULT NULL,
  `blogs_meta_description` text DEFAULT NULL,
  `portfolios_meta_keywords` text DEFAULT NULL,
  `portfolios_meta_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_seos`
--

INSERT INTO `user_seos` (`id`, `user_id`, `language_id`, `home_meta_keywords`, `home_meta_description`, `services_meta_keywords`, `services_meta_description`, `blogs_meta_keywords`, `blogs_meta_description`, `portfolios_meta_keywords`, `portfolios_meta_description`) VALUES
(3, 65, 68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_services`
--

CREATE TABLE `user_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL,
  `detail_page` int(11) NOT NULL,
  `lang_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_services`
--

INSERT INTO `user_services` (`id`, `image`, `name`, `slug`, `content`, `serial_number`, `featured`, `detail_page`, `lang_id`, `user_id`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(16, '1627283854.jpg', 'Ecommerce Website', 'ecommerce-website', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 1, 1, 62, 62, NULL, NULL, '2021-07-25 22:14:35', '2021-07-25 22:17:34'),
(17, '1627283873.jpg', 'Logo Design', 'logo-design', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 2, 1, 1, 62, 62, NULL, NULL, '2021-07-25 22:15:15', '2021-07-25 22:17:53'),
(18, '1627283902.jpg', 'HTML Templates', 'html-templates', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 3, 1, 1, 62, 62, NULL, NULL, '2021-07-25 22:15:51', '2021-07-25 22:18:22'),
(19, '1627283801.jpg', 'Update Websites', 'update-websites', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 4, 0, 1, 62, 62, NULL, NULL, '2021-07-25 22:16:41', '2021-07-25 22:19:05'),
(20, '1627283938.jpg', 'After Project Support', 'after-project-support', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 5, 0, 1, 62, 62, NULL, NULL, '2021-07-25 22:18:58', '2021-07-26 01:55:30'),
(21, '1627283973.jpg', 'Mobile Apps', 'mobile-apps', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 6, 0, 1, 62, 62, NULL, NULL, '2021-07-25 22:19:33', '2021-07-25 22:19:33'),
(22, '1627283854.jpg', 'موقع التجارة الإلكترونية', 'موقع-التجارة-الإلكترونية', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 1, 1, 1, 63, 62, NULL, NULL, '2021-07-25 22:14:35', '2021-07-25 22:17:34'),
(23, '1627283873.jpg', 'تصميم شعار', 'تصميم-شعار', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 2, 1, 1, 63, 62, NULL, NULL, '2021-07-25 22:15:15', '2021-07-25 22:17:53'),
(24, '1627283902.jpg', 'قوالب HTML', 'قوالب-html', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 3, 1, 1, 63, 62, NULL, NULL, '2021-07-25 22:15:51', '2021-07-25 22:18:22'),
(25, '1627283801.jpg', 'تحديث المواقع', 'تحديث-المواقع', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 4, 0, 1, 63, 62, NULL, NULL, '2021-07-25 22:16:41', '2021-07-25 22:19:05'),
(26, '1627283938.jpg', 'بعد دعم المشروع', 'بعد-دعم-المشروع', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 5, 0, 1, 63, 62, NULL, NULL, '2021-07-25 22:18:58', '2021-07-25 22:18:58'),
(27, '1627283973.jpg', 'تطبيقات الموبايل', 'تطبيقات-الموبايل', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 6, 0, 1, 63, 62, NULL, NULL, '2021-07-25 22:19:33', '2021-07-25 22:19:33'),
(28, '1627283854.jpg', 'Ecommerce Website', 'ecommerce-website', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 1, 1, 64, 63, NULL, NULL, '2021-07-25 22:14:35', '2021-07-25 22:17:34'),
(29, '1627283873.jpg', 'Logo Design', 'logo-design', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 2, 1, 1, 64, 63, NULL, NULL, '2021-07-25 22:15:15', '2021-07-25 22:17:53'),
(30, '1627283902.jpg', 'HTML Templates', 'html-templates', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 3, 1, 1, 64, 63, NULL, NULL, '2021-07-25 22:15:51', '2021-07-25 22:18:22'),
(31, '1627283801.jpg', 'Update Websites', 'update-websites', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 4, 0, 1, 64, 63, NULL, NULL, '2021-07-25 22:16:41', '2021-07-25 22:19:05'),
(32, '1627283938.jpg', 'After Project Support', 'after-project-support', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 5, 0, 1, 64, 63, NULL, NULL, '2021-07-25 22:18:58', '2021-07-26 01:55:30'),
(33, '1627283973.jpg', 'Mobile Apps', 'mobile-apps', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 6, 0, 1, 64, 63, NULL, NULL, '2021-07-25 22:19:33', '2021-07-25 22:19:33'),
(34, '1627283854.jpg', 'موقع التجارة الإلكترونية', 'موقع-التجارة-الإلكترونية', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 1, 1, 1, 65, 63, NULL, NULL, '2021-07-25 22:14:35', '2021-07-25 22:17:34'),
(35, '1627283873.jpg', 'تصميم شعار', 'تصميم-شعار', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 2, 1, 1, 65, 63, NULL, NULL, '2021-07-25 22:15:15', '2021-07-25 22:17:53'),
(36, '1627283902.jpg', 'قوالب HTML', 'قوالب-html', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 3, 1, 1, 65, 63, NULL, NULL, '2021-07-25 22:15:51', '2021-07-25 22:18:22'),
(37, '1627283801.jpg', 'تحديث المواقع', 'تحديث-المواقع', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 4, 0, 1, 65, 63, NULL, NULL, '2021-07-25 22:16:41', '2021-07-25 22:19:05'),
(38, '1627283938.jpg', 'بعد دعم المشروع', 'بعد-دعم-المشروع', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 5, 0, 1, 65, 63, NULL, NULL, '2021-07-25 22:18:58', '2021-07-25 22:18:58'),
(39, '1627283973.jpg', 'تطبيقات الموبايل', 'تطبيقات-الموبايل', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 6, 0, 1, 65, 63, NULL, NULL, '2021-07-25 22:19:33', '2021-07-25 22:19:33'),
(40, '1627283854.jpg', 'Ecommerce Website', 'ecommerce-website', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 1, 1, 66, 64, NULL, NULL, '2021-07-25 22:14:35', '2021-07-25 22:17:34'),
(41, '1627283873.jpg', 'Logo Design', 'logo-design', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 2, 1, 1, 66, 64, NULL, NULL, '2021-07-25 22:15:15', '2021-07-25 22:17:53'),
(42, '1627283902.jpg', 'HTML Templates', 'html-templates', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 3, 1, 1, 66, 64, NULL, NULL, '2021-07-25 22:15:51', '2021-07-25 22:18:22'),
(43, '1627283801.jpg', 'Update Websites', 'update-websites', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 4, 0, 1, 66, 64, NULL, NULL, '2021-07-25 22:16:41', '2021-07-25 22:19:05'),
(44, '1627283938.jpg', 'After Project Support', 'after-project-support', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 5, 0, 1, 66, 64, NULL, NULL, '2021-07-25 22:18:58', '2021-07-26 01:55:30'),
(45, '1627283973.jpg', 'Mobile Apps', 'mobile-apps', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 6, 0, 1, 66, 64, NULL, NULL, '2021-07-25 22:19:33', '2021-07-25 22:19:33'),
(46, '1627283854.jpg', 'موقع التجارة الإلكترونية', 'موقع-التجارة-الإلكترونية', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 1, 1, 1, 67, 64, NULL, NULL, '2021-07-25 22:14:35', '2021-07-25 22:17:34'),
(47, '1627283873.jpg', 'تصميم شعار', 'تصميم-شعار', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 2, 1, 1, 67, 64, NULL, NULL, '2021-07-25 22:15:15', '2021-07-25 22:17:53'),
(48, '1627283902.jpg', 'قوالب HTML', 'قوالب-html', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 3, 1, 1, 67, 64, NULL, NULL, '2021-07-25 22:15:51', '2021-07-25 22:18:22'),
(49, '1627283801.jpg', 'تحديث المواقع', 'تحديث-المواقع', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 4, 0, 1, 67, 64, NULL, NULL, '2021-07-25 22:16:41', '2021-07-25 22:19:05'),
(50, '1627283938.jpg', 'بعد دعم المشروع', 'بعد-دعم-المشروع', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 5, 0, 1, 67, 64, NULL, NULL, '2021-07-25 22:18:58', '2021-07-25 22:18:58'),
(51, '1627283973.jpg', 'تطبيقات الموبايل', 'تطبيقات-الموبايل', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 6, 0, 1, 67, 64, NULL, NULL, '2021-07-25 22:19:33', '2021-07-25 22:19:33'),
(52, '1627283854.jpg', 'Ecommerce Website', 'ecommerce-website', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 1, 1, 68, 65, NULL, NULL, '2021-07-25 22:14:35', '2021-07-25 22:17:34'),
(53, '1627283873.jpg', 'Logo Design', 'logo-design', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 2, 1, 1, 68, 65, NULL, NULL, '2021-07-25 22:15:15', '2021-07-25 22:17:53'),
(54, '1627283902.jpg', 'HTML Templates', 'html-templates', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 3, 1, 1, 68, 65, NULL, NULL, '2021-07-25 22:15:51', '2021-07-25 22:18:22'),
(55, '1627283801.jpg', 'Update Websites', 'update-websites', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 4, 0, 1, 68, 65, NULL, NULL, '2021-07-25 22:16:41', '2021-07-25 22:19:05'),
(56, '1627283938.jpg', 'After Project Support', 'after-project-support', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 5, 0, 1, 68, 65, NULL, NULL, '2021-07-25 22:18:58', '2021-07-26 01:55:30'),
(57, '1627283973.jpg', 'Mobile Apps', 'mobile-apps', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 6, 0, 1, 68, 65, NULL, NULL, '2021-07-25 22:19:33', '2021-07-25 22:19:33'),
(58, '1627283854.jpg', 'موقع التجارة الإلكترونية', 'موقع-التجارة-الإلكترونية', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 1, 1, 1, 69, 65, NULL, NULL, '2021-07-25 22:14:35', '2021-07-25 22:17:34'),
(59, '1627283873.jpg', 'تصميم شعار', 'تصميم-شعار', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 2, 1, 1, 69, 65, NULL, NULL, '2021-07-25 22:15:15', '2021-07-25 22:17:53'),
(60, '1627283902.jpg', 'قوالب HTML', 'قوالب-html', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 3, 1, 1, 69, 65, NULL, NULL, '2021-07-25 22:15:51', '2021-07-25 22:18:22'),
(61, '1627283801.jpg', 'تحديث المواقع', 'تحديث-المواقع', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 4, 0, 1, 69, 65, NULL, NULL, '2021-07-25 22:16:41', '2021-07-25 22:19:05'),
(62, '1627283938.jpg', 'بعد دعم المشروع', 'بعد-دعم-المشروع', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 5, 0, 1, 69, 65, NULL, NULL, '2021-07-25 22:18:58', '2021-07-25 22:18:58'),
(63, '1627283973.jpg', 'تطبيقات الموبايل', 'تطبيقات-الموبايل', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 6, 0, 1, 69, 65, NULL, NULL, '2021-07-25 22:19:33', '2021-07-25 22:19:33'),
(64, '1627283854.jpg', 'Ecommerce Website', 'ecommerce-website', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 1, 1, 70, 66, NULL, NULL, '2021-07-25 22:14:35', '2021-07-25 22:17:34'),
(65, '1627283873.jpg', 'Logo Design', 'logo-design', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 2, 1, 1, 70, 66, NULL, NULL, '2021-07-25 22:15:15', '2021-07-25 22:17:53'),
(66, '1627283902.jpg', 'HTML Templates', 'html-templates', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 3, 1, 1, 70, 66, NULL, NULL, '2021-07-25 22:15:51', '2021-07-25 22:18:22'),
(67, '1627283801.jpg', 'Update Websites', 'update-websites', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 4, 0, 1, 70, 66, NULL, NULL, '2021-07-25 22:16:41', '2021-07-25 22:19:05'),
(68, '1627283938.jpg', 'After Project Support', 'after-project-support', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 5, 0, 1, 70, 66, NULL, NULL, '2021-07-25 22:18:58', '2021-07-26 01:55:30'),
(69, '1627283973.jpg', 'Mobile Apps', 'mobile-apps', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 6, 0, 1, 70, 66, NULL, NULL, '2021-07-25 22:19:33', '2021-07-25 22:19:33'),
(70, '1627283854.jpg', 'موقع التجارة الإلكترونية', 'موقع-التجارة-الإلكترونية', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 1, 1, 1, 71, 66, NULL, NULL, '2021-07-25 22:14:35', '2021-07-25 22:17:34'),
(71, '1627283873.jpg', 'تصميم شعار', 'تصميم-شعار', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 2, 1, 1, 71, 66, NULL, NULL, '2021-07-25 22:15:15', '2021-07-25 22:17:53'),
(72, '1627283902.jpg', 'قوالب HTML', 'قوالب-html', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 3, 1, 1, 71, 66, NULL, NULL, '2021-07-25 22:15:51', '2021-07-25 22:18:22'),
(73, '1627283801.jpg', 'تحديث المواقع', 'تحديث-المواقع', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 4, 0, 1, 71, 66, NULL, NULL, '2021-07-25 22:16:41', '2021-07-25 22:19:05');
INSERT INTO `user_services` (`id`, `image`, `name`, `slug`, `content`, `serial_number`, `featured`, `detail_page`, `lang_id`, `user_id`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(74, '1627283938.jpg', 'بعد دعم المشروع', 'بعد-دعم-المشروع', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 5, 0, 1, 71, 66, NULL, NULL, '2021-07-25 22:18:58', '2021-07-25 22:18:58'),
(75, '1627283973.jpg', 'تطبيقات الموبايل', 'تطبيقات-الموبايل', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 6, 0, 1, 71, 66, NULL, NULL, '2021-07-25 22:19:33', '2021-07-25 22:19:33'),
(76, '1627283854.jpg', 'Ecommerce Website', 'ecommerce-website', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 1, 1, 72, 67, NULL, NULL, '2021-07-25 22:14:35', '2021-07-25 22:17:34'),
(77, '1627283873.jpg', 'Logo Design', 'logo-design', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 2, 1, 1, 72, 67, NULL, NULL, '2021-07-25 22:15:15', '2021-07-25 22:17:53'),
(78, '1627283902.jpg', 'HTML Templates', 'html-templates', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 3, 1, 1, 72, 67, NULL, NULL, '2021-07-25 22:15:51', '2021-07-25 22:18:22'),
(79, '1627283801.jpg', 'Update Websites', 'update-websites', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 4, 0, 1, 72, 67, NULL, NULL, '2021-07-25 22:16:41', '2021-07-25 22:19:05'),
(80, '1627283938.jpg', 'After Project Support', 'after-project-support', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 5, 0, 1, 72, 67, NULL, NULL, '2021-07-25 22:18:58', '2021-07-26 01:55:30'),
(81, '1627283973.jpg', 'Mobile Apps', 'mobile-apps', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 6, 0, 1, 72, 67, NULL, NULL, '2021-07-25 22:19:33', '2021-07-25 22:19:33'),
(82, '1627283854.jpg', 'موقع التجارة الإلكترونية', 'موقع-التجارة-الإلكترونية', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 1, 1, 1, 73, 67, NULL, NULL, '2021-07-25 22:14:35', '2021-07-25 22:17:34'),
(83, '1627283873.jpg', 'تصميم شعار', 'تصميم-شعار', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 2, 1, 1, 73, 67, NULL, NULL, '2021-07-25 22:15:15', '2021-07-25 22:17:53'),
(84, '1627283902.jpg', 'قوالب HTML', 'قوالب-html', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 3, 1, 1, 73, 67, NULL, NULL, '2021-07-25 22:15:51', '2021-07-25 22:18:22'),
(85, '1627283801.jpg', 'تحديث المواقع', 'تحديث-المواقع', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 4, 0, 1, 73, 67, NULL, NULL, '2021-07-25 22:16:41', '2021-07-25 22:19:05'),
(86, '1627283938.jpg', 'بعد دعم المشروع', 'بعد-دعم-المشروع', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 5, 0, 1, 73, 67, NULL, NULL, '2021-07-25 22:18:58', '2021-07-25 22:18:58'),
(87, '1627283973.jpg', 'تطبيقات الموبايل', 'تطبيقات-الموبايل', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك.', 6, 0, 1, 73, 67, NULL, NULL, '2021-07-25 22:19:33', '2021-07-25 22:19:33');

-- --------------------------------------------------------

--
-- Table structure for table `user_skills`
--

CREATE TABLE `user_skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` int(11) DEFAULT NULL,
  `color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'F78058',
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `language_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_skills`
--

INSERT INTO `user_skills` (`id`, `title`, `slug`, `percentage`, `color`, `serial_number`, `language_id`, `user_id`, `created_at`, `updated_at`) VALUES
(15, 'HTML5', 'html5', 80, 'E34C26', 1, 62, 62, '2021-07-25 22:03:30', '2021-07-25 22:03:30'),
(16, 'CSS3', 'css3', 70, '264DE4', 2, 62, 62, '2021-07-25 22:03:58', '2021-07-25 22:03:58'),
(17, 'Laravel', 'laravel', 90, 'F05340', 3, 62, 62, '2021-07-25 22:04:23', '2021-07-25 22:04:23'),
(18, 'HTML5', 'html5', 80, 'E34C26', 1, 63, 62, '2021-07-25 22:03:30', '2021-07-25 22:03:30'),
(19, 'CSS3', 'css3', 70, '264DE4', 2, 63, 62, '2021-07-25 22:03:58', '2021-07-25 22:03:58'),
(20, 'Laravel', 'laravel', 90, 'F05340', 3, 63, 62, '2021-07-25 22:04:23', '2021-07-25 22:04:23'),
(21, 'HTML5', 'html5', 80, 'E34C26', 1, 64, 63, '2021-07-25 22:03:30', '2021-07-25 22:03:30'),
(22, 'CSS3', 'css3', 70, '264DE4', 2, 64, 63, '2021-07-25 22:03:58', '2021-07-25 22:03:58'),
(23, 'Laravel', 'laravel', 90, 'F05340', 3, 64, 63, '2021-07-25 22:04:23', '2021-07-25 22:04:23'),
(24, 'HTML5', 'html5', 80, 'E34C26', 1, 65, 63, '2021-07-25 22:03:30', '2021-07-25 22:03:30'),
(25, 'CSS3', 'css3', 70, '264DE4', 2, 65, 63, '2021-07-25 22:03:58', '2021-07-25 22:03:58'),
(26, 'Laravel', 'laravel', 90, 'F05340', 3, 65, 63, '2021-07-25 22:04:23', '2021-07-25 22:04:23'),
(27, 'HTML5', 'html5', 80, 'E34C26', 1, 66, 64, '2021-07-25 22:03:30', '2021-07-25 22:03:30'),
(28, 'CSS3', 'css3', 70, '264DE4', 2, 66, 64, '2021-07-25 22:03:58', '2021-07-25 22:03:58'),
(29, 'Laravel', 'laravel', 90, 'F05340', 3, 66, 64, '2021-07-25 22:04:23', '2021-07-25 22:04:23'),
(30, 'HTML5', 'html5', 80, 'E34C26', 1, 67, 64, '2021-07-25 22:03:30', '2021-07-25 22:03:30'),
(31, 'CSS3', 'css3', 70, '264DE4', 2, 67, 64, '2021-07-25 22:03:58', '2021-07-25 22:03:58'),
(32, 'Laravel', 'laravel', 90, 'F05340', 3, 67, 64, '2021-07-25 22:04:23', '2021-07-25 22:04:23'),
(33, 'HTML5', 'html5', 80, 'E34C26', 1, 68, 65, '2021-07-25 22:03:30', '2021-07-25 22:03:30'),
(34, 'CSS3', 'css3', 70, '264DE4', 2, 68, 65, '2021-07-25 22:03:58', '2021-07-25 22:03:58'),
(35, 'Laravel', 'laravel', 90, 'F05340', 3, 68, 65, '2021-07-25 22:04:23', '2021-07-25 22:04:23'),
(36, 'HTML5', 'html5', 80, 'E34C26', 1, 69, 65, '2021-07-25 22:03:30', '2021-07-25 22:03:30'),
(37, 'CSS3', 'css3', 70, '264DE4', 2, 69, 65, '2021-07-25 22:03:58', '2021-07-25 22:03:58'),
(38, 'Laravel', 'laravel', 90, 'F05340', 3, 69, 65, '2021-07-25 22:04:23', '2021-07-25 22:04:23'),
(39, 'HTML5', 'html5', 80, 'E34C26', 1, 70, 66, '2021-07-25 22:03:30', '2021-07-25 22:03:30'),
(40, 'CSS3', 'css3', 70, '264DE4', 2, 70, 66, '2021-07-25 22:03:58', '2021-07-25 22:03:58'),
(41, 'Laravel', 'laravel', 90, 'F05340', 3, 70, 66, '2021-07-25 22:04:23', '2021-07-25 22:04:23'),
(42, 'HTML5', 'html5', 80, 'E34C26', 1, 71, 66, '2021-07-25 22:03:30', '2021-07-25 22:03:30'),
(43, 'CSS3', 'css3', 70, '264DE4', 2, 71, 66, '2021-07-25 22:03:58', '2021-07-25 22:03:58'),
(44, 'Laravel', 'laravel', 90, 'F05340', 3, 71, 66, '2021-07-25 22:04:23', '2021-07-25 22:04:23'),
(45, 'HTML5', 'html5', 80, 'E34C26', 1, 72, 67, '2021-07-25 22:03:30', '2021-07-25 22:03:30'),
(46, 'CSS3', 'css3', 70, '264DE4', 2, 72, 67, '2021-07-25 22:03:58', '2021-07-25 22:03:58'),
(47, 'Laravel', 'laravel', 90, 'F05340', 3, 72, 67, '2021-07-25 22:04:23', '2021-07-25 22:04:23'),
(48, 'HTML5', 'html5', 80, 'E34C26', 1, 73, 67, '2021-07-25 22:03:30', '2021-07-25 22:03:30'),
(49, 'CSS3', 'css3', 70, '264DE4', 2, 73, 67, '2021-07-25 22:03:58', '2021-07-25 22:03:58'),
(50, 'Laravel', 'laravel', 90, 'F05340', 3, 73, 67, '2021-07-25 22:04:23', '2021-07-25 22:04:23');

-- --------------------------------------------------------

--
-- Table structure for table `user_socials`
--

CREATE TABLE `user_socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_socials`
--

INSERT INTO `user_socials` (`id`, `icon`, `url`, `serial_number`, `user_id`, `created_at`, `updated_at`) VALUES
(7, 'fab fa-facebook-f', 'https://www.facebook.com/', 1, 62, '2021-07-26 01:46:33', '2021-07-26 01:46:33'),
(8, 'fab fa-twitter', 'https://twitter.com/?lang=en', 2, 62, '2021-07-26 01:46:53', '2021-07-26 01:46:53'),
(9, 'fab fa-linkedin-in', 'https://www.linkedin.com/login', 3, 62, '2021-07-26 01:47:22', '2021-07-26 01:47:22'),
(10, 'fab fa-dribbble', 'https://dribbble.com/', 4, 62, '2021-07-26 01:47:46', '2021-07-26 01:47:46'),
(11, 'fab fa-github', 'https://github.com/', 5, 62, '2021-07-26 01:48:19', '2021-07-26 01:48:19'),
(12, 'fab fa-facebook-f', 'https://www.facebook.com/', 1, 63, '2021-07-26 01:46:33', '2021-07-26 01:46:33'),
(13, 'fab fa-twitter', 'https://twitter.com/?lang=en', 2, 63, '2021-07-26 01:46:53', '2021-07-26 01:46:53'),
(14, 'fab fa-linkedin-in', 'https://www.linkedin.com/login', 3, 63, '2021-07-26 01:47:22', '2021-07-26 01:47:22'),
(15, 'fab fa-dribbble', 'https://dribbble.com/', 4, 63, '2021-07-26 01:47:46', '2021-07-26 01:47:46'),
(16, 'fab fa-github', 'https://github.com/', 5, 63, '2021-07-26 01:48:19', '2021-07-26 01:48:19'),
(17, 'fab fa-facebook-f', 'https://www.facebook.com/', 1, 64, '2021-07-26 01:46:33', '2021-07-26 01:46:33'),
(18, 'fab fa-twitter', 'https://twitter.com/?lang=en', 2, 64, '2021-07-26 01:46:53', '2021-07-26 01:46:53'),
(19, 'fab fa-linkedin-in', 'https://www.linkedin.com/login', 3, 64, '2021-07-26 01:47:22', '2021-07-26 01:47:22'),
(20, 'fab fa-dribbble', 'https://dribbble.com/', 4, 64, '2021-07-26 01:47:46', '2021-07-26 01:47:46'),
(21, 'fab fa-github', 'https://github.com/', 5, 64, '2021-07-26 01:48:19', '2021-07-26 01:48:19'),
(22, 'fab fa-facebook-f', 'https://www.facebook.com/', 1, 65, '2021-07-26 01:46:33', '2021-07-26 01:46:33'),
(23, 'fab fa-twitter', 'https://twitter.com/?lang=en', 2, 65, '2021-07-26 01:46:53', '2021-07-26 01:46:53'),
(24, 'fab fa-linkedin-in', 'https://www.linkedin.com/login', 3, 65, '2021-07-26 01:47:22', '2021-07-26 01:47:22'),
(25, 'fab fa-dribbble', 'https://dribbble.com/', 4, 65, '2021-07-26 01:47:46', '2021-07-26 01:47:46'),
(26, 'fab fa-github', 'https://github.com/', 5, 65, '2021-07-26 01:48:19', '2021-07-26 01:48:19'),
(27, 'fab fa-facebook-f', 'https://www.facebook.com/', 1, 66, '2021-07-26 01:46:33', '2021-07-26 01:46:33'),
(28, 'fab fa-twitter', 'https://twitter.com/?lang=en', 2, 66, '2021-07-26 01:46:53', '2021-07-26 01:46:53'),
(29, 'fab fa-linkedin-in', 'https://www.linkedin.com/login', 3, 66, '2021-07-26 01:47:22', '2021-07-26 01:47:22'),
(30, 'fab fa-dribbble', 'https://dribbble.com/', 4, 66, '2021-07-26 01:47:46', '2021-07-26 01:47:46'),
(31, 'fab fa-github', 'https://github.com/', 5, 66, '2021-07-26 01:48:19', '2021-07-26 01:48:19'),
(32, 'fab fa-facebook-f', 'https://www.facebook.com/', 1, 67, '2021-07-26 01:46:33', '2021-07-26 01:46:33'),
(33, 'fab fa-twitter', 'https://twitter.com/?lang=en', 2, 67, '2021-07-26 01:46:53', '2021-07-26 01:46:53'),
(34, 'fab fa-linkedin-in', 'https://www.linkedin.com/login', 3, 67, '2021-07-26 01:47:22', '2021-07-26 01:47:22'),
(35, 'fab fa-dribbble', 'https://dribbble.com/', 4, 67, '2021-07-26 01:47:46', '2021-07-26 01:47:46'),
(36, 'fab fa-github', 'https://github.com/', 5, 67, '2021-07-26 01:48:19', '2021-07-26 01:48:19');

-- --------------------------------------------------------

--
-- Table structure for table `user_testimonials`
--

CREATE TABLE `user_testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `lang_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_testimonials`
--

INSERT INTO `user_testimonials` (`id`, `image`, `name`, `occupation`, `content`, `serial_number`, `lang_id`, `user_id`, `created_at`, `updated_at`) VALUES
(19, '1627295686.jpg', 'Helen Martinez', 'Food Business', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC', 1, 62, 62, '2021-07-26 01:34:46', '2021-07-26 01:35:00'),
(20, '1627295753.jpg', 'Mateo Lorenzo', 'Manager, Bank', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form', 2, 62, 62, '2021-07-26 01:35:53', '2021-07-26 01:35:53'),
(21, '1627295811.jpg', 'Federico Chiesa', 'Football Coach', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 3, 62, 62, '2021-07-26 01:36:51', '2021-07-26 01:36:51'),
(22, '1627295859.jpg', 'Seargio Romero', 'Lawyer', 'when an unknown printer took a galley of type and scrambled it to make a type specimen book It has survived', 4, 62, 62, '2021-07-26 01:37:39', '2021-07-26 01:37:39'),
(23, '1627295686.jpg', 'هيلين مارتينيز', 'مجال الاعمال فى الاطعمه', 'خلافًا للاعتقاد الشائع ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد', 1, 63, 62, '2021-07-26 01:34:46', '2021-07-26 01:35:00'),
(24, '1627295753.jpg', 'ماتيو لورينزو', 'مدير البنك', 'هناك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير بشكل ما', 2, 63, 62, '2021-07-26 01:35:53', '2021-07-26 01:35:53'),
(25, '1627295811.jpg', 'فيديريكو كييزا', 'مدرب كرة قدم', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.', 3, 63, 62, '2021-07-26 01:36:51', '2021-07-26 01:36:51'),
(26, '1627295859.jpg', 'سيرجيو روميرو', 'محامي', 'عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لصنع كتاب عينة من النوع فقد نجا', 4, 63, 62, '2021-07-26 01:37:39', '2021-07-26 01:37:39'),
(27, '1627295686.jpg', 'Helen Martinez', 'Food Business', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC', 1, 64, 63, '2021-07-26 01:34:46', '2021-07-26 01:35:00'),
(28, '1627295753.jpg', 'Mateo Lorenzo', 'Manager, Bank', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form', 2, 64, 63, '2021-07-26 01:35:53', '2021-07-26 01:35:53'),
(29, '1627295811.jpg', 'Federico Chiesa', 'Football Coach', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 3, 64, 63, '2021-07-26 01:36:51', '2021-07-26 01:36:51'),
(30, '1627295859.jpg', 'Seargio Romero', 'Lawyer', 'when an unknown printer took a galley of type and scrambled it to make a type specimen book It has survived', 4, 64, 63, '2021-07-26 01:37:39', '2021-07-26 01:37:39'),
(31, '1627295686.jpg', 'هيلين مارتينيز', 'مجال الاعمال فى الاطعمه', 'خلافًا للاعتقاد الشائع ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد', 1, 65, 63, '2021-07-26 01:34:46', '2021-07-26 01:35:00'),
(32, '1627295753.jpg', 'ماتيو لورينزو', 'مدير البنك', 'هناك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير بشكل ما', 2, 65, 63, '2021-07-26 01:35:53', '2021-07-26 01:35:53'),
(33, '1627295811.jpg', 'فيديريكو كييزا', 'مدرب كرة قدم', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.', 3, 65, 63, '2021-07-26 01:36:51', '2021-07-26 01:36:51'),
(34, '1627295859.jpg', 'سيرجيو روميرو', 'محامي', 'عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لصنع كتاب عينة من النوع فقد نجا', 4, 65, 63, '2021-07-26 01:37:39', '2021-07-26 01:37:39'),
(35, '1627295686.jpg', 'Helen Martinez', 'Food Business', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC', 1, 66, 64, '2021-07-26 01:34:46', '2021-07-26 01:35:00'),
(36, '1627295753.jpg', 'Mateo Lorenzo', 'Manager, Bank', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form', 2, 66, 64, '2021-07-26 01:35:53', '2021-07-26 01:35:53'),
(37, '1627295811.jpg', 'Federico Chiesa', 'Football Coach', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 3, 66, 64, '2021-07-26 01:36:51', '2021-07-26 01:36:51'),
(38, '1627295859.jpg', 'Seargio Romero', 'Lawyer', 'when an unknown printer took a galley of type and scrambled it to make a type specimen book It has survived', 4, 66, 64, '2021-07-26 01:37:39', '2021-07-26 01:37:39'),
(39, '1627295686.jpg', 'هيلين مارتينيز', 'مجال الاعمال فى الاطعمه', 'خلافًا للاعتقاد الشائع ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد', 1, 67, 64, '2021-07-26 01:34:46', '2021-07-26 01:35:00'),
(40, '1627295753.jpg', 'ماتيو لورينزو', 'مدير البنك', 'هناك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير بشكل ما', 2, 67, 64, '2021-07-26 01:35:53', '2021-07-26 01:35:53'),
(41, '1627295811.jpg', 'فيديريكو كييزا', 'مدرب كرة قدم', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.', 3, 67, 64, '2021-07-26 01:36:51', '2021-07-26 01:36:51'),
(42, '1627295859.jpg', 'سيرجيو روميرو', 'محامي', 'عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لصنع كتاب عينة من النوع فقد نجا', 4, 67, 64, '2021-07-26 01:37:39', '2021-07-26 01:37:39'),
(43, '1627295686.jpg', 'Helen Martinez', 'Food Business', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC', 1, 68, 65, '2021-07-26 01:34:46', '2021-07-26 01:35:00'),
(44, '1627295753.jpg', 'Mateo Lorenzo', 'Manager, Bank', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form', 2, 68, 65, '2021-07-26 01:35:53', '2021-07-26 01:35:53'),
(45, '1627295811.jpg', 'Federico Chiesa', 'Football Coach', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 3, 68, 65, '2021-07-26 01:36:51', '2021-07-26 01:36:51'),
(46, '1627295859.jpg', 'Seargio Romero', 'Lawyer', 'when an unknown printer took a galley of type and scrambled it to make a type specimen book It has survived', 4, 68, 65, '2021-07-26 01:37:39', '2021-07-26 01:37:39'),
(47, '1627295686.jpg', 'هيلين مارتينيز', 'مجال الاعمال فى الاطعمه', 'خلافًا للاعتقاد الشائع ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد', 1, 69, 65, '2021-07-26 01:34:46', '2021-07-26 01:35:00'),
(48, '1627295753.jpg', 'ماتيو لورينزو', 'مدير البنك', 'هناك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير بشكل ما', 2, 69, 65, '2021-07-26 01:35:53', '2021-07-26 01:35:53'),
(49, '1627295811.jpg', 'فيديريكو كييزا', 'مدرب كرة قدم', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.', 3, 69, 65, '2021-07-26 01:36:51', '2021-07-26 01:36:51'),
(50, '1627295859.jpg', 'سيرجيو روميرو', 'محامي', 'عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لصنع كتاب عينة من النوع فقد نجا', 4, 69, 65, '2021-07-26 01:37:39', '2021-07-26 01:37:39'),
(51, '1627295686.jpg', 'Helen Martinez', 'Food Business', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC', 1, 70, 66, '2021-07-26 01:34:46', '2021-07-26 01:35:00'),
(52, '1627295753.jpg', 'Mateo Lorenzo', 'Manager, Bank', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form', 2, 70, 66, '2021-07-26 01:35:53', '2021-07-26 01:35:53'),
(53, '1627295811.jpg', 'Federico Chiesa', 'Football Coach', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 3, 70, 66, '2021-07-26 01:36:51', '2021-07-26 01:36:51'),
(54, '1627295859.jpg', 'Seargio Romero', 'Lawyer', 'when an unknown printer took a galley of type and scrambled it to make a type specimen book It has survived', 4, 70, 66, '2021-07-26 01:37:39', '2021-07-26 01:37:39'),
(55, '1627295686.jpg', 'هيلين مارتينيز', 'مجال الاعمال فى الاطعمه', 'خلافًا للاعتقاد الشائع ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد', 1, 71, 66, '2021-07-26 01:34:46', '2021-07-26 01:35:00'),
(56, '1627295753.jpg', 'ماتيو لورينزو', 'مدير البنك', 'هناك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير بشكل ما', 2, 71, 66, '2021-07-26 01:35:53', '2021-07-26 01:35:53'),
(57, '1627295811.jpg', 'فيديريكو كييزا', 'مدرب كرة قدم', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.', 3, 71, 66, '2021-07-26 01:36:51', '2021-07-26 01:36:51'),
(58, '1627295859.jpg', 'سيرجيو روميرو', 'محامي', 'عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لصنع كتاب عينة من النوع فقد نجا', 4, 71, 66, '2021-07-26 01:37:39', '2021-07-26 01:37:39'),
(59, '1627295686.jpg', 'Helen Martinez', 'Food Business', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC', 1, 72, 67, '2021-07-26 01:34:46', '2021-07-26 01:35:00'),
(60, '1627295753.jpg', 'Mateo Lorenzo', 'Manager, Bank', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form', 2, 72, 67, '2021-07-26 01:35:53', '2021-07-26 01:35:53'),
(61, '1627295811.jpg', 'Federico Chiesa', 'Football Coach', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 3, 72, 67, '2021-07-26 01:36:51', '2021-07-26 01:36:51'),
(62, '1627295859.jpg', 'Seargio Romero', 'Lawyer', 'when an unknown printer took a galley of type and scrambled it to make a type specimen book It has survived', 4, 72, 67, '2021-07-26 01:37:39', '2021-07-26 01:37:39'),
(63, '1627295686.jpg', 'هيلين مارتينيز', 'مجال الاعمال فى الاطعمه', 'خلافًا للاعتقاد الشائع ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد', 1, 73, 67, '2021-07-26 01:34:46', '2021-07-26 01:35:00'),
(64, '1627295753.jpg', 'ماتيو لورينزو', 'مدير البنك', 'هناك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير بشكل ما', 2, 73, 67, '2021-07-26 01:35:53', '2021-07-26 01:35:53'),
(65, '1627295811.jpg', 'فيديريكو كييزا', 'مدرب كرة قدم', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.', 3, 73, 67, '2021-07-26 01:36:51', '2021-07-26 01:36:51'),
(66, '1627295859.jpg', 'سيرجيو روميرو', 'محامي', 'عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لصنع كتاب عينة من النوع فقد نجا', 4, 73, 67, '2021-07-26 01:37:39', '2021-07-26 01:37:39');

-- --------------------------------------------------------

--
-- Table structure for table `user_vcards`
--

CREATE TABLE `user_vcards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `template` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'number represents the template number',
  `direction` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - ltr, 2 - rtl',
  `profile_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduction` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `information` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vcard_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_vcards`
--

INSERT INTO `user_vcards` (`id`, `user_id`, `template`, `direction`, `profile_image`, `cover_image`, `name`, `occupation`, `introduction`, `information`, `created_at`, `updated_at`, `vcard_name`) VALUES
(8, 62, 2, 1, '612a448b26146.jpg', '612a448b26925.jpg', 'Sarah Wiliam', 'Web Developer', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum', '[{\"icon\":\"fab fa-github\",\"color\":\"171515\",\"label\":\"Gitlab\",\"value\":\"https:\\/\\/gitlab.com\\/\"},{\"icon\":\"fab fa-facebook-f\",\"color\":\"4267B2\",\"label\":\"Facebook\",\"value\":\"https:\\/\\/www.facebook.com\\/\"},{\"icon\":\"fab fa-twitter\",\"color\":\"1DA1F2\",\"label\":\"Twitter\",\"value\":\"https:\\/\\/twitter.com\\/\"},{\"icon\":\"fab fa-dribbble\",\"color\":\"EA4C89\",\"label\":\"Dribbble\",\"value\":\"https:\\/\\/dribbble.com\\/\"},{\"icon\":\"fab fa-behance\",\"color\":\"053EFF\",\"label\":\"Behance\",\"value\":\"https:\\/\\/www.behance.net\\/\"}]', '2021-08-28 05:13:31', '2021-09-01 22:12:28', 'KreativDev'),
(10, 62, 1, 1, '612a582cddb8e.jpg', '612a582cde0cb.jpg', 'Json Gillespie', 'Manager, ABC', 'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary', '[{\"icon\":\"fab fa-github\",\"color\":\"171515\",\"label\":\"Gitlab\",\"value\":\"https:\\/\\/gitlab.com\\/\"},{\"icon\":\"fab fa-facebook-f\",\"color\":\"4267B2\",\"label\":\"Facebook\",\"value\":\"https:\\/\\/www.facebook.com\\/\"},{\"icon\":\"fab fa-twitter\",\"color\":\"1DA1F2\",\"label\":\"Twitter\",\"value\":\"https:\\/\\/twitter.com\\/\"},{\"icon\":\"fab fa-dribbble\",\"color\":\"EA4C89\",\"label\":\"Dribbble\",\"value\":\"https:\\/\\/dribbble.com\\/\"},{\"icon\":\"fab fa-behance\",\"color\":\"053EFF\",\"label\":\"Behance\",\"value\":\"https:\\/\\/www.behance.net\\/\"}]', '2021-08-28 06:37:16', '2021-09-01 22:11:51', 'Company B'),
(11, 62, 4, 1, '612a58fa8cb19.jpg', '612a58fa8d335.jpg', 'Bruno Herandez', 'Graphic Designer', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece', '[{\"icon\":\"fab fa-github\",\"color\":\"171515\",\"label\":\"Gitlab\",\"value\":\"https:\\/\\/gitlab.com\\/\"},{\"icon\":\"fab fa-facebook-f\",\"color\":\"4267B2\",\"label\":\"Facebook\",\"value\":\"https:\\/\\/www.facebook.com\\/\"},{\"icon\":\"fab fa-twitter\",\"color\":\"1DA1F2\",\"label\":\"Twitter\",\"value\":\"https:\\/\\/twitter.com\\/\"},{\"icon\":\"fab fa-dribbble\",\"color\":\"EA4C89\",\"label\":\"Dribbble\",\"value\":\"https:\\/\\/dribbble.com\\/\"},{\"icon\":\"fab fa-behance\",\"color\":\"053EFF\",\"label\":\"Behance\",\"value\":\"https:\\/\\/www.behance.net\\/\"}]', '2021-08-28 06:40:42', '2021-09-01 22:13:03', 'Company A'),
(12, 62, 3, 1, '612a5b865ece9.jpg', '613077cd7b085.png', 'Marco Verratti', 'Web Designer, KD', 'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks', '[{\"icon\":\"fab fa-github\",\"color\":\"171515\",\"label\":\"Gitlab\",\"value\":\"https:\\/\\/gitlab.com\\/\"},{\"icon\":\"fab fa-twitter\",\"color\":\"1DA1F2\",\"label\":\"Twitter\",\"value\":\"https:\\/\\/twitter.com\\/\"},{\"icon\":\"fab fa-dribbble\",\"color\":\"EA4C89\",\"label\":\"Dribbble\",\"value\":\"https:\\/\\/dribbble.com\\/\"},{\"icon\":\"fas fa-heart\",\"color\":\"075E54\",\"label\":\"Whatsapp\",\"value\":\"https:\\/\\/www.whatsapp.com\\/\"},{\"icon\":\"fas fa-phone\",\"color\":\"FF0000\",\"label\":\"Phone Number\",\"value\":\"+238963236\"}]', '2021-08-28 06:51:34', '2021-09-01 22:11:05', 'Company C'),
(22, 62, 2, 2, '612a448b26146.jpg', '612a448b26925.jpg', 'سارة ويليام', 'مطور ويب', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم', '[{\"icon\":\"fab fa-github\",\"color\":\"171515\",\"label\":\"جيتلاب\",\"value\":\"https:\\/\\/gitlab.com\\/\"},{\"icon\":\"fab fa-facebook-f\",\"color\":\"4267B2\",\"label\":\"موقع التواصل الاجتماعي الفيسبوك\",\"value\":\"https:\\/\\/www.facebook.com\\/\"},{\"icon\":\"fab fa-twitter\",\"color\":\"1DA1F2\",\"label\":\"تويتر\",\"value\":\"https:\\/\\/twitter.com\\/\"},{\"icon\":\"fab fa-dribbble\",\"color\":\"EA4C89\",\"label\":\"دريبل\",\"value\":\"https:\\/\\/dribbble.com\\/\"},{\"icon\":\"fab fa-behance\",\"color\":\"053EFF\",\"label\":\"بيهانس\",\"value\":\"https:\\/\\/www.behance.net\\/\"}]', '2021-08-28 05:13:31', '2021-09-01 22:12:28', 'كريتيف'),
(23, 62, 1, 2, '612a582cddb8e.jpg', '612a582cde0cb.jpg', 'جسون جيليسبي', 'مدير ABC', 'تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة', '[{\"icon\":\"fab fa-github\",\"color\":\"171515\",\"label\":\"جيتلاب\",\"value\":\"https:\\/\\/gitlab.com\\/\"},{\"icon\":\"fab fa-facebook-f\",\"color\":\"4267B2\",\"label\":\"موقع التواصل الاجتماعي الفيسبوك\",\"value\":\"https:\\/\\/www.facebook.com\\/\"},{\"icon\":\"fab fa-twitter\",\"color\":\"1DA1F2\",\"label\":\"تويتر\",\"value\":\"https:\\/\\/twitter.com\\/\"},{\"icon\":\"fab fa-dribbble\",\"color\":\"EA4C89\",\"label\":\"دريبل\",\"value\":\"https:\\/\\/dribbble.com\\/\"},{\"icon\":\"fab fa-behance\",\"color\":\"053EFF\",\"label\":\"بيهانس\",\"value\":\"https:\\/\\/www.behance.net\\/\"}]', '2021-08-28 06:37:16', '2021-09-01 22:11:51', 'الشركة ب'),
(24, 62, 4, 2, '612a58fa8cb19.jpg', '612a58fa8d335.jpg', 'برونو هيرنانديز', 'مصمم جرافيك', 'خلافًا للاعتقاد الشائع ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة', '[{\"icon\":\"fab fa-github\",\"color\":\"171515\",\"label\":\"جيتلاب\",\"value\":\"https:\\/\\/gitlab.com\\/\"},{\"icon\":\"fab fa-facebook-f\",\"color\":\"4267B2\",\"label\":\"موقع التواصل الاجتماعي الفيسبوك\",\"value\":\"https:\\/\\/www.facebook.com\\/\"},{\"icon\":\"fab fa-twitter\",\"color\":\"1DA1F2\",\"label\":\"تويتر\",\"value\":\"https:\\/\\/twitter.com\\/\"},{\"icon\":\"fab fa-dribbble\",\"color\":\"EA4C89\",\"label\":\"دريبل\",\"value\":\"https:\\/\\/dribbble.com\\/\"},{\"icon\":\"fab fa-behance\",\"color\":\"053EFF\",\"label\":\"بيهانس\",\"value\":\"https:\\/\\/www.behance.net\\/\"}]', '2021-08-28 06:40:42', '2021-09-01 22:13:03', 'الشركة أ'),
(25, 62, 3, 2, '612a5b865ece9.jpg', '613077cd7b085.png', 'ماركو فيراتي', 'مصمم الويب ، KD', 'تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا', '[{\"icon\":\"fab fa-github\",\"color\":\"171515\",\"label\":\"جيتلاب\",\"value\":\"https:\\/\\/gitlab.com\\/\"},{\"icon\":\"fab fa-facebook-f\",\"color\":\"4267B2\",\"label\":\"موقع التواصل الاجتماعي الفيسبوك\",\"value\":\"https:\\/\\/www.facebook.com\\/\"},{\"icon\":\"fab fa-twitter\",\"color\":\"1DA1F2\",\"label\":\"تويتر\",\"value\":\"https:\\/\\/twitter.com\\/\"},{\"icon\":\"fab fa-dribbble\",\"color\":\"EA4C89\",\"label\":\"دريبل\",\"value\":\"https:\\/\\/dribbble.com\\/\"},{\"icon\":\"fab fa-behance\",\"color\":\"053EFF\",\"label\":\"بيهانس\",\"value\":\"https:\\/\\/www.behance.net\\/\"}]', '2021-08-28 06:51:34', '2021-09-01 22:11:05', 'الشركة ج');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_extendeds`
--
ALTER TABLE `basic_extendeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_settings`
--
ALTER TABLE `basic_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bcategories`
--
ALTER TABLE `bcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guests_endpoint_unique` (`endpoint`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_experiences`
--
ALTER TABLE `job_experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_experiences_user_id_foreign` (`user_id`),
  ADD KEY `job_experiences_lang_id_foreign` (`lang_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `memberships_user_id_foreign` (`user_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_gateways`
--
ALTER TABLE `offline_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popups`
--
ALTER TABLE `popups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `popups_language_id_foreign` (`language_id`);

--
-- Indexes for table `processes`
--
ALTER TABLE `processes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `push_subscriptions_endpoint_unique` (`endpoint`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitemaps`
--
ALTER TABLE `sitemaps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ulinks`
--
ALTER TABLE `ulinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_achievements`
--
ALTER TABLE `user_achievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_basic_settings`
--
ALTER TABLE `user_basic_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_blogs`
--
ALTER TABLE `user_blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_blogs_user_id_foreign` (`user_id`),
  ADD KEY `user_blogs_language_id_foreign` (`language_id`),
  ADD KEY `user_blogs_category_id_foreign` (`category_id`);

--
-- Indexes for table `user_blog_categories`
--
ALTER TABLE `user_blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_blog_categories_language_id_foreign` (`language_id`);

--
-- Indexes for table `user_custom_domains`
--
ALTER TABLE `user_custom_domains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_cvs`
--
ALTER TABLE `user_cvs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_cv_sections`
--
ALTER TABLE `user_cv_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_educations`
--
ALTER TABLE `user_educations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_educations_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_home_page_texts`
--
ALTER TABLE `user_home_page_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_languages`
--
ALTER TABLE `user_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_permissions_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_portfolios`
--
ALTER TABLE `user_portfolios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_portfolios_user_id_foreign` (`user_id`),
  ADD KEY `user_portfolios_language_id_foreign` (`language_id`),
  ADD KEY `user_portfolios_category_id_foreign` (`category_id`);

--
-- Indexes for table `user_portfolio_categories`
--
ALTER TABLE `user_portfolio_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_portfolio_images`
--
ALTER TABLE `user_portfolio_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_qr_codes`
--
ALTER TABLE `user_qr_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_seos`
--
ALTER TABLE `user_seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_services`
--
ALTER TABLE `user_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_services_user_id_foreign` (`user_id`),
  ADD KEY `user_services_lang_id_foreign` (`lang_id`);

--
-- Indexes for table `user_skills`
--
ALTER TABLE `user_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_skills_user_id_foreign` (`user_id`),
  ADD KEY `user_skills_language_id_foreign` (`language_id`);

--
-- Indexes for table `user_socials`
--
ALTER TABLE `user_socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_testimonials`
--
ALTER TABLE `user_testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_testimonials_user_id_foreign` (`user_id`),
  ADD KEY `user_testimonials_lang_id_foreign` (`lang_id`);

--
-- Indexes for table `user_vcards`
--
ALTER TABLE `user_vcards`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `basic_extendeds`
--
ALTER TABLE `basic_extendeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `basic_settings`
--
ALTER TABLE `basic_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `bcategories`
--
ALTER TABLE `bcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `job_experiences`
--
ALTER TABLE `job_experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `offline_gateways`
--
ALTER TABLE `offline_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `popups`
--
ALTER TABLE `popups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `processes`
--
ALTER TABLE `processes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sitemaps`
--
ALTER TABLE `sitemaps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=419;

--
-- AUTO_INCREMENT for table `ulinks`
--
ALTER TABLE `ulinks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `user_achievements`
--
ALTER TABLE `user_achievements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `user_basic_settings`
--
ALTER TABLE `user_basic_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `user_blogs`
--
ALTER TABLE `user_blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `user_blog_categories`
--
ALTER TABLE `user_blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `user_custom_domains`
--
ALTER TABLE `user_custom_domains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `user_cvs`
--
ALTER TABLE `user_cvs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_cv_sections`
--
ALTER TABLE `user_cv_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `user_educations`
--
ALTER TABLE `user_educations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `user_home_page_texts`
--
ALTER TABLE `user_home_page_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user_languages`
--
ALTER TABLE `user_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `user_permissions`
--
ALTER TABLE `user_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `user_portfolios`
--
ALTER TABLE `user_portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `user_portfolio_categories`
--
ALTER TABLE `user_portfolio_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `user_portfolio_images`
--
ALTER TABLE `user_portfolio_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT for table `user_qr_codes`
--
ALTER TABLE `user_qr_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_seos`
--
ALTER TABLE `user_seos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_services`
--
ALTER TABLE `user_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `user_skills`
--
ALTER TABLE `user_skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `user_socials`
--
ALTER TABLE `user_socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `user_testimonials`
--
ALTER TABLE `user_testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `user_vcards`
--
ALTER TABLE `user_vcards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `job_experiences`
--
ALTER TABLE `job_experiences`
  ADD CONSTRAINT `job_experiences_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `user_languages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_experiences_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `memberships`
--
ALTER TABLE `memberships`
  ADD CONSTRAINT `memberships_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_blogs`
--
ALTER TABLE `user_blogs`
  ADD CONSTRAINT `user_blogs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `user_blog_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_blogs_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `user_languages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_blog_categories`
--
ALTER TABLE `user_blog_categories`
  ADD CONSTRAINT `user_blog_categories_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `user_languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_educations`
--
ALTER TABLE `user_educations`
  ADD CONSTRAINT `user_educations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD CONSTRAINT `user_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_portfolios`
--
ALTER TABLE `user_portfolios`
  ADD CONSTRAINT `user_portfolios_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `user_portfolio_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_portfolios_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `user_languages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_portfolios_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_services`
--
ALTER TABLE `user_services`
  ADD CONSTRAINT `user_services_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `user_languages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_services_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_skills`
--
ALTER TABLE `user_skills`
  ADD CONSTRAINT `user_skills_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `user_languages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_skills_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_testimonials`
--
ALTER TABLE `user_testimonials`
  ADD CONSTRAINT `user_testimonials_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `user_languages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_testimonials_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
