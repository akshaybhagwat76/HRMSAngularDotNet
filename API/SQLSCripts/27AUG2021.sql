
USE [db_a78458_hrmsadmin]
GO
/****** Object:  Table [dbo].[sys_BloodGroup]    Script Date: 27-08-2021 16:19:00 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_Branches]    Script Date: 27-08-2021 16:19:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_Cast]    Script Date: 27-08-2021 16:19:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_Compnays]    Script Date: 27-08-2021 16:19:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_COUNTRies]    Script Date: 27-08-2021 16:19:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_DEPARTMENTs]    Script Date: 27-08-2021 16:19:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_DESIGNATIONs]    Script Date: 27-08-2021 16:19:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_DISTRICTs]    Script Date: 27-08-2021 16:19:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_Employee_Category]    Script Date: 27-08-2021 16:19:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_Employee_Type]    Script Date: 27-08-2021 16:19:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_HigherAuthority]    Script Date: 27-08-2021 16:19:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_HigherAuthorityBranch]    Script Date: 27-08-2021 16:19:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_HigherAuthorityName]    Script Date: 27-08-2021 16:19:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_PRODUCTIONs]    Script Date: 27-08-2021 16:19:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sys_ProfessionalInformation]    Script Date: 27-08-2021 16:19:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_ProfessionalInformation](
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
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_REGION_ZONE]    Script Date: 27-08-2021 16:19:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_REGIONs]    Script Date: 27-08-2021 16:19:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_RelationShip]    Script Date: 27-08-2021 16:19:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_STATEs]    Script Date: 27-08-2021 16:19:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sys_ThirdParty]    Script Date: 27-08-2021 16:19:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_ThirdParty](
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
	[ThirdPartyType_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_ThirdPartyType]    Script Date: 27-08-2021 16:19:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_UserType]    Script Date: 27-08-2021 16:19:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_WorkingStatus]    Script Date: 27-08-2021 16:19:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_CorresspondanceContactInformation]    Script Date: 27-08-2021 16:19:01 ******/
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
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
	[Employee_Id] [int] NOT NULL,
	[MobileNo2] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[EmailAddress2] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_CorresspondanceContactInformation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Educational_Qualification_Attachements]    Script Date: 27-08-2021 16:19:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Educational_Qualification_Attachements](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Educational_Qualification_Id] [int] NOT NULL,
	[EmployeeId] [int] NULL,
	[CourseName] [nvarchar](50) NULL,
	[DocumentType] [nvarchar](50) NULL,
	[DocumentUrl] [nvarchar](max) NULL,
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
 CONSTRAINT [PK_TBL_Educational_Qualification_Attachements] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_EmployeeMaster]    Script Date: 27-08-2021 16:19:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_EmployeeMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NOT NULL,
	[EmployeeCategoryId] [int] NOT NULL,
	[EmployeeCode] [nvarchar](max) NOT NULL,
	[BiometricCode] [nvarchar](max) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[MiddleName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Project_BranchId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[DesignationId] [int] NOT NULL,
	[Higher_Authority_Branch_ProjectId] [int] NULL,
	[Higher_AuthorityId] [int] NULL,
	[Higher_Authority_NameId] [int] NULL,
	[Date_Of_Joining] [datetime] NOT NULL,
	[Employee_TypeId] [int] NOT NULL,
	[Mobile_No] [nvarchar](max) NOT NULL,
	[Third_Party_Type] [int] NULL,
	[Third_Party_Id] [int] NULL,
	[Working_StatusId] [int] NULL,
	[Probation_Period] [int] NULL,
	[ReferenceEmployeeName] [nvarchar](max) NULL,
	[Reference_Phone_No] [nvarchar](max) NULL,
	[Date_Of_Birth] [datetime] NOT NULL,
	[Gender] [nvarchar](64) NULL,
	[Nationality] [nvarchar](64) NULL,
	[Religion] [nvarchar](64) NULL,
	[CastId] [int] NOT NULL,
	[PhysicalDisability] [bit] NOT NULL,
	[Blood_GroupId] [int] NOT NULL,
	[Marital_StatusId] [int] NOT NULL,
	[Identification_Mark] [nvarchar](max) NULL,
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
	[Status] [bit] NOT NULL,
	[ProfessionalInformation] [nvarchar](max) NOT NULL,
	[HighestQualification] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_HigherAuthorityBranch]    Script Date: 27-08-2021 16:19:01 ******/
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
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_HigherAuthorityBranch] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_HighestQualification]    Script Date: 27-08-2021 16:19:01 ******/
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
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_HighestQualification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tBL_HR_EMPLOYEE_ACTIVATION_OTP_DETAILs]    Script Date: 27-08-2021 16:19:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tBL_HR_EMPLOYEE_DETAILs]    Script Date: 27-08-2021 16:19:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tBL_HR_EMPLOYEE_EDUCATION_DETAILs]    Script Date: 27-08-2021 16:19:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tBL_HR_EMPLOYEE_EDUCATION_DETAILs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Id] [int] NOT NULL,
	[Emp_Year_OF_Passing] [int] NOT NULL,
	[Qualification] [nvarchar](max) NULL,
	[Specialization] [nvarchar](max) NULL,
	[School] [nvarchar](max) NULL,
	[Marks] [nvarchar](max) NULL,
	[Board] [nvarchar](max) NULL,
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
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_tBL_HR_EMPLOYEE_EDUCATION_DETAILs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tBL_HR_EMPLOYEE_EDUCATION_s]    Script Date: 27-08-2021 16:19:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tBL_HR_EMPLOYEE_EXPERIENCE_DETAILs]    Script Date: 27-08-2021 16:19:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tBL_HR_EMPLOYEE_FAMILY_DETAILs]    Script Date: 27-08-2021 16:19:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tBL_HR_EMPLOYEE_FAMILY_DETAILs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Id] [int] NULL,
	[FamilyDetail_Name] [nvarchar](max) NULL,
	[FamilyDetail_RelationshipId] [int] NULL,
	[FamilyDetail_Mobile] [nvarchar](max) NULL,
	[FamilyDetail_EmailId] [nvarchar](max) NULL,
	[FamilyDetail_DOB] [datetime2](7) NULL,
	[FamilyDetail_Address] [nvarchar](max) NULL,
	[Identity_Number] [nvarchar](max) NULL,
	[IsAadharStatus] [bit] NULL,
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
	[AttachmentType_Path] [nvarchar](max) NULL,
	[Attachment_Type] [nvarchar](max) NULL,
 CONSTRAINT [PK_tBL_HR_EMPLOYEE_FAMILY_DETAILs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tBL_HR_EMPLOYEE_IDENTITYPROOF_DETAILs]    Script Date: 27-08-2021 16:19:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tBL_HR_EMPLOYEE_NOMINEE_DETAILs]    Script Date: 27-08-2021 16:19:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tBL_HR_EMPLOYEE_NOMINEE_DETAILs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Id] [int] NULL,
	[Nominee_Name] [nvarchar](max) NULL,
	[Nominee_RelationshipId] [int] NULL,
	[Nominee_Mobile] [nvarchar](max) NULL,
	[Nominee_EmailId] [nvarchar](max) NULL,
	[Nominee_DOB] [datetime2](7) NULL,
	[Nominee_Address] [nvarchar](max) NULL,
	[Identity_Number] [nvarchar](max) NULL,
	[IsAadharStatus] [bit] NULL,
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
 CONSTRAINT [PK__tBL_HR_E__3214EC072617C140] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tBL_HR_LOGIN_USERs]    Script Date: 27-08-2021 16:19:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Identity_Proof]    Script Date: 27-08-2021 16:19:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Identity_Proof](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Identity_Type] [nvarchar](max) NULL,
	[Identity_No] [nvarchar](100) NULL,
	[Valid_Upto] [datetime] NULL,
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
 CONSTRAINT [PK_tbl_Identity_Proof] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Identity_Proof_Attachements]    Script Date: 27-08-2021 16:19:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Identity_Proof_Attachements](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Identity_Proof_Id] [int] NOT NULL,
	[EmployeeId] [int] NULL,
	[IdentityType] [nvarchar](50) NULL,
	[EmployeeName] [nvarchar](50) NOT NULL,
	[DocumentType] [nvarchar](50) NULL,
	[DocumentUrl] [nvarchar](max) NULL,
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
 CONSTRAINT [PK_TBL_Identity_Proof_Attachements_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_IdentityType]    Script Date: 27-08-2021 16:19:01 ******/
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
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_IdentityType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_MaritalStatus]    Script Date: 27-08-2021 16:19:01 ******/
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
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_MaritalStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_OtherInformation]    Script Date: 27-08-2021 16:19:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_OtherInformation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Bank_Name] [nvarchar](max) NOT NULL,
	[Branch_Name] [nvarchar](max) NULL,
	[Account_No] [nvarchar](max) NULL,
	[IFSC_Code] [nvarchar](max) NULL,
	[Status] [bit] NULL,
	[Other_Details] [nvarchar](max) NULL,
	[Card_No] [nvarchar](max) NULL,
	[CarProxy_Nod_No] [nvarchar](max) NULL,
	[User_Type] [int] NULL,
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
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
	[User_Id] [nvarchar](max) NOT NULL,
	[User_Data] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_OtherInformation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PermanentContactInformation]    Script Date: 27-08-2021 16:19:01 ******/
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
	[Employee_Id] [int] NULL,
 CONSTRAINT [PK_tbl_PermanentContactInformation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Professional_Information_Attachements]    Script Date: 27-08-2021 16:19:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Professional_Information_Attachements](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Professional_Information_Attachements_Id] [int] NOT NULL,
	[EmployeeId] [int] NULL,
	[EmployeeName] [nvarchar](50) NULL,
	[DocumentType] [nvarchar](50) NULL,
	[DocumentUrl] [nvarchar](max) NULL,
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
 CONSTRAINT [PK_TBL_Professional_Information_Attachements] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ProfessionalInformation]    Script Date: 27-08-2021 16:19:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ProfessionalInformation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeerName] [nvarchar](max) NOT NULL,
	[Status_Id] [int] NOT NULL,
	[EmployeerAddress] [nvarchar](max) NULL,
	[Designation] [nvarchar](max) NULL,
	[ContactPerson] [nvarchar](max) NULL,
	[EmailId] [nvarchar](max) NULL,
	[AttachmentType_Path] [nvarchar](max) NULL,
	[Attachment_Type] [nvarchar](max) NULL,
	[DateOfJoining] [datetime2](7) NULL,
	[DateOfLeaving] [datetime2](7) NULL,
	[ReasonForLeaving] [nvarchar](max) NULL,
	[LastDrawnSalary] [nvarchar](max) NULL,
	[ContactNo] [nvarchar](max) NULL,
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
	[Employee_Id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_ProfessionalInformation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_UserType]    Script Date: 27-08-2021 16:19:01 ******/
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
	[UpdatedFrom_API_Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_UserType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[sys_BloodGroup] ON 
GO
INSERT [dbo].[sys_BloodGroup] ([Id], [BloodGroup_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (1, N'A+', CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_BloodGroup] ([Id], [BloodGroup_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (2, N'A-', CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_BloodGroup] ([Id], [BloodGroup_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (3, N'B+', CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_BloodGroup] ([Id], [BloodGroup_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (4, N'B-', CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_BloodGroup] ([Id], [BloodGroup_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (5, N'AB+', CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_BloodGroup] ([Id], [BloodGroup_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (6, N'AB-', CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_BloodGroup] ([Id], [BloodGroup_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (7, N'O+', CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_BloodGroup] ([Id], [BloodGroup_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (8, N'O-', CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
SET IDENTITY_INSERT [dbo].[sys_BloodGroup] OFF
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
INSERT [dbo].[sys_Cast] ([Id], [Cast_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (4, N'GEN', CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_Cast] ([Id], [Cast_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (5, N'OBC-A', CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_Cast] ([Id], [Cast_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (6, N'SC', CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_Cast] ([Id], [Cast_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (7, N'ST', CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_Cast] ([Id], [Cast_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (8, N'OBC-B', CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
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
SET IDENTITY_INSERT [dbo].[sys_COUNTRies] ON 
GO
INSERT [dbo].[sys_COUNTRies] ([Id], [Country_Name], [Country_Short_Code], [Country_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (1, N'INDIA', N'IND', N'IN', CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
GO
INSERT [dbo].[sys_COUNTRies] ([Id], [Country_Name], [Country_Short_Code], [Country_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (2, N'United States', N'USA', N'US', CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[sys_COUNTRies] OFF
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
INSERT [dbo].[sys_Employee_Type] ([Id], [Type_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (1, N'Full Time', CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_Employee_Type] ([Id], [Type_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (2, N'Part Time', CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_Employee_Type] ([Id], [Type_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (3, N'Third Party', CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_Employee_Type] ([Id], [Type_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (4, N'OnSite', CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
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
SET IDENTITY_INSERT [dbo].[sys_REGION_ZONE] ON 
GO
INSERT [dbo].[sys_REGION_ZONE] ([Id], [Country_Id], [Zone_Name], [Zone_Short_Code], [Zone_Code], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (1, 1, N'North India', N'07', N'DEL', 1, NULL, NULL, CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), NULL, 1, N'1', 1, N'1')
GO
INSERT [dbo].[sys_REGION_ZONE] ([Id], [Country_Id], [Zone_Name], [Zone_Short_Code], [Zone_Code], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (2, 1, N'South India', N'08', N'RAJ', 1, NULL, NULL, CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), NULL, 1, N'1', 1, N'1')
GO
INSERT [dbo].[sys_REGION_ZONE] ([Id], [Country_Id], [Zone_Name], [Zone_Short_Code], [Zone_Code], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (3, 2, N'Northeast USA', N'NUSA', N'NOUSA', 1, NULL, NULL, CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), NULL, 1, N'1', 1, N'1')
GO
INSERT [dbo].[sys_REGION_ZONE] ([Id], [Country_Id], [Zone_Name], [Zone_Short_Code], [Zone_Code], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (4, 2, N'Southeast USA', N'SUSA', N'SOUSA', 1, NULL, NULL, CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), NULL, 1, N'1', 1, N'1')
GO
SET IDENTITY_INSERT [dbo].[sys_REGION_ZONE] OFF
GO
SET IDENTITY_INSERT [dbo].[sys_REGIONs] ON 
GO
INSERT [dbo].[sys_REGIONs] ([Id], [Country_Id], [Zone_Name], [Zone_Short_Code], [Zone_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (6, 1, N'North India', N'07', N'DEL', CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), NULL, 1, N'1', 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_REGIONs] ([Id], [Country_Id], [Zone_Name], [Zone_Short_Code], [Zone_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (7, 1, N'South India', N'08', N'RAJ', CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), NULL, 1, N'1', 1, N'1', 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[sys_REGIONs] OFF
GO
SET IDENTITY_INSERT [dbo].[sys_RelationShip] ON 
GO
INSERT [dbo].[sys_RelationShip] ([Id], [RelationShip_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (1, N'Father', CAST(N'2021-07-28T11:21:46.4133333' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_RelationShip] ([Id], [RelationShip_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (2, N'Mother', CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-08-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_RelationShip] ([Id], [RelationShip_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (3, N'Brother', CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-08-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_RelationShip] ([Id], [RelationShip_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (4, N'Sister', CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-08-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_RelationShip] ([Id], [RelationShip_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (5, N'Son', CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-08-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_RelationShip] ([Id], [RelationShip_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (6, N'Daughter', CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-08-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_RelationShip] ([Id], [RelationShip_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (7, N'Wife', CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-08-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_RelationShip] ([Id], [RelationShip_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (8, N'Grand Father', CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-08-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_RelationShip] ([Id], [RelationShip_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (9, N'Grand Mother', CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-08-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_RelationShip] ([Id], [RelationShip_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (10, N'Uncle', CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-08-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_RelationShip] ([Id], [RelationShip_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (11, N'Aunty', CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-08-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
SET IDENTITY_INSERT [dbo].[sys_RelationShip] OFF
GO
SET IDENTITY_INSERT [dbo].[sys_STATEs] ON 
GO
INSERT [dbo].[sys_STATEs] ([Id], [Zone_Id], [State_Name], [State_Short_Code], [State_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (1, 1, N'Uttarakhand', N'UTK', N'UK', CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), NULL, 1, N'1', 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_STATEs] ([Id], [Zone_Id], [State_Name], [State_Short_Code], [State_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (2, 1, N'Jammu & Kashmir', N'j&k', N'JK', CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), NULL, 1, N'1', 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_STATEs] ([Id], [Zone_Id], [State_Name], [State_Short_Code], [State_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (3, 3, N'Maine', N'MIN', N'MN', CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), NULL, 1, N'1', 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_STATEs] ([Id], [Zone_Id], [State_Name], [State_Short_Code], [State_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (4, 3, N'Vermont', N'VRT', N'VT', CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), NULL, 1, N'1', 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_STATEs] ([Id], [Zone_Id], [State_Name], [State_Short_Code], [State_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (5, 2, N'Andhra Pradesh', N'APR', N'AP', CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), NULL, 1, N'1', 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_STATEs] ([Id], [Zone_Id], [State_Name], [State_Short_Code], [State_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (6, 2, N'Tamil Nadu', N'TNU', N'TN', CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), NULL, 1, N'1', 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_STATEs] ([Id], [Zone_Id], [State_Name], [State_Short_Code], [State_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (7, 4, N'Alabama', N'ALB', N'AL', CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), NULL, 1, N'1', 1, N'1', 1, NULL, NULL)
GO
INSERT [dbo].[sys_STATEs] ([Id], [Zone_Id], [State_Name], [State_Short_Code], [State_Code], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (8, 4, N'Kentucky', N'KTY', N'KT', CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-08-01T11:21:46.0000000' AS DateTime2), NULL, 1, N'1', 1, N'1', 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[sys_STATEs] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_ThirdParty] ON 
GO
INSERT [dbo].[Sys_ThirdParty] ([Id], [ThirdParty_Name], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [ThirdPartyType_Id]) VALUES (1, N'Amit Gupta', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1)
GO
INSERT [dbo].[Sys_ThirdParty] ([Id], [ThirdParty_Name], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [ThirdPartyType_Id]) VALUES (2, N'Malay  Pradhan', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1)
GO
INSERT [dbo].[Sys_ThirdParty] ([Id], [ThirdParty_Name], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [ThirdPartyType_Id]) VALUES (3, N'Ujjwal  Kar', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1)
GO
INSERT [dbo].[Sys_ThirdParty] ([Id], [ThirdParty_Name], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [ThirdPartyType_Id]) VALUES (4, N'Swapna  Jana', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1)
GO
INSERT [dbo].[Sys_ThirdParty] ([Id], [ThirdParty_Name], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [ThirdPartyType_Id]) VALUES (5, N'PayUmoney', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 1)
GO
INSERT [dbo].[Sys_ThirdParty] ([Id], [ThirdParty_Name], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [ThirdPartyType_Id]) VALUES (6, N'Swapna  Jana', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1', 2)
GO
SET IDENTITY_INSERT [dbo].[Sys_ThirdParty] OFF
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
INSERT [dbo].[sys_UserType] ([Id], [UserType_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (2, N'HRMS User', CAST(N'2021-01-08T10:42:14.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-01-08T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_UserType] ([Id], [UserType_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (3, N'SuperAdmin', CAST(N'2021-01-08T10:42:14.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-01-08T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[sys_UserType] ([Id], [UserType_Name], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (4, N'User', CAST(N'2021-01-08T10:42:14.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-01-08T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
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
SET IDENTITY_INSERT [dbo].[tbl_EmployeeMaster] ON 
GO
INSERT [dbo].[tbl_EmployeeMaster] ([Id], [CompanyId], [EmployeeCategoryId], [EmployeeCode], [BiometricCode], [FirstName], [MiddleName], [LastName], [Email], [Project_BranchId], [DepartmentId], [DesignationId], [Higher_Authority_Branch_ProjectId], [Higher_AuthorityId], [Higher_Authority_NameId], [Date_Of_Joining], [Employee_TypeId], [Mobile_No], [Third_Party_Type], [Third_Party_Id], [Working_StatusId], [Probation_Period], [ReferenceEmployeeName], [Reference_Phone_No], [Date_Of_Birth], [Gender], [Nationality], [Religion], [CastId], [PhysicalDisability], [Blood_GroupId], [Marital_StatusId], [Identification_Mark], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Status], [ProfessionalInformation], [HighestQualification]) VALUES (1, 6, 3, N'manoj nipane', N'525', N'Manoj', N'Uttam', N'bhagwat', N'prashant.piecode@gmail.com', 2, 1, 2, 1, 1, 1, CAST(N'2021-08-07T00:00:00.000' AS DateTime), 1, N'3535353', 1, 2, 3, 1, N'Akshay', N'5050505050', CAST(N'2003-08-19T00:00:00.000' AS DateTime), N'Male', N'indian', N'hindi', 4, 0, 1, 1, N'dsdasdasdasdasd', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 1, 1, N'Fresher', N'H.S')
GO
INSERT [dbo].[tbl_EmployeeMaster] ([Id], [CompanyId], [EmployeeCategoryId], [EmployeeCode], [BiometricCode], [FirstName], [MiddleName], [LastName], [Email], [Project_BranchId], [DepartmentId], [DesignationId], [Higher_Authority_Branch_ProjectId], [Higher_AuthorityId], [Higher_Authority_NameId], [Date_Of_Joining], [Employee_TypeId], [Mobile_No], [Third_Party_Type], [Third_Party_Id], [Working_StatusId], [Probation_Period], [ReferenceEmployeeName], [Reference_Phone_No], [Date_Of_Birth], [Gender], [Nationality], [Religion], [CastId], [PhysicalDisability], [Blood_GroupId], [Marital_StatusId], [Identification_Mark], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Status], [ProfessionalInformation], [HighestQualification]) VALUES (2, 6, 3, N'manoj nipane', N'525', N'Manoj', N'Uttam', N'bhagwat', N'prashant.piecode@gmail.com', 2, 1, 2, 1, 1, 1, CAST(N'2021-08-07T00:00:00.000' AS DateTime), 1, N'3535353', 1, 2, 3, 1, N'Akshay', N'5050505050', CAST(N'2003-08-19T00:00:00.000' AS DateTime), N'Male', N'indian', N'hindi', 4, 0, 1, 1, N'dsdasdasdasdasd', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 1, 1, N'Fresher', N'H.S')
GO
INSERT [dbo].[tbl_EmployeeMaster] ([Id], [CompanyId], [EmployeeCategoryId], [EmployeeCode], [BiometricCode], [FirstName], [MiddleName], [LastName], [Email], [Project_BranchId], [DepartmentId], [DesignationId], [Higher_Authority_Branch_ProjectId], [Higher_AuthorityId], [Higher_Authority_NameId], [Date_Of_Joining], [Employee_TypeId], [Mobile_No], [Third_Party_Type], [Third_Party_Id], [Working_StatusId], [Probation_Period], [ReferenceEmployeeName], [Reference_Phone_No], [Date_Of_Birth], [Gender], [Nationality], [Religion], [CastId], [PhysicalDisability], [Blood_GroupId], [Marital_StatusId], [Identification_Mark], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Status], [ProfessionalInformation], [HighestQualification]) VALUES (3, 6, 3, N'manoj nipane', N'525', N'Manoj', N'Uttam', N'bhagwat', N'prashant.piecode@gmail.com', 2, 1, 2, 1, 1, 1, CAST(N'2021-08-07T00:00:00.000' AS DateTime), 1, N'3535353', 1, 2, 3, 1, N'Akshay', N'5050505050', CAST(N'2003-08-19T00:00:00.000' AS DateTime), N'Male', N'indian', N'hindi', 4, 0, 1, 1, N'dsdasdasdasdasd', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 1, 1, N'Fresher', N'H.S')
GO
INSERT [dbo].[tbl_EmployeeMaster] ([Id], [CompanyId], [EmployeeCategoryId], [EmployeeCode], [BiometricCode], [FirstName], [MiddleName], [LastName], [Email], [Project_BranchId], [DepartmentId], [DesignationId], [Higher_Authority_Branch_ProjectId], [Higher_AuthorityId], [Higher_Authority_NameId], [Date_Of_Joining], [Employee_TypeId], [Mobile_No], [Third_Party_Type], [Third_Party_Id], [Working_StatusId], [Probation_Period], [ReferenceEmployeeName], [Reference_Phone_No], [Date_Of_Birth], [Gender], [Nationality], [Religion], [CastId], [PhysicalDisability], [Blood_GroupId], [Marital_StatusId], [Identification_Mark], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Status], [ProfessionalInformation], [HighestQualification]) VALUES (4, 6, 3, N'manoj nipane', N'525', N'Manoj', N'Uttam', N'bhagwat', N'prashant.piecode@gmail.com', 2, 1, 2, 1, 1, 1, CAST(N'2021-08-07T00:00:00.000' AS DateTime), 1, N'3535353', 1, 2, 3, 1, N'Akshay', N'5050505050', CAST(N'2003-08-19T00:00:00.000' AS DateTime), N'Male', N'indian', N'hindi', 4, 0, 1, 1, N'dsdasdasdasdasd', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 1, 1, N'Fresher', N'H.S')
GO
INSERT [dbo].[tbl_EmployeeMaster] ([Id], [CompanyId], [EmployeeCategoryId], [EmployeeCode], [BiometricCode], [FirstName], [MiddleName], [LastName], [Email], [Project_BranchId], [DepartmentId], [DesignationId], [Higher_Authority_Branch_ProjectId], [Higher_AuthorityId], [Higher_Authority_NameId], [Date_Of_Joining], [Employee_TypeId], [Mobile_No], [Third_Party_Type], [Third_Party_Id], [Working_StatusId], [Probation_Period], [ReferenceEmployeeName], [Reference_Phone_No], [Date_Of_Birth], [Gender], [Nationality], [Religion], [CastId], [PhysicalDisability], [Blood_GroupId], [Marital_StatusId], [Identification_Mark], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Status], [ProfessionalInformation], [HighestQualification]) VALUES (5, 5, 4, N'101', N'101', N'Tewst', N'Tfsadf', N'sdf', N'tews@gmail.com', 1, 1, 2, 1, 2, 1, CAST(N'2021-08-13T00:00:00.000' AS DateTime), 1, N'1234567890', 2, 6, 3, 12, N'Test', N'1231', CAST(N'1994-03-03T00:00:00.000' AS DateTime), N'Male', N'Indian', N'Hindu', 4, 0, 2, 1, N'Tesat', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 0, 1, N'Fresher', N'H.S')
GO
INSERT [dbo].[tbl_EmployeeMaster] ([Id], [CompanyId], [EmployeeCategoryId], [EmployeeCode], [BiometricCode], [FirstName], [MiddleName], [LastName], [Email], [Project_BranchId], [DepartmentId], [DesignationId], [Higher_Authority_Branch_ProjectId], [Higher_AuthorityId], [Higher_Authority_NameId], [Date_Of_Joining], [Employee_TypeId], [Mobile_No], [Third_Party_Type], [Third_Party_Id], [Working_StatusId], [Probation_Period], [ReferenceEmployeeName], [Reference_Phone_No], [Date_Of_Birth], [Gender], [Nationality], [Religion], [CastId], [PhysicalDisability], [Blood_GroupId], [Marital_StatusId], [Identification_Mark], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Status], [ProfessionalInformation], [HighestQualification]) VALUES (6, 5, 4, N'101', N'101', N'Tewst', N'Tfsadf', N'sdf', N'tews@gmail.com', 1, 1, 2, 1, 2, 1, CAST(N'2021-08-13T00:00:00.000' AS DateTime), 1, N'1234567890', 2, 6, 3, 12, N'Test', N'1231', CAST(N'1994-03-03T00:00:00.000' AS DateTime), N'Male', N'Indian', N'Hindu', 4, 0, 2, 1, N'Tesat', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 0, 1, N'Fresher', N'H.S')
GO
INSERT [dbo].[tbl_EmployeeMaster] ([Id], [CompanyId], [EmployeeCategoryId], [EmployeeCode], [BiometricCode], [FirstName], [MiddleName], [LastName], [Email], [Project_BranchId], [DepartmentId], [DesignationId], [Higher_Authority_Branch_ProjectId], [Higher_AuthorityId], [Higher_Authority_NameId], [Date_Of_Joining], [Employee_TypeId], [Mobile_No], [Third_Party_Type], [Third_Party_Id], [Working_StatusId], [Probation_Period], [ReferenceEmployeeName], [Reference_Phone_No], [Date_Of_Birth], [Gender], [Nationality], [Religion], [CastId], [PhysicalDisability], [Blood_GroupId], [Marital_StatusId], [Identification_Mark], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Status], [ProfessionalInformation], [HighestQualification]) VALUES (7, 0, 0, N'string', N'string', N'string', N'string', N'string', N'string', 0, 0, 0, 0, 0, 0, CAST(N'2021-08-26T07:13:03.167' AS DateTime), 0, N'string', 0, 0, 0, 0, N'string', N'string', CAST(N'2021-08-26T07:13:03.167' AS DateTime), N'string', N'string', N'string', 0, 1, 0, 0, N'string', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 0, 1, N'Fresher', N'H.S')
GO
INSERT [dbo].[tbl_EmployeeMaster] ([Id], [CompanyId], [EmployeeCategoryId], [EmployeeCode], [BiometricCode], [FirstName], [MiddleName], [LastName], [Email], [Project_BranchId], [DepartmentId], [DesignationId], [Higher_Authority_Branch_ProjectId], [Higher_AuthorityId], [Higher_Authority_NameId], [Date_Of_Joining], [Employee_TypeId], [Mobile_No], [Third_Party_Type], [Third_Party_Id], [Working_StatusId], [Probation_Period], [ReferenceEmployeeName], [Reference_Phone_No], [Date_Of_Birth], [Gender], [Nationality], [Religion], [CastId], [PhysicalDisability], [Blood_GroupId], [Marital_StatusId], [Identification_Mark], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Status], [ProfessionalInformation], [HighestQualification]) VALUES (8, 0, 0, N'string', N'string', N'string', N'string', N'string', N'string', 0, 0, 0, 0, 0, 0, CAST(N'2021-08-26T07:13:03.167' AS DateTime), 0, N'string', 0, 0, 0, 0, N'string', N'string', CAST(N'2021-08-26T07:13:03.167' AS DateTime), N'string', N'string', N'string', 0, 1, 0, 0, N'string', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 0, 1, N'Fresher', N'H.S')
GO
INSERT [dbo].[tbl_EmployeeMaster] ([Id], [CompanyId], [EmployeeCategoryId], [EmployeeCode], [BiometricCode], [FirstName], [MiddleName], [LastName], [Email], [Project_BranchId], [DepartmentId], [DesignationId], [Higher_Authority_Branch_ProjectId], [Higher_AuthorityId], [Higher_Authority_NameId], [Date_Of_Joining], [Employee_TypeId], [Mobile_No], [Third_Party_Type], [Third_Party_Id], [Working_StatusId], [Probation_Period], [ReferenceEmployeeName], [Reference_Phone_No], [Date_Of_Birth], [Gender], [Nationality], [Religion], [CastId], [PhysicalDisability], [Blood_GroupId], [Marital_StatusId], [Identification_Mark], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Status], [ProfessionalInformation], [HighestQualification]) VALUES (9, 0, 0, N'string', N'string', N'string', N'string', N'string', N'string', 0, 0, 0, 0, 0, 0, CAST(N'2021-08-26T07:16:57.147' AS DateTime), 0, N'string', 0, 0, 0, 0, N'string', N'string', CAST(N'2021-08-26T07:16:57.147' AS DateTime), N'string', N'string', N'string', 0, 1, 0, 0, N'string', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 0, 1, N'Fresher', N'H.S')
GO
INSERT [dbo].[tbl_EmployeeMaster] ([Id], [CompanyId], [EmployeeCategoryId], [EmployeeCode], [BiometricCode], [FirstName], [MiddleName], [LastName], [Email], [Project_BranchId], [DepartmentId], [DesignationId], [Higher_Authority_Branch_ProjectId], [Higher_AuthorityId], [Higher_Authority_NameId], [Date_Of_Joining], [Employee_TypeId], [Mobile_No], [Third_Party_Type], [Third_Party_Id], [Working_StatusId], [Probation_Period], [ReferenceEmployeeName], [Reference_Phone_No], [Date_Of_Birth], [Gender], [Nationality], [Religion], [CastId], [PhysicalDisability], [Blood_GroupId], [Marital_StatusId], [Identification_Mark], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Status], [ProfessionalInformation], [HighestQualification]) VALUES (10, 4, 1, N'131', N'32131', N'Shivam', N'jaiswal', N'ram', N'ram@gmail.com', 2, 1, 2, 1, 1, 1, CAST(N'2021-08-27T00:00:00.000' AS DateTime), 1, N'9925821487', 1, 1, 2, 60, N'hardik', N'9909818474', CAST(N'1999-02-17T00:00:00.000' AS DateTime), N'Male', N'indian', N'hindu', 5, 0, 7, 2, N'hand ', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 1, 1, N'Fresher', N'H.S')
GO
SET IDENTITY_INSERT [dbo].[tbl_EmployeeMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_HighestQualification] ON 
GO
INSERT [dbo].[tbl_HighestQualification] ([Id], [Highest_Qualification], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (1, N'MADHYAMIK', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[tbl_HighestQualification] ([Id], [Highest_Qualification], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (2, N'HS', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[tbl_HighestQualification] ([Id], [Highest_Qualification], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (3, N'HS2', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[tbl_HighestQualification] ([Id], [Highest_Qualification], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (4, N'Mumbai', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[tbl_HighestQualification] ([Id], [Highest_Qualification], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (5, N'POST GRADUATION', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[tbl_HighestQualification] ([Id], [Highest_Qualification], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (6, N'B TECH', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[tbl_HighestQualification] ([Id], [Highest_Qualification], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (7, N'M TECH', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
INSERT [dbo].[tbl_HighestQualification] ([Id], [Highest_Qualification], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (8, N'GRADUATION', 1, NULL, NULL, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 1, N'1')
GO
SET IDENTITY_INSERT [dbo].[tbl_HighestQualification] OFF
GO
SET IDENTITY_INSERT [dbo].[tBL_HR_EMPLOYEE_EDUCATION_DETAILs] ON 
GO
INSERT [dbo].[tBL_HR_EMPLOYEE_EDUCATION_DETAILs] ([Id], [Employee_Id], [Emp_Year_OF_Passing], [Qualification], [Specialization], [School], [Marks], [Board], [Remarks], [AttachmentType_Path], [Attachment_Type], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (1, 1, 2020, N'string', N'string', N'string', NULL, N'string', N'string', N'string', N'string', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tBL_HR_EMPLOYEE_EDUCATION_DETAILs] ([Id], [Employee_Id], [Emp_Year_OF_Passing], [Qualification], [Specialization], [School], [Marks], [Board], [Remarks], [AttachmentType_Path], [Attachment_Type], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (2, 6, 0, N'3', N'sdfgd', N'sdfsdf', N'99', N'sdfsdf', NULL, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tBL_HR_EMPLOYEE_EDUCATION_DETAILs] ([Id], [Employee_Id], [Emp_Year_OF_Passing], [Qualification], [Specialization], [School], [Marks], [Board], [Remarks], [AttachmentType_Path], [Attachment_Type], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (3, 6, 0, N'7', N'hjc', N'dfgfdg', N'63', N'dfgdfg', NULL, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tBL_HR_EMPLOYEE_EDUCATION_DETAILs] ([Id], [Employee_Id], [Emp_Year_OF_Passing], [Qualification], [Specialization], [School], [Marks], [Board], [Remarks], [AttachmentType_Path], [Attachment_Type], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (4, 6, 0, N'2', N'sdfa', N'asd', N'56', N'asd', NULL, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tBL_HR_EMPLOYEE_EDUCATION_DETAILs] ([Id], [Employee_Id], [Emp_Year_OF_Passing], [Qualification], [Specialization], [School], [Marks], [Board], [Remarks], [AttachmentType_Path], [Attachment_Type], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (5, 7, 0, N'string', N'string', N'string', N'string', N'string', N'string', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tBL_HR_EMPLOYEE_EDUCATION_DETAILs] ([Id], [Employee_Id], [Emp_Year_OF_Passing], [Qualification], [Specialization], [School], [Marks], [Board], [Remarks], [AttachmentType_Path], [Attachment_Type], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (6, 8, 0, N'string', N'string', N'string', N'string', N'string', N'string', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tBL_HR_EMPLOYEE_EDUCATION_DETAILs] ([Id], [Employee_Id], [Emp_Year_OF_Passing], [Qualification], [Specialization], [School], [Marks], [Board], [Remarks], [AttachmentType_Path], [Attachment_Type], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (7, 9, 0, N'string', N'string', N'string', N'string', N'string', N'string', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tBL_HR_EMPLOYEE_EDUCATION_DETAILs] ([Id], [Employee_Id], [Emp_Year_OF_Passing], [Qualification], [Specialization], [School], [Marks], [Board], [Remarks], [AttachmentType_Path], [Attachment_Type], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (8, 10, 2010, N'BCA', N'bca', N'surat', N'70', N'gsseb', NULL, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tBL_HR_EMPLOYEE_EDUCATION_DETAILs] ([Id], [Employee_Id], [Emp_Year_OF_Passing], [Qualification], [Specialization], [School], [Marks], [Board], [Remarks], [AttachmentType_Path], [Attachment_Type], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (9, 10, 2021, N'BCA', N'bca', N'adyamik', N'81', N'GSSEB', NULL, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
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
SET IDENTITY_INSERT [dbo].[tBL_HR_EMPLOYEE_FAMILY_DETAILs] ON 
GO
INSERT [dbo].[tBL_HR_EMPLOYEE_FAMILY_DETAILs] ([Id], [Employee_Id], [FamilyDetail_Name], [FamilyDetail_RelationshipId], [FamilyDetail_Mobile], [FamilyDetail_EmailId], [FamilyDetail_DOB], [FamilyDetail_Address], [Identity_Number], [IsAadharStatus], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [AttachmentType_Path], [Attachment_Type]) VALUES (1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tBL_HR_EMPLOYEE_FAMILY_DETAILs] ([Id], [Employee_Id], [FamilyDetail_Name], [FamilyDetail_RelationshipId], [FamilyDetail_Mobile], [FamilyDetail_EmailId], [FamilyDetail_DOB], [FamilyDetail_Address], [Identity_Number], [IsAadharStatus], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [AttachmentType_Path], [Attachment_Type]) VALUES (2, 7, N'string', 0, N'string', N'string', CAST(N'2021-08-26T07:13:03.1670000' AS DateTime2), NULL, N'string', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tBL_HR_EMPLOYEE_FAMILY_DETAILs] ([Id], [Employee_Id], [FamilyDetail_Name], [FamilyDetail_RelationshipId], [FamilyDetail_Mobile], [FamilyDetail_EmailId], [FamilyDetail_DOB], [FamilyDetail_Address], [Identity_Number], [IsAadharStatus], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [AttachmentType_Path], [Attachment_Type]) VALUES (3, 8, N'string', 0, N'string', N'string', CAST(N'2021-08-26T07:13:03.1670000' AS DateTime2), NULL, N'string', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tBL_HR_EMPLOYEE_FAMILY_DETAILs] ([Id], [Employee_Id], [FamilyDetail_Name], [FamilyDetail_RelationshipId], [FamilyDetail_Mobile], [FamilyDetail_EmailId], [FamilyDetail_DOB], [FamilyDetail_Address], [Identity_Number], [IsAadharStatus], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [AttachmentType_Path], [Attachment_Type]) VALUES (4, 9, N'string', 0, N'string', N'string', CAST(N'2021-08-26T07:16:57.1460000' AS DateTime2), NULL, N'string', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tBL_HR_EMPLOYEE_FAMILY_DETAILs] ([Id], [Employee_Id], [FamilyDetail_Name], [FamilyDetail_RelationshipId], [FamilyDetail_Mobile], [FamilyDetail_EmailId], [FamilyDetail_DOB], [FamilyDetail_Address], [Identity_Number], [IsAadharStatus], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [AttachmentType_Path], [Attachment_Type]) VALUES (5, 10, N'ram', 1, N'1896514546', NULL, CAST(N'1982-07-12T00:00:00.0000000' AS DateTime2), NULL, N'0657448541', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tBL_HR_EMPLOYEE_FAMILY_DETAILs] ([Id], [Employee_Id], [FamilyDetail_Name], [FamilyDetail_RelationshipId], [FamilyDetail_Mobile], [FamilyDetail_EmailId], [FamilyDetail_DOB], [FamilyDetail_Address], [Identity_Number], [IsAadharStatus], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [AttachmentType_Path], [Attachment_Type]) VALUES (6, 10, N'shyam', 1, N'9929882169', NULL, CAST(N'1997-02-26T00:00:00.0000000' AS DateTime2), NULL, N'224632143546', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tBL_HR_EMPLOYEE_FAMILY_DETAILs] OFF
GO
SET IDENTITY_INSERT [dbo].[tBL_HR_EMPLOYEE_NOMINEE_DETAILs] ON 
GO
INSERT [dbo].[tBL_HR_EMPLOYEE_NOMINEE_DETAILs] ([Id], [Employee_Id], [Nominee_Name], [Nominee_RelationshipId], [Nominee_Mobile], [Nominee_EmailId], [Nominee_DOB], [Nominee_Address], [Identity_Number], [IsAadharStatus], [AttachmentType_Path], [Attachment_Type], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (1, 0, N'string', NULL, N'string', N'user@example.com', CAST(N'2021-07-24T00:00:00.0000000' AS DateTime2), NULL, N'string', 1, N'string', N'string', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tBL_HR_EMPLOYEE_NOMINEE_DETAILs] ([Id], [Employee_Id], [Nominee_Name], [Nominee_RelationshipId], [Nominee_Mobile], [Nominee_EmailId], [Nominee_DOB], [Nominee_Address], [Identity_Number], [IsAadharStatus], [AttachmentType_Path], [Attachment_Type], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (2, 6, N'zxczx', NULL, N'12343453', NULL, CAST(N'1997-06-04T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tBL_HR_EMPLOYEE_NOMINEE_DETAILs] ([Id], [Employee_Id], [Nominee_Name], [Nominee_RelationshipId], [Nominee_Mobile], [Nominee_EmailId], [Nominee_DOB], [Nominee_Address], [Identity_Number], [IsAadharStatus], [AttachmentType_Path], [Attachment_Type], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (3, 7, N'string', 0, N'string', N'string', CAST(N'2021-08-26T07:13:03.1670000' AS DateTime2), N'string', N'string', 1, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tBL_HR_EMPLOYEE_NOMINEE_DETAILs] ([Id], [Employee_Id], [Nominee_Name], [Nominee_RelationshipId], [Nominee_Mobile], [Nominee_EmailId], [Nominee_DOB], [Nominee_Address], [Identity_Number], [IsAadharStatus], [AttachmentType_Path], [Attachment_Type], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (4, 8, N'string', 0, N'string', N'string', CAST(N'2021-08-26T07:13:03.1670000' AS DateTime2), N'string', N'string', 1, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tBL_HR_EMPLOYEE_NOMINEE_DETAILs] ([Id], [Employee_Id], [Nominee_Name], [Nominee_RelationshipId], [Nominee_Mobile], [Nominee_EmailId], [Nominee_DOB], [Nominee_Address], [Identity_Number], [IsAadharStatus], [AttachmentType_Path], [Attachment_Type], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (5, 9, N'string', 0, N'string', N'string', CAST(N'2021-08-26T07:16:57.1460000' AS DateTime2), N'string', N'string', 1, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tBL_HR_EMPLOYEE_NOMINEE_DETAILs] ([Id], [Employee_Id], [Nominee_Name], [Nominee_RelationshipId], [Nominee_Mobile], [Nominee_EmailId], [Nominee_DOB], [Nominee_Address], [Identity_Number], [IsAadharStatus], [AttachmentType_Path], [Attachment_Type], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (6, 10, N'shafir', 3, N'0166714524', NULL, CAST(N'1992-03-26T00:00:00.0000000' AS DateTime2), N'surat', N'0546375252146', 0, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tBL_HR_EMPLOYEE_NOMINEE_DETAILs] ([Id], [Employee_Id], [Nominee_Name], [Nominee_RelationshipId], [Nominee_Mobile], [Nominee_EmailId], [Nominee_DOB], [Nominee_Address], [Identity_Number], [IsAadharStatus], [AttachmentType_Path], [Attachment_Type], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (7, 10, N'shubam', 1, N'3574657465354', NULL, CAST(N'1988-05-12T00:00:00.0000000' AS DateTime2), N'surat', N'246535463456', 0, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tBL_HR_EMPLOYEE_NOMINEE_DETAILs] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_IdentityType] ON 
GO
INSERT [dbo].[tbl_IdentityType] ([Id], [Identity_Type], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (1, N'PAN', 1, NULL, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-07-28T22:33:07.1200000' AS DateTime2), 1, 1, NULL, 1, NULL)
GO
INSERT [dbo].[tbl_IdentityType] ([Id], [Identity_Type], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (2, N'VOTER CARD', 1, NULL, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-08-01T22:33:07.0000000' AS DateTime2), 1, 1, NULL, 1, NULL)
GO
INSERT [dbo].[tbl_IdentityType] ([Id], [Identity_Type], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (3, N'ADHAR CARD', 1, NULL, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-08-01T22:33:07.0000000' AS DateTime2), 1, 1, NULL, 1, NULL)
GO
INSERT [dbo].[tbl_IdentityType] ([Id], [Identity_Type], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (4, N'PASSPORT', 1, NULL, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-08-01T22:33:07.0000000' AS DateTime2), 1, 1, NULL, 1, NULL)
GO
INSERT [dbo].[tbl_IdentityType] ([Id], [Identity_Type], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (5, N'UAN', 1, NULL, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-08-01T22:33:07.0000000' AS DateTime2), 1, 1, NULL, 1, NULL)
GO
INSERT [dbo].[tbl_IdentityType] ([Id], [Identity_Type], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (6, N'ESI No', 1, NULL, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-08-01T22:33:07.0000000' AS DateTime2), 1, 1, NULL, 1, NULL)
GO
INSERT [dbo].[tbl_IdentityType] ([Id], [Identity_Type], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (7, N'PF No', 1, NULL, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-08-01T22:33:07.0000000' AS DateTime2), 1, 1, NULL, 1, NULL)
GO
INSERT [dbo].[tbl_IdentityType] ([Id], [Identity_Type], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (8, N'BIRTH CERTIFICATE', 1, NULL, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-08-01T22:33:07.0000000' AS DateTime2), 1, 1, NULL, 1, NULL)
GO
INSERT [dbo].[tbl_IdentityType] ([Id], [Identity_Type], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (9, N'SCHOOL CERTIFICATE', 1, NULL, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-08-01T22:33:07.0000000' AS DateTime2), 1, 1, NULL, 1, NULL)
GO
INSERT [dbo].[tbl_IdentityType] ([Id], [Identity_Type], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (10, N'AdmitCard', 1, NULL, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-08-01T22:33:07.0000000' AS DateTime2), 1, 1, NULL, 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_IdentityType] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_MaritalStatus] ON 
GO
INSERT [dbo].[tbl_MaritalStatus] ([Id], [Marital_Status], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (1, N'Single', 1, NULL, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-07-28T11:26:27.1466667' AS DateTime2), 1, 1, NULL, 1, NULL)
GO
INSERT [dbo].[tbl_MaritalStatus] ([Id], [Marital_Status], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (2, N'Married', 1, NULL, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-08-01T11:26:27.0000000' AS DateTime2), 1, 1, NULL, 1, NULL)
GO
INSERT [dbo].[tbl_MaritalStatus] ([Id], [Marital_Status], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (3, N'Widow', 1, NULL, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-08-01T11:26:27.0000000' AS DateTime2), 1, 1, NULL, 1, NULL)
GO
INSERT [dbo].[tbl_MaritalStatus] ([Id], [Marital_Status], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (4, N'Divorce', 1, NULL, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-08-01T11:26:27.0000000' AS DateTime2), 1, 1, NULL, 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_MaritalStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_OtherInformation] ON 
GO
INSERT [dbo].[tbl_OtherInformation] ([Id], [Bank_Name], [Branch_Name], [Account_No], [IFSC_Code], [Status], [Other_Details], [Card_No], [CarProxy_Nod_No], [User_Type], [Signature], [Picture], [Employee_Id], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [User_Id], [User_Data]) VALUES (3, N'adgfads', N'asdgasdg', N'345345345', N'3453453', 1, N'sdfbdgbbsrtbbsdfbds', N'3465346346346346', N'34563465234623', 2, N'string', N'string', 0, 2, N'fsdf', N'sdf', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, N'Emp Code', NULL)
GO
INSERT [dbo].[tbl_OtherInformation] ([Id], [Bank_Name], [Branch_Name], [Account_No], [IFSC_Code], [Status], [Other_Details], [Card_No], [CarProxy_Nod_No], [User_Type], [Signature], [Picture], [Employee_Id], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [User_Id], [User_Data]) VALUES (4, N'adgfads', N'asdgasdg', N'345345345', N'3453453', 1, N'sdfbdgbbsrtbbsdfbds', N'3465346346346346', N'34563465234623', 2, N'string', N'string', 0, 2, N'fsdf', N'sdf', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, N'Emp Code', NULL)
GO
INSERT [dbo].[tbl_OtherInformation] ([Id], [Bank_Name], [Branch_Name], [Account_No], [IFSC_Code], [Status], [Other_Details], [Card_No], [CarProxy_Nod_No], [User_Type], [Signature], [Picture], [Employee_Id], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [User_Id], [User_Data]) VALUES (5, N'adgfads', N'asdgasdg', N'345345345', N'3453453', 1, N'sdfbdgbbsrtbbsdfbds', N'3465346346346346', N'34563465234623', 2, N'string', N'string', 0, 2, N'fsdf', N'sdf', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, N'Emp Code', NULL)
GO
INSERT [dbo].[tbl_OtherInformation] ([Id], [Bank_Name], [Branch_Name], [Account_No], [IFSC_Code], [Status], [Other_Details], [Card_No], [CarProxy_Nod_No], [User_Type], [Signature], [Picture], [Employee_Id], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [User_Id], [User_Data]) VALUES (6, N'adgfads', N'asdgasdg', N'345345345', N'3453453', 1, N'sdfbdgbbsrtbbsdfbds', N'3465346346346346', N'34563465234623', 2, N'string', N'string', 0, 2, N'fsdf', N'sdf', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, N'Emp Code', NULL)
GO
INSERT [dbo].[tbl_OtherInformation] ([Id], [Bank_Name], [Branch_Name], [Account_No], [IFSC_Code], [Status], [Other_Details], [Card_No], [CarProxy_Nod_No], [User_Type], [Signature], [Picture], [Employee_Id], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [User_Id], [User_Data]) VALUES (7, N'adgfads', N'asdgasdg', N'345345345', N'3453453', 1, N'sdfbdgbbsrtbbsdfbds', N'3465346346346346', N'34563465234623', 2, N'string', N'string', 0, 2, N'fsdf', N'sdf', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, N'Emp Code', NULL)
GO
INSERT [dbo].[tbl_OtherInformation] ([Id], [Bank_Name], [Branch_Name], [Account_No], [IFSC_Code], [Status], [Other_Details], [Card_No], [CarProxy_Nod_No], [User_Type], [Signature], [Picture], [Employee_Id], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [User_Id], [User_Data]) VALUES (8, N'adgfads', N'asdgasdg', N'345345345', N'3453453', 1, N'sdfbdgbbsrtbbsdfbds', N'3465346346346346', N'34563465234623', 2, N'string', N'string', 0, 2, N'fsdf', N'sdf', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, N'Emp Code', NULL)
GO
INSERT [dbo].[tbl_OtherInformation] ([Id], [Bank_Name], [Branch_Name], [Account_No], [IFSC_Code], [Status], [Other_Details], [Card_No], [CarProxy_Nod_No], [User_Type], [Signature], [Picture], [Employee_Id], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [User_Id], [User_Data]) VALUES (9, N'Teastdszf', N'asdasd', N'41324563', N'dfg', 1, N'asdfsf', N'1234242', N'4534563', 2, N'C:\fakepath\images.jpg', N'C:\fakepath\maxresdefault.jpg', 6, 0, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, N'Emp Code', NULL)
GO
INSERT [dbo].[tbl_OtherInformation] ([Id], [Bank_Name], [Branch_Name], [Account_No], [IFSC_Code], [Status], [Other_Details], [Card_No], [CarProxy_Nod_No], [User_Type], [Signature], [Picture], [Employee_Id], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [User_Id], [User_Data]) VALUES (10, N'string', N'string', N'string', N'string', 1, N'string', N'string', N'string', 2, N'string', N'string', 7, 0, N'string', N'string', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, N'Emp Code', NULL)
GO
INSERT [dbo].[tbl_OtherInformation] ([Id], [Bank_Name], [Branch_Name], [Account_No], [IFSC_Code], [Status], [Other_Details], [Card_No], [CarProxy_Nod_No], [User_Type], [Signature], [Picture], [Employee_Id], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [User_Id], [User_Data]) VALUES (11, N'string', N'string', N'string', N'string', 1, N'string', N'string', N'string', 2, N'string', N'string', 8, 0, N'string', N'string', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, N'Emp Code', NULL)
GO
INSERT [dbo].[tbl_OtherInformation] ([Id], [Bank_Name], [Branch_Name], [Account_No], [IFSC_Code], [Status], [Other_Details], [Card_No], [CarProxy_Nod_No], [User_Type], [Signature], [Picture], [Employee_Id], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [User_Id], [User_Data]) VALUES (12, N'string', N'string', N'string', N'string', 1, N'string', N'string', N'string', 2, N'string', N'string', 9, 0, N'string', N'string', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, N'Emp Code', NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_OtherInformation] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_ProfessionalInformation] ON 
GO
INSERT [dbo].[tbl_ProfessionalInformation] ([Id], [EmployeerName], [Status_Id], [EmployeerAddress], [Designation], [ContactPerson], [EmailId], [AttachmentType_Path], [Attachment_Type], [DateOfJoining], [DateOfLeaving], [ReasonForLeaving], [LastDrawnSalary], [ContactNo], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Employee_Id]) VALUES (2, N'Fresher', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[tbl_ProfessionalInformation] ([Id], [EmployeerName], [Status_Id], [EmployeerAddress], [Designation], [ContactPerson], [EmailId], [AttachmentType_Path], [Attachment_Type], [DateOfJoining], [DateOfLeaving], [ReasonForLeaving], [LastDrawnSalary], [ContactNo], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Employee_Id]) VALUES (3, N'Experience', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[tbl_ProfessionalInformation] ([Id], [EmployeerName], [Status_Id], [EmployeerAddress], [Designation], [ContactPerson], [EmailId], [AttachmentType_Path], [Attachment_Type], [DateOfJoining], [DateOfLeaving], [ReasonForLeaving], [LastDrawnSalary], [ContactNo], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Employee_Id]) VALUES (4, N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[tbl_ProfessionalInformation] ([Id], [EmployeerName], [Status_Id], [EmployeerAddress], [Designation], [ContactPerson], [EmailId], [AttachmentType_Path], [Attachment_Type], [DateOfJoining], [DateOfLeaving], [ReasonForLeaving], [LastDrawnSalary], [ContactNo], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Employee_Id]) VALUES (5, N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[tbl_ProfessionalInformation] ([Id], [EmployeerName], [Status_Id], [EmployeerAddress], [Designation], [ContactPerson], [EmailId], [AttachmentType_Path], [Attachment_Type], [DateOfJoining], [DateOfLeaving], [ReasonForLeaving], [LastDrawnSalary], [ContactNo], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Employee_Id]) VALUES (6, N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[tbl_ProfessionalInformation] ([Id], [EmployeerName], [Status_Id], [EmployeerAddress], [Designation], [ContactPerson], [EmailId], [AttachmentType_Path], [Attachment_Type], [DateOfJoining], [DateOfLeaving], [ReasonForLeaving], [LastDrawnSalary], [ContactNo], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Employee_Id]) VALUES (7, N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[tbl_ProfessionalInformation] ([Id], [EmployeerName], [Status_Id], [EmployeerAddress], [Designation], [ContactPerson], [EmailId], [AttachmentType_Path], [Attachment_Type], [DateOfJoining], [DateOfLeaving], [ReasonForLeaving], [LastDrawnSalary], [ContactNo], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Employee_Id]) VALUES (8, N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[tbl_ProfessionalInformation] ([Id], [EmployeerName], [Status_Id], [EmployeerAddress], [Designation], [ContactPerson], [EmailId], [AttachmentType_Path], [Attachment_Type], [DateOfJoining], [DateOfLeaving], [ReasonForLeaving], [LastDrawnSalary], [ContactNo], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Employee_Id]) VALUES (9, N'safaf', 0, N'asfasfasfas', N'assaf', N'asfsa', N'sdsdsd40@gamil.com', NULL, NULL, CAST(N'2021-08-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-08-26T00:00:00.0000000' AS DateTime2), N'dsfsdfsdssffd', N'10000', N'5656565', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[tbl_ProfessionalInformation] ([Id], [EmployeerName], [Status_Id], [EmployeerAddress], [Designation], [ContactPerson], [EmailId], [AttachmentType_Path], [Attachment_Type], [DateOfJoining], [DateOfLeaving], [ReasonForLeaving], [LastDrawnSalary], [ContactNo], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Employee_Id]) VALUES (10, N'safaf', 0, N'asfasfasfas', N'assaf', N'asfsa', N'sdsdsd40@gamil.com', NULL, NULL, CAST(N'2021-08-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-08-26T00:00:00.0000000' AS DateTime2), N'dsfsdfsdssffd', N'10000', N'5656565', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 2)
GO
INSERT [dbo].[tbl_ProfessionalInformation] ([Id], [EmployeerName], [Status_Id], [EmployeerAddress], [Designation], [ContactPerson], [EmailId], [AttachmentType_Path], [Attachment_Type], [DateOfJoining], [DateOfLeaving], [ReasonForLeaving], [LastDrawnSalary], [ContactNo], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Employee_Id]) VALUES (11, N'safaf', 0, N'asfasfasfas', N'assaf', N'asfsa', N'sdsdsd40@gamil.com', NULL, NULL, CAST(N'2021-08-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-08-26T00:00:00.0000000' AS DateTime2), N'dsfsdfsdssffd', N'10000', N'5656565', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 3)
GO
INSERT [dbo].[tbl_ProfessionalInformation] ([Id], [EmployeerName], [Status_Id], [EmployeerAddress], [Designation], [ContactPerson], [EmailId], [AttachmentType_Path], [Attachment_Type], [DateOfJoining], [DateOfLeaving], [ReasonForLeaving], [LastDrawnSalary], [ContactNo], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Employee_Id]) VALUES (12, N'safaf', 0, N'asfasfasfas', N'assaf', N'asfsa', N'sdsdsd40@gamil.com', NULL, NULL, CAST(N'2021-08-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-08-26T00:00:00.0000000' AS DateTime2), N'dsfsdfsdssffd', N'10000', N'5656565', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 4)
GO
INSERT [dbo].[tbl_ProfessionalInformation] ([Id], [EmployeerName], [Status_Id], [EmployeerAddress], [Designation], [ContactPerson], [EmailId], [AttachmentType_Path], [Attachment_Type], [DateOfJoining], [DateOfLeaving], [ReasonForLeaving], [LastDrawnSalary], [ContactNo], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Employee_Id]) VALUES (13, N'asd', 0, N'asd', N'asd', N'asdasd', N'asd@gmail.com', NULL, NULL, CAST(N'1992-01-29T00:00:00.0000000' AS DateTime2), CAST(N'2021-08-18T00:00:00.0000000' AS DateTime2), N'asd', N'1500', N'1564', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 6)
GO
INSERT [dbo].[tbl_ProfessionalInformation] ([Id], [EmployeerName], [Status_Id], [EmployeerAddress], [Designation], [ContactPerson], [EmailId], [AttachmentType_Path], [Attachment_Type], [DateOfJoining], [DateOfLeaving], [ReasonForLeaving], [LastDrawnSalary], [ContactNo], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Employee_Id]) VALUES (14, N'asd', 0, N'asd', N'asd', N'asdasd', N'asd@gmail.com', NULL, NULL, CAST(N'1992-01-29T00:00:00.0000000' AS DateTime2), CAST(N'2021-08-18T00:00:00.0000000' AS DateTime2), N'asd', N'1500', N'1564', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 6)
GO
INSERT [dbo].[tbl_ProfessionalInformation] ([Id], [EmployeerName], [Status_Id], [EmployeerAddress], [Designation], [ContactPerson], [EmailId], [AttachmentType_Path], [Attachment_Type], [DateOfJoining], [DateOfLeaving], [ReasonForLeaving], [LastDrawnSalary], [ContactNo], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Employee_Id]) VALUES (15, N'asd', 0, N'asd', N'asd', N'asdasd', N'asd@gmail.com', NULL, NULL, CAST(N'1992-01-29T00:00:00.0000000' AS DateTime2), CAST(N'2021-08-18T00:00:00.0000000' AS DateTime2), N'asd', N'1500', N'1564', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 6)
GO
INSERT [dbo].[tbl_ProfessionalInformation] ([Id], [EmployeerName], [Status_Id], [EmployeerAddress], [Designation], [ContactPerson], [EmailId], [AttachmentType_Path], [Attachment_Type], [DateOfJoining], [DateOfLeaving], [ReasonForLeaving], [LastDrawnSalary], [ContactNo], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Employee_Id]) VALUES (16, N'string', 0, N'string', N'string', N'string', N'string', N'string', NULL, CAST(N'2021-08-26T07:13:03.1670000' AS DateTime2), CAST(N'2021-08-26T07:13:03.1670000' AS DateTime2), N'string', N'string', N'string', N'string', N'string', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 7)
GO
INSERT [dbo].[tbl_ProfessionalInformation] ([Id], [EmployeerName], [Status_Id], [EmployeerAddress], [Designation], [ContactPerson], [EmailId], [AttachmentType_Path], [Attachment_Type], [DateOfJoining], [DateOfLeaving], [ReasonForLeaving], [LastDrawnSalary], [ContactNo], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Employee_Id]) VALUES (17, N'string', 0, N'string', N'string', N'string', N'string', N'string', NULL, CAST(N'2021-08-26T07:13:03.1670000' AS DateTime2), CAST(N'2021-08-26T07:13:03.1670000' AS DateTime2), N'string', N'string', N'string', N'string', N'string', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 8)
GO
INSERT [dbo].[tbl_ProfessionalInformation] ([Id], [EmployeerName], [Status_Id], [EmployeerAddress], [Designation], [ContactPerson], [EmailId], [AttachmentType_Path], [Attachment_Type], [DateOfJoining], [DateOfLeaving], [ReasonForLeaving], [LastDrawnSalary], [ContactNo], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Employee_Id]) VALUES (18, N'string', 0, N'string', N'string', N'string', N'string', N'string', NULL, CAST(N'2021-08-26T07:16:57.1460000' AS DateTime2), CAST(N'2021-08-26T07:16:57.1460000' AS DateTime2), N'string', N'string', N'string', N'string', N'string', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 9)
GO
INSERT [dbo].[tbl_ProfessionalInformation] ([Id], [EmployeerName], [Status_Id], [EmployeerAddress], [Designation], [ContactPerson], [EmailId], [AttachmentType_Path], [Attachment_Type], [DateOfJoining], [DateOfLeaving], [ReasonForLeaving], [LastDrawnSalary], [ContactNo], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Employee_Id]) VALUES (19, N'RAMMU', 0, N'SURAT', N'BCA', N'SHIVA', N'RAMMU@GMAILCOM', NULL, NULL, CAST(N'2021-07-28T00:00:00.0000000' AS DateTime2), CAST(N'2021-08-03T00:00:00.0000000' AS DateTime2), N'MANGAMENT NT PROPER', N'10', N'9926583226', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 10)
GO
INSERT [dbo].[tbl_ProfessionalInformation] ([Id], [EmployeerName], [Status_Id], [EmployeerAddress], [Designation], [ContactPerson], [EmailId], [AttachmentType_Path], [Attachment_Type], [DateOfJoining], [DateOfLeaving], [ReasonForLeaving], [LastDrawnSalary], [ContactNo], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Employee_Id]) VALUES (20, N'JAMMU', 0, N'SURAT', N'BCA', N'SHIVA', N'RAMMU@GMAILCOM', NULL, NULL, CAST(N'2021-07-28T00:00:00.0000000' AS DateTime2), CAST(N'2021-08-03T00:00:00.0000000' AS DateTime2), N'MANGAMENT NT PROPER', N'10', N'9926583226', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 10)
GO
SET IDENTITY_INSERT [dbo].[tbl_ProfessionalInformation] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_UserType] ON 
GO
INSERT [dbo].[tbl_UserType] ([Id], [User_Type], [Status_Id], [Remarks], [Action_Remarks], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name]) VALUES (1, N'Admin', 1, NULL, NULL, CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), 1, 1, NULL, 1, NULL, CAST(N'2021-07-28T10:39:19.2466667' AS DateTime2), 1, 1, NULL, 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_UserType] OFF
GO
