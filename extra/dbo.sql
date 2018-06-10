/*
Navicat SQL Server Data Transfer

Source Server         : sa
Source Server Version : 105000
Source Host           : .:1433
Source Database       : schmsite
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 105000
File Encoding         : 65001

Date: 2018-04-08 15:44:03
*/


-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE [dbo].[messages]
GO
CREATE TABLE [dbo].[messages] (
[id] int NOT NULL IDENTITY(1,1) ,
[saver] nvarchar(765) NULL ,
[savetime] nvarchar(765) NULL ,
[content] nvarchar(765) NULL ,
[recontent] nvarchar(765) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[messages]', RESEED, 2)
GO

-- ----------------------------
-- Records of messages
-- ----------------------------
SET IDENTITY_INSERT [dbo].[messages] ON
GO
SET IDENTITY_INSERT [dbo].[messages] OFF
GO

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE [dbo].[news]
GO
CREATE TABLE [dbo].[news] (
[id] int NOT NULL IDENTITY(1,1) ,
[title] nvarchar(765) NULL ,
[content] ntext NULL ,
[stype] nvarchar(765) NULL ,
[savetime] nvarchar(765) NULL ,
[infotype] nvarchar(765) NULL ,
[filename] nvarchar(765) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[news]', RESEED, 24)
GO

-- ----------------------------
-- Records of news
-- ----------------------------
SET IDENTITY_INSERT [dbo].[news] ON
GO
INSERT INTO [dbo].[news] ([id], [title], [content], [stype], [savetime], [infotype], [filename]) VALUES (N'3', null, N'<p>是打发士大夫</p>', null, null, N'联系我们', null)
GO
GO
INSERT INTO [dbo].[news] ([id], [title], [content], [stype], [savetime], [infotype], [filename]) VALUES (N'4', null, N'最新公告', null, null, N'公告', null)
GO
GO
INSERT INTO [dbo].[news] ([id], [title], [content], [stype], [savetime], [infotype], [filename]) VALUES (N'5', null, null, null, null, N'广告', N'201207031050480001.jpg')
GO
GO
INSERT INTO [dbo].[news] ([id], [title], [content], [stype], [savetime], [infotype], [filename]) VALUES (N'6', null, null, null, null, N'广告', N'201207031050580002.jpg')
GO
GO
INSERT INTO [dbo].[news] ([id], [title], [content], [stype], [savetime], [infotype], [filename]) VALUES (N'7', null, null, null, null, N'广告', N'201207031146110004.jpg')
GO
GO
INSERT INTO [dbo].[news] ([id], [title], [content], [stype], [savetime], [infotype], [filename]) VALUES (N'15', null, N'<p>sdfs</p>', null, null, N'网站简介', null)
GO
GO
INSERT INTO [dbo].[news] ([id], [title], [content], [stype], [savetime], [infotype], [filename]) VALUES (N'23', N'后台添加', N'后台添加后台添加后台添加后台添加后台添加后台添加后台添加后台添加后台添加后台添加后台添加后台添加后台添加后台添加后台添加后台添加后台添加', N'通知公告', N'2018-02-10 20:19:48', N'新闻', N'')
GO
GO
INSERT INTO [dbo].[news] ([id], [title], [content], [stype], [savetime], [infotype], [filename]) VALUES (N'24', N'后台添加', N'后台添加后台添加后台添加', N'新闻动态', N'2018-02-10 20:20:13', N'新闻', N'6.jpg')
GO
GO
SET IDENTITY_INSERT [dbo].[news] OFF
GO

-- ----------------------------
-- Table structure for ntypes
-- ----------------------------
DROP TABLE [dbo].[ntypes]
GO
CREATE TABLE [dbo].[ntypes] (
[id] int NOT NULL IDENTITY(1,1) ,
[typename] nvarchar(765) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[ntypes]', RESEED, 2)
GO

-- ----------------------------
-- Records of ntypes
-- ----------------------------
SET IDENTITY_INSERT [dbo].[ntypes] ON
GO
INSERT INTO [dbo].[ntypes] ([id], [typename]) VALUES (N'1', N'新闻动态')
GO
GO
INSERT INTO [dbo].[ntypes] ([id], [typename]) VALUES (N'2', N'通知公告')
GO
GO
SET IDENTITY_INSERT [dbo].[ntypes] OFF
GO

-- ----------------------------
-- Table structure for pinlun
-- ----------------------------
DROP TABLE [dbo].[pinlun]
GO
CREATE TABLE [dbo].[pinlun] (
[id] int NOT NULL IDENTITY(1,1) ,
[saver] nvarchar(765) NULL ,
[content] nvarchar(765) NULL ,
[pid] nvarchar(765) NULL ,
[tablename] nvarchar(765) NULL ,
[infotitle] nvarchar(765) NULL ,
[savetime] nvarchar(765) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[pinlun]', RESEED, 52)
GO

-- ----------------------------
-- Records of pinlun
-- ----------------------------
SET IDENTITY_INSERT [dbo].[pinlun] ON
GO
INSERT INTO [dbo].[pinlun] ([id], [saver], [content], [pid], [tablename], [infotitle], [savetime]) VALUES (N'49', N'123', N'', N'9', N'', N'历史文献', N'2018-03-06 22:42:00')
GO
GO
INSERT INTO [dbo].[pinlun] ([id], [saver], [content], [pid], [tablename], [infotitle], [savetime]) VALUES (N'50', N'123', N'', N'7', N'', N'考研书籍', N'2018-03-06 22:42:44')
GO
GO
SET IDENTITY_INSERT [dbo].[pinlun] OFF
GO

-- ----------------------------
-- Table structure for pros
-- ----------------------------
DROP TABLE [dbo].[pros]
GO
CREATE TABLE [dbo].[pros] (
[id] int NOT NULL IDENTITY(1,1) ,
[proshop] nvarchar(765) NULL ,
[proname] nvarchar(765) NULL ,
[price] nvarchar(765) NULL ,
[discount] nvarchar(765) NULL ,
[filename] nvarchar(765) NULL ,
[bei] nvarchar(765) NULL ,
[btype] nvarchar(765) NULL ,
[stype] nvarchar(765) NULL ,
[status] nvarchar(765) NULL ,
[savetime] nvarchar(765) NULL ,
[cjnum] nvarchar(765) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[pros]', RESEED, 9)
GO

-- ----------------------------
-- Records of pros
-- ----------------------------
SET IDENTITY_INSERT [dbo].[pros] ON
GO
INSERT INTO [dbo].[pros] ([id], [proshop], [proname], [price], [discount], [filename], [bei], [btype], [stype], [status], [savetime], [cjnum]) VALUES (N'1', N'admin', N'冰糖湘莲', N'40', N'9', N'1.jpg', N'图书 上千家人气图书商，百年老店，特色多，免费培训，送配套设施，一年四季都赚钱.78图书加盟网，项目经严格筛选，保护投资者利益，先行赔付开店好选择', N'计算机图书', N'运动休闲类', N'上架', N'2018-02-27 01:05:40', N'0')
GO
GO
INSERT INTO [dbo].[pros] ([id], [proshop], [proname], [price], [discount], [filename], [bei], [btype], [stype], [status], [savetime], [cjnum]) VALUES (N'2', N'admin', N'红椒腊牛肉', N'40', N'8', N'1.jpg', N'图书 上千家人气图书商，百年老店，特色多，免费培训，送配套设施，一年四季都赚钱.78图书加盟网，项目经严格筛选，保护投资者利益，先行赔付开店好选择', N'计算机图书', N'运动休闲类', N'上架', N'2018-02-27 01:09:59', N'0')
GO
GO
INSERT INTO [dbo].[pros] ([id], [proshop], [proname], [price], [discount], [filename], [bei], [btype], [stype], [status], [savetime], [cjnum]) VALUES (N'3', N'admin', N'干锅牛肚', N'40', N'', N'1.jpg', N'图书 上千家人气图书商，百年老店，特色多，免费培训，送配套设施，一年四季都赚钱.78图书加盟网，项目经严格筛选，保护投资者利益，先行赔付开店好选择', N'计算机图书', N'运动休闲类', N'上架', N'2018-02-27 01:41:59', N'0')
GO
GO
INSERT INTO [dbo].[pros] ([id], [proshop], [proname], [price], [discount], [filename], [bei], [btype], [stype], [status], [savetime], [cjnum]) VALUES (N'4', N'admin', N'东安子鸡', N'40', N'', N'1.jpg', N'图书 上千家人气图书商，百年老店，特色多，免费培训，送配套设施，一年四季都赚钱.78图书加盟网，项目经严格筛选，保护投资者利益，先行赔付开店好选择', N'计算机图书', N'运动休闲类', N'上架', N'2018-02-27 01:42:41', N'0')
GO
GO
INSERT INTO [dbo].[pros] ([id], [proshop], [proname], [price], [discount], [filename], [bei], [btype], [stype], [status], [savetime], [cjnum]) VALUES (N'5', N'admin', N'叫化鸡', N'40', N'9', N'1.jpg', N'图书 上千家人气图书商，百年老店，特色多，免费培训，送配套设施，一年四季都赚钱.78图书加盟网，项目经严格筛选，保护投资者利益，先行赔付开店好选择', N'计算机图书', N'运动休闲类', N'上架', N'2018-02-27 01:44:14', N'0')
GO
GO
INSERT INTO [dbo].[pros] ([id], [proshop], [proname], [price], [discount], [filename], [bei], [btype], [stype], [status], [savetime], [cjnum]) VALUES (N'6', N'admin', N'可乐鸡翅', N'40', N'9', N'1.jpg', N'图书 上千家人气图书商，百年老店，特色多，免费培训，送配套设施，一年四季都赚钱.78图书加盟网，项目经严格筛选，保护投资者利益，先行赔付开店好选择', N'计算机图书', N'运动休闲类', N'上架', N'2018-02-27 01:45:17', N'0')
GO
GO
INSERT INTO [dbo].[pros] ([id], [proshop], [proname], [price], [discount], [filename], [bei], [btype], [stype], [status], [savetime], [cjnum]) VALUES (N'7', N'admin', N'考研书籍', N'40', N'9', N'2.jpg', N'图书 上千家人气图书商，百年老店，特色多，免费培训，送配套设施，一年四季都赚钱.78图书加盟网，项目经严格筛选，保护投资者利益，先行赔付开店好选择', N'考研书籍', N'运动休闲类', N'上架', N'2018-02-27 01:46:39', N'0')
GO
GO
INSERT INTO [dbo].[pros] ([id], [proshop], [proname], [price], [discount], [filename], [bei], [btype], [stype], [status], [savetime], [cjnum]) VALUES (N'8', N'admin', N'历史文献', N'40', N'9', N'3.jpg', N'图书 上千家人气图书商，百年老店，特色多，免费培训，送配套设施，一年四季都赚钱.78图书加盟网，项目经严格筛选，保护投资者利益，先行赔付开店好选择', N'历史文献', N'运动休闲类', N'上架', N'2018-02-27 01:47:46', N'1')
GO
GO
INSERT INTO [dbo].[pros] ([id], [proshop], [proname], [price], [discount], [filename], [bei], [btype], [stype], [status], [savetime], [cjnum]) VALUES (N'9', N'admin', N'历史文献', N'40', N'9', N'4.jpg', N'图书 上千家人气图书商，百年老店，特色多，免费培训，送配套设施，一年四季都赚钱.78图书加盟网，项目经严格筛选，保护投资者利益，先行赔付开店好选择', N'历史文献', N'运动休闲类', N'上架', N'2018-02-27 01:48:33', N'7')
GO
GO
SET IDENTITY_INSERT [dbo].[pros] OFF
GO

-- ----------------------------
-- Table structure for proscar
-- ----------------------------
DROP TABLE [dbo].[proscar]
GO
CREATE TABLE [dbo].[proscar] (
[id] int NOT NULL IDENTITY(1,1) ,
[uname] nvarchar(765) NULL ,
[pid] nvarchar(765) NULL ,
[num] nvarchar(765) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[proscar]', RESEED, 25)
GO

-- ----------------------------
-- Records of proscar
-- ----------------------------
SET IDENTITY_INSERT [dbo].[proscar] ON
GO
INSERT INTO [dbo].[proscar] ([id], [uname], [pid], [num]) VALUES (N'2', N'admin', N'9', N'1')
GO
GO
INSERT INTO [dbo].[proscar] ([id], [uname], [pid], [num]) VALUES (N'19', N'888', N'9', N'1')
GO
GO
INSERT INTO [dbo].[proscar] ([id], [uname], [pid], [num]) VALUES (N'20', N'888', N'9', N'1')
GO
GO
INSERT INTO [dbo].[proscar] ([id], [uname], [pid], [num]) VALUES (N'21', N'888', N'8', N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[proscar] OFF
GO

-- ----------------------------
-- Table structure for prosorder
-- ----------------------------
DROP TABLE [dbo].[prosorder]
GO
CREATE TABLE [dbo].[prosorder] (
[id] int NOT NULL IDENTITY(1,1) ,
[uname] nvarchar(765) NULL ,
[savetime] nvarchar(765) NULL ,
[prosinfo] nvarchar(765) NULL ,
[toshop] nvarchar(765) NULL ,
[status] nvarchar(765) NULL ,
[fkstatus] nvarchar(765) NULL ,
[tinfo] nvarchar(765) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[prosorder]', RESEED, 39)
GO

-- ----------------------------
-- Records of prosorder
-- ----------------------------
SET IDENTITY_INSERT [dbo].[prosorder] ON
GO
INSERT INTO [dbo].[prosorder] ([id], [uname], [savetime], [prosinfo], [toshop], [status], [fkstatus], [tinfo]) VALUES (N'39', N'123', N'2018-03-06 22:50:49', N'叫化鸡-40-9-5-1,', N'admin', N'待受理', N'已付款', N'')
GO
GO
SET IDENTITY_INSERT [dbo].[prosorder] OFF
GO

-- ----------------------------
-- Table structure for splb
-- ----------------------------
DROP TABLE [dbo].[splb]
GO
CREATE TABLE [dbo].[splb] (
[id] int NOT NULL IDENTITY(1,1) ,
[tglparentid] nvarchar(765) NULL ,
[datashowname] nvarchar(765) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[splb]', RESEED, 26)
GO

-- ----------------------------
-- Records of splb
-- ----------------------------
SET IDENTITY_INSERT [dbo].[splb] ON
GO
INSERT INTO [dbo].[splb] ([id], [tglparentid], [datashowname]) VALUES (N'24', N'', N'计算机图书')
GO
GO
INSERT INTO [dbo].[splb] ([id], [tglparentid], [datashowname]) VALUES (N'25', N'', N'历史文献')
GO
GO
INSERT INTO [dbo].[splb] ([id], [tglparentid], [datashowname]) VALUES (N'26', N'', N'考研书籍')
GO
GO
SET IDENTITY_INSERT [dbo].[splb] OFF
GO

-- ----------------------------
-- Table structure for sysuser
-- ----------------------------
DROP TABLE [dbo].[sysuser]
GO
CREATE TABLE [dbo].[sysuser] (
[id] int NOT NULL IDENTITY(1,1) ,
[uname] nvarchar(765) NULL ,
[upass] nvarchar(765) NULL ,
[utype] nvarchar(765) NULL ,
[tname] nvarchar(765) NULL ,
[sex] nvarchar(765) NULL ,
[birth] nvarchar(765) NULL ,
[tel] nvarchar(765) NULL ,
[addrs] nvarchar(765) NULL ,
[qq] nvarchar(765) NULL ,
[filename] nvarchar(765) NULL ,
[savetime] nvarchar(765) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[sysuser]', RESEED, 19)
GO

-- ----------------------------
-- Records of sysuser
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sysuser] ON
GO
INSERT INTO [dbo].[sysuser] ([id], [uname], [upass], [utype], [tname], [sex], [birth], [tel], [addrs], [qq], [filename], [savetime]) VALUES (N'1', N'a', N'a', N'管理员', N'小胡的', N'女', N'22', N'02788888888', N'sdfsdf', N'3422411111', N'1.jpg', N'2018-02-27 18:29:59')
GO
GO
INSERT INTO [dbo].[sysuser] ([id], [uname], [upass], [utype], [tname], [sex], [birth], [tel], [addrs], [qq], [filename], [savetime]) VALUES (N'17', N'123', N'123', N'会员', N'老胡', N'女', N'2014-05-22', N'02711111111', N'333', N'519954343', N'1.jpg', N'2018-02-27 18:29:59')
GO
GO
INSERT INTO [dbo].[sysuser] ([id], [uname], [upass], [utype], [tname], [sex], [birth], [tel], [addrs], [qq], [filename], [savetime]) VALUES (N'18', N'888', N'123', N'会员', N'小李1', N'男', N'2018-02-24', N'09877777777', N'2222', N'543323113', N'1.jpg', N'2018-02-27 11:55:16')
GO
GO
INSERT INTO [dbo].[sysuser] ([id], [uname], [upass], [utype], [tname], [sex], [birth], [tel], [addrs], [qq], [filename], [savetime]) VALUES (N'19', N'xm', N'123', N'会员', N'小明', N'男', N'2015-09-18', N'13112344321', N'1231231', N'123', N'1.jpg', N'2018-02-27 19:48:55')
GO
GO
SET IDENTITY_INSERT [dbo].[sysuser] OFF
GO

-- ----------------------------
-- Table structure for yqlj
-- ----------------------------
DROP TABLE [dbo].[yqlj]
GO
CREATE TABLE [dbo].[yqlj] (
[id] int NOT NULL IDENTITY(1,1) ,
[ljname] nvarchar(765) NULL ,
[ljurl] nvarchar(765) NULL ,
[filename] nvarchar(765) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[yqlj]', RESEED, 7)
GO

-- ----------------------------
-- Records of yqlj
-- ----------------------------
SET IDENTITY_INSERT [dbo].[yqlj] ON
GO
INSERT INTO [dbo].[yqlj] ([id], [ljname], [ljurl], [filename]) VALUES (N'1', N'百度', N'http://www.baidu.com', N'201207021739570007.bmp')
GO
GO
INSERT INTO [dbo].[yqlj] ([id], [ljname], [ljurl], [filename]) VALUES (N'2', N'google', N'http://www.google.com', N'201207021424190002.gif')
GO
GO
INSERT INTO [dbo].[yqlj] ([id], [ljname], [ljurl], [filename]) VALUES (N'3', N'优酷', N'http://www.youku.com', N'201207021726330001.png')
GO
GO
INSERT INTO [dbo].[yqlj] ([id], [ljname], [ljurl], [filename]) VALUES (N'4', N'淘宝', N'http://www.taobao.com', N'201207021729150002.png')
GO
GO
INSERT INTO [dbo].[yqlj] ([id], [ljname], [ljurl], [filename]) VALUES (N'5', N'支付宝', N'https://www.alipay.com/', N'201207021731270003.png')
GO
GO
INSERT INTO [dbo].[yqlj] ([id], [ljname], [ljurl], [filename]) VALUES (N'6', N'淘宝联盟', N'http://www.alimama.com/', N'201207021733380005.bmp')
GO
GO
INSERT INTO [dbo].[yqlj] ([id], [ljname], [ljurl], [filename]) VALUES (N'7', N'一淘网', N'http://www.etao.com', N'201207021735520006.png')
GO
GO
SET IDENTITY_INSERT [dbo].[yqlj] OFF
GO

-- ----------------------------
-- Indexes structure for table messages
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table messages
-- ----------------------------
ALTER TABLE [dbo].[messages] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table news
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table news
-- ----------------------------
ALTER TABLE [dbo].[news] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table ntypes
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table ntypes
-- ----------------------------
ALTER TABLE [dbo].[ntypes] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table pinlun
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table pinlun
-- ----------------------------
ALTER TABLE [dbo].[pinlun] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table pros
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table pros
-- ----------------------------
ALTER TABLE [dbo].[pros] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table proscar
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table proscar
-- ----------------------------
ALTER TABLE [dbo].[proscar] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table prosorder
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table prosorder
-- ----------------------------
ALTER TABLE [dbo].[prosorder] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table splb
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table splb
-- ----------------------------
ALTER TABLE [dbo].[splb] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table sysuser
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sysuser
-- ----------------------------
ALTER TABLE [dbo].[sysuser] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table yqlj
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table yqlj
-- ----------------------------
ALTER TABLE [dbo].[yqlj] ADD PRIMARY KEY ([id])
GO
