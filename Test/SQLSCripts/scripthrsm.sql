USE [Freelencer]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 03-07-2021 12:30:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_Branches]    Script Date: 03-07-2021 12:30:38 ******/
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
/****** Object:  Table [dbo].[sys_Compnays]    Script Date: 03-07-2021 12:30:38 ******/
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
/****** Object:  Table [dbo].[sys_COUNTRies]    Script Date: 03-07-2021 12:30:38 ******/
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
/****** Object:  Table [dbo].[sys_DEPARTMENTs]    Script Date: 03-07-2021 12:30:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_DEPARTMENTs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Branch_Id] [int] NOT NULL,
	[Department_Name] [nvarchar](max) NULL,
	[Departmen_Code] [nvarchar](max) NULL,
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
/****** Object:  Table [dbo].[sys_DESIGNATIONs]    Script Date: 03-07-2021 12:30:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_DESIGNATIONs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Department_Id] [int] NOT NULL,
	[Designation_Name] [int] NOT NULL,
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
/****** Object:  Table [dbo].[sys_DISTRICTs]    Script Date: 03-07-2021 12:30:38 ******/
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
/****** Object:  Table [dbo].[sys_PRODUCTIONs]    Script Date: 03-07-2021 12:30:38 ******/
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
/****** Object:  Table [dbo].[sys_REGIONs]    Script Date: 03-07-2021 12:30:38 ******/
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
/****** Object:  Table [dbo].[sys_STATEs]    Script Date: 03-07-2021 12:30:38 ******/
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
/****** Object:  Table [dbo].[Sys_Warehouses]    Script Date: 03-07-2021 12:30:38 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tBL_HR_EMPLOYEE_ACTIVATION_OTP_DETAILs]    Script Date: 03-07-2021 12:30:38 ******/
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
/****** Object:  Table [dbo].[tBL_HR_EMPLOYEE_DETAILs]    Script Date: 03-07-2021 12:30:38 ******/
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
 CONSTRAINT [PK_tBL_HR_EMPLOYEE_DETAILs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tBL_HR_EMPLOYEE_EDUCATION_s]    Script Date: 03-07-2021 12:30:38 ******/
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
/****** Object:  Table [dbo].[tBL_HR_EMPLOYEE_EXPERIENCE_DETAILs]    Script Date: 03-07-2021 12:30:38 ******/
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
/****** Object:  Table [dbo].[tBL_HR_EMPLOYEE_FAMILY_DETAILs]    Script Date: 03-07-2021 12:30:38 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tBL_HR_EMPLOYEE_IDENTITYPROOF_DETAILs]    Script Date: 03-07-2021 12:30:38 ******/
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
/****** Object:  Table [dbo].[tBL_HR_EMPLOYEE_NOMINEE_DETAILs]    Script Date: 03-07-2021 12:30:38 ******/
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
 CONSTRAINT [PK_tBL_HR_EMPLOYEE_NOMINEE_DETAILs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_HR_Employees]    Script Date: 03-07-2021 12:30:38 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tBL_HR_LOGIN_USERs]    Script Date: 03-07-2021 12:30:38 ******/
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
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210626135130_Persistent.FreelencerDBContext', N'5.0.7')
GO
SET IDENTITY_INSERT [dbo].[tBL_HR_EMPLOYEE_EDUCATION_s] ON 

INSERT [dbo].[tBL_HR_EMPLOYEE_EDUCATION_s] ([Id], [Employee_Id], [Enum_Id], [Emp_Year_OF_Passing], [Emp_Organization], [Emp_Board_Council_University], [Emp_Qualification_Percent], [Emp_Qualification_Percentile], [Remarks], [AttachmentType_Path], [Attachment_Type]) VALUES (1, 1, 1, 2017, N'Test', N'Test', N'TEst', N'Test', N'Test', N'Test/test', N'.png')
INSERT [dbo].[tBL_HR_EMPLOYEE_EDUCATION_s] ([Id], [Employee_Id], [Enum_Id], [Emp_Year_OF_Passing], [Emp_Organization], [Emp_Board_Council_University], [Emp_Qualification_Percent], [Emp_Qualification_Percentile], [Remarks], [AttachmentType_Path], [Attachment_Type]) VALUES (2, 2, 2, 2010, N'Freelencer', N'MH', N'70', N'', N'Test', N'', N'')
SET IDENTITY_INSERT [dbo].[tBL_HR_EMPLOYEE_EDUCATION_s] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_HR_Employees] ON 

INSERT [dbo].[tbl_HR_Employees] ([Id], [Emp_Name], [Emp_Code], [Emp_System_Code], [Emp_Biometric_Code], [Acct_Id], [Company_Id], [Branch_Id], [Warehouse_Id], [ProductionUnit_Id], [Department_Id], [Designation_Id], [State_Id], [HigherAuthority_Id], [ThirdParty_Id], [Enum_Id_EmpType], [Enum_Id_EmpCategory], [Enum_Id_Emp_Working_Status], [Is_New_User], [Role_Id], [Email_Id], [Mobile_No], [Profile_Pic_Path], [Signature_Pic_Path], [Login_User_Id], [IsExperiance], [No_Of_Update], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (1, N'Testing', N'Test123', N'Test123', N'Test11111', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, N'user@example.com', N'7845963210', N'test/test', N'test/test', 1, 1, 1, CAST(N'2021-06-29T12:13:26.1560944' AS DateTime2), 0, 0, N'', 0, N'', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_HR_Employees] ([Id], [Emp_Name], [Emp_Code], [Emp_System_Code], [Emp_Biometric_Code], [Acct_Id], [Company_Id], [Branch_Id], [Warehouse_Id], [ProductionUnit_Id], [Department_Id], [Designation_Id], [State_Id], [HigherAuthority_Id], [ThirdParty_Id], [Enum_Id_EmpType], [Enum_Id_EmpCategory], [Enum_Id_Emp_Working_Status], [Is_New_User], [Role_Id], [Email_Id], [Mobile_No], [Profile_Pic_Path], [Signature_Pic_Path], [Login_User_Id], [IsExperiance], [No_Of_Update], [CreatedOn_Date], [CreatedBy_Login_User_Id], [CreatedBy_Login_Session_Id], [CreatedFrom_Page], [CreatedFrom_Sub_Menu_Id], [CreatedFrom_API_Name], [UpdatedOn_Date], [UpdatedBy_Login_User_Id], [UpdatedBy_Login_Session_Id], [UpdatedFrom_Page], [UpdatedFrom_Sub_Menu_Id], [UpdatedFrom_API_Name], [Status_Id], [Remarks], [Action_Remarks]) VALUES (2, N'Shivam', N'Shi1234', N'', N'', 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, N'Shivam@gmail.com', N'7485963210', N'', N'', 1, 1, 1, CAST(N'2021-06-29T13:41:39.4194568' AS DateTime2), 0, 0, N'', 0, N'', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_HR_Employees] OFF
GO
