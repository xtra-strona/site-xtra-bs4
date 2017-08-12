# --- WireDatabaseBackup {"time":"2017-08-12 08:51:13","user":"","dbName":"proc-clear","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_body`;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(191)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('27', '<blockquote>\n<h1>404 This Page Does not Exist</h1>\n</blockquote>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1017', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1084', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis magni omnis reiciendis aperiam labore, cum aliquid voluptas fuga temporibus, placeat sequi voluptates rem repudiandae eos dolorum mollitia natus.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1103', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1105', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1107', '<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1109', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1111', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1118', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1120', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1122', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1124', '<p><strong>Lorem Ipsum</strong> jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, jak Aldus PageMaker</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1128', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1131', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1133', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1166', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled ...</p>');

DROP TABLE IF EXISTS `field_check_1`;
CREATE TABLE `field_check_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_check_1` (`pages_id`, `data`) VALUES('1021', '1');
INSERT INTO `field_check_1` (`pages_id`, `data`) VALUES('1026', '1');
INSERT INTO `field_check_1` (`pages_id`, `data`) VALUES('1029', '1');
INSERT INTO `field_check_1` (`pages_id`, `data`) VALUES('1040', '1');
INSERT INTO `field_check_1` (`pages_id`, `data`) VALUES('1048', '1');
INSERT INTO `field_check_1` (`pages_id`, `data`) VALUES('1050', '1');
INSERT INTO `field_check_1` (`pages_id`, `data`) VALUES('1095', '1');
INSERT INTO `field_check_1` (`pages_id`, `data`) VALUES('1097', '1');
INSERT INTO `field_check_1` (`pages_id`, `data`) VALUES('1137', '1');
INSERT INTO `field_check_1` (`pages_id`, `data`) VALUES('1138', '1');
INSERT INTO `field_check_1` (`pages_id`, `data`) VALUES('1142', '1');
INSERT INTO `field_check_1` (`pages_id`, `data`) VALUES('1143', '1');
INSERT INTO `field_check_1` (`pages_id`, `data`) VALUES('1146', '1');
INSERT INTO `field_check_1` (`pages_id`, `data`) VALUES('1156', '1');
INSERT INTO `field_check_1` (`pages_id`, `data`) VALUES('1157', '1');
INSERT INTO `field_check_1` (`pages_id`, `data`) VALUES('1166', '1');
INSERT INTO `field_check_1` (`pages_id`, `data`) VALUES('1197', '1');

DROP TABLE IF EXISTS `field_check_2`;
CREATE TABLE `field_check_2` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_check_2` (`pages_id`, `data`) VALUES('1021', '1');
INSERT INTO `field_check_2` (`pages_id`, `data`) VALUES('1022', '1');
INSERT INTO `field_check_2` (`pages_id`, `data`) VALUES('1081', '1');
INSERT INTO `field_check_2` (`pages_id`, `data`) VALUES('1140', '1');
INSERT INTO `field_check_2` (`pages_id`, `data`) VALUES('1151', '1');
INSERT INTO `field_check_2` (`pages_id`, `data`) VALUES('1161', '1');

DROP TABLE IF EXISTS `field_check_3`;
CREATE TABLE `field_check_3` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_check_3` (`pages_id`, `data`) VALUES('1017', '1');
INSERT INTO `field_check_3` (`pages_id`, `data`) VALUES('1084', '1');
INSERT INTO `field_check_3` (`pages_id`, `data`) VALUES('1103', '1');
INSERT INTO `field_check_3` (`pages_id`, `data`) VALUES('1109', '1');
INSERT INTO `field_check_3` (`pages_id`, `data`) VALUES('1118', '1');
INSERT INTO `field_check_3` (`pages_id`, `data`) VALUES('1120', '1');

DROP TABLE IF EXISTS `field_check_4`;
CREATE TABLE `field_check_4` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_check_5`;
CREATE TABLE `field_check_5` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_check_6`;
CREATE TABLE `field_check_6` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_cookie_fieldset`;
CREATE TABLE `field_cookie_fieldset` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_cookie_fieldset_end`;
CREATE TABLE `field_cookie_fieldset_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_dat_1`;
CREATE TABLE `field_dat_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_dat_1` (`pages_id`, `data`) VALUES('1105', '2017-08-04 00:00:00');
INSERT INTO `field_dat_1` (`pages_id`, `data`) VALUES('1107', '2017-08-05 00:00:00');
INSERT INTO `field_dat_1` (`pages_id`, `data`) VALUES('1118', '2017-08-06 00:00:00');
INSERT INTO `field_dat_1` (`pages_id`, `data`) VALUES('1122', '2017-08-06 00:00:00');
INSERT INTO `field_dat_1` (`pages_id`, `data`) VALUES('1128', '2017-08-07 00:00:00');
INSERT INTO `field_dat_1` (`pages_id`, `data`) VALUES('1131', '2017-08-07 00:00:00');
INSERT INTO `field_dat_1` (`pages_id`, `data`) VALUES('1133', '2017-08-07 00:00:00');

DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(191) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_email_1`;
CREATE TABLE `field_email_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(191)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_email_1` (`pages_id`, `data`) VALUES('1166', 'your@gmail.com');

DROP TABLE IF EXISTS `field_font_1`;
CREATE TABLE `field_font_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_font_1` (`pages_id`, `data`) VALUES('1021', 'trophy');
INSERT INTO `field_font_1` (`pages_id`, `data`) VALUES('1022', 'birthday-cake');
INSERT INTO `field_font_1` (`pages_id`, `data`) VALUES('1035', 'volume-control-phone');
INSERT INTO `field_font_1` (`pages_id`, `data`) VALUES('1036', 'envelope-o');
INSERT INTO `field_font_1` (`pages_id`, `data`) VALUES('1048', 'twitter');
INSERT INTO `field_font_1` (`pages_id`, `data`) VALUES('1049', 'facebook');
INSERT INTO `field_font_1` (`pages_id`, `data`) VALUES('1050', 'youtube');
INSERT INTO `field_font_1` (`pages_id`, `data`) VALUES('1142', 'circle-o-notch');
INSERT INTO `field_font_1` (`pages_id`, `data`) VALUES('1143', 'rocket');
INSERT INTO `field_font_1` (`pages_id`, `data`) VALUES('1146', 'microchip');
INSERT INTO `field_font_1` (`pages_id`, `data`) VALUES('1156', 'graduation-cap');
INSERT INTO `field_font_1` (`pages_id`, `data`) VALUES('1157', 'thumbs-o-up');
INSERT INTO `field_font_1` (`pages_id`, `data`) VALUES('1159', 'user-secret');
INSERT INTO `field_font_1` (`pages_id`, `data`) VALUES('1160', 'paw');
INSERT INTO `field_font_1` (`pages_id`, `data`) VALUES('1161', 'building-o');
INSERT INTO `field_font_1` (`pages_id`, `data`) VALUES('1186', 'anchor');
INSERT INTO `field_font_1` (`pages_id`, `data`) VALUES('1192', 'home');
INSERT INTO `field_font_1` (`pages_id`, `data`) VALUES('1193', 'lightbulb-o');
INSERT INTO `field_font_1` (`pages_id`, `data`) VALUES('1194', 'paper-plane');
INSERT INTO `field_font_1` (`pages_id`, `data`) VALUES('1195', 'cubes');
INSERT INTO `field_font_1` (`pages_id`, `data`) VALUES('1196', 'envelope-o');
INSERT INTO `field_font_1` (`pages_id`, `data`) VALUES('1197', 'building-o');

DROP TABLE IF EXISTS `field_headline`;
CREATE TABLE `field_headline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(191)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1', 'Build Bigger, Faster, Stronger, Easier.');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('27', 'This Page Does not Exist');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1016', 'Search Some Words');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1017', 'Lorem Ipsum is simply dummy text of the printing and');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1084', 'We warmly invite you to Cooperation !!!');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1103', 'Welcome To Latest News');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1105', '1 News Title');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1107', 'Next Awesome News');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1109', 'See all News Authors');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1111', 'Hi My Name is Rafał');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1118', 'Last Awesome News');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1120', 'See my recent work');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1122', 'Lorem Ipsum is simply dummy text of the printing');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1124', 'Lorem Ipsum is simply dummy text of the printing and');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1125', 'Show 1 Cat Portfolio');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1128', 'Lorem Ipsum is simply dummy text of');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1131', 'Lorem Ipsum is simply dummy text of the printing');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1133', 'Lorem Ipsum is simply dummy text of the');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1166', 'Contact Us');

DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(191) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1105', 'edytory-compressor.jpg', '0', '', '2017-08-04 22:03:31', '2017-08-04 22:03:31');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1107', '2--instalacja-wampserver-640x426-compressor.jpg', '0', '', '2017-08-06 08:10:34', '2017-08-06 08:10:34');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1118', 'proc-8-compressor.jpg', '0', '', '2017-08-09 10:03:08', '2017-08-09 10:03:08');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1122', 'proc-1.jpg', '0', '', '2017-08-09 09:44:26', '2017-08-09 09:44:26');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1128', 'proc-2.jpg', '0', '', '2017-08-09 09:44:48', '2017-08-09 09:44:48');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1131', 'proc-3.jpg', '0', '', '2017-08-09 09:45:03', '2017-08-09 09:45:03');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1133', 'proc-4.jpg', '0', '', '2017-08-09 09:45:23', '2017-08-09 09:45:23');

DROP TABLE IF EXISTS `field_img_1`;
CREATE TABLE `field_img_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(191) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_img_1` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1026', 'proc-4-compressor.jpg', '0', '', '2017-08-09 10:02:01', '2017-08-09 10:02:01');
INSERT INTO `field_img_1` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1028', 'proc-5-compressor.jpg', '0', '', '2017-08-09 10:02:01', '2017-08-09 10:02:01');
INSERT INTO `field_img_1` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1029', 'proc-9-compressor.jpg', '0', '', '2017-08-09 10:02:01', '2017-08-09 10:02:01');
INSERT INTO `field_img_1` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1031', 'rocket-n-compressor.png', '0', '', '2017-08-10 21:34:06', '2017-08-10 21:34:06');
INSERT INTO `field_img_1` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1111', 'wordpress-hipek-new-compressor.jpg', '0', '', '2017-08-06 21:53:11', '2017-08-06 21:53:11');

DROP TABLE IF EXISTS `field_img_2`;
CREATE TABLE `field_img_2` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(191) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_img_2` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1031', 'wrench-compressor.png', '0', '', '2017-08-09 17:46:44', '2017-08-09 17:46:44');

DROP TABLE IF EXISTS `field_language`;
CREATE TABLE `field_language` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_language` (`pages_id`, `data`, `sort`) VALUES('40', '1164', '0');
INSERT INTO `field_language` (`pages_id`, `data`, `sort`) VALUES('41', '1164', '0');

DROP TABLE IF EXISTS `field_language_files`;
CREATE TABLE `field_language_files` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(191) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_language_files_site`;
CREATE TABLE `field_language_files_site` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(191) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1007', '150');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1010', '159');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1012', '160');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1015', '162');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1113', '166');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1163', '168');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1165', '169');

DROP TABLE IF EXISTS `field_ref_1`;
CREATE TABLE `field_ref_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_ref_1` (`pages_id`, `data`, `sort`) VALUES('1192', '1', '0');
INSERT INTO `field_ref_1` (`pages_id`, `data`, `sort`) VALUES('1022', '1017', '0');
INSERT INTO `field_ref_1` (`pages_id`, `data`, `sort`) VALUES('1195', '1084', '0');
INSERT INTO `field_ref_1` (`pages_id`, `data`, `sort`) VALUES('1028', '1103', '0');
INSERT INTO `field_ref_1` (`pages_id`, `data`, `sort`) VALUES('1194', '1103', '0');
INSERT INTO `field_ref_1` (`pages_id`, `data`, `sort`) VALUES('1159', '1109', '0');
INSERT INTO `field_ref_1` (`pages_id`, `data`, `sort`) VALUES('1160', '1120', '0');
INSERT INTO `field_ref_1` (`pages_id`, `data`, `sort`) VALUES('1193', '1120', '0');
INSERT INTO `field_ref_1` (`pages_id`, `data`, `sort`) VALUES('1196', '1166', '0');

DROP TABLE IF EXISTS `field_ref_2`;
CREATE TABLE `field_ref_2` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_ref_2` (`pages_id`, `data`, `sort`) VALUES('1105', '1111', '0');
INSERT INTO `field_ref_2` (`pages_id`, `data`, `sort`) VALUES('1107', '1111', '0');
INSERT INTO `field_ref_2` (`pages_id`, `data`, `sort`) VALUES('1118', '1111', '0');

DROP TABLE IF EXISTS `field_ref_3`;
CREATE TABLE `field_ref_3` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_ref_4`;
CREATE TABLE `field_ref_4` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_ref_4` (`pages_id`, `data`, `sort`) VALUES('1122', '1125', '0');
INSERT INTO `field_ref_4` (`pages_id`, `data`, `sort`) VALUES('1128', '1125', '1');
INSERT INTO `field_ref_4` (`pages_id`, `data`, `sort`) VALUES('1133', '1125', '0');
INSERT INTO `field_ref_4` (`pages_id`, `data`, `sort`) VALUES('1122', '1126', '1');
INSERT INTO `field_ref_4` (`pages_id`, `data`, `sort`) VALUES('1131', '1126', '0');
INSERT INTO `field_ref_4` (`pages_id`, `data`, `sort`) VALUES('1128', '1127', '0');

DROP TABLE IF EXISTS `field_ref_5`;
CREATE TABLE `field_ref_5` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_ref_5` (`pages_id`, `data`, `sort`) VALUES('1', '1120', '0');

DROP TABLE IF EXISTS `field_rep_1`;
CREATE TABLE `field_rep_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_rep_1` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1', '1021,1022,1023', '3', '1020');

DROP TABLE IF EXISTS `field_rep_2`;
CREATE TABLE `field_rep_2` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_rep_2` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1', '1026,1028,1029', '3', '1025');

DROP TABLE IF EXISTS `field_rep_3`;
CREATE TABLE `field_rep_3` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_rep_3` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1031', '1035,1036', '2', '1032');

DROP TABLE IF EXISTS `field_rep_4`;
CREATE TABLE `field_rep_4` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_rep_4` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1', '', '0', '1042');
INSERT INTO `field_rep_4` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1017', '1079,1081,1138', '3', '1044');
INSERT INTO `field_rep_4` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1031', '1040,1140,1144,1151,1149', '5', '1038');
INSERT INTO `field_rep_4` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1084', '1153', '1', '1085');
INSERT INTO `field_rep_4` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1103', '', '0', '1104');
INSERT INTO `field_rep_4` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1105', '', '0', '1106');
INSERT INTO `field_rep_4` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1107', '', '0', '1108');
INSERT INTO `field_rep_4` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1109', '', '0', '1110');
INSERT INTO `field_rep_4` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1111', '', '0', '1112');
INSERT INTO `field_rep_4` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1118', '', '0', '1119');
INSERT INTO `field_rep_4` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1120', '', '0', '1121');
INSERT INTO `field_rep_4` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1128', '', '0', '1129');
INSERT INTO `field_rep_4` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1131', '', '0', '1132');
INSERT INTO `field_rep_4` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1133', '', '0', '1134');
INSERT INTO `field_rep_4` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1166', '', '0', '1167');

DROP TABLE IF EXISTS `field_rep_5`;
CREATE TABLE `field_rep_5` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_rep_5` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1031', '1048,1049,1050', '3', '1047');

DROP TABLE IF EXISTS `field_rep_6`;
CREATE TABLE `field_rep_6` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_rep_6` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1031', '1159,1160,1161', '3', '1052');

DROP TABLE IF EXISTS `field_rep_7`;
CREATE TABLE `field_rep_7` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_rep_7` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1084', '1091,1092,1093', '3', '1088');

DROP TABLE IF EXISTS `field_rep_8`;
CREATE TABLE `field_rep_8` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_rep_menu`;
CREATE TABLE `field_rep_menu` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_rep_menu` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1031', '1192,1193,1194,1195,1196,1197', '6', '1172');
INSERT INTO `field_rep_menu` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1040', '1186', '1', '1069');
INSERT INTO `field_rep_menu` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1065', '', '0', '1066');
INSERT INTO `field_rep_menu` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1079', '1137', '1', '1080');
INSERT INTO `field_rep_menu` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1081', '', '0', '1082');
INSERT INTO `field_rep_menu` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1091', '1095', '1', '1094');
INSERT INTO `field_rep_menu` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1092', '1097', '1', '1096');
INSERT INTO `field_rep_menu` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1138', '', '0', '1139');
INSERT INTO `field_rep_menu` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1140', '1142,1143,1146,1156,1157', '5', '1141');
INSERT INTO `field_rep_menu` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1144', '', '0', '1145');
INSERT INTO `field_rep_menu` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1149', '', '0', '1150');
INSERT INTO `field_rep_menu` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1151', '', '0', '1152');
INSERT INTO `field_rep_menu` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1153', '', '0', '1154');
INSERT INTO `field_rep_menu` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1183', '', '0', '1184');

DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_summary`;
CREATE TABLE `field_summary` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(191)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1', 'A friendly and powerful open source CMS with an exceptionally strong API.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('27', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1016', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1017', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1084', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1103', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1105', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1107', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1109', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1111', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1118', 'Lorem Ipsum jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1120', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1122', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1124', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1125', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1128', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1131', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1133', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1166', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(191)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1', 'Home Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('2', 'Admin');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('3', 'Pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('6', 'Add Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('7', 'Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('8', 'Tree');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('9', 'Save Sort');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('10', 'Edit');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('11', 'Templates');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('16', 'Fields');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('21', 'Modules');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('22', 'Setup');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('23', 'Login');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('27', '404 Not Found');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('28', 'Access');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('29', 'Users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('30', 'Roles');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('31', 'Permissions');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('32', 'Edit pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('34', 'Delete pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('35', 'Move pages (change parent)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('36', 'View pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('50', 'Sort child pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('51', 'Change templates on pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('52', 'Administer users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('53', 'User can update profile/password');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('54', 'Lock or unlock a page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('300', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('301', 'Empty Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('302', 'Insert Link');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('303', 'Insert Image');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('304', 'Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1006', 'Use Page Lister');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1007', 'Find');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1010', 'Recent');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1011', 'Can see recently edited pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1012', 'Logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1013', 'Can view system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1014', 'Can manage system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1015', 'Export Site Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1016', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1017', 'Custom Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1018', 'Repeaters');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1019', 'rep_1');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1020', 'home');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1024', 'rep_2');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1025', 'home');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1030', 'rep_3');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1031', 'Options');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1032', 'opttions');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1037', 'rep_4');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1038', 'options');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1042', 'home');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1044', 'custom');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1046', 'rep_5');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1047', 'options');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1051', 'rep_6');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1052', 'options');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1059', 'rep_menu');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1066', '1501780489-9071-1');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1069', '1501682757-8687-1');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1080', '1501786089-7655-1');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1082', '1501786109-6147-1');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1083', 'search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1084', 'All Oferts');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1085', 'all-oferts');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1086', 'sitemap.xml');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1087', 'rep_7');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1088', 'all-oferts');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1094', '1501858548-7986-1');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1096', '1501858621-3552-1');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1101', 'rep_8');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1103', 'News');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1104', 'news');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1105', '1 News');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1106', '1-news');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1107', '2 News');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1108', '2-news');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1109', 'Authors');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1110', 'authors');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1111', 'Rafał Olszewicz');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1112', 'rafal-olszewicz');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1113', 'Clone');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1114', 'Clone a page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1115', 'Clone a tree of pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1118', '3 News');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1119', '3-news');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1120', 'Portfolio');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1121', 'show-all-portfolio');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1122', '1 Portfolio');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1123', '1-portfolio');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1124', 'Categories Portfolio');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1125', '1 Cat Portfolio');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1126', '2 Cat Portfolio');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1127', '3 Cat Portfolio');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1128', '2 Portfolio');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1129', '2-portfolio');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1131', '3 Portfolio');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1132', '3-portfolio');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1133', '4 Portfolio');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1134', '4-portfoli');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1135', 'categories-portfolio');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1136', '1-cat-potfolio');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1139', '1502189847-2052-1');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1141', '1502190115-7526-1');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1145', '1502190858-8794-1');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1150', '1502191150-0946-1');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1152', '1502191261-8226-1');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1154', '1502191376-985-1');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1158', '1501858634-814-1');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1162', 'Administer languages and static translation files');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1163', 'Languages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1164', 'Default');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1165', 'Language Translator');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1166', 'Contact');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1167', 'contact');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1170', 'Language Options');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1171', 'http404');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1172', 'options');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1184', '1502446803-1616-1');

DROP TABLE IF EXISTS `field_txt_1`;
CREATE TABLE `field_txt_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(191)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1', 'Learn More About Our Work');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1021', 'About Processwire');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1022', 'About - 2');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1023', 'About - 3');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1026', 'Learn Processwire');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1028', 'Latest News');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1029', 'Xtra Strona :)');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1031', 'Xtra Strona');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1035', '577-321-009');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1036', 'mail@gmail.com');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1040', 'Welcome friends');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1079', 'Welcome Friends');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1081', 'Disable Card Class');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1091', 'Pro Fields');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1092', 'Pro Cache');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1093', '3 Offer');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1095', 'Pro Fields');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1097', 'Price Only $49.00');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1120', '');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1137', 'Processwire.com');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1138', 'Custom URL');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1140', 'See Useful Addresses');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1142', 'DOCS');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1143', 'BLOG');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1146', 'MODULES');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1149', '<i class=\"fa fa-eraser\" aria-hidden=\"true\"></i>');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1151', '<i class=\"fa fa-bomb fa-2x\" aria-hidden=\"true\"></i>');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1153', 'Show Latest Offerts');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1156', 'API 3x');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1157', 'Forums');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1159', 'Show All Authors');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1161', 'Processwire Weekly');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1166', 'My Subject');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1170', '');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1183', '');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1185', '');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1186', '');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1192', '');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1193', '');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1194', '');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1195', '');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1196', '');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1197', 'Processwire');

DROP TABLE IF EXISTS `field_txt_2`;
CREATE TABLE `field_txt_2` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(191)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_txt_2` (`pages_id`, `data`) VALUES('1', 'Slider Heading');
INSERT INTO `field_txt_2` (`pages_id`, `data`) VALUES('1031', 'Go it!');
INSERT INTO `field_txt_2` (`pages_id`, `data`) VALUES('1040', 'Processwire');
INSERT INTO `field_txt_2` (`pages_id`, `data`) VALUES('1091', 'Price 129$');
INSERT INTO `field_txt_2` (`pages_id`, `data`) VALUES('1092', 'ProcessWire is fast. With ProCache it\'s insanely fast!');
INSERT INTO `field_txt_2` (`pages_id`, `data`) VALUES('1120', '');
INSERT INTO `field_txt_2` (`pages_id`, `data`) VALUES('1138', 'Markup Regions');
INSERT INTO `field_txt_2` (`pages_id`, `data`) VALUES('1166', '');
INSERT INTO `field_txt_2` (`pages_id`, `data`) VALUES('1170', '');
INSERT INTO `field_txt_2` (`pages_id`, `data`) VALUES('1183', '');

DROP TABLE IF EXISTS `field_txt_3`;
CREATE TABLE `field_txt_3` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(191)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_txt_3` (`pages_id`, `data`) VALUES('1', 'Portfolio');
INSERT INTO `field_txt_3` (`pages_id`, `data`) VALUES('1021', 'Learn ProcessWire');
INSERT INTO `field_txt_3` (`pages_id`, `data`) VALUES('1022', 'Hello In Custom Page');
INSERT INTO `field_txt_3` (`pages_id`, `data`) VALUES('1031', 'Learn More');
INSERT INTO `field_txt_3` (`pages_id`, `data`) VALUES('1120', '');
INSERT INTO `field_txt_3` (`pages_id`, `data`) VALUES('1166', '');
INSERT INTO `field_txt_3` (`pages_id`, `data`) VALUES('1170', '');

DROP TABLE IF EXISTS `field_txt_4`;
CREATE TABLE `field_txt_4` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(191)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_txt_4` (`pages_id`, `data`) VALUES('1', '');
INSERT INTO `field_txt_4` (`pages_id`, `data`) VALUES('1031', 'Powered By');
INSERT INTO `field_txt_4` (`pages_id`, `data`) VALUES('1120', '');
INSERT INTO `field_txt_4` (`pages_id`, `data`) VALUES('1166', '');

DROP TABLE IF EXISTS `field_txt_5`;
CREATE TABLE `field_txt_5` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(191)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_txt_6`;
CREATE TABLE `field_txt_6` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(191)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_txt_7`;
CREATE TABLE `field_txt_7` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(191)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_txt_8`;
CREATE TABLE `field_txt_8` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(191)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_txt_8` (`pages_id`, `data`) VALUES('1166', 'Your Submit Message');

DROP TABLE IF EXISTS `field_txtarea_1`;
CREATE TABLE `field_txtarea_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(191)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_txtarea_1` (`pages_id`, `data`) VALUES('1021', '<h3>\nA friendly and powerful open source CMS with an exceptionally strong API.\n</h3>\n\n<div class=\"alert alert-info\" role=\"alert\">\n  <strong>Heads up!</strong>\nProcessWire is a free PHP content management system and framework (open source CMS/CMF) built to save you time and work the way you do.\n</div>\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');
INSERT INTO `field_txtarea_1` (`pages_id`, `data`) VALUES('1022', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');
INSERT INTO `field_txtarea_1` (`pages_id`, `data`) VALUES('1023', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');
INSERT INTO `field_txtarea_1` (`pages_id`, `data`) VALUES('1031', 'This website uses cookies to ensure you get the best experience on our website.');
INSERT INTO `field_txtarea_1` (`pages_id`, `data`) VALUES('1040', 'My name is Rafał and I\'m learning The Great CMS Processwire');
INSERT INTO `field_txtarea_1` (`pages_id`, `data`) VALUES('1079', 'This Panel Was Added On An Custom Page');
INSERT INTO `field_txtarea_1` (`pages_id`, `data`) VALUES('1081', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');
INSERT INTO `field_txtarea_1` (`pages_id`, `data`) VALUES('1091', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis magni omnis reiciendis aperiam labore, cum aliquid voluptas fuga temporibus, placeat sequi voluptates rem repudiandae eos dolorum mollitia natus. Adipisci, a. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis magni omnis reiciendis aperiam labore, cum aliquid voluptas fuga temporibus, placeat sequi voluptates rem repudiandae eos dolorum mollitia natus.');
INSERT INTO `field_txtarea_1` (`pages_id`, `data`) VALUES('1092', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis magni omnis reiciendis aperiam labore, cum aliquid voluptas fuga temporibus, placeat sequi voluptates rem repudiandae eos dolorum mollitia natus. Adipisci, a. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis magni omnis reiciendis aperiam labore, cum aliquid voluptas fuga temporibus, placeat sequi voluptates rem repudiandae eos dolorum mollitia natus.');
INSERT INTO `field_txtarea_1` (`pages_id`, `data`) VALUES('1093', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis magni omnis reiciendis aperiam labore, cum aliquid voluptas fuga temporibus, placeat sequi voluptates rem repudiandae eos dolorum mollitia natus. Adipisci, a. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis magni omnis reiciendis aperiam labore, cum aliquid voluptas fuga temporibus, placeat sequi voluptates rem repudiandae eos dolorum mollitia natus.');
INSERT INTO `field_txtarea_1` (`pages_id`, `data`) VALUES('1144', 'These card are Edited in the <b><i class=\"fa fa-cogs\" aria-hidden=\"true\"></i>\n Options</b> page');
INSERT INTO `field_txtarea_1` (`pages_id`, `data`) VALUES('1149', 'You can overwrite Sidebar it in any other page');
INSERT INTO `field_txtarea_1` (`pages_id`, `data`) VALUES('1153', 'Only 50$ for item');
INSERT INTO `field_txtarea_1` (`pages_id`, `data`) VALUES('1166', 'Your Message Has Been Sent ... We will reply as soon as possible ...');
INSERT INTO `field_txtarea_1` (`pages_id`, `data`) VALUES('1183', '');

DROP TABLE IF EXISTS `field_txtarea_2`;
CREATE TABLE `field_txtarea_2` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(191)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_txtarea_2` (`pages_id`, `data`) VALUES('1166', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d207432.99596841156!2d139.57030197011224!3d35.673540791378976!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x605d1b87f02e57e7%3A0x2e01618b22571b89!2sTokio%2C+Japonia!5e0!3m2!1spl!2spl!4v1502379585307\" width=\"800\" height=\"600\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>');

DROP TABLE IF EXISTS `field_url_1`;
CREATE TABLE `field_url_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(191)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1021', 'https://processwire.com/');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1026', 'https://processwire.com/');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1029', 'https://www.youtube.com/watch?v=psFn-S7RJhE&list=PLXtuAv5QX7AKHLOHHC2SmseUgGxW22zZJ');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1031', 'https://cookieconsent.insites.com/');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1040', 'https://processwire.com/');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1048', 'https://twitter.com/?lang=pl');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1049', 'https://www.facebook.com/');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1050', 'https://www.youtube.com/channel/UCAC6bGszwXecqp1Nq2qn1Sg');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1095', 'https://processwire.com/talk/store/product/10-profields/');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1097', 'https://processwire.com/talk/store/product/6-procache-single/');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1137', 'https://processwire.com/');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1138', 'https://processwire.com/blog/posts/processwire-3.0.62-and-more-on-markup-regions/');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1142', 'https://processwire.com/docs/');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1143', 'https://processwire.com/blog/');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1146', 'https://modules.processwire.com/');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1156', 'https://processwire.com/api/ref/');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1157', 'https://processwire.com/talk/');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1161', 'https://processwire.com/about/processwire-weekly/');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1183', '');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1185', '');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1186', '');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1192', '');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1193', '');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1194', '');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1195', '');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1196', '');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1197', 'https://processwire.com/');

DROP TABLE IF EXISTS `field_url_2`;
CREATE TABLE `field_url_2` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(191)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_url_2` (`pages_id`, `data`) VALUES('1031', '');

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('1', 'home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('83', 'basic-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('97', 'search');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('98', 'options');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('99', 'repeater_rep_1');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('100', 'repeater_rep_2');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('101', 'repeater_rep_3');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('102', 'repeater_rep_4');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('103', 'repeater_rep_5');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('104', 'repeater_rep_6');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('105', 'repeater_rep_menu');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('106', 'oferts');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('107', 'sitemap-xml');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('108', 'repeater_rep_7');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('111', 'news');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('110', 'repeater_rep_8');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('112', 'single-news');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('113', 'authors');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('114', 'single-author');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('115', 'portfolio');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('116', 'single-portfolio');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('119', 'portfolio-cat');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('118', 'single-portfolio-cat');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('120', 'language');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('121', 'contact');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('123', 'language-options');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '105', '6', '{\"columnWidth\":20,\"label\":\"Disable Sidebar\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '119', '8', '{\"label\":\"Enable Blockquote\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '119', '4', '{\"label\":\"Enable Blockquote\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '119', '4', '{\"label\":\"Enable Blockquote\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '100', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '142', '15', '{\"columnWidth\":25,\"label\":\"Turn off Portfolio Slider\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '97', '5', '{\"columnWidth\":80}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '105', '6', '{\"columnWidth\":20,\"label\":\"Disable Sidebar\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '99', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '102', '0', '{\"columnWidth\":50,\"label\":\"Heading\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '139', '1', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '103', '2', '{\"columnWidth\":80,\"label\":\"Content\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '105', '3', '{\"columnWidth\":20,\"label\":\"Expanded Panel\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '105', '13', '{\"columnWidth\":20,\"label\":\"Disable Sidebar\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '109', '3', '{\"columnWidth\":40,\"label\":\"Adress Url\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '118', '16', '{\"columnWidth\":25,\"label\":\"Add Heading\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '126', '17', '{\"columnWidth\":25,\"label\":\"Select Parent Page\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '132', '18', '{\"columnWidth\":25,\"label\":\"Label Button All\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '102', '1', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '108', '2', '{\"columnWidth\":40,\"label\":\"Select Page\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '128', '18', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '105', '12', '{\"columnWidth\":25,\"label\":\"Disable Cookie Info\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '103', '13', '{\"columnWidth\":50,\"rows\":1}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '105', '4', '{\"columnWidth\":20,\"label\":\"Open In New Window\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '112', '3', '{\"columnWidth\":25,\"label\":\"Button Text\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '108', '4', '{\"columnWidth\":25,\"label\":\"Select Page\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '113', '7', '{\"columnWidth\":80}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '109', '5', '{\"columnWidth\":25,\"label\":\"Custom Url\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '105', '6', '{\"columnWidth\":25,\"label\":\"Open In New Window\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '113', '7', '{\"columnWidth\":80}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '97', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '99', '2', '{\"columnWidth\":40}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '115', '10', '{\"columnWidth\":50,\"label\":\"Footer Menu\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '127', '11', '{\"label\":\"Options Cookie\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '102', '0', '{\"columnWidth\":50,\"label\":\"Url Heading\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '99', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '113', '14', '{\"columnWidth\":80}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '102', '11', '{\"columnWidth\":20,\"label\":\"Accordion Heading\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '102', '0', '{\"columnWidth\":20,\"label\":\"Link Name\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '118', '4', '{\"columnWidth\":25,\"label\":\"Button Text\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '108', '5', '{\"columnWidth\":25,\"label\":\"Select Page\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '109', '6', '{\"columnWidth\":25,\"label\":\"Custom Url\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '116', '7', '{\"columnWidth\":25,\"label\":\"Open Blank Page\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '106', '1', '{\"collapsed\":\"5\",\"columnWidth\":25,\"label\":\"Logo\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '110', '2', '{\"collapsed\":\"5\",\"columnWidth\":25,\"label\":\"Favicon\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '111', '3', '{\"collapsed\":\"5\",\"columnWidth\":25,\"label\":\"Info Slider\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '117', '4', '{\"label\":\"Top Menu\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '113', '5', '{\"label\":\"Global Sidebar\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '99', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '101', '5', '{\"columnWidth\":40}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '116', '3', '{\"label\":\"Enable Full Content\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '98', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '98', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '116', '3', '{\"columnWidth\":20,\"label\":\"Enable Full Content\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '98', '1', '{\"columnWidth\":20}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '97', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '141', '10', '{\"label\":\"Turn off Accordion\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '102', '0', '{\"columnWidth\":30,\"label\":\"Panel Heading\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '103', '1', '{\"columnWidth\":50,\"label\":\"Panel Content\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '105', '2', '{\"columnWidth\":30,\"label\":\"New Window\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '117', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '116', '2', '{\"label\":\"Disable Card Class\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '132', '11', '{\"columnWidth\":25,\"label\":\"Label Panel Select Category\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '98', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '99', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '116', '3', '{\"label\":\"Enable Full Content\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '120', '4', '{\"label\":\"Panel Oferts\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '119', '5', '{\"label\":\"Enable Blockquote\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '97', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '105', '7', '{\"columnWidth\":20,\"label\":\"Disable Sidebar\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '113', '8', '{\"columnWidth\":80}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '1', '0', '{\"columnWidth\":100}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '109', '2', '{\"columnWidth\":20,\"label\":\"Link Url\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '139', '3', '{\"columnWidth\":20,\"label\":\"Add Icon\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '98', '1', '{\"columnWidth\":20}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '99', '2', '{\"columnWidth\":40}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '116', '3', '{\"label\":\"Enable Full Content\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '140', '4', '{\"label\":\"Turn off Slider\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '112', '5', '{\"columnWidth\":20,\"label\":\"Slider Heading\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '102', '0', '{\"columnWidth\":50,\"label\":\"Add Heading\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '103', '1', '{\"columnWidth\":50,\"label\":\"Add Content\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '117', '2', '{\"columnWidth\":70,\"label\":\"Add Button\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '112', '3', '{\"columnWidth\":30,\"label\":\"Add Text\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '102', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '112', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '118', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '118', '10', '{\"columnWidth\":25,\"label\":\"Label Button Random\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '106', '0', '{\"collapsed\":\"5\",\"columnWidth\":50,\"label\":\"Image\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '105', '6', '{\"columnWidth\":20,\"label\":\"Disable Sidebar\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '113', '7', '{\"columnWidth\":80}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '98', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '99', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '116', '3', '{\"label\":\"Enable Full Content\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '119', '4', '{\"label\":\"Enable Blockquote\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '97', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '113', '10', '{\"columnWidth\":80}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '123', '4', '{\"columnWidth\":25,\"label\":\"Select Author\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '122', '5', '{\"columnWidth\":25,\"label\":\"Date Publish\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '101', '6', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '119', '7', '{\"label\":\"Enable Blockquote\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '97', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '105', '9', '{\"columnWidth\":20,\"label\":\"Disable Sidebar\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '112', '9', '{\"columnWidth\":25,\"label\":\"Label Button All\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '98', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '99', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '116', '3', '{\"label\":\"Enable Full Content\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '105', '6', '{\"columnWidth\":20,\"label\":\"Disable Sidebar\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '98', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '99', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '116', '3', '{\"label\":\"Enable Full Content\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '119', '4', '{\"label\":\"Enable Blockquote\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '97', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '105', '6', '{\"columnWidth\":20,\"label\":\"Disable Sidebar\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '113', '7', '{\"columnWidth\":80}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '105', '6', '{\"columnWidth\":20,\"label\":\"Disable Sidebar\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '113', '7', '{\"columnWidth\":80}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '98', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '105', '4', '{\"columnWidth\":20,\"label\":\"New Window\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '116', '3', '{\"label\":\"Enable Full Content\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '97', '4', '{\"columnWidth\":60}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '106', '5', '{\"columnWidth\":40}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '113', '7', '{\"columnWidth\":80}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '98', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '113', '10', '{\"columnWidth\":80}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '122', '6', '{\"columnWidth\":20,\"label\":\"Date Publish\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '105', '9', '{\"columnWidth\":20,\"label\":\"Disable Sidebar\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '125', '4', '{\"columnWidth\":40,\"label\":\"Categories Portfolio\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('118', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '97', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '119', '7', '{\"label\":\"Enable Blockquote\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '98', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '99', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '116', '3', '{\"label\":\"Enable Full Content\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('119', '105', '6', '{\"columnWidth\":20,\"label\":\"Disable Sidebar\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('119', '113', '7', '{\"columnWidth\":80}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('119', '97', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('119', '119', '4', '{\"label\":\"Enable Blockquote\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('119', '99', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('119', '116', '3', '{\"label\":\"Enable Full Content\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('118', '98', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('118', '99', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('118', '116', '3', '{\"label\":\"Enable Full Content\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('118', '119', '4', '{\"label\":\"Enable Blockquote\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('118', '97', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('118', '105', '6', '{\"columnWidth\":20,\"label\":\"Disable Sidebar\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('118', '113', '7', '{\"columnWidth\":80}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('120', '129', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '124', '6', '{\"columnWidth\":20,\"label\":\"Select Parent Page\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '107', '7', '{\"columnWidth\":40,\"label\":\"Slider\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '108', '16', '{\"columnWidth\":25}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '109', '17', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '112', '14', '{\"columnWidth\":25}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '118', '15', '{\"columnWidth\":25}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '109', '3', '{\"label\":\"Custom Url\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '102', '0', '{\"label\":\"Heading\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '139', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '139', '1', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '108', '2', '{\"label\":\"Select Page\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '139', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '119', '4', '{\"label\":\"Enable Blockquote\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '104', '12', '{\"columnWidth\":60}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('119', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('119', '98', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '116', '4', '{\"columnWidth\":100,\"label\":\"Open In New Window\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('120', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('120', '130', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '131', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '132', '6', '{\"columnWidth\":25,\"label\":\"Text \\\"Powered by\\\"\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '102', '7', '{\"columnWidth\":25,\"label\":\"Footer Copyright Text\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '143', '8', '{\"columnWidth\":50,\"label\":\"Optional Url To Footer Copyright Text\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '114', '9', '{\"columnWidth\":50,\"label\":\"Footer Social Media\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '1', '0', '{\"columnWidth\":100}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '105', '1', '{\"columnWidth\":50,\"label\":\"Turn on the multilingual menu\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '102', '2', '{\"columnWidth\":50,\"label\":\"Add HTML language code\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '112', '3', '{\"columnWidth\":50,\"label\":\"Search Form  Button & Label\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '118', '4', '{\"columnWidth\":50,\"label\":\"Name For \\\"Read More\\\"\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '99', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '116', '3', '{\"label\":\"Enable Full Content\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '137', '4', '{\"columnWidth\":25,\"label\":\"E-Mail Address\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '102', '5', '{\"columnWidth\":25,\"label\":\"Subject\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '138', '6', '{\"columnWidth\":25,\"label\":\"Label \\\"Your Message\\\"\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '103', '7', '{\"columnWidth\":25,\"label\":\"Succes Message\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '119', '8', '{\"label\":\"Enable Blockquote\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '97', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '105', '10', '{\"columnWidth\":20,\"label\":\"Disable Sidebar\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '113', '11', '{\"columnWidth\":80}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '112', '12', '{\"columnWidth\":50,\"label\":\"Label \\\"Name\\\"\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '132', '13', '{\"columnWidth\":50,\"label\":\"Label \\\"E-Mail\\\"\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '134', '14', '{\"columnWidth\":50,\"label\":\"Label \\\"Subject\\\"\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '135', '15', '{\"columnWidth\":50,\"label\":\"Label For Submit Button\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '118', '16', '{\"columnWidth\":50,\"label\":\"Error Message \\\"Fill in the fields correctly\\\"\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '133', '17', '{\"columnWidth\":50,\"label\":\"Error Message \\\"CSRF Token Not Found\\\"\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '136', '18', '{\"label\":\"Add Google Maps Iframe\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '1', '0', '{\"columnWidth\":25}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '108', '1', '{\"columnWidth\":20,\"label\":\"Link Page\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '109', '1', '{\"columnWidth\":70,\"label\":\"Social Profile Url\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '102', '8', '{\"columnWidth\":25,\"label\":\"Label Panel Sorting\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '97', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '116', '3', '{\"label\":\"Enable Full Content\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '1', '0', NULL);

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=144 DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitleLanguage', 'title', '13', 'Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":55,\"collapsed\":5,\"columnWidth\":20,\"minlength\":0,\"showCount\":1,\"icon\":\"circle-thin\",\"tags\":\"-seo\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255,\"minlength\":0,\"showCount\":0,\"langBlankInherit\":0,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('97', 'FieldtypeTextareaLanguage', 'body', '0', 'Body', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"tags\":\"-text\",\"icon\":\"file-text\",\"columnWidth\":80}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('98', 'FieldtypeTextareaLanguage', 'headline', '1', 'Headline', '{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"collapsed\":5,\"minlength\":0,\"maxlength\":55,\"showCount\":1,\"rows\":2,\"icon\":\"circle-o-notch\",\"columnWidth\":20,\"tags\":\"-seo\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('99', 'FieldtypeTextareaLanguage', 'summary', '1', 'Summary', '{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"collapsed\":5,\"minlength\":0,\"maxlength\":155,\"showCount\":1,\"rows\":4,\"icon\":\"circle-o\",\"columnWidth\":40,\"tags\":\"-seo\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('100', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('101', 'FieldtypeImage', 'images', '0', 'Images', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"tags\":\"-images\",\"icon\":\"picture-o\",\"fileSchema\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('102', 'FieldtypeTextLanguage', 'txt_1', '0', 'Txt 1', '{\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"icon\":\"text-height\",\"tags\":\"-text\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('103', 'FieldtypeTextareaLanguage', 'txtarea_1', '0', 'Txtarea 1', '{\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"tags\":\"-text\",\"icon\":\"text-width\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('104', 'FieldtypeRepeater', 'rep_1', '0', 'Accordion Content', '{\"template_id\":45,\"parent_id\":1019,\"repeaterLoading\":1,\"collapsed\":0,\"tags\":\"-repeaters\",\"icon\":\"th\",\"repeaterFields\":[102,139,103,105,118,108,109,116],\"repeaterTitle\":\"#n: {txt_1}\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('105', 'FieldtypeCheckbox', 'check_1', '0', 'Check 1', '{\"collapsed\":0,\"tags\":\"-checkboxs\",\"icon\":\"check\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('106', 'FieldtypeImage', 'img_1', '0', 'Img 1', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"tags\":\"-images\",\"icon\":\"file-image-o\",\"fileSchema\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('107', 'FieldtypeRepeater', 'rep_2', '0', 'Rep 2', '{\"template_id\":46,\"parent_id\":1024,\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0,\"tags\":\"-repeaters\",\"icon\":\"th\",\"repeaterFields\":[106,102,108,109,105],\"repeaterTitle\":\"#n: {txt_1}\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('108', 'FieldtypePage', 'ref_1', '0', 'Ref 1', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldPageListSelect\",\"parent_id\":0,\"labelFieldName\":\"title\",\"collapsed\":0,\"icon\":\"sitemap\",\"tags\":\"-pagereference\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('112', 'FieldtypeTextLanguage', 'txt_2', '0', 'Txt 2', '{\"textformatters\":[\"TextformatterEntities\"],\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"tags\":\"-text\",\"icon\":\"text-height\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('109', 'FieldtypeURLLanguage', 'url_1', '0', 'Url 1', '{\"textformatters\":[\"TextformatterEntities\"],\"noRelative\":0,\"allowIDN\":0,\"allowQuotes\":0,\"addRoot\":0,\"minlength\":0,\"maxlength\":1024,\"showCount\":0,\"size\":0,\"tags\":\"-url\",\"icon\":\"link\",\"langBlankInherit\":0,\"collapsed\":0,\"clone_field\":\"url_2\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('110', 'FieldtypeImage', 'img_2', '0', 'Img 2', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"icon\":\"file-image-o\",\"tags\":\"-images\",\"fileSchema\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('111', 'FieldtypeRepeater', 'rep_3', '0', 'Rep 3', '{\"template_id\":47,\"parent_id\":1030,\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0,\"tags\":\"-repeaters\",\"icon\":\"th\",\"repeaterFields\":[102,139]}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('113', 'FieldtypeRepeater', 'rep_4', '0', 'Sidebar', '{\"template_id\":48,\"parent_id\":1037,\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0,\"icon\":\"th\",\"tags\":\"-repeaters\",\"repeaterFields\":[102,103,116,112,108,109,105,117]}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('114', 'FieldtypeRepeater', 'rep_5', '0', 'Rep 5', '{\"template_id\":49,\"parent_id\":1046,\"repeaterFields\":{\"0\":139,\"2\":109,\"3\":105},\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0,\"icon\":\"th\",\"tags\":\"-repeaters\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('115', 'FieldtypeRepeater', 'rep_6', '0', 'Rep 6', '{\"template_id\":50,\"parent_id\":1051,\"repeaterFields\":[102,139,108,109,116],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0,\"tags\":\"-repeaters\",\"icon\":\"th\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('116', 'FieldtypeCheckbox', 'check_2', '0', 'Check 2', '{\"collapsed\":0,\"tags\":\"-checkboxs\",\"icon\":\"check\",\"columnWidth\":20}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('117', 'FieldtypeRepeater', 'rep_menu', '0', 'Rep Menu', '{\"template_id\":51,\"parent_id\":1059,\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0,\"tags\":\"-repeaters\",\"icon\":\"sitemap\",\"repeaterFields\":{\"0\":102,\"1\":108,\"2\":109,\"3\":139,\"5\":105},\"repeaterDepth\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('118', 'FieldtypeTextLanguage', 'txt_3', '0', 'Text', '{\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"textformatters\":[\"TextformatterEntities\"],\"tags\":\"-text\",\"icon\":\"text-height\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('119', 'FieldtypeCheckbox', 'check_3', '0', 'Check 3', '{\"collapsed\":0,\"tags\":\"-checkboxs\",\"icon\":\"check\",\"columnWidth\":20,\"clone_field\":\"check_4\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('120', 'FieldtypeRepeater', 'rep_7', '0', 'Rep 7', '{\"template_id\":54,\"parent_id\":1087,\"repeaterFields\":[102,103,117,112],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0,\"tags\":\"-repeaters\",\"icon\":\"th\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('121', 'FieldtypeRepeater', 'rep_8', '0', 'Rep 8', '{\"template_id\":56,\"parent_id\":1101,\"repeaterFields\":[102,112,118],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0,\"tags\":\"-repeaters\",\"icon\":\"th\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('122', 'FieldtypeDatetime', 'dat_1', '0', 'Dat 1', '{\"collapsed\":0,\"size\":25,\"datepicker\":3,\"timeInputSelect\":0,\"dateInputFormat\":\"Y-m-d\",\"tags\":\"-datetime\",\"icon\":\"calendar\",\"dateOutputFormat\":\"d\\/m\\/Y\",\"defaultToday\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('123', 'FieldtypePage', 'ref_2', '0', 'Ref 2', '{\"derefAsPage\":1,\"inputfield\":\"InputfieldPageListSelect\",\"parent_id\":1109,\"labelFieldName\":\"title\",\"collapsed\":0,\"tags\":\"-pagereference\",\"icon\":\"user-plus\",\"template_id\":60,\"addable\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('124', 'FieldtypePage', 'ref_3', '0', 'Ref 3', '{\"derefAsPage\":1,\"inputfield\":\"InputfieldPageListSelect\",\"parent_id\":0,\"labelFieldName\":\"title\",\"collapsed\":0,\"tags\":\"-pagereference\",\"icon\":\"th-large\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('125', 'FieldtypePage', 'ref_4', '0', 'Ref 4', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldAsmSelect\",\"parent_id\":1124,\"template_id\":64,\"labelFieldName\":\"title\",\"addable\":1,\"collapsed\":0,\"usePageEdit\":0,\"icon\":\"sitemap\",\"tags\":\"-pagereference\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('126', 'FieldtypePage', 'ref_5', '0', 'Ref 5', '{\"derefAsPage\":1,\"inputfield\":\"InputfieldPageListSelect\",\"parent_id\":0,\"labelFieldName\":\"title\",\"collapsed\":0,\"tags\":\"-pagereference\",\"icon\":\"sitemap\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('127', 'FieldtypeFieldsetOpen', 'cookie_fieldset', '0', 'Cookie Fieldset', '{\"collapsed\":0,\"tags\":\"-fieldset\",\"icon\":\"folder-open\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('128', 'FieldtypeFieldsetClose', 'cookie_fieldset_END', '0', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'cookie_fieldset\'. It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"icon\":\"folder\",\"tags\":\"-fieldset\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('129', 'FieldtypeFile', 'language_files_site', '24', 'Site Translation Files', '{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"description\":\"Use this field for translations specific to your site (like files in \\/site\\/templates\\/ for example).\",\"descriptionRows\":0,\"fileSchema\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('130', 'FieldtypeFile', 'language_files', '24', 'Core Translation Files', '{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"description\":\"Use this field for [language packs](http:\\/\\/modules.processwire.com\\/categories\\/language-pack\\/). To delete all files, double-click the trash can for any file, then save.\",\"descriptionRows\":0,\"fileSchema\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('131', 'FieldtypePage', 'language', '24', 'Language', '{\"derefAsPage\":1,\"parent_id\":1163,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldRadios\",\"required\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('132', 'FieldtypeTextLanguage', 'txt_4', '0', 'Txt 4', '{\"langBlankInherit\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"tags\":\"-text\",\"icon\":\"text-height\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('133', 'FieldtypeText', 'txt_5', '0', 'Txt 5', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"tags\":\"-text\",\"icon\":\"text-height\",\"clone_field\":\"txt_6\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('134', 'FieldtypeText', 'txt_6', '0', 'Txt 6', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"tags\":\"-text\",\"icon\":\"text-height\",\"clone_field\":\"txt_7\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('135', 'FieldtypeText', 'txt_7', '0', 'Txt 7', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"tags\":\"-text\",\"icon\":\"text-height\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('136', 'FieldtypeTextareaLanguage', 'txtarea_2', '0', 'Txtarea 2', '{\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"langBlankInherit\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"tags\":\"-text\",\"icon\":\"text-width\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('137', 'FieldtypeEmailLanguage', 'email_1', '0', 'E-Mail 1', '{\"langBlankInherit\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":512,\"showCount\":0,\"size\":0,\"tags\":\"-email\",\"icon\":\"envelope\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('138', 'FieldtypeTextLanguage', 'txt_8', '0', 'Txt 8', '{\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('139', 'FieldtypeFontIconPicker', 'font_1', '0', 'Choose Icon', '{\"collapsed\":0,\"font_library\":\"FontAwesome\",\"theme\":\"fip-grey\",\"empty-icon\":1,\"icons-per-page\":60,\"has-search\":1,\"tags\":\"-fonts\",\"icon\":\"codiepie\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('140', 'FieldtypeCheckbox', 'check_4', '0', 'Check 4', '{\"collapsed\":0,\"tags\":\"-checkboxs\",\"icon\":\"check\",\"columnWidth\":20,\"clone_field\":\"check_5\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('141', 'FieldtypeCheckbox', 'check_5', '0', 'Check 5', '{\"collapsed\":0,\"tags\":\"-checkboxs\",\"icon\":\"check\",\"columnWidth\":20,\"clone_field\":\"check_6\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('142', 'FieldtypeCheckbox', 'check_6', '0', 'Check 6', '{\"collapsed\":0,\"tags\":\"-checkboxs\",\"icon\":\"check\",\"columnWidth\":20}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('143', 'FieldtypeURLLanguage', 'url_2', '0', 'Url 2', '{\"textformatters\":[\"TextformatterEntities\"],\"noRelative\":0,\"allowIDN\":0,\"allowQuotes\":0,\"addRoot\":0,\"minlength\":0,\"maxlength\":1024,\"showCount\":0,\"size\":0,\"tags\":\"-url\",\"icon\":\"link\",\"langBlankInherit\":0,\"collapsed\":0}');

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=184 DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '1', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('2', 'FieldtypeNumber', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '1', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '3', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '{\"shortcutSort\":[58,60,62,64],\"bookmarks\":{\"_0\":[]}}', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '1', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '1', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '1', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('33', 'InputfieldWrapper', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('46', 'ProcessPage', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '32', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '1', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\"]}', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '33', '{\"showFields\":[]}', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"pass\",\"email\",\"admin_theme\",\"language\"]}', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":16,\"coreVersion\":\"3.0.62\"}', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '10', '{\"colors\":\"classic\"}', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldSelector', '42', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'ProcessPageLister', '32', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('151', 'JqueryMagnific', '1', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'InputfieldCKEditor', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('156', 'MarkupHTMLPurifier', '0', '', '2017-08-01 08:30:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('159', 'ProcessRecentPages', '1', '', '2017-08-01 08:30:39');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('160', 'ProcessLogger', '1', '', '2017-08-01 08:30:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('161', 'InputfieldIcon', '0', '', '2017-08-01 08:30:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('163', 'AdminThemeUikit', '2', '', '2017-08-01 10:42:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('164', 'FieldtypeRepeater', '35', '{\"repeatersRootPageID\":1018}', '2017-08-01 19:58:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('165', 'InputfieldRepeater', '0', '', '2017-08-01 19:58:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('166', 'ProcessPageClone', '11', '', '2017-08-06 08:53:34');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('167', 'LanguageSupport', '35', '{\"languagesPageID\":1163,\"defaultLanguagePageID\":1164,\"otherLanguagePageIDs\":[],\"languageTranslatorPageID\":1165}', '2017-08-09 18:26:31');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('168', 'ProcessLanguage', '1', '', '2017-08-09 18:26:31');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('169', 'ProcessLanguageTranslator', '1', '', '2017-08-09 18:26:32');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('170', 'LanguageSupportFields', '3', '', '2017-08-09 18:26:48');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('171', 'FieldtypeTextLanguage', '1', '', '2017-08-09 18:26:48');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('172', 'FieldtypePageTitleLanguage', '1', '', '2017-08-09 18:26:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('173', 'FieldtypeTextareaLanguage', '1', '', '2017-08-09 18:26:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('174', 'LanguageSupportPageNames', '3', '{\"moduleVersion\":9}', '2017-08-09 18:27:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('175', 'LanguageTabs', '11', '', '2017-08-09 18:27:13');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('176', 'ProcessForgotPassword', '1', '', '2017-08-09 18:27:38');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('177', 'TextformatterMarkdownExtra', '1', '{\"flavor\":\"2\"}', '2017-08-09 18:28:37');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('178', 'FieldtypeEmailLanguage', '1', '', '2017-08-10 09:45:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('180', 'FieldtypeURLLanguage', '1', '', '2017-08-10 19:29:56');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('181', 'FieldtypeFontIconPicker', '1', '', '2017-08-11 12:13:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('182', 'InputfieldFontIconPicker', '0', '', '2017-08-11 12:13:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('183', 'MarkupFontIconPicker', '3', '', '2017-08-11 12:13:36');

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '2015-12-18 06:09:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=1199 DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1', '0', '1', 'home', '9', '2017-08-11 21:12:32', '41', '2017-08-01 08:30:17', '2', '2017-08-01 08:30:17', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('2', '1', '2', 'processwire', '1035', '2017-08-01 08:30:40', '40', '2017-08-01 08:30:17', '2', '2017-08-01 08:30:17', '15');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('3', '2', '2', 'page', '21', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '2', '2017-08-01 08:30:17', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('6', '3', '2', 'add', '21', '2017-08-01 08:30:49', '40', '2017-08-01 08:30:17', '2', '2017-08-01 08:30:17', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('7', '1', '2', 'trash', '1039', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '2', '2017-08-01 08:30:17', '16');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('8', '3', '2', 'list', '21', '2017-08-01 08:30:52', '41', '2017-08-01 08:30:17', '2', '2017-08-01 08:30:17', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('9', '3', '2', 'sort', '1047', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '2', '2017-08-01 08:30:17', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('10', '3', '2', 'edit', '1045', '2017-08-01 08:30:50', '41', '2017-08-01 08:30:17', '2', '2017-08-01 08:30:17', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('11', '22', '2', 'template', '21', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '2', '2017-08-01 08:30:17', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('16', '22', '2', 'field', '21', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '2', '2017-08-01 08:30:17', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('21', '2', '2', 'module', '21', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '2', '2017-08-01 08:30:17', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('22', '2', '2', 'setup', '21', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '2', '2017-08-01 08:30:17', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('23', '2', '2', 'login', '1035', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '2', '2017-08-01 08:30:17', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('27', '1', '29', 'http404', '1035', '2017-08-10 17:49:09', '41', '2017-08-01 08:30:17', '3', '2017-08-01 08:30:17', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('28', '2', '2', 'access', '13', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '2', '2017-08-01 08:30:17', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('29', '28', '2', 'users', '29', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '2', '2017-08-01 08:30:17', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('30', '28', '2', 'roles', '29', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '2', '2017-08-01 08:30:17', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('31', '28', '2', 'permissions', '29', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '2', '2017-08-01 08:30:17', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('32', '31', '5', 'page-edit', '25', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '2', '2017-08-01 08:30:17', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('34', '31', '5', 'page-delete', '25', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '2', '2017-08-01 08:30:17', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('35', '31', '5', 'page-move', '25', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '2', '2017-08-01 08:30:17', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('36', '31', '5', 'page-view', '25', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '2', '2017-08-01 08:30:17', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('37', '30', '4', 'guest', '25', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '2', '2017-08-01 08:30:17', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('38', '30', '4', 'superuser', '25', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '2', '2017-08-01 08:30:17', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('41', '29', '3', 'rafaoski', '1', '2017-08-09 18:26:32', '41', '2017-08-01 08:30:17', '2', '2017-08-01 08:30:17', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('40', '29', '3', 'guest', '25', '2017-08-09 18:26:32', '41', '2017-08-01 08:30:17', '2', '2017-08-01 08:30:17', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('50', '31', '5', 'page-sort', '25', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('51', '31', '5', 'page-template', '25', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('52', '31', '5', 'user-admin', '25', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('53', '31', '5', 'profile-edit', '1', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('54', '31', '5', 'page-lock', '1', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('300', '3', '2', 'search', '1045', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '2', '2017-08-01 08:30:17', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('301', '3', '2', 'trash', '1047', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '2', '2017-08-01 08:30:17', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('302', '3', '2', 'link', '1041', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '2', '2017-08-01 08:30:17', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('303', '3', '2', 'image', '1041', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '2', '2017-08-01 08:30:17', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('304', '2', '2', 'profile', '1025', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '41', '2017-08-01 08:30:17', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1006', '31', '5', 'page-lister', '1', '2017-08-01 08:30:17', '40', '2017-08-01 08:30:17', '40', '2017-08-01 08:30:17', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1007', '3', '2', 'lister', '1', '2017-08-01 08:30:17', '40', '2017-08-01 08:30:17', '40', '2017-08-01 08:30:17', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1010', '3', '2', 'recent-pages', '1', '2017-08-01 08:30:39', '40', '2017-08-01 08:30:39', '40', '2017-08-01 08:30:39', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1011', '31', '5', 'page-edit-recent', '1', '2017-08-01 08:30:39', '40', '2017-08-01 08:30:39', '40', '2017-08-01 08:30:39', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1012', '22', '2', 'logs', '1', '2017-08-01 08:30:43', '40', '2017-08-01 08:30:43', '40', '2017-08-01 08:30:43', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1013', '31', '5', 'logs-view', '1', '2017-08-01 08:30:43', '40', '2017-08-01 08:30:43', '40', '2017-08-01 08:30:43', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1014', '31', '5', 'logs-edit', '1', '2017-08-01 08:30:43', '40', '2017-08-01 08:30:43', '40', '2017-08-01 08:30:43', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1016', '1', '43', 'search', '1025', '2017-08-10 16:33:37', '41', '2017-08-01 10:13:38', '41', '2017-08-01 10:13:38', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1017', '1', '29', 'custom-page', '1', '2017-08-10 18:05:38', '41', '2017-08-01 18:37:23', '41', '2017-08-01 18:37:27', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1018', '2', '2', 'repeaters', '1036', '2017-08-01 19:58:49', '41', '2017-08-01 19:58:49', '41', '2017-08-01 19:58:49', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1019', '1018', '2', 'for-field-104', '17', '2017-08-01 19:59:22', '41', '2017-08-01 19:59:22', '41', '2017-08-01 19:59:22', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1020', '1019', '2', 'for-page-1', '17', '2017-08-01 20:00:45', '41', '2017-08-01 20:00:45', '41', '2017-08-01 20:00:45', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1021', '1020', '45', '1501610450-8128-1', '1', '2017-08-11 17:13:11', '41', '2017-08-01 20:00:50', '41', '2017-08-01 20:01:24', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1022', '1020', '45', '1501610469-757-1', '1', '2017-08-11 17:13:11', '41', '2017-08-01 20:01:09', '41', '2017-08-01 20:01:24', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1023', '1020', '45', '1501612461-8479-1c', '1', '2017-08-04 21:17:08', '41', '2017-08-01 20:34:21', '41', '2017-08-01 20:34:38', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1024', '1018', '2', 'for-field-107', '17', '2017-08-02 09:33:26', '41', '2017-08-02 09:33:26', '41', '2017-08-02 09:33:26', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1025', '1024', '2', 'for-page-1', '17', '2017-08-02 09:37:47', '41', '2017-08-02 09:37:47', '41', '2017-08-02 09:37:47', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1026', '1025', '46', '1501659471-1369-1', '1', '2017-08-09 10:02:01', '41', '2017-08-02 09:37:51', '41', '2017-08-02 10:53:54', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1029', '1025', '46', '1501665514-2624-1', '1', '2017-08-09 10:02:01', '41', '2017-08-02 11:18:34', '41', '2017-08-02 11:18:41', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1028', '1025', '46', '1501665279-9877-1', '1', '2017-08-09 10:02:01', '41', '2017-08-02 11:14:39', '41', '2017-08-02 11:14:51', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1030', '1018', '2', 'for-field-111', '17', '2017-08-02 15:32:42', '41', '2017-08-02 15:32:42', '41', '2017-08-02 15:32:42', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1031', '1', '44', 'options', '1025', '2017-08-12 08:36:02', '41', '2017-08-02 15:34:52', '41', '2017-08-10 16:25:28', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1032', '1030', '2', 'for-page-1031', '17', '2017-08-02 15:34:52', '41', '2017-08-02 15:34:52', '41', '2017-08-02 15:34:52', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1035', '1032', '47', '1501681114-339-1', '1', '2017-08-11 14:03:18', '41', '2017-08-02 15:38:34', '41', '2017-08-02 15:42:40', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1036', '1032', '47', '1501681313-0708-1', '1', '2017-08-11 14:03:18', '41', '2017-08-02 15:41:53', '41', '2017-08-02 15:42:40', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1037', '1018', '2', 'for-field-113', '17', '2017-08-02 15:57:45', '41', '2017-08-02 15:57:45', '41', '2017-08-02 15:57:45', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1038', '1037', '2', 'for-page-1031', '17', '2017-08-02 16:03:09', '41', '2017-08-02 16:03:09', '41', '2017-08-02 16:03:09', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1040', '1038', '48', '1501682757-8687-1', '1', '2017-08-11 17:44:03', '41', '2017-08-02 16:05:57', '41', '2017-08-02 16:06:43', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1080', '1059', '2', 'for-page-1079', '17', '2017-08-03 20:48:09', '41', '2017-08-03 20:48:09', '41', '2017-08-03 20:48:09', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1042', '1037', '2', 'for-page-1', '17', '2017-08-02 16:28:16', '41', '2017-08-02 16:28:16', '41', '2017-08-02 16:28:16', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1065', '1042', '48', '1501780489-9071-1', '3073', '2017-08-07 14:52:41', '41', '2017-08-03 19:14:49', '41', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1044', '1037', '2', 'for-page-1017', '17', '2017-08-02 16:38:14', '41', '2017-08-02 16:38:14', '41', '2017-08-02 16:38:14', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1079', '1044', '48', '1501786089-7655-1', '1', '2017-08-10 18:04:57', '41', '2017-08-03 20:48:09', '41', '2017-08-03 20:48:24', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1066', '1059', '2', 'for-page-1065', '17', '2017-08-03 19:14:49', '41', '2017-08-03 19:14:49', '41', '2017-08-03 19:14:49', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1046', '1018', '2', 'for-field-114', '17', '2017-08-02 16:42:03', '41', '2017-08-02 16:42:03', '41', '2017-08-02 16:42:03', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1047', '1046', '2', 'for-page-1031', '17', '2017-08-02 16:42:45', '41', '2017-08-02 16:42:45', '41', '2017-08-02 16:42:45', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1048', '1047', '49', '1501684968-1859-1', '1', '2017-08-11 12:36:15', '41', '2017-08-02 16:42:48', '41', '2017-08-02 16:43:13', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1050', '1047', '49', '1501685080-5087-1', '1', '2017-08-11 12:36:45', '41', '2017-08-02 16:44:40', '41', '2017-08-02 16:45:14', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1049', '1047', '49', '1501684997-88-1', '1', '2017-08-11 12:36:45', '41', '2017-08-02 16:43:17', '41', '2017-08-02 16:44:27', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1051', '1018', '2', 'for-field-115', '17', '2017-08-02 17:00:39', '41', '2017-08-02 17:00:39', '41', '2017-08-02 17:00:39', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1052', '1051', '2', 'for-page-1031', '17', '2017-08-02 17:03:02', '41', '2017-08-02 17:03:02', '41', '2017-08-02 17:03:02', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1160', '1052', '50', '1502294892-13-1', '1', '2017-08-11 12:45:48', '41', '2017-08-09 18:08:12', '41', '2017-08-09 18:08:35', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1159', '1052', '50', '1502294827-6813-1', '1', '2017-08-11 12:45:48', '41', '2017-08-09 18:07:07', '41', '2017-08-09 18:08:00', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1127', '1124', '64', '3-cat-portfolio', '1', '2017-08-07 19:00:54', '41', '2017-08-07 19:00:54', '41', '2017-08-07 19:00:54', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1125', '1124', '64', '1-cat-potfolio', '1', '2017-08-08 12:43:26', '41', '2017-08-07 18:59:34', '41', '2017-08-07 18:59:34', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1126', '1124', '64', '2-cat-portfolio', '1', '2017-08-07 19:00:29', '41', '2017-08-07 19:00:29', '41', '2017-08-07 19:00:29', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1059', '1018', '2', 'for-field-117', '17', '2017-08-02 21:16:04', '41', '2017-08-02 21:16:04', '41', '2017-08-02 21:16:04', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1067', '1066', '51', '1501780502-0795-1', '3073', '2017-08-07 14:52:46', '41', '2017-08-03 19:15:02', '41', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1083', '1037', '2', 'for-page-1016', '17', '2017-08-03 22:06:28', '41', '2017-08-03 22:06:28', '41', '2017-08-03 22:06:28', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1081', '1044', '48', '1501786109-6147-1', '1', '2017-08-10 18:05:38', '41', '2017-08-03 20:48:29', '41', '2017-08-03 20:48:37', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1069', '1059', '2', 'for-page-1040', '17', '2017-08-03 19:23:45', '41', '2017-08-03 19:23:45', '41', '2017-08-03 19:23:45', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1082', '1059', '2', 'for-page-1081', '17', '2017-08-03 20:48:29', '41', '2017-08-03 20:48:29', '41', '2017-08-03 20:48:29', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1142', '1141', '51', '1502190371-25-1', '1', '2017-08-11 12:26:50', '41', '2017-08-08 13:06:11', '41', '2017-08-08 13:11:19', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1143', '1141', '51', '1502190729-7884-1', '1', '2017-08-11 12:32:45', '41', '2017-08-08 13:12:09', '41', '2017-08-08 13:13:46', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1084', '1', '52', 'pro-fields', '1', '2017-08-09 17:22:10', '41', '2017-08-03 22:14:39', '41', '2017-08-03 22:14:39', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1085', '1037', '2', 'for-page-1084', '17', '2017-08-03 22:17:45', '41', '2017-08-03 22:17:45', '41', '2017-08-03 22:17:45', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1086', '1', '53', 'sitemap.xml', '1029', '2017-08-04 18:29:18', '41', '2017-08-04 10:20:07', '41', '2017-08-04 10:20:07', '14');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1087', '1018', '2', 'for-field-120', '17', '2017-08-04 16:54:45', '41', '2017-08-04 16:54:45', '41', '2017-08-04 16:54:45', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1088', '1087', '2', 'for-page-1084', '17', '2017-08-04 16:55:35', '41', '2017-08-04 16:55:35', '41', '2017-08-04 16:55:35', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1095', '1094', '51', '1501859383-2939-1', '1', '2017-08-09 17:17:56', '41', '2017-08-04 17:09:43', '41', '2017-08-04 17:21:30', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1091', '1088', '54', '1501858548-7986-1', '1', '2017-08-09 17:18:21', '41', '2017-08-04 16:55:48', '41', '2017-08-04 16:57:27', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1092', '1088', '54', '1501858621-3552-1', '1', '2017-08-09 17:22:10', '41', '2017-08-04 16:57:01', '41', '2017-08-04 16:57:28', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1093', '1088', '54', '1501858634-814-1', '1', '2017-08-09 17:13:52', '41', '2017-08-04 16:57:14', '41', '2017-08-04 16:57:28', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1094', '1059', '2', 'for-page-1091', '17', '2017-08-04 17:09:41', '41', '2017-08-04 17:09:41', '41', '2017-08-04 17:09:41', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1096', '1059', '2', 'for-page-1092', '17', '2017-08-04 17:23:57', '41', '2017-08-04 17:23:57', '41', '2017-08-04 17:23:57', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1097', '1096', '51', '1501860239-7828-1', '1', '2017-08-09 17:22:10', '41', '2017-08-04 17:23:59', '41', '2017-08-04 17:24:30', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1105', '1103', '58', '1-news', '1', '2017-08-06 07:59:58', '41', '2017-08-04 21:35:17', '41', '2017-08-04 21:46:01', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1104', '1037', '2', 'for-page-1103', '17', '2017-08-04 21:31:51', '41', '2017-08-04 21:31:51', '41', '2017-08-04 21:31:51', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1101', '1018', '2', 'for-field-121', '17', '2017-08-04 17:59:55', '41', '2017-08-04 17:59:55', '41', '2017-08-04 17:59:55', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1103', '1', '57', 'news', '1', '2017-08-11 13:55:16', '41', '2017-08-04 21:27:13', '41', '2017-08-04 21:27:13', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1106', '1037', '2', 'for-page-1105', '17', '2017-08-04 21:35:17', '41', '2017-08-04 21:35:17', '41', '2017-08-04 21:35:17', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1107', '1103', '58', '2-news', '1', '2017-08-09 16:30:47', '41', '2017-08-04 21:59:39', '41', '2017-08-04 22:00:08', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1108', '1037', '2', 'for-page-1107', '17', '2017-08-04 21:59:39', '41', '2017-08-04 21:59:39', '41', '2017-08-04 21:59:39', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1109', '1', '59', 'authors', '1025', '2017-08-09 16:51:58', '41', '2017-08-05 09:14:01', '41', '2017-08-05 09:16:33', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1110', '1037', '2', 'for-page-1109', '17', '2017-08-05 09:14:01', '41', '2017-08-05 09:14:01', '41', '2017-08-05 09:14:01', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1111', '1109', '60', 'rafal-olszewicz', '1', '2017-08-07 16:39:32', '41', '2017-08-05 16:46:55', '41', '2017-08-05 16:46:55', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1112', '1037', '2', 'for-page-1111', '17', '2017-08-05 16:46:55', '41', '2017-08-05 16:46:55', '41', '2017-08-05 16:46:55', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1113', '3', '2', 'clone', '1024', '2017-08-06 08:53:34', '41', '2017-08-06 08:53:34', '41', '2017-08-06 08:53:34', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1114', '31', '5', 'page-clone', '1', '2017-08-06 08:53:34', '41', '2017-08-06 08:53:34', '41', '2017-08-06 08:53:34', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1115', '31', '5', 'page-clone-tree', '1', '2017-08-06 08:53:34', '41', '2017-08-06 08:53:34', '41', '2017-08-06 08:53:34', '14');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1124', '1', '65', 'categories-portfolio', '1025', '2017-08-09 17:09:01', '41', '2017-08-07 18:59:07', '41', '2017-08-07 18:59:14', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1123', '1037', '2', 'for-page-1122', '17', '2017-08-07 17:24:26', '41', '2017-08-07 17:24:26', '41', '2017-08-07 17:24:26', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1118', '1103', '58', '3-news', '1', '2017-08-09 16:30:32', '41', '2017-08-06 16:16:09', '41', '2017-08-06 16:16:35', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1119', '1037', '2', 'for-page-1118', '17', '2017-08-06 16:16:09', '41', '2017-08-06 16:16:09', '41', '2017-08-06 16:16:09', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1120', '1', '61', 'portfolio', '1', '2017-08-11 20:24:07', '41', '2017-08-07 16:30:19', '41', '2017-08-07 16:30:23', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1121', '1037', '2', 'for-page-1120', '17', '2017-08-07 16:30:19', '41', '2017-08-07 16:30:19', '41', '2017-08-07 16:30:19', '14');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1122', '1120', '62', '1-portfolio', '1', '2017-08-09 09:44:26', '41', '2017-08-07 16:30:48', '41', '2017-08-07 16:30:48', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1128', '1120', '62', '2-portfolio', '1', '2017-08-09 17:02:49', '41', '2017-08-07 19:19:42', '41', '2017-08-07 19:21:33', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1129', '1037', '2', 'for-page-1128', '17', '2017-08-07 19:19:42', '41', '2017-08-07 19:19:42', '41', '2017-08-07 19:19:42', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1157', '1141', '51', '1502216748-0886-1', '1', '2017-08-11 12:32:45', '41', '2017-08-08 20:25:48', '41', '2017-08-08 20:26:01', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1131', '1120', '62', '3-portfolio', '1', '2017-08-09 17:03:15', '41', '2017-08-07 22:50:58', '41', '2017-08-07 22:51:04', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1132', '1037', '2', 'for-page-1131', '17', '2017-08-07 22:50:58', '41', '2017-08-07 22:50:58', '41', '2017-08-07 22:50:58', '14');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1133', '1120', '62', '4-portfolio', '1', '2017-08-09 17:01:47', '41', '2017-08-07 23:18:00', '41', '2017-08-07 23:18:06', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1134', '1037', '2', 'for-page-1133', '17', '2017-08-07 23:18:00', '41', '2017-08-07 23:18:00', '41', '2017-08-07 23:18:00', '15');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1135', '1037', '2', 'for-page-1124', '17', '2017-08-08 11:59:14', '41', '2017-08-08 11:59:14', '41', '2017-08-08 11:59:14', '16');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1136', '1037', '2', 'for-page-1125', '17', '2017-08-08 12:04:03', '41', '2017-08-08 12:04:03', '41', '2017-08-08 12:04:03', '17');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1137', '1080', '51', '1502189572-6099-1', '1', '2017-08-08 12:54:28', '41', '2017-08-08 12:52:52', '41', '2017-08-08 12:53:50', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1138', '1044', '48', '1502189847-2052-1', '1', '2017-08-08 21:44:45', '41', '2017-08-08 12:57:27', '41', '2017-08-08 12:58:48', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1139', '1059', '2', 'for-page-1138', '17', '2017-08-08 12:57:27', '41', '2017-08-08 12:57:27', '41', '2017-08-08 12:57:27', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1140', '1038', '48', '1502190115-7526-1', '1', '2017-08-11 12:32:45', '41', '2017-08-08 13:01:55', '41', '2017-08-08 13:02:43', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1141', '1059', '2', 'for-page-1140', '17', '2017-08-08 13:01:55', '41', '2017-08-08 13:01:55', '41', '2017-08-08 13:01:55', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1144', '1038', '48', '1502190858-8794-1', '1', '2017-08-10 13:45:19', '41', '2017-08-08 13:14:18', '41', '2017-08-08 13:15:06', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1145', '1059', '2', 'for-page-1144', '17', '2017-08-08 13:14:18', '41', '2017-08-08 13:14:18', '41', '2017-08-08 13:14:18', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1146', '1141', '51', '1502190866-6999-1', '1', '2017-08-11 12:32:45', '41', '2017-08-08 13:14:26', '41', '2017-08-08 13:15:06', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1149', '1038', '48', '1502191150-0946-1', '1', '2017-08-08 13:21:39', '41', '2017-08-08 13:19:10', '41', '2017-08-08 13:20:21', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1150', '1059', '2', 'for-page-1149', '17', '2017-08-08 13:19:10', '41', '2017-08-08 13:19:10', '41', '2017-08-08 13:19:10', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1151', '1038', '48', '1502191261-8226-1', '1', '2017-08-08 13:22:02', '41', '2017-08-08 13:21:01', '41', '2017-08-08 13:21:39', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1152', '1059', '2', 'for-page-1151', '17', '2017-08-08 13:21:01', '41', '2017-08-08 13:21:01', '41', '2017-08-08 13:21:01', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1153', '1085', '48', '1502191376-985-1', '1', '2017-08-09 17:13:52', '41', '2017-08-08 13:22:56', '41', '2017-08-08 13:23:27', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1154', '1059', '2', 'for-page-1153', '17', '2017-08-08 13:22:56', '41', '2017-08-08 13:22:56', '41', '2017-08-08 13:22:56', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1161', '1052', '50', '1502294999-0393-1', '1', '2017-08-11 12:45:48', '41', '2017-08-09 18:09:59', '41', '2017-08-09 18:10:46', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1156', '1141', '51', '1502216558-6578-1', '1', '2017-08-11 12:32:45', '41', '2017-08-08 20:22:38', '41', '2017-08-08 20:24:34', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1158', '1059', '2', 'for-page-1093', '17', '2017-08-09 17:13:24', '41', '2017-08-09 17:13:24', '41', '2017-08-09 17:13:24', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1162', '31', '5', 'lang-edit', '1', '2017-08-09 18:26:31', '41', '2017-08-09 18:26:31', '41', '2017-08-09 18:26:31', '15');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1163', '22', '2', 'languages', '16', '2017-08-09 18:26:31', '41', '2017-08-09 18:26:31', '41', '2017-08-09 18:26:31', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1164', '1163', '66', 'default', '16', '2017-08-10 17:40:23', '41', '2017-08-09 18:26:32', '41', '2017-08-09 18:26:32', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1165', '22', '2', 'language-translator', '1040', '2017-08-09 18:26:32', '41', '2017-08-09 18:26:32', '41', '2017-08-09 18:26:32', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1166', '1', '67', 'contact', '1', '2017-08-12 07:57:03', '41', '2017-08-09 19:43:43', '41', '2017-08-09 19:45:02', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1167', '1037', '2', 'for-page-1166', '17', '2017-08-09 19:43:43', '41', '2017-08-09 19:43:43', '41', '2017-08-09 19:43:43', '18');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1172', '1059', '2', 'for-page-1031', '17', '2017-08-11 09:01:18', '41', '2017-08-11 09:01:18', '41', '2017-08-11 09:01:18', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1170', '1', '69', 'language-options', '1025', '2017-08-11 20:10:35', '41', '2017-08-10 16:23:26', '41', '2017-08-10 16:23:31', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1171', '1037', '2', 'for-page-27', '17', '2017-08-10 16:26:12', '41', '2017-08-10 16:26:12', '41', '2017-08-10 16:26:12', '19');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1192', '1172', '51', '1502466034-4583-1', '1', '2017-08-11 17:46:00', '41', '2017-08-11 17:40:34', '41', '2017-08-11 17:44:02', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1193', '1172', '51', '1502466056-4942-1', '1', '2017-08-11 17:46:00', '41', '2017-08-11 17:40:56', '41', '2017-08-11 17:44:03', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1194', '1172', '51', '1502466094-5174-1', '1', '2017-08-11 17:46:00', '41', '2017-08-11 17:41:34', '41', '2017-08-11 17:44:03', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1195', '1172', '51', '1502466118-1386-1', '1', '2017-08-11 17:46:00', '41', '2017-08-11 17:41:58', '41', '2017-08-11 17:44:03', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1183', '1110', '48', '1502446803-1616-1', '3073', '2017-08-11 12:20:03', '41', '2017-08-11 12:20:03', '41', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1184', '1059', '2', 'for-page-1183', '17', '2017-08-11 12:20:03', '41', '2017-08-11 12:20:03', '41', '2017-08-11 12:20:03', '14');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1185', '1184', '51', '1502446809-1903-1', '3073', '2017-08-11 12:20:09', '41', '2017-08-11 12:20:09', '41', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1186', '1069', '51', '1502447149-444-1', '1', '2017-08-11 17:44:03', '41', '2017-08-11 12:25:49', '41', '2017-08-11 12:26:50', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1197', '1172', '51', '1502466297-0778-1', '1', '2017-08-11 17:46:00', '41', '2017-08-11 17:44:57', '41', '2017-08-11 17:45:20', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1196', '1172', '51', '1502466137-797-1', '1', '2017-08-11 17:46:00', '41', '2017-08-11 17:42:17', '41', '2017-08-11 17:44:03', '4');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2017-08-01 08:30:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2017-08-01 08:30:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2017-08-01 08:30:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2017-08-01 08:30:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2017-08-01 08:30:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2017-08-01 08:30:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2017-08-01 08:30:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2017-08-01 08:30:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2017-08-01 08:30:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2017-08-01 08:30:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2017-08-01 08:30:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1006', '2', '2017-08-01 08:30:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1011', '2', '2017-08-01 08:30:39');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1013', '2', '2017-08-01 08:30:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1014', '2', '2017-08-01 08:30:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1016', '1', '2017-08-01 10:13:38');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1017', '1', '2017-08-01 18:37:23');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1021', '2', '2017-08-01 20:00:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1022', '2', '2017-08-01 20:01:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1023', '2', '2017-08-01 20:34:21');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1026', '2', '2017-08-02 09:37:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1029', '2', '2017-08-02 11:18:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1028', '2', '2017-08-02 11:14:39');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1031', '1', '2017-08-02 15:34:52');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1035', '2', '2017-08-02 15:38:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1036', '2', '2017-08-02 15:41:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1081', '2', '2017-08-03 20:48:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1040', '2', '2017-08-02 16:05:57');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1084', '1', '2017-08-03 22:14:39');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1065', '2', '2017-08-03 19:14:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1079', '2', '2017-08-03 20:48:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1048', '2', '2017-08-02 16:42:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1049', '2', '2017-08-02 16:43:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1050', '2', '2017-08-02 16:44:40');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1160', '2', '2017-08-09 18:08:12');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1159', '2', '2017-08-09 18:07:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1126', '1', '2017-08-07 19:00:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1125', '1', '2017-08-07 18:59:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1143', '2', '2017-08-08 13:12:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1142', '2', '2017-08-08 13:06:11');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1067', '2', '2017-08-03 19:15:02');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1086', '1', '2017-08-04 10:20:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1095', '2', '2017-08-04 17:09:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1091', '2', '2017-08-04 16:55:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1092', '2', '2017-08-04 16:57:01');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1093', '2', '2017-08-04 16:57:14');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1097', '2', '2017-08-04 17:23:59');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1103', '1', '2017-08-04 21:27:13');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1105', '1', '2017-08-04 21:35:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1107', '1', '2017-08-04 21:59:39');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1109', '1', '2017-08-05 09:14:01');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1111', '1', '2017-08-05 16:46:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1114', '2', '2017-08-06 08:53:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1115', '2', '2017-08-06 08:53:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1124', '1', '2017-08-07 18:59:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1118', '1', '2017-08-06 16:16:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1120', '1', '2017-08-07 16:30:19');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1122', '1', '2017-08-07 16:30:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1127', '1', '2017-08-07 19:00:54');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1128', '1', '2017-08-07 19:19:42');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1156', '2', '2017-08-08 20:22:38');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1131', '1', '2017-08-07 22:50:58');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1133', '1', '2017-08-07 23:18:00');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1137', '2', '2017-08-08 12:52:52');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1138', '2', '2017-08-08 12:57:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1140', '2', '2017-08-08 13:01:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1144', '2', '2017-08-08 13:14:19');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1146', '2', '2017-08-08 13:14:26');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1149', '2', '2017-08-08 13:19:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1151', '2', '2017-08-08 13:21:01');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1153', '2', '2017-08-08 13:22:57');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1157', '2', '2017-08-08 20:25:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1161', '2', '2017-08-09 18:09:59');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1162', '2', '2017-08-09 18:26:31');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1164', '2', '2017-08-09 18:26:32');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1166', '1', '2017-08-09 19:43:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1195', '2', '2017-08-11 17:41:58');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1170', '1', '2017-08-10 16:23:26');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1192', '2', '2017-08-11 17:40:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1196', '2', '2017-08-11 17:42:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1194', '2', '2017-08-11 17:41:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1183', '2', '2017-08-11 12:20:03');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1185', '2', '2017-08-11 12:20:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1186', '2', '2017-08-11 12:25:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1193', '2', '2017-08-11 17:40:56');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1197', '2', '2017-08-11 17:44:57');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('2', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1018', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1019', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1019', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1020', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1020', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1020', '1019');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1024', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1024', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1025', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1025', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1025', '1024');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1030', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1030', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1032', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1032', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1032', '1030');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1037', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1037', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1038', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1038', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1038', '1037');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1042', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1042', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1042', '1037');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1044', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1044', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1044', '1037');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1046', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1046', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1047', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1047', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1047', '1046');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1051', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1051', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1052', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1052', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1052', '1051');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1059', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1059', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1066', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1066', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1066', '1059');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1069', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1069', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1069', '1059');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1080', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1080', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1080', '1059');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1085', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1085', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1085', '1037');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1087', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1087', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1088', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1088', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1088', '1087');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1094', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1094', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1094', '1059');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1096', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1096', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1096', '1059');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1101', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1101', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1104', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1104', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1104', '1037');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1110', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1110', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1110', '1037');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1141', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1141', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1141', '1059');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1163', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1163', '22');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1172', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1172', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1172', '1059');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1184', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1184', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1184', '1059');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `process_forgot_password`;
CREATE TABLE `process_forgot_password` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `token` char(32) NOT NULL,
  `ts` int(10) unsigned NOT NULL,
  `ip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `ts` (`ts`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;


DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1501236326,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-fort-awesome title\",\"compile\":3,\"modified\":1502478717,\"ns\":\"ProcessWire\",\"roles\":[37]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('29', 'basic-page', '83', '0', '0', '{\"slashUrls\":1,\"pageLabelField\":\"fa-sticky-note-o title\",\"compile\":3,\"modified\":1502306945,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('43', 'search', '97', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-search title\",\"compile\":3,\"modified\":1502375565,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('44', 'options', '98', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-cogs title\",\"compile\":3,\"modified\":1502519101}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('45', 'repeater_rep_1', '99', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1501610362}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('46', 'repeater_rep_2', '100', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1501659206}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('47', 'repeater_rep_3', '101', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1501680762}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('48', 'repeater_rep_4', '102', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1501682265}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('49', 'repeater_rep_5', '103', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1501684923}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('50', 'repeater_rep_6', '104', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1501686039}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('51', 'repeater_rep_menu', '105', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1501701364}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('52', 'oferts', '106', '0', '0', '{\"slashUrls\":1,\"pageLabelField\":\"fa-handshake-o title\",\"compile\":3,\"modified\":1502037899,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('53', 'sitemap-xml', '107', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":0,\"pageLabelField\":\"fa-map title\",\"compile\":3,\"tags\":\"-sitemap\",\"modified\":1501835140,\"noPrependTemplateFile\":1,\"noAppendTemplateFile\":1,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('54', 'repeater_rep_7', '108', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1501858485}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('57', 'news', '111', '0', '0', '{\"childTemplates\":[58],\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-assistive-listening-systems title\",\"compile\":3,\"tags\":\"-news\",\"modified\":1502397405,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('58', 'single-news', '112', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[57],\"slashUrls\":1,\"pageLabelField\":\"fa-free-code-camp title\",\"compile\":3,\"tags\":\"-news\",\"modified\":1502351366,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('56', 'repeater_rep_8', '110', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1501862395}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('59', 'authors', '113', '0', '0', '{\"childTemplates\":[60],\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-black-tie title\",\"compile\":3,\"tags\":\"-templ_authors\",\"modified\":1502187308,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('60', 'single-author', '114', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[59],\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-user-secret title\",\"compile\":3,\"tags\":\"-templ_authors\",\"modified\":1502376788,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('61', 'portfolio', '115', '0', '0', '{\"childTemplates\":[62],\"slashUrls\":1,\"pageLabelField\":\"fa-th title\",\"compile\":3,\"tags\":\"-templ_portfolio\",\"modified\":1502476677,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('62', 'single-portfolio', '116', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[61],\"slashUrls\":1,\"pageLabelField\":\"fa-renren title\",\"compile\":3,\"tags\":\"-templ_portfolio\",\"modified\":1502389605,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('64', 'single-portfolio-cat', '118', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[65],\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-puzzle-piece title\",\"compile\":3,\"modified\":1502376841,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('65', 'portfolio-cat', '119', '0', '0', '{\"childTemplates\":[64],\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-sitemap title\",\"compile\":3,\"tags\":\"-templ_portfolio\",\"modified\":1502376717,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('66', 'language', '120', '8', '0', '{\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Language\",\"pageLabelField\":\"name\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noChangeTemplate\":1,\"noUnpublish\":1,\"compile\":3,\"nameContentTab\":1,\"modified\":1502295992}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('67', 'contact', '121', '0', '0', '{\"slashUrls\":1,\"pageLabelField\":\"fa-envelope-square title\",\"compile\":3,\"modified\":1502517391,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('69', 'language-options', '123', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-language title\",\"compile\":3,\"modified\":1502379826}');

UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

# --- /WireDatabaseBackup {"numTables":59,"numCreateTables":65,"numInserts":1229,"numSeconds":0}