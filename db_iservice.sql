-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- โฮสต์: localhost
-- เวลาในการสร้าง: 
-- รุ่นของเซิร์ฟเวอร์: 5.0.51
-- รุ่นของ PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- ฐานข้อมูล: `db_iservice`
-- 

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `devices`
-- 

CREATE TABLE `devices` (
  `id` int(11) NOT NULL auto_increment,
  `device_type_id` int(11) NOT NULL,
  `device_name` varchar(255) NOT NULL,
  `device_brand_name` varchar(255) NOT NULL,
  `device_code` varchar(100) NOT NULL,
  `device_price` int(6) NOT NULL,
  `device_created_date` datetime NOT NULL,
  `device_buy_date` date NOT NULL,
  `device_garantee_expire_date` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- dump ตาราง `devices`
-- 

INSERT INTO `devices` VALUES (1, 2, 'DCP-J125', 'Brother', 'SR100112347', 4700, '2012-07-31 22:20:32', '2555-07-31', '2556-07-31');
INSERT INTO `devices` VALUES (2, 1, 'Z475', 'lenovo', '3423', 18500, '2012-07-31 22:35:50', '2555-04-26', '2558-07-25');
INSERT INTO `devices` VALUES (4, 1, 'Satellite L300', 'Toshiba', '34233674345', 16000, '2012-08-01 23:26:16', '2555-08-02', '2556-08-02');

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `device_types`
-- 

CREATE TABLE `device_types` (
  `id` int(11) NOT NULL auto_increment,
  `device_type_name` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- dump ตาราง `device_types`
-- 

INSERT INTO `device_types` VALUES (1, 'คอมพิวเตอร์');
INSERT INTO `device_types` VALUES (2, 'ปริ้นเตอร์');
INSERT INTO `device_types` VALUES (3, 'กล้องวงจรปิด');
INSERT INTO `device_types` VALUES (4, 'โปรแกรม');
INSERT INTO `device_types` VALUES (5, 'อุปกรณ์อื่น ๆ');

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `employees`
-- 

CREATE TABLE `employees` (
  `id` int(11) NOT NULL auto_increment,
  `employee_username` varchar(255) NOT NULL,
  `employee_password` varchar(255) NOT NULL,
  `employee_fname` varchar(100) NOT NULL,
  `employee_lname` varchar(100) NOT NULL,
  `employee_sex` enum('f','m') NOT NULL,
  `employee_code` varchar(20) NOT NULL,
  `employee_level` enum('admin','engineer','user','manager') NOT NULL,
  `employee_email` varchar(255) NOT NULL,
  `employee_tel` varchar(50) NOT NULL,
  `employee_image` varchar(255) NOT NULL,
  `employee_created_date` datetime NOT NULL,
  `employee_status` enum('active','unactive','block') NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- dump ตาราง `employees`
-- 

INSERT INTO `employees` VALUES (1, 'admin', '1234', 'Admin', 'System', '', '', 'admin', '', '', '', '0000-00-00 00:00:00', 'active', 30);
INSERT INTO `employees` VALUES (4, 'tavon', '1234', 'ถาวร', 'ศรีเสนพิลา', 'm', '10011', 'admin', 'thekaroe@hotmail.com', '0868776053', '', '0000-00-00 00:00:00', 'active', 35);
INSERT INTO `employees` VALUES (5, 'kanita', '1234', 'คนิตา', 'กำไมค์', 'f', '10012', 'admin', 'nidnoy010@hotmail.com', '0854935314', '', '2012-07-30 21:34:26', 'active', 30);
INSERT INTO `employees` VALUES (6, 'kob', '1234', 'กบ', 'น้อย', '', '5011144', 'user', '', '', '', '2012-09-10 10:28:56', 'unactive', 44);

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `groups`
-- 

CREATE TABLE `groups` (
  `id` int(11) NOT NULL auto_increment,
  `group_name` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `group_created_date` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

-- 
-- dump ตาราง `groups`
-- 

INSERT INTO `groups` VALUES (34, 'ฝ่ายบุคคล', 24, '2012-07-29 01:43:50');
INSERT INTO `groups` VALUES (30, 'แผนกการตลาด', 29, '2012-07-29 01:42:44');
INSERT INTO `groups` VALUES (31, 'แผนกลูกค้าสัมพันธ์', 29, '2012-07-29 01:42:51');
INSERT INTO `groups` VALUES (29, 'ฝ่ายการตลาด', 24, '2012-07-29 01:42:33');
INSERT INTO `groups` VALUES (28, 'แผนกบัญชี', 25, '2012-07-29 01:42:22');
INSERT INTO `groups` VALUES (27, 'แผนกจัดซื้อ', 25, '2012-07-29 01:42:16');
INSERT INTO `groups` VALUES (26, 'แผนกการเงิน', 25, '2012-07-29 01:42:07');
INSERT INTO `groups` VALUES (25, 'ฝ่ายการบัญชี', 24, '2012-07-29 01:42:02');
INSERT INTO `groups` VALUES (24, 'สำนักงานใหญ่', 0, '2012-07-29 01:41:41');
INSERT INTO `groups` VALUES (33, 'ฝ่ายคอมพิวเตอร์', 21, '2012-07-29 01:43:36');
INSERT INTO `groups` VALUES (32, 'ฝ่ายการผลิต', 21, '2012-07-29 01:43:27');
INSERT INTO `groups` VALUES (21, 'สาขาวารินชำราบ', 0, '2012-07-29 01:41:03');
INSERT INTO `groups` VALUES (35, 'แผนกบุคคล', 34, '2012-07-29 01:43:56');
INSERT INTO `groups` VALUES (36, 'แผนกงานฝึกอบรม และสวัสดิการพนักงาน', 34, '2012-07-29 01:44:07');
INSERT INTO `groups` VALUES (37, 'แผนกโปรแกรมเมอร์', 33, '2012-07-29 01:44:16');
INSERT INTO `groups` VALUES (38, 'แผนกช่าง', 33, '2012-07-29 01:44:22');
INSERT INTO `groups` VALUES (39, 'แผนกกราฟฟิกดีไซต์', 33, '2012-07-29 01:44:34');
INSERT INTO `groups` VALUES (40, 'ทีมเว็บโปรแกรมเมอร์', 37, '2012-07-29 01:44:44');
INSERT INTO `groups` VALUES (41, 'ทีมเดาสทอปโปรแกรมเมอร์', 37, '2012-07-29 01:45:00');
INSERT INTO `groups` VALUES (42, 'ทีมออกแบบระบบ และวิเคราะห์ข้อมูล', 37, '2012-07-29 01:45:15');
INSERT INTO `groups` VALUES (43, 'ช่างคอม', 38, '2012-07-29 01:45:24');
INSERT INTO `groups` VALUES (44, 'ช่างปริ้นเตอร์', 38, '2012-07-29 01:45:31');
INSERT INTO `groups` VALUES (45, 'ทีมกราฟฟิกเพื่องานสิ่งพิมพ์', 39, '2012-07-29 01:45:44');
INSERT INTO `groups` VALUES (46, 'ทีมกราฟฟิกเพื่อเว็บ', 39, '2012-07-29 01:45:51');
INSERT INTO `groups` VALUES (47, 'มหาวิทยาลัยอุบลราชธานี', 0, '2012-07-29 20:56:19');

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `project_types`
-- 

CREATE TABLE `project_types` (
  `id` int(11) NOT NULL auto_increment,
  `project_type_name` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- dump ตาราง `project_types`
-- 

INSERT INTO `project_types` VALUES (1, 'งานด้านเนตเวิค');
INSERT INTO `project_types` VALUES (2, 'งานเขียนโปรแกรม');
INSERT INTO `project_types` VALUES (3, 'งานกราฟฟิก และการออกแบบ');
INSERT INTO `project_types` VALUES (4, 'อื่น ๆ');

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `repair_types`
-- 

CREATE TABLE `repair_types` (
  `id` int(11) NOT NULL auto_increment,
  `repair_type_name` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- dump ตาราง `repair_types`
-- 

INSERT INTO `repair_types` VALUES (1, 'ซ่อมเอง');
INSERT INTO `repair_types` VALUES (2, 'ส่งซ่อมร้าน');
INSERT INTO `repair_types` VALUES (3, 'ส่งเคลม');

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `requests`
-- 

CREATE TABLE `requests` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) NOT NULL,
  `device_id` int(11) NOT NULL,
  `request_remark` varchar(255) NOT NULL,
  `request_problem` varchar(2000) NOT NULL,
  `request_detail` text NOT NULL,
  `request_created_date` datetime NOT NULL,
  `request_start_repair_date` datetime NOT NULL,
  `request_end_repair_date` datetime NOT NULL,
  `request_get_date` datetime NOT NULL,
  `request_clame_date` datetime NOT NULL,
  `request_clame_remark` varchar(500) NOT NULL,
  `request_close_date` datetime NOT NULL,
  `engineer_id` int(11) NOT NULL,
  `requester_id` int(11) NOT NULL,
  `closer_id` int(11) NOT NULL,
  `request_repair_detail_work` text NOT NULL,
  `request_answer` text NOT NULL,
  `request_status` enum('wait','get','repair','forward','repair_out','repair_end','close') NOT NULL,
  `request_end_remark` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

-- 
-- dump ตาราง `requests`
-- 

INSERT INTO `requests` VALUES (6, 1, 1, '', 'มันฟีดกระดาษเวลาปริ้น จะเป็นทุก ๆ 30 - 40 แผ่น', 'ฟีดมาก ๆ', '2012-08-04 14:24:41', '2012-09-07 23:52:10', '2012-09-07 23:52:10', '2012-09-07 02:10:19', '0000-00-00 00:00:00', '', '2012-09-08 18:57:06', 4, 0, 0, 'เกิดจาก sensor ตัวอ่านกระดาษครับ', 'เอาน้ำมันหยอด แล้วก็เปลี่ยนตัวอ่านกระดาษ', 'close', 'เรียบร้อย ไม่มีค่าใช้จ่าย');
INSERT INTO `requests` VALUES (7, 1, 2, '', 'จอด้านบนกระพริบ เฉพาะในโปรแกรม Chome นะครับ อ้อ FF ก็เป็นด้วย', 'แปลกมาก ๆ เลยอะ', '2012-08-04 14:25:23', '2012-09-07 23:58:52', '2012-09-09 00:24:04', '2012-09-07 23:58:22', '2012-09-09 00:24:04', '', '0000-00-00 00:00:00', 5, 0, 0, 'ส่งเคลมที่ศูนย์', 'VGA เสีย', 'repair_end', '');
INSERT INTO `requests` VALUES (9, 1, 2, '', 'รายการ หนึ่ง', 'รายละเอียดหนึ่ง', '2012-09-07 23:57:47', '2012-09-10 10:25:38', '0000-00-00 00:00:00', '2012-09-07 23:58:04', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 4, 0, 0, '', '', 'repair', '');
INSERT INTO `requests` VALUES (10, 1, 4, '', 'รายการ สอง', 'รายละเอียด สอง', '2012-09-08 00:17:21', '2012-09-08 23:50:13', '2012-09-09 00:34:38', '2012-09-08 00:17:40', '2012-09-09 00:34:38', 'ส่งซ่อมศูนย์เลย', '2012-09-09 00:35:26', 4, 0, 0, 'ไม่ซ่อม', 'เจ้ง', 'close', 'เยี่ยมยอดมากมาย');
INSERT INTO `requests` VALUES (11, 1, 4, 'รีบซ่อมโดยด่วนเลยนะ', 'เครื่องช้ามาก', 'เปิดมาแล้วจะช้ามาก ๆ และเมื่อทำงานไปเรื่อยๆ ก็จะช้าเข้าไปอีก จนต้องปิดใหม่', '2012-09-10 13:58:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0, 0, '', '', 'wait', '');
INSERT INTO `requests` VALUES (12, 1, 2, '', 'ฝาครอบมีรอยขีดข่วน', 'ช่วยขัดออกให้หน่อย', '2012-09-10 14:23:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0, 0, '', '', 'wait', '');
INSERT INTO `requests` VALUES (13, 1, 1, '', 'ถาดกระดาษติด ดึงออกมาไม่ได้เลย', 'ถาดกระดาษติดแน่นมาก ๆ', '2012-09-10 14:23:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0, 0, '', '', 'wait', '');
INSERT INTO `requests` VALUES (14, 1, 4, '', 'ปุ่ม Enter ค้าง', 'กดแล้วมันจะค้างเลย ต้องเอาไม้มาแกะออก', '2012-09-10 14:24:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0, 0, '', '', 'wait', '');
INSERT INTO `requests` VALUES (15, 1, 1, '', 'สีเพี้ยน', 'เวลาปริ้น สีเขียวจะกลายเป็นสีฟ้า ๆ และสีแดง จะกลายเป็นสีเหลือง', '2012-09-10 14:25:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0, 0, '', '', 'wait', '');
INSERT INTO `requests` VALUES (16, 1, 1, '', 'หมึกเลอะ', 'เวลาพิมพ์ต่อเนื่อง หมึกจะไหลออกมาเยอะมาก ทำให้กระดาษเปื้อน', '2012-09-10 14:25:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0, 0, '', '', 'wait', '');
INSERT INTO `requests` VALUES (17, 1, 1, '', 'สายไฟขาด', 'สายไฟตัวต่อกับเครื่อง เป็นรอยขาด บริเวณหัวต่อ น่ากลัวมากเลยครับ', '2012-09-10 14:26:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0, 0, '', '', 'wait', '');
INSERT INTO `requests` VALUES (18, 1, 1, '', 'พิมพ์กระดาษหนาแล้วติด', 'ดึงออกมาไม่ได้ ถ้าพิมพ์กระดาษตั้งแต่ 80 แกรมเป็นต้นไป บางทีพิมพ์ได้ แต่กระดาษก็งออย่างมากเลย', '2012-09-10 14:27:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0, 0, '', '', 'wait', '');
INSERT INTO `requests` VALUES (19, 1, 1, '', 'เสียงดังรบกวนมาก', 'เวลาพิมพ์จะมีเสียงดัง ป้าง ๆ ๆ ๆ อย่างมาก รบกวนคนข้างเคียง ช่วยแก้ไขให้ด้วย', '2012-09-10 14:28:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 0, 0, 0, '', '', 'wait', '');
