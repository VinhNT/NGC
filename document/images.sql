CREATE TABLE `images` (
  `id` varchar(20) NOT NULL,
  `uploader` varchar(20) DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  `binarytype` varchar(30) DEFAULT NULL,
  `orginalwidth` int(11) DEFAULT NULL,
  `originalheight` int(11) DEFAULT NULL,
  `binarydata` mediumblob,
  `thumbnaildata` tinyblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;