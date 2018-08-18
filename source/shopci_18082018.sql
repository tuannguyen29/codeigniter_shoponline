/*
 Navicat Premium Data Transfer

 Source Server         : wamp
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : shopci

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 18/08/2018 12:45:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `admin_group_id` int(64) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (8, 'tuannguyen29099', '5f4dcc3b5aa765d61d8327deb882cf99', 'Nguyễn Minh Tuấn', 0);

-- ----------------------------
-- Table structure for admin_group
-- ----------------------------
DROP TABLE IF EXISTS `admin_group`;
CREATE TABLE `admin_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sort_order` tinyint(4) NOT NULL DEFAULT 0,
  `permissions` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_group
-- ----------------------------
INSERT INTO `admin_group` VALUES (1, 'Admin', 1, 'a:14:{s:4:\"tran\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:13:\"product_order\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:3:\"cat\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"product\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:11:\"admin_group\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:5:\"admin\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:4:\"user\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:4:\"news\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:4:\"info\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"support\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"contact\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"comment\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:5:\"slide\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:5:\"video\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}}');
INSERT INTO `admin_group` VALUES (2, 'Mod', 2, 'a:9:{s:3:\"cat\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"product\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:4:\"news\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:4:\"info\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"support\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"contact\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"comment\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:5:\"slide\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:5:\"video\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}}');

-- ----------------------------
-- Table structure for catalog
-- ----------------------------
DROP TABLE IF EXISTS `catalog`;
CREATE TABLE `catalog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `site_title` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `sort_order` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of catalog
-- ----------------------------
INSERT INTO `catalog` VALUES (1, 'Laptop', '', '', '', 0, 0);
INSERT INTO `catalog` VALUES (2, 'Điện thoại', '', '', '', 0, 1);
INSERT INTO `catalog` VALUES (3, 'Tivi', '', '', '', 0, 2);
INSERT INTO `catalog` VALUES (4, ' Acer', '', '', '', 1, 0);
INSERT INTO `catalog` VALUES (5, ' Apple', '', '', '', 1, 1);
INSERT INTO `catalog` VALUES (6, 'Asus', '', '', '', 1, 2);
INSERT INTO `catalog` VALUES (7, 'Dell', '', '', '', 1, 3);
INSERT INTO `catalog` VALUES (8, 'HP', '', '', '', 1, 5);
INSERT INTO `catalog` VALUES (9, 'Apple', '', '', '', 2, 0);
INSERT INTO `catalog` VALUES (10, 'Asus', '', '', '', 2, 1);
INSERT INTO `catalog` VALUES (11, 'BlackBerry', '', '', '', 2, 3);
INSERT INTO `catalog` VALUES (12, 'HTC', '', '', '', 2, 4);
INSERT INTO `catalog` VALUES (13, 'AKAI', '', '', '', 3, 0);
INSERT INTO `catalog` VALUES (14, 'JVC', '', '', '', 3, 1);
INSERT INTO `catalog` VALUES (15, 'LG', '', '', '', 3, 2);
INSERT INTO `catalog` VALUES (16, 'Panasonic', '', '', '', 3, 3);
INSERT INTO `catalog` VALUES (17, 'Samsung', '', '', '', 3, 5);
INSERT INTO `catalog` VALUES (18, 'Toshiba', '', '', '', 3, 6);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `product_id` int(255) NOT NULL,
  `parent_id` int(255) NOT NULL,
  `user_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL,
  `count_like` int(255) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 7, 0, 'Hoang van tuyen', 'hoangvantuyencnt@gmail.com', 0, '', 'San pham noi con khong admin?                    ', 1408798677, 10, 1);
INSERT INTO `comment` VALUES (2, 7, 1, 'Vu van Anh', 'anh@gmail.com', 0, '', 'San pham nay van con hang', 1408799662, 3, 1);
INSERT INTO `comment` VALUES (3, 7, 0, 'abc', 'hoang@gmail.com', 0, '', 'Test comment             ', 1408800324, 8, 1);

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact`  (
  `id` int(128) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES (17, 'Nguyễn Minh Tuấn', 'tieucaca102@gmail.com', '27/315A To 85 Thống Nhất', 'Ho tro mua hang ', 'loẻm', '935270881', 1469457682);
INSERT INTO `contact` VALUES (18, 'nguyen minh tuan', 'nguyen.ginta1@gmail.com', '27/315A To 85 Thống Nhất', 'PORTPOLIO 7', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang, như Aldus PageMaker.', '935270881', 1469457720);

-- ----------------------------
-- Table structure for content_static
-- ----------------------------
DROP TABLE IF EXISTS `content_static`;
CREATE TABLE `content_static`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`, `key`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of content_static
-- ----------------------------
INSERT INTO `content_static` VALUES (3, 'footer', '<p class=\"bold\">\r\n &copy;2013 -2014 Bản quyền thuộc về&nbsp; <strong>C&ocirc;ng ty TNHH Tuấn Thoa media &ndash; Đại l&yacute; VTC Digital</strong></p>\r\n<p>\r\n Lĩnh vực hoạt động của c&ocirc;ng ty: Điện &amp; điện tử , b&aacute;n lẻ &amp; b&aacute;n bu&ocirc;n</p>\r\n<p>\r\n <strong>Cơ sở 1:</strong>: Cẩm La, X&atilde; Thanh Sơn, Huyện Kiến Thụy, Th&agrave;nh Phố Hải Ph&ograve;ng - DT: 0313881505</p>\r\n<p>\r\n <strong>Cơ sở 2:</strong>: Cẩm Xu&acirc;n, N&uacute;i Đối, Huyện Kiến Thụy, Th&agrave;nh Phố Hải Ph&ograve;ng - DT: 0313812682</p>\r\n');
INSERT INTO `content_static` VALUES (18, 'shipping', '<p>\r\n Chi ph&iacute; vận chuyển của Tuấn Thoa Media</p>\r\n');

-- ----------------------------
-- Table structure for info
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  FULLTEXT INDEX `title`(`title`)
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of info
-- ----------------------------
INSERT INTO `info` VALUES (1, 'Giới thiệu', '<p>\r\n	Giới thiệu</p>\r\n', '', '', 1409044792);
INSERT INTO `info` VALUES (2, 'Hướng dẫn mua hàng', '<p>\r\n	Hướng dẫn mua h&agrave;ng</p>\r\n', '', '', 1409044950);

-- ----------------------------
-- Table structure for maker
-- ----------------------------
DROP TABLE IF EXISTS `maker`;
CREATE TABLE `maker`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `info` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `site_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(255) NOT NULL,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image_link` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `created` int(11) NOT NULL DEFAULT 0,
  `feature` enum('0','1') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `count_view` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  FULLTEXT INDEX `title`(`title`)
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, 'Nhà lầu siêu xe hàng mã ế sưng, đồ chơi biển đảo hút khách', '(Dân trí) - Loạt đồ chơi trung thu biển đảo hướng về quê hương mới xuất hiện nhưng đã hút khách, các mặt hàng vàng mã “xa xỉ” không còn được nhiều người mua sắm.', '<p style=\"TEXT-ALIGN: left\">\r\n	Theo b&aacute;c Lan, một chủ cửa h&agrave;ng ở phố H&agrave;ng M&atilde; chia sẻ: &ldquo;Kinh tế kh&oacute; khăn n&ecirc;n người bỏ tiền triệu ra mua đồ c&uacute;ng đắt tiền như nh&agrave; lầu, xe hơi, điện thoại, ti vi c&ograve;n rất &iacute;t. Mọi người chỉ lựa chọn những loại đồ c&oacute; gi&aacute; b&igrave;nh d&acirc;n như quần &aacute;o, gi&agrave;y d&eacute;p v&agrave; mũ để c&uacute;ng. Những mặt h&agrave;ng b&aacute;n chạy nhất l&agrave; tiền &acirc;m phủ, v&agrave;ng, quần &aacute;o hay gi&agrave;y d&eacute;p v&igrave; c&oacute; gi&aacute; kh&aacute; b&igrave;nh d&acirc;n&rdquo;.</p>\r\n<p style=\"TEXT-ALIGN: center\">\r\n	<img alt=\"Mặt hàng đèn lồng biển đảo mới xuất hiện trong dịp Tết Trung Thu năm nay\" src=\"http://dantri4.vcmedia.vn/Urgz3f5tKFdDA0VUUO/Image/2014/08/n1-242e1.jpg\" /><br />\r\n	<span style=\"FONT-FAMILY: Tahoma; FONT-SIZE: 10pt\">Mặt h&agrave;ng đ&egrave;n lồng biển đảo mới xuất hiện trong dịp Tết Trung Thu năm nay</span></p>\r\n<p style=\"TEXT-ALIGN: center\">\r\n	<span style=\"FONT-FAMILY: Tahoma\"><img alt=\"Các thông điệp ý nghĩa yêu quê hương, biển đảo được in lên đèn lồng\" src=\"http://dantri4.vcmedia.vn/Urgz3f5tKFdDA0VUUO/Image/2014/08/n2-242e1.jpg\" /></span><br />\r\n	<span style=\"FONT-FAMILY: Tahoma; FONT-SIZE: 10pt\">C&aacute;c th&ocirc;ng điệp &yacute; nghĩa y&ecirc;u qu&ecirc; hương, biển đảo được in l&ecirc;n đ&egrave;n lồng</span></p>\r\n<p>\r\n	Một mặt h&agrave;ng đặc biệt của m&ugrave;a Vu Lan năm nay đ&oacute; l&agrave; loại đồ chơi &ldquo;biển đảo&rdquo;. Đ&oacute; l&agrave; những chiếc đ&egrave;n lồng được in những th&ocirc;ng điệp hướng về qu&ecirc; hương, biển đảo hết sức &yacute; nghĩa.</p>\r\n<div class=\"article-side-rail\" id=\"article-side-rail\">\r\n	<div class=\"article-video-relation\">\r\n		<div class=\"relative\">\r\n			<img alt=\"Mùa Vu Lan: \" class=\"thumb\" src=\"http://video-thumbs.vcmedia.vn///dantri/7iS0Ym1SbbOoTsWhJi6Q/2014/08/08/vangma-15e63.jpg\" /><img class=\"ico\" src=\"http://dantri3.vcmedia.vn/App_Themes/Default/Images/ico_video_play.png\" /></div>\r\n		<p class=\"caption\">\r\n			M&ugrave;a Vu Lan: &quot;Xe si&ecirc;u sang&quot; đỗ chật phố H&agrave;ng M&atilde;</p>\r\n	</div>\r\n</div>\r\n<p>\r\n	C&aacute;c chủ cửa h&agrave;ng tại đ&acirc;y cho biết, c&aacute;c loại mặt h&agrave;ng l&agrave;m thủ c&ocirc;ng truyền thống đ&egrave;n lồng, đầu l&acirc;n, đ&egrave;n &ocirc;ng sao vẫn được kh&aacute;ch h&agrave;ng ưa chuộng nhất. Ngo&agrave;i ra, mẫu đ&egrave;n lồng in sẵn mang th&ocirc;ng điệp hướng về biển đảo qu&ecirc; hương được nhiều bậc phụ huynh v&agrave; c&aacute;c em học sinh đặc biệt y&ecirc;u th&iacute;ch.</p>\r\n<p style=\"TEXT-ALIGN: center\">\r\n	<img alt=\"Mới xuất hiện nhưng những chiếc đèn lồng này được nhiều phụ huynh và các em nhỏ lựa chọn\" src=\"http://dantri4.vcmedia.vn/Urgz3f5tKFdDA0VUUO/Image/2014/08/n4-242e1.jpg\" /><br />\r\n	<span style=\"FONT-FAMILY: Tahoma; FONT-SIZE: 10pt\">Mới xuất hiện nhưng những chiếc đ&egrave;n lồng n&agrave;y được nhiều phụ huynh v&agrave; c&aacute;c em nhỏ lựa chọn</span><br />\r\n	&nbsp;</p>\r\n<p>\r\n	Chiếc đ&egrave;n lồng mang th&ocirc;ng điệp biển đảo được gh&eacute;p lại bằng 3 mảnh b&igrave;a kh&aacute;c nhau. Chiếc đ&egrave;n c&oacute; thể thắp s&aacute;ng v&agrave; ph&aacute;t nhạc khi được lắp pin ở tay cầm.Tuy nhi&ecirc;n, chi tiết đ&aacute;ng ch&uacute; &yacute; nhất đ&oacute; l&agrave; những th&ocirc;ng điệp hướng về biển đảo in tr&ecirc;n th&acirc;n của chiếc đ&egrave;n lồng như &ldquo;Em y&ecirc;u biển đảo qu&ecirc; hương&rdquo;, &ldquo;B&eacute; hướng về biển đảo&rdquo;, &ldquo;Em y&ecirc;u biển đảo Việt Nam&rdquo;, &ldquo;Em y&ecirc;u ch&uacute; bộ đội hải qu&acirc;n Việt Nam&rdquo;, với những h&igrave;nh ảnh chiến sĩ Hải qu&acirc;n Việt Nam s&uacute;ng kho&aacute;c tr&ecirc;n vai bảo vệ chủ quyền biển đảo Tổ quốc hay những chiếc t&agrave;u mang d&ograve;ng chữ Cảnh s&aacute;t biển Việt Nam&hellip;</p>\r\n', '', '', 'n1-242e1.jpg', 1407553602, '0', 5);
INSERT INTO `news` VALUES (2, 'Arsenal đồng ý bán Vermaelen cho Barcelona', '(Dân trí) - Theo những thông tin từ báo giới Anh, Arsenal đã quyết định từ chối MU, để bán trung vệ Vermarlen cho Barcelona. Mức giá của trung vệ này vào khoảng 15 triệu bảng.', '<p>\r\n	Như đ&atilde; biết, c&aacute;ch đ&acirc;y v&agrave;i ng&agrave;y, trung vệ Vermaelen đ&atilde; từ chối gia hạn hợp đồng với Arsenal. Điều đ&oacute; khiến cho CLB th&agrave;nh London t&igrave;m c&aacute;ch b&aacute;n cầu thủ n&agrave;y bằng mọi gi&aacute; để &ldquo;gỡ gạc&rdquo; ch&uacute;t &iacute;t ph&iacute; chuyển nhượng thay v&igrave; mất trắng cầu thủ n&agrave;y&nbsp;ở m&ugrave;a H&egrave; sang năm.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<div align=\"center\">\r\n	<span style=\"FONT-FAMILY: Tahoma; FONT-SIZE: 10pt\"><img _fl=\"\" align=\"middle\" alt=\"Vermaelen ở rất gần Barcelona\" src=\"http://dantri4.vcmedia.vn/uajiKupQ6reCuKKDlVlG/Image/2014/08/Vermaelen-d4361.jpg\" style=\"MARGIN: 5px\" width=\"450\" /><br />\r\n	Vermaelen ở rất gần Barcelona</span><br />\r\n	&nbsp;</div>\r\n<p>\r\n	Trong thời gian gần đ&acirc;y, MU v&agrave; Barcelona l&agrave; hai ứng cử vi&ecirc;n s&aacute;ng gi&aacute; trong cuộc đua gi&agrave;nh chữ k&yacute; của hậu vệ người Bỉ. Cuối c&ugrave;ng, HLV Wenger đ&atilde; quyết định từ chối MU để b&aacute;n Vermarlen cho Barcelona. Trước đ&oacute; c&oacute; th&ocirc;ng tin cho rằng Wenger muốn đổi Vermaelen lấy Smalling, tuy nhi&ecirc;n Van Gaal lại từ chối phương &aacute;n n&agrave;y.</p>\r\n<p>\r\n	Trước b&aacute;o giới, HLV Wenger cho biết: &ldquo;Ch&uacute;ng t&ocirc;i đ&atilde; nhận được những lời đề nghị từ nước ngo&agrave;i v&agrave; quyết định để Vermaelen rời khỏi Premier League. Bản th&acirc;n Arsenal cũng đang ở trong thế kh&oacute; trong vụ n&agrave;y&rdquo;.</p>\r\n<p>\r\n	Theo tờ BBC, Arsenal đ&atilde; đồng &yacute; lời đề nghị trị gi&aacute; 15 triệu bảng của Barcelona. Trong thời gian tới, trung vệ người Bỉ sẽ được quyền tự do đ&agrave;m ph&aacute;n với đội b&oacute;ng xứ Catalan.</p>\r\n<p>\r\n	Nhiều khả năng thương vụ n&agrave;y sẽ ho&agrave;n tất trong thời gian tới. Arsenal cũng bắt đầu t&igrave;m người thay thế Vermaelen. L&uacute;c n&agrave;y, ưu ti&ecirc;n số 1 của HLV Wenger l&agrave; trung vệ Nastasic của Man City, người nhiều khả năng sẽ mất vị tr&iacute; nếu như Mangala gia nhập Etihad.</p>\r\n<p align=\"right\">\r\n	<b>H.Long</b></p>\r\n', '', '', 'Vermaelen-d4361.jpg', 1407553674, '0', 2);
INSERT INTO `news` VALUES (3, 'Hà Nội: CSGT tìm người thân giúp cháu bé 8 tuổi đi lạc', '(Dân trí) - Theo người thân cháu Chi, trong lúc gia đình nghỉ trưa, cháu Chi mải chơi đã đi lạc từ phía phường Ngọc Lâm (quận Long Biên) sang nội thành. Trong lúc đang hoang mang tìm cháu, gia đình nhận được tin báo của lực lượng cảnh sát giao thông.', '<p>\r\n	Khoảng 15h30 ng&agrave;y 8/8, khi đang l&agrave;m nhiệm vụ tại chốt ph&iacute;a nam cầu Chương Dương (địa b&agrave;n quận Ho&agrave;n Kiếm, H&agrave; Nội), Thượng sĩ Phạm Gia Hợp v&agrave; Thượng t&aacute; L&ecirc; Đức Đo&agrave;n(Đội CSGT số 1) ph&aacute;t hiện một ch&aacute;u b&eacute; khoảng 7-8 tuổi đi bộ tr&ecirc;n khu vực cầu Chương Dương với vẻ mặt sợ sệt. Khi Thượng sĩ Hợp v&agrave; Thượng t&aacute; Đ&ograve;an tiến lại hỏi han, ch&aacute;u b&eacute; c&oacute; biểu hiện sợ sệt v&agrave; bật kh&oacute;c n&oacute;i rằng đi lạc đường.</p>\r\n<p>\r\n	Thấy ch&aacute;u b&eacute; lả đi v&igrave; mệt, Thượng sĩ Hợp đ&atilde; đưa ch&aacute;u về chốt trực, mua b&aacute;nh v&agrave; sữa để ch&aacute;u ăn đỡ đ&oacute;i v&agrave; trấn tĩnh lại. Đồng thời, Thượng sĩ Hợp th&ocirc;ng b&aacute;o tr&ecirc;n c&aacute;c phương tiện th&ocirc;ng tin đại ch&uacute;ng về đặc điểm nhận dạng của ch&aacute;u b&eacute;.</p>\r\n<p>\r\n	<img alt=\"Cháu Chi đoàn tụ với gia đình.\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/Image/2014/08/455-549e4.jpg\" /><br />\r\n	Ch&aacute;u Chi đo&agrave;n tụ với gia đ&igrave;nh.</p>\r\n<p>\r\n	Sau khi trấn tĩnh lại, ch&aacute;u b&eacute; cho biết t&ecirc;n l&agrave; Vương Kim Chi (SN 2007), năm nay l&ecirc;n lớp 2 trường tiểu học &Aacute;i Mộ, quận Long Bi&ecirc;n, H&agrave; Nội. Bằng c&aacute;c biện ph&aacute;p nghiệp vụ, Thượng sĩ Hợp v&agrave; Thượng t&aacute; Đo&agrave;n đ&atilde; li&ecirc;n hệ được với c&ocirc; gi&aacute;o chủ nhiệm ch&aacute;u Chi để th&ocirc;ng b&aacute;o với gia đ&igrave;nh ch&aacute;u b&eacute; biết.</p>\r\n<p>\r\n	Gần 2 tiếng đồng hồ sau, mẹ ch&aacute;u Chi l&agrave; chị Đo&agrave;n Thị Khuyến (SN 1983, ở Ngọc L&acirc;m, Long Bi&ecirc;n, H&agrave; Nội) đ&atilde; t&igrave;m đến trụ sở Đội CSGT số 1 nhận lại con. Chị Khuyến cho cho biết, khoảng 14h c&ugrave;ng ng&agrave;y, trong l&uacute;c gia đ&igrave;nh nghỉ trưa, ch&aacute;u Chi mải chơi đ&atilde; đi lạc từ b&ecirc;n n&agrave;y cầu sang b&ecirc;n kia nội th&agrave;nh.</p>\r\n<p>\r\n	Trong l&uacute;c hoang mang kh&ocirc;ng biết t&igrave;m ch&aacute;u ở đ&acirc;u, gia đ&igrave;nh được th&ocirc;ng b&aacute;o ch&aacute;u Chi đ&atilde; được c&aacute;c chiến sĩ CSGT tận t&igrave;nh gi&uacute;p đỡ. Thay mặt gia đ&igrave;nh, chị Khuyến đ&atilde; viết thư cảm ơn c&aacute;c chiến sĩ cảnh s&aacute;t giao th&ocirc;ng.</p>\r\n<p>\r\n	<strong>Tiến Nguy&ecirc;n</strong></p>\r\n', '', '', '455-549e4.jpg', 1407553969, '0', 9);
INSERT INTO `news` VALUES (4, 'Mỹ tăng cường không kích Iraq', '(Dân trí) - Sau khi Tổng thống Obama phê chuẩn cho không kích các mục tiêu của nhóm phiến quân Hồi giáo IS ở miền bắc Iraq, Lầu Năm Góc đã tiến hành 3 đợt không kích.', '<p>\r\n	C&aacute;c vụ kh&ocirc;ng k&iacute;ch nhằm v&agrave;o nh&oacute;m Nh&agrave; nước Hồi gi&aacute;o (IS) ở miền bắc Iraq l&agrave; những cuộc tấn c&ocirc;ng đầu ti&ecirc;n kể từ khi Mỹ trực tiếp tham gia v&agrave;o hoạt động qu&acirc;n sự ở Iraq v&agrave; sau đ&oacute; r&uacute;t qu&acirc;n v&agrave;o cuối năm 2011.</p>\r\n<p>\r\n	Trong cuộc kh&ocirc;ng k&iacute;ch đầu ti&ecirc;n v&agrave;o ng&agrave;y thứ s&aacute;u, m&aacute;y bay kh&ocirc;ng người l&aacute;i c&ugrave;ng chiến đấu cơ hải qu&acirc;n Mỹ đ&atilde; nhắm v&agrave;o c&aacute;c mục ti&ecirc;u gần th&agrave;nh phố Irbil của người Kurd. Sau đ&oacute; họ tiến h&agrave;nh th&ecirc;m 2 đợt tấn c&ocirc;ng nữa.</p>\r\n<p>\r\n	Nh&oacute;m Hồi gi&aacute;o người Sunni IS đ&atilde; chiếm quyền kiểm so&aacute;t nhiều khu vực của Iraq v&agrave; cả Syria.</p>\r\n<p>\r\n	H&agrave;ng chục ng&agrave;n người thuộc c&aacute;c nh&oacute;m d&acirc;n tộc thiểu số đ&atilde; phải rời bỏ nh&agrave; cửa khi phiến qu&acirc;n tiến v&agrave;o.</p>\r\n<p>\r\n	Nh&oacute;m IS hay c&ograve;n được gọi l&agrave; ISIS cũng đ&atilde; chiếm đập lớn nhất Iraq.</p>\r\n<p>\r\n	Lầu Năm G&oacute;c cho biết trong đợt kh&ocirc;ng k&iacute;ch thứ hai, m&aacute;y bay kh&ocirc;ng người l&aacute;i của Mỹ đ&atilde; ph&aacute; hủy một vị tr&iacute; đặt ph&aacute;o của phiến qu&acirc;n v&agrave; ti&ecirc;u diệt một nh&oacute;m phiến qu&acirc;n.</p>\r\n<p>\r\n	Chỉ hơn một tiếng sau, chiến đấu cơ F/A-18 đ&atilde; d&ugrave;ng bom c&oacute; laser dẫn đường bắn tr&uacute;ng một đo&agrave;n 7 xe của IS.</p>\r\n<p>\r\n	Trước đ&oacute;, v&agrave;o ng&agrave;y thứ s&aacute;u, 2 quả bom đ&atilde; được thả xuống một khẩu ph&aacute;o của IS d&ugrave;ng để chống lại lực lượng đang bảo vệ Irbil, thủ phủ của v&ugrave;ng tự trị của người Kurd.</p>\r\n<p>\r\n	Ph&aacute;t ng&ocirc;n vi&ecirc;n Bộ Ngoại giao Mỹ Marie Harf cho biết mục ti&ecirc;u trước mắt của c&aacute;c cuộc kh&ocirc;ng k&iacute;ch l&agrave; &ldquo;ngăn chặn bước tiến&rdquo; của IS về Irbil.</p>\r\n<p>\r\n	&ldquo;Sau đ&oacute; về l&acirc;u d&agrave;i chung t&ocirc;i muốn phối hợp hỗ trợ th&ecirc;m thời gian v&agrave; kh&ocirc;ng gian cho c&aacute;c lực lượng của người Kurd để xốc lại lực lượng, chiến đấu với đe dọa của ch&iacute;nh họ&rdquo;.</p>\r\n<p>\r\n	B&agrave; cũng khẳng định &ldquo;kh&ocirc;ng c&oacute; giải ph&aacute;p qu&acirc;n sự l&acirc;u d&agrave;i của Mỹ ở đ&oacute;&rdquo;.</p>\r\n<p>\r\n	Mặc d&ugrave; ch&iacute;nh phủ Iraq v&agrave; V&ugrave;ng người Kurd vẫn c&ograve;n đang c&oacute; bất đồng trong những th&aacute;ng qua, nhưng Thủ tướng Nouri Maliki đ&atilde; ph&aacute;i một m&aacute;y bay chở đạn tới Irbil v&agrave; thứ s&aacute;u. Trước đ&oacute; &ocirc;ng đ&atilde; lệnh cho lực lượng kh&ocirc;ng qu&acirc;n hỗ trợ cho c&aacute;c tay s&uacute;ng người Kurd để chiến đấu chống IS.</p>\r\n<p>\r\n	<b>Trung Anh</b></p>\r\n', '', '', '1-7d48c.jpg', 1407554007, '0', 0);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `transaction_id` int(255) NOT NULL,
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `product_id` int(255) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `amount` decimal(15, 4) NOT NULL DEFAULT 0.0000,
  `data` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (7, 6, 2, 1, 4000000.0000, '', 1);
INSERT INTO `order` VALUES (8, 7, 2, 1, 4000000.0000, '', 0);
INSERT INTO `order` VALUES (9, 8, 8, 1, 10000000.0000, '', 0);
INSERT INTO `order` VALUES (10, 9, 8, 1, 10000000.0000, '', 0);
INSERT INTO `order` VALUES (11, 10, 8, 1, 10000000.0000, '', 2);
INSERT INTO `order` VALUES (12, 11, 8, 1, 10000000.0000, '', 0);
INSERT INTO `order` VALUES (13, 12, 8, 2, 20000000.0000, '', 0);
INSERT INTO `order` VALUES (14, 13, 8, 1, 10000000.0000, '', 1);
INSERT INTO `order` VALUES (15, 14, 3, 1, 5000000.0000, '', 0);
INSERT INTO `order` VALUES (16, 15, 3, 1, 5000000.0000, '', 0);
INSERT INTO `order` VALUES (17, 16, 3, 1, 5000000.0000, '', 0);
INSERT INTO `order` VALUES (18, 17, 3, 1, 5000000.0000, '', 0);
INSERT INTO `order` VALUES (19, 18, 3, 1, 5000000.0000, '', 0);
INSERT INTO `order` VALUES (20, 19, 3, 1, 5000000.0000, '', 0);
INSERT INTO `order` VALUES (21, 20, 8, 1, 10000000.0000, '', 0);
INSERT INTO `order` VALUES (22, 21, 9, 1, 5400000.0000, '', 0);
INSERT INTO `order` VALUES (22, 22, 7, 2, 11600000.0000, '', 0);
INSERT INTO `order` VALUES (23, 23, 8, 1, 9500000.0000, '', 1);
INSERT INTO `order` VALUES (24, 24, 9, 1, 5400000.0000, '', 2);
INSERT INTO `order` VALUES (25, 25, 7, 1, 5800000.0000, '', 1);
INSERT INTO `order` VALUES (26, 26, 9, 2, 10800000.0000, '', 1);
INSERT INTO `order` VALUES (27, 27, 7, 1, 5800000.0000, '', 1);
INSERT INTO `order` VALUES (28, 28, 8, 1, 9500000.0000, '', 0);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `catalog_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `maker_id` int(255) NOT NULL,
  `price` decimal(15, 4) NOT NULL DEFAULT 0.0000,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL,
  `image_link` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image_list` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL DEFAULT 0,
  `view` int(11) NOT NULL DEFAULT 0,
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `site_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `warranty` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `total` int(255) NOT NULL,
  `buyed` int(255) NOT NULL,
  `rate_total` int(255) NOT NULL,
  `rate_count` int(255) NOT NULL,
  `gifts` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `video` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `feature` enum('0','1') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  FULLTEXT INDEX `name`(`name`)
) ENGINE = MyISAM AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (2, 15, 'Tivi LG 4000', 0, 4000000.0000, 'Bài viết cho sản phẩm này đang được cập nhật ...', 200000, 'product2.jpg', '', 0, 6, '', '', '12 tháng', 0, 0, 9, 2, 'USB 4G', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '', '0');
INSERT INTO `product` VALUES (3, 13, 'Tivi Akai', 0, 5000000.0000, 'Bài viết cho sản phẩm này đang được cập nhật ...', 0, 'product1.jpg', '', 0, 9, '', '', '12 tháng', 0, 0, 4, 1, 'USB 4G', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '', '0');
INSERT INTO `product` VALUES (4, 16, 'Tivi Panasonic', 0, 6000000.0000, 'Bài viết cho sản phẩm này đang được cập nhật ...', 0, 'product3.jpg', '', 0, 4, '', '', '12 tháng', 0, 0, 12, 3, 'USB 4G', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '', '0');
INSERT INTO `product` VALUES (5, 17, 'Tivi Samsung', 0, 5500000.0000, 'Bài viết cho sản phẩm này đang được cập nhật ...', 0, 'product4.jpg', '', 0, 2, '', '', '12 tháng', 0, 0, 5, 1, 'USB 4G', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '', '0');
INSERT INTO `product` VALUES (6, 15, 'Tivi LG 5000', 0, 5000000.0000, 'Bài viết cho sản phẩm này đang được cập nhật ...', 0, 'product5.jpg', '', 0, 2, '', '', '12 tháng', 0, 0, 0, 0, 'USB 4G', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '', '0');
INSERT INTO `product` VALUES (7, 18, 'Tivi Toshiba', 0, 6200000.0000, 'Bài viết cho sản phẩm này đang được cập nhật ...', 400000, 'product6.jpg', '', 0, 88, '', '', '12 tháng', 0, 2, 21, 6, 'USB 4G', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '', '0');
INSERT INTO `product` VALUES (8, 14, 'Tivi JVC 500', 0, 10000000.0000, '<p>\r\n	B&agrave;i viết cho sản phẩm n&agrave;y đang được cập nhật ...</p>\r\n', 500000, 'product7.jpg', '[\"Chrysanthemum.jpg\",\"Desert.jpg\"]', 0, 118, '', '', '12 tháng', 0, 1, 17, 5, 'USB 4G', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '', '0');
INSERT INTO `product` VALUES (9, 15, 'Tivi LG 520', 0, 5400000.0000, '<p>\r\n	B&agrave;i viết cho sản phẩm n&agrave;y đang được cập nhật ...</p>\r\n', 0, 'product13.jpg', 'a:0:{}', 0, 46, '', '', '12 tháng', 0, 6, 7, 2, '0', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '', '0');

-- ----------------------------
-- Table structure for slide
-- ----------------------------
DROP TABLE IF EXISTS `slide`;
CREATE TABLE `slide`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `image_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image_link` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `info` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sort_order` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of slide
-- ----------------------------
INSERT INTO `slide` VALUES (1, 'Slide 1', '', '11.jpg', 'http://dantri.com.vn/', '0', 1);
INSERT INTO `slide` VALUES (2, 'Slide 2', '', '21.jpg', 'http://dantri.com.vn/', '', 2);
INSERT INTO `slide` VALUES (3, 'Slide 3', '', '31.jpg', 'http://dantri.com.vn/', '', 3);

-- ----------------------------
-- Table structure for support
-- ----------------------------
DROP TABLE IF EXISTS `support`;
CREATE TABLE `support`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `yahoo` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gmail` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `skype` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of support
-- ----------------------------
INSERT INTO `support` VALUES (1, 'Nguyễn Minh Tuấn', 'ginta2909', 'nguyentuan290993@gmail.com', 'sutrix.tuan.ngminh', '0935270881', 1);

-- ----------------------------
-- Table structure for transaction
-- ----------------------------
DROP TABLE IF EXISTS `transaction`;
CREATE TABLE `transaction`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `user_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `amount` decimal(15, 4) NOT NULL DEFAULT 0.0000,
  `payment` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_info` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `security` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transaction
-- ----------------------------
INSERT INTO `transaction` VALUES (7, 0, 1, 15, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', 4000000.0000, 'nganluong', '', '', '', 1405548000);
INSERT INTO `transaction` VALUES (8, 0, 0, 15, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', 4000000.0000, 'nganluong', '', '', '', 1407917785);
INSERT INTO `transaction` VALUES (9, 0, 0, 0, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', 10000000.0000, 'nganluong', '', '111', '', 1407918071);
INSERT INTO `transaction` VALUES (10, 0, 0, 0, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', 10000000.0000, 'nganluong', '', '111111', '', 1407918235);
INSERT INTO `transaction` VALUES (11, 0, 2, 0, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '111111', 10000000.0000, 'nganluong', '', '111', '', 1407918299);
INSERT INTO `transaction` VALUES (12, 0, 1, 0, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '7667676', 10000000.0000, 'nganluong', '', '', '', 1407923211);
INSERT INTO `transaction` VALUES (13, 0, 1, 0, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '11', 20000000.0000, 'nganluong', '', '11', '', 1407926712);
INSERT INTO `transaction` VALUES (14, 0, 1, 0, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', 10000000.0000, 'nganluong', '', '', '', 1407981011);
INSERT INTO `transaction` VALUES (15, 0, 0, 19, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', 5000000.0000, 'baokim', '', '', '', 1408099561);
INSERT INTO `transaction` VALUES (16, 0, 0, 19, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', 5000000.0000, 'baokim', '', '', '', 1408099692);
INSERT INTO `transaction` VALUES (17, 0, 0, 19, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', 5000000.0000, 'baokim', '', '', '', 1408099749);
INSERT INTO `transaction` VALUES (18, 0, 0, 19, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', 5000000.0000, 'baokim', '', '', '', 1408099776);
INSERT INTO `transaction` VALUES (19, 0, 0, 19, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', 5000000.0000, 'baokim', '', '', '', 1408099813);
INSERT INTO `transaction` VALUES (20, 0, 0, 19, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', 5000000.0000, 'baokim', '', '', '', 1408099856);
INSERT INTO `transaction` VALUES (21, 0, 0, 0, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', 10000000.0000, 'dathang', '', '', '', 1408159002);
INSERT INTO `transaction` VALUES (22, 0, 0, 19, 'Học lập trình web php', 'hoangvantuyencnt@gmail.com', '676676', 17000000.0000, 'nganluong', '', 'Giao hàng tới ABC', '', 1463280156);
INSERT INTO `transaction` VALUES (23, 0, 0, 0, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '018487458547', 9500000.0000, 'offline', '', 'Chuyển hàng đúng thời gian vào 6/5/2016', '', 1465088835);
INSERT INTO `transaction` VALUES (24, 0, 2, 0, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '018487458547', 5400000.0000, 'baokim', '', 'abc', '', 1465089700);
INSERT INTO `transaction` VALUES (25, 0, 0, 0, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '018487458547', 5800000.0000, 'baokim', '', 'test', '', 1465089758);
INSERT INTO `transaction` VALUES (26, 0, 2, 0, 'Nguyễn Minh Tuấn', 'tieucaca102@gmail.com', '935270881', 10800000.0000, 'offline', '', 'sacasdasdasdsad', '', 1534569879);
INSERT INTO `transaction` VALUES (27, 0, 0, 0, 'Nguyễn Minh Tuấn', 'tieucaca102@gmail.com', '935270881', 5800000.0000, 'offline', '', 'sdfsdfdsf', '', 1534569962);
INSERT INTO `transaction` VALUES (28, 0, 0, 0, 'Nguyễn Minh Tuấn', 'tieucaca102@gmail.com', '935270881', 9500000.0000, 'offline', '', 'fdsfds', '', 1534570063);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (21, 'Nguyễn Minh Tuấn', 'tieucaca102@gmail.com', '935270881', '27/315A To 85 Thống Nhất', '25f9e794323b453885f5181f1b624d0b', 1469457626);

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `count_view` int(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `images` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `intro` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `link` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `feature` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `view` int(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES (10, 0, 'Chuyện Tình Trên Facebook - Hồ Việt Trung [Official]', '1386147113843_video.jpg', '', 'http://www.youtube.com/watch?v=3ZlLyU2L4P0', 1386146497, 2013, 4);
INSERT INTO `video` VALUES (8, 0, 'Chỉ còn trong mơ & Phải không em', '1386147092891_video.jpg', '', 'http://www.youtube.com/watch?v=RfNJ43HBzOM', 1386146505, 2013, 6);
INSERT INTO `video` VALUES (7, 0, '[HD] Anh Xin Lỗi - Minh Vương M4U', '1386147058495_video.jpg', '', 'http://www.youtube.com/watch?v=OCZ4D9qT8lI', 1386146502, 2013, 17);
INSERT INTO `video` VALUES (16, 0, 'Nhốt Em Vào Tim - Hồ Việt Trung [Official]', '1386147135763_video.jpg', '', 'http://www.youtube.com/watch?v=fkDSnN_I_Ig', 0, 1386147135, 0);
INSERT INTO `video` VALUES (17, 0, 'Chỉ Yêu Mình Em - Châu Khải Phong [Official]', '1386147154302_video.jpg', '', 'http://www.youtube.com/watch?v=l2MydtlKra8', 0, 1386147154, 4);
INSERT INTO `video` VALUES (18, 0, 'Số Nghèo - Châu Khải Phong [Official]', '138614718279_video.jpg', '', 'http://www.youtube.com/watch?v=LJRvv8U6Dos', 1386147576, 1386147182, 1);
INSERT INTO `video` VALUES (19, 0, 'Trò Chơi Đắng Cay - Châu Khải Phong [Official]', '138614721063_video.jpg', '', 'http://www.youtube.com/watch?v=3J8d8-YgOlU', 1386147575, 1386147210, 0);
INSERT INTO `video` VALUES (20, 0, 'Sầu Tím Thiệp Hồng - Quang Lê & Lệ Quyên ( Liveshow Quang Lê )', '1386147271236_video.jpg', '', 'http://www.youtube.com/watch?v=Kd5OrV4Y_bs', 0, 1386147271, 0);
INSERT INTO `video` VALUES (21, 0, 'Gõ cửa trái tim Quang Lê - Mai Thiên Vân', '1386147292776_video.jpg', '', 'http://www.youtube.com/watch?v=9oVxDQsgXIQ', 1386147577, 1386147292, 0);
INSERT INTO `video` VALUES (22, 0, 'Cô Hàng Xóm - Quang Lê', '1386147310490_video.jpg', '', 'http://www.youtube.com/watch?v=nA9ub4zlel8', 0, 1386147310, 0);
INSERT INTO `video` VALUES (23, 0, 'Lam Truong - Mai Mai', '1386147353743_video.jpg', '', 'http://www.youtube.com/watch?v=o1igATj9lMw', 0, 1386147353, 0);
INSERT INTO `video` VALUES (24, 0, 'Lỡ Yêu Em Rồi - Bằng Kiều', '1386147364632_video.jpg', '', 'http://www.youtube.com/watch?v=HYi-5dM_c34', 0, 1386147364, 0);
INSERT INTO `video` VALUES (25, 0, 'Bản Tình Cuối - Bằng Kiều', '1386147389790_video.jpg', '', 'http://www.youtube.com/watch?v=pNr7jEQ8LT8', 0, 1386147389, 2);
INSERT INTO `video` VALUES (26, 1, 'Phút cuối - Bằng Kiều', '1386150063515_video.jpg', '', 'http://www.youtube.com/watch?v=sA_gM6_eqXU', 0, 1386150063, 0);
INSERT INTO `video` VALUES (27, 0, 'Giấc Mơ (Live) - Bùi Anh Tuấn ft Yanbi', '1386150103768_video.jpg', '', 'http://www.youtube.com/watch?v=XLr463dUNgQ', 0, 1386150103, 0);
INSERT INTO `video` VALUES (28, 4, 'Anh Nhớ Em - Tuấn Hưng', '1386150121482_video.jpg', '', 'http://www.youtube.com/watch?v=ewNQtt1RiSk', 0, 1386150121, 0);
INSERT INTO `video` VALUES (29, 0, 'LE QUYEN & TUAN HUNG - Nhu Giac Chiem Bao', '1386150141608_video.jpg', '', 'http://www.youtube.com/watch?v=DaMARvh0kms', 0, 1386150141, 0);
INSERT INTO `video` VALUES (30, 12, 'Dĩ Vãng Cuộc Tình - Duy Mạnh ft Tuấn Hưng', '140905101897_video.jpg', '', 'http://www.youtube.com/watch?v=g8I-LoBIFgQ', 0, 1409051018, 0);

SET FOREIGN_KEY_CHECKS = 1;
