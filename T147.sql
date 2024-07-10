/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t147`;
CREATE DATABASE IF NOT EXISTS `t147` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t147`;

DROP TABLE IF EXISTS `bangongshi`;
CREATE TABLE IF NOT EXISTS `bangongshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bangongshi_name` varchar(200) DEFAULT NULL COMMENT '办公室房间号  Search111',
  `bangongshi_address` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `jiaoshi_id` int DEFAULT NULL COMMENT '使用教师',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='办公室';

DELETE FROM `bangongshi`;
INSERT INTO `bangongshi` (`id`, `bangongshi_name`, `bangongshi_address`, `jiaoshi_id`, `create_time`) VALUES
	(9, '办公室房间号9', '详细地址9', 3, '2022-02-07 13:57:29'),
	(10, '办公室房间号10', '详细地址10', 1, '2022-02-07 13:57:29'),
	(11, '办公室房间号11', '详细地址11', NULL, '2022-02-07 13:57:29');

DROP TABLE IF EXISTS `bangongshi_shenqing`;
CREATE TABLE IF NOT EXISTS `bangongshi_shenqing` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_id` int DEFAULT NULL COMMENT '申请教师',
  `bangongshi_id` int DEFAULT NULL COMMENT '申请办公室',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `bangongshi_shenqing_yesno_types` int DEFAULT NULL COMMENT '申请结果 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='办公室申请';

DELETE FROM `bangongshi_shenqing`;
INSERT INTO `bangongshi_shenqing` (`id`, `jiaoshi_id`, `bangongshi_id`, `insert_time`, `bangongshi_shenqing_yesno_types`, `create_time`) VALUES
	(14, 2, 11, '2022-02-08 02:44:47', 2, '2022-02-08 02:44:47');

DROP TABLE IF EXISTS `bangongwuzi`;
CREATE TABLE IF NOT EXISTS `bangongwuzi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bangongwuzi_uuid_number` varchar(200) DEFAULT NULL COMMENT '物资编号',
  `bangongwuzi_name` varchar(200) DEFAULT NULL COMMENT '物资名称  Search111',
  `bangongwuzi_types` int DEFAULT NULL COMMENT '物资类型',
  `jiaoshi_id` int DEFAULT NULL COMMENT '使用教师',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='办公物资';

DELETE FROM `bangongwuzi`;
INSERT INTO `bangongwuzi` (`id`, `bangongwuzi_uuid_number`, `bangongwuzi_name`, `bangongwuzi_types`, `jiaoshi_id`, `create_time`) VALUES
	(1, '16442422491944', '物资名称1', 2, 1, '2022-02-07 13:57:29'),
	(2, '164424224919420', '物资名称2', 1, 2, '2022-02-07 13:57:29'),
	(3, '164424224919418', '物资名称3', 1, 2, '2022-02-07 13:57:29'),
	(4, '16442422491940', '物资名称4', 2, 1, '2022-02-07 13:57:29'),
	(5, '16442422491948', '物资名称5', 2, 3, '2022-02-07 13:57:29'),
	(6, '16442422491940', '物资名称6', 2, 1, '2022-02-07 13:57:29'),
	(7, '16442422491944', '物资名称7', 2, 1, '2022-02-07 13:57:29'),
	(8, '16442422491944', '物资名称8', 1, 2, '2022-02-07 13:57:29'),
	(9, '164424224919418', '物资名称9', 2, 3, '2022-02-07 13:57:29'),
	(10, '164424224919418', '物资名称10', 1, 3, '2022-02-07 13:57:29'),
	(11, '16442422491943', '物资名称11', 2, NULL, '2022-02-07 13:57:29');

DROP TABLE IF EXISTS `bangongwuzi_shenqing`;
CREATE TABLE IF NOT EXISTS `bangongwuzi_shenqing` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_id` int DEFAULT NULL COMMENT '申请教师',
  `bangongwuzi_id` int DEFAULT NULL COMMENT '申请办公物资',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `bangongwuzi_shenqing_yesno_types` int DEFAULT NULL COMMENT '申请结果 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='办公物资申请';

DELETE FROM `bangongwuzi_shenqing`;
INSERT INTO `bangongwuzi_shenqing` (`id`, `jiaoshi_id`, `bangongwuzi_id`, `insert_time`, `bangongwuzi_shenqing_yesno_types`, `create_time`) VALUES
	(12, 2, 11, '2022-02-08 02:54:20', 2, '2022-02-08 02:54:20');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(65, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-02-07 13:57:15'),
	(66, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-02-07 13:57:15'),
	(67, 'bangongwuzi_types', '办公物资类型名称', 1, '类型1', NULL, NULL, '2022-02-07 13:57:15'),
	(68, 'bangongwuzi_types', '办公物资类型名称', 2, '类型2', NULL, NULL, '2022-02-07 13:57:15'),
	(69, 'zhuangtai_types', '状态', 1, '未使用', NULL, NULL, '2022-02-07 13:57:15'),
	(70, 'zhuangtai_types', '状态', 2, '已使用', NULL, NULL, '2022-02-07 13:57:15'),
	(71, 'huiyishi_types', '会议室类型名称', 1, '类型1', NULL, NULL, '2022-02-07 13:57:15'),
	(72, 'huiyishi_types', '会议室类型名称', 2, '类型2', NULL, NULL, '2022-02-07 13:57:15'),
	(73, 'jiaoshi_qingjia_yesno_types', '请假审核', 1, '未审核', NULL, NULL, '2022-02-07 13:57:15'),
	(74, 'jiaoshi_qingjia_yesno_types', '请假审核', 2, '通过', NULL, NULL, '2022-02-07 13:57:15'),
	(75, 'jiaoshi_qingjia_yesno_types', '请假审核', 3, '拒绝', NULL, NULL, '2022-02-07 13:57:15'),
	(76, 'jiaoshi_lizhi_yesno_types', '离职审核', 1, '未审核', NULL, NULL, '2022-02-07 13:57:15'),
	(77, 'jiaoshi_lizhi_yesno_types', '离职审核', 2, '通过', NULL, NULL, '2022-02-07 13:57:15'),
	(78, 'jiaoshi_lizhi_yesno_types', '离职审核', 3, '拒绝', NULL, NULL, '2022-02-07 13:57:15'),
	(79, 'bangongshi_shenqing_yesno_types', '办公室审核', 1, '未审核', NULL, NULL, '2022-02-07 13:57:15'),
	(80, 'bangongshi_shenqing_yesno_types', '办公室审核', 2, '通过', NULL, NULL, '2022-02-07 13:57:15'),
	(81, 'bangongshi_shenqing_yesno_types', '办公室审核', 3, '拒绝', NULL, NULL, '2022-02-07 13:57:15'),
	(82, 'bangongwuzi_shenqing_yesno_types', '办公物资审核', 1, '未审核', NULL, NULL, '2022-02-07 13:57:15'),
	(83, 'bangongwuzi_shenqing_yesno_types', '办公物资审核', 2, '通过', NULL, NULL, '2022-02-07 13:57:15'),
	(84, 'bangongwuzi_shenqing_yesno_types', '办公物资审核', 3, '拒绝', NULL, NULL, '2022-02-07 13:57:15'),
	(85, 'huiyishi_shenqing_yesno_types', '会议室审核', 1, '未审核', NULL, NULL, '2022-02-07 13:57:15'),
	(86, 'huiyishi_shenqing_yesno_types', '会议室审核', 2, '通过', NULL, NULL, '2022-02-07 13:57:15'),
	(87, 'huiyishi_shenqing_yesno_types', '会议室审核', 3, '拒绝', NULL, NULL, '2022-02-07 13:57:15'),
	(88, 'yinzhang_shenqing_yesno_types', '印章审核', 1, '未审核', NULL, NULL, '2022-02-07 13:57:15'),
	(89, 'yinzhang_shenqing_yesno_types', '印章审核', 2, '通过', NULL, NULL, '2022-02-07 13:57:15'),
	(90, 'yinzhang_shenqing_yesno_types', '印章审核', 3, '拒绝', NULL, NULL, '2022-02-07 13:57:15'),
	(91, 'yinzhangadd_shenqing_yesno_types', '印章添加审核', 1, '未审核', NULL, NULL, '2022-02-07 13:57:15'),
	(92, 'yinzhangadd_shenqing_yesno_types', '印章添加审核', 2, '通过', NULL, NULL, '2022-02-07 13:57:15'),
	(93, 'yinzhangadd_shenqing_yesno_types', '印章添加审核', 3, '拒绝', NULL, NULL, '2022-02-07 13:57:15');

DROP TABLE IF EXISTS `huiyishi`;
CREATE TABLE IF NOT EXISTS `huiyishi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huiyishi_uuid_number` varchar(200) DEFAULT NULL COMMENT '会议室编号',
  `huiyishi_address` varchar(200) DEFAULT NULL COMMENT '会议室地址  Search111',
  `huiyishi_size` varchar(200) DEFAULT NULL COMMENT '会议室大小',
  `huiyishi_types` int DEFAULT NULL COMMENT '会议室类型',
  `zhuangtai_types` int DEFAULT NULL COMMENT '会议室状态',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COMMENT='会议室';

DELETE FROM `huiyishi`;
INSERT INTO `huiyishi` (`id`, `huiyishi_uuid_number`, `huiyishi_address`, `huiyishi_size`, `huiyishi_types`, `zhuangtai_types`, `create_time`) VALUES
	(5, '164424224920714', '会议室地址5', '会议室大小5', 1, 1, '2022-02-07 13:57:29'),
	(6, '164424224920716', '会议室地址6', '会议室大小6', 2, 2, '2022-02-07 13:57:29'),
	(7, '16442422492071', '会议室地址7', '会议室大小7', 1, 1, '2022-02-07 13:57:29'),
	(8, '164424224920720', '会议室地址8', '会议室大小8', 2, 2, '2022-02-07 13:57:29'),
	(9, '16442422492075', '会议室地址9', '会议室大小9', 1, 1, '2022-02-07 13:57:29'),
	(10, '16442422492073', '会议室地址10', '会议室大小10', 1, 1, '2022-02-07 13:57:29');

DROP TABLE IF EXISTS `huiyishi_shenqing`;
CREATE TABLE IF NOT EXISTS `huiyishi_shenqing` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_id` int DEFAULT NULL COMMENT '申请教师',
  `huiyishi_id` int DEFAULT NULL COMMENT '申请办公物资',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `huiyishi_shenqing_yesno_types` int DEFAULT NULL COMMENT '申请结果 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COMMENT='会议室申请';

DELETE FROM `huiyishi_shenqing`;
INSERT INTO `huiyishi_shenqing` (`id`, `jiaoshi_id`, `huiyishi_id`, `insert_time`, `huiyishi_shenqing_yesno_types`, `create_time`) VALUES
	(17, NULL, 9, '2022-02-08 06:46:10', 2, '2022-02-08 06:46:10'),
	(18, 5, 6, '2022-02-08 07:49:35', 2, '2022-02-08 07:49:35'),
	(19, NULL, 7, '2022-02-08 07:52:35', 2, '2022-02-08 07:52:35');

DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE IF NOT EXISTS `jiaoshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '学号',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名  Search111',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `jiaoshi_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='教师';

DELETE FROM `jiaoshi`;
INSERT INTO `jiaoshi` (`id`, `username`, `password`, `jiaoshi_name`, `sex_types`, `jiaoshi_id_number`, `jiaoshi_phone`, `jiaoshi_photo`, `jiaoshi_delete`, `create_time`) VALUES
	(1, '教师1', '123456', '教师姓名1', 1, '410224199610232001', '17703786901', 'http://localhost:8080/gaoxiaobangongxingzheng/upload/1644283669105.jpg', 1, '2022-02-07 13:57:29'),
	(2, '教师2', '123456', '教师姓名2', 2, '410224199610232002', '17703786902', 'http://localhost:8080/gaoxiaobangongxingzheng/upload/1644283657139.jpg', 1, '2022-02-07 13:57:29'),
	(3, '教师3', '123456', '教师姓名3', 1, '410224199610232003', '17703786903', 'http://localhost:8080/gaoxiaobangongxingzheng/upload/1644283646392.jpg', 1, '2022-02-07 13:57:29'),
	(4, '教师4', '123456', '教师a3', 1, '431332199911211111', '13344225151', NULL, 2, '2022-02-08 07:45:53'),
	(5, '教师5', '123456', '教师a4', 2, '432114199911214111', '13311442141', 'http://localhost:8080/gaoxiaobangongxingzheng/upload/1644306452613.jpg', 2, '2022-02-08 07:47:18');

DROP TABLE IF EXISTS `jiaoshi_lizhi`;
CREATE TABLE IF NOT EXISTS `jiaoshi_lizhi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_id` int DEFAULT NULL COMMENT '申请教师',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '离职申请时间',
  `lizhi_content` text COMMENT '离职原因',
  `jiaoshi_lizhi_yesno_types` int DEFAULT NULL COMMENT '审核结果 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COMMENT='离职申请';

DELETE FROM `jiaoshi_lizhi`;
INSERT INTO `jiaoshi_lizhi` (`id`, `jiaoshi_id`, `insert_time`, `lizhi_content`, `jiaoshi_lizhi_yesno_types`, `create_time`) VALUES
	(1, 1, '2022-02-07 13:57:29', '离职原因1', 3, '2022-02-07 13:57:29'),
	(2, 3, '2022-02-07 13:57:29', '离职原因2', 3, '2022-02-07 13:57:29'),
	(13, 5, '2022-02-08 07:49:17', '<p>2312312312</p>', 2, '2022-02-08 07:49:17');

DROP TABLE IF EXISTS `jiaoshi_qingjia`;
CREATE TABLE IF NOT EXISTS `jiaoshi_qingjia` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_id` int DEFAULT NULL COMMENT '申请教师',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '请假时间',
  `qingjia_time` timestamp NULL DEFAULT NULL COMMENT '请假结束时间',
  `jiaoshi_qingjia_yesno_types` int DEFAULT NULL COMMENT '审核结果 Search111',
  `qingjia_content` text COMMENT '请假原因',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COMMENT='请假申请';

DELETE FROM `jiaoshi_qingjia`;
INSERT INTO `jiaoshi_qingjia` (`id`, `jiaoshi_id`, `insert_time`, `qingjia_time`, `jiaoshi_qingjia_yesno_types`, `qingjia_content`, `create_time`) VALUES
	(1, 3, '2022-02-07 13:57:29', '2022-02-07 13:57:29', 3, '请假原因1', '2022-02-07 13:57:29'),
	(2, 1, '2022-02-07 13:57:29', '2022-02-07 13:57:29', 1, '请假原因2', '2022-02-07 13:57:29'),
	(13, 5, '2022-02-08 07:48:55', '2022-02-24 16:00:00', 2, '<p><span style="color: rgb(96, 98, 102);">请假原因123123</span></p>', '2022-02-08 07:48:55');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'p87tw8bevjk9ewovd8l03ffyy117bx48', '2022-02-07 13:14:04', '2024-04-19 14:05:57'),
	(2, 1, 'a1', 'jiaoshi', '教师', 'y9vpenor9q12c3f0ll2z2nmzbn2kuj4n', '2022-02-08 02:15:30', '2024-04-19 14:07:36'),
	(3, 2, 'a2', 'jiaoshi', '教师', '3lzz4gdw2ugxaq8wbel18riobav85686', '2022-02-08 02:25:00', '2022-02-08 08:44:31'),
	(4, 3, 'a3', 'jiaoshi', '教师', 'gn4zaepmov2p6fu3zn0tpljshky4xkwr', '2022-02-08 07:46:02', '2022-02-08 08:46:02'),
	(5, 5, 'a4', 'jiaoshi', '教师', 'vjn8bs2qd12lv83ozxpa7vyvt5uoi7n0', '2022-02-08 07:47:27', '2022-02-08 08:54:21');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-02-25 07:59:12');

DROP TABLE IF EXISTS `yinzhang`;
CREATE TABLE IF NOT EXISTS `yinzhang` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yinzhang_uuid_number` varchar(200) DEFAULT NULL COMMENT '印章编号',
  `yinzhang_name` varchar(200) DEFAULT NULL COMMENT '印章名称  Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='印章';

DELETE FROM `yinzhang`;
INSERT INTO `yinzhang` (`id`, `yinzhang_uuid_number`, `yinzhang_name`, `create_time`) VALUES
	(1, '164424224924611', '印章名称1', '2022-02-07 13:57:29'),
	(9, '164424224924611', '印章名称9', '2022-02-07 13:57:29'),
	(15, '1644306803398', '教师a4添加的印章信息', NULL);

DROP TABLE IF EXISTS `yinzhangadd_shenqing`;
CREATE TABLE IF NOT EXISTS `yinzhangadd_shenqing` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_id` int DEFAULT NULL COMMENT '申请教师',
  `yinzhang_name` varchar(200) DEFAULT NULL COMMENT '印章名称  Search111',
  `yinzhang_file` varchar(200) DEFAULT NULL COMMENT '材料',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `yinzhangadd_shenqing_yesno_types` int DEFAULT NULL COMMENT '申请结果 Search111',
  `yinzhang_shenqing_content` text COMMENT '添加原因 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COMMENT='印章添加申请';

DELETE FROM `yinzhangadd_shenqing`;
INSERT INTO `yinzhangadd_shenqing` (`id`, `jiaoshi_id`, `yinzhang_name`, `yinzhang_file`, `insert_time`, `yinzhangadd_shenqing_yesno_types`, `yinzhang_shenqing_content`, `create_time`) VALUES
	(13, 5, '教师a4添加的印章信息', 'http://localhost:8080/gaoxiaobangongxingzheng/upload/1644306617591.index', '2022-02-08 07:50:22', 2, '<p><span style="color: rgb(96, 98, 102);">添加原因11111</span></p>', '2022-02-08 07:50:22');

DROP TABLE IF EXISTS `yinzhang_shenqing`;
CREATE TABLE IF NOT EXISTS `yinzhang_shenqing` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_id` int DEFAULT NULL COMMENT '申请教师',
  `yinzhang_id` int DEFAULT NULL COMMENT '申请办公物资',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `yinzhang_shenqing_yesno_types` int DEFAULT NULL COMMENT '申请结果 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='印章申请';

DELETE FROM `yinzhang_shenqing`;
INSERT INTO `yinzhang_shenqing` (`id`, `jiaoshi_id`, `yinzhang_id`, `insert_time`, `yinzhang_shenqing_yesno_types`, `create_time`) VALUES
	(1, 3, 1, '2022-02-07 13:57:29', 2, '2022-02-07 13:57:29'),
	(14, 5, 15, '2022-02-08 07:54:26', 2, '2022-02-08 07:54:26');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
