-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主机： mysql
-- 生成日期： 2024-04-08 19:00:52
-- 服务器版本： 8.0.33
-- PHP 版本： 8.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `springbootdata`
--

-- --------------------------------------------------------

--
-- 表的结构 `post`
--

CREATE TABLE `post` (
  `id` int NOT NULL COMMENT '岗位id',
  `post_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '岗位名称',
  `post_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '部门类型',
  `organization_size` int NOT NULL COMMENT '部门类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `post`
--

INSERT INTO `post` (`id`, `post_name`, `post_type`, `organization_size`) VALUES
(1, 'Java全栈工程师', '开发', 8),
(2, 'Alpha测试-modify', '测试-modify', 200),
(6, 'Alpha测试3', '测试3', 20),
(7, '软件工程师', '技术部', 50),
(8, '产品经理', '产品部', 30),
(9, '销售经理', '销售部', 25),
(10, '市场专员', '市场部', 20),
(11, '财务总监', '财务部', 15),
(12, '人力资源经理', '人力资源部', 18),
(13, '运营专员', '运营部', 22),
(14, '客户服务代表', '客户服务部', 28),
(15, '研发工程师', '技术部', 45),
(16, '项目经理', '项目管理部', 35),
(17, '采购专员', '采购部', 17),
(18, '行政助理', '行政部', 12),
(19, '数据分析师', '数据部', 25),
(20, '品牌经理', '品牌部', 20),
(21, '物流专员', '物流部', 30),
(22, '市场营销总监', '市场部', 15),
(23, '财务分析师', '财务部', 18),
(24, '招聘经理', '人力资源部', 20),
(25, '客户关系经理', '客户服务部', 25),
(26, '软件测试工程师', '技术部', 40),
(27, '项目助理', '项目管理部', 10),
(28, '供应链专员', '供应链部', 15),
(29, '行政前台', '行政部', 8),
(30, '数据挖掘工程师', '数据部', 20),
(31, '品牌策划师', '品牌部', 18),
(32, '仓储管理员', '物流部', 25),
(33, '市场推广经理', '市场部', 12),
(34, '财务会计', '财务部', 22),
(35, '员工培训师', '人力资源部', 15),
(36, '软件架构师', '技术部', 35),
(37, '项目总监', '项目管理部', 28),
(38, '采购经理', '采购部', 20),
(39, '行政主管', '行政部', 10),
(40, '数据科学家', '数据部', 30),
(41, '品牌营销经理', '品牌部', 18),
(42, '物流主管', '物流部', 25),
(43, '市场调研员', '市场部', 15),
(44, '审计专员', '财务部', 20),
(45, '人力资源专员', '人力资源部', 12),
(46, '软件开发工程师', '技术部', 40),
(47, '项目执行经理', '项目管理部', 22),
(48, '采购主管', '采购部', 18),
(49, '行政经理', '行政部', 15),
(50, '数据工程师', '数据部', 25),
(51, '品牌推广经理', '品牌部', 20),
(52, '物流经理', '物流部', 30),
(53, '市场活动策划', '市场部', 18),
(54, '财务经理', '财务部', 25),
(55, '人力资源总监', '人力资源部', 35),
(56, '软件架构设计师', '技术部', 38),
(57, '项目管理专员', '项目管理部', 20),
(58, '采购采购员', '采购部', 16),
(59, '行政助理', '行政部', 10),
(60, '数据分析员', '数据部', 28),
(61, '品牌策划专员', '品牌部', 15),
(62, '物流助理', '物流部', 22),
(63, '市场推广专员', '市场部', 10),
(64, '财务分析经理', '财务部', 30),
(65, '人力资源培训师', '人力资源部', 20),
(66, '软件测试工程师', '技术部', 42),
(67, '项目经理助理', '项目管理部', 18),
(68, '采购采购经理', '采购部', 25),
(69, '行政前台', '行政部', 12),
(70, '数据挖掘专员', '数据部', 20),
(71, '品牌运营经理', '品牌部', 22),
(72, '物流专员', '物流部', 28),
(73, '市场拓展经理', '市场部', 18),
(74, '财务会计', '财务部', 30),
(75, '人力资源经理', '人力资源部', 40),
(76, '软件开发工程师', '技术部', 45),
(77, '项目管理总监', '项目管理部', 32),
(78, '采购总监', '采购部', 28),
(79, '行政经理', '行政部', 20),
(80, '数据科学家', '数据部', 35),
(81, '品牌经理', '品牌部', 25),
(82, '物流经理', '物流部', 38);

-- --------------------------------------------------------

--
-- 表的结构 `t_article`
--

CREATE TABLE `t_article` (
  `id` int NOT NULL COMMENT '文章id',
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文章标题',
  `content` longtext COLLATE utf8mb4_unicode_ci COMMENT '文章内容'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `t_article`
--

INSERT INTO `t_article` (`id`, `title`, `content`) VALUES
(1, 'Spring Boot基础入门', '从入门到精通讲解...'),
(2, 'Spring Cloud基础入门', '从入门到精通讲解...');

-- --------------------------------------------------------

--
-- 表的结构 `t_comment`
--

CREATE TABLE `t_comment` (
  `id` int NOT NULL COMMENT '评论id',
  `content` longtext COLLATE utf8mb4_unicode_ci COMMENT '评论内容',
  `author` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论作者',
  `a_id` int DEFAULT NULL COMMENT '关联的文章id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `t_comment`
--

INSERT INTO `t_comment` (`id`, `content`, `author`, `a_id`) VALUES
(1, '很全、很详细', '狂奔的蜗牛', 1),
(2, '赞一个', 'tom', 1),
(3, '很详细', 'kitty', 1),
(4, '很好，非常详细', '张三', 1),
(5, '很不错', '张杨', 2);

--
-- 转储表的索引
--

--
-- 表的索引 `post`
--
ALTER TABLE `post`
  ADD UNIQUE KEY `id` (`id`);

--
-- 表的索引 `t_article`
--
ALTER TABLE `t_article`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `t_comment`
--
ALTER TABLE `t_comment`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `post`
--
ALTER TABLE `post`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT '岗位id', AUTO_INCREMENT=83;

--
-- 使用表AUTO_INCREMENT `t_article`
--
ALTER TABLE `t_article`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT '文章id', AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `t_comment`
--
ALTER TABLE `t_comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT '评论id', AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
