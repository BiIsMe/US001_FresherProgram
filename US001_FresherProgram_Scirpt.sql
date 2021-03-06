USE [US001_FRESHERPRG]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 9/17/2021 12:17:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clients](
	[clientnumber] [varchar](8) NOT NULL,
	[firstname] [varchar](60) NULL,
	[lastname] [varchar](60) NULL,
	[gender] [varchar](3) NULL,
	[dob] [date] NULL,
	[identitynumber] [varchar](8) NULL,
	[maritalstatus] [varchar](3) NULL,
	[address] [varchar](120) NULL,
	[country] [varchar](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[clientnumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Country]    Script Date: 9/17/2021 12:17:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Country](
	[code] [varchar](3) NOT NULL,
	[value] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 9/17/2021 12:17:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Gender](
	[code] [varchar](3) NOT NULL,
	[value] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Maritalstatus]    Script Date: 9/17/2021 12:17:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Maritalstatus](
	[code] [varchar](3) NOT NULL,
	[value] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MessageE]    Script Date: 9/17/2021 12:17:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MessageE](
	[id] [varchar](4) NOT NULL,
	[content] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Store]    Script Date: 9/17/2021 12:17:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[createdate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 9/17/2021 12:17:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[username] [varchar](20) NOT NULL,
	[password] [varchar](40) NULL,
	[role] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Clients] ([clientnumber], [firstname], [lastname], [gender], [dob], [identitynumber], [maritalstatus], [address], [country]) VALUES (N'00000001', N'Thanh', N'Doan', N'M', CAST(N'1995-08-13' AS Date), N'acl-0001', N'S', N'Sai Gon  city', N'VNI')
INSERT [dbo].[Clients] ([clientnumber], [firstname], [lastname], [gender], [dob], [identitynumber], [maritalstatus], [address], [country]) VALUES (N'00000002', N'Sakura', N'Yuno', N'F', CAST(N'1992-12-04' AS Date), N'acl-0002', N'M', N'Tokyo city', N'JPN')
INSERT [dbo].[Clients] ([clientnumber], [firstname], [lastname], [gender], [dob], [identitynumber], [maritalstatus], [address], [country]) VALUES (N'00000003', N'Dean', N'Winchester', N'M', CAST(N'1981-03-10' AS Date), N'acl-0003', N'D', N'California', N'USA')
INSERT [dbo].[Clients] ([clientnumber], [firstname], [lastname], [gender], [dob], [identitynumber], [maritalstatus], [address], [country]) VALUES (N'00000004', N'Vichi', N'Inseder', N'U', CAST(N'1999-11-22' AS Date), N'acl-0004', N'S', N'Singapor', N'SIN')
INSERT [dbo].[Clients] ([clientnumber], [firstname], [lastname], [gender], [dob], [identitynumber], [maritalstatus], [address], [country]) VALUES (N'00000005', N'Vusiuui', N'Benje', N'F', CAST(N'1989-05-21' AS Date), N'acl-0005', N'M', N'Kuala Lumpua', N'MAL')
INSERT [dbo].[Clients] ([clientnumber], [firstname], [lastname], [gender], [dob], [identitynumber], [maritalstatus], [address], [country]) VALUES (N'00000006', N'Bo', N'Duc', N'U', CAST(N'2000-06-17' AS Date), N'acl-0006', N'D', N'Cat house', N'VNI')
INSERT [dbo].[Clients] ([clientnumber], [firstname], [lastname], [gender], [dob], [identitynumber], [maritalstatus], [address], [country]) VALUES (N'00000007', N'Hikaru', N'Ichi', N'M', CAST(N'2001-09-08' AS Date), N'acl-0007', N'M', N'Okinawa', N'JPN')
INSERT [dbo].[Country] ([code], [value]) VALUES (N'JPN', N'Japan')
INSERT [dbo].[Country] ([code], [value]) VALUES (N'MAL', N'Malaysia')
INSERT [dbo].[Country] ([code], [value]) VALUES (N'SIN', N'Singapore')
INSERT [dbo].[Country] ([code], [value]) VALUES (N'USA', N'United States')
INSERT [dbo].[Country] ([code], [value]) VALUES (N'VNI', N'Vietnam')
INSERT [dbo].[Gender] ([code], [value]) VALUES (N'F', N'Female')
INSERT [dbo].[Gender] ([code], [value]) VALUES (N'M', N'Male')
INSERT [dbo].[Gender] ([code], [value]) VALUES (N'U', N'Unknow')
INSERT [dbo].[Maritalstatus] ([code], [value]) VALUES (N'D', N'Divorced')
INSERT [dbo].[Maritalstatus] ([code], [value]) VALUES (N'M', N'Married')
INSERT [dbo].[Maritalstatus] ([code], [value]) VALUES (N'S', N'Single')
INSERT [dbo].[MessageE] ([id], [content]) VALUES (N'dt01', N'Please check all the form')
INSERT [dbo].[MessageE] ([id], [content]) VALUES (N'id01', N'Identity Number already exists')
INSERT [dbo].[MessageE] ([id], [content]) VALUES (N'id02', N'Fail to create')
INSERT [dbo].[MessageE] ([id], [content]) VALUES (N'id03', N'Fail to update')
INSERT [dbo].[MessageE] ([id], [content]) VALUES (N'lg01', N'Please input username')
INSERT [dbo].[MessageE] ([id], [content]) VALUES (N'lg02', N'Please input password')
INSERT [dbo].[MessageE] ([id], [content]) VALUES (N'lg03', N'Unable to signin')
SET IDENTITY_INSERT [dbo].[Store] ON 

INSERT [dbo].[Store] ([id], [createdate]) VALUES (8, CAST(N'2021-09-16 01:39:54.137' AS DateTime))
INSERT [dbo].[Store] ([id], [createdate]) VALUES (9, CAST(N'2021-09-16 01:39:54.670' AS DateTime))
INSERT [dbo].[Store] ([id], [createdate]) VALUES (10, CAST(N'2021-09-16 00:00:00.000' AS DateTime))
INSERT [dbo].[Store] ([id], [createdate]) VALUES (11, CAST(N'2021-09-16 00:00:00.000' AS DateTime))
INSERT [dbo].[Store] ([id], [createdate]) VALUES (12, CAST(N'2021-09-16 00:00:00.000' AS DateTime))
INSERT [dbo].[Store] ([id], [createdate]) VALUES (13, CAST(N'2021-09-16 00:00:00.000' AS DateTime))
INSERT [dbo].[Store] ([id], [createdate]) VALUES (1013, CAST(N'2021-09-17 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Store] OFF
INSERT [dbo].[Users] ([username], [password], [role]) VALUES (N'lchong2', N'abcd123!', 1)
INSERT [dbo].[Users] ([username], [password], [role]) VALUES (N'thanhdc', N'asdf1234', 1)
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD FOREIGN KEY([country])
REFERENCES [dbo].[Country] ([code])
GO
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD FOREIGN KEY([gender])
REFERENCES [dbo].[Gender] ([code])
GO
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD FOREIGN KEY([maritalstatus])
REFERENCES [dbo].[Maritalstatus] ([code])
GO
