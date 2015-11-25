DROP TABLE IF EXISTS `binary_files`;
CREATE TABLE `binary_files` (
  `id` varchar(20) NOT NULL,
  `uploader` varchar(20) DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  `original_file_name` varchar(100) DEFAULT NULL,
  `binary_type` varchar(30) DEFAULT NULL,
  `orginal_width` int(11) DEFAULT NULL,
  `original_height` int(11) DEFAULT NULL,
  `binary_data` mediumblob,
  `thumbnail_data` tinyblob,
  `mime_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;