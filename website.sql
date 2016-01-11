/*
Navicat MySQL Data Transfer

Source Server         : wamp
Source Server Version : 50612
Source Host           : localhost:3306
Source Database       : website

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2016-01-11 18:34:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for web_columns
-- ----------------------------
DROP TABLE IF EXISTS `web_columns`;
CREATE TABLE `web_columns` (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '标识',
  `sort_id` int(4) DEFAULT NULL COMMENT '排序',
  `parent_id` int(4) NOT NULL DEFAULT '0' COMMENT '父标识(col id)',
  `depth` int(4) NOT NULL DEFAULT '1' COMMENT '深度',
  `identify` tinytext NOT NULL COMMENT 'url唯一标记(word or link)',
  `path` tinytext NOT NULL COMMENT 'urlpath',
  `title` tinytext NOT NULL COMMENT '标题',
  `title_seo` tinytext COMMENT '优化标题',
  `tags` tinytext COMMENT '标签',
  `intro` text COMMENT '简介',
  `mid` int(2) NOT NULL COMMENT '模型标识(Model id)',
  `temp_index` varchar(50) DEFAULT NULL COMMENT '前台模板栏目index',
  `temp_show` varchar(50) DEFAULT NULL COMMENT '内容展示模板show',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '0删除 1正常',
  `show` int(1) NOT NULL DEFAULT '1' COMMENT '0隐藏 1正常',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='栏目';

-- ----------------------------
-- Records of web_columns
-- ----------------------------
INSERT INTO `web_columns` VALUES ('1', '1', '0', '0', 'welcome', '/welcome', '科发首页', '', '', '', '8', '', '', '1', '1');
INSERT INTO `web_columns` VALUES ('2', '11', '0', '0', 'about', '/about', '关于我们', '', '', '', '3', 'about.php', '', '1', '1');
INSERT INTO `web_columns` VALUES ('3', '12', '0', '0', 'idea', '/idea', '投资管理', '', '', '', '3', 'invest/idea.php', '', '1', '1');
INSERT INTO `web_columns` VALUES ('4', '13', '0', '0', 'weitou', '/weitou', '科发微投', '', '', '', '8', 'weitou/weitou.php', '', '1', '1');
INSERT INTO `web_columns` VALUES ('5', '14', '0', '0', 'project', '/project', '项目投递', '', '', '', '3', 'project/project.php', '', '1', '1');
INSERT INTO `web_columns` VALUES ('6', '15', '0', '0', 'case', '/case', '投资案例', '', '', '', '3', 'case/case.php', '', '1', '1');
INSERT INTO `web_columns` VALUES ('7', '16', '0', '0', 'run', '/run', '管理团队', '', '', '', '12', 'run/run.php', '', '1', '1');
INSERT INTO `web_columns` VALUES ('8', '17', '0', '0', 'news', '/news', '咨询中心', '', '', '', '3', 'news/news.php', '', '1', '1');
INSERT INTO `web_columns` VALUES ('9', '18', '0', '0', 'job', '/job', '人才招聘', '', '', '', '8', 'job.php', '', '1', '1');
INSERT INTO `web_columns` VALUES ('10', '21', '0', '0', 'contact', '/contact', '联系我们', '', '', '', '11', 'contact/contact.php', '', '1', '1');
INSERT INTO `web_columns` VALUES ('11', '22', '0', '0', 'platform', '/platform', '科发平台', '', '', '', '3', 'platform', '', '1', '1');
INSERT INTO `web_columns` VALUES ('12', '19', '9', '1', 'pay', 'job/pay', '人才招聘', '', '', '', '3', '', '', '1', '1');
INSERT INTO `web_columns` VALUES ('13', '20', '9', '1', 'linian', 'job/linian', '人才理念', '', '', '', '8', '', '', '1', '1');
INSERT INTO `web_columns` VALUES ('14', '2', '1', '1', 'face1', 'welcome/face1', '科发微投封面', '', '', '', '3', '', '', '1', '1');
INSERT INTO `web_columns` VALUES ('15', '3', '1', '1', 'face2', 'welcome/face2', '项目投递封面', '', '', '', '3', '', '', '1', '1');
INSERT INTO `web_columns` VALUES ('16', '4', '1', '1', 'links', 'welcome/links', '合作伙伴', '', '', '', '1', '', '', '1', '1');
INSERT INTO `web_columns` VALUES ('17', '5', '1', '1', 'comit', 'welcome/comit', '联系方式', '', '', '', '8', '', '', '1', '1');
INSERT INTO `web_columns` VALUES ('18', '6', '1', '1', 'hot', 'welcome/hot', '左侧推荐', '', '', '', '3', '', '', '1', '1');
INSERT INTO `web_columns` VALUES ('19', '7', '1', '1', 'ban1', 'welcome/ban1', '首页banner', '', '', '', '7', '', '', '1', '1');
INSERT INTO `web_columns` VALUES ('20', '8', '1', '1', 'ban2', 'welcome/ban2', '其他banner', '', '', '', '7', '', '', '1', '1');
INSERT INTO `web_columns` VALUES ('21', '9', '1', '1', 'file', 'welcome/file', '项目文档', '', '', '', '3', '', '', '1', '1');
INSERT INTO `web_columns` VALUES ('22', '10', '1', '1', 'email', 'welcome/email', '项目接收邮箱', '', '', '', '3', '', '', '1', '1');
INSERT INTO `web_columns` VALUES ('23', '23', '0', '0', 'pro', '/pro', '基金产品', '', '', '', '3', '', '', '1', '1');
INSERT INTO `web_columns` VALUES ('24', '24', '0', '0', 'invest', '/invest', '我的投资', '', '', '', '8', '', '', '1', '1');
INSERT INTO `web_columns` VALUES ('25', '25', '24', '1', 'tishi', 'invest/tishi', '忘记密码提示', '', '', '', '8', '', '', '1', '1');
INSERT INTO `web_columns` VALUES ('26', '26', '24', '1', 'ban', 'invest/ban', 'ban', '', '', '', '7', '', '', '1', '1');
INSERT INTO `web_columns` VALUES ('27', '27', '0', '0', 'projectm', '/projectm', '项目投递（手机）', '', '', '', '12', '', '', '1', '1');
INSERT INTO `web_columns` VALUES ('28', '28', '27', '1', 'tianshi', 'projectm/tianshi', '天使投资', '', '', '', '8', '', '', '1', '1');
INSERT INTO `web_columns` VALUES ('29', '29', '27', '1', 'qita', 'projectm/qita', '其他投资', '', '', '', '8', '', '', '1', '1');

-- ----------------------------
-- Table structure for web_configs
-- ----------------------------
DROP TABLE IF EXISTS `web_configs`;
CREATE TABLE `web_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_id` int(11) NOT NULL,
  `category` varchar(30) NOT NULL COMMENT '分类',
  `key` varchar(30) NOT NULL COMMENT '键值',
  `value` tinytext NOT NULL COMMENT '值',
  `label` varchar(100) NOT NULL COMMENT '标题',
  `intor` tinytext COMMENT '简介',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='配置';

-- ----------------------------
-- Records of web_configs
-- ----------------------------
INSERT INTO `web_configs` VALUES ('1', '1', 'adminer', 'title_suffix', '浙江浙大科发股权投资管理有限公司', '标题后缀', '后端标题栏显示内容的后缀.');
INSERT INTO `web_configs` VALUES ('2', '9', 'site', 'copyright', 'Copyright 2014', 'CopyRight', '站点版权内容!');
INSERT INTO `web_configs` VALUES ('3', '8', 'site', 'email', 'mail@mail.com', '联系邮箱', '网站联系人');
INSERT INTO `web_configs` VALUES ('4', '4', 'site', 'title_suffix', '浙江浙大科发股权投资管理有限公司', '公司名称|品牌名称', '前台站点标题的后缀优化');
INSERT INTO `web_configs` VALUES ('5', '5', 'site', 'title_seo', '', '首页标题[Title]', '网站首页优化标题');
INSERT INTO `web_configs` VALUES ('6', '6', 'site', 'tags', '浙大科发  股权投资  项目投递', '关键词[Keywords]', '网站首页关键词设定，使用`,`来间隔标签.');
INSERT INTO `web_configs` VALUES ('7', '7', 'site', 'intro', '浙大科发  股权投资  项目投递', '站点描述[Description]', '网站首页描述');
INSERT INTO `web_configs` VALUES ('8', '10', 'site', 'icp', 'ICP', 'ICP编号', '');
INSERT INTO `web_configs` VALUES ('9', '9', 'adminer', 'rember_hours', '72', '记住登录', '记住登录的时间，默认单位为小时。');
INSERT INTO `web_configs` VALUES ('15', '10', 'adminer', 'nopurview', 'login,welcome,manager,ajax', '权限过滤', '');
INSERT INTO `web_configs` VALUES ('10', '11', 'adminer', 'forbidden_hours', '1', '登录禁用', '账户登录错误超过6次时的禁用时间[小时]。');
INSERT INTO `web_configs` VALUES ('11', '12', 'email', 'stmp', 'smtp.126.com', 'STMP服务器', '');
INSERT INTO `web_configs` VALUES ('12', '13', 'email', 'account', 'bocweb@126.com', '帐号', '发送帐号,请修改帐号为自己的发送账号。');
INSERT INTO `web_configs` VALUES ('13', '14', 'email', 'pwd', 'bocweb123456', '密码', '');
INSERT INTO `web_configs` VALUES ('14', '15', 'email', 'port', '25', '端口', 'STMP端口[25]');
INSERT INTO `web_configs` VALUES ('22', '12', 'email', 'name', '浙江浙大科发股权投资管理有限公司', '电邮名称', '邮件地址显示的名称');
INSERT INTO `web_configs` VALUES ('16', '3', 'site', 'title', '前端标题 ss', '网站标题', '用于保存前台站点的默认首页标题');
INSERT INTO `web_configs` VALUES ('17', '0', 'upload', 'upload_size', '120m', '上传大小限制', '默认上传权限大小');
INSERT INTO `web_configs` VALUES ('18', '0', 'upload', 'inline_file_types', 'gif|jpe?g|png|doc?|mp?|zip|pdf|pptx|ppt|docx', '上传后缀过滤', '文件类型的上传');
INSERT INTO `web_configs` VALUES ('19', '0', 'upload', 'memory_limit', '120m', '内存限制', '');
INSERT INTO `web_configs` VALUES ('20', '0', 'upload', 'max_file_uploads', '10', '上传文件个数', '个数限制');
INSERT INTO `web_configs` VALUES ('21', '0', 'upload', 'scale', '6x9', '图片比例', '默认剪切图片比例');
INSERT INTO `web_configs` VALUES ('23', '0', 'upload', 'watermark', '0', '图片水印', '图片使用背景为透明的PNG格式');
INSERT INTO `web_configs` VALUES ('24', '0', 'html', 'html', '0', '开启静态', '是否使用静态生成');
INSERT INTO `web_configs` VALUES ('25', '0', 'html', 'token', '', '验证密码', '对生成页面操作进行验证,用于第三方触发');
INSERT INTO `web_configs` VALUES ('26', '0', 'html', 'urlmodel', '0', '路由模式', '0:ID;1:标题,2:拼音');

-- ----------------------------
-- Table structure for web_log
-- ----------------------------
DROP TABLE IF EXISTS `web_log`;
CREATE TABLE `web_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `controller` varchar(50) NOT NULL,
  `url` mediumtext NOT NULL COMMENT '控制器',
  `category` varchar(50) NOT NULL DEFAULT '' COMMENT '级别: 1 view,2update,add,3,del',
  `message` tinytext NOT NULL COMMENT '备注',
  `mid` int(6) NOT NULL COMMENT '操作人',
  `ip` varchar(20) NOT NULL COMMENT 'IP地址',
  `timeline` int(11) NOT NULL COMMENT '时间线',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1908 DEFAULT CHARSET=utf8 COMMENT='操作日志';

-- ----------------------------
-- Records of web_log
-- ----------------------------
INSERT INTO `web_log` VALUES ('1861', 'login', '/admin/login', 'login', 'manager ID 1: 登录成功！', '1', '::1', '1452241347');
INSERT INTO `web_log` VALUES ('1862', 'login', '/admin/login', 'login', 'manager ID 1: 登录成功！', '1', '::1', '1452241929');
INSERT INTO `web_log` VALUES ('1863', 'login', '/admin/login', 'login', 'manager ID 1: 登录成功！', '1', '::1', '1452242128');
INSERT INTO `web_log` VALUES ('1864', 'login', '/admin/login/logout', 'login', 'manager ID : 退出登录！', '0', '::1', '1452242268');
INSERT INTO `web_log` VALUES ('1865', 'login', '/admin/login', 'login', 'manager ID 1: 登录成功！', '1', '::1', '1452242375');
INSERT INTO `web_log` VALUES ('1866', 'login', '/admin/login', 'login', 'manager ID 1: 登录成功！', '1', '::1', '1452242404');
INSERT INTO `web_log` VALUES ('1867', 'login', '/admin/login/logout', 'login', 'manager ID 1: 退出登录！', '1', '::1', '1452242406');
INSERT INTO `web_log` VALUES ('1868', 'login', '/admin/login/logout', 'login', 'manager ID 1: 退出登录！', '1', '::1', '1452242531');
INSERT INTO `web_log` VALUES ('1869', 'login', '/admin/login', 'login', 'manager ID 1: 登录成功！', '1', '::1', '1452242535');
INSERT INTO `web_log` VALUES ('1870', 'login', '/admin/login', 'login', 'manager ID 1: 登录成功！', '1', '::1', '1452324107');
INSERT INTO `web_log` VALUES ('1871', 'login', '/admin/login/logout', 'login', 'manager ID 1: 退出登录！', '1', '::1', '1452324112');
INSERT INTO `web_log` VALUES ('1872', 'login', '/admin/login/logout', 'login', 'manager ID : 退出登录！', '0', '::1', '1452324198');
INSERT INTO `web_log` VALUES ('1873', 'login', '/admin/login', 'login', 'manager ID 1: 登录成功！', '1', '::1', '1452324203');
INSERT INTO `web_log` VALUES ('1874', 'login', '/admin/login/logout', 'login', 'manager ID 1: 退出登录！', '1', '::1', '1452324205');
INSERT INTO `web_log` VALUES ('1875', 'login', '/admin/login/logout', 'login', 'manager ID : 退出登录！', '0', '::1', '1452324752');
INSERT INTO `web_log` VALUES ('1876', 'login', '/admin/login/logout', 'login', 'manager ID : 退出登录！', '0', '::1', '1452324773');
INSERT INTO `web_log` VALUES ('1877', 'login', '/admin/login', 'login', 'manager ID 1: 登录成功！', '1', '::1', '1452324781');
INSERT INTO `web_log` VALUES ('1878', 'login', '/admin/login/logout', 'login', 'manager ID 1: 退出登录！', '1', '::1', '1452324783');
INSERT INTO `web_log` VALUES ('1879', 'login', '/admin/login', 'login', 'manager ID 1: 登录成功！', '1', '::1', '1452329004');
INSERT INTO `web_log` VALUES ('1880', 'login', '/admin/login', 'login', 'manager ID 1: 登录成功！', '1', '::1', '1452329187');
INSERT INTO `web_log` VALUES ('1881', 'login', '/admin/login', 'login', 'manager ID 1: 登录成功！', '1', '::1', '1452329252');
INSERT INTO `web_log` VALUES ('1882', 'login', '/admin/login/logout', 'login', 'manager ID 1: 退出登录！', '1', '::1', '1452329288');
INSERT INTO `web_log` VALUES ('1883', 'login', '/admin/login', 'login', 'manager ID 1: 登录成功！', '1', '::1', '1452329298');
INSERT INTO `web_log` VALUES ('1884', 'login', '/admin/login', 'login', 'manager ID 1: 登录成功！', '1', '::1', '1452336105');
INSERT INTO `web_log` VALUES ('1885', 'login', '/admin/login/logout', 'login', 'manager ID 1: 退出登录！', '1', '::1', '1452336673');
INSERT INTO `web_log` VALUES ('1886', 'login', '/admin/login', 'login', 'manager ID 1: 登录成功！', '1', '::1', '1452336681');
INSERT INTO `web_log` VALUES ('1887', 'login', '/admin/login', 'login', 'manager ID 1: 登录成功！', '1', '::1', '1452341541');
INSERT INTO `web_log` VALUES ('1888', 'login', '/admin/login/logout', 'login', 'manager ID 1: 退出登录！', '1', '::1', '1452342009');
INSERT INTO `web_log` VALUES ('1889', 'login', '/admin/login', 'login', 'manager ID 1: 登录成功！', '1', '::1', '1452344998');
INSERT INTO `web_log` VALUES ('1890', 'login', '/admin/login', 'login', 'manager ID 1: 登录成功！', '1', '::1', '1452396457');
INSERT INTO `web_log` VALUES ('1891', 'login', '/admin/login/logout', 'login', 'manager ID 1: 退出登录！', '1', '::1', '1452399614');
INSERT INTO `web_log` VALUES ('1892', 'login', '/admin/login', 'login', 'manager ID 1: 登录成功！', '1', '::1', '1452399764');
INSERT INTO `web_log` VALUES ('1893', 'login', '/admin/login/logout', 'login', 'manager ID 1: 退出登录！', '1', '0.0.0.0', '1452400337');
INSERT INTO `web_log` VALUES ('1894', 'login', '/admin/login', 'login', 'manager ID 1: 登录成功！', '1', '0.0.0.0', '1452403122');
INSERT INTO `web_log` VALUES ('1895', 'login', '/admin/login/logout', 'login', 'manager ID 1: 退出登录！', '1', '0.0.0.0', '1452405336');
INSERT INTO `web_log` VALUES ('1896', 'login', '/admin/login', 'login', 'manager ID 1: 登录成功！', '1', '0.0.0.0', '1452405341');
INSERT INTO `web_log` VALUES ('1897', 'login', '/admin/login/logout', 'login', 'manager ID 1: 退出登录！', '1', '0.0.0.0', '1452406738');
INSERT INTO `web_log` VALUES ('1898', 'login', '/admin/login', 'login', 'manager ID 1: 登录成功！', '1', '0.0.0.0', '1452406743');
INSERT INTO `web_log` VALUES ('1899', 'login', '/admin/login/logout', 'login', 'manager ID 1: 退出登录！', '1', '0.0.0.0', '1452411674');
INSERT INTO `web_log` VALUES ('1900', 'login', '/admin/login', 'login', 'manager ID 1: 登录成功！', '1', '0.0.0.0', '1452411679');
INSERT INTO `web_log` VALUES ('1901', 'login', '/admin/login', 'login', 'manager ID 1: 登录成功！', '1', '0.0.0.0', '1452423018');
INSERT INTO `web_log` VALUES ('1902', 'login', '/admin/login', 'login', 'manager ID 1: 登录成功！', '1', '192.168.1.100', '1452423156');
INSERT INTO `web_log` VALUES ('1903', 'login', '/admin/login/logout', 'login', 'manager ID 1: 退出登录！', '1', '192.168.1.100', '1452423268');
INSERT INTO `web_log` VALUES ('1904', 'login', '/admin/login', 'login', 'manager ID 1: 登录成功！', '1', '192.168.1.100', '1452423344');
INSERT INTO `web_log` VALUES ('1905', 'login', '/admin/login/logout', 'login', 'manager ID 1: 退出登录！', '1', '0.0.0.0', '1452423477');
INSERT INTO `web_log` VALUES ('1906', 'login', '/admin/login', 'login', 'manager ID 1: 登录成功！', '1', '0.0.0.0', '1452423509');
INSERT INTO `web_log` VALUES ('1907', 'login', '/admin/login', 'login', 'manager ID 1: 登录成功！', '1', '192.168.1.100', '1452431894');

-- ----------------------------
-- Table structure for web_manager
-- ----------------------------
DROP TABLE IF EXISTS `web_manager`;
CREATE TABLE `web_manager` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) NOT NULL COMMENT '用户名',
  `nickname` varchar(50) DEFAULT NULL COMMENT '显示名称',
  `pwd` varchar(255) NOT NULL COMMENT '密码',
  `gid` varchar(64) NOT NULL DEFAULT '2' COMMENT '用户组ID',
  `email` varchar(100) NOT NULL COMMENT 'email',
  `tel` varchar(30) DEFAULT NULL COMMENT '电话',
  `phone` varchar(30) DEFAULT NULL COMMENT '手机',
  `addr` varchar(100) DEFAULT NULL COMMENT '地址',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '用户状态，0 禁用',
  `login_today` int(11) DEFAULT NULL COMMENT '今日登录次数',
  `pwd_errors` int(1) NOT NULL DEFAULT '0' COMMENT '密码错误次数',
  `login_ip` varchar(25) DEFAULT NULL COMMENT '最后登录的IP',
  `reg_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `login_time` int(11) DEFAULT NULL COMMENT '最后一次登录时间',
  `ga` int(1) DEFAULT '0' COMMENT 'GA 两部验证密钥 开启与否',
  `getpass` int(11) DEFAULT NULL COMMENT '获取密码时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='后端管理帐号';

-- ----------------------------
-- Records of web_manager
-- ----------------------------
INSERT INTO `web_manager` VALUES ('1', 'admin', '超级用户', '023fdaa566bc345730be907bb97b6b4e', '1', 'customservice@bocweb.cn', '', '', '', '1', '0', '0', '192.168.1.100', '1376471117', '1452431894', '1', '1389317880');

-- ----------------------------
-- Table structure for web_manager_group
-- ----------------------------
DROP TABLE IF EXISTS `web_manager_group`;
CREATE TABLE `web_manager_group` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `purview` text NOT NULL COMMENT '权限id序列',
  `title` varchar(50) NOT NULL COMMENT '用户组名称',
  `title_en` varchar(50) NOT NULL COMMENT '用户组名称en',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='权限组';

-- ----------------------------
-- Records of web_manager_group
-- ----------------------------
INSERT INTO `web_manager_group` VALUES ('1', 'a634cc19664a4f86577556784da60940,7afb566e83d3dca2d8a47c8cc29e7e36,ff2fa0336fe8fbc6a51c4707aa47c3e3,bfc0ef3829e8d84dfc8d31e5edc26d0f,a155574e57e9a8a0d0c6ecb1c511da68,fddc215a132fa97ca3c193f1cae5cf9f,52b7869014f743535798ba509432feb1,a2756c433a39a2319e61bcd68a758265,5341fd0c5de128ab7979a7414b2e586a,e537f9c0308cbfeb6ee40b4e4c344947,c2bc4d65c38311ab74b9dc39680d82df,efdb91a0f150375b423d8361d254241f,a3c8c3d444880bda2a553b8f3eb6695b,4141c0f8e6a977cd7048cd9d751af350,3045880458ee8b8734bf6b3307acd0d5,dbc10e6bbc54c0ea6f49e604839f5526,048c50d364a23dfcec0a87aa49e19eb8,c54e594684ebf2862c75ba29d83f71be,3345e3e48188396dc21242fb119ba6b1,2ebbbd65b4e2fc52a3ce44de2160e8d2,12fb6543af2e5541b0fc4f8fdd950be0,8d2159c1e0cf70473e66866eb026e80f,c166381208e23d3f4d65dec1231ccf76,3025704bb00b809798194964bccb8d3d,60decd16ccd83e013261697b7cc93bc6,7847598074d20e5abc220cb05a606213,afef320193ab13431e6b085c847b8094,9b4b25e0ea18183e9b085cc116246220,2e0115348725a3f383d8daa4354c7c3a,524c66aa98b226bd78bc7e7ad0423de7,66bfe11515e892dbf8bb4a5a92792e8b,50b03d671787f35800682c10c90a75bf,a1873764d0aa66fa9c6d34e16dcc86c2,0e69c6f28f25c24fe241da13093f9b12,6d119f7ae0c3c090ed51e672203c000f,7ff25ae6e8120b5ae5b5fb7b86a11641,53a396649c27c4e0dbd96fe57c2377e9,f59d0f67b7223a083e4449d583e90307,a41e16b61dd21e98c8143409d807890b,e44bd2f89f2820521a93c981c8af920d,f729102b0a0a547d20a4322e2d12cf71,7cf04cb70fa2f26d449acfb7974fd417,a7cd680c1676df4fdb93e7bdd83d6b3c,5f667ab7322f039e4e7e0ba8b04edf2f,6470d2304686b20640688c6d9dc44b46,df53f98d0b09ef3173cc8d594671fa6f,051071e245077a8126a4607e2148f327,224a58fde770d8718f7c06ac852fd9ae,0309718bf1a4785dcbf1e34461213c3e,d174c0a461db66945abcd861216dd94a,494b71b75af1e63c628544872f3c54d4,454f6e4ce4e57bd58eefda7d3fea1fa5,a87d77b65f6d1e8380b3d05290a994d0,430f99bc176c67ec705091d6a5da07d4,d230f6a24270b02237beb82a23e2742f,e5ba15d009798276692f84b4e0c9c1e9,026e09db119a340d72c2d5a611dfedb1,33a3ca4433131ad797eb4a7ff8bdb40b,87f64ed3bd52c1d6396fcb9908cb7fdf', '管理员', 'root');

-- ----------------------------
-- Table structure for web_manager_purview
-- ----------------------------
DROP TABLE IF EXISTS `web_manager_purview`;
CREATE TABLE `web_manager_purview` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `model` varchar(30) NOT NULL COMMENT '控制模型',
  `method` varchar(30) NOT NULL COMMENT '控制函数',
  `cid` varchar(30) DEFAULT NULL COMMENT 'column id 参数',
  `uri` varchar(64) NOT NULL COMMENT '权限地址md5(model/method)',
  `title` varchar(50) NOT NULL COMMENT '权限名称',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '是否使用权限',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=605 DEFAULT CHARSET=utf8 COMMENT='用户组权限';

-- ----------------------------
-- Records of web_manager_purview
-- ----------------------------
INSERT INTO `web_manager_purview` VALUES ('313', 'configs', 'index', '', 'fddc215a132fa97ca3c193f1cae5cf9f', '配置查看', '1');
INSERT INTO `web_manager_purview` VALUES ('314', 'configs', 'set', '', 'a155574e57e9a8a0d0c6ecb1c511da68', '配置修改', '1');
INSERT INTO `web_manager_purview` VALUES ('315', 'columns', 'index', '', 'bfc0ef3829e8d84dfc8d31e5edc26d0f', '栏目列表', '1');
INSERT INTO `web_manager_purview` VALUES ('316', 'columns', 'create', '', 'ff2fa0336fe8fbc6a51c4707aa47c3e3', '栏目添加', '1');
INSERT INTO `web_manager_purview` VALUES ('317', 'columns', 'edit', '', '7afb566e83d3dca2d8a47c8cc29e7e36', '栏目修改', '1');
INSERT INTO `web_manager_purview` VALUES ('318', 'columns', 'delete', '', '4115dd2b6affc9e3626c695e398f335a', '栏目删除', '1');
INSERT INTO `web_manager_purview` VALUES ('319', 'modules', 'index', '', 'c54e594684ebf2862c75ba29d83f71be', '模型查看', '1');
INSERT INTO `web_manager_purview` VALUES ('320', 'modules', 'create', '', '048c50d364a23dfcec0a87aa49e19eb8', '模型添加', '1');
INSERT INTO `web_manager_purview` VALUES ('321', 'modules', 'edit', '', 'dbc10e6bbc54c0ea6f49e604839f5526', '模型修改', '1');
INSERT INTO `web_manager_purview` VALUES ('322', 'modules', 'delete', '', 'bbff3957029793ef5163df61fbe018a5', '删除模型', '1');
INSERT INTO `web_manager_purview` VALUES ('323', 'manager_purview', 'index', '', '4141c0f8e6a977cd7048cd9d751af350', '权限管理', '1');
INSERT INTO `web_manager_purview` VALUES ('324', 'manager_purview', 'create', '', 'a3c8c3d444880bda2a553b8f3eb6695b', '权限添加', '1');
INSERT INTO `web_manager_purview` VALUES ('325', 'manager_purview', 'edit', '', 'efdb91a0f150375b423d8361d254241f', '权限修改', '1');
INSERT INTO `web_manager_purview` VALUES ('326', 'manager_purview', 'delete', '', '35845fea21044129353364ba21f144a0', '权限删除', '1');
INSERT INTO `web_manager_purview` VALUES ('327', 'manager_group', 'index', '', 'e537f9c0308cbfeb6ee40b4e4c344947', '用户组查看', '1');
INSERT INTO `web_manager_purview` VALUES ('328', 'manager_group', 'create', '', '5341fd0c5de128ab7979a7414b2e586a', '用户组添加', '1');
INSERT INTO `web_manager_purview` VALUES ('329', 'manager_group', 'edit', '', 'a2756c433a39a2319e61bcd68a758265', '用户组修改', '1');
INSERT INTO `web_manager_purview` VALUES ('330', 'manager_group', 'delete', '', '7d5101dc315695e13463ffdf708b5865', '用户组删除', '1');
INSERT INTO `web_manager_purview` VALUES ('334', 'upload', 'uploado', '', '3345e3e48188396dc21242fb119ba6b1', '上传', '0');
INSERT INTO `web_manager_purview` VALUES ('455', 'page', 'index', '1', 'de7cacf92fb8138525bb183386c288ee', '查看', '0');
INSERT INTO `web_manager_purview` VALUES ('456', 'page', 'create', '1', '6b194dff69e7d39e2c6468327b21428b', '创建', '1');
INSERT INTO `web_manager_purview` VALUES ('457', 'page', 'edit', '1', '5bd4ab819b72cfa8e5febb396a73c400', '编辑', '1');
INSERT INTO `web_manager_purview` VALUES ('458', 'page', 'delete', '1', '1607fad596776e92e457d9d80e908c7f', '删除', '1');
INSERT INTO `web_manager_purview` VALUES ('459', 'page', 'audit', '1', '4c300702aa4d21797b0e34da0fc26869', '审核', '1');
INSERT INTO `web_manager_purview` VALUES ('460', 'article', 'index', '2', '641db91107b4076100171ef9254f1c77', '查看', '0');
INSERT INTO `web_manager_purview` VALUES ('461', 'article', 'create', '2', '042d0d0374af1793ef1d95695e519ec8', '创建', '1');
INSERT INTO `web_manager_purview` VALUES ('462', 'article', 'edit', '2', '42a53792166f9cd6c33842a790d617b3', '编辑', '1');
INSERT INTO `web_manager_purview` VALUES ('463', 'article', 'delete', '2', '7cc182f6849514f9a8280398c0ea4f5b', '删除', '1');
INSERT INTO `web_manager_purview` VALUES ('464', 'article', 'audit', '2', '1764190a706a5f8cfd0e1e156056ee34', '审核', '1');
INSERT INTO `web_manager_purview` VALUES ('465', 'article', 'index', '3', 'cba3fbeaba1624cdaf37a8792db17343', '查看', '0');
INSERT INTO `web_manager_purview` VALUES ('466', 'article', 'create', '3', 'ad1e80e61ec279d8b01695c6ad5953aa', '创建', '1');
INSERT INTO `web_manager_purview` VALUES ('467', 'article', 'edit', '3', '89d8d41efe60aeeba91d5d09313acf4a', '编辑', '1');
INSERT INTO `web_manager_purview` VALUES ('468', 'article', 'delete', '3', '8e5350600baaae11679b46ea508cf7ca', '删除', '1');
INSERT INTO `web_manager_purview` VALUES ('469', 'article', 'audit', '3', 'd33de75b0f7766bdd01c455cfe29ec26', '审核', '1');
INSERT INTO `web_manager_purview` VALUES ('470', 'page', 'index', '4', 'b5f7325d8050bc6a843cecf9099cd041', '查看', '0');
INSERT INTO `web_manager_purview` VALUES ('471', 'page', 'create', '4', '4a5167b65c95a4941958db1e6a19d8e8', '创建', '1');
INSERT INTO `web_manager_purview` VALUES ('472', 'page', 'edit', '4', '5dbd86b675208156fd7b4b2af4034e7c', '编辑', '1');
INSERT INTO `web_manager_purview` VALUES ('473', 'page', 'delete', '4', '52049a819f5d87313473f26dc923bf4d', '删除', '1');
INSERT INTO `web_manager_purview` VALUES ('474', 'page', 'audit', '4', '8cd304eb9ffad25bc1d48ef771af0572', '审核', '1');
INSERT INTO `web_manager_purview` VALUES ('475', 'article', 'index', '5', '66bfe11515e892dbf8bb4a5a92792e8b', '查看', '0');
INSERT INTO `web_manager_purview` VALUES ('476', 'article', 'create', '5', '524c66aa98b226bd78bc7e7ad0423de7', '创建', '1');
INSERT INTO `web_manager_purview` VALUES ('477', 'article', 'edit', '5', '2e0115348725a3f383d8daa4354c7c3a', '编辑', '1');
INSERT INTO `web_manager_purview` VALUES ('478', 'article', 'delete', '5', '9b4b25e0ea18183e9b085cc116246220', '删除', '1');
INSERT INTO `web_manager_purview` VALUES ('479', 'article', 'audit', '5', '1bc506bcb52af5a626022c5b17b712a6', '审核', '1');
INSERT INTO `web_manager_purview` VALUES ('480', 'article', 'index', '6', 'a41e16b61dd21e98c8143409d807890b', '查看', '0');
INSERT INTO `web_manager_purview` VALUES ('481', 'article', 'create', '6', 'f59d0f67b7223a083e4449d583e90307', '创建', '1');
INSERT INTO `web_manager_purview` VALUES ('482', 'article', 'edit', '6', '53a396649c27c4e0dbd96fe57c2377e9', '编辑', '1');
INSERT INTO `web_manager_purview` VALUES ('483', 'article', 'delete', '6', '7ff25ae6e8120b5ae5b5fb7b86a11641', '删除', '1');
INSERT INTO `web_manager_purview` VALUES ('484', 'article', 'audit', '6', 'cfdd0b46342f17af801920d1e4939fb3', '审核', '1');
INSERT INTO `web_manager_purview` VALUES ('485', 'page', 'index', '7', '7882e0b46d58b78d70bee525b2404cb8', '查看', '0');
INSERT INTO `web_manager_purview` VALUES ('486', 'page', 'create', '7', '6f767735a4bb03e2dde41f2f81984b18', '创建', '1');
INSERT INTO `web_manager_purview` VALUES ('487', 'page', 'edit', '7', '9041544f46b0f9e0c861c986e5eb563f', '编辑', '1');
INSERT INTO `web_manager_purview` VALUES ('488', 'page', 'delete', '7', '2383aecac653eb271fca9de8637fc7f5', '删除', '1');
INSERT INTO `web_manager_purview` VALUES ('489', 'page', 'audit', '7', '58b7e1346b741399a048d3a032a72002', '审核', '1');
INSERT INTO `web_manager_purview` VALUES ('490', 'article', 'index', '8', '288a975e28e1fe0d9cb74c19e3b64e0f', '查看', '0');
INSERT INTO `web_manager_purview` VALUES ('491', 'article', 'create', '8', '5b390301d76c5c95f5daa412234203b1', '创建', '1');
INSERT INTO `web_manager_purview` VALUES ('492', 'article', 'edit', '8', '0c34b5dc5c2500e604d64e72b1ca8ed7', '编辑', '1');
INSERT INTO `web_manager_purview` VALUES ('493', 'article', 'delete', '8', '119fbe7447f2b8a4bb9708deed2c34fb', '删除', '1');
INSERT INTO `web_manager_purview` VALUES ('494', 'article', 'audit', '8', '5cc8d8792c0074efa30bab193e894cd4', '审核', '1');
INSERT INTO `web_manager_purview` VALUES ('495', 'page', 'index', '9', '990e41112666107e73a78d12837a0784', '查看', '0');
INSERT INTO `web_manager_purview` VALUES ('496', 'page', 'create', '9', 'e9bb9f5f467c9c6cad391d01846816b6', '创建', '1');
INSERT INTO `web_manager_purview` VALUES ('497', 'page', 'edit', '9', '943b4eeee1342f15ba8b248cba2107a9', '编辑', '1');
INSERT INTO `web_manager_purview` VALUES ('498', 'page', 'delete', '9', 'cc36a50d311c388686523c2241b1dcc3', '删除', '1');
INSERT INTO `web_manager_purview` VALUES ('499', 'page', 'audit', '9', '61263b76b3524fc43f743f2213ef7c1a', '审核', '1');
INSERT INTO `web_manager_purview` VALUES ('500', 'article', 'index', '10', 'bde409377efba85f50bdebd66d99be91', '查看', '0');
INSERT INTO `web_manager_purview` VALUES ('501', 'article', 'create', '10', '7761bace585fb6b5c69724d25015d248', '创建', '1');
INSERT INTO `web_manager_purview` VALUES ('502', 'article', 'edit', '10', '281d139af24b74d83ef34aec0e11eb2a', '编辑', '1');
INSERT INTO `web_manager_purview` VALUES ('503', 'article', 'delete', '10', '5abf4ab856c6a637bcc840095769af90', '删除', '1');
INSERT INTO `web_manager_purview` VALUES ('504', 'article', 'audit', '10', 'aeba91c20a484601d37be47013871ba5', '审核', '1');
INSERT INTO `web_manager_purview` VALUES ('505', 'article', 'index', '11', '1a4f701fd59e96937c1eeae760b76f20', '查看', '0');
INSERT INTO `web_manager_purview` VALUES ('506', 'article', 'create', '11', 'c7ec4478efffc5066adf03e9b6d0c3f6', '创建', '1');
INSERT INTO `web_manager_purview` VALUES ('507', 'article', 'edit', '11', '5cd52ff91527e1cae20f55a77cf08ff6', '编辑', '1');
INSERT INTO `web_manager_purview` VALUES ('508', 'article', 'delete', '11', 'dbec56ca57f576895a0a7bfa017a68c3', '删除', '1');
INSERT INTO `web_manager_purview` VALUES ('509', 'article', 'audit', '11', '67f1039177a4e7f297587dadcffa66a1', '审核', '1');
INSERT INTO `web_manager_purview` VALUES ('510', 'article', 'index', '12', '0a9fa36f93121226874d0160efd83245', '查看', '0');
INSERT INTO `web_manager_purview` VALUES ('511', 'article', 'create', '12', '8b96fa2c89146cdec2955890f72fdec4', '创建', '1');
INSERT INTO `web_manager_purview` VALUES ('512', 'article', 'edit', '12', '5159bff1effa68d8cd59302530a097cc', '编辑', '1');
INSERT INTO `web_manager_purview` VALUES ('513', 'article', 'delete', '12', 'bfd08d0f09c4a166ccddf3b31a742c52', '删除', '1');
INSERT INTO `web_manager_purview` VALUES ('514', 'article', 'audit', '12', '43d7d3acc381fa34a1d3d81b40ce4fbb', '审核', '1');
INSERT INTO `web_manager_purview` VALUES ('515', 'page', 'index', '13', 'ea5190e00daaf150cee6e60fd42d091a', '查看', '0');
INSERT INTO `web_manager_purview` VALUES ('516', 'page', 'create', '13', 'fc51ee3f845d7a86a0b010d3335ee599', '创建', '1');
INSERT INTO `web_manager_purview` VALUES ('517', 'page', 'edit', '13', '3a3b07340003e746fd5f55b2b53ea2f7', '编辑', '1');
INSERT INTO `web_manager_purview` VALUES ('518', 'page', 'delete', '13', '96d3fcec7b02d1fb50672a898cb0893a', '删除', '1');
INSERT INTO `web_manager_purview` VALUES ('519', 'page', 'audit', '13', 'ffe3207424bd264caae11b2635345d2f', '审核', '1');
INSERT INTO `web_manager_purview` VALUES ('520', 'article', 'index', '14', '1aff1ecf2fc5ad9417000e729539c73b', '查看', '0');
INSERT INTO `web_manager_purview` VALUES ('521', 'article', 'create', '14', 'bfd38ec1e48e735ce539c0f2300463f5', '创建', '1');
INSERT INTO `web_manager_purview` VALUES ('522', 'article', 'edit', '14', '9514f2a3f6c0fa3313367275dca415a7', '编辑', '1');
INSERT INTO `web_manager_purview` VALUES ('523', 'article', 'delete', '14', '589896915726b204beb77020fc9cba4b', '删除', '1');
INSERT INTO `web_manager_purview` VALUES ('524', 'article', 'audit', '14', 'de5342e3fa103ebd9a0aecc5db3e7f75', '审核', '1');
INSERT INTO `web_manager_purview` VALUES ('525', 'article', 'index', '15', '8b31faf097a9c963c838e741d123d81f', '查看', '0');
INSERT INTO `web_manager_purview` VALUES ('526', 'article', 'create', '15', 'f24dfd37c40314db259f96772b8ae012', '创建', '1');
INSERT INTO `web_manager_purview` VALUES ('527', 'article', 'edit', '15', '67ac4755d627b90c744089440cdf4e2f', '编辑', '1');
INSERT INTO `web_manager_purview` VALUES ('528', 'article', 'delete', '15', '76840778cdc5f91033d78aea895ac8be', '删除', '1');
INSERT INTO `web_manager_purview` VALUES ('529', 'article', 'audit', '15', '43d84fab5a69b80acaab920039ec2420', '审核', '1');
INSERT INTO `web_manager_purview` VALUES ('530', 'links', 'index', '16', '3ab7575940d54518c67c0921a5f7a735', '查看', '0');
INSERT INTO `web_manager_purview` VALUES ('531', 'links', 'create', '16', '05d9ffa30460b8aec60f54127e471f6e', '创建', '1');
INSERT INTO `web_manager_purview` VALUES ('532', 'links', 'edit', '16', 'c3105d956e689968b8a16aeba9897ffe', '编辑', '1');
INSERT INTO `web_manager_purview` VALUES ('533', 'links', 'delete', '16', '333c102065928d9fc921da3ce2e00591', '删除', '1');
INSERT INTO `web_manager_purview` VALUES ('534', 'links', 'audit', '16', '856c9925a1c52213e2e87462dc5715fa', '审核', '1');
INSERT INTO `web_manager_purview` VALUES ('535', 'page', 'index', '17', 'b313940ce4a99f0e84f170aec00a8212', '查看', '0');
INSERT INTO `web_manager_purview` VALUES ('536', 'page', 'create', '17', 'a0868c5b6851e063578dff5e29dfe18b', '创建', '1');
INSERT INTO `web_manager_purview` VALUES ('537', 'page', 'edit', '17', '636cf9faf1efae8e61b6ccec214b2ba3', '编辑', '1');
INSERT INTO `web_manager_purview` VALUES ('538', 'page', 'delete', '17', '08deb3c2d5874bb143d259f63c4a4678', '删除', '1');
INSERT INTO `web_manager_purview` VALUES ('539', 'page', 'audit', '17', '63afda6fb8aa2b34849528b5481aecc9', '审核', '1');
INSERT INTO `web_manager_purview` VALUES ('540', 'article', 'index', '18', '6f4edb2397be1237d707a6cd2b27bffc', '查看', '0');
INSERT INTO `web_manager_purview` VALUES ('541', 'article', 'create', '18', '227e49a702128aae361daba83ce78bc3', '创建', '1');
INSERT INTO `web_manager_purview` VALUES ('542', 'article', 'edit', '18', '26df256ae9aa43f8cbd6b1fd6ff084ba', '编辑', '1');
INSERT INTO `web_manager_purview` VALUES ('543', 'article', 'delete', '18', 'b67cc1bddbd1f379779ddc90c99f973d', '删除', '1');
INSERT INTO `web_manager_purview` VALUES ('544', 'article', 'audit', '18', '95e6adc33259afa7483d55e72467356c', '审核', '1');
INSERT INTO `web_manager_purview` VALUES ('545', 'gallery', 'index', '19', '0b766f592d374c662dcf596d51d4782a', '查看', '0');
INSERT INTO `web_manager_purview` VALUES ('546', 'gallery', 'create', '19', '43f6d5fae2338e7650a603ecc6fbeb46', '创建', '1');
INSERT INTO `web_manager_purview` VALUES ('547', 'gallery', 'edit', '19', '43a8d1f089707d33aa2801028e1b28d5', '编辑', '1');
INSERT INTO `web_manager_purview` VALUES ('548', 'gallery', 'delete', '19', 'd0fbd147f1d19cc605ee00d442069e8c', '删除', '1');
INSERT INTO `web_manager_purview` VALUES ('549', 'gallery', 'audit', '19', '6f28853677384f39451361b9755057cb', '审核', '1');
INSERT INTO `web_manager_purview` VALUES ('550', 'gallery', 'index', '20', 'e6cdaaa094aa740f40cf702cf608e28a', '查看', '0');
INSERT INTO `web_manager_purview` VALUES ('551', 'gallery', 'create', '20', '290d4252b15f036269a0a2d7e04a58f5', '创建', '1');
INSERT INTO `web_manager_purview` VALUES ('552', 'gallery', 'edit', '20', 'c9aa8cd4dcf0075791c1436e4600f117', '编辑', '1');
INSERT INTO `web_manager_purview` VALUES ('553', 'gallery', 'delete', '20', 'd265b74d2dc3cf74cb73ec9ee0188115', '删除', '1');
INSERT INTO `web_manager_purview` VALUES ('554', 'gallery', 'audit', '20', '54ec7e8661fbaa49da24a30a96ab5820', '审核', '1');
INSERT INTO `web_manager_purview` VALUES ('555', 'article', 'index', '21', 'fefcb9ed891a977a1fcdbebfa25c8a57', '查看', '0');
INSERT INTO `web_manager_purview` VALUES ('556', 'article', 'create', '21', '7d4c3cefd843d0393977a9ab25177511', '创建', '1');
INSERT INTO `web_manager_purview` VALUES ('557', 'article', 'edit', '21', '1069ec2989310940d6185fd68848bc22', '编辑', '1');
INSERT INTO `web_manager_purview` VALUES ('558', 'article', 'delete', '21', '8b35a5fc493cb432cb9dd96084e4d025', '删除', '1');
INSERT INTO `web_manager_purview` VALUES ('559', 'article', 'audit', '21', '5ccf4a8c9af1910ce5955c763c9812e4', '审核', '1');
INSERT INTO `web_manager_purview` VALUES ('560', 'article', 'index', '22', '1942443254235410cf522160828ebb08', '查看', '0');
INSERT INTO `web_manager_purview` VALUES ('561', 'article', 'create', '22', '910abedf26b88ab11711f16ac18e77ac', '创建', '1');
INSERT INTO `web_manager_purview` VALUES ('562', 'article', 'edit', '22', '93b12b734036a851ad494a22f49a8b29', '编辑', '1');
INSERT INTO `web_manager_purview` VALUES ('563', 'article', 'delete', '22', '5426303d218d43ba91fd623701ef8da1', '删除', '1');
INSERT INTO `web_manager_purview` VALUES ('564', 'article', 'audit', '22', '928e01c876d0237256d790f890087c2c', '审核', '1');
INSERT INTO `web_manager_purview` VALUES ('565', 'product', 'index', '23', '59ff1161f4b1b8fb1fefe83602d848ed', '查看', '0');
INSERT INTO `web_manager_purview` VALUES ('566', 'product', 'create', '23', '664027afc63f5619f05cac6ef730cdee', '创建', '1');
INSERT INTO `web_manager_purview` VALUES ('567', 'product', 'edit', '23', '0960848136466c41926faf6030284294', '编辑', '1');
INSERT INTO `web_manager_purview` VALUES ('568', 'product', 'delete', '23', '4d9b657f5a41b335c01d4f4b1c476367', '删除', '1');
INSERT INTO `web_manager_purview` VALUES ('569', 'product', 'audit', '23', 'b476d45e6505e3017dc4156ddb422909', '审核', '1');
INSERT INTO `web_manager_purview` VALUES ('570', 'page', 'index', '24', 'cb228aa8b48f284bff32250f10279d31', '查看', '0');
INSERT INTO `web_manager_purview` VALUES ('571', 'page', 'create', '24', '4a96b59d4878c8d5ab187ae6e4a8fa08', '创建', '1');
INSERT INTO `web_manager_purview` VALUES ('572', 'page', 'edit', '24', 'a3df21c498fae06f38816d6f49eb014d', '编辑', '1');
INSERT INTO `web_manager_purview` VALUES ('573', 'page', 'delete', '24', 'ae7d4a54bc649a8cd2b94320e88cc886', '删除', '1');
INSERT INTO `web_manager_purview` VALUES ('574', 'page', 'audit', '24', 'fe1f0c309332225ff039512ae96ad15f', '审核', '1');
INSERT INTO `web_manager_purview` VALUES ('575', 'page', 'index', '25', '572c2b012731079c6dd52ef2aeda21c2', '查看', '0');
INSERT INTO `web_manager_purview` VALUES ('576', 'page', 'create', '25', '2553f73a031d56c054b65ebda5e2e109', '创建', '1');
INSERT INTO `web_manager_purview` VALUES ('577', 'page', 'edit', '25', 'e62503bd66ab0424aeb484f3478e297b', '编辑', '1');
INSERT INTO `web_manager_purview` VALUES ('578', 'page', 'delete', '25', '199f745f65ed815f77bb7857583d442a', '删除', '1');
INSERT INTO `web_manager_purview` VALUES ('579', 'page', 'audit', '25', 'a69d2941fa1418b5e3f18e9462f8306e', '审核', '1');
INSERT INTO `web_manager_purview` VALUES ('580', 'gallery', 'index', '26', '54dd1b9d220fbb7e097381ce516cd87c', '查看', '0');
INSERT INTO `web_manager_purview` VALUES ('581', 'gallery', 'create', '26', '7d5e060288deb77135b279eac3918328', '创建', '1');
INSERT INTO `web_manager_purview` VALUES ('582', 'gallery', 'edit', '26', '5796ce6cd3cb8c1accec501a2549cfb3', '编辑', '1');
INSERT INTO `web_manager_purview` VALUES ('583', 'gallery', 'delete', '26', 'f07bef201dcc9288cd1b73410444d94f', '删除', '1');
INSERT INTO `web_manager_purview` VALUES ('584', 'gallery', 'audit', '26', '7c3ee5f42cddf4a154a52fa20ff1a5e5', '审核', '1');
INSERT INTO `web_manager_purview` VALUES ('585', 'team', 'index', '27', '98786c8cfd19da055fb0a34781e5a6c3', '查看', '0');
INSERT INTO `web_manager_purview` VALUES ('586', 'team', 'create', '27', 'c6c8f352779de447dc1253332750f69f', '创建', '1');
INSERT INTO `web_manager_purview` VALUES ('587', 'team', 'edit', '27', '8bc545b1bf6dde0326b7c39e4afe6124', '编辑', '1');
INSERT INTO `web_manager_purview` VALUES ('588', 'team', 'delete', '27', '2349ecb49119ca998afda4cd0a64137c', '删除', '1');
INSERT INTO `web_manager_purview` VALUES ('589', 'team', 'audit', '27', '2697fa09d078d8f67da5858ce7d57ce6', '审核', '1');
INSERT INTO `web_manager_purview` VALUES ('590', 'page', 'index', '28', 'ca03f159e5e570feaa3cf960ac6a29e4', '查看', '0');
INSERT INTO `web_manager_purview` VALUES ('591', 'page', 'create', '28', 'ee7111a4cf26824f94c3b5bc85d2da5a', '创建', '1');
INSERT INTO `web_manager_purview` VALUES ('592', 'page', 'edit', '28', 'b4798aa2fb0b493c7928e9256181d73b', '编辑', '1');
INSERT INTO `web_manager_purview` VALUES ('593', 'page', 'delete', '28', '7f17c5907ef15086d24220a34579bc48', '删除', '1');
INSERT INTO `web_manager_purview` VALUES ('594', 'page', 'audit', '28', '7a4329e99c0173026e66b2f6ff70324b', '审核', '1');
INSERT INTO `web_manager_purview` VALUES ('595', 'page', 'index', '29', '05a7b1a9c2cd26861b8a87aafb000d8c', '查看', '0');
INSERT INTO `web_manager_purview` VALUES ('596', 'page', 'create', '29', '017c1d6fae3be3a95a26f99a9b5c7a88', '创建', '1');
INSERT INTO `web_manager_purview` VALUES ('597', 'page', 'edit', '29', '73fe92a083eab23335362e5fdc0879f3', '编辑', '1');
INSERT INTO `web_manager_purview` VALUES ('598', 'page', 'delete', '29', 'eae953d32c1420712ec8f08228474c6e', '删除', '1');
INSERT INTO `web_manager_purview` VALUES ('599', 'page', 'audit', '29', 'c3974e7ef3e4641be2048448719a86c7', '审核', '1');
INSERT INTO `web_manager_purview` VALUES ('600', 'page', 'index', '30', 'e0fd975319c874c5f02f802b3201949b', '查看', '0');
INSERT INTO `web_manager_purview` VALUES ('601', 'page', 'create', '30', '29d0934ab8155adbbd6b94df4bac3ea5', '创建', '1');
INSERT INTO `web_manager_purview` VALUES ('602', 'page', 'edit', '30', '7c6f9430eb960f52be2eb420645bdcc1', '编辑', '1');
INSERT INTO `web_manager_purview` VALUES ('603', 'page', 'delete', '30', '16bacb294eeaa66b0e326abd2fdb7910', '删除', '1');
INSERT INTO `web_manager_purview` VALUES ('604', 'page', 'audit', '30', 'a6ee4e3e7f6e8f858b3ad8b34071bbb8', '审核', '1');

-- ----------------------------
-- Table structure for web_modules
-- ----------------------------
DROP TABLE IF EXISTS `web_modules`;
CREATE TABLE `web_modules` (
  `id` int(2) NOT NULL AUTO_INCREMENT COMMENT '模型标识',
  `sort_id` int(2) NOT NULL,
  `title` varchar(50) NOT NULL COMMENT '显示名称',
  `controller` varchar(50) NOT NULL COMMENT '控制器名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='栏目模型';

-- ----------------------------
-- Records of web_modules
-- ----------------------------
INSERT INTO `web_modules` VALUES ('1', '3', '链接', 'links');
INSERT INTO `web_modules` VALUES ('3', '5', '文章', 'article');
INSERT INTO `web_modules` VALUES ('6', '0', '清单', 'lists');
INSERT INTO `web_modules` VALUES ('7', '1', '期刊', 'gallery');
INSERT INTO `web_modules` VALUES ('8', '6', '单页', 'page');
INSERT INTO `web_modules` VALUES ('9', '4', '产品', 'product');
INSERT INTO `web_modules` VALUES ('10', '0', '招聘', 'recruit');
INSERT INTO `web_modules` VALUES ('11', '0', '联系我们', 'store');
INSERT INTO `web_modules` VALUES ('12', '0', '管理团队', 'team');

-- ----------------------------
-- Table structure for web_sessions_adminer
-- ----------------------------
DROP TABLE IF EXISTS `web_sessions_adminer`;
CREATE TABLE `web_sessions_adminer` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会话保存';

-- ----------------------------
-- Records of web_sessions_adminer
-- ----------------------------
INSERT INTO `web_sessions_adminer` VALUES ('cdd683cb9d442e35c956861d896fd2ee', '192.168.1.100', 'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; HUAWEI G750-T01 Build/HuaweiG750-T01) AppleWebKit/537.36 (KHTML, like Gecko', '1452431860', 'a:6:{s:9:\"user_data\";s:0:\"\";s:3:\"mid\";s:1:\"1\";s:5:\"uname\";s:5:\"admin\";s:8:\"nickname\";s:12:\"超级用户\";s:8:\"login_ip\";s:13:\"192.168.1.100\";s:3:\"gid\";s:1:\"1\";}');
INSERT INTO `web_sessions_adminer` VALUES ('64682184880f197883eae0bcaa1370d9', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; Trident/7.0; rv:11.0) like Gecko', '1452433862', 'a:6:{s:9:\"user_data\";s:0:\"\";s:3:\"mid\";s:1:\"1\";s:5:\"uname\";s:5:\"admin\";s:8:\"nickname\";s:12:\"超级用户\";s:8:\"login_ip\";s:3:\"::1\";s:3:\"gid\";s:1:\"1\";}');

-- ----------------------------
-- Table structure for web_sessions_site
-- ----------------------------
DROP TABLE IF EXISTS `web_sessions_site`;
CREATE TABLE `web_sessions_site` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会话保存';

-- ----------------------------
-- Records of web_sessions_site
-- ----------------------------
