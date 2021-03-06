CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_BloodGroup]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_BloodGroup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BloodGroup_Name] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_sys_BloodGroup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_Branches]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_Branches](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Branch_Name] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_sys_Branches] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_Cast]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_Cast](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cast_Name] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_Compnays]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_Compnays](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Compnay_Name] [nvarchar](max) NULL,
	[Compnay_Code] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_sys_Compnays] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_COUNTRies]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_COUNTRies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Country_Name] [nvarchar](max) NULL,
	[Country_Short_Code] [nvarchar](max) NULL,
	[Country_Code] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
	[Status_Id] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[Action_Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK_sys_COUNTRies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_DEPARTMENTs]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_DEPARTMENTs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Branch_Id] [int] NOT NULL,
	[Department_Name] [nvarchar](max) NULL,
	[Department_Code] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
	[Status_Id] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[Action_Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK_sys_DEPARTMENTs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_DESIGNATIONs]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_DESIGNATIONs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Department_Id] [int] NOT NULL,
	[Designation_Name] [nvarchar](max) NOT NULL,
	[Designation_Code] [int] NOT NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
	[Status_Id] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[Action_Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK_sys_DESIGNATIONs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_DISTRICTs]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_DISTRICTs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[State_Id] [int] NOT NULL,
	[District_Name] [nvarchar](max) NULL,
	[District_Short_Code] [nvarchar](max) NULL,
	[District_Code] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
	[Status_Id] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[Action_Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK_sys_DISTRICTs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_Employee_Category]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_Employee_Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Category_Name] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_Employee_Type]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_Employee_Type](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type_Name] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_HigherAuthority]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_HigherAuthority](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HigherAuthority] [nvarchar](max) NULL,
	[Status_Id] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[Action_Remarks] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_HigherAuthorityBranch]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_HigherAuthorityBranch](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HigherAuthority_Branch] [nvarchar](max) NULL,
	[Status_Id] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[Action_Remarks] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_HigherAuthorityName]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_HigherAuthorityName](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HigherAuthority_Name] [nvarchar](max) NULL,
	[Status_Id] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[Action_Remarks] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_PRODUCTIONs]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_PRODUCTIONs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Production_Unit_Name] [nvarchar](max) NULL,
	[Production_Unit_Branch_Id] [int] NOT NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_sys_PRODUCTIONs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_REGION_ZONE]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_REGION_ZONE](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Country_Id] [int] NOT NULL,
	[Zone_Name] [nvarchar](max) NULL,
	[Zone_Short_Code] [nvarchar](max) NULL,
	[Zone_Code] [nvarchar](max) NULL,
	[Status_Id] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[Action_Remarks] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_REGIONs]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_REGIONs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Country_Id] [int] NOT NULL,
	[Zone_Name] [nvarchar](max) NULL,
	[Zone_Short_Code] [nvarchar](max) NULL,
	[Zone_Code] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
	[Status_Id] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[Action_Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK_sys_REGIONs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_RelationShip]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_RelationShip](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RelationShip_Name] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_STATE]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_STATE](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Zone_Id] [int] NOT NULL,
	[State_Name] [nvarchar](max) NULL,
	[State_Short_Code] [nvarchar](max) NULL,
	[State_Code] [nvarchar](max) NULL,
	[Status_Id] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[Action_Remarks] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_STATEs]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_STATEs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Zone_Id] [int] NOT NULL,
	[State_Name] [nvarchar](max) NULL,
	[State_Short_Code] [nvarchar](max) NULL,
	[State_Code] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
	[Status_Id] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[Action_Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK_sys_STATEs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_ThirdParty]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_ThirdParty](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ThirdParty_Name] [nvarchar](max) NULL,
	[Status_Id] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[Action_Remarks] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_ThirdPartyType]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_ThirdPartyType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ThirdPartyType_Name] [nvarchar](max) NULL,
	[Status_Id] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[Action_Remarks] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_UserType]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_UserType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserType_Name] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sys_Warehouses]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Warehouses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Warehouse_Name] [nvarchar](max) NULL,
	[Warehouse_Branch_Id] [int] NOT NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Sys_Warehouses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_WorkingStatus]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_WorkingStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WorkingStatus_Name] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_CorresspondanceContactInformation]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CorresspondanceContactInformation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Address1] [nvarchar](100) NULL,
	[Country] [int] NULL,
	[Zone] [int] NULL,
	[State] [int] NULL,
	[City] [nvarchar](max) NULL,
	[Pin] [nvarchar](100) NULL,
	[Status_Id] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[Action_Remarks] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_EducationalQualification]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_EducationalQualification](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Educational_Qualification] [nvarchar](max) NULL,
	[Status_Id] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[Action_Remarks] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
	[Employee_Id] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_EmployeeMaster]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_EmployeeMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NOT NULL,
	[EmployeeCategoryId] [int] NOT NULL,
	[EmployeeCode] [nvarchar](max) NULL,
	[BiometricCode] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[MiddleName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Project_BranchId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[DesignationId] [int] NOT NULL,
	[Higher_Authority_Branch_ProjectId] [int] NOT NULL,
	[Higher_AuthorityId] [int] NOT NULL,
	[Higher_Authority_NameId] [int] NOT NULL,
	[Date_Of_Joining] [datetime] NOT NULL,
	[Email_Adress] [nvarchar](max) NULL,
	[Employee_TypeId] [int] NOT NULL,
	[Mobile_No] [nvarchar](max) NULL,
	[Third_Party_Type] [int] NOT NULL,
	[Third_Party_Id] [int] NOT NULL,
	[Working_StatusId] [int] NOT NULL,
	[Probation_Period] [int] NOT NULL,
	[ReferenceEmployeeName] [int] NOT NULL,
	[Reference_Phone_No] [nvarchar](max) NULL,
	[Date_Of_Birth] [datetime] NOT NULL,
	[Gender] [nvarchar](20) NULL,
	[Nationality] [nvarchar](50) NULL,
	[Religion] [nvarchar](50) NULL,
	[CastId] [int] NULL,
	[PhysicalDisability] [bit] NULL,
	[Blood_GroupId] [int] NULL,
	[Marital_StatusId] [int] NULL,
	[Identification_Mark] [nvarchar](max) NULL,
	[Status_Id] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[Action_Remarks] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_FamilyDetails]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_FamilyDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Relationship] [int] NULL,
	[Date_Of_Birth] [nvarchar](100) NULL,
	[Aadhar_No] [nvarchar](100) NULL,
	[Aadhar_Status] [nvarchar](100) NULL,
	[Address] [nvarchar](max) NULL,
	[Contact_No] [nvarchar](100) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
	[Employee_Id] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_HigherAuthorityBranch]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HigherAuthorityBranch](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HigherAuthority_Branch] [nvarchar](max) NULL,
	[Status_Id] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[Action_Remarks] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_HighestQualification]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HighestQualification](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Highest_Qualification] [nvarchar](max) NULL,
	[Status_Id] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[Action_Remarks] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tBL_HR_EMPLOYEE_ACTIVATION_OTP_DETAILs]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tBL_HR_EMPLOYEE_ACTIVATION_OTP_DETAILs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Id] [int] NOT NULL,
	[OTP_Details] [nvarchar](max) NULL,
	[OTP_Genaration_Date] [datetime2](7) NOT NULL,
	[OTP_Valid_From] [datetime2](7) NOT NULL,
	[OTP_Valid_To] [datetime2](7) NOT NULL,
	[Status_Id] [int] NOT NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_tBL_HR_EMPLOYEE_ACTIVATION_OTP_DETAILs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tBL_HR_EMPLOYEE_DETAILs]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tBL_HR_EMPLOYEE_DETAILs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Id] [int] NULL,
	[Gender_Id] [int] NULL,
	[Emp_DOB] [datetime2](7) NULL,
	[Emp_DOJ] [datetime2](7) NULL,
	[Emp_DOL] [datetime2](7) NULL,
	[Emp_State_Id] [int] NULL,
	[Emp_Address] [nvarchar](max) NULL,
	[Emp_Address2] [nvarchar](max) NULL,
	[Emp_Zip_Code] [nvarchar](max) NULL,
	[Emp_City] [nvarchar](max) NULL,
	[Emp_Correspond_Address] [nvarchar](max) NULL,
	[Emp_Correspond_Address2] [nvarchar](max) NULL,
	[Emp_Correspond_Zip_Code] [nvarchar](max) NULL,
	[Emp_Correspond_City] [nvarchar](max) NULL,
	[Emp_Alternate_Mobile_No] [nvarchar](max) NULL,
	[Emp_Contact_No] [nvarchar](max) NULL,
	[Emp_Alternate_Email_Id] [nvarchar](max) NULL,
	[Enum_Type_Id_Nationality] [int] NOT NULL,
	[Enum_Id_Nationality] [int] NOT NULL,
	[Enum_Type_Id_Religion] [int] NOT NULL,
	[Enum_Id_Religion] [int] NOT NULL,
	[Enum_Type_Id_MaritalStatus] [int] NOT NULL,
	[Enum_Id_MaritalStatus] [int] NOT NULL,
	[Enum_Type_Id_BloodGroup] [int] NOT NULL,
	[Enum_Id_BloodGroup] [int] NOT NULL,
	[Enum_Type_Id_Cast] [int] NOT NULL,
	[Enum_Id_Cast] [int] NOT NULL,
	[Enum_Type_Id_PhysicalDisability] [int] NOT NULL,
	[Enum_Id_PhysicalDisability] [int] NOT NULL,
	[Emp_IdentificationMark] [nvarchar](max) NULL,
	[Enum_Type_Id_HighestQualification] [int] NOT NULL,
	[Enum_Id_HighestQualification] [int] NOT NULL,
	[Enum_Type_Id_Bank] [int] NOT NULL,
	[Enum_Id_Bank] [int] NOT NULL,
	[Emp_Bank_IFSC] [nvarchar](max) NULL,
	[Emp_Bank_AccountNo] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tBL_HR_EMPLOYEE_EDUCATION_DETAILs]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tBL_HR_EMPLOYEE_EDUCATION_DETAILs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Id] [int] NOT NULL,
	[Enum_Id] [int] NOT NULL,
	[Emp_Year_OF_Passing] [int] NOT NULL,
	[Emp_Organization] [nvarchar](max) NULL,
	[Emp_Board_Council_University] [nvarchar](max) NULL,
	[Emp_Qualification_Percent] [nvarchar](max) NULL,
	[Emp_Qualification_Percentile] [nvarchar](max) NULL,
	[Remarks] [nvarchar](max) NULL,
	[AttachmentType_Path] [nvarchar](max) NULL,
	[Attachment_Type] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tBL_HR_EMPLOYEE_EDUCATION_s]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tBL_HR_EMPLOYEE_EDUCATION_s](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Id] [int] NULL,
	[Enum_Id] [int] NULL,
	[Emp_Year_OF_Passing] [int] NULL,
	[Emp_Organization] [nvarchar](max) NULL,
	[Emp_Board_Council_University] [nvarchar](max) NULL,
	[Emp_Qualification_Percent] [nvarchar](max) NULL,
	[Emp_Qualification_Percentile] [nvarchar](max) NULL,
	[Remarks] [nvarchar](max) NULL,
	[AttachmentType_Path] [nvarchar](max) NULL,
	[Attachment_Type] [nvarchar](max) NULL,
 CONSTRAINT [PK_tBL_HR_EMPLOYEE_EDUCATION_s] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tBL_HR_EMPLOYEE_EXPERIENCE_DETAILs]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tBL_HR_EMPLOYEE_EXPERIENCE_DETAILs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Id] [int] NOT NULL,
	[Employer_Name] [nvarchar](max) NULL,
	[Employer_Address] [nvarchar](max) NULL,
	[Employer_StateId] [int] NOT NULL,
	[Employer_Zip_Code] [nvarchar](max) NULL,
	[Employer_City] [nvarchar](max) NULL,
	[Employer_Contact_Preson] [nvarchar](max) NULL,
	[Employer_Contact_Designation] [nvarchar](max) NULL,
	[Employer_Contact_Mobile] [nvarchar](max) NULL,
	[Employer_Contact_EmailId] [nvarchar](max) NULL,
	[Last_Drawn_Salary] [decimal](18, 2) NOT NULL,
	[Employer_DOJ] [datetime2](7) NOT NULL,
	[Employer_DOL] [datetime2](7) NOT NULL,
	[Reason_Of_Leaving] [nvarchar](max) NULL,
	[Remarks] [nvarchar](max) NULL,
	[AttachmentType_Path] [nvarchar](max) NULL,
	[Attachment_Type] [nvarchar](max) NULL,
 CONSTRAINT [PK_tBL_HR_EMPLOYEE_EXPERIENCE_DETAILs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tBL_HR_EMPLOYEE_FAMILY_DETAILs]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tBL_HR_EMPLOYEE_FAMILY_DETAILs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Id] [int] NOT NULL,
	[Enum_Id_Relationship] [int] NOT NULL,
	[Member_Name] [nvarchar](max) NULL,
	[Member_Mobile] [nvarchar](max) NULL,
	[Member_EmailId] [nvarchar](max) NULL,
	[Member_DOB] [datetime2](7) NOT NULL,
	[Enum_Id_Identity] [int] NOT NULL,
	[Identity_Number] [nvarchar](max) NULL,
	[Is_Verfied] [bit] NOT NULL,
	[Date_Valid_From] [datetime2](7) NOT NULL,
	[Date_Valid_Upto] [datetime2](7) NOT NULL,
	[AttachmentType_Path] [nvarchar](max) NULL,
	[Attachment_Type] [nvarchar](max) NULL,
 CONSTRAINT [PK_tBL_HR_EMPLOYEE_FAMILY_DETAILs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tBL_HR_EMPLOYEE_IDENTITYPROOF_DETAILs]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tBL_HR_EMPLOYEE_IDENTITYPROOF_DETAILs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Id] [int] NOT NULL,
	[Enum_Id] [int] NOT NULL,
	[Emp_DOB] [datetime2](7) NOT NULL,
	[Identity_Number] [nvarchar](max) NULL,
	[Is_Verfied] [bit] NOT NULL,
	[Date_Valid_From] [datetime2](7) NOT NULL,
	[Date_Valid_Upto] [datetime2](7) NOT NULL,
	[AttachmentType_Path] [nvarchar](max) NULL,
	[Attachment_Type] [nvarchar](max) NULL,
 CONSTRAINT [PK_tBL_HR_EMPLOYEE_IDENTITYPROOF_DETAILs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tBL_HR_EMPLOYEE_NOMINEE_DETAILs]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tBL_HR_EMPLOYEE_NOMINEE_DETAILs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Id] [int] NULL,
	[Enum_Id_Relationship] [int] NULL,
	[Nominee_Name] [nvarchar](max) NULL,
	[Nominee_Mobile] [nvarchar](max) NULL,
	[Nominee_EmailId] [nvarchar](max) NULL,
	[Nominee_DOB] [datetime2](7) NULL,
	[Enum_Id_Identity] [int] NULL,
	[Identity_Number] [nvarchar](max) NULL,
	[Is_Verfied] [bit] NULL,
	[Date_Valid_From] [datetime2](7) NULL,
	[Date_Valid_Upto] [datetime2](7) NULL,
	[AttachmentType_Path] [nvarchar](max) NULL,
	[Attachment_Type] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_HR_Employees]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HR_Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Emp_Name] [nvarchar](max) NULL,
	[Emp_Code] [nvarchar](max) NULL,
	[Emp_System_Code] [nvarchar](max) NULL,
	[Emp_Biometric_Code] [nvarchar](max) NULL,
	[Acct_Id] [int] NULL,
	[Company_Id] [int] NULL,
	[Branch_Id] [int] NULL,
	[Warehouse_Id] [int] NULL,
	[ProductionUnit_Id] [int] NULL,
	[Department_Id] [int] NULL,
	[Designation_Id] [int] NULL,
	[State_Id] [int] NULL,
	[HigherAuthority_Id] [int] NULL,
	[ThirdParty_Id] [int] NULL,
	[Enum_Id_EmpType] [int] NULL,
	[Enum_Id_EmpCategory] [int] NULL,
	[Enum_Id_Emp_Working_Status] [int] NULL,
	[Is_New_User] [bit] NULL,
	[Role_Id] [int] NULL,
	[Email_Id] [nvarchar](max) NULL,
	[Mobile_No] [nvarchar](max) NULL,
	[Profile_Pic_Path] [nvarchar](max) NULL,
	[Signature_Pic_Path] [nvarchar](max) NULL,
	[Login_User_Id] [int] NULL,
	[IsExperiance] [bit] NULL,
	[No_Of_Update] [int] NULL,
	[CreatedOn_Date] [datetime2](7) NULL,
	[CreatedBy_Login_User_Id] [int] NULL,
	[CreatedBy_Login_Session_Id] [int] NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
	[Status_Id] [int] NULL,
	[Remarks] [nvarchar](max) NULL,
	[Action_Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_HR_Employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tBL_HR_LOGIN_USERs]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tBL_HR_LOGIN_USERs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login_User_System_Code] [int] NOT NULL,
	[Login_Id] [nvarchar](max) NULL,
	[Salt_Value] [nvarchar](max) NULL,
	[Hash_Password] [nvarchar](max) NULL,
	[Is_Password_Reset_Required] [bit] NOT NULL,
	[Password_ChangedOn_Date] [datetime2](7) NOT NULL,
	[Wrong_Password_Attempt] [int] NOT NULL,
	[Account_LockedOn_Date] [datetime2](7) NOT NULL,
	[Login_Valid_Upto_Date] [datetime2](7) NOT NULL,
	[Reference_Table_Name] [nvarchar](max) NULL,
	[Reference_Primary_Id] [int] NOT NULL,
	[Login_User_Type_Id] [int] NOT NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
	[Status_Id] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[Action_Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK_tBL_HR_LOGIN_USERs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Identity_Proof]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Identity_Proof](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Identity_Type] [nvarchar](max) NULL,
	[Identity_No] [nvarchar](100) NULL,
	[Valid_Upto] [datetime] NULL,
	[Attachments_File_Name] [nvarchar](100) NULL,
	[Status_Id] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[Action_Remarks] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_IdentityType]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_IdentityType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Identity_Type] [nvarchar](max) NULL,
	[Status_Id] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[Action_Remarks] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_MaritalStatus]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_MaritalStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Marital_Status] [nvarchar](max) NULL,
	[Status_Id] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[Action_Remarks] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_OtherInformation]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_OtherInformation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Identity_Type] [int] NOT NULL,
	[Bank_Name] [int] NOT NULL,
	[Branch_Name] [nvarchar](max) NULL,
	[Account_No] [nvarchar](max) NULL,
	[IFSC_Code] [nvarchar](max) NULL,
	[Status] [bit] NULL,
	[Other_Details] [nvarchar](max) NULL,
	[Card_No] [nvarchar](max) NULL,
	[CarProxy_Nod_No] [nvarchar](max) NULL,
	[User_Type] [nvarchar](max) NULL,
	[Signature] [nvarchar](max) NULL,
	[Picture] [nvarchar](max) NULL,
	[Employee_Id] [int] NOT NULL,
	[Status_Id] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[Action_Remarks] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PermanentContactInformation]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PermanentContactInformation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Address1] [nvarchar](100) NULL,
	[Country] [int] NULL,
	[Zone] [int] NULL,
	[State] [int] NULL,
	[City] [nvarchar](max) NULL,
	[Pin] [nvarchar](100) NULL,
	[Status_Id] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[Action_Remarks] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
	[Employee_Id] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ProfessionalInformation]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ProfessionalInformation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Professional_Information] [nvarchar](max) NULL,
	[Status_Id] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[Action_Remarks] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
	[Educational_Qualification] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ThirdParty]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ThirdParty](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ThirdParty_Name] [nvarchar](max) NULL,
	[Status_Id] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[Action_Remarks] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_UserType]    Script Date: 31-07-2021 19:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_UserType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Type] [nvarchar](max) NULL,
	[Status_Id] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[Action_Remarks] [nvarchar](max) NULL,
	[CreatedOn_Date] [datetime2](7) NOT NULL,
	[CreatedBy_Login_User_Id] [int] NOT NULL,
	[CreatedBy_Login_Session_Id] [int] NOT NULL,
	[CreatedFrom_Page] [nvarchar](max) NULL,
	[CreatedFrom_Sub_Menu_Id] [int] NOT NULL,
	[CreatedFrom_API_Name] [nvarchar](max) NULL,
	[UpdatedOn_Date] [datetime2](7) NOT NULL,
	[UpdatedBy_Login_User_Id] [int] NULL,
	[UpdatedBy_Login_Session_Id] [int] NULL,
	[UpdatedFrom_Page] [nvarchar](max) NULL,
	[UpdatedFrom_Sub_Menu_Id] [int] NULL,
	[UpdatedFrom_API_Name] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170424115119_Initial_Migrations', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170608053244_Upgraded_To_Abp_2_1_0', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170621153937_Added_Description_And_IsActive_To_Role', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170703134115_Remove_IsActive_From_Role', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170804083601_Upgraded_To_Abp_v2.2.2', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180201051646_Upgraded_To_Abp_v3.4.0', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180320131229_Upgraded_To_Abp_v3_5_0', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180509121141_Upgraded_To_Abp_v3_6_1', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180726102703_Upgrade_ABP_3.8.0', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180731132139_Upgrade_ABP_3.8.1', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180927062608_Upgrade_ABP_3.8.3', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181013103914_Upgraded_To_Abp_v3_9_0', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190208051931_Upgrade_ABP_4_2_0', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190703062215_Upgraded_To_Abp_4_7_0', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190719143908_Upgraded_To_Abp_4_8_0', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191216011543_Upgraded_To_Abp_5_1_0', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200210191935_Initial', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200220110527_Upgraded_To_Abp_5_2_0', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200304180627_InvitationType', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200304200501_ProductTypeUpdate', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200320114152_Upgraded_To_Abp_5_4_0', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200324170605_ApprovedByStaff', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200326202834_AssignedTo', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200420204604_Vendor', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200514163044_RestructureProductTypes', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200528164049_InkPaper', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200528191820_Dimensions', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200604091046_Upgraded_To_Abp_5_9', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200611134834_VendorUpdate', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200611144811_VendorStatus', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200624170731_JobRequestVendor', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200625193353_Status', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200629163603_JRVendorUpdate', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200629193355_JobRequestStatus', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200629194752_JRSplitCost', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200713175539_SplitCost', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200729153244_JobRequestCreatedFields', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200804152707_VendorNotes', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200806153527_PreviousJobNumber', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200813134807_AdditionalInformation', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200818191239_VendorProofandShipping', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200903153026_PT_InkandBinding', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200908172954_PT_InkText', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200908182652_PT_Shipping', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200908201138_PT_ShippingQuantity', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200915143214_changes6129', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200915143321_changes6153', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200915152059_change43575', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200928141743_Upgraded_To_ABP_5_13_0', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210626135130_Persistent.FreelencerDBContext', N'5.0.7')
GO
SET IDENTITY_INSERT [dbo].[sys_Branches] ON 
GO
INSERT [dbo].[sys_Branches] ([Id], [Branch_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (1, N'Bihar', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_Branches] ([Id], [Branch_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (2, N'Mumbai', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_Branches] ([Id], [Branch_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (3, N'Kolkatta', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_Branches] ([Id], [Branch_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (4, N'Punjab', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_Branches] ([Id], [Branch_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (5, N'Dehradun', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_Branches] ([Id], [Branch_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (6, N'Gujarat', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
SET IDENTITY_INSERT [dbo].[sys_Branches] OFF
GO
SET IDENTITY_INSERT [dbo].[sys_Cast] ON 
GO
INSERT [dbo].[sys_Cast] ([Id], [Cast_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (3, N'GEN', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[sys_Cast] OFF
GO
SET IDENTITY_INSERT [dbo].[sys_Compnays] ON 
GO
INSERT [dbo].[sys_Compnays] ([Id], [Compnay_Name], [Compnay_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (4, N'ISPAT DAMODAR PRIVATE LIMITED', N'ISPAT1234', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_Compnays] ([Id], [Compnay_Name], [Compnay_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (5, N'MICROSOFT', N'MICRO', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_Compnays] ([Id], [Compnay_Name], [Compnay_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (6, N'GOOGLE', N'GOG', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_Compnays] ([Id], [Compnay_Name], [Compnay_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (7, N'FACEBOOK', N'FB', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_Compnays] ([Id], [Compnay_Name], [Compnay_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (8, N'TWITTER', N'TWI', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
SET IDENTITY_INSERT [dbo].[sys_Compnays] OFF
GO
SET IDENTITY_INSERT [dbo].[sys_DEPARTMENTs] ON 
GO
INSERT [dbo].[sys_DEPARTMENTs] ([Id], [Branch_Id], [Department_Name], [Department_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (1, 1, N'AD-1', N'AD1', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_DEPARTMENTs] ([Id], [Branch_Id], [Department_Name], [Department_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (2, 1, N'AD-2', N'AD2', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_DEPARTMENTs] ([Id], [Branch_Id], [Department_Name], [Department_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (3, 1, N'AD-3', N'AD3', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_DEPARTMENTs] ([Id], [Branch_Id], [Department_Name], [Department_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (4, 1, N'CANTEEN', N'CNT', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_DEPARTMENTs] ([Id], [Branch_Id], [Department_Name], [Department_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (5, 1, N'DOT NET', N'.NET', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_DEPARTMENTs] ([Id], [Branch_Id], [Department_Name], [Department_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (6, 1, N'DRIVER', N'DRV', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_DEPARTMENTs] ([Id], [Branch_Id], [Department_Name], [Department_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (7, 1, N'FINANCE & ACCOUNTING', N'F&A', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_DEPARTMENTs] ([Id], [Branch_Id], [Department_Name], [Department_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (8, 1, N'HUMAN RESOURCE', N'HR', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_DEPARTMENTs] ([Id], [Branch_Id], [Department_Name], [Department_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (9, 1, N'HR / FINANCE & ACCOUNTING', N'HR OR F&A', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_DEPARTMENTs] ([Id], [Branch_Id], [Department_Name], [Department_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (10, 1, N'MANAGEMENT', N'MNGMT', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_DEPARTMENTs] ([Id], [Branch_Id], [Department_Name], [Department_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (11, 1, N'MRC', N'MRC', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_DEPARTMENTs] ([Id], [Branch_Id], [Department_Name], [Department_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (12, 1, N'MS-1', N'MS1', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_DEPARTMENTs] ([Id], [Branch_Id], [Department_Name], [Department_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (13, 1, N'MS-2', N'MS2', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_DEPARTMENTs] ([Id], [Branch_Id], [Department_Name], [Department_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (14, 1, N'MS-3', N'MS3', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_DEPARTMENTs] ([Id], [Branch_Id], [Department_Name], [Department_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (15, 1, N'MS-4', N'MS4', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_DEPARTMENTs] ([Id], [Branch_Id], [Department_Name], [Department_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (16, 1, N'OFFICE', N'OFC', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_DEPARTMENTs] ([Id], [Branch_Id], [Department_Name], [Department_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (17, 1, N'PACKING DEPT', N'PD', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_DEPARTMENTs] ([Id], [Branch_Id], [Department_Name], [Department_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (18, 1, N'PAINTING', N'PNT', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_DEPARTMENTs] ([Id], [Branch_Id], [Department_Name], [Department_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (19, 1, N'PRC', N'PRC', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_DEPARTMENTs] ([Id], [Branch_Id], [Department_Name], [Department_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (20, 1, N'Production Department', N'PD', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_DEPARTMENTs] ([Id], [Branch_Id], [Department_Name], [Department_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (21, 1, N'PRODUCTION-STORE-PURCHASE(NTR)', N'PSP', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_DEPARTMENTs] ([Id], [Branch_Id], [Department_Name], [Department_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (22, 1, N'PRODUCTION-STORE-PURCHASE(TSP)', N'PSP-TSP', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_DEPARTMENTs] ([Id], [Branch_Id], [Department_Name], [Department_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (23, 1, N'QA & DD', N'QADD', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_DEPARTMENTs] ([Id], [Branch_Id], [Department_Name], [Department_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (24, 1, N'Quality Control', N'QC', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_DEPARTMENTs] ([Id], [Branch_Id], [Department_Name], [Department_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (25, 1, N'R&D', N'R&D', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[sys_DEPARTMENTs] OFF
GO
SET IDENTITY_INSERT [dbo].[sys_DESIGNATIONs] ON 
GO
INSERT [dbo].[sys_DESIGNATIONs] ([Id], [Department_Id], [Designation_Name], [Designation_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (2, 1, N'Chief Executive Officer', 1, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_DESIGNATIONs] ([Id], [Department_Id], [Designation_Name], [Designation_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (3, 1, N'Chief Operating  Officer', 2, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_DESIGNATIONs] ([Id], [Department_Id], [Designation_Name], [Designation_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (4, 1, N'Chief Financial Officer', 3, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_DESIGNATIONs] ([Id], [Department_Id], [Designation_Name], [Designation_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (5, 1, N'Chief Technology Officer', 4, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_DESIGNATIONs] ([Id], [Department_Id], [Designation_Name], [Designation_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (6, 1, N'Chief Legal Officer', 5, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_DESIGNATIONs] ([Id], [Department_Id], [Designation_Name], [Designation_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (7, 1, N'Chief Marketing Officer', 6, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[sys_DESIGNATIONs] OFF
GO
SET IDENTITY_INSERT [dbo].[sys_Employee_Category] ON 
GO
INSERT [dbo].[sys_Employee_Category] ([Id], [Category_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (1, N'Management', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_Employee_Category] ([Id], [Category_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (2, N'Salaried Employee', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_Employee_Category] ([Id], [Category_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (3, N'Wages', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_Employee_Category] ([Id], [Category_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (4, N'Self Employed', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_Employee_Category] ([Id], [Category_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (5, N'Worker', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
SET IDENTITY_INSERT [dbo].[sys_Employee_Category] OFF
GO
SET IDENTITY_INSERT [dbo].[sys_Employee_Type] ON 
GO
INSERT [dbo].[sys_Employee_Type] ([Id], [Type_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (1, N'Full Time', CAST(N'2020-07-25T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_Employee_Type] ([Id], [Type_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (2, N'Part Time', CAST(N'2020-07-25T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_Employee_Type] ([Id], [Type_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (3, N'Third Party', CAST(N'2020-07-25T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_Employee_Type] ([Id], [Type_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (4, N'Onsite', CAST(N'2020-07-25T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
SET IDENTITY_INSERT [dbo].[sys_Employee_Type] OFF
GO
SET IDENTITY_INSERT [dbo].[sys_HigherAuthority] ON 
GO
INSERT [dbo].[sys_HigherAuthority] ([Id], [HigherAuthority], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (1, N'HigherAuthority', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_HigherAuthority] ([Id], [HigherAuthority], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (2, N'Accountant ( FINANCE &amp; ACCOUNTING )', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_HigherAuthority] ([Id], [HigherAuthority], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (3, N'Arc welder ( MS-3 )', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
SET IDENTITY_INSERT [dbo].[sys_HigherAuthority] OFF
GO
SET IDENTITY_INSERT [dbo].[sys_HigherAuthorityBranch] ON 
GO
INSERT [dbo].[sys_HigherAuthorityBranch] ([Id], [HigherAuthority_Branch], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (1, N'Bihar', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_HigherAuthorityBranch] ([Id], [HigherAuthority_Branch], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (2, N'Head Office', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_HigherAuthorityBranch] ([Id], [HigherAuthority_Branch], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (3, N'Hyderabad', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_HigherAuthorityBranch] ([Id], [HigherAuthority_Branch], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (4, N'Mumbai', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_HigherAuthorityBranch] ([Id], [HigherAuthority_Branch], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (5, N'New Delhi', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_HigherAuthorityBranch] ([Id], [HigherAuthority_Branch], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (6, N'Odhisha', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
SET IDENTITY_INSERT [dbo].[sys_HigherAuthorityBranch] OFF
GO
SET IDENTITY_INSERT [dbo].[sys_HigherAuthorityName] ON 
GO
INSERT [dbo].[sys_HigherAuthorityName] ([Id], [HigherAuthority_Name], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (1, N'Marquees', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_HigherAuthorityName] ([Id], [HigherAuthority_Name], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (2, N'Viscountess', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_HigherAuthorityName] ([Id], [HigherAuthority_Name], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (3, N'Baronets', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
SET IDENTITY_INSERT [dbo].[sys_HigherAuthorityName] OFF
GO
SET IDENTITY_INSERT [dbo].[sys_RelationShip] ON 
GO
INSERT [dbo].[sys_RelationShip] ([Id], [RelationShip_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (1, N'Father', CAST(N'2021-07-28T11:21:46.4133333' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
SET IDENTITY_INSERT [dbo].[sys_RelationShip] OFF
GO
SET IDENTITY_INSERT [dbo].[sys_STATE] ON 
GO
INSERT [dbo].[sys_STATE] ([Id], [Zone_Id], [State_Name], [State_Short_Code], [State_Code], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (1, 1, N'Bihar', N'BR', N'BR', 1, NULL, NULL, CAST(N'2021-07-28T11:17:48.5566667' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-07-28T11:17:48.5566667' AS DateTime2), 1, 1, NULL, 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[sys_STATE] OFF
GO
SET IDENTITY_INSERT [dbo].[sys_ThirdParty] ON 
GO
INSERT [dbo].[sys_ThirdParty] ([Id], [ThirdParty_Name], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (1, N'Time Saved', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_ThirdParty] ([Id], [ThirdParty_Name], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (2, N'Expenses Reduced', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_ThirdParty] ([Id], [ThirdParty_Name], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (4, N'Experts at Work', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_ThirdParty] ([Id], [ThirdParty_Name], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (5, N'Peace of Mind', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
SET IDENTITY_INSERT [dbo].[sys_ThirdParty] OFF
GO
SET IDENTITY_INSERT [dbo].[sys_ThirdPartyType] ON 
GO
INSERT [dbo].[sys_ThirdPartyType] ([Id], [ThirdPartyType_Name], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (1, N'Agent', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_ThirdPartyType] ([Id], [ThirdPartyType_Name], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (2, N'Contractor (SC)', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_ThirdPartyType] ([Id], [ThirdPartyType_Name], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (3, N'Employee', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_ThirdPartyType] ([Id], [ThirdPartyType_Name], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (5, N'Escrow', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_ThirdPartyType] ([Id], [ThirdPartyType_Name], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (6, N'Paypal', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_ThirdPartyType] ([Id], [ThirdPartyType_Name], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (7, N'PayUmoney', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_ThirdPartyType] ([Id], [ThirdPartyType_Name], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (8, N'GPay', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
SET IDENTITY_INSERT [dbo].[sys_ThirdPartyType] OFF
GO
SET IDENTITY_INSERT [dbo].[sys_UserType] ON 
GO
INSERT [dbo].[sys_UserType] ([Id], [UserType_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (1, N'Admin', CAST(N'2021-07-28T10:42:14.7533333' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
SET IDENTITY_INSERT [dbo].[sys_UserType] OFF
GO
SET IDENTITY_INSERT [dbo].[sys_WorkingStatus] ON 
GO
INSERT [dbo].[sys_WorkingStatus] ([Id], [WorkingStatus_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (1, N'Working', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_WorkingStatus] ([Id], [WorkingStatus_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (2, N'Not Working', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_WorkingStatus] ([Id], [WorkingStatus_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (3, N'Suspend', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_WorkingStatus] ([Id], [WorkingStatus_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (4, N'Bench', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_WorkingStatus] ([Id], [WorkingStatus_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (5, N'Sitting', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_WorkingStatus] ([Id], [WorkingStatus_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (6, N'Terminate', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_WorkingStatus] ([Id], [WorkingStatus_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (7, N'Retirement', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_WorkingStatus] ([Id], [WorkingStatus_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (8, N'Death In Service', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_WorkingStatus] ([Id], [WorkingStatus_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (9, N'Supernnuation', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_WorkingStatus] ([Id], [WorkingStatus_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (10, N'Permanent Disablement', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_WorkingStatus] ([Id], [WorkingStatus_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (11, N'Cessation (Short Service)', CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_WorkingStatus] ([Id], [WorkingStatus_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (12, N'Working', CAST(N'2021-07-28T11:28:35.9566667' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
SET IDENTITY_INSERT [dbo].[sys_WorkingStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[tBL_HR_EMPLOYEE_EDUCATION_DETAILs] ON 
GO
INSERT [dbo].[tBL_HR_EMPLOYEE_EDUCATION_DETAILs] ([Id], [Employee_Id], [Enum_Id], [Emp_Year_OF_Passing], [Emp_Organization], [Emp_Board_Council_University], [Emp_Qualification_Percent], [Emp_Qualification_Percentile], [Remarks], [AttachmentType_Path], [Attachment_Type], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (1, 1, 1, 2020, N'string', N'string', N'string', N'string', N'string', N'string', N'string', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tBL_HR_EMPLOYEE_EDUCATION_DETAILs] OFF
GO
SET IDENTITY_INSERT [dbo].[tBL_HR_EMPLOYEE_EDUCATION_s] ON 
GO
INSERT [dbo].[tBL_HR_EMPLOYEE_EDUCATION_s] ([Id], [Employee_Id], [Enum_Id], [Emp_Year_OF_Passing], [Emp_Organization], [Emp_Board_Council_University], [Emp_Qualification_Percent], [Emp_Qualification_Percentile], [Remarks], [AttachmentType_Path], [Attachment_Type]) VALUES (1, 1, 1, 2017, N'Test', N'Test', N'TEst', N'Test', N'Test', N'Test/test', N'.png')
GO
INSERT [dbo].[tBL_HR_EMPLOYEE_EDUCATION_s] ([Id], [Employee_Id], [Enum_Id], [Emp_Year_OF_Passing], [Emp_Organization], [Emp_Board_Council_University], [Emp_Qualification_Percent], [Emp_Qualification_Percentile], [Remarks], [AttachmentType_Path], [Attachment_Type]) VALUES (2, 2, 2, 2010, N'Freelencer', N'MH', N'70', N'', N'Test', N'', N'')
GO
SET IDENTITY_INSERT [dbo].[tBL_HR_EMPLOYEE_EDUCATION_s] OFF
GO
SET IDENTITY_INSERT [dbo].[tBL_HR_EMPLOYEE_NOMINEE_DETAILs] ON 
GO
INSERT [dbo].[tBL_HR_EMPLOYEE_NOMINEE_DETAILs] ([Id], [Employee_Id], [Enum_Id_Relationship], [Nominee_Name], [Nominee_Mobile], [Nominee_EmailId], [Nominee_DOB], [Enum_Id_Identity], [Identity_Number], [Is_Verfied], [Date_Valid_From], [Date_Valid_Upto], [AttachmentType_Path], [Attachment_Type], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (1, 0, 0, N'string', N'string', N'user@example.com', CAST(N'2021-07-24T00:00:00.0000000' AS DateTime2), 0, N'string', 1, CAST(N'2021-07-24T07:57:03.4010000' AS DateTime2), CAST(N'2021-07-24T07:57:03.4010000' AS DateTime2), N'string', N'string', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tBL_HR_EMPLOYEE_NOMINEE_DETAILs] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_HR_Employees] ON 
GO
INSERT [dbo].[tbl_HR_Employees] ([Id], [Emp_Name], [Emp_Code], [Emp_System_Code], [Emp_Biometric_Code], [Acct_Id], [Company_Id], [Branch_Id], [Warehouse_Id], [ProductionUnit_Id], [Department_Id], [Designation_Id], [State_Id], [HigherAuthority_Id], [ThirdParty_Id], [Enum_Id_EmpType], [Enum_Id_EmpCategory], [Enum_Id_Emp_Working_Status], [Is_New_User], [Role_Id], [Email_Id], [Mobile_No], [Profile_Pic_Path], [Signature_Pic_Path], [Login_User_Id], [IsExperiance], [No_Of_Update], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (1, N'Testing', N'Test123', N'Test123', N'Test11111', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, N'user@example.com', N'7845963210', N'test/test', N'test/test', 1, 1, 1, CAST(N'2021-06-29T12:13:26.1560944' AS DateTime2), 0, 0, N'', 0, N'', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_HR_Employees] ([Id], [Emp_Name], [Emp_Code], [Emp_System_Code], [Emp_Biometric_Code], [Acct_Id], [Company_Id], [Branch_Id], [Warehouse_Id], [ProductionUnit_Id], [Department_Id], [Designation_Id], [State_Id], [HigherAuthority_Id], [ThirdParty_Id], [Enum_Id_EmpType], [Enum_Id_EmpCategory], [Enum_Id_Emp_Working_Status], [Is_New_User], [Role_Id], [Email_Id], [Mobile_No], [Profile_Pic_Path], [Signature_Pic_Path], [Login_User_Id], [IsExperiance], [No_Of_Update], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (2, N'Shivam', N'Shi1234', N'', N'', 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, N'Shivam@gmail.com', N'7485963210', N'', N'', 1, 1, 1, CAST(N'2021-06-29T13:41:39.4194568' AS DateTime2), 0, 0, N'', 0, N'', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_HR_Employees] ([Id], [Emp_Name], [Emp_Code], [Emp_System_Code], [Emp_Biometric_Code], [Acct_Id], [Company_Id], [Branch_Id], [Warehouse_Id], [ProductionUnit_Id], [Department_Id], [Designation_Id], [State_Id], [HigherAuthority_Id], [ThirdParty_Id], [Enum_Id_EmpType], [Enum_Id_EmpCategory], [Enum_Id_Emp_Working_Status], [Is_New_User], [Role_Id], [Email_Id], [Mobile_No], [Profile_Pic_Path], [Signature_Pic_Path], [Login_User_Id], [IsExperiance], [No_Of_Update], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (3, N'string', N'string', N'string', N'string', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, N'user@example.com', N'string', N'string', N'string', 0, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_HR_Employees] ([Id], [Emp_Name], [Emp_Code], [Emp_System_Code], [Emp_Biometric_Code], [Acct_Id], [Company_Id], [Branch_Id], [Warehouse_Id], [ProductionUnit_Id], [Department_Id], [Designation_Id], [State_Id], [HigherAuthority_Id], [ThirdParty_Id], [Enum_Id_EmpType], [Enum_Id_EmpCategory], [Enum_Id_Emp_Working_Status], [Is_New_User], [Role_Id], [Email_Id], [Mobile_No], [Profile_Pic_Path], [Signature_Pic_Path], [Login_User_Id], [IsExperiance], [No_Of_Update], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (4, N'string', N'string', N'string', N'string', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, N'user@example.com', N'string', N'string', N'string', 0, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_HR_Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_IdentityType] ON 
GO
INSERT [dbo].[tbl_IdentityType] ([Id], [Identity_Type], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (1, N'PAN', 1, NULL, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-07-28T22:33:07.1200000' AS DateTime2), 1, 1, NULL, 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_IdentityType] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_MaritalStatus] ON 
GO
INSERT [dbo].[tbl_MaritalStatus] ([Id], [Marital_Status], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (1, N'Single', 1, NULL, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-07-28T11:26:27.1466667' AS DateTime2), 1, 1, NULL, 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_MaritalStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_UserType] ON 
GO
INSERT [dbo].[tbl_UserType] ([Id], [User_Type], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (1, N'Admin', 1, NULL, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-07-28T10:39:19.2466667' AS DateTime2), 1, 1, NULL, 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_UserType] OFF
GO