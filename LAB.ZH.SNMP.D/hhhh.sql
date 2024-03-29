USE [JK]
GO
/****** Object:  Table [dbo].[Oid_t]    Script Date: 10/09/2013 17:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oid_t](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OSid] [nvarchar](255) NULL,
	[DEVNAME] [nvarchar](255) NULL,
	[DEVUPtime] [nvarchar](255) NULL,
	[sysContact] [nvarchar](255) NULL,
	[sysName] [nvarchar](255) NULL,
	[sysLocation] [nvarchar](255) NULL,
	[C1] [nvarchar](255) NULL,
	[C2] [nvarchar](255) NULL,
	[C3] [nvarchar](255) NULL,
	[C4] [nvarchar](255) NULL,
	[C5] [nvarchar](255) NULL,
	[C6] [nvarchar](255) NULL,
	[C7] [nvarchar](255) NULL,
	[C8] [nvarchar](255) NULL,
	[C9] [nvarchar](255) NULL,
	[C10] [nvarchar](255) NULL,
	[C11] [nvarchar](255) NULL,
 CONSTRAINT [PK_Oid_t] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Oid_t] ON
INSERT [dbo].[Oid_t] ([Id], [OSid], [DEVNAME], [DEVUPtime], [sysContact], [sysName], [sysLocation], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8], [C9], [C10], [C11]) VALUES (5, N'1', N'1.3.6.1.2.1.1.1.0', N'1.3.6.1.2.1.1.3.0', N'1.3.6.1.2.1.1.4.0', N'1.3.6.1.2.1.4.22.1.3', N'', N'', N'1.3.6.1.2.1.25.2.3.1.6.1', N'1.3.6.1.2.1.25.2.3.1.4.1', N'1.3.6.1.2.1.25.3.3.1.2', N'1.3.6.1.2.1.25.2.3.1.5', N'1.3.6.1.2.1.25.2.3.1.3', N'1.3.6.1.2.1.25.2.3.1.6', N'1.3.6.1.2.1.25.2.3.1.4', NULL, NULL, NULL)
INSERT [dbo].[Oid_t] ([Id], [OSid], [DEVNAME], [DEVUPtime], [sysContact], [sysName], [sysLocation], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8], [C9], [C10], [C11]) VALUES (7, N'5', N'1.3.6.1.2.1.1', N'1.3.6.1.2.1.2', N'1.3.6.1.4.1.2011.2.23.1.9', N'1.3.6.1.2.1.4.22.1.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Oid_t] ([Id], [OSid], [DEVNAME], [DEVUPtime], [sysContact], [sysName], [sysLocation], [C1], [C2], [C3], [C4], [C5], [C6], [C7], [C8], [C9], [C10], [C11]) VALUES (8, N'6', N'1.3.6.1.2.1.1', N'1.3.6.1.2.1.2.2', NULL, NULL, NULL, NULL, NULL, NULL, N'1.3.6.1.2.1.25.3.3.1.2', N'1.3.6.1.2.1.25.2.3.1.5', N'1.3.6.1.2.1.25.2.3.1.3', N'1.3.6.1.2.1.25.2.3.1.6', N'1.3.6.1.2.1.25.2.3.1.4', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Oid_t] OFF
/****** Object:  Table [dbo].[ip_value]    Script Date: 10/09/2013 17:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ip_value](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ip] [nvarchar](50) NULL,
	[Value] [nvarchar](50) NULL,
	[Lx] [nvarchar](50) NULL,
	[Bz] [nvarchar](50) NULL,
	[Xtime] [nvarchar](50) NULL,
 CONSTRAINT [PK_ip_value] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IP_t]    Script Date: 10/09/2013 17:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IP_t](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IP] [nvarchar](255) NOT NULL,
	[OSid] [nvarchar](255) NULL,
 CONSTRAINT [PK_IP_t] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[IP_t] ON
INSERT [dbo].[IP_t] ([Id], [IP], [OSid]) VALUES (4, N'192.168.0.31', N'5')
INSERT [dbo].[IP_t] ([Id], [IP], [OSid]) VALUES (5, N'192.168.0.55', N'5')
INSERT [dbo].[IP_t] ([Id], [IP], [OSid]) VALUES (18, N'192.168.0.180', N'6')
INSERT [dbo].[IP_t] ([Id], [IP], [OSid]) VALUES (19, N'192.168.0.221', N'6')
SET IDENTITY_INSERT [dbo].[IP_t] OFF
/****** Object:  Table [dbo].[Alarm_Policies]    Script Date: 10/09/2013 17:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alarm_Policies](
	[Id] [int] NOT NULL,
	[PolicyId] [nvarchar](50) NULL,
	[PolicyName] [nvarchar](50) NULL,
	[PolicyLevel] [nvarchar](50) NULL,
	[POlicyType] [nvarchar](50) NULL,
	[PolicyThreshold] [nvarchar](50) NULL,
 CONSTRAINT [PK_Alter_Policies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Alarm]    Script Date: 10/09/2013 17:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alarm](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DeviceName] [nvarchar](50) NULL,
	[Ip] [nvarchar](50) NULL,
	[DeviceId] [nvarchar](50) NULL,
	[AlarmMessage] [nvarchar](500) NULL,
	[AlarmLocation] [nvarchar](50) NULL,
	[AlarmType] [nvarchar](50) NULL,
	[AlarmLevel] [nvarchar](50) NULL,
	[AlarmTime] [nvarchar](50) NULL,
	[Remarks] [nvarchar](50) NULL,
	[SJGL] [int] NULL,
	[Zt] [bit] NULL,
	[Sh] [bit] NULL,
 CONSTRAINT [PK_Alter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Alarm] ON
INSERT [dbo].[Alarm] ([Id], [DeviceName], [Ip], [DeviceId], [AlarmMessage], [AlarmLocation], [AlarmType], [AlarmLevel], [AlarmTime], [Remarks], [SJGL], [Zt], [Sh]) VALUES (1, N'服务器-001', N'192.168.0.180', N'001', N'服务器cpu使用率超过预设', N'设备间', N'CPU超限', N'2', N'2013-9-10 10:32:15', NULL, NULL, NULL, NULL)
INSERT [dbo].[Alarm] ([Id], [DeviceName], [Ip], [DeviceId], [AlarmMessage], [AlarmLocation], [AlarmType], [AlarmLevel], [AlarmTime], [Remarks], [SJGL], [Zt], [Sh]) VALUES (3, N'虚拟主机-003', N'172.23.5.6', N'003', N'连接异常', N'服务器003', N'连接状态', N'1', N'2013-9-10 14:29:17', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Alarm] OFF
/****** Object:  Table [dbo].[ZXTZC]    Script Date: 10/09/2013 17:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZXTZC](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ZXtid] [int] NULL,
	[ZCid] [int] NULL,
 CONSTRAINT [PK_ZXTZC] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ZXTZC] ON
INSERT [dbo].[ZXTZC] ([Id], [ZXtid], [ZCid]) VALUES (3, 4, 2)
INSERT [dbo].[ZXTZC] ([Id], [ZXtid], [ZCid]) VALUES (4, 4, 3)
INSERT [dbo].[ZXTZC] ([Id], [ZXtid], [ZCid]) VALUES (5, 6, 4)
SET IDENTITY_INSERT [dbo].[ZXTZC] OFF
/****** Object:  Table [dbo].[ZXTGL]    Script Date: 10/09/2013 17:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZXTGL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[ParentMenuId] [int] NULL,
	[Remark] [nvarchar](50) NULL,
	[SortIndex] [int] NULL,
 CONSTRAINT [PK_ZXTGL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ZXTGL] ON
INSERT [dbo].[ZXTGL] ([Id], [Name], [Title], [ParentMenuId], [Remark], [SortIndex]) VALUES (2, N'2', N'2', 1, N'2', 2)
INSERT [dbo].[ZXTGL] ([Id], [Name], [Title], [ParentMenuId], [Remark], [SortIndex]) VALUES (3, N'3', NULL, 2, N'3', 3)
INSERT [dbo].[ZXTGL] ([Id], [Name], [Title], [ParentMenuId], [Remark], [SortIndex]) VALUES (4, N'22', NULL, 0, N'', 22)
INSERT [dbo].[ZXTGL] ([Id], [Name], [Title], [ParentMenuId], [Remark], [SortIndex]) VALUES (5, N'22', NULL, 4, N'', 22)
INSERT [dbo].[ZXTGL] ([Id], [Name], [Title], [ParentMenuId], [Remark], [SortIndex]) VALUES (6, N'门禁子系统', N'门禁子系统', 0, N'', 2)
SET IDENTITY_INSERT [dbo].[ZXTGL] OFF
/****** Object:  Table [dbo].[ZCGLT]    Script Date: 10/09/2013 17:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZCGLT](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IP] [nvarchar](255) NOT NULL,
	[OSid] [nvarchar](255) NULL,
	[Jk] [bit] NULL,
	[Tid] [nvarchar](50) NULL,
	[Tname] [nvarchar](50) NULL,
	[Tge] [nvarchar](500) NULL,
	[Tloca] [nvarchar](50) NULL,
	[Remark] [nvarchar](50) NULL,
	[TSD] [nvarchar](50) NULL,
	[Tgm] [nvarchar](50) NULL,
	[TLX] [nvarchar](50) NULL,
	[T1] [nvarchar](50) NULL,
	[T2] [nvarchar](50) NULL,
 CONSTRAINT [PK_ZCGL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ZCGLT] ON
INSERT [dbo].[ZCGLT] ([Id], [IP], [OSid], [Jk], [Tid], [Tname], [Tge], [Tloca], [Remark], [TSD], [Tgm], [TLX], [T1], [T2]) VALUES (2, N'192.168.0.180', NULL, NULL, N'321', N'22', N'22', NULL, N'2222222222222', N'222', N'2013-09-10', N'1', NULL, NULL)
INSERT [dbo].[ZCGLT] ([Id], [IP], [OSid], [Jk], [Tid], [Tname], [Tge], [Tloca], [Remark], [TSD], [Tgm], [TLX], [T1], [T2]) VALUES (3, N'111', NULL, NULL, N'1', N'33', N'22', N'1', N'', N'666', N'2013-09-02', N'1', NULL, NULL)
INSERT [dbo].[ZCGLT] ([Id], [IP], [OSid], [Jk], [Tid], [Tname], [Tge], [Tloca], [Remark], [TSD], [Tgm], [TLX], [T1], [T2]) VALUES (4, N'33', NULL, NULL, N'321', N'3', N'333', N'333', N'33', N'333', N'2003-03-03', N'333', NULL, NULL)
SET IDENTITY_INSERT [dbo].[ZCGLT] OFF
/****** Object:  Table [dbo].[Xoname]    Script Date: 10/09/2013 17:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Xoname](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Oid] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_0name] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Xoname] ON
INSERT [dbo].[Xoname] ([Id], [Oid], [Name]) VALUES (1, N'1.3.6.1.2.1.1.1.0', N'基本信息')
INSERT [dbo].[Xoname] ([Id], [Oid], [Name]) VALUES (2, N'1.3.6.1.2.1.1.3.0', N'开机时间')
INSERT [dbo].[Xoname] ([Id], [Oid], [Name]) VALUES (3, N'1.3.6.1.2.1.1.4.0', N'设备联系人')
INSERT [dbo].[Xoname] ([Id], [Oid], [Name]) VALUES (4, N'1.3.6.1.2.1.1.5.0', N'设备完整域名')
INSERT [dbo].[Xoname] ([Id], [Oid], [Name]) VALUES (5, N'1.3.6.1.2.1.1.6.0', N'设备位置信息')
INSERT [dbo].[Xoname] ([Id], [Oid], [Name]) VALUES (6, N'1.3.6.1.2.1.25.2.3.1.5.1', N'C盘总空间')
INSERT [dbo].[Xoname] ([Id], [Oid], [Name]) VALUES (7, N'1.3.6.1.2.1.25.2.3.1.6.1', N'C盘已用空间')
INSERT [dbo].[Xoname] ([Id], [Oid], [Name]) VALUES (8, N'1.3.6.1.2.1.25.2.3.1.4.1', N'C盘剩余空间')
INSERT [dbo].[Xoname] ([Id], [Oid], [Name]) VALUES (9, N'1.3.6.1.2.1.2.2.1.2.1', N'网络接口名称')
INSERT [dbo].[Xoname] ([Id], [Oid], [Name]) VALUES (10, N'1.3.6.1.2.1.2.2.1.8.1', N'网络接口状态')
INSERT [dbo].[Xoname] ([Id], [Oid], [Name]) VALUES (11, N'1.3.6.1.2.1.2.2.1.11.1', N'接收字节数')
INSERT [dbo].[Xoname] ([Id], [Oid], [Name]) VALUES (12, N'1.3.6.1.2.1.2.2.1.17.1', N'发送字节数')
SET IDENTITY_INSERT [dbo].[Xoname] OFF
/****** Object:  Table [dbo].[X_User]    Script Date: 10/09/2013 17:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Enabled] [bit] NOT NULL,
	[Gender] [nvarchar](10) NULL,
	[Photo] [nvarchar](200) NULL,
	[EnglishName] [nvarchar](100) NULL,
	[ChineseName] [nvarchar](100) NULL,
	[QQ] [nvarchar](50) NULL,
	[CompanyEmail] [nvarchar](100) NULL,
	[PersonalEmail] [nvarchar](100) NULL,
	[OfficePhone] [nvarchar](50) NULL,
	[OfficePhoneExt] [nvarchar](50) NULL,
	[HomePhone] [nvarchar](50) NULL,
	[CellPhone] [nvarchar](50) NULL,
	[Address] [nvarchar](500) NULL,
	[Remark] [nvarchar](500) NULL,
	[IdentityCard] [nvarchar](50) NULL,
	[TakeOfficeTime] [datetime] NULL,
	[LastLoginTime] [datetime] NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_X_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[X_User] ON
INSERT [dbo].[X_User] ([Id], [Name], [Password], [Enabled], [Gender], [Photo], [EnglishName], [ChineseName], [QQ], [CompanyEmail], [PersonalEmail], [OfficePhone], [OfficePhoneExt], [HomePhone], [CellPhone], [Address], [Remark], [IdentityCard], [TakeOfficeTime], [LastLoginTime], [CreateTime]) VALUES (311, N'管理员', N'fO+z2Ikev9ohMwjLnakRoLPkkJ5AkPKD', 1, N'男', NULL, NULL, N'管理员', NULL, N'zhognhuanxitong@163.com', N'', N'', N'', N'', N'', NULL, N'', NULL, NULL, NULL, CAST(0x0000A1F700D9085F AS DateTime))
INSERT [dbo].[X_User] ([Id], [Name], [Password], [Enabled], [Gender], [Photo], [EnglishName], [ChineseName], [QQ], [CompanyEmail], [PersonalEmail], [OfficePhone], [OfficePhoneExt], [HomePhone], [CellPhone], [Address], [Remark], [IdentityCard], [TakeOfficeTime], [LastLoginTime], [CreateTime]) VALUES (312, N'admin', N'Y1RuEEi68PY9/ASSJt+XI9nmaVFbKtoJ', 1, N'男', NULL, NULL, N'1', NULL, N'123@sina.com', N'', N'', N'', N'', N'', NULL, N'', NULL, NULL, NULL, CAST(0x0000A2450114EC81 AS DateTime))
SET IDENTITY_INSERT [dbo].[X_User] OFF
/****** Object:  Table [dbo].[X_RoleUser]    Script Date: 10/09/2013 17:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_RoleUser](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_X_RoleUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[X_RoleUser] ON
INSERT [dbo].[X_RoleUser] ([Id], [RoleId], [UserId]) VALUES (84, 10, 311)
INSERT [dbo].[X_RoleUser] ([Id], [RoleId], [UserId]) VALUES (85, 10, 312)
SET IDENTITY_INSERT [dbo].[X_RoleUser] OFF
/****** Object:  Table [dbo].[X_RoleModule]    Script Date: 10/09/2013 17:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_RoleModule](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[ModuleName] [nvarchar](50) NOT NULL,
	[CanRead] [bit] NOT NULL,
	[Others] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_X_RoleModule] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[X_RoleModule] ON
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (311, 1, N'CoreUser', 1, N'{"New":true,"Edit":true,"Delete":true,"ChangePassword":true}')
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (312, 1, N'CoreRoleUser', 1, N'{"New":true,"Delete":true}')
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (313, 1, N'CoreRoleModule', 1, N'{"Edit":true}')
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (314, 1, N'CoreRole', 1, N'{"New":true,"Edit":true,"Delete":true}')
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (315, 1, N'CorePassword', 1, N'{"Edit":true}')
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (316, 1, N'CoreOnlineUser', 1, N'')
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (317, 1, N'CoreMenu', 1, N'{"New":true,"Edit":true,"Delete":true}')
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (318, 1, N'CoreLog', 1, N'{"Delete":true}')
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (319, 1, N'CoreJobTitle', 1, N'{"New":true,"Edit":true,"Delete":true}')
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (320, 1, N'CoreDept', 1, N'{"New":true,"Edit":true,"Delete":true}')
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (321, 1, N'CoreConf', 1, N'{"Edit":true}')
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (322, 1, N'AppFile', 1, N'')
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (364, 4, N'CorePassword', 1, N'{"Edit":true}')
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (365, 4, N'Fzjg', 1, N'{"Edit":true,"New":true,"Delete":true}')
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (366, 5, N'CorePassword', 1, N'{"Edit":true}')
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (367, 5, N'Kss', 1, N'{"Edit":true,"New":true}')
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (368, 7, N'CorePassword', 1, N'{"Edit":true}')
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (369, 7, N'Fzjg', 1, N'{"Edit":true,"New":true,"Delete":true}')
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (423, 10, N'CoreMenu', 1, N'{"New":true,"Edit":true,"Delete":true}')
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (424, 10, N'CoreJobTitle', 1, N'{"New":true,"Edit":true,"Delete":true}')
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (425, 10, N'CoreJobTitleUser', 1, N'{"New":true,"Delete":true}')
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (426, 10, N'CoreDept', 1, N'{"New":true,"Edit":true,"Delete":true}')
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (427, 10, N'CoreDeptUser', 1, N'{"New":true,"Delete":true}')
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (428, 10, N'CoreRole', 1, N'{"New":true,"Edit":true,"Delete":true}')
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (429, 10, N'CoreUser', 1, N'{"New":true,"Edit":true,"Delete":true,"ChangePassword":true}')
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (430, 10, N'CoreRoleUser', 1, N'{"New":true,"Delete":true}')
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (431, 10, N'CoreRoleModule', 1, N'{"Edit":true}')
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (432, 10, N'CoreLog', 1, N'{"Delete":true}')
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (433, 10, N'CoreConf', 1, N'{"Edit":true}')
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (434, 10, N'CorePassword', 1, N'{"Edit":true}')
INSERT [dbo].[X_RoleModule] ([Id], [RoleId], [ModuleName], [CanRead], [Others]) VALUES (435, 10, N'CoreOnlineUser', 1, N'')
SET IDENTITY_INSERT [dbo].[X_RoleModule] OFF
/****** Object:  Table [dbo].[X_Role]    Script Date: 10/09/2013 17:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Remark] [nvarchar](200) NULL,
 CONSTRAINT [PK_X_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[X_Role] ON
INSERT [dbo].[X_Role] ([Id], [Name], [Remark]) VALUES (10, N'系统管理员', N'')
SET IDENTITY_INSERT [dbo].[X_Role] OFF
/****** Object:  Table [dbo].[X_Online]    Script Date: 10/09/2013 17:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_Online](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[UserName] [nvarchar](50) NULL,
	[UserRealName] [nvarchar](50) NULL,
	[IPAdddress] [nvarchar](50) NULL,
	[LoginTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
 CONSTRAINT [PK_X_Online] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[X_Online] ON
INSERT [dbo].[X_Online] ([Id], [UserId], [UserName], [UserRealName], [IPAdddress], [LoginTime], [UpdateTime]) VALUES (1, 3, N'管理员', N'中环系统', N'127.0.0.1', CAST(0x0000A1F700BB18D7 AS DateTime), CAST(0x0000A252010EC2FA AS DateTime))
INSERT [dbo].[X_Online] ([Id], [UserId], [UserName], [UserRealName], [IPAdddress], [LoginTime], [UpdateTime]) VALUES (2, 307, N'support', N'张也', N'::1', CAST(0x0000A07A011E089A AS DateTime), CAST(0x0000A07A011E85FA AS DateTime))
INSERT [dbo].[X_Online] ([Id], [UserId], [UserName], [UserRealName], [IPAdddress], [LoginTime], [UpdateTime]) VALUES (3, 208, N'分局', N'分局', N'127.0.0.1', CAST(0x0000A1F700B9C240 AS DateTime), CAST(0x0000A1F700B9C240 AS DateTime))
INSERT [dbo].[X_Online] ([Id], [UserId], [UserName], [UserRealName], [IPAdddress], [LoginTime], [UpdateTime]) VALUES (4, 6, N'看守所', N'看守所', N'127.0.0.1', CAST(0x0000A1F700BAE6B9 AS DateTime), CAST(0x0000A1F700BAE6B9 AS DateTime))
INSERT [dbo].[X_Online] ([Id], [UserId], [UserName], [UserRealName], [IPAdddress], [LoginTime], [UpdateTime]) VALUES (5, 207, N'派出所', N'派出所', N'127.0.0.1', CAST(0x0000A1F700DD7284 AS DateTime), CAST(0x0000A1F700DE15CA AS DateTime))
INSERT [dbo].[X_Online] ([Id], [UserId], [UserName], [UserRealName], [IPAdddress], [LoginTime], [UpdateTime]) VALUES (6, 311, N'管理员', N'管理员', N'127.0.0.1', CAST(0x0000A25200E6327B AS DateTime), CAST(0x0000A25200E6327B AS DateTime))
INSERT [dbo].[X_Online] ([Id], [UserId], [UserName], [UserRealName], [IPAdddress], [LoginTime], [UpdateTime]) VALUES (7, 312, N'admin', N'1', N'127.0.0.1', CAST(0x0000A24800F3F59D AS DateTime), CAST(0x0000A248011C79FD AS DateTime))
SET IDENTITY_INSERT [dbo].[X_Online] OFF
/****** Object:  Table [dbo].[X_Menu]    Script Date: 10/09/2013 17:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_Menu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ModuleName] [nvarchar](50) NOT NULL,
	[SyncMenuTitle] [bit] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[ImageUrl] [nvarchar](200) NULL,
	[NavigateUrl] [nvarchar](200) NOT NULL,
	[Remark] [nvarchar](200) NULL,
	[ParentMenuId] [int] NOT NULL,
	[SortIndex] [int] NOT NULL,
 CONSTRAINT [PK_X_Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[X_Menu] ON
INSERT [dbo].[X_Menu] ([Id], [ModuleName], [SyncMenuTitle], [Title], [ImageUrl], [NavigateUrl], [Remark], [ParentMenuId], [SortIndex]) VALUES (2, N'None', 0, N'系统管理', N'', N'', N'', 40, 1)
INSERT [dbo].[X_Menu] ([Id], [ModuleName], [SyncMenuTitle], [Title], [ImageUrl], [NavigateUrl], [Remark], [ParentMenuId], [SortIndex]) VALUES (5, N'CoreDept', 1, N'部门管理', N'~/res.axd?icon=TagBlue', N'~/admin/dept.aspx', N'', 2, 24)
INSERT [dbo].[X_Menu] ([Id], [ModuleName], [SyncMenuTitle], [Title], [ImageUrl], [NavigateUrl], [Remark], [ParentMenuId], [SortIndex]) VALUES (6, N'CoreMenu', 1, N'菜单模块管理', N'~/res.axd?icon=TagBlue', N'~/admin/menu.aspx', N'', 2, 50)
INSERT [dbo].[X_Menu] ([Id], [ModuleName], [SyncMenuTitle], [Title], [ImageUrl], [NavigateUrl], [Remark], [ParentMenuId], [SortIndex]) VALUES (7, N'CoreRole', 1, N'角色管理', N'~/res.axd?icon=TagBlue', N'~/admin/role.aspx', N'', 2, 40)
INSERT [dbo].[X_Menu] ([Id], [ModuleName], [SyncMenuTitle], [Title], [ImageUrl], [NavigateUrl], [Remark], [ParentMenuId], [SortIndex]) VALUES (8, N'CoreUser', 1, N'用户管理', N'~/res.axd?icon=TagBlue', N'~/admin/user.aspx', N'', 2, 20)
INSERT [dbo].[X_Menu] ([Id], [ModuleName], [SyncMenuTitle], [Title], [ImageUrl], [NavigateUrl], [Remark], [ParentMenuId], [SortIndex]) VALUES (10, N'CoreLog', 1, N'日志管理', N'~/res.axd?icon=TagBlue', N'~/admin/log.aspx', N'', 2, 90)
INSERT [dbo].[X_Menu] ([Id], [ModuleName], [SyncMenuTitle], [Title], [ImageUrl], [NavigateUrl], [Remark], [ParentMenuId], [SortIndex]) VALUES (29, N'CoreConf', 1, N'系统配置', N'~/res.axd?icon=TagBlue', N'~/admin/config.aspx', N'', 2, 91)
INSERT [dbo].[X_Menu] ([Id], [ModuleName], [SyncMenuTitle], [Title], [ImageUrl], [NavigateUrl], [Remark], [ParentMenuId], [SortIndex]) VALUES (30, N'CorePassword', 1, N'修改密码', N'~/res.axd?icon=TagBlue', N'~/admin/changepassword.aspx', N'', 2, 92)
INSERT [dbo].[X_Menu] ([Id], [ModuleName], [SyncMenuTitle], [Title], [ImageUrl], [NavigateUrl], [Remark], [ParentMenuId], [SortIndex]) VALUES (34, N'CoreOnlineUser', 1, N'在线统计', N'~/res.axd?icon=TagBlue', N'~/admin/online.aspx', N'', 2, 93)
INSERT [dbo].[X_Menu] ([Id], [ModuleName], [SyncMenuTitle], [Title], [ImageUrl], [NavigateUrl], [Remark], [ParentMenuId], [SortIndex]) VALUES (35, N'CoreRoleUser', 1, N'角色用户管理', N'~/res.axd?icon=TagBlue', N'~/admin/role_user.aspx', N'', 2, 42)
INSERT [dbo].[X_Menu] ([Id], [ModuleName], [SyncMenuTitle], [Title], [ImageUrl], [NavigateUrl], [Remark], [ParentMenuId], [SortIndex]) VALUES (36, N'CoreRoleModule', 1, N'角色模块权限管理', N'~/res.axd?icon=TagBlue', N'~/admin/role_module2.aspx', N'', 2, 52)
INSERT [dbo].[X_Menu] ([Id], [ModuleName], [SyncMenuTitle], [Title], [ImageUrl], [NavigateUrl], [Remark], [ParentMenuId], [SortIndex]) VALUES (39, N'CoreDeptUser', 1, N'部门用户管理', N'~/res.axd?icon=TagBlue', N'~/admin/dept_user.aspx', N'', 2, 25)
INSERT [dbo].[X_Menu] ([Id], [ModuleName], [SyncMenuTitle], [Title], [ImageUrl], [NavigateUrl], [Remark], [ParentMenuId], [SortIndex]) VALUES (40, N'None', 0, N'设备监控服务', N'', N'', N'', 0, 0)
INSERT [dbo].[X_Menu] ([Id], [ModuleName], [SyncMenuTitle], [Title], [ImageUrl], [NavigateUrl], [Remark], [ParentMenuId], [SortIndex]) VALUES (41, N'None', 0, N'资源配置管理', N'', N'', N'2', 0, 111)
INSERT [dbo].[X_Menu] ([Id], [ModuleName], [SyncMenuTitle], [Title], [ImageUrl], [NavigateUrl], [Remark], [ParentMenuId], [SortIndex]) VALUES (42, N'None', 0, N'配置管理', N'', N'', N'', 41, 1)
INSERT [dbo].[X_Menu] ([Id], [ModuleName], [SyncMenuTitle], [Title], [ImageUrl], [NavigateUrl], [Remark], [ParentMenuId], [SortIndex]) VALUES (43, N'None', 0, N'配置属性管理', N'~/res.axd?icon=TagPurple', N'~/PZGL/pzgls.aspx', N'', 42, 11)
INSERT [dbo].[X_Menu] ([Id], [ModuleName], [SyncMenuTitle], [Title], [ImageUrl], [NavigateUrl], [Remark], [ParentMenuId], [SortIndex]) VALUES (44, N'None', 0, N'配置项管理', N'~/res.axd?icon=TagPurple', N'~/PZGL/pzglmenu.aspx', N'', 42, 12)
INSERT [dbo].[X_Menu] ([Id], [ModuleName], [SyncMenuTitle], [Title], [ImageUrl], [NavigateUrl], [Remark], [ParentMenuId], [SortIndex]) VALUES (45, N'None', 0, N'配置关联关系管理', N'~/res.axd?icon=TagPurple', N'~/PZGL/pzgl_user.aspx', N'', 42, 13)
INSERT [dbo].[X_Menu] ([Id], [ModuleName], [SyncMenuTitle], [Title], [ImageUrl], [NavigateUrl], [Remark], [ParentMenuId], [SortIndex]) VALUES (46, N'None', 0, N'配置项目管理', N'~/res.axd?icon=TagPurple', N'~/PZGLXM/pzglxm.aspx', N'', 42, 14)
INSERT [dbo].[X_Menu] ([Id], [ModuleName], [SyncMenuTitle], [Title], [ImageUrl], [NavigateUrl], [Remark], [ParentMenuId], [SortIndex]) VALUES (47, N'None', 0, N'配置项数据字典', N'~/res.axd?icon=TagPurple', N'~/PZGLXM/pzglxm_user.aspx', N'', 42, 15)
SET IDENTITY_INSERT [dbo].[X_Menu] OFF
/****** Object:  Table [dbo].[X_Log]    Script Date: 10/09/2013 17:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X_Log](
	[LOGID] [int] IDENTITY(1,1) NOT NULL,
	[DATETIME] [datetime] NOT NULL,
	[THREAD] [varchar](255) NOT NULL,
	[LOG_LEVEL] [varchar](10) NOT NULL,
	[LOGGER] [varchar](255) NOT NULL,
	[MESSAGE] [varchar](2000) NULL,
	[EXCEPTION] [varchar](2000) NULL,
 CONSTRAINT [PK_X_Log_1] PRIMARY KEY CLUSTERED 
(
	[LOGID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[X_Log] ON
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (1, CAST(0x0000A1F700B0D29A AS DateTime), N'13', N'INFO', N'AppBox._default', N'登录成功：用户“admin”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (2, CAST(0x0000A1F700B7CB2F AS DateTime), N'5', N'WARN', N'AppBox._default', N'登录失败：用户“管理员”密码错误', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (3, CAST(0x0000A1F700B7D14D AS DateTime), N'5', N'WARN', N'AppBox._default', N'登录失败：用户“管理员”密码错误', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (4, CAST(0x0000A1F700B7EDAE AS DateTime), N'4', N'WARN', N'AppBox._default', N'登录失败：用户“管理员”密码错误', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (5, CAST(0x0000A1F700B7FCBC AS DateTime), N'11', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (6, CAST(0x0000A1F700B9C23B AS DateTime), N'15', N'INFO', N'AppBox._default', N'登录成功：用户“分局”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (7, CAST(0x0000A1F700B9D63E AS DateTime), N'13', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (8, CAST(0x0000A1F700BA8326 AS DateTime), N'11', N'INFO', N'AppBox._default', N'登录成功：用户“看守所”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (9, CAST(0x0000A1F700BA952B AS DateTime), N'11', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (10, CAST(0x0000A1F700BACA73 AS DateTime), N'13', N'INFO', N'AppBox._default', N'登录成功：用户“派出所”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (11, CAST(0x0000A1F700BAE6B4 AS DateTime), N'16', N'INFO', N'AppBox._default', N'登录成功：用户“看守所”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (12, CAST(0x0000A1F700BAF72F AS DateTime), N'5', N'WARN', N'AppBox._default', N'登录失败：用户“管理员”密码错误', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (13, CAST(0x0000A1F700BAFE99 AS DateTime), N'4', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (14, CAST(0x0000A1F700BB18D2 AS DateTime), N'4', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (15, CAST(0x0000A1F700DD727B AS DateTime), N'9', N'INFO', N'AppBox._default', N'登录成功：用户“派出所”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (16, CAST(0x0000A1F700DE62C0 AS DateTime), N'22', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (17, CAST(0x0000A2030103AB32 AS DateTime), N'5', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (18, CAST(0x0000A2030103D0CE AS DateTime), N'14', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (19, CAST(0x0000A204009DE82D AS DateTime), N'4', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (20, CAST(0x0000A20500904A6F AS DateTime), N'13', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (21, CAST(0x0000A20500F72542 AS DateTime), N'199', N'WARN', N'AppBox._default', N'登录失败：用户“管理员”密码错误', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (22, CAST(0x0000A20500F72952 AS DateTime), N'197', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (23, CAST(0x0000A20501183888 AS DateTime), N'4', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (24, CAST(0x0000A20600DF073C AS DateTime), N'10', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (25, CAST(0x0000A206011331AA AS DateTime), N'12', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (26, CAST(0x0000A2070093B364 AS DateTime), N'5', N'WARN', N'AppBox._default', N'登录失败：用户“管理员”密码错误', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (27, CAST(0x0000A2070093BA33 AS DateTime), N'4', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (28, CAST(0x0000A20A00C01918 AS DateTime), N'15', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (29, CAST(0x0000A20A00C34EED AS DateTime), N'13', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (30, CAST(0x0000A20A00C40F68 AS DateTime), N'9', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (31, CAST(0x0000A20A00F0380C AS DateTime), N'8', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (32, CAST(0x0000A20B01110E33 AS DateTime), N'1', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (33, CAST(0x0000A21100A6032A AS DateTime), N'13', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (34, CAST(0x0000A21100A858F7 AS DateTime), N'1', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (35, CAST(0x0000A21100C7C0B5 AS DateTime), N'7', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (36, CAST(0x0000A21100E8524E AS DateTime), N'13', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (37, CAST(0x0000A212008A92AC AS DateTime), N'14', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (38, CAST(0x0000A212008C99FA AS DateTime), N'10', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (39, CAST(0x0000A21200F1C3B3 AS DateTime), N'10', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (40, CAST(0x0000A21200F58514 AS DateTime), N'7', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (41, CAST(0x0000A2120124FA7E AS DateTime), N'9', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (42, CAST(0x0000A213009850E5 AS DateTime), N'9', N'WARN', N'AppBox._default', N'登录失败：用户“管理员”密码错误', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (43, CAST(0x0000A213009857C3 AS DateTime), N'7', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (44, CAST(0x0000A21500857BF7 AS DateTime), N'9', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (45, CAST(0x0000A21800F61931 AS DateTime), N'9', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (46, CAST(0x0000A21900F50C6E AS DateTime), N'14', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (47, CAST(0x0000A21A00ABD7EE AS DateTime), N'22', N'WARN', N'AppBox._default', N'登录失败：用户“admin”不存在', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (48, CAST(0x0000A21A00ABE0EC AS DateTime), N'18', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (49, CAST(0x0000A21A01175DBD AS DateTime), N'18', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (50, CAST(0x0000A21B00B98F91 AS DateTime), N'5', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (51, CAST(0x0000A21F0094346C AS DateTime), N'10', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (52, CAST(0x0000A2230091074A AS DateTime), N'9', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (53, CAST(0x0000A22300BD0227 AS DateTime), N'12', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (54, CAST(0x0000A22300E348D2 AS DateTime), N'35', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (55, CAST(0x0000A22300FEAAE7 AS DateTime), N'20', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (56, CAST(0x0000A22600AE004A AS DateTime), N'14', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (57, CAST(0x0000A22600B0698E AS DateTime), N'14', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (58, CAST(0x0000A22600B6039E AS DateTime), N'5', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (59, CAST(0x0000A22600C2489C AS DateTime), N'12', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (60, CAST(0x0000A22600C9FE44 AS DateTime), N'16', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (61, CAST(0x0000A22600DB9AA2 AS DateTime), N'9', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (62, CAST(0x0000A22600DC2F80 AS DateTime), N'9', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (63, CAST(0x0000A22600DC827B AS DateTime), N'12', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (64, CAST(0x0000A22600DD2251 AS DateTime), N'20', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (65, CAST(0x0000A22600EA83C7 AS DateTime), N'20', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (66, CAST(0x0000A22600F05DDB AS DateTime), N'18', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (67, CAST(0x0000A22600F0D4E0 AS DateTime), N'4', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (68, CAST(0x0000A22700A70C4D AS DateTime), N'3', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (69, CAST(0x0000A22700EC6D21 AS DateTime), N'14', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (70, CAST(0x0000A22700EFBDEF AS DateTime), N'5', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (71, CAST(0x0000A22700FF9C59 AS DateTime), N'27', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (72, CAST(0x0000A227010835D3 AS DateTime), N'5', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (73, CAST(0x0000A227010AF319 AS DateTime), N'1', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (74, CAST(0x0000A228009BE5C2 AS DateTime), N'23', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (75, CAST(0x0000A228009C9829 AS DateTime), N'13', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (76, CAST(0x0000A22800F771DE AS DateTime), N'12', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (77, CAST(0x0000A22800F7D0E6 AS DateTime), N'1', N'WARN', N'AppBox._default', N'登录失败：用户“admin”不存在', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (78, CAST(0x0000A22800F7DB19 AS DateTime), N'13', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (79, CAST(0x0000A22800F8FF56 AS DateTime), N'12', N'WARN', N'AppBox._default', N'登录失败：用户“管理员”密码错误', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (80, CAST(0x0000A22800F90617 AS DateTime), N'21', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (81, CAST(0x0000A22800F9A4A5 AS DateTime), N'13', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (82, CAST(0x0000A22800FA1448 AS DateTime), N'21', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (83, CAST(0x0000A228010AA205 AS DateTime), N'8', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (84, CAST(0x0000A228010CAB52 AS DateTime), N'21', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (85, CAST(0x0000A22900B80DDF AS DateTime), N'19', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (86, CAST(0x0000A22900E61432 AS DateTime), N'1', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (87, CAST(0x0000A22A00BB4BBE AS DateTime), N'19', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (88, CAST(0x0000A22A00E0EF36 AS DateTime), N'24', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (89, CAST(0x0000A22A00F9E4E5 AS DateTime), N'10', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (90, CAST(0x0000A22D00B186CC AS DateTime), N'10', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (91, CAST(0x0000A22D00B933BD AS DateTime), N'18', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (92, CAST(0x0000A22D00E35164 AS DateTime), N'69', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (93, CAST(0x0000A22D0109AA43 AS DateTime), N'1', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (94, CAST(0x0000A22E009B9D57 AS DateTime), N'5', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (95, CAST(0x0000A22E009B56E2 AS DateTime), N'5', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (96, CAST(0x0000A22E00BD7642 AS DateTime), N'8', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (97, CAST(0x0000A22E00BF4E32 AS DateTime), N'9', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (98, CAST(0x0000A22E00EE47F5 AS DateTime), N'20', N'WARN', N'AppBox._default', N'登录失败：用户“股那里呀”不存在', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (99, CAST(0x0000A22E00EE4C0A AS DateTime), N'12', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (100, CAST(0x0000A22E01155E29 AS DateTime), N'21', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
GO
print 'Processed 100 total records'
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (101, CAST(0x0000A22E011DC1F8 AS DateTime), N'5', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (102, CAST(0x0000A22F00BB3A04 AS DateTime), N'15', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (103, CAST(0x0000A22F00EA72A4 AS DateTime), N'16', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (104, CAST(0x0000A23400AAE9C4 AS DateTime), N'1', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (105, CAST(0x0000A23400F737CE AS DateTime), N'5', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (106, CAST(0x0000A2350097A114 AS DateTime), N'7', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (107, CAST(0x0000A23500984AB0 AS DateTime), N'7', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (108, CAST(0x0000A235011EB6B9 AS DateTime), N'7', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (109, CAST(0x0000A23600B01C31 AS DateTime), N'7', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (110, CAST(0x0000A23700A99844 AS DateTime), N'6', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (111, CAST(0x0000A23800F96D91 AS DateTime), N'1', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (112, CAST(0x0000A2380127A169 AS DateTime), N'7', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (113, CAST(0x0000A23B00D8BE4E AS DateTime), N'15', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (114, CAST(0x0000A23B00E782E2 AS DateTime), N'6', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (115, CAST(0x0000A23C00A95D4E AS DateTime), N'8', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (116, CAST(0x00009F6100AA01E2 AS DateTime), N'8', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (117, CAST(0x0000A23C00B1CCBE AS DateTime), N'9', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (118, CAST(0x0000A23C00E7BE07 AS DateTime), N'13', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (119, CAST(0x0000A23C00EF49EB AS DateTime), N'6', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (120, CAST(0x00009F6100FC5E75 AS DateTime), N'8', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (121, CAST(0x0000A23D00926ACE AS DateTime), N'4', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (122, CAST(0x0000A23D00A340CC AS DateTime), N'5', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (123, CAST(0x0000A23D00A6C046 AS DateTime), N'1', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (124, CAST(0x00009F6200B38563 AS DateTime), N'4', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (125, CAST(0x0000A23D00CD0526 AS DateTime), N'1', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (126, CAST(0x00009F6200FD2A0D AS DateTime), N'8', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (127, CAST(0x00009F660091B411 AS DateTime), N'9', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (128, CAST(0x0000A2410095CD30 AS DateTime), N'4', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (129, CAST(0x0000A2410099B403 AS DateTime), N'19', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (130, CAST(0x0000A24100A7EA35 AS DateTime), N'20', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (131, CAST(0x00009F6600D88414 AS DateTime), N'4', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (132, CAST(0x0000A24100DE49A5 AS DateTime), N'20', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (133, CAST(0x0000A24100DF4DBF AS DateTime), N'1', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (134, CAST(0x0000A24100E08CCF AS DateTime), N'20', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (135, CAST(0x0000A24200A52380 AS DateTime), N'5', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (136, CAST(0x0000A24200CE8AF2 AS DateTime), N'47', N'WARN', N'AppBox._default', N'登录失败：用户“股那里呀”不存在', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (137, CAST(0x0000A24200CE8E97 AS DateTime), N'1', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (138, CAST(0x0000A24200D926D7 AS DateTime), N'15', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (139, CAST(0x00009F6700DB8D24 AS DateTime), N'8', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (140, CAST(0x0000A24200DC8CA0 AS DateTime), N'8', N'WARN', N'AppBox._default', N'登录失败：用户“管理员”密码错误', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (141, CAST(0x0000A24200DC904A AS DateTime), N'4', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (142, CAST(0x0000A24200EE19A2 AS DateTime), N'19', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (143, CAST(0x00009F6700FA45E7 AS DateTime), N'13', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (144, CAST(0x0000A242010CFEFB AS DateTime), N'1', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (145, CAST(0x0000A242010E73CE AS DateTime), N'16', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (146, CAST(0x0000A243009E63B3 AS DateTime), N'5', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (147, CAST(0x00009F6800AB0079 AS DateTime), N'8', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (148, CAST(0x0000A24300C0E52A AS DateTime), N'10', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (149, CAST(0x00009F6800DFF684 AS DateTime), N'16', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (150, CAST(0x00009F6800E03F06 AS DateTime), N'4', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (151, CAST(0x0000A24300E2A460 AS DateTime), N'8', N'WARN', N'AppBox._default', N'登录失败：用户“zhjk”不存在', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (152, CAST(0x0000A24300E5E64F AS DateTime), N'8', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (153, CAST(0x0000A24301148FDB AS DateTime), N'5', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (154, CAST(0x0000A244009A3272 AS DateTime), N'4', N'WARN', N'AppBox._default', N'登录失败：用户“管理员1”不存在', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (155, CAST(0x0000A244009A3BF7 AS DateTime), N'10', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (156, CAST(0x0000A24400A0263B AS DateTime), N'9', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (157, CAST(0x00009F6900B5B3A3 AS DateTime), N'4', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (158, CAST(0x0000A24400E60135 AS DateTime), N'9', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (159, CAST(0x00009F6A00919101 AS DateTime), N'4', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (160, CAST(0x0000A2450092F31C AS DateTime), N'19', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (161, CAST(0x0000A24500A9A0FC AS DateTime), N'11', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (162, CAST(0x0000A24500B616AC AS DateTime), N'3', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (163, CAST(0x0000A24500B62A9F AS DateTime), N'10', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (164, CAST(0x0000A24500BB963B AS DateTime), N'9', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (165, CAST(0x0000A24500DBB53E AS DateTime), N'16', N'WARN', N'AppBox._default', N'登录失败：用户“股那里呀”不存在', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (166, CAST(0x0000A24500DBB9B0 AS DateTime), N'22', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (167, CAST(0x00009F6A00DED776 AS DateTime), N'4', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (168, CAST(0x0000A24500E80EDE AS DateTime), N'8', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (169, CAST(0x0000A24500EBE69E AS DateTime), N'15', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (170, CAST(0x0000A24500F134E1 AS DateTime), N'19', N'ERROR', N'File', N'1', N'System.Collections.Generic.KeyNotFoundException: 给定关键字不在字典中。
   在 System.Collections.Generic.Dictionary`2.get_Item(TKey key)
   在 AppBox.Business.TestdataHelp.Testdata() 位置 C:\Documents and Settings\Administrator\桌面\ZHJKS3\Business\TestdataHelp.cs:行号 100')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (171, CAST(0x0000A24500F134EF AS DateTime), N'19', N'ERROR', N'File', N'1', N'System.Collections.Generic.KeyNotFoundException: 给定关键字不在字典中。
   在 System.Collections.Generic.Dictionary`2.get_Item(TKey key)
   在 AppBox.Business.TestdataHelp.Testdata() 位置 C:\Documents and Settings\Administrator\桌面\ZHJKS3\Business\TestdataHelp.cs:行号 100')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (172, CAST(0x0000A24500F9413C AS DateTime), N'4', N'ERROR', N'File', N'1', N'System.Collections.Generic.KeyNotFoundException: 给定关键字不在字典中。
   在 System.Collections.Generic.Dictionary`2.get_Item(TKey key)
   在 AppBox.Business.TestdataHelp.Testdata() 位置 C:\Documents and Settings\Administrator\桌面\ZHJKS3\Business\TestdataHelp.cs:行号 100')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (173, CAST(0x0000A24500F9414A AS DateTime), N'4', N'ERROR', N'File', N'1', N'System.Collections.Generic.KeyNotFoundException: 给定关键字不在字典中。
   在 System.Collections.Generic.Dictionary`2.get_Item(TKey key)
   在 AppBox.Business.TestdataHelp.Testdata() 位置 C:\Documents and Settings\Administrator\桌面\ZHJKS3\Business\TestdataHelp.cs:行号 100')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (174, CAST(0x0000A245010E6426 AS DateTime), N'4', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (175, CAST(0x0000A245011257E6 AS DateTime), N'24', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (176, CAST(0x0000A24501134E73 AS DateTime), N'10', N'ERROR', N'File', N'1', N'System.Collections.Generic.KeyNotFoundException: 给定关键字不在字典中。
   在 System.Collections.Generic.Dictionary`2.get_Item(TKey key)
   在 AppBox.Business.TestdataHelp.Testdata() 位置 C:\Documents and Settings\Administrator\桌面\ZHJKS3\Business\TestdataHelp.cs:行号 100')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (177, CAST(0x0000A24501134E7C AS DateTime), N'10', N'ERROR', N'File', N'1', N'System.Collections.Generic.KeyNotFoundException: 给定关键字不在字典中。
   在 System.Collections.Generic.Dictionary`2.get_Item(TKey key)
   在 AppBox.Business.TestdataHelp.Testdata() 位置 C:\Documents and Settings\Administrator\桌面\ZHJKS3\Business\TestdataHelp.cs:行号 100')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (178, CAST(0x0000A245011356D8 AS DateTime), N'3', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (179, CAST(0x0000A2450114D192 AS DateTime), N'17', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (180, CAST(0x0000A2460096AE5A AS DateTime), N'4', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (181, CAST(0x00009F6B00977E7D AS DateTime), N'10', N'WARN', N'AppBox._default', N'登录失败：用户“管理员1”不存在', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (182, CAST(0x00009F6B00978695 AS DateTime), N'10', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (183, CAST(0x0000A24600CC5D36 AS DateTime), N'18', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (184, CAST(0x00009F6B00E2A004 AS DateTime), N'4', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (185, CAST(0x0000A24600E3BDA0 AS DateTime), N'16', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (186, CAST(0x00009F6B00F3D89C AS DateTime), N'4', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (187, CAST(0x0000A2480095ED16 AS DateTime), N'10', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (188, CAST(0x0000A248009AF1BB AS DateTime), N'7', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (189, CAST(0x0000A248009BD2D1 AS DateTime), N'11', N'WARN', N'AppBox._default', N'登录失败：用户“admin”密码错误', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (190, CAST(0x0000A248009BD67E AS DateTime), N'15', N'INFO', N'AppBox._default', N'登录成功：用户“admin”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (191, CAST(0x0000A248009C81C4 AS DateTime), N'10', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (192, CAST(0x0000A248009CA1ED AS DateTime), N'25', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (193, CAST(0x0000A248009CB800 AS DateTime), N'17', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (194, CAST(0x0000A248009CFE7C AS DateTime), N'22', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (195, CAST(0x0000A248009D3C53 AS DateTime), N'23', N'INFO', N'AppBox._default', N'登录成功：用户“admin”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (196, CAST(0x0000A24800B59BD8 AS DateTime), N'3', N'INFO', N'AppBox._default', N'登录成功：用户“admin”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (197, CAST(0x0000A24800BAAB53 AS DateTime), N'5', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (198, CAST(0x0000A24800F3F578 AS DateTime), N'4', N'INFO', N'AppBox._default', N'登录成功：用户“admin”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (199, CAST(0x0000A24801123E0B AS DateTime), N'8', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (200, CAST(0x0000A249009911C3 AS DateTime), N'4', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (201, CAST(0x0000A24900ECF4A0 AS DateTime), N'245', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
GO
print 'Processed 200 total records'
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (202, CAST(0x0000A24900F98F13 AS DateTime), N'5', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (203, CAST(0x00009F77009E5443 AS DateTime), N'4', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (204, CAST(0x0000A25200A868C0 AS DateTime), N'9', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (205, CAST(0x0000A25200B36EC1 AS DateTime), N'9', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (206, CAST(0x0000A25200C6BBC8 AS DateTime), N'3', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (207, CAST(0x0000A25200DA7620 AS DateTime), N'5', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (208, CAST(0x0000A25200DACC9C AS DateTime), N'22', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (209, CAST(0x0000A25200DD1E75 AS DateTime), N'9', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
INSERT [dbo].[X_Log] ([LOGID], [DATETIME], [THREAD], [LOG_LEVEL], [LOGGER], [MESSAGE], [EXCEPTION]) VALUES (210, CAST(0x0000A25200E6326D AS DateTime), N'10', N'INFO', N'AppBox._default', N'登录成功：用户“管理员”', N'')
SET IDENTITY_INSERT [dbo].[X_Log] OFF
/****** Object:  Table [dbo].[X_JobTitleUser]    Script Date: 10/09/2013 17:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_JobTitleUser](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobTitleId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_X_JobTitleUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[X_JobTitleUser] ON
INSERT [dbo].[X_JobTitleUser] ([Id], [JobTitleId], [UserId]) VALUES (34, 13, 311)
SET IDENTITY_INSERT [dbo].[X_JobTitleUser] OFF
/****** Object:  Table [dbo].[X_JobTitle]    Script Date: 10/09/2013 17:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_JobTitle](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Remark] [nvarchar](200) NULL,
 CONSTRAINT [PK_X_JobTitle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[X_JobTitle] ON
INSERT [dbo].[X_JobTitle] ([Id], [Name], [Remark]) VALUES (1, N'工程师', N'')
INSERT [dbo].[X_JobTitle] ([Id], [Name], [Remark]) VALUES (3, N'部门经理', NULL)
INSERT [dbo].[X_JobTitle] ([Id], [Name], [Remark]) VALUES (8, N'总经理', N'')
INSERT [dbo].[X_JobTitle] ([Id], [Name], [Remark]) VALUES (13, N'高级工程师', N'')
SET IDENTITY_INSERT [dbo].[X_JobTitle] OFF
/****** Object:  Table [dbo].[X_DeptUser]    Script Date: 10/09/2013 17:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_DeptUser](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DeptId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_X_DeptUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[X_DeptUser] ON
INSERT [dbo].[X_DeptUser] ([Id], [DeptId], [UserId]) VALUES (24, 20, 311)
SET IDENTITY_INSERT [dbo].[X_DeptUser] OFF
/****** Object:  Table [dbo].[X_Dept]    Script Date: 10/09/2013 17:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_Dept](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Remark] [nvarchar](200) NULL,
	[ParentDeptId] [int] NOT NULL,
	[SortIndex] [int] NOT NULL,
 CONSTRAINT [PK_X_Dept] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[X_Dept] ON
INSERT [dbo].[X_Dept] ([Id], [Name], [Remark], [ParentDeptId], [SortIndex]) VALUES (20, N'44', N'44', 0, 44)
SET IDENTITY_INSERT [dbo].[X_Dept] OFF
/****** Object:  Table [dbo].[X_Config]    Script Date: 10/09/2013 17:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_Config](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ConfigKey] [nvarchar](50) NULL,
	[ConfigValue] [nvarchar](4000) NULL,
	[Remark] [nvarchar](200) NULL,
 CONSTRAINT [PK_X_Config] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[X_Config] ON
INSERT [dbo].[X_Config] ([Id], [ConfigKey], [ConfigValue], [Remark]) VALUES (1, N'Title', N'中环设备监控平台', N'网站的标题')
INSERT [dbo].[X_Config] ([Id], [ConfigKey], [ConfigValue], [Remark]) VALUES (5, N'PageSize', N'20', N'表格数据每页显示的个数')
INSERT [dbo].[X_Config] ([Id], [ConfigKey], [ConfigValue], [Remark]) VALUES (6, N'HelpList', N'[{
    "Text": "万年历",
    "Icon": "Calendar",
    "ID": "wannianli",
    "URL": "~/admin/help/wannianli.htm"
},
{
    "Text": "科学计算器",
    "Icon": "Calculator",
    "ID": "jisuanqi",
    "URL": "~/admin/help/jisuanqi.htm"
},
{
    "Text": "系统帮助",
    "Icon": "Help",
    "ID": "help",
    "URL": "~/admin/help/help.htm"
}]', N'帮助下拉列表')
INSERT [dbo].[X_Config] ([Id], [ConfigKey], [ConfigValue], [Remark]) VALUES (7, N'MenuType', N'tree', N'菜单样式')
INSERT [dbo].[X_Config] ([Id], [ConfigKey], [ConfigValue], [Remark]) VALUES (8, N'Theme', N'blue', N'网站主题')
SET IDENTITY_INSERT [dbo].[X_Config] OFF
/****** Object:  Table [dbo].[PZXM]    Script Date: 10/09/2013 17:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PZXM](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[PZA] [nvarchar](50) NULL,
	[PZB] [nvarchar](50) NULL,
	[PYY] [nvarchar](50) NULL,
 CONSTRAINT [PK_PZXM] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pzglzc]    Script Date: 10/09/2013 17:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pzglzc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PZGL] [int] NULL,
	[PZGLT] [int] NULL,
 CONSTRAINT [PK_Pzglzc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Pzglzc] ON
INSERT [dbo].[Pzglzc] ([Id], [PZGL], [PZGLT]) VALUES (2, 9, 1)
INSERT [dbo].[Pzglzc] ([Id], [PZGL], [PZGLT]) VALUES (3, 7, 1)
SET IDENTITY_INSERT [dbo].[Pzglzc] OFF
/****** Object:  Table [dbo].[pzgltdept]    Script Date: 10/09/2013 17:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pzgltdept](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Pid] [nvarchar](50) NULL,
	[PName] [nvarchar](50) NULL,
	[Quote] [nvarchar](50) NULL,
	[Remarks] [nvarchar](500) NULL,
 CONSTRAINT [PK_pzgltdept] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[pzgltdept] ON
INSERT [dbo].[pzgltdept] ([Id], [Pid], [PName], [Quote], [Remarks]) VALUES (4, N'7', N'7', N'7', N'7')
INSERT [dbo].[pzgltdept] ([Id], [Pid], [PName], [Quote], [Remarks]) VALUES (5, N'3', N'3', N'3', N'3')
INSERT [dbo].[pzgltdept] ([Id], [Pid], [PName], [Quote], [Remarks]) VALUES (6, N'1', N'3', N'2', N'4')
SET IDENTITY_INSERT [dbo].[pzgltdept] OFF
/****** Object:  Table [dbo].[PZGLT]    Script Date: 10/09/2013 17:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PZGLT](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[ParentMenuId] [int] NULL,
	[SortIndex] [int] NULL,
	[Remark] [nvarchar](50) NULL,
 CONSTRAINT [PK_PZGLT] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PZGLT] ON
INSERT [dbo].[PZGLT] ([Id], [Name], [Title], [ParentMenuId], [SortIndex], [Remark]) VALUES (1, N'44', N'44', 0, 0, NULL)
INSERT [dbo].[PZGLT] ([Id], [Name], [Title], [ParentMenuId], [SortIndex], [Remark]) VALUES (7, NULL, N'55', NULL, 0, N'')
INSERT [dbo].[PZGLT] ([Id], [Name], [Title], [ParentMenuId], [SortIndex], [Remark]) VALUES (8, NULL, N'333', NULL, 33, N'333')
INSERT [dbo].[PZGLT] ([Id], [Name], [Title], [ParentMenuId], [SortIndex], [Remark]) VALUES (10, N'服务器', N'服务器', 0, 2, N'')
INSERT [dbo].[PZGLT] ([Id], [Name], [Title], [ParentMenuId], [SortIndex], [Remark]) VALUES (11, N'惠普', N'惠普', 10, 2, N'')
INSERT [dbo].[PZGLT] ([Id], [Name], [Title], [ParentMenuId], [SortIndex], [Remark]) VALUES (12, N'戴尔', N'戴尔', 10, 1, N'')
INSERT [dbo].[PZGLT] ([Id], [Name], [Title], [ParentMenuId], [SortIndex], [Remark]) VALUES (13, N'华硕', N'华硕', 10, 3, N'')
INSERT [dbo].[PZGLT] ([Id], [Name], [Title], [ParentMenuId], [SortIndex], [Remark]) VALUES (14, N'77', N'77', 0, 1, N'')
SET IDENTITY_INSERT [dbo].[PZGLT] OFF
/****** Object:  Table [dbo].[PZGL]    Script Date: 10/09/2013 17:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PZGL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PName] [nvarchar](50) NULL,
	[Pid] [nvarchar](50) NULL,
	[PA] [nvarchar](50) NULL,
	[PB] [nvarchar](50) NULL,
	[P1] [nvarchar](50) NULL,
	[P2] [nvarchar](50) NULL,
	[P3] [nvarchar](50) NULL,
	[P4] [nvarchar](50) NULL,
	[P5] [nvarchar](50) NULL,
	[P6] [nvarchar](50) NULL,
	[P7] [nvarchar](50) NULL,
	[P8] [nvarchar](50) NULL,
	[P9] [nvarchar](50) NULL,
	[P10] [nvarchar](50) NULL,
	[P11] [nvarchar](50) NULL,
	[P12] [nvarchar](50) NULL,
	[P13] [nvarchar](50) NULL,
	[P14] [nvarchar](50) NULL,
	[P15] [nvarchar](50) NULL,
	[P16] [nvarchar](50) NULL,
	[P17] [nvarchar](50) NULL,
	[P18] [nvarchar](50) NULL,
	[P19] [nvarchar](50) NULL,
	[P20] [nvarchar](50) NULL,
	[PZYY] [nvarchar](500) NULL,
	[PZid] [int] NULL,
 CONSTRAINT [PK_PZGL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PZGL] ON
INSERT [dbo].[PZGL] ([Id], [PName], [Pid], [PA], [PB], [P1], [P2], [P3], [P4], [P5], [P6], [P7], [P8], [P9], [P10], [P11], [P12], [P13], [P14], [P15], [P16], [P17], [P18], [P19], [P20], [PZYY], [PZid]) VALUES (7, N'服务器', N'A4', NULL, NULL, N'678', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PZGL] ([Id], [PName], [Pid], [PA], [PB], [P1], [P2], [P3], [P4], [P5], [P6], [P7], [P8], [P9], [P10], [P11], [P12], [P13], [P14], [P15], [P16], [P17], [P18], [P19], [P20], [PZYY], [PZid]) VALUES (9, N'rf', N'er', NULL, NULL, N'r', N'f', N'f', N'', N'f', N'ff', N'', N'', N'', N'ff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PZGL] ([Id], [PName], [Pid], [PA], [PB], [P1], [P2], [P3], [P4], [P5], [P6], [P7], [P8], [P9], [P10], [P11], [P12], [P13], [P14], [P15], [P16], [P17], [P18], [P19], [P20], [PZYY], [PZid]) VALUES (12, N'1', N'11', NULL, NULL, N'2', N'22', N'3', N'33', N'4', N'44', N'5', N'55', N'6', N'66', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[PZGL] OFF
/****** Object:  View [dbo].[PCINFO2]    Script Date: 10/09/2013 17:38:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PCINFO2]
AS
SELECT     dbo.IP_t.IP, dbo.Oid_t.DEVNAME, dbo.Oid_t.C4, dbo.Oid_t.C5, dbo.Oid_t.C6, dbo.Oid_t.C7, dbo.Oid_t.C8, dbo.Oid_t.DEVUPtime
FROM         dbo.IP_t INNER JOIN
                      dbo.Oid_t ON dbo.IP_t.OSid = dbo.Oid_t.OSid
WHERE     (dbo.IP_t.OSid = '6')
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "IP_t"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 91
               Right = 172
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Oid_t"
            Begin Extent = 
               Top = 6
               Left = 210
               Bottom = 121
               Right = 347
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PCINFO2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PCINFO2'
GO
/****** Object:  View [dbo].[PCINFO]    Script Date: 10/09/2013 17:38:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PCINFO]
AS
SELECT     dbo.IP_t.IP, dbo.Oid_t.DEVNAME, dbo.Oid_t.DEVUPtime, dbo.Oid_t.sysContact, dbo.Oid_t.sysName
FROM         dbo.IP_t INNER JOIN
                      dbo.Oid_t ON dbo.IP_t.OSid = dbo.Oid_t.OSid
WHERE     (dbo.IP_t.OSid = '5')
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "IP_t"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 91
               Right = 172
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Oid_t"
            Begin Extent = 
               Top = 6
               Left = 210
               Bottom = 121
               Right = 347
            End
            DisplayFlags = 280
            TopColumn = 3
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PCINFO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PCINFO'
GO
