CREATE TABLE [dbo].[Mst_Menu](
	[MID] [int] IDENTITY(1,1) NOT NULL,
	[PMID] [int] NULL,
	[MenuName] [varchar](200) NULL,
	[MenuUrl] [varchar](200) NULL,
	[MenuDesc] [varchar](200) NULL,
	[MainMenu] [nvarchar](500) NULL,
	[SortOrder] [int] NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedOn] [datetime] NULL,
	[IsFrontMenu] [bit] NULL,
	[IsHidden] [bit] NULL,
 CONSTRAINT [PK_Mst_Menu] PRIMARY KEY CLUSTERED 
(
	[MID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mst_Right]    Script Date: 12-09-2025 17:38:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mst_Right](
	[RID] [int] IDENTITY(1,1) NOT NULL,
	[RightsName] [nvarchar](250) NULL,
 CONSTRAINT [PK_Mst_UserRights] PRIMARY KEY CLUSTERED 
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mst_Role]    Script Date: 12-09-2025 17:38:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mst_Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](150) NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedOn] [datetime] NULL,
 CONSTRAINT [PK_Mst_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mst_RolePermission]    Script Date: 12-09-2025 17:38:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mst_RolePermission](
	[PerID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NOT NULL,
	[MenuId] [varchar](max) NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedOn] [datetime] NULL,
 CONSTRAINT [PK_RolePermission] PRIMARY KEY CLUSTERED 
(
	[PerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mst_UserRight]    Script Date: 12-09-2025 17:38:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mst_UserRight](
	[URAID] [int] IDENTITY(1,1) NOT NULL,
	[EmpID] [int] NULL,
	[UserID] [int] NULL,
	[MenuID] [int] NULL,
	[RID] [nvarchar](50) NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedOn] [datetime] NULL,
 CONSTRAINT [PK_Mst_UserRight] PRIMARY KEY CLUSTERED 
(
	[URAID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Mst_Menu] ON 
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (1, 0, N'EMPLOYEE', N'#', N'EMPLOYEE', N'employee', 1, 1, NULL, 1, CAST(N'2019-10-02T13:42:45.710' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (2, 0, N'LEAVE', N'#', N'LEAVE', N'leave', 2, 1, NULL, 378, CAST(N'2025-06-23T17:44:14.463' AS DateTime), NULL, NULL, 1, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (3, 0, N'ADMIN', N'#', N'ADMIN', N'admin', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (4, 0, N'MENU', N'#', N'MENU', N'menu', 6, 1, NULL, 378, CAST(N'2024-08-21T13:04:35.757' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (5, 1, N'EMPLOYEE MANAGEMENT', N'Employee/Index', N'EMPLOYEE MANAGEMENT', N'employeemanagement', 1, NULL, NULL, 1, CAST(N'2019-10-02T13:39:26.243' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (6, 1, N'PAY RUN', N'PayRun/PayRunEms', N'PAY RUN', N'payrun', 2, NULL, NULL, 1, CAST(N'2019-10-21T13:12:57.353' AS DateTime), 378, CAST(N'2024-06-12T10:02:34.487' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (7, 1, N'WORK ROTATION', N'WorkAllocation/SetWorkAllocation', N'WORK ROTATION', N'workrotation', 3, NULL, NULL, 1, CAST(N'2019-11-12T14:33:37.080' AS DateTime), 378, CAST(N'2024-06-12T10:02:42.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (8, 1, N'INTERVIEWS', N'InterviewDetails/InterviewDtl', N'INTERVIEWS', N'interviews', 4, NULL, NULL, 1, CAST(N'2019-11-26T14:07:40.847' AS DateTime), 378, CAST(N'2024-06-12T10:02:48.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (9, 1, N'EMPLOYEE ACTION FORM', N'EmployeeActionForm/ActionForm', N'EMPLOYEE ACTION FORM', N'employeeactionform', 6, NULL, NULL, 1, CAST(N'2019-11-07T19:21:18.840' AS DateTime), 378, CAST(N'2024-06-12T10:02:57.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (10, 2, N'LEAVE APPLY', N'Leave/LeaveApply', N'LEAVE APPLY', N'leaveapply', 1, NULL, NULL, 378, CAST(N'2025-06-23T17:44:32.720' AS DateTime), NULL, NULL, 1, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (11, 3, N'LEAVE MANAGEMENT', N'LeaveManagement/LeaveManage', N'LEAVE MANAGEMENT', N'leavemanagement', 2, NULL, NULL, 378, CAST(N'2025-07-08T13:08:52.237' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (12, 3, N'APPROVED LEAVE LIST', N'LeaveApproveList/LeaveApprove', N'APPROVED LEAVE LIST', N'approvedleavelist', 3, NULL, NULL, 378, CAST(N'2025-07-08T13:09:07.410' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (13, 4071, N'LEAVE SUBJECTS', N'Settings/Leavesubject', N'LEAVE SUBJECTS', N'leavesubjects', 4, NULL, NULL, 378, CAST(N'2025-07-08T13:09:15.723' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (14, 4070, N'LEAVE REPORT', N'LeaveReport/Index', N'LEAVE REPORT', N'leavereport', 5, NULL, NULL, 378, CAST(N'2025-07-08T13:09:23.500' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (15, 3, N'VISA TYPES', N'VisaType/Visatype', N'VISA TYPES', N'visatypes', 1, NULL, NULL, 1, CAST(N'2019-10-31T18:48:06.413' AS DateTime), 378, CAST(N'2024-06-12T10:03:06.707' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (16, 4071, N'DOCUMENTS TYPES', N'Settings/DocumentList', N'DOCUMENTS TYPES', N'documentstypes', 2, NULL, NULL, 378, CAST(N'2025-07-08T13:09:31.100' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (17, 4071, N'DEPARTMENTS', N'Settings/Department', N'DEPARTMENTS', N'departments', 3, NULL, NULL, 378, CAST(N'2025-07-08T13:09:38.843' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (18, 3, N'SHIFT DETAILS', N'ShiftDetailList/Shiftdetail', N'SHIFT DETAILS', N'shiftdetails', 4, NULL, NULL, 1, CAST(N'2019-11-05T14:19:22.300' AS DateTime), 378, CAST(N'2024-06-12T10:03:26.273' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (19, 3, N'INTERVIEW STATUS TYPE', N'InterviewStatus/Interview', N'INTERVIEW STATUS TYPE', N'interviewstatustypes', 5, NULL, NULL, 1, CAST(N'2019-11-06T14:01:44.960' AS DateTime), 378, CAST(N'2024-06-12T10:03:14.337' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (20, 3, N'User Management', N'#', N'User Management', N'usermanagement', 6, NULL, NULL, NULL, NULL, 1294, CAST(N'2023-04-04T10:09:25.023' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (21, 3, N'ROTA TIMING', N'RotaTiming/Index', N'Rota Timing', N'rotatiming', 7, NULL, NULL, 1, CAST(N'2019-11-06T14:02:05.473' AS DateTime), 378, CAST(N'2024-06-12T10:03:38.643' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (22, 3, N'Who is logged In', N'#', N'Who is logged In', N'whoisloggedin', 8, NULL, NULL, NULL, NULL, 1294, CAST(N'2023-04-04T10:09:34.760' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (23, 4, N'CREATE MENU', N'MenuAndRole/CreateMenu', N'Create Menu', N'createmenu', 1, NULL, NULL, 1, CAST(N'2019-11-06T14:02:23.283' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (27, 4, N'USER RIGHT', N'MenuAndRole/Index', N'User Right', N'userright', 5, NULL, NULL, 1, CAST(N'2019-11-06T14:02:38.840' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (28, 0, N'DASHBOARD', N'#', N'Dashboard', N'dashboard', 5, 1, NULL, 378, CAST(N'2025-06-24T08:31:22.467' AS DateTime), NULL, NULL, 1, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (33, 1, N'EMPLOYEE SALARY APPRAISAL DETAILS', N'EmployeeRevision/SalaryRevision', N'EMPLOYEE SALARY APPRAISAL DETAILS', N'employeesalaryappraisaldetail', 5, 1, NULL, 1, CAST(N'2019-10-14T14:01:02.977' AS DateTime), 378, CAST(N'2024-06-12T10:03:45.723' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (34, 2, N'CHANGE PASSWORD', N'Profile/Index', N'CHANGE PASSWORD', N'profileupdate', 6, 1, CAST(N'2019-12-02T15:34:58.670' AS DateTime), 1281, CAST(N'2023-04-13T10:07:05.990' AS DateTime), 1282, CAST(N'2023-09-18T07:53:58.103' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (35, 3, N'ORGANIZATION CHART', N'OrganizationChart/OrgChart', N'Organization Chart', N'organizationchart-bwssl', 8, 218, CAST(N'2020-02-04T16:28:07.247' AS DateTime), 218, CAST(N'2020-03-05T15:52:47.873' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (36, 3, N'ORGANIZATION CHART MANAGE', N'OrganizationChart/ManageChart', N'OrganizarionChartManage', N'organizationchartmanage', 9, 218, CAST(N'2020-03-03T15:10:49.563' AS DateTime), 218, CAST(N'2020-03-03T15:11:10.193' AS DateTime), 1, CAST(N'2025-07-08T16:56:45.690' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (37, 4070, N'PUNCH REPORT', N'Punching/PunchReport', N'PUNCH REPORT', N'punchreport', 9, 3, CAST(N'2020-08-14T14:10:57.003' AS DateTime), 378, CAST(N'2025-07-08T13:09:53.233' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (38, 3, N'ORGANIZATION CHART TASK MANAGEMENT', N'OrganizationChart/TaskDetails', N'ORGANIZATION CHART TASK MANAGEMENT', N'organizationcharttaskmanagement', 10, 218, CAST(N'2020-09-03T15:17:47.327' AS DateTime), NULL, NULL, 1, CAST(N'2025-07-08T17:00:45.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (39, 1, N'Employee Copy', N'Employeecopy/index', N'Employeecopy', N'employeecopy', 7, 217, CAST(N'2023-01-25T15:23:50.677' AS DateTime), NULL, NULL, 244, CAST(N'2023-02-20T10:23:17.530' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (40, 2, N'Leave All Data', N'LeaveAllData/Index', N'Leave All Data', N'leavealldata', 6, 244, CAST(N'2023-01-31T14:54:52.120' AS DateTime), NULL, NULL, 244, CAST(N'2023-01-31T16:10:26.053' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (41, 4071, N'REPORTING MANAGEMENT', N'Settings/ReportingManagement', N'Reporting management', N'reportingmanagemet', 12, 244, CAST(N'2023-02-01T14:57:48.783' AS DateTime), 378, CAST(N'2025-07-08T13:10:06.780' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (42, 4071, N'APPROVE AUTHORIZE MANAGEMENT', N'Settings/ApproveAuthorise', N'Approve Authorise Management', N'approveauthorisemanagement', 15, 244, CAST(N'2023-02-09T18:11:09.843' AS DateTime), 378, CAST(N'2025-07-08T13:10:23.773' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (43, 0, N'TEST', N'#', N'TEST', N'test', 5, 244, CAST(N'2023-02-15T22:49:14.297' AS DateTime), 244, CAST(N'2023-02-15T22:49:49.080' AS DateTime), 244, CAST(N'2023-02-15T22:51:05.183' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (44, 0, N'test', N'', N'test', N'test', 1, 1286, CAST(N'2023-03-28T07:47:52.503' AS DateTime), NULL, NULL, 1286, CAST(N'2023-03-28T07:48:04.967' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (45, 3, N'EMAIL LOCATION', N'EmailLocation/Index', N'Email Location', N'emaillocation', 5, 1286, CAST(N'2023-03-30T09:17:34.360' AS DateTime), 1294, CAST(N'2023-04-04T10:12:24.883' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (46, 3, N'EMPLOYEE DETAILS', N'EmployeeDetails/Index', N'EMPLOYEE DETAILS', N'employeedetails', 15, 1286, CAST(N'2023-06-30T14:25:04.277' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (47, 2, N'PUNCH', N'Punching/Index', N'PUNCH', N'punch', 5, 1282, CAST(N'2023-07-03T17:33:19.063' AS DateTime), NULL, NULL, 378, CAST(N'2025-07-08T13:10:41.510' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (48, 2, N'Punch Report', N'Punching/UserPunchReport', N'punch', N'Punch Report', 6, 1282, CAST(N'2023-07-04T14:13:34.753' AS DateTime), 378, CAST(N'2025-06-23T17:45:30.497' AS DateTime), NULL, NULL, 1, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (49, 3, N'Admin Punch', N'Punching/AdminPunch', N'Admin Punch', N'punchuser', 12, 1282, CAST(N'2023-07-14T10:53:58.567' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (50, 3, N'Shift Time', N'Punching/shifttime', N'Punching/shifttime', N'shifttime', 15, 1282, CAST(N'2023-07-28T11:58:53.240' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (51, 3, N'LeaveCount', N'leavecount/Index', N'LeaveCount', N'leavecount', 16, 1282, CAST(N'2023-07-31T08:33:50.260' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (52, 1, N'NEW EMPLOYEE FORM', N'NewEmployeeForm/Index', N'New Employee Form', N'newemployeeform', 7, 1282, CAST(N'2024-01-29T15:55:23.333' AS DateTime), NULL, NULL, 2370, CAST(N'2024-04-08T13:50:47.677' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (53, 3, N'New Employee Documents', N'NewEmpDocument/Index', N'New Employee Documents', N'newemployeedocuments', 3, 1282, CAST(N'2024-01-29T15:59:01.870' AS DateTime), NULL, NULL, 1282, CAST(N'2024-02-01T14:26:35.133' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (54, 3, N'Punch detail', N'Punching/AllempPunchDetails', N'Punch detail', N'punchdetail', 20, 2370, CAST(N'2024-05-02T12:32:22.417' AS DateTime), NULL, NULL, 378, CAST(N'2025-07-08T13:11:07.040' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (55, 4071, N'Annual UK Leave', N'Settings/AnnualUkLeave', N'Annual Uk Leave', N'annualukleave', 1, 2370, CAST(N'2024-05-16T15:31:15.157' AS DateTime), 378, CAST(N'2025-07-08T13:11:25.930' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (1055, 4071, N'PORTAL ACCESS', N'Settings/PortalAccess', N'portalaccess', N'portalaccess', 8, 378, CAST(N'2024-06-07T15:23:26.337' AS DateTime), 378, CAST(N'2025-07-08T13:11:37.610' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (1056, 0, N'KPI', N'#', N'KPI', N'kpi', 4, 378, CAST(N'2024-06-19T12:04:49.900' AS DateTime), 378, CAST(N'2025-06-23T17:45:43.987' AS DateTime), NULL, NULL, 1, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (1057, 1056, N'KPI TASK MANAGEMENT', N'EmployeeKPI/EmployeeKPITaskManagement', N'EMPLOYEE KPI TASK MANAGEMENT', N'kpitaskmanagement', 1, 378, CAST(N'2024-06-19T12:07:36.657' AS DateTime), NULL, NULL, 378, CAST(N'2024-07-19T10:36:35.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (1058, 1, N'Add UK Manager', N'Employee/addUkManager', N'ADD UK MANAGER', N'addukmanager', 2, 378, CAST(N'2024-06-20T12:49:02.440' AS DateTime), 1, CAST(N'2025-07-08T16:59:04.423' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (1059, 3, N'Add Mail Addresses', N'MailTriggerEmailAddresses/Index', N'Add Mail Addresses', N'mailtriggeremailaddress', 8, 378, CAST(N'2024-06-25T15:21:04.773' AS DateTime), 378, CAST(N'2024-06-27T10:16:24.610' AS DateTime), 378, CAST(N'2024-06-27T10:16:47.400' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (2056, 4071, N'Add Mail Addresses', N'Settings/EmailAddresses', N'Add Mail Addresses', N'addmailaddresses', 8, 378, CAST(N'2024-06-27T10:17:27.217' AS DateTime), 1, CAST(N'2025-07-08T16:57:17.740' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (2057, 1056, N'Employee KPI Task', N'EmployeeKPI/EmployeeKPITask', N'Employee KPI Task', N'employeekpitask', 2, 378, CAST(N'2024-07-15T09:32:12.040' AS DateTime), 378, CAST(N'2025-06-23T17:46:21.867' AS DateTime), NULL, NULL, 1, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (2058, 1056, N'Manager KPI Task', N'EmployeeKPI/ManagerKPITask', N'Manager KPI Task', N'managerkpitask', 3, 378, CAST(N'2024-07-17T10:44:08.120' AS DateTime), 378, CAST(N'2025-06-23T17:46:31.787' AS DateTime), NULL, NULL, 1, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (2059, 1056, N'Head Manager KPI Task', N'EmployeeKPI/HeadManagerKPITask', N'Head Manager KPI Task', N'headmanagerkpitask', 4, 378, CAST(N'2024-07-17T16:08:59.380' AS DateTime), 378, CAST(N'2025-06-23T17:46:45.490' AS DateTime), NULL, NULL, 1, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (2060, 1056, N'IMPORT KPI TASK', N'EmployeeKPI/ImportKPITask', N'IMPORT KPI TASK', N'importkpitask', 1, 378, CAST(N'2024-07-26T12:36:04.050' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (3060, 3, N'New Organization Chart', N'OrganizationChart/NewOrganizationChart', N'New Organization Chart', N'neworganizationchart', 8, 378, CAST(N'2024-08-05T15:24:42.193' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (3061, 2060, N'Import Task', N'EmployeeKPI/ImportKPITask', N'Import Task', N'importtask', 1, 378, CAST(N'2024-08-21T08:57:01.283' AS DateTime), NULL, NULL, 378, CAST(N'2024-08-21T08:59:13.420' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (3062, 0, N'Utility', N'#', N'Utility', N'utility', 5, 378, CAST(N'2024-08-21T13:04:49.830' AS DateTime), NULL, NULL, 378, CAST(N'2025-07-08T13:05:00.527' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (3063, 3062, N'Import Employee Shift Time', N'UtilityModule/ImportEmployeeShiftTime', N'Import Employee Shift Time', N'importemployeeshifttime', 1, 378, CAST(N'2024-08-21T13:09:45.727' AS DateTime), 378, CAST(N'2024-08-21T13:16:20.040' AS DateTime), 1, CAST(N'2025-07-08T16:57:37.357' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (3064, 1056, N'Add Additional KPI Task', N'EmployeeKPI/AddAdditionalKPITask', N'Add Additional KPI Task', N'addadditionalkpitask', 1, 378, CAST(N'2024-09-03T15:34:49.487' AS DateTime), 378, CAST(N'2025-06-23T17:41:29.483' AS DateTime), NULL, NULL, 1, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (3065, 3, N'ADMIN LEAVE APPLY', N'LeaveApply/EmployeeLeaveApply', N'ADMIN LEAVE APPLY', N'adminleaveapply', 7, 378, CAST(N'2024-10-04T11:59:24.317' AS DateTime), 378, CAST(N'2025-06-27T12:40:30.007' AS DateTime), NULL, NULL, 0, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (3066, 0, N'FRONT DASHBOARD', N'#', N'FRONT DASHBOARD', N'frontdashboard', 1, 378, CAST(N'2025-06-23T17:42:31.957' AS DateTime), NULL, NULL, 378, CAST(N'2025-06-24T08:31:11.337' AS DateTime), 1, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (3067, 3, N'LOGIN LOGS', N'Settings/LoginLogs', N'LOGIN LOGS', N'loginlogs', 4, 378, CAST(N'2025-06-24T11:14:44.687' AS DateTime), NULL, NULL, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (3068, 4, N'CREATE ROLE', N'MenuAndRole/CreateRole', N'CREATE ROLE', N'createrole', 2, 378, CAST(N'2025-07-07T10:52:50.493' AS DateTime), NULL, NULL, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (3069, 4, N'ROLE MAPPING', N'MenuAndRole/RoleMapping', N'ROLE MAPPING', N'rolemapping', 3, 378, CAST(N'2025-07-07T12:19:21.597' AS DateTime), NULL, NULL, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (4068, 4, N'USER LIST', N'Users/Index', N'USER LIST', N'userlist', 6, 378, CAST(N'2025-07-07T13:22:13.197' AS DateTime), 378, CAST(N'2025-07-07T13:22:54.917' AS DateTime), NULL, NULL, 0, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (4069, 4, N'USER ROLE PERMISSION', N'MenuAndRole/UserRolePermission', N'USER ROLE PERMISSION', N'userrolepermission', 4, 378, CAST(N'2025-07-07T14:09:31.433' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (4070, 0, N'REPORT', N'#', N'REPORT', N'report', 3, 378, CAST(N'2025-07-08T13:07:15.783' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (4071, 0, N'SETTINGS', N'#', N'SETTINGS', N'settings', 5, 378, CAST(N'2025-07-08T13:08:26.027' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (4072, 4071, N'GENERAL SETTING', N'Settings/GeneralSettitng', N'GENERAL SETTING', N'generalsetting', 9, 1, CAST(N'2025-07-09T13:58:28.320' AS DateTime), NULL, NULL, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (4073, 4071, N'Allow Login', N'Settings/AllowLogin', N'Allow Login', N'allowlogin', 8, 1, CAST(N'2025-08-04T12:48:11.070' AS DateTime), NULL, NULL, 1, CAST(N'2025-08-05T14:02:56.440' AS DateTime), 0, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (4074, 4071, N'Assign Outside Portal', N'Settings/AssignId', N'Assign Outside Portal', N'assignoutsideportal', 7, 1, CAST(N'2025-08-13T11:56:41.907' AS DateTime), 1, CAST(N'2025-08-14T14:15:27.217' AS DateTime), NULL, NULL, 0, NULL)
GO
INSERT [dbo].[Mst_Menu] ([MID], [PMID], [MenuName], [MenuUrl], [MenuDesc], [MainMenu], [SortOrder], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn], [IsFrontMenu], [IsHidden]) VALUES (4075, 4071, N'Employee Device Punch Detail', N'Settings/EmployeeDevicePunchDetails', N'Employee Device Punch Detail', N'employeedevicepunchdetail', 8, 1, CAST(N'2025-09-08T10:24:44.690' AS DateTime), NULL, NULL, NULL, NULL, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[Mst_Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[Mst_Right] ON 
GO
INSERT [dbo].[Mst_Right] ([RID], [RightsName]) VALUES (1, N'ADD')
GO
INSERT [dbo].[Mst_Right] ([RID], [RightsName]) VALUES (2, N'EDIT')
GO
INSERT [dbo].[Mst_Right] ([RID], [RightsName]) VALUES (3, N'DELETE')
GO
INSERT [dbo].[Mst_Right] ([RID], [RightsName]) VALUES (4, N'VIEW')
GO
INSERT [dbo].[Mst_Right] ([RID], [RightsName]) VALUES (5, N'REPORTS')
GO
SET IDENTITY_INSERT [dbo].[Mst_Right] OFF
GO
SET IDENTITY_INSERT [dbo].[Mst_Role] ON 
GO
INSERT [dbo].[Mst_Role] ([RoleID], [RoleName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1, N'ADMIN', 378, CAST(N'2025-07-07T11:43:32.927' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Role] ([RoleID], [RoleName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2, N'USER', 378, CAST(N'2025-07-07T11:44:05.237' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_Role] ([RoleID], [RoleName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1002, N'TEMP', 378, CAST(N'2025-07-08T09:16:36.170' AS DateTime), NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Mst_Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Mst_RolePermission] ON 
GO
INSERT [dbo].[Mst_RolePermission] ([PerID], [RoleID], [MenuId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1, 1, N'1,5,1058,3,11,12,3067,45,3065,3060,35,49,50,46,51,4,4069,27,4068,28,4070,14,37,4071,55,16,17,13,4074,4075,1055,2056,4072,41,42', 378, CAST(N'2025-07-07T12:41:22.397' AS DateTime), 1, CAST(N'2025-09-09T17:18:55.630' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_RolePermission] ([PerID], [RoleID], [MenuId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2, 2, N'2,10,48,28,1056,2060,3064,2057,2058,2059', 378, CAST(N'2025-07-07T12:42:13.830' AS DateTime), NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Mst_RolePermission] OFF
GO
SET IDENTITY_INSERT [dbo].[Mst_UserRight] ON 
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1, 3, NULL, 1, N'4', 1, CAST(N'2019-09-30T19:05:19.190' AS DateTime), 1, CAST(N'2019-12-05T18:16:33.543' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3, 3, NULL, 6, N'1,2,3,4,5', 1, CAST(N'2019-09-30T19:05:19.213' AS DateTime), 1, CAST(N'2019-12-05T18:16:33.550' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4, 3, NULL, 7, N'1,2,3,4,5', 1, CAST(N'2019-09-30T19:05:19.220' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5, 3, NULL, 8, N'1,2,3,4,5', 1, CAST(N'2019-09-30T19:05:19.223' AS DateTime), 1, CAST(N'2019-12-05T18:16:33.553' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6, 3, NULL, 9, N'1,2,3,4,5', 1, CAST(N'2019-09-30T19:05:19.227' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (7, 3, NULL, 2, N'4', 1, CAST(N'2019-09-30T19:05:19.233' AS DateTime), 215, CAST(N'2019-12-10T21:58:50.443' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8, 3, NULL, 10, N'1,2,3,4,5', 1, CAST(N'2019-09-30T19:05:19.237' AS DateTime), 215, CAST(N'2019-12-10T21:58:50.447' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (9, 3, NULL, 11, N'1,2,3,4,5', 1, CAST(N'2019-09-30T19:05:19.243' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10, 3, NULL, 12, N'1,2,3,4,5', 1, CAST(N'2019-09-30T19:05:19.253' AS DateTime), 1, CAST(N'2019-12-05T18:16:33.567' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (11, 3, NULL, 13, N'1,2,3,4,5', 1, CAST(N'2019-09-30T19:05:19.263' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (12, 3, NULL, 14, N'1,2,3,4,5', 1, CAST(N'2019-09-30T19:05:19.267' AS DateTime), 1, CAST(N'2019-12-05T18:16:33.573' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (13, 3, NULL, 3, N'4', 1, CAST(N'2019-09-30T19:05:19.273' AS DateTime), 1, CAST(N'2019-12-05T18:16:33.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (14, 3, NULL, 15, N'1,2,3,4,5', 1, CAST(N'2019-09-30T19:05:19.277' AS DateTime), 1, CAST(N'2019-12-05T18:16:33.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (15, 3, NULL, 16, N'1,2,3,4,5', 1, CAST(N'2019-09-30T19:05:19.283' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (17, 3, NULL, 18, N'1,2,3,4,5', 1, CAST(N'2019-09-30T19:05:19.297' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (19, 3, NULL, 20, N'1,2,3,4,5', 1, CAST(N'2019-09-30T19:05:19.310' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (21, 3, NULL, 22, N'1,2,3,4,5', 1, CAST(N'2019-09-30T19:05:19.353' AS DateTime), 1, CAST(N'2019-10-09T13:55:53.150' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (22, 3, NULL, 4, N'4', 1, CAST(N'2019-09-30T19:05:19.367' AS DateTime), 1, CAST(N'2019-09-30T21:40:19.507' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (23, 3, NULL, 23, N'1,2,3,4,5', 1, CAST(N'2019-09-30T19:05:19.373' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (24, 3, NULL, 24, N'1,2,3,4,5', 1, CAST(N'2019-09-30T19:05:19.377' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (25, 3, NULL, 25, N'1,2,3,4,5', 1, CAST(N'2019-09-30T19:05:19.383' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (26, 3, NULL, 26, N'1,2,3,4,5', 1, CAST(N'2019-09-30T19:05:19.390' AS DateTime), 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (27, 3, NULL, 27, N'1,2,3,4,5', 1, CAST(N'2019-09-30T19:05:19.393' AS DateTime), 1, CAST(N'2019-09-30T21:40:19.530' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (28, 3, NULL, 28, N'4', 1, CAST(N'2019-09-30T19:05:19.400' AS DateTime), 2, CAST(N'2019-10-01T20:19:59.350' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (29, 2, NULL, 1, N'4', 0, CAST(N'2019-09-30T20:15:40.543' AS DateTime), 1, CAST(N'2019-09-30T21:36:33.597' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (30, 2, NULL, 5, N'1,2,3,4,5', 0, CAST(N'2019-09-30T20:15:40.750' AS DateTime), 1, CAST(N'2019-09-30T21:36:33.603' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (31, 2, NULL, 6, N'1,2,3,4,5', 0, CAST(N'2019-09-30T20:15:40.753' AS DateTime), 1, CAST(N'2019-09-30T21:36:33.603' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (32, 2, NULL, 7, N'1,2,3,4,5', 0, CAST(N'2019-09-30T20:15:40.757' AS DateTime), 1, CAST(N'2019-09-30T21:36:33.607' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (33, 2, NULL, 8, N'1,2,3,4,5', 0, CAST(N'2019-09-30T20:15:40.757' AS DateTime), 1, CAST(N'2019-09-30T21:36:33.610' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (34, 2, NULL, 9, N'1,2,3,4,5', 0, CAST(N'2019-09-30T20:15:40.760' AS DateTime), 1, CAST(N'2019-09-30T21:36:33.610' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (35, 2, NULL, 2, N'4', 0, CAST(N'2019-09-30T20:15:40.763' AS DateTime), 1, CAST(N'2019-09-30T21:36:33.617' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (36, 2, NULL, 10, N'1,2,3,4,5', 0, CAST(N'2019-09-30T20:15:40.767' AS DateTime), 1, CAST(N'2019-09-30T21:36:33.620' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (37, 2, NULL, 11, N'1,2,3,4,5', 0, CAST(N'2019-09-30T20:15:40.767' AS DateTime), 1, CAST(N'2019-09-30T21:36:33.623' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (38, 2, NULL, 12, N'1,2,3,4,5', 0, CAST(N'2019-09-30T20:15:40.770' AS DateTime), 1, CAST(N'2019-09-30T21:36:33.627' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (39, 2, NULL, 13, N'1,2,3,4,5', 0, CAST(N'2019-09-30T20:15:40.773' AS DateTime), 1, CAST(N'2019-09-30T21:36:33.627' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (40, 2, NULL, 14, N'1,2,3,4,5', 0, CAST(N'2019-09-30T20:15:40.777' AS DateTime), 1, CAST(N'2019-09-30T21:36:33.630' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (45, 2, NULL, 4, N'4', 1, CAST(N'2019-09-30T21:36:19.723' AS DateTime), 1, CAST(N'2019-09-30T21:36:33.633' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (46, 2, NULL, 23, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:36:19.730' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (47, 2, NULL, 24, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:36:19.730' AS DateTime), NULL, NULL, 1, CAST(N'2019-09-30T21:36:33.640' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (48, 2, NULL, 25, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:36:19.733' AS DateTime), NULL, NULL, 1, CAST(N'2019-09-30T21:36:33.640' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (49, 2, NULL, 26, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:36:19.737' AS DateTime), NULL, NULL, 1, CAST(N'2019-09-30T21:36:33.643' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (50, 2, NULL, 27, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:36:19.740' AS DateTime), 1, CAST(N'2019-09-30T21:36:33.637' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (51, 8, NULL, 1, N'4', 1, CAST(N'2019-09-30T21:37:24.327' AS DateTime), 8, CAST(N'2023-02-16T16:53:42.290' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (52, 8, NULL, 5, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:37:24.333' AS DateTime), 8, CAST(N'2023-02-16T16:53:42.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (53, 8, NULL, 6, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:37:24.337' AS DateTime), 8, CAST(N'2023-02-16T16:53:42.330' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (54, 8, NULL, 7, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:37:24.340' AS DateTime), 8, CAST(N'2023-02-16T16:53:42.333' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (55, 8, NULL, 8, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:37:24.347' AS DateTime), 8, CAST(N'2023-02-16T16:53:42.340' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (56, 8, NULL, 9, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:37:24.350' AS DateTime), 8, CAST(N'2023-02-16T16:53:42.350' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (57, 8, NULL, 2, N'4', 1, CAST(N'2019-09-30T21:37:24.353' AS DateTime), 8, CAST(N'2023-02-16T16:53:42.360' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (58, 8, NULL, 10, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:37:24.357' AS DateTime), 8, CAST(N'2023-02-16T16:53:42.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (59, 8, NULL, 11, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:37:24.367' AS DateTime), 8, CAST(N'2023-02-16T16:53:42.367' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (60, 8, NULL, 12, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:37:24.377' AS DateTime), 8, CAST(N'2023-02-16T16:53:42.370' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (61, 8, NULL, 13, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:37:24.387' AS DateTime), 8, CAST(N'2023-02-16T16:53:42.377' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (62, 8, NULL, 14, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:37:24.397' AS DateTime), 8, CAST(N'2023-02-16T16:53:42.380' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (63, 8, NULL, 3, N'4', 1, CAST(N'2019-09-30T21:37:24.407' AS DateTime), 8, CAST(N'2023-02-16T16:53:42.390' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (64, 8, NULL, 15, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:37:24.417' AS DateTime), 8, CAST(N'2023-02-16T16:53:42.397' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (65, 8, NULL, 16, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:37:24.423' AS DateTime), 8, CAST(N'2023-02-16T16:53:42.400' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (66, 8, NULL, 17, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:37:24.430' AS DateTime), 8, CAST(N'2023-02-16T16:53:42.403' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (67, 8, NULL, 18, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:37:24.433' AS DateTime), 8, CAST(N'2023-02-16T16:53:42.407' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (68, 8, NULL, 19, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:37:24.477' AS DateTime), 8, CAST(N'2023-02-16T16:53:42.413' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (69, 8, NULL, 20, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:37:24.503' AS DateTime), 8, CAST(N'2023-02-16T16:53:42.417' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (70, 8, NULL, 21, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:37:24.537' AS DateTime), 8, CAST(N'2023-02-16T16:53:42.420' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (71, 8, NULL, 22, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:37:24.567' AS DateTime), 8, CAST(N'2023-02-16T16:53:42.423' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (72, 8, NULL, 4, N'4', 1, CAST(N'2019-09-30T21:38:22.293' AS DateTime), 8, CAST(N'2023-02-16T16:53:42.467' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (73, 8, NULL, 24, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:38:22.297' AS DateTime), NULL, NULL, 8, CAST(N'2023-02-16T16:53:42.487' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (74, 8, NULL, 25, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:38:22.300' AS DateTime), NULL, NULL, 8, CAST(N'2023-02-16T16:53:42.493' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (75, 8, NULL, 26, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:38:22.303' AS DateTime), NULL, NULL, 8, CAST(N'2023-02-16T16:53:42.493' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (76, 8, NULL, 27, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:38:22.307' AS DateTime), 8, CAST(N'2023-02-16T16:53:42.473' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (77, 3, NULL, 5, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:40:19.413' AS DateTime), 1, CAST(N'2019-12-05T18:16:33.547' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (83, 3, NULL, 17, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:40:19.477' AS DateTime), 1, CAST(N'2019-12-05T18:16:33.613' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (85, 3, NULL, 19, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:40:19.487' AS DateTime), 1, CAST(N'2019-12-05T18:16:33.620' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (87, 3, NULL, 21, N'1,2,3,4,5', 1, CAST(N'2019-09-30T21:40:19.497' AS DateTime), 1, CAST(N'2019-12-05T18:16:33.623' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (89, 3, NULL, 23, N'1,2,3,4,5', 2, CAST(N'2019-10-01T20:19:59.333' AS DateTime), 1, CAST(N'2019-12-05T18:16:33.627' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (91, 3, NULL, 33, N'1,2,3,4,5', 1, CAST(N'2019-10-08T17:54:50.200' AS DateTime), 1, CAST(N'2019-12-05T18:16:33.557' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (92, 26, NULL, 2, N'4', 1, CAST(N'2019-10-29T19:30:23.113' AS DateTime), 1, CAST(N'2019-12-05T17:48:30.893' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (93, 26, NULL, 10, N'1,2,3,4,5', 1, CAST(N'2019-10-29T19:30:23.120' AS DateTime), 1, CAST(N'2019-12-05T17:48:30.897' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (94, 3, NULL, 34, N'1,2,3,4,5', 1, CAST(N'2019-12-02T15:35:33.453' AS DateTime), 215, CAST(N'2019-12-10T21:58:50.450' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (95, 3, NULL, 28, N'4', 1, CAST(N'2019-12-04T16:39:31.793' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (96, 26, NULL, 34, N'1,2,3,4,5', 1, CAST(N'2019-12-05T17:47:53.793' AS DateTime), 1, CAST(N'2019-12-05T17:48:30.933' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (97, 26, NULL, 28, N'4', 1, CAST(N'2019-12-05T17:48:30.947' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (99, 27, NULL, 2, N'4', 1, CAST(N'2019-12-09T17:17:04.290' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (100, 27, NULL, 10, N'1,2,3,4,5', 1, CAST(N'2019-12-09T17:17:04.350' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (101, 27, NULL, 34, N'1,2,3,4,5', 1, CAST(N'2019-12-09T17:17:04.367' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (102, 27, NULL, 28, N'4', 1, CAST(N'2019-12-09T17:17:04.373' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (103, 4, NULL, 2, N'4', 1, CAST(N'2019-12-09T22:45:42.573' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (104, 4, NULL, 10, N'1,2,3,4,5', 1, CAST(N'2019-12-09T22:45:42.677' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (105, 4, NULL, 34, N'1,2,3,4,5', 1, CAST(N'2019-12-09T22:45:42.680' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (106, 4, NULL, 28, N'4', 1, CAST(N'2019-12-09T22:45:42.683' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (107, 28, NULL, 1, N'4', 1, CAST(N'2019-12-09T22:55:11.540' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (108, 28, NULL, 5, N'1,2,3,4,5', 1, CAST(N'2019-12-09T22:55:11.543' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (109, 28, NULL, 6, N'1,2,3,4,5', 1, CAST(N'2019-12-09T22:55:11.547' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (110, 28, NULL, 7, N'1,2,3,4,5', 1, CAST(N'2019-12-09T22:55:11.550' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (111, 28, NULL, 8, N'1,2,3,4,5', 1, CAST(N'2019-12-09T22:55:11.573' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (112, 28, NULL, 33, N'1,2,3,4,5', 1, CAST(N'2019-12-09T22:55:11.577' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (113, 28, NULL, 9, N'1,2,3,4,5', 1, CAST(N'2019-12-09T22:55:11.580' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (114, 28, NULL, 2, N'4', 1, CAST(N'2019-12-09T22:55:11.583' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (115, 28, NULL, 10, N'1,2,3,4,5', 1, CAST(N'2019-12-09T22:55:11.587' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (116, 28, NULL, 11, N'1,2,3,4,5', 1, CAST(N'2019-12-09T22:55:11.587' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (117, 28, NULL, 12, N'1,2,3,4,5', 1, CAST(N'2019-12-09T22:55:11.590' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (118, 28, NULL, 13, N'1,2,3,4,5', 1, CAST(N'2019-12-09T22:55:11.593' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (119, 28, NULL, 14, N'1,2,3,4,5', 1, CAST(N'2019-12-09T22:55:11.597' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (120, 28, NULL, 34, N'1,2,3,4,5', 1, CAST(N'2019-12-09T22:55:11.600' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (121, 28, NULL, 3, N'4', 1, CAST(N'2019-12-09T22:55:11.603' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (122, 28, NULL, 15, N'1,2,3,4,5', 1, CAST(N'2019-12-09T22:55:11.607' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (123, 28, NULL, 16, N'1,2,3,4,5', 1, CAST(N'2019-12-09T22:55:11.607' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (124, 28, NULL, 17, N'1,2,3,4,5', 1, CAST(N'2019-12-09T22:55:11.610' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (125, 28, NULL, 18, N'1,2,3,4,5', 1, CAST(N'2019-12-09T22:55:11.613' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (126, 28, NULL, 19, N'1,2,3,4,5', 1, CAST(N'2019-12-09T22:55:11.617' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (127, 28, NULL, 21, N'1,2,3,4,5', 1, CAST(N'2019-12-09T22:55:11.617' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (128, 28, NULL, 4, N'4', 1, CAST(N'2019-12-09T22:55:11.620' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (129, 28, NULL, 23, N'1,2,3,4,5', 1, CAST(N'2019-12-09T22:55:11.623' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (130, 28, NULL, 27, N'1,2,3,4,5', 1, CAST(N'2019-12-09T22:55:11.627' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (131, 28, NULL, 28, N'4', 1, CAST(N'2019-12-09T22:55:11.627' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (132, 215, NULL, 1, N'4', 3, CAST(N'2019-12-10T21:57:49.723' AS DateTime), 217, CAST(N'2023-01-24T22:24:59.140' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (133, 215, NULL, 5, N'1,2,3,4,5', 3, CAST(N'2019-12-10T21:57:49.737' AS DateTime), 217, CAST(N'2023-01-24T22:24:59.157' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (134, 215, NULL, 6, N'1,2,3,4,5', 3, CAST(N'2019-12-10T21:57:49.740' AS DateTime), 217, CAST(N'2023-01-24T22:24:59.157' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (135, 215, NULL, 7, N'1,2,3,4,5', 3, CAST(N'2019-12-10T21:57:49.743' AS DateTime), 217, CAST(N'2023-01-24T22:24:59.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (136, 215, NULL, 8, N'1,2,3,4,5', 3, CAST(N'2019-12-10T21:57:49.747' AS DateTime), 217, CAST(N'2023-01-24T22:24:59.173' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (137, 215, NULL, 33, N'1,2,3,4,5', 3, CAST(N'2019-12-10T21:57:49.747' AS DateTime), 217, CAST(N'2023-01-24T22:24:59.173' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (138, 215, NULL, 9, N'1,2,3,4,5', 3, CAST(N'2019-12-10T21:57:49.750' AS DateTime), 217, CAST(N'2023-01-24T22:24:59.190' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (139, 215, NULL, 2, N'4', 3, CAST(N'2019-12-10T21:57:49.753' AS DateTime), 217, CAST(N'2023-01-24T22:24:59.190' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (140, 215, NULL, 10, N'1,2,3,4,5', 3, CAST(N'2019-12-10T21:57:49.753' AS DateTime), 217, CAST(N'2023-01-24T22:24:59.210' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (141, 215, NULL, 11, N'1,2,3,4,5', 3, CAST(N'2019-12-10T21:57:49.783' AS DateTime), 217, CAST(N'2023-01-24T22:24:59.210' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (142, 215, NULL, 12, N'1,2,3,4,5', 3, CAST(N'2019-12-10T21:57:49.817' AS DateTime), 217, CAST(N'2023-01-24T22:24:59.227' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (143, 215, NULL, 13, N'1,2,3,4,5', 3, CAST(N'2019-12-10T21:57:49.847' AS DateTime), 217, CAST(N'2023-01-24T22:24:59.233' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (144, 215, NULL, 14, N'1,2,3,4,5', 3, CAST(N'2019-12-10T21:57:49.873' AS DateTime), 217, CAST(N'2023-01-24T22:24:59.243' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (145, 215, NULL, 34, N'1,2,3,4,5', 3, CAST(N'2019-12-10T21:57:49.880' AS DateTime), 217, CAST(N'2023-01-24T22:24:59.247' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (146, 215, NULL, 3, N'4', 3, CAST(N'2019-12-10T21:57:49.897' AS DateTime), 217, CAST(N'2023-01-24T22:24:59.247' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (147, 215, NULL, 15, N'1,2,3,4,5', 3, CAST(N'2019-12-10T21:57:49.900' AS DateTime), 217, CAST(N'2023-01-24T22:24:59.257' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (148, 215, NULL, 16, N'1,2,3,4,5', 3, CAST(N'2019-12-10T21:57:49.903' AS DateTime), 217, CAST(N'2023-01-24T22:24:59.267' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (149, 215, NULL, 17, N'1,2,3,4,5', 3, CAST(N'2019-12-10T21:57:49.907' AS DateTime), 217, CAST(N'2023-01-24T22:24:59.277' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (150, 215, NULL, 18, N'1,2,3,4,5', 3, CAST(N'2019-12-10T21:57:49.910' AS DateTime), 217, CAST(N'2023-01-24T22:24:59.287' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (151, 215, NULL, 19, N'1,2,3,4,5', 3, CAST(N'2019-12-10T21:57:49.910' AS DateTime), 217, CAST(N'2023-01-24T22:24:59.290' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (152, 215, NULL, 21, N'1,2,3,4,5', 3, CAST(N'2019-12-10T21:57:49.913' AS DateTime), 217, CAST(N'2023-01-24T22:24:59.317' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (153, 215, NULL, 4, N'4', 3, CAST(N'2019-12-10T21:57:49.917' AS DateTime), 217, CAST(N'2023-01-24T22:24:59.357' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (154, 215, NULL, 23, N'1,2,3,4,5', 3, CAST(N'2019-12-10T21:57:49.920' AS DateTime), 217, CAST(N'2023-01-24T22:24:59.367' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (155, 215, NULL, 27, N'1,2,3,4,5', 3, CAST(N'2019-12-10T21:57:49.923' AS DateTime), 217, CAST(N'2023-01-24T22:24:59.373' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (156, 215, NULL, 28, N'4', 3, CAST(N'2019-12-10T21:57:49.923' AS DateTime), 217, CAST(N'2023-01-24T22:24:59.383' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (157, 217, NULL, 1, N'4', 215, CAST(N'2019-12-12T19:57:12.510' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.030' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (158, 217, NULL, 5, N'1,2,3,4,5', 215, CAST(N'2019-12-12T19:57:12.520' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.040' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (159, 217, NULL, 6, N'1,2,3,4,5', 215, CAST(N'2019-12-12T19:57:12.523' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.047' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (160, 217, NULL, 7, N'1,2,3,4,5', 215, CAST(N'2019-12-12T19:57:12.527' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.050' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (161, 217, NULL, 8, N'1,2,3,4,5', 215, CAST(N'2019-12-12T19:57:12.527' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.053' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (162, 217, NULL, 33, N'1,2,3,4,5', 215, CAST(N'2019-12-12T19:57:12.530' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.060' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (163, 217, NULL, 9, N'1,2,3,4,5', 215, CAST(N'2019-12-12T19:57:12.533' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.067' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (164, 217, NULL, 2, N'4', 215, CAST(N'2019-12-12T19:57:12.537' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.077' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (165, 217, NULL, 10, N'1,2,3,4,5', 215, CAST(N'2019-12-12T19:57:12.537' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.083' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (166, 217, NULL, 11, N'1,2,3,4,5', 215, CAST(N'2019-12-12T19:57:12.540' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.090' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (167, 217, NULL, 12, N'1,2,3,4,5', 215, CAST(N'2019-12-12T19:57:12.543' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.097' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (168, 217, NULL, 13, N'1,2,3,4,5', 215, CAST(N'2019-12-12T19:57:12.543' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.100' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (169, 217, NULL, 14, N'1,2,3,4,5', 215, CAST(N'2019-12-12T19:57:12.547' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (170, 217, NULL, 34, N'1,2,3,4,5', 215, CAST(N'2019-12-12T19:57:12.550' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.113' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (171, 217, NULL, 3, N'4', 215, CAST(N'2019-12-12T19:57:12.553' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.120' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (172, 217, NULL, 15, N'1,2,3,4,5', 215, CAST(N'2019-12-12T19:57:12.553' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.130' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (173, 217, NULL, 16, N'1,2,3,4,5', 215, CAST(N'2019-12-12T19:57:12.557' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.133' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (174, 217, NULL, 17, N'1,2,3,4,5', 215, CAST(N'2019-12-12T19:57:12.560' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.140' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (175, 217, NULL, 18, N'1,2,3,4,5', 215, CAST(N'2019-12-12T19:57:12.560' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.143' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (176, 217, NULL, 19, N'1,2,3,4,5', 215, CAST(N'2019-12-12T19:57:12.563' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.150' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (177, 217, NULL, 21, N'1,2,3,4,5', 215, CAST(N'2019-12-12T19:57:12.567' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.160' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (178, 217, NULL, 4, N'4', 215, CAST(N'2019-12-12T19:57:12.567' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.200' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (179, 217, NULL, 23, N'1,2,3,4,5', 215, CAST(N'2019-12-12T19:57:12.570' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.203' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (180, 217, NULL, 27, N'1,2,3,4,5', 215, CAST(N'2019-12-12T19:57:12.573' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.213' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (181, 217, NULL, 28, N'4', 215, CAST(N'2019-12-12T19:57:12.577' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (182, 171, NULL, 2, N'4', 215, CAST(N'2019-12-17T16:47:50.150' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (183, 171, NULL, 10, N'1,2,3,4,5', 215, CAST(N'2019-12-17T16:47:50.303' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (184, 171, NULL, 34, N'1,2,3,4,5', 215, CAST(N'2019-12-17T16:47:50.307' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (185, 171, NULL, 28, N'4', 215, CAST(N'2019-12-17T16:47:50.307' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (186, 218, NULL, 1, N'4', 215, CAST(N'2019-12-17T16:49:47.813' AS DateTime), 218, CAST(N'2020-09-03T15:18:49.113' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (187, 218, NULL, 5, N'1,2,3,4,5', 215, CAST(N'2019-12-17T16:49:47.830' AS DateTime), 218, CAST(N'2020-09-03T15:18:49.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (188, 218, NULL, 6, N'1,2,3,4,5', 215, CAST(N'2019-12-17T16:49:47.833' AS DateTime), 218, CAST(N'2020-09-03T15:18:49.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (189, 218, NULL, 7, N'1,2,3,4,5', 215, CAST(N'2019-12-17T16:49:47.837' AS DateTime), 218, CAST(N'2020-09-03T15:18:49.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (190, 218, NULL, 8, N'1,2,3,4,5', 215, CAST(N'2019-12-17T16:49:47.837' AS DateTime), 218, CAST(N'2020-09-03T15:18:49.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (191, 218, NULL, 33, N'1,2,3,4,5', 215, CAST(N'2019-12-17T16:49:47.840' AS DateTime), 218, CAST(N'2020-09-03T15:18:49.237' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (192, 218, NULL, 9, N'1,2,3,4,5', 215, CAST(N'2019-12-17T16:49:47.843' AS DateTime), 218, CAST(N'2020-09-03T15:18:49.237' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (193, 218, NULL, 2, N'4', 215, CAST(N'2019-12-17T16:49:47.847' AS DateTime), 218, CAST(N'2020-09-03T15:18:49.253' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (194, 218, NULL, 10, N'1,2,3,4,5', 215, CAST(N'2019-12-17T16:49:47.847' AS DateTime), 218, CAST(N'2020-09-03T15:18:49.253' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (195, 218, NULL, 11, N'1,2,3,4,5', 215, CAST(N'2019-12-17T16:49:47.850' AS DateTime), 218, CAST(N'2020-09-03T15:18:49.253' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (196, 218, NULL, 12, N'1,2,3,4,5', 215, CAST(N'2019-12-17T16:49:47.853' AS DateTime), 218, CAST(N'2020-09-03T15:18:49.270' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (197, 218, NULL, 13, N'1,2,3,4,5', 215, CAST(N'2019-12-17T16:49:47.857' AS DateTime), 218, CAST(N'2020-09-03T15:18:49.270' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (198, 218, NULL, 14, N'1,2,3,4,5', 215, CAST(N'2019-12-17T16:49:47.857' AS DateTime), 218, CAST(N'2020-09-03T15:18:49.270' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (199, 218, NULL, 34, N'1,2,3,4,5', 215, CAST(N'2019-12-17T16:49:47.860' AS DateTime), 218, CAST(N'2020-09-03T15:18:49.270' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (200, 218, NULL, 3, N'4', 215, CAST(N'2019-12-17T16:49:47.863' AS DateTime), 218, CAST(N'2020-09-03T15:18:49.270' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (201, 218, NULL, 15, N'1,2,3,4,5', 215, CAST(N'2019-12-17T16:49:47.867' AS DateTime), 218, CAST(N'2020-09-03T15:18:49.270' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (202, 218, NULL, 16, N'1,2,3,4,5', 215, CAST(N'2019-12-17T16:49:47.867' AS DateTime), 218, CAST(N'2020-09-03T15:18:49.283' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (203, 218, NULL, 17, N'1,2,3,4,5', 215, CAST(N'2019-12-17T16:49:47.870' AS DateTime), 218, CAST(N'2020-09-03T15:18:49.283' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (204, 218, NULL, 18, N'1,2,3,4,5', 215, CAST(N'2019-12-17T16:49:47.873' AS DateTime), 218, CAST(N'2020-09-03T15:18:49.283' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (205, 218, NULL, 19, N'1,2,3,4,5', 215, CAST(N'2019-12-17T16:49:47.873' AS DateTime), 218, CAST(N'2020-09-03T15:18:49.283' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (206, 218, NULL, 21, N'1,2,3,4,5', 215, CAST(N'2019-12-17T16:49:47.877' AS DateTime), 218, CAST(N'2020-09-03T15:18:49.283' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (207, 218, NULL, 4, N'4', 215, CAST(N'2019-12-17T16:49:47.880' AS DateTime), 218, CAST(N'2020-09-03T15:18:49.300' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (208, 218, NULL, 23, N'1,2,3,4,5', 215, CAST(N'2019-12-17T16:49:47.883' AS DateTime), 218, CAST(N'2020-09-03T15:18:49.300' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (209, 218, NULL, 27, N'1,2,3,4,5', 215, CAST(N'2019-12-17T16:49:47.883' AS DateTime), 218, CAST(N'2020-09-03T15:18:49.317' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (210, 218, NULL, 28, N'4', 215, CAST(N'2019-12-17T16:49:47.887' AS DateTime), 218, CAST(N'2020-09-03T15:18:49.317' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (211, 219, NULL, 1, N'4', 218, CAST(N'2019-12-18T14:12:16.730' AS DateTime), 219, CAST(N'2020-09-04T11:57:40.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (212, 219, NULL, 5, N'1,2,3,4,5', 218, CAST(N'2019-12-18T14:12:16.737' AS DateTime), 219, CAST(N'2020-09-04T11:57:40.507' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (213, 219, NULL, 6, N'1,2,3,4,5', 218, CAST(N'2019-12-18T14:12:16.760' AS DateTime), 219, CAST(N'2020-09-04T11:57:40.520' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (214, 219, NULL, 7, N'1,2,3,4,5', 218, CAST(N'2019-12-18T14:12:16.760' AS DateTime), 219, CAST(N'2020-09-04T11:57:40.537' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (215, 219, NULL, 8, N'1,2,3,4,5', 218, CAST(N'2019-12-18T14:12:16.763' AS DateTime), 219, CAST(N'2020-09-04T11:57:40.537' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (216, 219, NULL, 33, N'1,2,3,4,5', 218, CAST(N'2019-12-18T14:12:16.767' AS DateTime), 219, CAST(N'2020-09-04T11:57:40.537' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (217, 219, NULL, 9, N'1,2,3,4,5', 218, CAST(N'2019-12-18T14:12:16.770' AS DateTime), 219, CAST(N'2020-09-04T11:57:40.537' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (218, 219, NULL, 2, N'4', 218, CAST(N'2019-12-18T14:12:16.770' AS DateTime), 219, CAST(N'2020-09-04T11:57:40.567' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (219, 219, NULL, 10, N'1,2,3,4,5', 218, CAST(N'2019-12-18T14:12:16.773' AS DateTime), 219, CAST(N'2020-09-04T11:57:40.600' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (220, 219, NULL, 11, N'1,2,3,4,5', 218, CAST(N'2019-12-18T14:12:16.777' AS DateTime), 219, CAST(N'2020-09-04T11:57:40.613' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (221, 219, NULL, 12, N'1,2,3,4,5', 218, CAST(N'2019-12-18T14:12:16.780' AS DateTime), 219, CAST(N'2020-09-04T11:57:40.630' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (222, 219, NULL, 13, N'1,2,3,4,5', 218, CAST(N'2019-12-18T14:12:16.780' AS DateTime), 219, CAST(N'2020-09-04T11:57:40.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (223, 219, NULL, 14, N'1,2,3,4,5', 218, CAST(N'2019-12-18T14:12:16.783' AS DateTime), 219, CAST(N'2020-09-04T11:57:40.677' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (224, 219, NULL, 34, N'1,2,3,4,5', 218, CAST(N'2019-12-18T14:12:16.787' AS DateTime), 219, CAST(N'2020-09-04T11:57:40.693' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (225, 219, NULL, 3, N'4', 218, CAST(N'2019-12-18T14:12:16.790' AS DateTime), 219, CAST(N'2020-09-04T11:57:40.710' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (226, 219, NULL, 15, N'1,2,3,4,5', 218, CAST(N'2019-12-18T14:12:16.790' AS DateTime), 219, CAST(N'2020-09-04T11:57:40.723' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (227, 219, NULL, 16, N'1,2,3,4,5', 218, CAST(N'2019-12-18T14:12:16.793' AS DateTime), 219, CAST(N'2020-09-04T11:57:40.740' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (228, 219, NULL, 17, N'1,2,3,4,5', 218, CAST(N'2019-12-18T14:12:16.797' AS DateTime), 219, CAST(N'2020-09-04T11:57:40.757' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (229, 219, NULL, 18, N'1,2,3,4,5', 218, CAST(N'2019-12-18T14:12:16.800' AS DateTime), 219, CAST(N'2020-09-04T11:57:40.757' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (230, 219, NULL, 19, N'1,2,3,4,5', 218, CAST(N'2019-12-18T14:12:16.800' AS DateTime), 219, CAST(N'2020-09-04T11:57:40.757' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (231, 219, NULL, 21, N'1,2,3,4,5', 218, CAST(N'2019-12-18T14:12:16.803' AS DateTime), 219, CAST(N'2020-09-04T11:57:40.770' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (232, 219, NULL, 4, N'4', 218, CAST(N'2019-12-18T14:12:16.807' AS DateTime), 219, CAST(N'2020-09-04T11:57:40.910' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (233, 219, NULL, 23, N'1,2,3,4,5', 218, CAST(N'2019-12-18T14:12:16.807' AS DateTime), 219, CAST(N'2020-09-04T11:57:40.927' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (234, 219, NULL, 27, N'1,2,3,4,5', 218, CAST(N'2019-12-18T14:12:16.810' AS DateTime), 219, CAST(N'2020-09-04T11:57:40.927' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (235, 219, NULL, 28, N'4', 218, CAST(N'2019-12-18T14:12:16.813' AS DateTime), 219, CAST(N'2020-09-04T11:57:40.943' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1182, 218, NULL, 35, N'1,2,3,4,5', 218, CAST(N'2020-02-04T16:29:18.213' AS DateTime), 218, CAST(N'2020-09-03T15:18:49.283' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1183, 218, NULL, 36, N'1,2,3,4,5', 218, CAST(N'2020-03-03T15:11:43.507' AS DateTime), 218, CAST(N'2020-09-03T15:18:49.300' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1184, 219, NULL, 35, N'1,2,3,4,5', 218, CAST(N'2020-03-04T18:38:20.320' AS DateTime), 219, CAST(N'2020-09-04T11:57:40.770' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1185, 219, NULL, 36, N'1,2,3,4,5', 218, CAST(N'2020-03-04T18:38:20.370' AS DateTime), 219, CAST(N'2020-09-04T11:57:40.803' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1186, 215, NULL, 35, N'1,2,3,4,5', 218, CAST(N'2020-03-04T18:38:33.843' AS DateTime), 217, CAST(N'2023-01-24T22:24:59.340' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1187, 215, NULL, 36, N'1,2,3,4,5', 218, CAST(N'2020-03-04T18:38:33.847' AS DateTime), 217, CAST(N'2023-01-24T22:24:59.350' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1188, 202, NULL, 2, N'4', 218, CAST(N'2020-03-04T21:25:34.567' AS DateTime), 217, CAST(N'2023-02-16T20:19:10.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1189, 202, NULL, 10, N'1,2,3,4,5', 218, CAST(N'2020-03-04T21:25:34.733' AS DateTime), NULL, NULL, 218, CAST(N'2021-01-12T10:24:38.543' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1190, 202, NULL, 34, N'1,2,3,4,5', 218, CAST(N'2020-03-04T21:25:34.740' AS DateTime), 217, CAST(N'2023-02-16T20:19:10.893' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1191, 202, NULL, 28, N'4', 218, CAST(N'2020-03-04T21:25:34.747' AS DateTime), 217, CAST(N'2023-02-16T20:19:11.010' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1192, 217, NULL, 35, N'1,2,3,4,5', 217, CAST(N'2020-03-05T14:36:07.330' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1193, 217, NULL, 36, N'1,2,3,4,5', 217, CAST(N'2020-03-05T14:36:07.387' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.173' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1194, 217, NULL, 37, N'1,2,3,4,5', 217, CAST(N'2020-08-14T14:30:07.517' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1195, 1, NULL, 28, N'4', 217, CAST(N'2020-08-14T14:32:15.647' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1196, 2, NULL, 28, N'4', 1, CAST(N'2020-08-14T14:40:51.263' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1197, 127, NULL, 3, N'4', 217, CAST(N'2020-08-14T14:44:59.327' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1198, 127, NULL, 37, N'1,2,3,4,5', 217, CAST(N'2020-08-14T14:44:59.327' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1199, 127, NULL, 28, N'4', 217, CAST(N'2020-08-14T14:44:59.327' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1200, 220, NULL, 28, N'4', 219, CAST(N'2020-08-14T17:37:04.260' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1201, 123, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.693' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1202, 124, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.693' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1203, 125, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.693' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1204, 126, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.693' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1205, 127, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.693' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1206, 128, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.693' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1207, 129, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.693' AS DateTime), 219, CAST(N'2021-06-21T07:38:58.140' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1208, 132, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.693' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1209, 134, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.693' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1210, 135, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.693' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1211, 138, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.693' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1212, 139, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.693' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1213, 140, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.693' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1214, 141, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.693' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1215, 142, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.753' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1216, 143, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.753' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1217, 144, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.753' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1218, 145, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.753' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1219, 146, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.753' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1220, 149, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.753' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1221, 151, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.753' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1222, 152, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.753' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1223, 153, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.753' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1224, 155, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.753' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1225, 156, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.753' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1226, 157, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.753' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1227, 159, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.753' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1228, 160, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.753' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1229, 161, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.753' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1230, 162, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.753' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1231, 183, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.753' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1232, 189, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.753' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1233, 190, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.753' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1234, 191, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.753' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1235, 204, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.753' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1236, 209, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.753' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1237, 219, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.753' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1238, 220, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.753' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1239, 221, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.753' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1240, 224, NULL, 28, N'4', 1, CAST(N'2020-08-15T08:15:43.753' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1241, 225, NULL, 28, N'4', 219, CAST(N'2020-08-15T08:37:16.490' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1242, 223, NULL, 28, N'4', 219, CAST(N'2020-08-15T08:42:50.317' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1243, 225, NULL, 28, N'4', 1, CAST(N'2020-08-15T09:12:02.500' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1244, 213, NULL, 28, N'4', 1, CAST(N'2020-08-17T07:53:03.657' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1245, 202, NULL, 28, N'4', 1, CAST(N'2020-08-17T07:53:03.657' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1246, 201, NULL, 28, N'4', 1, CAST(N'2020-08-17T07:53:03.657' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1247, 200, NULL, 28, N'4', 1, CAST(N'2020-08-17T07:53:03.657' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1248, 176, NULL, 28, N'4', 1, CAST(N'2020-08-17T07:53:03.657' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1249, 175, NULL, 28, N'4', 1, CAST(N'2020-08-17T07:53:03.657' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1250, 174, NULL, 28, N'4', 1, CAST(N'2020-08-17T07:53:03.657' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1251, 171, NULL, 28, N'4', 1, CAST(N'2020-08-17T07:53:03.657' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1252, 170, NULL, 28, N'4', 1, CAST(N'2020-08-17T07:53:03.657' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1253, 169, NULL, 28, N'4', 1, CAST(N'2020-08-17T07:53:03.657' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1254, 168, NULL, 28, N'4', 1, CAST(N'2020-08-17T07:53:03.657' AS DateTime), 217, CAST(N'2023-01-20T21:54:26.530' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1255, 166, NULL, 28, N'4', 1, CAST(N'2020-08-17T07:53:03.657' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1256, 226, NULL, 28, N'4', 219, CAST(N'2020-08-17T08:34:28.630' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1257, 227, NULL, 28, N'4', 219, CAST(N'2020-08-17T08:38:04.713' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1258, 228, NULL, 28, N'4', 219, CAST(N'2020-08-17T08:44:54.620' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1259, 218, NULL, 37, N'1,2,3,4,5', 217, CAST(N'2020-08-17T08:48:24.770' AS DateTime), 218, CAST(N'2020-09-03T15:18:49.300' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1260, 229, NULL, 28, N'4', 219, CAST(N'2020-08-17T08:49:07.810' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1261, 230, NULL, 28, N'4', 219, CAST(N'2020-08-17T08:51:18.253' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1262, 231, NULL, 28, N'4', 219, CAST(N'2020-08-17T08:56:11.750' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1263, 232, NULL, 28, N'4', 219, CAST(N'2020-08-17T08:58:12.250' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1264, 233, NULL, 28, N'4', 219, CAST(N'2020-08-21T13:25:21.320' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1265, 234, NULL, 28, N'4', 219, CAST(N'2020-08-21T13:27:06.987' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1266, 235, NULL, 28, N'4', 219, CAST(N'2020-08-21T16:02:15.277' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1267, 218, NULL, 38, N'1,2,3,4,5', 218, CAST(N'2020-09-03T15:18:49.300' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1268, 219, NULL, 37, N'1,2,3,4,5', 219, CAST(N'2020-09-04T11:57:40.850' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1269, 219, NULL, 38, N'1,2,3,4,5', 219, CAST(N'2020-09-04T11:57:40.910' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1270, 237, NULL, 2, N'4', 218, CAST(N'2020-10-27T07:24:29.867' AS DateTime), 218, CAST(N'2021-01-12T10:24:08.910' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1271, 237, NULL, 10, N'1,2,3,4,5', 218, CAST(N'2020-10-27T07:24:29.880' AS DateTime), 218, CAST(N'2020-10-27T07:25:10.310' AS DateTime), 218, CAST(N'2021-01-12T10:24:09.160' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1272, 237, NULL, 11, N'1,2,3,4,5', 218, CAST(N'2020-10-27T07:24:29.897' AS DateTime), NULL, NULL, 218, CAST(N'2020-10-27T07:25:10.327' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1273, 237, NULL, 12, N'1,2,3,4,5', 218, CAST(N'2020-10-27T07:24:29.897' AS DateTime), NULL, NULL, 218, CAST(N'2020-10-27T07:25:10.327' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1274, 237, NULL, 13, N'1,2,3,4,5', 218, CAST(N'2020-10-27T07:24:29.897' AS DateTime), NULL, NULL, 218, CAST(N'2020-10-27T07:25:10.327' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1275, 237, NULL, 14, N'1,2,3,4,5', 218, CAST(N'2020-10-27T07:24:29.913' AS DateTime), NULL, NULL, 218, CAST(N'2020-10-27T07:25:10.327' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1276, 237, NULL, 34, N'1,2,3,4,5', 218, CAST(N'2020-10-27T07:24:29.927' AS DateTime), 218, CAST(N'2021-01-12T10:24:09.160' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1277, 237, NULL, 28, N'4', 218, CAST(N'2020-10-27T07:24:29.927' AS DateTime), 218, CAST(N'2021-01-12T10:24:09.160' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1278, 238, NULL, 2, N'4', 218, CAST(N'2020-10-27T07:42:29.090' AS DateTime), 218, CAST(N'2020-10-27T07:50:07.300' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1279, 238, NULL, 10, N'1,2,3,4,5', 218, CAST(N'2020-10-27T07:42:29.107' AS DateTime), 218, CAST(N'2020-10-27T07:50:07.317' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1280, 238, NULL, 11, N'1,2,3,4,5', 218, CAST(N'2020-10-27T07:42:29.107' AS DateTime), NULL, NULL, 218, CAST(N'2020-10-27T07:50:07.317' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1281, 238, NULL, 12, N'1,2,3,4,5', 218, CAST(N'2020-10-27T07:42:29.107' AS DateTime), NULL, NULL, 218, CAST(N'2020-10-27T07:50:07.333' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1282, 238, NULL, 13, N'1,2,3,4,5', 218, CAST(N'2020-10-27T07:42:29.107' AS DateTime), NULL, NULL, 218, CAST(N'2020-10-27T07:50:07.333' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1283, 238, NULL, 14, N'1,2,3,4,5', 218, CAST(N'2020-10-27T07:42:29.123' AS DateTime), NULL, NULL, 218, CAST(N'2020-10-27T07:50:07.333' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1284, 238, NULL, 34, N'1,2,3,4,5', 218, CAST(N'2020-10-27T07:42:29.123' AS DateTime), NULL, NULL, 218, CAST(N'2020-10-27T07:50:07.333' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1285, 238, NULL, 28, N'4', 218, CAST(N'2020-10-27T07:42:29.123' AS DateTime), 218, CAST(N'2020-10-27T07:50:07.317' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1286, 240, NULL, 28, N'4', 219, CAST(N'2020-11-23T12:59:35.477' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1287, 129, NULL, 3, N'4', 219, CAST(N'2021-06-21T07:38:16.257' AS DateTime), NULL, NULL, 219, CAST(N'2021-06-21T07:38:58.157' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1288, 129, NULL, 37, N'1,2,3,4,5', 219, CAST(N'2021-06-21T07:38:16.273' AS DateTime), NULL, NULL, 219, CAST(N'2021-06-21T07:38:58.170' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1289, 212, NULL, 1, N'4', 215, CAST(N'2022-03-03T10:20:25.940' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.677' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1290, 212, NULL, 5, N'1,2,3,4,5', 215, CAST(N'2022-03-03T10:20:26.173' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.880' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1291, 212, NULL, 6, N'1,2,3,4,5', 215, CAST(N'2022-03-03T10:20:26.173' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.880' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1292, 212, NULL, 7, N'1,2,3,4,5', 215, CAST(N'2022-03-03T10:20:26.173' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.897' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1293, 212, NULL, 8, N'1,2,3,4,5', 215, CAST(N'2022-03-03T10:20:26.173' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.897' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1294, 212, NULL, 33, N'1,2,3,4,5', 215, CAST(N'2022-03-03T10:20:26.173' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.897' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1295, 212, NULL, 9, N'1,2,3,4,5', 215, CAST(N'2022-03-03T10:20:26.190' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.897' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1296, 212, NULL, 2, N'4', 215, CAST(N'2022-03-03T10:20:26.190' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.897' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1297, 212, NULL, 10, N'1,2,3,4,5', 215, CAST(N'2022-03-03T10:20:26.190' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.897' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1298, 212, NULL, 11, N'1,2,3,4,5', 215, CAST(N'2022-03-03T10:20:26.190' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.910' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1299, 212, NULL, 12, N'1,2,3,4,5', 215, CAST(N'2022-03-03T10:20:26.190' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.910' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1300, 212, NULL, 13, N'1,2,3,4,5', 215, CAST(N'2022-03-03T10:20:26.190' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.910' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1301, 212, NULL, 14, N'1,2,3,4,5', 215, CAST(N'2022-03-03T10:20:26.203' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.910' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1302, 212, NULL, 34, N'1,2,3,4,5', 215, CAST(N'2022-03-03T10:20:26.203' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.910' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1303, 212, NULL, 3, N'4', 215, CAST(N'2022-03-03T10:20:26.203' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.910' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1304, 212, NULL, 15, N'1,2,3,4,5', 215, CAST(N'2022-03-03T10:20:26.203' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.927' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1305, 212, NULL, 16, N'1,2,3,4,5', 215, CAST(N'2022-03-03T10:20:26.203' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.927' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1306, 212, NULL, 17, N'1,2,3,4,5', 215, CAST(N'2022-03-03T10:20:26.203' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.927' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1307, 212, NULL, 18, N'1,2,3,4,5', 215, CAST(N'2022-03-03T10:20:26.220' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.927' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1308, 212, NULL, 19, N'1,2,3,4,5', 215, CAST(N'2022-03-03T10:20:26.220' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.927' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1309, 212, NULL, 20, N'1,2,3,4,5', 215, CAST(N'2022-03-03T10:20:26.220' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.927' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1310, 212, NULL, 21, N'1,2,3,4,5', 215, CAST(N'2022-03-03T10:20:26.220' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.943' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1311, 212, NULL, 22, N'1,2,3,4,5', 215, CAST(N'2022-03-03T10:20:26.220' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.943' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1312, 212, NULL, 35, N'1,2,3,4,5', 215, CAST(N'2022-03-03T10:20:26.283' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.943' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1313, 212, NULL, 36, N'1,2,3,4,5', 215, CAST(N'2022-03-03T10:20:26.297' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.943' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1314, 212, NULL, 37, N'1,2,3,4,5', 215, CAST(N'2022-03-03T10:20:26.297' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.943' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1315, 212, NULL, 38, N'1,2,3,4,5', 215, CAST(N'2022-03-03T10:20:26.297' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.957' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1316, 212, NULL, 4, N'4', 215, CAST(N'2022-03-03T10:20:26.297' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.957' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1317, 212, NULL, 23, N'1,2,3,4,5', 215, CAST(N'2022-03-03T10:20:26.297' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.957' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1318, 212, NULL, 27, N'1,2,3,4,5', 215, CAST(N'2022-03-03T10:20:26.313' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.957' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1319, 212, NULL, 28, N'4', 215, CAST(N'2022-03-03T10:20:26.313' AS DateTime), 215, CAST(N'2022-07-12T15:18:08.957' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1320, 241, NULL, 2, N'4', 218, CAST(N'2022-03-07T09:31:44.707' AS DateTime), 218, CAST(N'2022-03-07T09:33:37.507' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1321, 241, NULL, 10, N'1,2,3,4,5', 218, CAST(N'2022-03-07T09:31:44.720' AS DateTime), 218, CAST(N'2022-03-07T09:33:37.537' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1322, 241, NULL, 34, N'1,2,3,4,5', 218, CAST(N'2022-03-07T09:31:44.720' AS DateTime), 218, CAST(N'2022-03-07T09:33:37.537' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1323, 241, NULL, 28, N'4', 218, CAST(N'2022-03-07T09:33:37.537' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1324, 242, NULL, 2, N'4', 218, CAST(N'2022-03-07T09:39:55.420' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1325, 242, NULL, 10, N'1,2,3,4,5', 218, CAST(N'2022-03-07T09:39:55.420' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1326, 242, NULL, 34, N'1,2,3,4,5', 218, CAST(N'2022-03-07T09:39:55.420' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1327, 242, NULL, 28, N'4', 218, CAST(N'2022-03-07T09:39:55.420' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1328, 243, NULL, 2, N'4', 218, CAST(N'2022-07-11T08:01:20.923' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1329, 243, NULL, 10, N'1,2,3,4,5', 218, CAST(N'2022-07-11T08:01:20.940' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1330, 243, NULL, 34, N'1,2,3,4,5', 218, CAST(N'2022-07-11T08:01:20.940' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1331, 243, NULL, 28, N'4', 218, CAST(N'2022-07-11T08:01:20.957' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1332, 2, NULL, 7, N'1,2,3,4,5', 0, CAST(N'2019-09-30T20:15:40.757' AS DateTime), 1, CAST(N'2019-09-30T21:36:33.607' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1333, 2, NULL, 7, N'1,2,3,4,5', 0, CAST(N'2019-09-30T20:15:40.757' AS DateTime), 1, CAST(N'2019-09-30T21:36:33.607' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1334, 244, NULL, 1, N'4', 217, CAST(N'2023-01-23T16:05:55.503' AS DateTime), NULL, NULL, 244, CAST(N'2023-01-23T20:24:52.010' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1335, 244, NULL, 5, N'1,2,3,4,5', 217, CAST(N'2023-01-23T16:05:55.517' AS DateTime), NULL, NULL, 244, CAST(N'2023-01-23T20:24:52.020' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1336, 244, NULL, 6, N'1,2,3,4,5', 217, CAST(N'2023-01-23T16:05:55.523' AS DateTime), NULL, NULL, 244, CAST(N'2023-01-23T20:24:52.030' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1337, 244, NULL, 7, N'1,2,3,4,5', 217, CAST(N'2023-01-23T16:05:55.530' AS DateTime), NULL, NULL, 244, CAST(N'2023-01-23T20:24:52.030' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1338, 244, NULL, 8, N'1,2,3,4,5', 217, CAST(N'2023-01-23T16:05:55.537' AS DateTime), NULL, NULL, 244, CAST(N'2023-01-23T20:24:52.030' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1339, 244, NULL, 33, N'1,2,3,4,5', 217, CAST(N'2023-01-23T16:05:55.543' AS DateTime), NULL, NULL, 244, CAST(N'2023-01-23T20:24:52.040' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1340, 244, NULL, 9, N'1,2,3,4,5', 217, CAST(N'2023-01-23T16:05:55.547' AS DateTime), NULL, NULL, 244, CAST(N'2023-01-23T20:24:52.040' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1341, 244, NULL, 2, N'4', 217, CAST(N'2023-01-23T16:05:55.553' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.183' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1342, 244, NULL, 10, N'1,2,3,4,5', 217, CAST(N'2023-01-23T16:05:55.560' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.187' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1343, 244, NULL, 11, N'1,2,3,4,5', 217, CAST(N'2023-01-23T16:05:55.563' AS DateTime), NULL, NULL, 244, CAST(N'2023-01-23T20:24:52.043' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1344, 244, NULL, 12, N'1,2,3,4,5', 217, CAST(N'2023-01-23T16:05:55.570' AS DateTime), NULL, NULL, 244, CAST(N'2023-01-23T20:24:52.043' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1345, 244, NULL, 13, N'1,2,3,4,5', 217, CAST(N'2023-01-23T16:05:55.577' AS DateTime), NULL, NULL, 244, CAST(N'2023-01-23T20:24:52.043' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1346, 244, NULL, 14, N'1,2,3,4,5', 217, CAST(N'2023-01-23T16:05:55.580' AS DateTime), NULL, NULL, 244, CAST(N'2023-01-23T20:24:52.053' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1347, 244, NULL, 34, N'1,2,3,4,5', 217, CAST(N'2023-01-23T16:05:55.590' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.210' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1348, 244, NULL, 4, N'4', 217, CAST(N'2023-01-23T16:05:55.593' AS DateTime), NULL, NULL, 244, CAST(N'2023-01-23T20:24:52.063' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1349, 244, NULL, 23, N'1,2,3,4,5', 217, CAST(N'2023-01-23T16:05:55.600' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1350, 244, NULL, 27, N'1,2,3,4,5', 217, CAST(N'2023-01-23T16:05:55.607' AS DateTime), NULL, NULL, 244, CAST(N'2023-01-23T20:24:52.097' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1351, 244, NULL, 28, N'4', 217, CAST(N'2023-01-23T16:05:55.613' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.297' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1352, 244, NULL, 1, N'4', 217, CAST(N'2023-01-23T21:43:47.807' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.150' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1353, 244, NULL, 5, N'1,2,3,4,5', 217, CAST(N'2023-01-23T21:43:47.840' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.157' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1354, 244, NULL, 6, N'1,2,3,4,5', 217, CAST(N'2023-01-23T21:43:47.847' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.160' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1355, 244, NULL, 7, N'1,2,3,4,5', 217, CAST(N'2023-01-23T21:43:47.863' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1356, 244, NULL, 8, N'1,2,3,4,5', 217, CAST(N'2023-01-23T21:43:47.880' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.170' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1357, 244, NULL, 33, N'1,2,3,4,5', 217, CAST(N'2023-01-23T21:43:47.890' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.173' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1358, 244, NULL, 9, N'1,2,3,4,5', 217, CAST(N'2023-01-23T21:43:47.920' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1359, 244, NULL, 11, N'1,2,3,4,5', 217, CAST(N'2023-01-23T21:43:47.947' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.190' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1360, 244, NULL, 12, N'1,2,3,4,5', 217, CAST(N'2023-01-23T21:43:47.960' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.197' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1361, 244, NULL, 13, N'1,2,3,4,5', 217, CAST(N'2023-01-23T21:43:47.970' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.200' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1362, 244, NULL, 14, N'1,2,3,4,5', 217, CAST(N'2023-01-23T21:43:47.980' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1363, 244, NULL, 3, N'4', 217, CAST(N'2023-01-23T21:43:47.990' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.217' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1364, 244, NULL, 15, N'1,2,3,4,5', 217, CAST(N'2023-01-23T21:43:48.007' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.220' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1365, 244, NULL, 16, N'1,2,3,4,5', 217, CAST(N'2023-01-23T21:43:48.020' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1366, 244, NULL, 17, N'1,2,3,4,5', 217, CAST(N'2023-01-23T21:43:48.030' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.227' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1367, 244, NULL, 18, N'1,2,3,4,5', 217, CAST(N'2023-01-23T21:43:48.037' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.230' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1368, 244, NULL, 19, N'1,2,3,4,5', 217, CAST(N'2023-01-23T21:43:48.047' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.237' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1369, 244, NULL, 20, N'1,2,3,4,5', 217, CAST(N'2023-01-23T21:43:48.060' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.237' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1370, 244, NULL, 21, N'1,2,3,4,5', 217, CAST(N'2023-01-23T21:43:48.070' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.240' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1371, 244, NULL, 22, N'1,2,3,4,5', 217, CAST(N'2023-01-23T21:43:48.090' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.247' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1372, 244, NULL, 35, N'1,2,3,4,5', 217, CAST(N'2023-01-23T21:43:48.103' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.250' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1373, 244, NULL, 36, N'1,2,3,4,5', 217, CAST(N'2023-01-23T21:43:48.120' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.257' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1374, 244, NULL, 37, N'1,2,3,4,5', 217, CAST(N'2023-01-23T21:43:48.133' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.260' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1375, 244, NULL, 38, N'1,2,3,4,5', 217, CAST(N'2023-01-23T21:43:48.140' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.263' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1376, 244, NULL, 4, N'4', 217, CAST(N'2023-01-23T21:43:48.150' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.283' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1377, 244, NULL, 23, N'1,2,3,4,5', 217, CAST(N'2023-01-23T21:43:48.163' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.290' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1378, 244, NULL, 27, N'1,2,3,4,5', 217, CAST(N'2023-01-23T21:43:48.173' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.293' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1379, 215, NULL, 20, N'1,2,3,4,5', 217, CAST(N'2023-01-24T22:24:59.300' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1380, 215, NULL, 22, N'1,2,3,4,5', 217, CAST(N'2023-01-24T22:24:59.330' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1381, 217, NULL, 20, N'1,2,3,4,5', 217, CAST(N'2023-01-25T15:12:10.170' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.153' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1382, 217, NULL, 22, N'1,2,3,4,5', 217, CAST(N'2023-01-25T15:12:10.220' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.163' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1383, 217, NULL, 38, N'1,2,3,4,5', 217, CAST(N'2023-01-25T15:12:10.263' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.180' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1384, 217, NULL, 39, N'1,2,3,4,5', 217, CAST(N'2023-01-25T15:24:32.203' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.070' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1385, 244, NULL, 39, N'1,2,3,4,5', 244, CAST(N'2023-01-31T14:55:19.900' AS DateTime), 244, CAST(N'2023-02-15T22:50:23.423' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.307' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1386, 244, NULL, 40, N'1,2,3,4,5', 244, CAST(N'2023-01-31T14:55:19.933' AS DateTime), NULL, NULL, 244, CAST(N'2023-02-01T14:58:05.683' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1387, 244, NULL, 41, N'1,2,3,4,5', 244, CAST(N'2023-02-01T14:58:05.640' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.270' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1388, 217, NULL, 41, N'1,2,3,4,5', 217, CAST(N'2023-02-01T14:59:27.183' AS DateTime), 217, CAST(N'2023-02-09T18:12:27.183' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1389, 244, NULL, 42, N'1,2,3,4,5', 244, CAST(N'2023-02-09T18:11:31.873' AS DateTime), 244, CAST(N'2023-02-20T17:17:00.277' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1390, 217, NULL, 42, N'1,2,3,4,5', 217, CAST(N'2023-02-09T18:12:27.190' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1391, 202, NULL, 10, N'1,2,3,4,5', 244, CAST(N'2023-02-14T20:58:06.130' AS DateTime), 217, CAST(N'2023-02-16T20:19:10.867' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1392, 202, NULL, 11, N'1,2,3,4,5', 244, CAST(N'2023-02-14T20:58:06.143' AS DateTime), 217, CAST(N'2023-02-16T20:19:10.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1393, 202, NULL, 3, N'4', 244, CAST(N'2023-02-14T20:58:06.157' AS DateTime), 217, CAST(N'2023-02-16T20:19:10.897' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1394, 202, NULL, 41, N'1,2,3,4,5', 244, CAST(N'2023-02-14T20:58:06.163' AS DateTime), 217, CAST(N'2023-02-16T20:19:10.973' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1395, 202, NULL, 42, N'1,2,3,4,5', 244, CAST(N'2023-02-14T20:58:06.167' AS DateTime), 217, CAST(N'2023-02-16T20:19:10.977' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1396, 244, NULL, 43, N'4', 244, CAST(N'2023-02-15T22:50:23.570' AS DateTime), NULL, NULL, 244, CAST(N'2023-02-20T17:17:00.310' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1397, 8, NULL, 33, N'1,2,3,4,5', 8, CAST(N'2023-02-16T16:53:42.343' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1398, 8, NULL, 39, N'1,2,3,4,5', 8, CAST(N'2023-02-16T16:53:42.357' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1399, 8, NULL, 34, N'1,2,3,4,5', 8, CAST(N'2023-02-16T16:53:42.387' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1400, 8, NULL, 35, N'1,2,3,4,5', 8, CAST(N'2023-02-16T16:53:42.430' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1401, 8, NULL, 36, N'1,2,3,4,5', 8, CAST(N'2023-02-16T16:53:42.437' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1402, 8, NULL, 37, N'1,2,3,4,5', 8, CAST(N'2023-02-16T16:53:42.443' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1403, 8, NULL, 38, N'1,2,3,4,5', 8, CAST(N'2023-02-16T16:53:42.450' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1404, 8, NULL, 41, N'1,2,3,4,5', 8, CAST(N'2023-02-16T16:53:42.453' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1405, 8, NULL, 42, N'1,2,3,4,5', 8, CAST(N'2023-02-16T16:53:42.460' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1406, 8, NULL, 23, N'1,2,3,4,5', 8, CAST(N'2023-02-16T16:53:42.470' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1407, 8, NULL, 28, N'4', 8, CAST(N'2023-02-16T16:53:42.480' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1408, 202, NULL, 1, N'4', 217, CAST(N'2023-02-16T20:19:10.473' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1409, 202, NULL, 5, N'1,2,3,4,5', 217, CAST(N'2023-02-16T20:19:10.800' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1410, 202, NULL, 6, N'1,2,3,4,5', 217, CAST(N'2023-02-16T20:19:10.807' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1411, 202, NULL, 7, N'1,2,3,4,5', 217, CAST(N'2023-02-16T20:19:10.813' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1412, 202, NULL, 8, N'1,2,3,4,5', 217, CAST(N'2023-02-16T20:19:10.817' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1413, 202, NULL, 33, N'1,2,3,4,5', 217, CAST(N'2023-02-16T20:19:10.823' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1414, 202, NULL, 9, N'1,2,3,4,5', 217, CAST(N'2023-02-16T20:19:10.830' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1415, 202, NULL, 39, N'1,2,3,4,5', 217, CAST(N'2023-02-16T20:19:10.837' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1416, 202, NULL, 12, N'1,2,3,4,5', 217, CAST(N'2023-02-16T20:19:10.877' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1417, 202, NULL, 13, N'1,2,3,4,5', 217, CAST(N'2023-02-16T20:19:10.883' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1418, 202, NULL, 14, N'1,2,3,4,5', 217, CAST(N'2023-02-16T20:19:10.887' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1419, 202, NULL, 15, N'1,2,3,4,5', 217, CAST(N'2023-02-16T20:19:10.903' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1420, 202, NULL, 16, N'1,2,3,4,5', 217, CAST(N'2023-02-16T20:19:10.907' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1421, 202, NULL, 17, N'1,2,3,4,5', 217, CAST(N'2023-02-16T20:19:10.913' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1422, 202, NULL, 18, N'1,2,3,4,5', 217, CAST(N'2023-02-16T20:19:10.920' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1423, 202, NULL, 19, N'1,2,3,4,5', 217, CAST(N'2023-02-16T20:19:10.923' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1424, 202, NULL, 20, N'1,2,3,4,5', 217, CAST(N'2023-02-16T20:19:10.930' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1425, 202, NULL, 21, N'1,2,3,4,5', 217, CAST(N'2023-02-16T20:19:10.933' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1426, 202, NULL, 22, N'1,2,3,4,5', 217, CAST(N'2023-02-16T20:19:10.940' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1427, 202, NULL, 35, N'1,2,3,4,5', 217, CAST(N'2023-02-16T20:19:10.943' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1428, 202, NULL, 36, N'1,2,3,4,5', 217, CAST(N'2023-02-16T20:19:10.953' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1429, 202, NULL, 37, N'1,2,3,4,5', 217, CAST(N'2023-02-16T20:19:10.960' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1430, 202, NULL, 38, N'1,2,3,4,5', 217, CAST(N'2023-02-16T20:19:10.970' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1431, 202, NULL, 4, N'4', 217, CAST(N'2023-02-16T20:19:10.990' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1432, 202, NULL, 23, N'1,2,3,4,5', 217, CAST(N'2023-02-16T20:19:10.997' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (1433, 202, NULL, 27, N'1,2,3,4,5', 217, CAST(N'2023-02-16T20:19:11.003' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2397, 248, NULL, 28, N'4', 217, CAST(N'2023-02-23T10:28:28.650' AS DateTime), 217, CAST(N'2023-02-28T11:58:30.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2398, 248, NULL, 1, N'4', 217, CAST(N'2023-02-23T10:29:12.257' AS DateTime), 217, CAST(N'2023-02-28T11:58:29.097' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2399, 248, NULL, 5, N'1,2,3,4,5', 217, CAST(N'2023-02-23T10:29:12.263' AS DateTime), 217, CAST(N'2023-02-28T11:58:29.720' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2400, 248, NULL, 6, N'1,2,3,4,5', 217, CAST(N'2023-02-23T10:29:12.270' AS DateTime), 217, CAST(N'2023-02-28T11:58:29.737' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2401, 248, NULL, 7, N'1,2,3,4,5', 217, CAST(N'2023-02-23T10:29:12.280' AS DateTime), 217, CAST(N'2023-02-28T11:58:29.753' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2402, 248, NULL, 8, N'1,2,3,4,5', 217, CAST(N'2023-02-23T10:29:12.293' AS DateTime), 217, CAST(N'2023-02-28T11:58:29.763' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2403, 248, NULL, 33, N'1,2,3,4,5', 217, CAST(N'2023-02-23T10:29:12.297' AS DateTime), 217, CAST(N'2023-02-28T11:58:29.770' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2404, 248, NULL, 9, N'1,2,3,4,5', 217, CAST(N'2023-02-23T10:29:12.310' AS DateTime), 217, CAST(N'2023-02-28T11:58:29.787' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2405, 248, NULL, 2, N'4', 217, CAST(N'2023-02-23T10:29:12.317' AS DateTime), 217, CAST(N'2023-02-28T11:58:29.787' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2406, 248, NULL, 10, N'1,2,3,4,5', 217, CAST(N'2023-02-23T10:29:12.327' AS DateTime), 217, CAST(N'2023-02-28T11:58:29.797' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2407, 248, NULL, 11, N'1,2,3,4,5', 217, CAST(N'2023-02-23T10:29:12.340' AS DateTime), 217, CAST(N'2023-02-28T11:58:29.807' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2408, 248, NULL, 12, N'1,2,3,4,5', 217, CAST(N'2023-02-23T10:29:12.347' AS DateTime), 217, CAST(N'2023-02-28T11:58:29.807' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2409, 248, NULL, 13, N'1,2,3,4,5', 217, CAST(N'2023-02-23T10:29:12.357' AS DateTime), 217, CAST(N'2023-02-28T11:58:29.820' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2410, 248, NULL, 14, N'1,2,3,4,5', 217, CAST(N'2023-02-23T10:29:12.363' AS DateTime), 217, CAST(N'2023-02-28T11:58:29.830' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2411, 248, NULL, 34, N'1,2,3,4,5', 217, CAST(N'2023-02-23T10:29:12.373' AS DateTime), 217, CAST(N'2023-02-28T11:58:29.837' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2412, 248, NULL, 3, N'4', 217, CAST(N'2023-02-23T10:29:12.380' AS DateTime), 217, CAST(N'2023-02-28T11:58:29.847' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2413, 248, NULL, 15, N'1,2,3,4,5', 217, CAST(N'2023-02-23T10:29:12.393' AS DateTime), 217, CAST(N'2023-02-28T11:58:29.853' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2414, 248, NULL, 16, N'1,2,3,4,5', 217, CAST(N'2023-02-23T10:29:12.400' AS DateTime), 217, CAST(N'2023-02-28T11:58:29.863' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2415, 248, NULL, 17, N'1,2,3,4,5', 217, CAST(N'2023-02-23T10:29:12.407' AS DateTime), 217, CAST(N'2023-02-28T11:58:29.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2416, 248, NULL, 18, N'1,2,3,4,5', 217, CAST(N'2023-02-23T10:29:12.413' AS DateTime), 217, CAST(N'2023-02-28T11:58:29.880' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2417, 248, NULL, 19, N'1,2,3,4,5', 217, CAST(N'2023-02-23T10:29:12.423' AS DateTime), 217, CAST(N'2023-02-28T11:58:29.887' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2418, 248, NULL, 20, N'1,2,3,4,5', 217, CAST(N'2023-02-23T10:29:12.430' AS DateTime), 217, CAST(N'2023-02-28T11:58:29.887' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2419, 248, NULL, 21, N'1,2,3,4,5', 217, CAST(N'2023-02-23T10:29:12.440' AS DateTime), 217, CAST(N'2023-02-28T11:58:29.907' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2420, 248, NULL, 22, N'1,2,3,4,5', 217, CAST(N'2023-02-23T10:29:12.443' AS DateTime), 217, CAST(N'2023-02-28T11:58:29.907' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2421, 248, NULL, 35, N'1,2,3,4,5', 217, CAST(N'2023-02-23T10:29:12.453' AS DateTime), 217, CAST(N'2023-02-28T11:58:29.920' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2422, 248, NULL, 36, N'1,2,3,4,5', 217, CAST(N'2023-02-23T10:29:12.457' AS DateTime), 217, CAST(N'2023-02-28T11:58:29.920' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2423, 248, NULL, 37, N'1,2,3,4,5', 217, CAST(N'2023-02-23T10:29:12.463' AS DateTime), 217, CAST(N'2023-02-28T11:58:29.930' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2424, 248, NULL, 38, N'1,2,3,4,5', 217, CAST(N'2023-02-23T10:29:12.470' AS DateTime), 217, CAST(N'2023-02-28T11:58:29.937' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2425, 248, NULL, 41, N'1,2,3,4,5', 217, CAST(N'2023-02-23T10:29:12.477' AS DateTime), 217, CAST(N'2023-02-28T11:58:29.937' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (2426, 248, NULL, 42, N'1,2,3,4,5', 217, CAST(N'2023-02-23T10:29:12.483' AS DateTime), 217, CAST(N'2023-02-28T11:58:29.947' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3397, 248, NULL, 4, N'4', 217, CAST(N'2023-02-28T11:58:29.953' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3398, 248, NULL, 23, N'1,2,3,4,5', 217, CAST(N'2023-02-28T11:58:30.070' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3399, 248, NULL, 27, N'1,2,3,4,5', 217, CAST(N'2023-02-28T11:58:30.087' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3400, 1246, NULL, 1, N'4', 217, CAST(N'2023-02-28T12:30:14.330' AS DateTime), 217, CAST(N'2023-03-13T11:47:39.280' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3401, 1246, NULL, 5, N'1,2,3,4,5', 217, CAST(N'2023-02-28T12:30:14.740' AS DateTime), 217, CAST(N'2023-03-13T11:47:39.290' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3402, 1246, NULL, 6, N'1,2,3,4,5', 217, CAST(N'2023-02-28T12:30:14.750' AS DateTime), 217, CAST(N'2023-03-13T11:47:39.293' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3403, 1246, NULL, 7, N'1,2,3,4,5', 217, CAST(N'2023-02-28T12:30:14.750' AS DateTime), 217, CAST(N'2023-03-13T11:47:39.300' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3404, 1246, NULL, 8, N'1,2,3,4,5', 217, CAST(N'2023-02-28T12:30:14.760' AS DateTime), 217, CAST(N'2023-03-13T11:47:39.303' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3405, 1246, NULL, 33, N'1,2,3,4,5', 217, CAST(N'2023-02-28T12:30:14.760' AS DateTime), 217, CAST(N'2023-03-13T11:47:39.307' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3406, 1246, NULL, 9, N'1,2,3,4,5', 217, CAST(N'2023-02-28T12:30:14.770' AS DateTime), 217, CAST(N'2023-03-13T11:47:39.310' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3407, 1246, NULL, 2, N'4', 217, CAST(N'2023-02-28T12:30:14.780' AS DateTime), 217, CAST(N'2023-03-13T11:47:39.317' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3408, 1246, NULL, 10, N'1,2,3,4,5', 217, CAST(N'2023-02-28T12:30:14.780' AS DateTime), 217, CAST(N'2023-03-13T11:47:39.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3409, 1246, NULL, 11, N'1,2,3,4,5', 217, CAST(N'2023-02-28T12:30:14.790' AS DateTime), 217, CAST(N'2023-03-13T11:47:39.327' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3410, 1246, NULL, 12, N'1,2,3,4,5', 217, CAST(N'2023-02-28T12:30:14.790' AS DateTime), 217, CAST(N'2023-03-13T11:47:39.330' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3411, 1246, NULL, 13, N'1,2,3,4,5', 217, CAST(N'2023-02-28T12:30:14.800' AS DateTime), 217, CAST(N'2023-03-13T11:47:39.337' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3412, 1246, NULL, 14, N'1,2,3,4,5', 217, CAST(N'2023-02-28T12:30:14.800' AS DateTime), 217, CAST(N'2023-03-13T11:47:39.340' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3413, 1246, NULL, 34, N'1,2,3,4,5', 217, CAST(N'2023-02-28T12:30:14.810' AS DateTime), 217, CAST(N'2023-03-13T11:47:39.343' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3414, 1246, NULL, 3, N'4', 217, CAST(N'2023-02-28T12:30:14.810' AS DateTime), 217, CAST(N'2023-03-13T11:47:39.350' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3415, 1246, NULL, 20, N'1,2,3,4,5', 217, CAST(N'2023-02-28T12:30:14.820' AS DateTime), 217, CAST(N'2023-03-13T11:47:39.383' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3416, 1246, NULL, 35, N'1,2,3,4,5', 217, CAST(N'2023-02-28T12:30:14.833' AS DateTime), 217, CAST(N'2023-03-13T11:47:39.407' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3417, 1246, NULL, 41, N'1,2,3,4,5', 217, CAST(N'2023-02-28T12:30:14.833' AS DateTime), 217, CAST(N'2023-03-13T11:47:39.443' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3418, 1246, NULL, 28, N'4', 217, CAST(N'2023-02-28T12:30:14.843' AS DateTime), 217, CAST(N'2023-03-13T11:47:39.483' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3419, 1246, NULL, 15, N'1,2,3,4,5', 217, CAST(N'2023-03-13T11:46:32.257' AS DateTime), 217, CAST(N'2023-03-13T11:47:39.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3420, 1246, NULL, 16, N'1,2,3,4,5', 217, CAST(N'2023-03-13T11:46:32.277' AS DateTime), 217, CAST(N'2023-03-13T11:47:39.360' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3421, 1246, NULL, 17, N'1,2,3,4,5', 217, CAST(N'2023-03-13T11:46:32.307' AS DateTime), 217, CAST(N'2023-03-13T11:47:39.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3422, 1246, NULL, 18, N'1,2,3,4,5', 217, CAST(N'2023-03-13T11:46:32.317' AS DateTime), 217, CAST(N'2023-03-13T11:47:39.370' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3423, 1246, NULL, 19, N'1,2,3,4,5', 217, CAST(N'2023-03-13T11:46:32.330' AS DateTime), 217, CAST(N'2023-03-13T11:47:39.377' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3424, 1246, NULL, 21, N'1,2,3,4,5', 217, CAST(N'2023-03-13T11:46:32.353' AS DateTime), 217, CAST(N'2023-03-13T11:47:39.390' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3425, 1246, NULL, 22, N'1,2,3,4,5', 217, CAST(N'2023-03-13T11:46:32.367' AS DateTime), 217, CAST(N'2023-03-13T11:47:39.397' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3426, 1246, NULL, 36, N'1,2,3,4,5', 217, CAST(N'2023-03-13T11:46:32.390' AS DateTime), 217, CAST(N'2023-03-13T11:47:39.417' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3427, 1246, NULL, 37, N'1,2,3,4,5', 217, CAST(N'2023-03-13T11:46:32.400' AS DateTime), 217, CAST(N'2023-03-13T11:47:39.423' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3428, 1246, NULL, 38, N'1,2,3,4,5', 217, CAST(N'2023-03-13T11:46:32.410' AS DateTime), 217, CAST(N'2023-03-13T11:47:39.433' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3429, 1246, NULL, 42, N'1,2,3,4,5', 217, CAST(N'2023-03-13T11:46:32.427' AS DateTime), 217, CAST(N'2023-03-13T11:47:39.457' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3430, 1246, NULL, 4, N'4', 217, CAST(N'2023-03-13T11:47:39.463' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3431, 1246, NULL, 27, N'1,2,3,4,5', 217, CAST(N'2023-03-13T11:47:39.477' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3432, 250, NULL, 2, N'4', 1246, CAST(N'2023-03-13T11:48:49.247' AS DateTime), 217, CAST(N'2023-03-16T10:17:12.067' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3433, 250, NULL, 10, N'1,2,4,5', 1246, CAST(N'2023-03-13T11:48:49.257' AS DateTime), 217, CAST(N'2023-03-16T10:17:12.067' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3434, 250, NULL, 34, N'1,2,3,4,5', 1246, CAST(N'2023-03-13T11:48:49.263' AS DateTime), 217, CAST(N'2023-03-16T10:17:12.083' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3435, 250, NULL, 28, N'4', 1246, CAST(N'2023-03-13T11:48:49.267' AS DateTime), 217, CAST(N'2023-03-16T10:17:12.083' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3436, 250, NULL, 14, N'1,2,3,4,5', 1246, CAST(N'2023-03-14T16:55:59.367' AS DateTime), 217, CAST(N'2023-03-16T10:17:12.083' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3437, 1252, NULL, 1, N'4', 217, CAST(N'2023-03-15T10:03:46.160' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3438, 1252, NULL, 5, N'1,2,3,4,5', 217, CAST(N'2023-03-15T10:03:46.177' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3439, 1252, NULL, 6, N'1,2,3,4,5', 217, CAST(N'2023-03-15T10:03:46.183' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3440, 1252, NULL, 7, N'1,2,3,4,5', 217, CAST(N'2023-03-15T10:03:46.190' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3441, 1252, NULL, 8, N'1,2,3,4,5', 217, CAST(N'2023-03-15T10:03:46.197' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3442, 1252, NULL, 33, N'1,2,3,4,5', 217, CAST(N'2023-03-15T10:03:46.203' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3443, 1252, NULL, 9, N'1,2,3,4,5', 217, CAST(N'2023-03-15T10:03:46.210' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3444, 1252, NULL, 2, N'4', 217, CAST(N'2023-03-15T10:03:46.217' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3445, 1252, NULL, 10, N'1,2,3,4,5', 217, CAST(N'2023-03-15T10:03:46.223' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3446, 1252, NULL, 11, N'1,2,3,4,5', 217, CAST(N'2023-03-15T10:03:46.227' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3447, 1252, NULL, 12, N'1,2,3,4,5', 217, CAST(N'2023-03-15T10:03:46.233' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3448, 1252, NULL, 13, N'1,2,3,4,5', 217, CAST(N'2023-03-15T10:03:46.240' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3449, 1252, NULL, 14, N'1,2,3,4,5', 217, CAST(N'2023-03-15T10:03:46.247' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3450, 1252, NULL, 34, N'1,2,3,4,5', 217, CAST(N'2023-03-15T10:03:46.250' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3451, 1252, NULL, 4, N'4', 217, CAST(N'2023-03-15T10:03:46.260' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3452, 1252, NULL, 27, N'1,2,3,4,5', 217, CAST(N'2023-03-15T10:03:46.263' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3453, 1252, NULL, 28, N'4', 217, CAST(N'2023-03-15T10:03:46.267' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3454, 1251, NULL, 1, N'4', 217, CAST(N'2023-03-15T10:04:19.150' AS DateTime), 217, CAST(N'2023-03-15T12:56:27.823' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3455, 1251, NULL, 5, N'1,2,3,4,5', 217, CAST(N'2023-03-15T10:04:19.160' AS DateTime), 217, CAST(N'2023-03-15T12:56:28.073' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3456, 1251, NULL, 6, N'1,2,3,4,5', 217, CAST(N'2023-03-15T10:04:19.167' AS DateTime), 217, CAST(N'2023-03-15T12:56:28.130' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3457, 1251, NULL, 7, N'1,2,3,4,5', 217, CAST(N'2023-03-15T10:04:19.177' AS DateTime), 217, CAST(N'2023-03-15T12:56:28.140' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3458, 1251, NULL, 8, N'1,2,3,4,5', 217, CAST(N'2023-03-15T10:04:19.180' AS DateTime), 217, CAST(N'2023-03-15T12:56:28.287' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3459, 1251, NULL, 33, N'1,2,3,4,5', 217, CAST(N'2023-03-15T10:04:19.190' AS DateTime), 217, CAST(N'2023-03-15T12:56:28.407' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3460, 1251, NULL, 9, N'1,2,3,4,5', 217, CAST(N'2023-03-15T10:04:19.193' AS DateTime), 217, CAST(N'2023-03-15T12:56:28.433' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3461, 1251, NULL, 2, N'4', 217, CAST(N'2023-03-15T10:04:19.200' AS DateTime), 217, CAST(N'2023-03-15T12:56:28.443' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3462, 1251, NULL, 10, N'1,2,3,4,5', 217, CAST(N'2023-03-15T10:04:19.207' AS DateTime), 217, CAST(N'2023-03-15T12:56:28.490' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3463, 1251, NULL, 11, N'1,2,3,4,5', 217, CAST(N'2023-03-15T10:04:19.210' AS DateTime), 217, CAST(N'2023-03-15T12:56:28.607' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3464, 1251, NULL, 12, N'1,2,3,4,5', 217, CAST(N'2023-03-15T10:04:19.220' AS DateTime), 217, CAST(N'2023-03-15T12:56:28.753' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3465, 1251, NULL, 13, N'1,2,3,4,5', 217, CAST(N'2023-03-15T10:04:19.227' AS DateTime), 217, CAST(N'2023-03-15T12:56:28.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3466, 1251, NULL, 14, N'1,2,3,4,5', 217, CAST(N'2023-03-15T10:04:19.233' AS DateTime), 217, CAST(N'2023-03-15T12:56:29.227' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3467, 1251, NULL, 34, N'1,2,3,4,5', 217, CAST(N'2023-03-15T10:04:19.240' AS DateTime), 217, CAST(N'2023-03-15T12:56:29.240' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3468, 1251, NULL, 4, N'4', 217, CAST(N'2023-03-15T10:04:19.243' AS DateTime), 217, CAST(N'2023-03-15T12:56:29.367' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3469, 1251, NULL, 27, N'1,2,3,4,5', 217, CAST(N'2023-03-15T10:04:19.250' AS DateTime), 217, CAST(N'2023-03-15T12:56:29.427' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3470, 1251, NULL, 28, N'4', 217, CAST(N'2023-03-15T10:04:19.253' AS DateTime), 217, CAST(N'2023-03-15T12:56:29.437' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3471, 1253, NULL, 2, N'4', 217, CAST(N'2023-03-15T11:48:54.603' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3472, 1253, NULL, 10, N'1,2,3,4,5', 217, CAST(N'2023-03-15T11:48:54.633' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3473, 1253, NULL, 34, N'1,2,3,4,5', 217, CAST(N'2023-03-15T11:48:54.640' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3474, 1253, NULL, 28, N'4', 217, CAST(N'2023-03-15T11:48:54.647' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3475, 1254, NULL, 2, N'4', 217, CAST(N'2023-03-15T11:49:16.230' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3476, 1254, NULL, 10, N'1,2,3,4,5', 217, CAST(N'2023-03-15T11:49:16.240' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3477, 1254, NULL, 34, N'1,2,3,4,5', 217, CAST(N'2023-03-15T11:49:16.247' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3478, 1254, NULL, 28, N'4', 217, CAST(N'2023-03-15T11:49:16.253' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3479, 1256, NULL, 2, N'4', 1252, CAST(N'2023-03-15T12:11:34.543' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3480, 1256, NULL, 10, N'1,2,3,4,5', 1252, CAST(N'2023-03-15T12:11:34.557' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3481, 1256, NULL, 34, N'1,2,3,4,5', 1252, CAST(N'2023-03-15T12:11:34.567' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3482, 1256, NULL, 28, N'4', 1252, CAST(N'2023-03-15T12:11:34.570' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3483, 1257, NULL, 2, N'4', 1251, CAST(N'2023-03-15T12:34:01.793' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3484, 1257, NULL, 10, N'1,2,3,4,5', 1251, CAST(N'2023-03-15T12:34:01.827' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3485, 1257, NULL, 34, N'1,2,3,4,5', 1251, CAST(N'2023-03-15T12:34:01.853' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3486, 1257, NULL, 28, N'4', 1251, CAST(N'2023-03-15T12:34:01.877' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3487, 1251, NULL, 3, N'4', 217, CAST(N'2023-03-15T12:56:29.247' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3488, 1251, NULL, 41, N'1,2,3,4,5', 217, CAST(N'2023-03-15T12:56:29.260' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3489, 1258, NULL, 1, N'4', 217, CAST(N'2023-03-16T14:02:33.273' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3490, 1258, NULL, 5, N'1,2,3,4,5', 217, CAST(N'2023-03-16T14:02:33.760' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3491, 1258, NULL, 6, N'1,2,3,4,5', 217, CAST(N'2023-03-16T14:02:33.773' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3492, 1258, NULL, 7, N'1,2,3,4,5', 217, CAST(N'2023-03-16T14:02:33.790' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3493, 1258, NULL, 8, N'1,2,3,4,5', 217, CAST(N'2023-03-16T14:02:33.790' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3494, 1258, NULL, 33, N'1,2,3,4,5', 217, CAST(N'2023-03-16T14:02:33.797' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3495, 1258, NULL, 9, N'1,2,3,4,5', 217, CAST(N'2023-03-16T14:02:33.797' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3496, 1258, NULL, 2, N'4', 217, CAST(N'2023-03-16T14:02:33.797' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3497, 1258, NULL, 10, N'1,2,3,4,5', 217, CAST(N'2023-03-16T14:02:33.797' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3498, 1258, NULL, 11, N'1,2,3,4,5', 217, CAST(N'2023-03-16T14:02:33.813' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3499, 1258, NULL, 12, N'1,2,3,4,5', 217, CAST(N'2023-03-16T14:02:33.813' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3500, 1258, NULL, 13, N'1,2,3,4,5', 217, CAST(N'2023-03-16T14:02:33.813' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3501, 1258, NULL, 14, N'1,2,3,4,5', 217, CAST(N'2023-03-16T14:02:33.827' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3502, 1258, NULL, 34, N'1,2,3,4,5', 217, CAST(N'2023-03-16T14:02:33.827' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3503, 1258, NULL, 3, N'4', 217, CAST(N'2023-03-16T14:02:33.827' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3504, 1258, NULL, 15, N'1,2,3,4,5', 217, CAST(N'2023-03-16T14:02:33.827' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3505, 1258, NULL, 16, N'1,2,3,4,5', 217, CAST(N'2023-03-16T14:02:33.843' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3506, 1258, NULL, 17, N'1,2,3,4,5', 217, CAST(N'2023-03-16T14:02:33.843' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3507, 1258, NULL, 18, N'1,2,3,4,5', 217, CAST(N'2023-03-16T14:02:33.843' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3508, 1258, NULL, 19, N'1,2,3,4,5', 217, CAST(N'2023-03-16T14:02:33.860' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3509, 1258, NULL, 20, N'1,2,3,4,5', 217, CAST(N'2023-03-16T14:02:33.860' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3510, 1258, NULL, 21, N'1,2,3,4,5', 217, CAST(N'2023-03-16T14:02:33.860' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3511, 1258, NULL, 22, N'1,2,3,4,5', 217, CAST(N'2023-03-16T14:02:33.860' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3512, 1258, NULL, 35, N'1,2,3,4,5', 217, CAST(N'2023-03-16T14:02:33.877' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3513, 1258, NULL, 36, N'1,2,3,4,5', 217, CAST(N'2023-03-16T14:02:33.890' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3514, 1258, NULL, 37, N'1,2,3,4,5', 217, CAST(N'2023-03-16T14:02:33.897' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3515, 1258, NULL, 38, N'1,2,3,4,5', 217, CAST(N'2023-03-16T14:02:33.897' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3516, 1258, NULL, 41, N'1,2,3,4,5', 217, CAST(N'2023-03-16T14:02:33.913' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3517, 1258, NULL, 42, N'1,2,3,4,5', 217, CAST(N'2023-03-16T14:02:33.913' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3518, 1258, NULL, 4, N'4', 217, CAST(N'2023-03-16T14:02:33.930' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3519, 1258, NULL, 27, N'1,2,3,4,5', 217, CAST(N'2023-03-16T14:02:33.930' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3520, 1258, NULL, 28, N'4', 217, CAST(N'2023-03-16T14:02:33.930' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3521, 1262, NULL, 2, N'4', 1258, CAST(N'2023-03-16T14:17:34.473' AS DateTime), 1258, CAST(N'2023-03-16T14:18:11.373' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3522, 1262, NULL, 10, N'1,2,3,4,5', 1258, CAST(N'2023-03-16T14:17:34.490' AS DateTime), 1258, CAST(N'2023-03-16T14:18:11.397' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3523, 1262, NULL, 28, N'4', 1258, CAST(N'2023-03-16T14:17:34.500' AS DateTime), 1258, CAST(N'2023-03-16T14:18:11.433' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3524, 1262, NULL, 34, N'1,2,3,4,5', 1258, CAST(N'2023-03-16T14:18:11.403' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3525, 1263, NULL, 1, N'4', 217, CAST(N'2023-03-16T15:05:25.333' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3526, 1263, NULL, 5, N'1,2,3,4,5', 217, CAST(N'2023-03-16T15:05:25.333' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3527, 1263, NULL, 6, N'1,2,3,4,5', 217, CAST(N'2023-03-16T15:05:25.347' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3528, 1263, NULL, 7, N'1,2,3,4,5', 217, CAST(N'2023-03-16T15:05:25.347' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3529, 1263, NULL, 8, N'1,2,3,4,5', 217, CAST(N'2023-03-16T15:05:25.347' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3530, 1263, NULL, 33, N'1,2,3,4,5', 217, CAST(N'2023-03-16T15:05:25.347' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3531, 1263, NULL, 9, N'1,2,3,4,5', 217, CAST(N'2023-03-16T15:05:25.363' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3532, 1263, NULL, 2, N'4', 217, CAST(N'2023-03-16T15:05:25.363' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3533, 1263, NULL, 10, N'1,2,3,4,5', 217, CAST(N'2023-03-16T15:05:25.363' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3534, 1263, NULL, 11, N'1,2,3,4,5', 217, CAST(N'2023-03-16T15:05:25.380' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3535, 1263, NULL, 12, N'1,2,3,4,5', 217, CAST(N'2023-03-16T15:05:25.380' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3536, 1263, NULL, 13, N'1,2,3,4,5', 217, CAST(N'2023-03-16T15:05:25.380' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3537, 1263, NULL, 14, N'1,2,3,4,5', 217, CAST(N'2023-03-16T15:05:25.393' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3538, 1263, NULL, 34, N'1,2,3,4,5', 217, CAST(N'2023-03-16T15:05:25.393' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3539, 1263, NULL, 3, N'4', 217, CAST(N'2023-03-16T15:05:25.393' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3540, 1263, NULL, 15, N'1,2,3,4,5', 217, CAST(N'2023-03-16T15:05:25.393' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3541, 1263, NULL, 16, N'1,2,3,4,5', 217, CAST(N'2023-03-16T15:05:25.410' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3542, 1263, NULL, 17, N'1,2,3,4,5', 217, CAST(N'2023-03-16T15:05:25.417' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3543, 1263, NULL, 18, N'1,2,3,4,5', 217, CAST(N'2023-03-16T15:05:25.417' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3544, 1263, NULL, 19, N'1,2,3,4,5', 217, CAST(N'2023-03-16T15:05:25.417' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3545, 1263, NULL, 20, N'1,2,3,4,5', 217, CAST(N'2023-03-16T15:05:25.433' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3546, 1263, NULL, 21, N'1,2,3,4,5', 217, CAST(N'2023-03-16T15:05:25.433' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3547, 1263, NULL, 22, N'1,2,3,4,5', 217, CAST(N'2023-03-16T15:05:25.433' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3548, 1263, NULL, 35, N'1,2,3,4,5', 217, CAST(N'2023-03-16T15:05:25.447' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3549, 1263, NULL, 36, N'1,2,3,4,5', 217, CAST(N'2023-03-16T15:05:25.447' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3550, 1263, NULL, 37, N'1,2,3,4,5', 217, CAST(N'2023-03-16T15:05:25.447' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3551, 1263, NULL, 38, N'1,2,3,4,5', 217, CAST(N'2023-03-16T15:05:25.447' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3552, 1263, NULL, 41, N'1,2,3,4,5', 217, CAST(N'2023-03-16T15:05:25.463' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3553, 1263, NULL, 42, N'1,2,3,4,5', 217, CAST(N'2023-03-16T15:05:25.463' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3554, 1263, NULL, 4, N'4', 217, CAST(N'2023-03-16T15:05:25.463' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3555, 1263, NULL, 27, N'1,2,3,4,5', 217, CAST(N'2023-03-16T15:05:25.480' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3556, 1263, NULL, 28, N'4', 217, CAST(N'2023-03-16T15:05:25.480' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3557, 1264, NULL, 2, N'4', 1263, CAST(N'2023-03-16T15:12:35.110' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3558, 1264, NULL, 10, N'1,2,3,4,5', 1263, CAST(N'2023-03-16T15:12:35.127' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3559, 1264, NULL, 34, N'1,2,3,4,5', 1263, CAST(N'2023-03-16T15:12:35.140' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3560, 1264, NULL, 28, N'4', 1263, CAST(N'2023-03-16T15:12:35.147' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3561, 1265, NULL, 2, N'4', 217, CAST(N'2023-03-16T15:21:38.360' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3562, 1265, NULL, 10, N'1,2,3,4,5', 217, CAST(N'2023-03-16T15:21:38.367' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3563, 1265, NULL, 34, N'1,2,3,4,5', 217, CAST(N'2023-03-16T15:21:38.380' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3564, 1265, NULL, 28, N'4', 217, CAST(N'2023-03-16T15:21:38.380' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3565, 1266, NULL, 1, N'4', 217, CAST(N'2023-03-16T17:02:35.283' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3566, 1266, NULL, 5, N'1,2,3,4,5', 217, CAST(N'2023-03-16T17:02:35.283' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3567, 1266, NULL, 6, N'1,2,3,4,5', 217, CAST(N'2023-03-16T17:02:35.297' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3568, 1266, NULL, 7, N'1,2,3,4,5', 217, CAST(N'2023-03-16T17:02:35.297' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3569, 1266, NULL, 8, N'1,2,3,4,5', 217, CAST(N'2023-03-16T17:02:35.297' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3570, 1266, NULL, 33, N'1,2,3,4,5', 217, CAST(N'2023-03-16T17:02:35.313' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3571, 1266, NULL, 9, N'1,2,3,4,5', 217, CAST(N'2023-03-16T17:02:35.313' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3572, 1266, NULL, 2, N'4', 217, CAST(N'2023-03-16T17:02:35.313' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3573, 1266, NULL, 10, N'1,2,3,4,5', 217, CAST(N'2023-03-16T17:02:35.330' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3574, 1266, NULL, 11, N'1,2,3,4,5', 217, CAST(N'2023-03-16T17:02:35.330' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3575, 1266, NULL, 12, N'1,2,3,4,5', 217, CAST(N'2023-03-16T17:02:35.330' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3576, 1266, NULL, 13, N'1,2,3,4,5', 217, CAST(N'2023-03-16T17:02:35.343' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3577, 1266, NULL, 14, N'1,2,3,4,5', 217, CAST(N'2023-03-16T17:02:35.343' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3578, 1266, NULL, 34, N'1,2,3,4,5', 217, CAST(N'2023-03-16T17:02:35.350' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3579, 1266, NULL, 3, N'4', 217, CAST(N'2023-03-16T17:02:35.350' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3580, 1266, NULL, 15, N'1,2,3,4,5', 217, CAST(N'2023-03-16T17:02:35.350' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3581, 1266, NULL, 16, N'1,2,3,4,5', 217, CAST(N'2023-03-16T17:02:35.367' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3582, 1266, NULL, 17, N'1,2,3,4,5', 217, CAST(N'2023-03-16T17:02:35.367' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3583, 1266, NULL, 18, N'1,2,3,4,5', 217, CAST(N'2023-03-16T17:02:35.383' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3584, 1266, NULL, 19, N'1,2,3,4,5', 217, CAST(N'2023-03-16T17:02:35.383' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3585, 1266, NULL, 20, N'1,2,3,4,5', 217, CAST(N'2023-03-16T17:02:35.383' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3586, 1266, NULL, 21, N'1,2,3,4,5', 217, CAST(N'2023-03-16T17:02:35.397' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3587, 1266, NULL, 22, N'1,2,3,4,5', 217, CAST(N'2023-03-16T17:02:35.397' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3588, 1266, NULL, 35, N'1,2,3,4,5', 217, CAST(N'2023-03-16T17:02:35.397' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3589, 1266, NULL, 36, N'1,2,3,4,5', 217, CAST(N'2023-03-16T17:02:35.413' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3590, 1266, NULL, 37, N'1,2,3,4,5', 217, CAST(N'2023-03-16T17:02:35.413' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3591, 1266, NULL, 38, N'1,2,3,4,5', 217, CAST(N'2023-03-16T17:02:35.413' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3592, 1266, NULL, 41, N'1,2,3,4,5', 217, CAST(N'2023-03-16T17:02:35.430' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3593, 1266, NULL, 42, N'1,2,3,4,5', 217, CAST(N'2023-03-16T17:02:35.430' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3594, 1266, NULL, 4, N'4', 217, CAST(N'2023-03-16T17:02:35.430' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3595, 1266, NULL, 27, N'1,2,3,4,5', 217, CAST(N'2023-03-16T17:02:35.443' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3596, 1266, NULL, 28, N'4', 217, CAST(N'2023-03-16T17:02:35.450' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3597, 1271, NULL, 1, N'4', 217, CAST(N'2023-03-17T08:33:33.503' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3598, 1271, NULL, 5, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:33.520' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3599, 1271, NULL, 6, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:33.520' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3600, 1271, NULL, 7, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:33.537' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3601, 1271, NULL, 8, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:33.537' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3602, 1271, NULL, 33, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:33.537' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3603, 1271, NULL, 9, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:33.553' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3604, 1271, NULL, 2, N'4', 217, CAST(N'2023-03-17T08:33:33.553' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3605, 1271, NULL, 10, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:33.553' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3606, 1271, NULL, 11, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:33.570' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3607, 1271, NULL, 12, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:33.570' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3608, 1271, NULL, 13, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:33.570' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3609, 1271, NULL, 14, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:33.587' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3610, 1271, NULL, 34, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:33.587' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3611, 1271, NULL, 3, N'4', 217, CAST(N'2023-03-17T08:33:33.587' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3612, 1271, NULL, 15, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:33.600' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3613, 1271, NULL, 16, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:33.603' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3614, 1271, NULL, 17, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:33.603' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3615, 1271, NULL, 18, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:33.620' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3616, 1271, NULL, 19, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:33.620' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3617, 1271, NULL, 20, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:33.620' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3618, 1271, NULL, 21, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:33.637' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3619, 1271, NULL, 22, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:33.637' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3620, 1271, NULL, 35, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:33.637' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3621, 1271, NULL, 36, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:33.653' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3622, 1271, NULL, 37, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:33.653' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3623, 1271, NULL, 38, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:33.653' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3624, 1271, NULL, 41, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:33.667' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3625, 1271, NULL, 42, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:33.670' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3626, 1271, NULL, 4, N'4', 217, CAST(N'2023-03-17T08:33:33.670' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3627, 1271, NULL, 27, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:33.687' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3628, 1271, NULL, 28, N'4', 217, CAST(N'2023-03-17T08:33:33.687' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3629, 1272, NULL, 1, N'4', 217, CAST(N'2023-03-17T08:33:50.870' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.600' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3630, 1272, NULL, 5, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:50.887' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.617' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3631, 1272, NULL, 6, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:50.887' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.633' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3632, 1272, NULL, 7, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:50.903' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.633' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3633, 1272, NULL, 8, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:50.917' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.633' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3634, 1272, NULL, 33, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:50.920' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.647' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3635, 1272, NULL, 9, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:50.937' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.650' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3636, 1272, NULL, 2, N'4', 217, CAST(N'2023-03-17T08:33:50.940' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.650' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3637, 1272, NULL, 10, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:50.953' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.650' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3638, 1272, NULL, 11, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:50.953' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3639, 1272, NULL, 12, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:50.970' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3640, 1272, NULL, 13, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:50.970' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3641, 1272, NULL, 14, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:50.987' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.683' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3642, 1272, NULL, 34, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:50.987' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.690' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3643, 1272, NULL, 3, N'4', 217, CAST(N'2023-03-17T08:33:51.003' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.690' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3644, 1272, NULL, 15, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:51.003' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.700' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3645, 1272, NULL, 16, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:51.003' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.700' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3646, 1272, NULL, 17, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:51.020' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.700' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3647, 1272, NULL, 18, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:51.020' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3648, 1272, NULL, 19, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:51.037' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3649, 1272, NULL, 20, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:51.037' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3650, 1272, NULL, 21, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:51.037' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.733' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3651, 1272, NULL, 22, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:51.053' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.733' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3652, 1272, NULL, 35, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:51.053' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.733' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3653, 1272, NULL, 36, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:51.070' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.750' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3654, 1272, NULL, 37, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:51.070' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.750' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3655, 1272, NULL, 38, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:51.070' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.750' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3656, 1272, NULL, 41, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:51.087' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.750' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3657, 1272, NULL, 42, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:51.087' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.767' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3658, 1272, NULL, 4, N'4', 217, CAST(N'2023-03-17T08:33:51.103' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.767' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3659, 1272, NULL, 27, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:33:51.103' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.767' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3660, 1272, NULL, 28, N'4', 217, CAST(N'2023-03-17T08:33:51.120' AS DateTime), 217, CAST(N'2023-03-17T08:34:37.767' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3661, 1273, NULL, 1, N'4', 217, CAST(N'2023-03-17T08:34:05.440' AS DateTime), 217, CAST(N'2023-03-22T12:26:29.927' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3662, 1273, NULL, 5, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:34:05.453' AS DateTime), 217, CAST(N'2023-03-22T12:26:29.943' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3663, 1273, NULL, 6, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:34:05.453' AS DateTime), 217, CAST(N'2023-03-22T12:26:29.950' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3664, 1273, NULL, 7, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:34:05.453' AS DateTime), 217, CAST(N'2023-03-22T12:26:29.957' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3665, 1273, NULL, 8, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:34:05.470' AS DateTime), 217, CAST(N'2023-03-22T12:26:29.960' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3666, 1273, NULL, 33, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:34:05.470' AS DateTime), 217, CAST(N'2023-03-22T12:26:29.967' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3667, 1273, NULL, 9, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:34:05.470' AS DateTime), 217, CAST(N'2023-03-22T12:26:29.973' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3668, 1273, NULL, 2, N'4', 217, CAST(N'2023-03-17T08:34:05.487' AS DateTime), 217, CAST(N'2023-03-22T12:26:29.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3669, 1273, NULL, 10, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:34:05.487' AS DateTime), 217, CAST(N'2023-03-22T12:26:29.983' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3670, 1273, NULL, 11, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:34:05.487' AS DateTime), 217, CAST(N'2023-03-22T12:26:29.990' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3671, 1273, NULL, 12, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:34:05.503' AS DateTime), 217, CAST(N'2023-03-22T12:26:29.997' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3672, 1273, NULL, 13, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:34:05.503' AS DateTime), 217, CAST(N'2023-03-22T12:26:30.003' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3673, 1273, NULL, 14, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:34:05.503' AS DateTime), 217, CAST(N'2023-03-22T12:26:30.010' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3674, 1273, NULL, 34, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:34:05.520' AS DateTime), 217, CAST(N'2023-03-22T12:26:30.017' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3675, 1273, NULL, 3, N'4', 217, CAST(N'2023-03-17T08:34:05.520' AS DateTime), 217, CAST(N'2023-03-22T12:26:30.023' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3676, 1273, NULL, 15, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:34:05.520' AS DateTime), 217, CAST(N'2023-03-22T12:26:30.030' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3677, 1273, NULL, 16, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:34:05.537' AS DateTime), 217, CAST(N'2023-03-22T12:26:30.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3678, 1273, NULL, 17, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:34:05.540' AS DateTime), 217, CAST(N'2023-03-22T12:26:30.043' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3679, 1273, NULL, 18, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:34:05.553' AS DateTime), 217, CAST(N'2023-03-22T12:26:30.050' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3680, 1273, NULL, 19, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:34:05.570' AS DateTime), 217, CAST(N'2023-03-22T12:26:30.057' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3681, 1273, NULL, 20, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:34:05.570' AS DateTime), 217, CAST(N'2023-03-22T12:26:30.067' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3682, 1273, NULL, 21, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:34:05.570' AS DateTime), 217, CAST(N'2023-03-22T12:26:30.077' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3683, 1273, NULL, 22, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:34:05.587' AS DateTime), 217, CAST(N'2023-03-22T12:26:30.083' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3684, 1273, NULL, 35, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:34:05.587' AS DateTime), 217, CAST(N'2023-03-22T12:26:30.093' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3685, 1273, NULL, 36, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:34:05.587' AS DateTime), 217, CAST(N'2023-03-22T12:26:30.100' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3686, 1273, NULL, 37, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:34:05.603' AS DateTime), 217, CAST(N'2023-03-22T12:26:30.110' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3687, 1273, NULL, 38, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:34:05.603' AS DateTime), 217, CAST(N'2023-03-22T12:26:30.117' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3688, 1273, NULL, 41, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:34:05.603' AS DateTime), 217, CAST(N'2023-03-22T12:26:30.127' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3689, 1273, NULL, 42, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:34:05.620' AS DateTime), 217, CAST(N'2023-03-22T12:26:30.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3690, 1273, NULL, 4, N'4', 217, CAST(N'2023-03-17T08:34:05.620' AS DateTime), 217, CAST(N'2023-03-22T12:26:30.147' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3691, 1273, NULL, 23, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:34:05.620' AS DateTime), 217, CAST(N'2023-03-22T12:26:30.157' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3692, 1273, NULL, 27, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:34:05.637' AS DateTime), 217, CAST(N'2023-03-22T12:26:30.160' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3693, 1273, NULL, 28, N'4', 217, CAST(N'2023-03-17T08:34:05.640' AS DateTime), 217, CAST(N'2023-03-22T12:26:30.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3694, 1276, NULL, 1, N'4', 217, CAST(N'2023-03-17T08:51:58.537' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3695, 1276, NULL, 5, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:51:58.550' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3696, 1276, NULL, 6, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:51:58.550' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3697, 1276, NULL, 7, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:51:58.550' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3698, 1276, NULL, 8, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:51:58.550' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3699, 1276, NULL, 33, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:51:58.567' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3700, 1276, NULL, 9, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:51:58.567' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3701, 1276, NULL, 2, N'4', 217, CAST(N'2023-03-17T08:51:58.567' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3702, 1276, NULL, 10, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:51:58.583' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3703, 1276, NULL, 11, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:51:58.590' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3704, 1276, NULL, 12, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:51:58.590' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3705, 1276, NULL, 13, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:51:58.590' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3706, 1276, NULL, 14, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:51:58.603' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3707, 1276, NULL, 34, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:51:58.603' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3708, 1276, NULL, 3, N'4', 217, CAST(N'2023-03-17T08:51:58.603' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3709, 1276, NULL, 15, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:51:58.603' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3710, 1276, NULL, 16, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:51:58.620' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3711, 1276, NULL, 17, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:51:58.620' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3712, 1276, NULL, 18, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:51:58.637' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3713, 1276, NULL, 19, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:51:58.637' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3714, 1276, NULL, 20, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:51:58.637' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3715, 1276, NULL, 21, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:51:58.637' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3716, 1276, NULL, 22, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:51:58.650' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3717, 1276, NULL, 35, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:51:58.650' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3718, 1276, NULL, 36, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:51:58.650' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3719, 1276, NULL, 37, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:51:58.667' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3720, 1276, NULL, 38, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:51:58.667' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3721, 1276, NULL, 41, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:51:58.667' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3722, 1276, NULL, 42, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:51:58.683' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3723, 1276, NULL, 4, N'4', 217, CAST(N'2023-03-17T08:51:58.690' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3724, 1276, NULL, 23, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:51:58.690' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3725, 1276, NULL, 27, N'1,2,3,4,5', 217, CAST(N'2023-03-17T08:51:58.690' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3726, 1276, NULL, 28, N'4', 217, CAST(N'2023-03-17T08:51:58.703' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3727, 1277, NULL, 2, N'4', 217, CAST(N'2023-03-17T12:52:21.497' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3728, 1277, NULL, 10, N'1,2,3,4,5', 217, CAST(N'2023-03-17T12:52:21.513' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3729, 1277, NULL, 34, N'1,2,3,4,5', 217, CAST(N'2023-03-17T12:52:21.537' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3730, 1277, NULL, 28, N'4', 217, CAST(N'2023-03-17T12:52:21.540' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3731, 1279, NULL, 2, N'4', 1273, CAST(N'2023-03-22T12:42:45.530' AS DateTime), 1273, CAST(N'2023-03-22T12:44:02.930' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3732, 1279, NULL, 10, N'1,2,3,4,5', 1273, CAST(N'2023-03-22T12:42:45.877' AS DateTime), 1273, CAST(N'2023-03-22T12:44:02.943' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3733, 1279, NULL, 34, N'1,2,3,4,5', 1273, CAST(N'2023-03-22T12:42:46.377' AS DateTime), 1273, CAST(N'2023-03-22T12:44:02.953' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3734, 1279, NULL, 28, N'4', 1273, CAST(N'2023-03-22T12:42:46.770' AS DateTime), 1273, CAST(N'2023-03-22T12:44:02.963' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3735, 1281, NULL, 1, N'4', 1272, CAST(N'2023-03-24T09:05:37.117' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.670' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3736, 1281, NULL, 5, N'1,2,3,4,5', 1272, CAST(N'2023-03-24T09:05:37.753' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.673' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3737, 1281, NULL, 6, N'1,2,3,4,5', 1272, CAST(N'2023-03-24T09:05:37.770' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.677' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3738, 1281, NULL, 7, N'1,2,3,4,5', 1272, CAST(N'2023-03-24T09:05:37.777' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3739, 1281, NULL, 8, N'1,2,3,4,5', 1272, CAST(N'2023-03-24T09:05:37.783' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.683' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3740, 1281, NULL, 33, N'1,2,3,4,5', 1272, CAST(N'2023-03-24T09:05:37.790' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.687' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3741, 1281, NULL, 9, N'1,2,3,4,5', 1272, CAST(N'2023-03-24T09:05:37.800' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.687' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3742, 1281, NULL, 2, N'4', 1272, CAST(N'2023-03-24T09:05:37.810' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.690' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3743, 1281, NULL, 10, N'1,2,3,4,5', 1272, CAST(N'2023-03-24T09:05:37.827' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.693' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3744, 1281, NULL, 11, N'1,2,3,4,5', 1272, CAST(N'2023-03-24T09:05:37.837' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.697' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3745, 1281, NULL, 12, N'1,2,3,4,5', 1272, CAST(N'2023-03-24T09:05:37.863' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.700' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3746, 1281, NULL, 13, N'1,2,3,4,5', 1272, CAST(N'2023-03-24T09:05:37.877' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.727' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3747, 1281, NULL, 14, N'1,2,3,4,5', 1272, CAST(N'2023-03-24T09:05:37.887' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.703' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3748, 1281, NULL, 34, N'1,2,3,4,5', 1272, CAST(N'2023-03-24T09:05:37.900' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.710' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3749, 1281, NULL, 3, N'4', 1272, CAST(N'2023-03-24T09:05:37.910' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.713' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3750, 1281, NULL, 15, N'1,2,3,4,5', 1272, CAST(N'2023-03-24T09:05:37.920' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3751, 1281, NULL, 16, N'1,2,3,4,5', 1272, CAST(N'2023-03-24T09:05:37.930' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3752, 1281, NULL, 17, N'1,2,3,4,5', 1272, CAST(N'2023-03-24T09:05:37.943' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.720' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3753, 1281, NULL, 18, N'1,2,3,4,5', 1272, CAST(N'2023-03-24T09:05:37.953' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.723' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3754, 1281, NULL, 19, N'1,2,3,4,5', 1272, CAST(N'2023-03-24T09:05:37.963' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.727' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3755, 1281, NULL, 20, N'1,2,3,4,5', 1272, CAST(N'2023-03-24T09:05:37.970' AS DateTime), 1272, CAST(N'2023-03-24T09:05:50.237' AS DateTime), 1282, CAST(N'2023-06-30T15:20:50.410' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3756, 1281, NULL, 21, N'1,2,3,4,5', 1272, CAST(N'2023-03-24T09:05:37.983' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.733' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3757, 1281, NULL, 22, N'1,2,3,4,5', 1272, CAST(N'2023-03-24T09:05:37.990' AS DateTime), 1272, CAST(N'2023-03-24T09:05:50.257' AS DateTime), 1282, CAST(N'2023-06-30T15:20:50.410' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3758, 1281, NULL, 35, N'1,2,3,4,5', 1272, CAST(N'2023-03-24T09:05:38.000' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.737' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3759, 1281, NULL, 36, N'1,2,3,4,5', 1272, CAST(N'2023-03-24T09:05:38.007' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.740' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3760, 1281, NULL, 37, N'1,2,3,4,5', 1272, CAST(N'2023-03-24T09:05:38.013' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.740' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3761, 1281, NULL, 38, N'1,2,3,4,5', 1272, CAST(N'2023-03-24T09:05:38.020' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.743' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3762, 1281, NULL, 41, N'1,2,3,4,5', 1272, CAST(N'2023-03-24T09:05:38.030' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.747' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3763, 1281, NULL, 42, N'1,2,3,4,5', 1272, CAST(N'2023-03-24T09:05:38.040' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.750' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3764, 1281, NULL, 4, N'4', 1272, CAST(N'2023-03-24T09:05:38.050' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.757' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3765, 1281, NULL, 23, N'1,2,3,4,5', 1272, CAST(N'2023-03-24T09:05:38.070' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.757' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3766, 1281, NULL, 27, N'1,2,3,4,5', 1272, CAST(N'2023-03-24T09:05:38.090' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.760' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3767, 1281, NULL, 28, N'4', 1272, CAST(N'2023-03-24T09:05:38.100' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.763' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3768, 1283, NULL, 1, N'4', 1281, CAST(N'2023-03-24T09:18:52.407' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3769, 1283, NULL, 5, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T09:18:52.420' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3770, 1283, NULL, 6, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T09:18:52.430' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3771, 1283, NULL, 7, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T09:18:52.443' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3772, 1283, NULL, 8, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T09:18:52.453' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3773, 1283, NULL, 33, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T09:18:52.467' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3774, 1283, NULL, 9, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T09:18:52.480' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3775, 1283, NULL, 2, N'4', 1281, CAST(N'2023-03-24T09:18:52.490' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3776, 1283, NULL, 10, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T09:18:52.497' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3777, 1283, NULL, 11, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T09:18:52.510' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3778, 1283, NULL, 12, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T09:18:52.527' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3779, 1283, NULL, 13, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T09:18:52.540' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3780, 1283, NULL, 14, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T09:18:52.553' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3781, 1283, NULL, 34, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T09:18:52.563' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3782, 1283, NULL, 3, N'4', 1281, CAST(N'2023-03-24T09:18:52.570' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3783, 1283, NULL, 15, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T09:18:52.580' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3784, 1283, NULL, 16, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T09:18:52.587' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3785, 1283, NULL, 17, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T09:18:52.597' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3786, 1283, NULL, 18, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T09:18:52.603' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3787, 1283, NULL, 19, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T09:18:52.613' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3788, 1283, NULL, 20, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T09:18:52.620' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3789, 1283, NULL, 21, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T09:18:52.627' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3790, 1283, NULL, 22, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T09:18:52.630' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3791, 1283, NULL, 35, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T09:18:52.637' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3792, 1283, NULL, 36, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T09:18:52.643' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3793, 1283, NULL, 37, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T09:18:52.650' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3794, 1283, NULL, 38, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T09:18:52.657' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3795, 1283, NULL, 41, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T09:18:52.660' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3796, 1283, NULL, 42, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T09:18:52.667' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3797, 1283, NULL, 4, N'4', 1281, CAST(N'2023-03-24T09:18:52.677' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3798, 1283, NULL, 23, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T09:18:52.680' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3799, 1283, NULL, 27, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T09:18:52.690' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3800, 1283, NULL, 28, N'4', 1281, CAST(N'2023-03-24T09:18:52.700' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3801, 1284, NULL, 1, N'4', 1281, CAST(N'2023-03-24T13:06:30.020' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.013' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3802, 1284, NULL, 5, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:30.037' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.020' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3803, 1284, NULL, 6, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:30.050' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.020' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3804, 1284, NULL, 7, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:30.057' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.023' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3805, 1284, NULL, 8, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:30.063' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.027' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3806, 1284, NULL, 33, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:30.070' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.030' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3807, 1284, NULL, 9, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:30.077' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.033' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3808, 1284, NULL, 2, N'4', 1281, CAST(N'2023-03-24T13:06:30.080' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.033' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3809, 1284, NULL, 10, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:30.087' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3810, 1284, NULL, 11, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:30.093' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.040' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3811, 1284, NULL, 12, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:30.100' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.043' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3812, 1284, NULL, 13, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:30.103' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.080' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3813, 1284, NULL, 14, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:30.110' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.043' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3814, 1284, NULL, 34, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:30.117' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.047' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3815, 1284, NULL, 3, N'4', 1281, CAST(N'2023-03-24T13:06:30.123' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.063' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3816, 1284, NULL, 15, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:30.130' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.070' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3817, 1284, NULL, 16, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:30.133' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.070' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3818, 1284, NULL, 17, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:30.140' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.073' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3819, 1284, NULL, 18, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:30.147' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.077' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3820, 1284, NULL, 19, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:30.153' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.083' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3821, 1284, NULL, 20, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:30.160' AS DateTime), NULL, NULL, 1282, CAST(N'2023-07-14T10:54:30.543' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3822, 1284, NULL, 21, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:30.163' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.087' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3823, 1284, NULL, 22, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:30.170' AS DateTime), NULL, NULL, 1282, CAST(N'2023-07-14T10:54:30.543' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3824, 1284, NULL, 35, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:30.177' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.090' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3825, 1284, NULL, 36, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:30.187' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.093' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3826, 1284, NULL, 37, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:30.193' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.097' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3827, 1284, NULL, 38, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:30.203' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.100' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3828, 1284, NULL, 41, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:30.210' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.100' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3829, 1284, NULL, 42, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:30.217' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.113' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3830, 1284, NULL, 4, N'4', 1281, CAST(N'2023-03-24T13:06:30.223' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.120' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3831, 1284, NULL, 27, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:30.233' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.123' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3832, 1284, NULL, 28, N'4', 1281, CAST(N'2023-03-24T13:06:30.240' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.127' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3833, 1286, NULL, 1, N'4', 1281, CAST(N'2023-03-24T13:06:49.450' AS DateTime), 1286, CAST(N'2023-07-05T16:14:39.873' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3834, 1286, NULL, 5, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:49.460' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.147' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3835, 1286, NULL, 6, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:49.470' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.150' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3836, 1286, NULL, 7, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:49.480' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.153' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3837, 1286, NULL, 8, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:49.487' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.157' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3838, 1286, NULL, 33, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:49.497' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.160' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3839, 1286, NULL, 9, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:49.507' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.160' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3840, 1286, NULL, 2, N'4', 1281, CAST(N'2023-03-24T13:06:49.513' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.163' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3841, 1286, NULL, 10, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:49.520' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3842, 1286, NULL, 11, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:49.533' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.170' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3843, 1286, NULL, 12, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:49.540' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.173' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3844, 1286, NULL, 13, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:49.550' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.247' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3845, 1286, NULL, 14, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:49.557' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3846, 1286, NULL, 34, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:49.567' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.230' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3847, 1286, NULL, 3, N'4', 1281, CAST(N'2023-03-24T13:06:49.573' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.233' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3848, 1286, NULL, 15, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:49.583' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.237' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3849, 1286, NULL, 16, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:49.593' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.240' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3850, 1286, NULL, 17, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:49.603' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.243' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3851, 1286, NULL, 18, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:49.613' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.243' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3852, 1286, NULL, 19, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:49.623' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.250' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3853, 1286, NULL, 20, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:49.633' AS DateTime), 1286, CAST(N'2023-03-30T09:17:46.507' AS DateTime), 1286, CAST(N'2023-06-30T14:25:41.143' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3854, 1286, NULL, 21, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:49.647' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.257' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3855, 1286, NULL, 22, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:49.657' AS DateTime), 1286, CAST(N'2023-03-30T09:17:46.513' AS DateTime), 1286, CAST(N'2023-06-30T14:25:41.147' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3856, 1286, NULL, 35, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:49.667' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.257' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3857, 1286, NULL, 36, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:49.677' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.260' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3858, 1286, NULL, 37, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:49.683' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.293' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3859, 1286, NULL, 38, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:49.697' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.297' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3860, 1286, NULL, 41, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:49.703' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.300' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3861, 1286, NULL, 42, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:49.710' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.303' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3862, 1286, NULL, 4, N'4', 1281, CAST(N'2023-03-24T13:06:49.717' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.307' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3863, 1286, NULL, 27, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:06:49.727' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.313' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3864, 1286, NULL, 28, N'4', 1281, CAST(N'2023-03-24T13:06:49.733' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.317' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3865, 1285, NULL, 1, N'4', 1281, CAST(N'2023-03-24T13:07:11.617' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.640' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3866, 1285, NULL, 5, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:07:11.627' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.663' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3867, 1285, NULL, 6, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:07:11.633' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3868, 1285, NULL, 7, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:07:11.640' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3869, 1285, NULL, 8, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:07:11.647' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.670' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3870, 1285, NULL, 33, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:07:11.650' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.673' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3871, 1285, NULL, 9, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:07:11.657' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.677' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3872, 1285, NULL, 2, N'4', 1281, CAST(N'2023-03-24T13:07:11.663' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3873, 1285, NULL, 10, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:07:11.670' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.680' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3874, 1285, NULL, 11, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:07:11.683' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.683' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3875, 1285, NULL, 12, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:07:11.693' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.687' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3876, 1285, NULL, 13, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:07:11.700' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.707' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3877, 1285, NULL, 14, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:07:11.707' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.690' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3878, 1285, NULL, 34, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:07:11.710' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.693' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3879, 1285, NULL, 3, N'4', 1281, CAST(N'2023-03-24T13:07:11.717' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.693' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3880, 1285, NULL, 15, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:07:11.723' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.697' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3881, 1285, NULL, 16, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:07:11.730' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.700' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3882, 1285, NULL, 17, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:07:11.737' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.703' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3883, 1285, NULL, 18, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:07:11.740' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.703' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3884, 1285, NULL, 19, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:07:11.747' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.710' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3885, 1285, NULL, 20, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:07:11.750' AS DateTime), NULL, NULL, 1285, CAST(N'2023-07-12T10:47:46.487' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3886, 1285, NULL, 21, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:07:11.760' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3887, 1285, NULL, 22, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:07:11.763' AS DateTime), NULL, NULL, 1285, CAST(N'2023-07-12T10:47:46.487' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3888, 1285, NULL, 35, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:07:11.770' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.720' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3889, 1285, NULL, 36, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:07:11.777' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.723' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3890, 1285, NULL, 37, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:07:11.783' AS DateTime), 1285, CAST(N'2023-07-12T10:47:46.463' AS DateTime), 1285, CAST(N'2023-07-12T10:50:23.493' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3891, 1285, NULL, 38, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:07:11.790' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.723' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3892, 1285, NULL, 41, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:07:11.793' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.727' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3893, 1285, NULL, 42, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:07:11.800' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.733' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3894, 1285, NULL, 4, N'4', 1281, CAST(N'2023-03-24T13:07:11.807' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.740' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3895, 1285, NULL, 27, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T13:07:11.810' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.743' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3896, 1285, NULL, 28, N'4', 1281, CAST(N'2023-03-24T13:07:11.817' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.743' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3897, 1282, NULL, 1, N'4', 1281, CAST(N'2023-03-24T15:27:14.173' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.130' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3898, 1282, NULL, 5, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T15:27:14.903' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.133' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3899, 1282, NULL, 6, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T15:27:14.913' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3900, 1282, NULL, 7, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T15:27:14.920' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.140' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3901, 1282, NULL, 8, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T15:27:14.927' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.143' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3902, 1282, NULL, 33, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T15:27:14.933' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.147' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3903, 1282, NULL, 9, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T15:27:14.937' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.147' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3904, 1282, NULL, 2, N'4', 1281, CAST(N'2023-03-24T15:27:14.943' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.153' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3905, 1282, NULL, 10, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T15:27:14.950' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.157' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3906, 1282, NULL, 11, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T15:27:14.957' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.160' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3907, 1282, NULL, 12, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T15:27:14.963' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.163' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3908, 1282, NULL, 13, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T15:27:14.970' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.190' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3909, 1282, NULL, 14, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T15:27:14.977' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.163' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3910, 1282, NULL, 34, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T15:27:14.983' AS DateTime), 1282, CAST(N'2023-07-31T08:34:02.523' AS DateTime), 1282, CAST(N'2024-01-29T15:56:24.070' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3911, 1282, NULL, 3, N'4', 1281, CAST(N'2023-03-24T15:27:14.990' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.173' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3912, 1282, NULL, 15, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T15:27:14.997' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3913, 1282, NULL, 16, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T15:27:15.003' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3914, 1282, NULL, 17, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T15:27:15.013' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.180' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3915, 1282, NULL, 18, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T15:27:15.023' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.187' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3916, 1282, NULL, 19, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T15:27:15.030' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.190' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3917, 1282, NULL, 20, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T15:27:15.043' AS DateTime), NULL, NULL, 1282, CAST(N'2023-06-30T15:22:50.373' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3918, 1282, NULL, 21, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T15:27:15.050' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.197' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3919, 1282, NULL, 22, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T15:27:15.060' AS DateTime), NULL, NULL, 1282, CAST(N'2023-06-30T15:22:50.373' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3920, 1282, NULL, 35, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T15:27:15.070' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.200' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3921, 1282, NULL, 36, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T15:27:15.080' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.203' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3922, 1282, NULL, 37, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T15:27:15.093' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.217' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3923, 1282, NULL, 38, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T15:27:15.103' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3924, 1282, NULL, 41, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T15:27:15.110' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3925, 1282, NULL, 42, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T15:27:15.120' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.233' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3926, 1282, NULL, 4, N'4', 1281, CAST(N'2023-03-24T15:27:15.127' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.243' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3927, 1282, NULL, 23, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T15:27:15.137' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.243' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3928, 1282, NULL, 27, N'1,2,3,4,5', 1281, CAST(N'2023-03-24T15:27:15.143' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.247' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3929, 1282, NULL, 28, N'4', 1281, CAST(N'2023-03-24T15:27:15.153' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.250' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3930, 1286, NULL, 23, N'1,2,3,4,5', 1286, CAST(N'2023-03-27T12:48:04.103' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.310' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3931, 1286, NULL, 45, N'1,2,3,4,5', 1286, CAST(N'2023-03-30T09:17:46.497' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.253' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3932, 1294, NULL, 1, N'4', 1286, CAST(N'2023-04-04T10:01:23.260' AS DateTime), NULL, NULL, 1294, CAST(N'2023-04-11T13:02:21.327' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3933, 1294, NULL, 5, N'1,2,3,4,5', 1286, CAST(N'2023-04-04T10:01:23.290' AS DateTime), NULL, NULL, 1294, CAST(N'2023-04-11T13:02:21.330' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3934, 1294, NULL, 6, N'1,2,3,4,5', 1286, CAST(N'2023-04-04T10:01:23.310' AS DateTime), NULL, NULL, 1294, CAST(N'2023-04-11T13:02:21.330' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3935, 1294, NULL, 7, N'1,2,3,4,5', 1286, CAST(N'2023-04-04T10:01:23.320' AS DateTime), NULL, NULL, 1294, CAST(N'2023-04-11T13:02:21.333' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3936, 1294, NULL, 8, N'1,2,3,4,5', 1286, CAST(N'2023-04-04T10:01:23.327' AS DateTime), NULL, NULL, 1294, CAST(N'2023-04-11T13:02:21.333' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3937, 1294, NULL, 33, N'1,2,3,4,5', 1286, CAST(N'2023-04-04T10:01:23.330' AS DateTime), NULL, NULL, 1294, CAST(N'2023-04-11T13:02:21.333' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3938, 1294, NULL, 9, N'1,2,3,4,5', 1286, CAST(N'2023-04-04T10:01:23.340' AS DateTime), NULL, NULL, 1294, CAST(N'2023-04-11T13:02:21.333' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3939, 1294, NULL, 2, N'4', 1286, CAST(N'2023-04-04T10:01:23.750' AS DateTime), 1294, CAST(N'2023-04-11T13:02:21.050' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3940, 1294, NULL, 10, N'1,2,3,4,5', 1286, CAST(N'2023-04-04T10:01:23.773' AS DateTime), 1294, CAST(N'2023-04-11T13:02:21.313' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3941, 1294, NULL, 11, N'1,2,3,4,5', 1286, CAST(N'2023-04-04T10:01:23.780' AS DateTime), NULL, NULL, 1294, CAST(N'2023-04-11T13:02:21.337' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3942, 1294, NULL, 12, N'1,2,3,4,5', 1286, CAST(N'2023-04-04T10:01:23.787' AS DateTime), NULL, NULL, 1294, CAST(N'2023-04-11T13:02:21.337' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3943, 1294, NULL, 14, N'1,2,3,4,5', 1286, CAST(N'2023-04-04T10:01:23.797' AS DateTime), NULL, NULL, 1294, CAST(N'2023-04-11T13:02:21.337' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3944, 1294, NULL, 34, N'1,2,3,4,5', 1286, CAST(N'2023-04-04T10:01:23.807' AS DateTime), 1294, CAST(N'2023-04-11T13:02:21.317' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3945, 1294, NULL, 3, N'4', 1286, CAST(N'2023-04-04T10:01:23.817' AS DateTime), NULL, NULL, 1294, CAST(N'2023-04-11T13:02:21.340' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3946, 1294, NULL, 15, N'1,2,3,4,5', 1286, CAST(N'2023-04-04T10:01:23.827' AS DateTime), NULL, NULL, 1294, CAST(N'2023-04-11T13:02:21.340' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3947, 1294, NULL, 16, N'1,2,3,4,5', 1286, CAST(N'2023-04-04T10:01:23.840' AS DateTime), NULL, NULL, 1294, CAST(N'2023-04-11T13:02:21.343' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3948, 1294, NULL, 17, N'1,2,3,4,5', 1286, CAST(N'2023-04-04T10:01:23.893' AS DateTime), NULL, NULL, 1294, CAST(N'2023-04-11T13:02:21.343' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3949, 1294, NULL, 18, N'1,2,3,4,5', 1286, CAST(N'2023-04-04T10:01:23.913' AS DateTime), NULL, NULL, 1294, CAST(N'2023-04-11T13:02:21.347' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3950, 1294, NULL, 13, N'1,2,3,4,5', 1286, CAST(N'2023-04-04T10:01:23.927' AS DateTime), NULL, NULL, 1294, CAST(N'2023-04-11T13:02:21.347' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3951, 1294, NULL, 19, N'1,2,3,4,5', 1286, CAST(N'2023-04-04T10:01:23.937' AS DateTime), NULL, NULL, 1294, CAST(N'2023-04-11T13:02:21.347' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3952, 1294, NULL, 45, N'1,2,3,4,5', 1286, CAST(N'2023-04-04T10:01:23.950' AS DateTime), NULL, NULL, 1294, CAST(N'2023-04-11T13:02:21.350' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3953, 1294, NULL, 20, N'1,2,3,4,5', 1286, CAST(N'2023-04-04T10:01:23.960' AS DateTime), NULL, NULL, 1294, CAST(N'2023-04-11T13:02:21.350' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3954, 1294, NULL, 21, N'1,2,3,4,5', 1286, CAST(N'2023-04-04T10:01:23.977' AS DateTime), NULL, NULL, 1294, CAST(N'2023-04-11T13:02:21.350' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3955, 1294, NULL, 22, N'1,2,3,4,5', 1286, CAST(N'2023-04-04T10:01:23.987' AS DateTime), NULL, NULL, 1294, CAST(N'2023-04-11T13:02:21.353' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3956, 1294, NULL, 35, N'1,2,3,4,5', 1286, CAST(N'2023-04-04T10:01:24.000' AS DateTime), NULL, NULL, 1294, CAST(N'2023-04-11T13:02:21.353' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3957, 1294, NULL, 36, N'1,2,3,4,5', 1286, CAST(N'2023-04-04T10:01:24.010' AS DateTime), NULL, NULL, 1294, CAST(N'2023-04-11T13:02:21.353' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3958, 1294, NULL, 37, N'1,2,3,4,5', 1286, CAST(N'2023-04-04T10:01:24.020' AS DateTime), NULL, NULL, 1294, CAST(N'2023-04-11T13:02:21.353' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3959, 1294, NULL, 38, N'1,2,3,4,5', 1286, CAST(N'2023-04-04T10:01:24.030' AS DateTime), NULL, NULL, 1294, CAST(N'2023-04-11T13:02:21.353' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3960, 1294, NULL, 41, N'1,2,3,4,5', 1286, CAST(N'2023-04-04T10:01:24.040' AS DateTime), NULL, NULL, 1294, CAST(N'2023-04-11T13:02:21.357' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3961, 1294, NULL, 42, N'1,2,3,4,5', 1286, CAST(N'2023-04-04T10:01:24.050' AS DateTime), NULL, NULL, 1294, CAST(N'2023-04-11T13:02:21.357' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3962, 1294, NULL, 4, N'4', 1286, CAST(N'2023-04-04T10:01:24.060' AS DateTime), NULL, NULL, 1294, CAST(N'2023-04-11T13:02:21.357' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3963, 1294, NULL, 23, N'1,2,3,4,5', 1286, CAST(N'2023-04-04T10:01:24.070' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3964, 1294, NULL, 27, N'1,2,3,4,5', 1286, CAST(N'2023-04-04T10:01:24.080' AS DateTime), NULL, NULL, 1294, CAST(N'2023-04-11T13:02:21.360' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3965, 1294, NULL, 28, N'4', 1286, CAST(N'2023-04-04T10:01:24.090' AS DateTime), 1294, CAST(N'2023-04-11T13:02:21.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3966, 1301, NULL, 2, N'4', 1281, CAST(N'2023-04-05T08:48:56.800' AS DateTime), 1282, CAST(N'2023-07-24T12:36:54.637' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3967, 1301, NULL, 10, N'1,2,3,4,5', 1281, CAST(N'2023-04-05T08:48:56.907' AS DateTime), 1282, CAST(N'2023-07-24T12:36:54.647' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3968, 1301, NULL, 34, N'1,2,3,4,5', 1281, CAST(N'2023-04-05T08:48:56.913' AS DateTime), 1282, CAST(N'2023-07-24T12:36:54.657' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3969, 1301, NULL, 28, N'4', 1281, CAST(N'2023-04-05T08:48:56.917' AS DateTime), 1282, CAST(N'2023-07-24T12:36:54.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3970, 1306, NULL, 2, N'4', 1281, CAST(N'2023-04-05T10:27:19.473' AS DateTime), 1282, CAST(N'2023-07-12T10:05:08.217' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3971, 1306, NULL, 10, N'1,2,3,4,5', 1281, CAST(N'2023-04-05T10:27:19.487' AS DateTime), 1282, CAST(N'2023-07-12T10:05:08.220' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3972, 1306, NULL, 34, N'1,2,3,4,5', 1281, CAST(N'2023-04-05T10:27:19.490' AS DateTime), 1282, CAST(N'2023-07-12T10:05:08.230' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3973, 1306, NULL, 28, N'4', 1281, CAST(N'2023-04-05T10:27:19.497' AS DateTime), 1282, CAST(N'2023-07-12T10:05:08.233' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3974, 1311, NULL, 2, N'4', 1286, CAST(N'2023-04-13T08:43:20.020' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3975, 1311, NULL, 10, N'1,2,3,4,5', 1286, CAST(N'2023-04-13T08:43:20.030' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3976, 1311, NULL, 34, N'1,2,3,4,5', 1286, CAST(N'2023-04-13T08:43:20.033' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3977, 1311, NULL, 28, N'4', 1286, CAST(N'2023-04-13T08:43:20.037' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3978, 1286, NULL, 46, N'1,2,3,4,5', 1286, CAST(N'2023-06-30T14:25:41.127' AS DateTime), 1286, CAST(N'2023-07-05T16:14:40.303' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3979, 1281, NULL, 45, N'1,2,3,4,5', 1282, CAST(N'2023-06-30T15:20:50.313' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.730' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3980, 1281, NULL, 46, N'1,2,3,4,5', 1282, CAST(N'2023-06-30T15:20:50.393' AS DateTime), 1282, CAST(N'2023-07-04T14:14:29.753' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3981, 1282, NULL, 45, N'1,2,3,4,5', 1282, CAST(N'2023-06-30T15:22:50.320' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.193' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3982, 1282, NULL, 46, N'1,2,3,4,5', 1282, CAST(N'2023-06-30T15:22:50.347' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.237' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3983, 1314, NULL, 2, N'4', 1286, CAST(N'2023-07-03T08:30:37.333' AS DateTime), 1286, CAST(N'2023-07-03T08:34:47.367' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3984, 1314, NULL, 10, N'1,2,3,4,5', 1286, CAST(N'2023-07-03T08:30:37.343' AS DateTime), 1286, CAST(N'2023-07-03T08:34:47.370' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3985, 1314, NULL, 28, N'4', 1286, CAST(N'2023-07-03T08:30:37.347' AS DateTime), 1286, CAST(N'2023-07-03T08:34:47.377' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3986, 1314, NULL, 34, N'1,2,3,4,5', 1286, CAST(N'2023-07-03T08:34:47.373' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3987, 1289, NULL, 2, N'4', 1282, CAST(N'2023-07-03T09:47:25.827' AS DateTime), 1282, CAST(N'2023-07-06T12:14:42.503' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3988, 1289, NULL, 10, N'1,2,3,4,5', 1282, CAST(N'2023-07-03T09:47:26.127' AS DateTime), 1282, CAST(N'2023-07-06T12:14:42.797' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3989, 1289, NULL, 28, N'4', 1282, CAST(N'2023-07-03T09:47:26.133' AS DateTime), 1282, CAST(N'2023-07-06T12:14:42.857' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3990, 1315, NULL, 2, N'4', 1282, CAST(N'2023-07-03T09:51:03.003' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3991, 1315, NULL, 10, N'1,2,3,4,5', 1282, CAST(N'2023-07-03T09:51:03.007' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3992, 1315, NULL, 34, N'1,2,3,4,5', 1282, CAST(N'2023-07-03T09:51:03.010' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3993, 1315, NULL, 28, N'4', 1282, CAST(N'2023-07-03T09:51:03.010' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3994, 1316, NULL, 2, N'4', 1282, CAST(N'2023-07-03T11:00:14.103' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3995, 1316, NULL, 10, N'1,2,3,4,5', 1282, CAST(N'2023-07-03T11:00:14.107' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3996, 1316, NULL, 34, N'1,2,3,4,5', 1282, CAST(N'2023-07-03T11:00:14.110' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3997, 1316, NULL, 28, N'4', 1282, CAST(N'2023-07-03T11:00:14.117' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3998, 1295, NULL, 2, N'4', 1286, CAST(N'2023-07-03T16:20:32.340' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (3999, 1295, NULL, 10, N'1,2,3,4,5', 1286, CAST(N'2023-07-03T16:20:32.393' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4000, 1295, NULL, 28, N'4', 1286, CAST(N'2023-07-03T16:20:32.397' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4001, 1317, NULL, 2, N'4', 1282, CAST(N'2023-07-03T17:00:21.620' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4002, 1317, NULL, 10, N'1,2,3,4,5', 1282, CAST(N'2023-07-03T17:00:21.623' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4003, 1317, NULL, 34, N'1,2,3,4,5', 1282, CAST(N'2023-07-03T17:00:21.627' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4004, 1317, NULL, 28, N'4', 1282, CAST(N'2023-07-03T17:00:21.630' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4005, 1306, NULL, 47, N'1,2,3,4,5', 1282, CAST(N'2023-07-03T17:33:40.110' AS DateTime), 1282, CAST(N'2023-07-12T10:05:08.227' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4006, 1282, NULL, 47, N'1,2,3,4,5', 1282, CAST(N'2023-07-04T14:13:49.493' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4007, 1282, NULL, 48, N'1,2,3,4,5', 1282, CAST(N'2023-07-04T14:13:49.497' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.170' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4008, 1281, NULL, 47, N'1,2,3,4,5', 1282, CAST(N'2023-07-04T14:14:29.703' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4009, 1281, NULL, 48, N'1,2,3,4,5', 1282, CAST(N'2023-07-04T14:14:29.707' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4010, 1306, NULL, 48, N'1,2,3,4,5', 1282, CAST(N'2023-07-04T14:15:34.860' AS DateTime), 1282, CAST(N'2023-07-12T10:05:08.230' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4011, 1318, NULL, 2, N'4', 1282, CAST(N'2023-07-05T10:23:03.440' AS DateTime), 1318, CAST(N'2023-08-29T12:26:10.633' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4012, 1318, NULL, 10, N'1,2,3,4,5', 1282, CAST(N'2023-07-05T10:23:03.447' AS DateTime), 1318, CAST(N'2023-08-29T12:26:10.640' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4013, 1318, NULL, 34, N'1,2,3,4,5', 1282, CAST(N'2023-07-05T10:23:03.453' AS DateTime), 1318, CAST(N'2023-08-29T12:26:10.647' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4014, 1318, NULL, 28, N'4', 1282, CAST(N'2023-07-05T10:23:03.453' AS DateTime), 1318, CAST(N'2023-08-29T12:26:10.650' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4015, 1286, NULL, 47, N'1,2,3,4,5', 1286, CAST(N'2023-07-05T16:14:40.177' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4016, 1286, NULL, 48, N'1,2,3,4,5', 1286, CAST(N'2023-07-05T16:14:40.227' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4017, 1289, NULL, 47, N'1,2,3,4,5', 1282, CAST(N'2023-07-06T12:14:42.803' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4018, 1289, NULL, 48, N'1,2,3,4,5', 1282, CAST(N'2023-07-06T12:14:42.853' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4019, 1319, NULL, 1, N'4', 1282, CAST(N'2023-07-07T11:16:30.647' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.130' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4020, 1319, NULL, 5, N'1,2,3,4,5', 1282, CAST(N'2023-07-07T11:16:30.657' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4021, 1319, NULL, 6, N'1,2,3,4,5', 1282, CAST(N'2023-07-07T11:16:30.660' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.140' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4022, 1319, NULL, 7, N'1,2,3,4,5', 1282, CAST(N'2023-07-07T11:16:30.663' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.143' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4023, 1319, NULL, 8, N'1,2,3,4,5', 1282, CAST(N'2023-07-07T11:16:30.663' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.143' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4024, 1319, NULL, 33, N'1,2,3,4,5', 1282, CAST(N'2023-07-07T11:16:30.667' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.147' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4025, 1319, NULL, 9, N'1,2,3,4,5', 1282, CAST(N'2023-07-07T11:16:30.670' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.150' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4026, 1319, NULL, 2, N'4', 1282, CAST(N'2023-07-07T11:16:30.683' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.153' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4027, 1319, NULL, 10, N'1,2,3,4,5', 1282, CAST(N'2023-07-07T11:16:30.687' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.157' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4028, 1319, NULL, 11, N'1,2,3,4,5', 1282, CAST(N'2023-07-07T11:16:30.690' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.157' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4029, 1319, NULL, 12, N'1,2,3,4,5', 1282, CAST(N'2023-07-07T11:16:30.693' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.160' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4030, 1319, NULL, 14, N'1,2,3,4,5', 1282, CAST(N'2023-07-07T11:16:30.693' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.163' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4031, 1319, NULL, 47, N'1,2,3,4,5', 1282, CAST(N'2023-07-07T11:16:30.697' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4032, 1319, NULL, 48, N'1,2,3,4,5', 1282, CAST(N'2023-07-07T11:16:30.700' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.170' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4033, 1319, NULL, 34, N'1,2,3,4,5', 1282, CAST(N'2023-07-07T11:16:30.703' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.170' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4034, 1319, NULL, 3, N'4', 1282, CAST(N'2023-07-07T11:16:30.707' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.173' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4035, 1319, NULL, 15, N'1,2,3,4,5', 1282, CAST(N'2023-07-07T11:16:30.707' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4036, 1319, NULL, 16, N'1,2,3,4,5', 1282, CAST(N'2023-07-07T11:16:30.710' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.180' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4037, 1319, NULL, 17, N'1,2,3,4,5', 1282, CAST(N'2023-07-07T11:16:30.713' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.183' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4038, 1319, NULL, 18, N'1,2,3,4,5', 1282, CAST(N'2023-07-07T11:16:30.717' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.183' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4039, 1319, NULL, 13, N'1,2,3,4,5', 1282, CAST(N'2023-07-07T11:16:30.720' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.197' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4040, 1319, NULL, 19, N'1,2,3,4,5', 1282, CAST(N'2023-07-07T11:16:30.723' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.200' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4041, 1319, NULL, 45, N'1,2,3,4,5', 1282, CAST(N'2023-07-07T11:16:30.723' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.203' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4042, 1319, NULL, 21, N'1,2,3,4,5', 1282, CAST(N'2023-07-07T11:16:30.727' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4043, 1319, NULL, 35, N'1,2,3,4,5', 1282, CAST(N'2023-07-07T11:16:30.730' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.210' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4044, 1319, NULL, 36, N'1,2,3,4,5', 1282, CAST(N'2023-07-07T11:16:30.733' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.213' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4045, 1319, NULL, 37, N'1,2,3,4,5', 1282, CAST(N'2023-07-07T11:16:30.737' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.217' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4046, 1319, NULL, 38, N'1,2,3,4,5', 1282, CAST(N'2023-07-07T11:16:30.740' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.217' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4047, 1319, NULL, 41, N'1,2,3,4,5', 1282, CAST(N'2023-07-07T11:16:30.743' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.220' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4048, 1319, NULL, 42, N'1,2,3,4,5', 1282, CAST(N'2023-07-07T11:16:30.743' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.230' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4049, 1319, NULL, 46, N'1,2,3,4,5', 1282, CAST(N'2023-07-07T11:16:30.747' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.230' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4050, 1319, NULL, 4, N'4', 1282, CAST(N'2023-07-07T11:16:30.750' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.240' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4051, 1319, NULL, 23, N'1,2,3,4,5', 1282, CAST(N'2023-07-07T11:16:30.753' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.243' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4052, 1319, NULL, 27, N'1,2,3,4,5', 1282, CAST(N'2023-07-07T11:16:30.757' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.243' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4053, 1319, NULL, 28, N'4', 1282, CAST(N'2023-07-07T11:16:30.760' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.247' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4054, 1309, NULL, 2, N'4', 1286, CAST(N'2023-07-07T11:18:59.937' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4055, 1309, NULL, 10, N'1,2,3,4,5', 1286, CAST(N'2023-07-07T11:18:59.940' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4056, 1309, NULL, 48, N'1,2,3,4,5', 1286, CAST(N'2023-07-07T11:18:59.947' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4057, 1309, NULL, 28, N'4', 1286, CAST(N'2023-07-07T11:18:59.950' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4058, 1285, NULL, 47, N'1,2,3,4,5', 1285, CAST(N'2023-07-12T10:47:46.380' AS DateTime), NULL, NULL, 1285, CAST(N'2023-07-12T10:50:23.497' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4059, 1285, NULL, 48, N'1,2,3,4,5', 1285, CAST(N'2023-07-12T10:47:46.430' AS DateTime), NULL, NULL, 1285, CAST(N'2023-07-12T10:50:23.497' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4060, 1285, NULL, 45, N'1,2,3,4,5', 1285, CAST(N'2023-07-12T10:47:46.453' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.713' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4061, 1285, NULL, 46, N'1,2,3,4,5', 1285, CAST(N'2023-07-12T10:47:46.473' AS DateTime), 1285, CAST(N'2023-07-12T10:50:23.483' AS DateTime), 1285, CAST(N'2023-07-12T10:50:35.830' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4062, 1318, NULL, 47, N'1,2,3,4,5', 1282, CAST(N'2023-07-12T17:06:50.137' AS DateTime), 1318, CAST(N'2023-08-29T12:26:10.643' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4063, 1318, NULL, 48, N'1,2,3,4,5', 1282, CAST(N'2023-07-12T17:06:50.140' AS DateTime), 1318, CAST(N'2023-08-29T12:26:10.643' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4064, 1284, NULL, 49, N'1,2,3,4,5', 1282, CAST(N'2023-07-14T10:54:30.523' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.103' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4065, 1307, NULL, 2, N'4', 1319, CAST(N'2023-07-15T07:43:27.917' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4066, 1307, NULL, 10, N'1,2,3,4,5', 1319, CAST(N'2023-07-15T07:43:27.973' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4067, 1307, NULL, 34, N'1,2,3,4,5', 1319, CAST(N'2023-07-15T07:43:27.977' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4068, 1307, NULL, 28, N'4', 1319, CAST(N'2023-07-15T07:43:27.993' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4069, 1321, NULL, 2, N'4', 1319, CAST(N'2023-07-15T07:51:15.963' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4070, 1321, NULL, 10, N'1,2,3,4,5', 1319, CAST(N'2023-07-15T07:51:15.967' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4071, 1321, NULL, 34, N'1,2,3,4,5', 1319, CAST(N'2023-07-15T07:51:15.970' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4072, 1321, NULL, 28, N'4', 1319, CAST(N'2023-07-15T07:51:15.970' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4073, 1301, NULL, 47, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T10:11:16.757' AS DateTime), 1282, CAST(N'2023-07-24T12:36:54.647' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4074, 1284, NULL, 46, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T10:38:08.453' AS DateTime), 1282, CAST(N'2023-07-31T09:27:49.110' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4075, 1320, NULL, 2, N'4', 1284, CAST(N'2023-07-24T10:39:45.403' AS DateTime), 1282, CAST(N'2023-07-24T12:37:10.327' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4076, 1320, NULL, 10, N'1,2,3,4,5', 1284, CAST(N'2023-07-24T10:39:45.407' AS DateTime), 1282, CAST(N'2023-07-24T12:37:10.330' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4077, 1320, NULL, 47, N'1,2,3,4,5', 1284, CAST(N'2023-07-24T10:39:45.410' AS DateTime), 1282, CAST(N'2023-07-24T12:37:10.333' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4078, 1320, NULL, 34, N'1,2,3,4,5', 1284, CAST(N'2023-07-24T10:39:45.413' AS DateTime), 1282, CAST(N'2023-07-24T12:37:10.337' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4079, 1320, NULL, 28, N'4', 1284, CAST(N'2023-07-24T10:39:45.417' AS DateTime), 1282, CAST(N'2023-07-24T12:37:10.340' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4080, 1318, NULL, 1, N'4', 1282, CAST(N'2023-07-24T11:07:09.943' AS DateTime), NULL, NULL, 1318, CAST(N'2023-08-29T12:26:10.653' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4081, 1318, NULL, 5, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T11:07:09.950' AS DateTime), NULL, NULL, 1318, CAST(N'2023-08-29T12:26:10.657' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4082, 1318, NULL, 6, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T11:07:09.953' AS DateTime), NULL, NULL, 1318, CAST(N'2023-08-29T12:26:10.657' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4083, 1318, NULL, 7, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T11:07:09.957' AS DateTime), NULL, NULL, 1318, CAST(N'2023-08-29T12:26:10.657' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4084, 1318, NULL, 8, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T11:07:09.977' AS DateTime), NULL, NULL, 1318, CAST(N'2023-08-29T12:26:10.657' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4085, 1318, NULL, 33, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T11:07:09.980' AS DateTime), NULL, NULL, 1318, CAST(N'2023-08-29T12:26:10.660' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4086, 1318, NULL, 9, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T11:07:09.983' AS DateTime), NULL, NULL, 1318, CAST(N'2023-08-29T12:26:10.660' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4087, 1318, NULL, 11, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T11:07:09.990' AS DateTime), NULL, NULL, 1318, CAST(N'2023-08-29T12:26:10.660' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4088, 1318, NULL, 12, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T11:07:09.993' AS DateTime), NULL, NULL, 1318, CAST(N'2023-08-29T12:26:10.660' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4089, 1318, NULL, 14, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T11:07:09.997' AS DateTime), NULL, NULL, 1318, CAST(N'2023-08-29T12:26:10.663' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4090, 1318, NULL, 3, N'4', 1282, CAST(N'2023-07-24T11:07:10.007' AS DateTime), NULL, NULL, 1318, CAST(N'2023-08-29T12:26:10.663' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4091, 1318, NULL, 15, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T11:07:10.010' AS DateTime), NULL, NULL, 1318, CAST(N'2023-08-29T12:26:10.663' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4092, 1318, NULL, 16, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T11:07:10.013' AS DateTime), NULL, NULL, 1318, CAST(N'2023-08-29T12:26:10.667' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4093, 1318, NULL, 17, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T11:07:10.017' AS DateTime), NULL, NULL, 1318, CAST(N'2023-08-29T12:26:10.667' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4094, 1318, NULL, 18, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T11:07:10.020' AS DateTime), NULL, NULL, 1318, CAST(N'2023-08-29T12:26:10.667' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4095, 1318, NULL, 13, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T11:07:10.023' AS DateTime), NULL, NULL, 1318, CAST(N'2023-08-29T12:26:10.670' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4096, 1318, NULL, 19, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T11:07:10.023' AS DateTime), NULL, NULL, 1318, CAST(N'2023-08-29T12:26:10.670' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4097, 1318, NULL, 45, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T11:07:10.027' AS DateTime), NULL, NULL, 1318, CAST(N'2023-08-29T12:26:10.670' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4098, 1318, NULL, 21, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T11:07:10.030' AS DateTime), NULL, NULL, 1318, CAST(N'2023-08-29T12:26:10.670' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4099, 1318, NULL, 35, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T11:07:10.033' AS DateTime), NULL, NULL, 1318, CAST(N'2023-08-29T12:26:10.673' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4100, 1318, NULL, 36, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T11:07:10.037' AS DateTime), NULL, NULL, 1318, CAST(N'2023-08-29T12:26:10.673' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4101, 1318, NULL, 37, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T11:07:10.040' AS DateTime), NULL, NULL, 1318, CAST(N'2023-08-29T12:26:10.673' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4102, 1318, NULL, 38, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T11:07:10.043' AS DateTime), NULL, NULL, 1318, CAST(N'2023-08-29T12:26:10.677' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4103, 1318, NULL, 41, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T11:07:10.043' AS DateTime), NULL, NULL, 1318, CAST(N'2023-08-29T12:26:10.677' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4104, 1318, NULL, 49, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T11:07:10.047' AS DateTime), NULL, NULL, 1318, CAST(N'2023-08-29T12:26:10.677' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4105, 1318, NULL, 46, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T11:07:10.050' AS DateTime), NULL, NULL, 1318, CAST(N'2023-08-29T12:26:10.680' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4106, 1318, NULL, 42, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T11:07:10.053' AS DateTime), NULL, NULL, 1318, CAST(N'2023-08-29T12:26:10.680' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4107, 1318, NULL, 4, N'4', 1282, CAST(N'2023-07-24T11:07:10.057' AS DateTime), NULL, NULL, 1318, CAST(N'2023-08-29T12:26:10.680' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4108, 1318, NULL, 23, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T11:07:10.060' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4109, 1318, NULL, 27, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T11:07:10.063' AS DateTime), NULL, NULL, 1318, CAST(N'2023-08-29T12:26:10.680' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4110, 1301, NULL, 48, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T12:36:54.653' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4111, 1320, NULL, 48, N'1,2,3,4,5', 1282, CAST(N'2023-07-24T12:37:10.333' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4112, 1282, NULL, 49, N'1,2,3,4,5', 1282, CAST(N'2023-07-25T13:52:27.553' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.227' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4113, 1322, NULL, 2, N'4', 1284, CAST(N'2023-07-28T10:32:07.767' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4114, 1322, NULL, 10, N'1,2,3,4,5', 1284, CAST(N'2023-07-28T10:32:07.777' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4115, 1322, NULL, 47, N'1,2,3,4,5', 1284, CAST(N'2023-07-28T10:32:07.780' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4116, 1322, NULL, 48, N'1,2,3,4,5', 1284, CAST(N'2023-07-28T10:32:07.783' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4117, 1322, NULL, 34, N'1,2,3,4,5', 1284, CAST(N'2023-07-28T10:32:07.787' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4118, 1322, NULL, 28, N'4', 1284, CAST(N'2023-07-28T10:32:07.790' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4119, 1323, NULL, 2, N'4', 1285, CAST(N'2023-07-28T10:42:25.253' AS DateTime), 1285, CAST(N'2023-07-28T10:49:06.800' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4120, 1323, NULL, 10, N'1,2,3,4,5', 1285, CAST(N'2023-07-28T10:42:25.257' AS DateTime), 1285, CAST(N'2023-07-28T10:49:06.803' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4121, 1323, NULL, 47, N'1,2,3,4,5', 1285, CAST(N'2023-07-28T10:42:25.260' AS DateTime), NULL, NULL, 1285, CAST(N'2023-07-28T10:49:06.813' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4122, 1323, NULL, 48, N'1,2,3,4,5', 1285, CAST(N'2023-07-28T10:42:25.263' AS DateTime), NULL, NULL, 1285, CAST(N'2023-07-28T10:49:06.813' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4123, 1323, NULL, 34, N'1,2,3,4,5', 1285, CAST(N'2023-07-28T10:42:25.280' AS DateTime), 1285, CAST(N'2023-07-28T10:49:06.807' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4124, 1323, NULL, 28, N'4', 1285, CAST(N'2023-07-28T10:42:25.283' AS DateTime), 1285, CAST(N'2023-07-28T10:49:06.810' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4125, 1324, NULL, 2, N'4', 1319, CAST(N'2023-07-28T10:53:09.717' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4126, 1324, NULL, 10, N'1,2,3,4,5', 1319, CAST(N'2023-07-28T10:53:09.720' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4127, 1324, NULL, 47, N'1,2,3,4,5', 1319, CAST(N'2023-07-28T10:53:09.723' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4128, 1324, NULL, 48, N'1,2,3,4,5', 1319, CAST(N'2023-07-28T10:53:09.727' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4129, 1324, NULL, 34, N'1,2,3,4,5', 1319, CAST(N'2023-07-28T10:53:09.730' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4130, 1324, NULL, 28, N'4', 1319, CAST(N'2023-07-28T10:53:09.733' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4131, 1282, NULL, 50, N'1,2,3,4,5', 1282, CAST(N'2023-07-28T11:59:06.317' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.230' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4132, 1319, NULL, 49, N'1,2,3,4,5', 1282, CAST(N'2023-07-28T11:59:17.417' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4133, 1319, NULL, 50, N'1,2,3,4,5', 1282, CAST(N'2023-07-28T11:59:17.420' AS DateTime), 1282, CAST(N'2023-07-31T09:27:17.227' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4134, 1282, NULL, 51, N'1,2,3,4,5', 1282, CAST(N'2023-07-31T08:34:02.577' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.240' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4135, 1319, NULL, 51, N'1,2,3,4,5', 1282, CAST(N'2023-07-31T09:27:17.233' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4136, 1284, NULL, 50, N'1,2,3,4,5', 1282, CAST(N'2023-07-31T09:27:49.107' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4137, 1284, NULL, 51, N'1,2,3,4,5', 1282, CAST(N'2023-07-31T09:27:49.117' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4138, 1285, NULL, 51, N'1,2,3,4,5', 1282, CAST(N'2023-07-31T09:28:09.763' AS DateTime), 1285, CAST(N'2023-08-04T11:46:50.737' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4139, 1325, NULL, 2, N'4', 1285, CAST(N'2023-07-31T10:04:17.330' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4140, 1325, NULL, 10, N'1,2,3,4,5', 1285, CAST(N'2023-07-31T10:04:17.333' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4141, 1325, NULL, 34, N'1,2,3,4,5', 1285, CAST(N'2023-07-31T10:04:17.337' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4142, 1325, NULL, 28, N'4', 1285, CAST(N'2023-07-31T10:04:17.340' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4143, 1326, NULL, 2, N'4', 1282, CAST(N'2023-08-02T12:00:04.803' AS DateTime), 1282, CAST(N'2023-08-02T12:00:42.077' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4144, 1326, NULL, 10, N'1,2,3,4,5', 1282, CAST(N'2023-08-02T12:00:04.810' AS DateTime), 1282, CAST(N'2023-08-02T12:00:42.090' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4145, 1326, NULL, 47, N'1,2,3,4,5', 1282, CAST(N'2023-08-02T12:00:04.813' AS DateTime), 1282, CAST(N'2023-08-02T12:00:42.093' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4146, 1326, NULL, 48, N'1,2,3,4,5', 1282, CAST(N'2023-08-02T12:00:04.817' AS DateTime), 1282, CAST(N'2023-08-02T12:00:42.097' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4147, 1326, NULL, 34, N'1,2,3,4,5', 1282, CAST(N'2023-08-02T12:00:04.817' AS DateTime), 1282, CAST(N'2023-08-02T12:00:42.100' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4148, 1326, NULL, 4, N'4', 1282, CAST(N'2023-08-02T12:00:04.823' AS DateTime), NULL, NULL, 1282, CAST(N'2023-08-02T12:00:42.103' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4149, 1326, NULL, 27, N'1,2,3,4,5', 1282, CAST(N'2023-08-02T12:00:04.827' AS DateTime), NULL, NULL, 1282, CAST(N'2023-08-02T12:00:42.107' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4150, 1326, NULL, 28, N'4', 1282, CAST(N'2023-08-02T12:00:42.100' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4151, 1285, NULL, 46, N'1,2,3,4,5', 1285, CAST(N'2023-08-04T11:46:50.730' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4152, 1287, NULL, 2, N'4', 1285, CAST(N'2023-08-04T11:47:43.340' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4153, 1287, NULL, 10, N'1,2,3,4,5', 1285, CAST(N'2023-08-04T11:47:43.343' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4154, 1287, NULL, 28, N'4', 1285, CAST(N'2023-08-04T11:47:43.347' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4155, 1288, NULL, 2, N'4', 1319, CAST(N'2023-08-16T13:52:04.083' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4156, 1288, NULL, 10, N'1,2,3,4,5', 1319, CAST(N'2023-08-16T13:52:04.093' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4157, 1288, NULL, 47, N'1,2,3,4,5', 1319, CAST(N'2023-08-16T13:52:04.097' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4158, 1288, NULL, 48, N'1,2,3,4,5', 1319, CAST(N'2023-08-16T13:52:04.100' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4159, 1288, NULL, 28, N'4', 1319, CAST(N'2023-08-16T13:52:04.100' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4160, 1312, NULL, 2, N'4', 1282, CAST(N'2023-08-21T11:07:02.767' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4161, 1312, NULL, 10, N'1,2,3,4,5', 1282, CAST(N'2023-08-21T11:07:02.777' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4162, 1312, NULL, 11, N'1,2,3,4,5', 1282, CAST(N'2023-08-21T11:07:02.780' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4163, 1312, NULL, 12, N'1,2,3,4,5', 1282, CAST(N'2023-08-21T11:07:02.783' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4164, 1312, NULL, 14, N'1,2,3,4,5', 1282, CAST(N'2023-08-21T11:07:02.787' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4165, 1312, NULL, 47, N'1,2,3,4,5', 1282, CAST(N'2023-08-21T11:07:02.790' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4166, 1312, NULL, 48, N'1,2,3,4,5', 1282, CAST(N'2023-08-21T11:07:02.793' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4167, 1312, NULL, 34, N'1,2,3,4,5', 1282, CAST(N'2023-08-21T11:07:02.797' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4168, 1312, NULL, 3, N'4', 1282, CAST(N'2023-08-21T11:07:02.797' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4169, 1312, NULL, 15, N'1,2,3,4,5', 1282, CAST(N'2023-08-21T11:07:02.800' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4170, 1312, NULL, 16, N'1,2,3,4,5', 1282, CAST(N'2023-08-21T11:07:02.803' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4171, 1312, NULL, 17, N'1,2,3,4,5', 1282, CAST(N'2023-08-21T11:07:02.807' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4172, 1312, NULL, 18, N'1,2,3,4,5', 1282, CAST(N'2023-08-21T11:07:02.810' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4173, 1312, NULL, 13, N'1,2,3,4,5', 1282, CAST(N'2023-08-21T11:07:02.813' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4174, 1312, NULL, 19, N'1,2,3,4,5', 1282, CAST(N'2023-08-21T11:07:02.817' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4175, 1312, NULL, 45, N'1,2,3,4,5', 1282, CAST(N'2023-08-21T11:07:02.820' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4176, 1312, NULL, 21, N'1,2,3,4,5', 1282, CAST(N'2023-08-21T11:07:02.823' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4177, 1312, NULL, 35, N'1,2,3,4,5', 1282, CAST(N'2023-08-21T11:07:02.827' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4178, 1312, NULL, 36, N'1,2,3,4,5', 1282, CAST(N'2023-08-21T11:07:02.827' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4179, 1312, NULL, 37, N'1,2,3,4,5', 1282, CAST(N'2023-08-21T11:07:02.830' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4180, 1312, NULL, 38, N'1,2,3,4,5', 1282, CAST(N'2023-08-21T11:07:02.833' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4181, 1312, NULL, 41, N'1,2,3,4,5', 1282, CAST(N'2023-08-21T11:07:02.837' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4182, 1312, NULL, 49, N'1,2,3,4,5', 1282, CAST(N'2023-08-21T11:07:02.837' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4183, 1312, NULL, 50, N'1,2,3,4,5', 1282, CAST(N'2023-08-21T11:07:02.840' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4184, 1312, NULL, 46, N'1,2,3,4,5', 1282, CAST(N'2023-08-21T11:07:02.850' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4185, 1312, NULL, 42, N'1,2,3,4,5', 1282, CAST(N'2023-08-21T11:07:02.853' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4186, 1312, NULL, 51, N'1,2,3,4,5', 1282, CAST(N'2023-08-21T11:07:02.857' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4187, 1312, NULL, 4, N'4', 1282, CAST(N'2023-08-21T11:07:02.857' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4188, 1312, NULL, 23, N'1,2,3,4,5', 1282, CAST(N'2023-08-21T11:07:02.860' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4189, 1312, NULL, 27, N'1,2,3,4,5', 1282, CAST(N'2023-08-21T11:07:02.863' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4190, 1312, NULL, 28, N'4', 1282, CAST(N'2023-08-21T11:07:02.867' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4191, 1327, NULL, 2, N'4', 1282, CAST(N'2023-08-24T08:00:28.837' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4192, 1327, NULL, 10, N'1,2,3,4,5', 1282, CAST(N'2023-08-24T08:00:28.843' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4193, 1327, NULL, 47, N'1,2,3,4,5', 1282, CAST(N'2023-08-24T08:00:28.850' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4194, 1327, NULL, 48, N'1,2,3,4,5', 1282, CAST(N'2023-08-24T08:00:28.853' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4195, 1327, NULL, 34, N'1,2,3,4,5', 1282, CAST(N'2023-08-24T08:00:28.857' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4196, 1327, NULL, 28, N'4', 1282, CAST(N'2023-08-24T08:00:28.857' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4197, 1328, NULL, 2, N'4', 1282, CAST(N'2023-08-24T08:00:58.990' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4198, 1328, NULL, 10, N'1,2,3,4,5', 1282, CAST(N'2023-08-24T08:00:58.993' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4199, 1328, NULL, 47, N'1,2,3,4,5', 1282, CAST(N'2023-08-24T08:00:58.997' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4200, 1328, NULL, 48, N'1,2,3,4,5', 1282, CAST(N'2023-08-24T08:00:59.007' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4201, 1328, NULL, 34, N'1,2,3,4,5', 1282, CAST(N'2023-08-24T08:00:59.010' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4202, 1328, NULL, 28, N'4', 1282, CAST(N'2023-08-24T08:00:59.013' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4203, 1313, NULL, 2, N'4', 1319, CAST(N'2023-09-20T08:48:03.753' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4204, 1313, NULL, 10, N'1,2,3,4,5', 1319, CAST(N'2023-09-20T08:48:03.780' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4205, 1313, NULL, 48, N'1,2,3,4,5', 1319, CAST(N'2023-09-20T08:48:03.783' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (4206, 1313, NULL, 28, N'4', 1319, CAST(N'2023-09-20T08:48:03.787' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5203, 1282, NULL, 52, N'1,2,3,4,5', 1282, CAST(N'2024-01-29T15:56:23.977' AS DateTime), 1282, CAST(N'2024-01-29T15:59:20.150' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5204, 1282, NULL, 53, N'1,2,3,4,5', 1282, CAST(N'2024-01-29T15:59:20.183' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5205, 2335, NULL, 2, N'4', 1282, CAST(N'2024-02-01T16:40:03.363' AS DateTime), 2370, CAST(N'2024-05-07T13:56:23.933' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5206, 2335, NULL, 10, N'1,2,3,4,5', 1282, CAST(N'2024-02-01T16:40:03.373' AS DateTime), 2370, CAST(N'2024-05-07T13:56:23.943' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5207, 2335, NULL, 47, N'1,2,3,4,5', 1282, CAST(N'2024-02-01T16:40:03.373' AS DateTime), 2370, CAST(N'2024-05-07T13:56:23.950' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5208, 2335, NULL, 48, N'1,2,3,4,5', 1282, CAST(N'2024-02-01T16:40:03.383' AS DateTime), 2370, CAST(N'2024-05-07T13:56:23.950' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5209, 2335, NULL, 28, N'4', 1282, CAST(N'2024-02-01T16:40:03.387' AS DateTime), 2370, CAST(N'2024-05-07T13:56:23.963' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5210, 2367, NULL, 2, N'4', 1282, CAST(N'2024-02-06T10:43:42.117' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5211, 2367, NULL, 10, N'1,2,3,4,5', 1282, CAST(N'2024-02-06T10:43:42.127' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5212, 2367, NULL, 11, N'1,2,3,4,5', 1282, CAST(N'2024-02-06T10:43:42.130' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5213, 2367, NULL, 12, N'1,2,3,4,5', 1282, CAST(N'2024-02-06T10:43:42.133' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5214, 2367, NULL, 14, N'1,2,3,4,5', 1282, CAST(N'2024-02-06T10:43:42.137' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5215, 2367, NULL, 47, N'1,2,3,4,5', 1282, CAST(N'2024-02-06T10:43:42.140' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5216, 2367, NULL, 48, N'1,2,3,4,5', 1282, CAST(N'2024-02-06T10:43:42.143' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5217, 2367, NULL, 28, N'4', 1282, CAST(N'2024-02-06T10:43:42.143' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5218, 2371, NULL, 1, N'4', 1285, CAST(N'2024-02-06T11:23:06.560' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5219, 2371, NULL, 5, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.563' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5220, 2371, NULL, 6, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.567' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5221, 2371, NULL, 7, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.570' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5222, 2371, NULL, 8, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.573' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5223, 2371, NULL, 33, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.583' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5224, 2371, NULL, 9, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.590' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5225, 2371, NULL, 52, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.593' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5226, 2371, NULL, 2, N'4', 1285, CAST(N'2024-02-06T11:23:06.600' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5227, 2371, NULL, 10, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.603' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5228, 2371, NULL, 11, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.607' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5229, 2371, NULL, 12, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.610' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5230, 2371, NULL, 14, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.613' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5231, 2371, NULL, 47, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.617' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5232, 2371, NULL, 48, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.620' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5233, 2371, NULL, 3, N'4', 1285, CAST(N'2024-02-06T11:23:06.620' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5234, 2371, NULL, 15, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.623' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5235, 2371, NULL, 16, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.627' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5236, 2371, NULL, 17, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.630' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5237, 2371, NULL, 18, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.633' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5238, 2371, NULL, 13, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.637' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5239, 2371, NULL, 19, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.637' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5240, 2371, NULL, 45, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.640' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5241, 2371, NULL, 21, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.643' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5242, 2371, NULL, 35, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.647' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5243, 2371, NULL, 36, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.650' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5244, 2371, NULL, 37, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.650' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5245, 2371, NULL, 38, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.653' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5246, 2371, NULL, 41, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.657' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5247, 2371, NULL, 49, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.660' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5248, 2371, NULL, 50, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.663' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5249, 2371, NULL, 42, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.667' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5250, 2371, NULL, 46, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.667' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5251, 2371, NULL, 51, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.670' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5252, 2371, NULL, 4, N'4', 1285, CAST(N'2024-02-06T11:23:06.673' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5253, 2371, NULL, 23, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.677' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5254, 2371, NULL, 27, N'1,2,3,4,5', 1285, CAST(N'2024-02-06T11:23:06.680' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5255, 2371, NULL, 28, N'4', 1285, CAST(N'2024-02-06T11:23:06.683' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5256, 378, NULL, 1, N'4', 2371, CAST(N'2024-02-06T11:24:07.230' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5257, 378, NULL, 5, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.237' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.327' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5258, 378, NULL, 6, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.240' AS DateTime), 378, CAST(N'2024-06-07T15:23:43.807' AS DateTime), 378, CAST(N'2024-06-19T12:13:27.220' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5259, 378, NULL, 7, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.247' AS DateTime), 378, CAST(N'2024-06-07T15:23:43.807' AS DateTime), 378, CAST(N'2024-06-19T12:13:27.220' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5260, 378, NULL, 8, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.253' AS DateTime), 378, CAST(N'2024-06-07T15:23:43.807' AS DateTime), 378, CAST(N'2024-06-19T12:13:27.230' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5261, 378, NULL, 33, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.257' AS DateTime), 378, CAST(N'2024-06-07T15:23:43.817' AS DateTime), 378, CAST(N'2024-06-19T12:13:27.230' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5262, 378, NULL, 9, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.263' AS DateTime), 378, CAST(N'2024-06-07T15:23:43.817' AS DateTime), 378, CAST(N'2024-06-19T12:13:27.230' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5263, 378, NULL, 52, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.263' AS DateTime), NULL, NULL, 2370, CAST(N'2024-05-02T12:32:34.320' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5264, 378, NULL, 2, N'4', 2371, CAST(N'2024-02-06T11:24:07.267' AS DateTime), 378, CAST(N'2025-07-07T14:10:07.863' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.453' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5265, 378, NULL, 10, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.270' AS DateTime), 378, CAST(N'2025-07-07T14:10:07.863' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.453' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5266, 378, NULL, 11, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.273' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.333' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5267, 378, NULL, 12, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.277' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.340' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5268, 378, NULL, 14, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.280' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.423' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5269, 378, NULL, 47, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.283' AS DateTime), 378, CAST(N'2025-07-07T14:10:07.877' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.457' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5270, 378, NULL, 48, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.283' AS DateTime), 378, CAST(N'2025-07-07T14:10:07.877' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.457' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5271, 378, NULL, 3, N'4', 2371, CAST(N'2024-02-06T11:24:07.287' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.330' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5272, 378, NULL, 15, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.293' AS DateTime), 378, CAST(N'2024-06-07T15:23:43.857' AS DateTime), 378, CAST(N'2024-06-19T12:13:27.230' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5273, 378, NULL, 16, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.293' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.433' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5274, 378, NULL, 17, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.297' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.437' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5275, 378, NULL, 18, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.300' AS DateTime), 378, CAST(N'2024-06-07T15:23:43.867' AS DateTime), 378, CAST(N'2024-06-19T12:13:27.230' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5276, 378, NULL, 13, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.303' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.440' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5277, 378, NULL, 19, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.307' AS DateTime), 378, CAST(N'2024-06-07T15:23:43.867' AS DateTime), 378, CAST(N'2024-06-19T12:13:27.237' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5278, 378, NULL, 45, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.310' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.343' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5279, 378, NULL, 21, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.313' AS DateTime), 378, CAST(N'2024-06-07T15:23:43.873' AS DateTime), 378, CAST(N'2024-06-19T12:13:27.237' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5280, 378, NULL, 35, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.317' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.357' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5281, 378, NULL, 36, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.320' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.360' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5282, 378, NULL, 37, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.323' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.423' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5283, 378, NULL, 38, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.323' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5284, 378, NULL, 41, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.327' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.443' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5285, 378, NULL, 49, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.330' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.367' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5286, 378, NULL, 50, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.333' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.367' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5287, 378, NULL, 42, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.337' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.447' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5288, 378, NULL, 46, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.340' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.370' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5289, 378, NULL, 51, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.340' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.373' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5290, 378, NULL, 4, N'4', 2371, CAST(N'2024-02-06T11:24:07.343' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.377' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5291, 378, NULL, 23, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.347' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.380' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5292, 378, NULL, 27, N'1,2,3,4,5', 2371, CAST(N'2024-02-06T11:24:07.350' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.390' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5293, 378, NULL, 28, N'4', 2371, CAST(N'2024-02-06T11:24:07.353' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.397' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5294, 2379, NULL, 2, N'4', 2370, CAST(N'2024-02-07T15:13:24.017' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5295, 2379, NULL, 10, N'1,2,3,4,5', 2370, CAST(N'2024-02-07T15:13:24.023' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5296, 2379, NULL, 11, N'1,2,3,4,5', 2370, CAST(N'2024-02-07T15:13:24.027' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5297, 2379, NULL, 12, N'1,2,3,4,5', 2370, CAST(N'2024-02-07T15:13:24.030' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5298, 2379, NULL, 14, N'1,2,3,4,5', 2370, CAST(N'2024-02-07T15:13:24.033' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5299, 2379, NULL, 47, N'1,2,3,4,5', 2370, CAST(N'2024-02-07T15:13:24.033' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5300, 2379, NULL, 48, N'1,2,3,4,5', 2370, CAST(N'2024-02-07T15:13:24.037' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5301, 2379, NULL, 28, N'4', 2370, CAST(N'2024-02-07T15:13:24.040' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5302, 2380, NULL, 2, N'4', 2370, CAST(N'2024-02-07T15:20:40.320' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5303, 2380, NULL, 10, N'1,2,3,4,5', 2370, CAST(N'2024-02-07T15:20:40.323' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5304, 2380, NULL, 11, N'1,2,3,4,5', 2370, CAST(N'2024-02-07T15:20:40.327' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5305, 2380, NULL, 12, N'1,2,3,4,5', 2370, CAST(N'2024-02-07T15:20:40.330' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5306, 2380, NULL, 14, N'1,2,3,4,5', 2370, CAST(N'2024-02-07T15:20:40.333' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5307, 2380, NULL, 47, N'1,2,3,4,5', 2370, CAST(N'2024-02-07T15:20:40.337' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5308, 2380, NULL, 48, N'1,2,3,4,5', 2370, CAST(N'2024-02-07T15:20:40.340' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5309, 2380, NULL, 28, N'4', 2370, CAST(N'2024-02-07T15:20:40.343' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5310, 2385, NULL, 2, N'4', 2370, CAST(N'2024-02-07T17:46:20.247' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5311, 2385, NULL, 10, N'1,2,3,4,5', 2370, CAST(N'2024-02-07T17:46:20.253' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5312, 2385, NULL, 28, N'4', 2370, CAST(N'2024-02-07T17:46:20.260' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5313, 2387, NULL, 2, N'4', 2370, CAST(N'2024-02-08T10:07:10.140' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5314, 2387, NULL, 10, N'1,2,3,4,5', 2370, CAST(N'2024-02-08T10:07:10.147' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5315, 2387, NULL, 28, N'4', 2370, CAST(N'2024-02-08T10:07:10.150' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5316, 2388, NULL, 2, N'4', 2370, CAST(N'2024-02-13T08:42:06.517' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5317, 2388, NULL, 10, N'1,2,3,4,5', 2370, CAST(N'2024-02-13T08:42:06.527' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5318, 2388, NULL, 28, N'4', 2370, CAST(N'2024-02-13T08:42:06.530' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5319, 2389, NULL, 2, N'4', 2370, CAST(N'2024-02-13T17:11:56.633' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5320, 2389, NULL, 10, N'1,2,3,4,5', 2370, CAST(N'2024-02-13T17:11:56.640' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5321, 2389, NULL, 28, N'4', 2370, CAST(N'2024-02-13T17:11:56.643' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5322, 2392, NULL, 2, N'4', 2370, CAST(N'2024-02-14T10:19:53.490' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5323, 2392, NULL, 10, N'1,2,3,4,5', 2370, CAST(N'2024-02-14T10:19:53.550' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5324, 2392, NULL, 28, N'4', 2370, CAST(N'2024-02-14T10:19:53.557' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5325, 2395, NULL, 2, N'4', 2370, CAST(N'2024-02-27T17:07:42.370' AS DateTime), 2370, CAST(N'2024-02-27T17:07:58.960' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5326, 2395, NULL, 10, N'1,2,3,4,5', 2370, CAST(N'2024-02-27T17:07:42.377' AS DateTime), 2370, CAST(N'2024-02-27T17:07:58.963' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5327, 2395, NULL, 4, N'4', 2370, CAST(N'2024-02-27T17:07:42.380' AS DateTime), NULL, NULL, 2370, CAST(N'2024-02-27T17:07:58.970' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5328, 2395, NULL, 27, N'1,2,3,4,5', 2370, CAST(N'2024-02-27T17:07:42.383' AS DateTime), NULL, NULL, 2370, CAST(N'2024-02-27T17:07:58.970' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5329, 2395, NULL, 28, N'4', 2370, CAST(N'2024-02-27T17:07:42.387' AS DateTime), 2370, CAST(N'2024-02-27T17:07:58.967' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5330, 2399, NULL, 2, N'4', 2370, CAST(N'2024-03-01T15:21:01.960' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5331, 2399, NULL, 10, N'1,2,3,4,5', 2370, CAST(N'2024-03-01T15:21:01.967' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5332, 2399, NULL, 28, N'4', 2370, CAST(N'2024-03-01T15:21:01.970' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5333, 2401, NULL, 2, N'4', 2370, CAST(N'2024-03-04T13:00:04.453' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5334, 2401, NULL, 10, N'1,2,3,4,5', 2370, CAST(N'2024-03-04T13:00:04.463' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5335, 2401, NULL, 28, N'4', 2370, CAST(N'2024-03-04T13:00:04.467' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5336, 2403, NULL, 2, N'4', 2370, CAST(N'2024-03-21T14:18:52.133' AS DateTime), 2370, CAST(N'2024-05-24T14:00:26.367' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5337, 2403, NULL, 10, N'1,2,3,4,5', 2370, CAST(N'2024-03-21T14:18:52.143' AS DateTime), 2370, CAST(N'2024-05-24T14:00:26.377' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5338, 2403, NULL, 28, N'4', 2370, CAST(N'2024-03-21T14:18:52.147' AS DateTime), 2370, CAST(N'2024-05-24T14:00:26.383' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5339, 2363, NULL, 28, N'4', 2370, CAST(N'2024-03-26T13:08:43.570' AS DateTime), 2370, CAST(N'2024-03-26T16:02:40.920' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5340, 2363, NULL, 2, N'4', 2370, CAST(N'2024-03-26T16:02:40.620' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5341, 2363, NULL, 10, N'1,2,3,4,5', 2370, CAST(N'2024-03-26T16:02:40.913' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5342, 2404, NULL, 2, N'4', 2370, CAST(N'2024-04-05T11:02:51.897' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5343, 2404, NULL, 10, N'1,2,3,4,5', 2370, CAST(N'2024-04-05T11:02:51.907' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5344, 2404, NULL, 28, N'4', 2370, CAST(N'2024-04-05T11:02:51.910' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5345, 2405, NULL, 2, N'4', 2370, CAST(N'2024-04-08T12:39:08.727' AS DateTime), 2370, CAST(N'2024-05-24T13:44:39.523' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5346, 2405, NULL, 10, N'1,2,3,4,5', 2370, CAST(N'2024-04-08T12:39:08.733' AS DateTime), 2370, CAST(N'2024-05-24T13:44:39.530' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5347, 2405, NULL, 28, N'4', 2370, CAST(N'2024-04-08T12:39:08.743' AS DateTime), 2370, CAST(N'2024-05-24T13:44:39.537' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5348, 2406, NULL, 2, N'4', 1285, CAST(N'2024-04-08T13:36:23.903' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5349, 2406, NULL, 10, N'1,2,3,4,5', 1285, CAST(N'2024-04-08T13:36:23.907' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5350, 2406, NULL, 28, N'4', 1285, CAST(N'2024-04-08T13:36:23.910' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5351, 2413, NULL, 2, N'4', 2370, CAST(N'2024-04-10T17:12:00.817' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5352, 2413, NULL, 10, N'1,2,3,4,5', 2370, CAST(N'2024-04-10T17:12:00.873' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5353, 2413, NULL, 28, N'4', 2370, CAST(N'2024-04-10T17:12:00.877' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5354, 2408, NULL, 2, N'4', 2370, CAST(N'2024-04-16T09:07:39.517' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5355, 2408, NULL, 10, N'1,2,3,4,5', 2370, CAST(N'2024-04-16T09:07:39.573' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5356, 2408, NULL, 28, N'4', 2370, CAST(N'2024-04-16T09:07:39.577' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5357, 2409, NULL, 2, N'4', 2370, CAST(N'2024-04-16T15:09:51.047' AS DateTime), 2370, CAST(N'2024-05-22T12:48:45.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5358, 2409, NULL, 10, N'1,2,3,4,5', 2370, CAST(N'2024-04-16T15:09:51.333' AS DateTime), 2370, CAST(N'2024-05-22T12:48:45.360' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5359, 2409, NULL, 28, N'4', 2370, CAST(N'2024-04-16T15:09:51.337' AS DateTime), 2370, CAST(N'2024-05-22T12:48:45.427' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5360, 2420, NULL, 2, N'4', 2370, CAST(N'2024-05-02T08:31:17.630' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5361, 2420, NULL, 10, N'1,2,3,4,5', 2370, CAST(N'2024-05-02T08:31:17.653' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5362, 2420, NULL, 28, N'4', 2370, CAST(N'2024-05-02T08:31:17.657' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5363, 2419, NULL, 2, N'4', 2370, CAST(N'2024-05-02T08:32:56.867' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5364, 2419, NULL, 10, N'1,2,3,4,5', 2370, CAST(N'2024-05-02T08:32:56.880' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5365, 2419, NULL, 28, N'4', 2370, CAST(N'2024-05-02T08:32:56.883' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5366, 378, NULL, 54, N'1,2,3,4,5', 2370, CAST(N'2024-05-02T12:32:34.300' AS DateTime), 378, CAST(N'2025-07-07T14:10:07.927' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.457' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5367, 2335, NULL, 3, N'4', 2370, CAST(N'2024-05-07T13:56:23.953' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5368, 2335, NULL, 36, N'1,2,3,4,5', 2370, CAST(N'2024-05-07T13:56:23.960' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (5369, 378, NULL, 55, N'1,2,3,4,5', 2370, CAST(N'2024-05-16T15:31:36.523' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.430' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6369, 2409, NULL, 48, N'1,2,3,4,5', 2370, CAST(N'2024-05-22T12:48:45.367' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6370, 2405, NULL, 48, N'1,2,3,4,5', 2370, CAST(N'2024-05-24T13:44:39.533' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6371, 2403, NULL, 48, N'1,2,3,4,5', 2370, CAST(N'2024-05-24T14:00:26.383' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6372, 381, NULL, 2, N'4', 378, CAST(N'2024-06-03T13:54:07.517' AS DateTime), 378, CAST(N'2025-03-31T12:46:56.310' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6373, 381, NULL, 10, N'1,2,3,4,5', 378, CAST(N'2024-06-03T13:54:07.740' AS DateTime), 378, CAST(N'2025-03-31T12:46:56.337' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6374, 381, NULL, 48, N'1,2,3,4,5', 378, CAST(N'2024-06-03T13:54:07.740' AS DateTime), 378, CAST(N'2025-03-31T12:46:56.343' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6375, 381, NULL, 28, N'4', 378, CAST(N'2024-06-03T13:54:07.750' AS DateTime), 378, CAST(N'2025-03-31T12:46:56.370' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6376, 385, NULL, 2, N'4', 378, CAST(N'2024-06-03T13:54:18.677' AS DateTime), 378, CAST(N'2024-09-03T15:35:17.233' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6377, 385, NULL, 10, N'1,2,3,4,5', 378, CAST(N'2024-06-03T13:54:18.680' AS DateTime), 378, CAST(N'2024-09-03T15:35:17.250' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6378, 385, NULL, 48, N'1,2,3,4,5', 378, CAST(N'2024-06-03T13:54:18.693' AS DateTime), 378, CAST(N'2024-09-03T15:35:17.250' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6379, 385, NULL, 28, N'4', 378, CAST(N'2024-06-03T13:54:18.693' AS DateTime), 378, CAST(N'2024-09-03T15:35:17.267' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6380, 367, NULL, 1, N'4', 378, CAST(N'2024-06-03T15:50:39.870' AS DateTime), 378, CAST(N'2025-03-25T15:01:30.430' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6381, 367, NULL, 5, N'1,2,3,4,5', 378, CAST(N'2024-06-03T15:50:39.937' AS DateTime), 378, CAST(N'2025-03-25T15:01:30.453' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6382, 367, NULL, 2, N'4', 378, CAST(N'2024-06-03T15:50:39.937' AS DateTime), 378, CAST(N'2025-03-25T15:01:30.460' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6383, 367, NULL, 10, N'1,2,3,4,5', 378, CAST(N'2024-06-03T15:50:39.973' AS DateTime), 378, CAST(N'2025-03-25T15:01:30.463' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6384, 367, NULL, 11, N'1,2,3,4,5', 378, CAST(N'2024-06-03T15:50:39.983' AS DateTime), 378, CAST(N'2025-03-25T15:01:30.463' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6385, 367, NULL, 12, N'1,2,3,4,5', 378, CAST(N'2024-06-03T15:50:39.983' AS DateTime), 378, CAST(N'2025-03-25T15:01:30.463' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6386, 367, NULL, 14, N'1,2,3,4,5', 378, CAST(N'2024-06-03T15:50:39.990' AS DateTime), 378, CAST(N'2025-03-25T15:01:30.463' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6387, 367, NULL, 3, N'4', 378, CAST(N'2024-06-03T15:50:39.990' AS DateTime), 378, CAST(N'2025-03-25T15:01:30.513' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6388, 367, NULL, 55, N'1,2,3,4,5', 378, CAST(N'2024-06-03T15:50:39.990' AS DateTime), 378, CAST(N'2025-03-25T15:01:30.513' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6389, 367, NULL, 16, N'1,2,3,4,5', 378, CAST(N'2024-06-03T15:50:40.010' AS DateTime), 378, CAST(N'2025-03-25T15:01:30.513' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6390, 367, NULL, 17, N'1,2,3,4,5', 378, CAST(N'2024-06-03T15:50:40.017' AS DateTime), 378, CAST(N'2025-03-25T15:01:30.527' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6391, 367, NULL, 18, N'1,2,3,4,5', 378, CAST(N'2024-06-03T15:50:40.033' AS DateTime), NULL, NULL, 378, CAST(N'2024-06-27T10:12:39.563' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6392, 367, NULL, 13, N'1,2,3,4,5', 378, CAST(N'2024-06-03T15:50:40.040' AS DateTime), 378, CAST(N'2025-03-25T15:01:30.527' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6393, 367, NULL, 19, N'1,2,3,4,5', 378, CAST(N'2024-06-03T15:50:40.050' AS DateTime), NULL, NULL, 378, CAST(N'2024-06-27T10:12:39.580' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6394, 367, NULL, 45, N'1,2,3,4,5', 378, CAST(N'2024-06-03T15:50:40.050' AS DateTime), 378, CAST(N'2025-03-25T15:01:30.527' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6395, 367, NULL, 21, N'1,2,3,4,5', 378, CAST(N'2024-06-03T15:50:40.050' AS DateTime), NULL, NULL, 378, CAST(N'2024-06-27T10:12:39.580' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6396, 367, NULL, 35, N'1,2,3,4,5', 378, CAST(N'2024-06-03T15:50:40.057' AS DateTime), 378, CAST(N'2025-03-25T15:01:30.543' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6397, 367, NULL, 36, N'1,2,3,4,5', 378, CAST(N'2024-06-03T15:50:40.057' AS DateTime), 378, CAST(N'2025-03-25T15:01:30.560' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6398, 367, NULL, 37, N'1,2,3,4,5', 378, CAST(N'2024-06-03T15:50:40.057' AS DateTime), 378, CAST(N'2025-03-25T15:01:30.560' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6399, 367, NULL, 38, N'1,2,3,4,5', 378, CAST(N'2024-06-03T15:50:40.067' AS DateTime), 378, CAST(N'2025-03-25T15:01:30.560' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6400, 367, NULL, 41, N'1,2,3,4,5', 378, CAST(N'2024-06-03T15:50:40.067' AS DateTime), 378, CAST(N'2025-03-25T15:01:30.560' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6401, 367, NULL, 49, N'1,2,3,4,5', 378, CAST(N'2024-06-03T15:50:40.073' AS DateTime), 378, CAST(N'2025-03-25T15:01:30.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6402, 367, NULL, 50, N'1,2,3,4,5', 378, CAST(N'2024-06-03T15:50:40.073' AS DateTime), 378, CAST(N'2025-03-25T15:01:30.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6403, 367, NULL, 42, N'1,2,3,4,5', 378, CAST(N'2024-06-03T15:50:40.073' AS DateTime), 378, CAST(N'2025-03-25T15:01:30.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6404, 367, NULL, 46, N'1,2,3,4,5', 378, CAST(N'2024-06-03T15:50:40.083' AS DateTime), 378, CAST(N'2025-03-25T15:01:30.593' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6405, 367, NULL, 51, N'1,2,3,4,5', 378, CAST(N'2024-06-03T15:50:40.083' AS DateTime), 378, CAST(N'2025-03-25T15:01:30.593' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6406, 367, NULL, 54, N'1,2,3,4,5', 378, CAST(N'2024-06-03T15:50:40.090' AS DateTime), 378, CAST(N'2025-03-25T15:01:30.593' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6407, 367, NULL, 4, N'4', 378, CAST(N'2024-06-03T15:50:40.100' AS DateTime), 378, CAST(N'2025-03-25T15:01:30.593' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6408, 367, NULL, 23, N'1,2,3,4,5', 378, CAST(N'2024-06-03T15:50:40.107' AS DateTime), 378, CAST(N'2025-03-25T15:01:30.593' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6409, 367, NULL, 27, N'1,2,3,4,5', 378, CAST(N'2024-06-03T15:50:40.107' AS DateTime), 378, CAST(N'2025-03-25T15:01:30.610' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6410, 367, NULL, 28, N'4', 378, CAST(N'2024-06-03T15:50:40.107' AS DateTime), 378, CAST(N'2025-03-25T15:01:30.610' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6411, 378, NULL, 1055, N'1,2,3,4,5', 378, CAST(N'2024-06-07T15:23:43.873' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.440' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6412, 388, NULL, 2, N'4', 378, CAST(N'2024-06-14T16:48:23.477' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6413, 388, NULL, 10, N'1,2,3,4,5', 378, CAST(N'2024-06-14T16:48:23.487' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6414, 388, NULL, 48, N'1,2,3,4,5', 378, CAST(N'2024-06-14T16:48:23.493' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6415, 388, NULL, 28, N'4', 378, CAST(N'2024-06-14T16:48:23.493' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6416, 386, NULL, 2, N'4', 378, CAST(N'2024-06-17T09:10:45.933' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6417, 386, NULL, 10, N'1,2,3,4,5', 378, CAST(N'2024-06-17T09:10:45.943' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6418, 386, NULL, 48, N'1,2,3,4,5', 378, CAST(N'2024-06-17T09:10:45.957' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6419, 386, NULL, 28, N'4', 378, CAST(N'2024-06-17T09:10:45.960' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6420, 387, NULL, 2, N'4', 378, CAST(N'2024-06-17T09:30:42.877' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6421, 387, NULL, 10, N'1,2,3,4,5', 378, CAST(N'2024-06-17T09:30:42.893' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6422, 387, NULL, 48, N'1,2,3,4,5', 378, CAST(N'2024-06-17T09:30:42.893' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6423, 387, NULL, 28, N'4', 378, CAST(N'2024-06-17T09:30:42.903' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6424, 378, NULL, 1056, N'4', 378, CAST(N'2024-06-19T12:13:27.217' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.400' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6425, 378, NULL, 1057, N'1,2,3,4,5', 378, CAST(N'2024-06-19T12:13:27.220' AS DateTime), 378, CAST(N'2024-07-17T16:09:15.800' AS DateTime), 378, CAST(N'2024-07-26T12:36:12.913' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6426, 378, NULL, 1058, N'1,2,3,4,5', 378, CAST(N'2024-06-20T12:51:05.363' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.337' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6427, 424, NULL, 28, N'4', 378, CAST(N'2024-06-20T17:13:56.797' AS DateTime), 378, CAST(N'2024-07-17T13:02:40.477' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (6428, 378, NULL, 1059, N'1,2,3,4,5', 378, CAST(N'2024-06-25T15:21:16.490' AS DateTime), 378, CAST(N'2024-06-27T10:08:53.383' AS DateTime), 378, CAST(N'2024-06-27T10:17:38.350' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (7412, 367, NULL, 1059, N'1,2,3,4,5', 378, CAST(N'2024-06-27T10:12:39.480' AS DateTime), NULL, NULL, 378, CAST(N'2024-08-06T09:52:08.643' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (7413, 378, NULL, 2056, N'1,2,3,4,5', 378, CAST(N'2024-06-27T10:17:38.300' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (7414, 378, NULL, 2057, N'1,2,3,4,5', 378, CAST(N'2024-07-15T09:33:02.013' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.410' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (7415, 379, NULL, 2, N'4', 378, CAST(N'2024-07-15T10:34:04.017' AS DateTime), 378, CAST(N'2024-07-15T10:34:47.910' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (7416, 379, NULL, 10, N'1,2,3,4,5', 378, CAST(N'2024-07-15T10:34:04.210' AS DateTime), 378, CAST(N'2024-07-15T10:34:47.937' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (7417, 379, NULL, 48, N'1,2,3,4,5', 378, CAST(N'2024-07-15T10:34:04.213' AS DateTime), 378, CAST(N'2024-07-15T10:34:47.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (7418, 379, NULL, 1056, N'4', 378, CAST(N'2024-07-15T10:34:04.217' AS DateTime), 378, CAST(N'2024-07-15T10:34:47.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (7419, 379, NULL, 2057, N'1,2,3,4,5', 378, CAST(N'2024-07-15T10:34:04.220' AS DateTime), 378, CAST(N'2024-07-15T10:34:47.950' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (7420, 379, NULL, 28, N'4', 378, CAST(N'2024-07-15T10:34:47.940' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (7421, 378, NULL, 2058, N'1,2,3,4,5', 378, CAST(N'2024-07-17T10:44:17.403' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.410' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (7422, 385, NULL, 1056, N'4', 378, CAST(N'2024-07-17T10:48:15.970' AS DateTime), 378, CAST(N'2024-09-03T15:35:17.270' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (7423, 385, NULL, 2058, N'1,2,3,4,5', 378, CAST(N'2024-07-17T10:48:16.003' AS DateTime), 378, CAST(N'2024-09-03T15:35:17.283' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (7424, 424, NULL, 1056, N'4', 378, CAST(N'2024-07-17T13:02:40.500' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (7425, 424, NULL, 2058, N'1,2,3,4,5', 378, CAST(N'2024-07-17T13:02:40.500' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (7426, 1422, NULL, 1056, N'4', 378, CAST(N'2024-07-17T13:02:50.490' AS DateTime), 378, CAST(N'2024-09-23T15:05:28.627' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (7427, 1422, NULL, 2058, N'1,2,3,4,5', 378, CAST(N'2024-07-17T13:02:50.497' AS DateTime), 378, CAST(N'2024-09-23T15:05:28.633' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (7428, 408, NULL, 1056, N'4', 378, CAST(N'2024-07-17T13:02:59.203' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (7429, 408, NULL, 2058, N'1,2,3,4,5', 378, CAST(N'2024-07-17T13:02:59.210' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (7430, 1422, NULL, 28, N'4', 378, CAST(N'2024-07-17T13:04:44.527' AS DateTime), 378, CAST(N'2024-09-23T15:05:28.603' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (7431, 385, NULL, 2057, N'1,2,3,4,5', 378, CAST(N'2024-07-17T15:31:18.777' AS DateTime), 378, CAST(N'2024-09-03T15:35:17.270' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (7432, 378, NULL, 2059, N'1,2,3,4,5', 378, CAST(N'2024-07-17T16:09:15.810' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.413' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (7433, 378, NULL, 2060, N'1,2,3,4,5', 378, CAST(N'2024-07-26T12:36:12.897' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.403' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8433, 378, NULL, 3060, N'1,2,3,4,5', 378, CAST(N'2024-08-05T15:24:59.557' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.350' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8434, 367, NULL, 3060, N'1,2,3,4,5', 378, CAST(N'2024-08-06T09:52:08.557' AS DateTime), 378, CAST(N'2025-03-25T15:01:30.543' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8435, 378, NULL, 3061, N'1,2,3,4,5', 378, CAST(N'2024-08-21T08:57:18.293' AS DateTime), NULL, NULL, 378, CAST(N'2024-08-21T13:05:08.610' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8436, 378, NULL, 3062, N'4', 378, CAST(N'2024-08-21T13:05:08.610' AS DateTime), 378, CAST(N'2025-07-07T14:10:07.980' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.460' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8437, 378, NULL, 3063, N'1,2,3,4,5', 378, CAST(N'2024-08-21T13:09:59.200' AS DateTime), 378, CAST(N'2025-07-07T14:10:07.980' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.460' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8438, 385, NULL, 3064, N'1,2,3,4,5', 378, CAST(N'2024-09-03T15:35:17.270' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8439, 412, NULL, 2, N'4', 378, CAST(N'2024-09-10T17:21:57.113' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8440, 412, NULL, 10, N'1,2,3,4,5', 378, CAST(N'2024-09-10T17:21:57.113' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8441, 412, NULL, 28, N'4', 378, CAST(N'2024-09-10T17:21:57.123' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8442, 1422, NULL, 3064, N'1,2,3,4,5', 378, CAST(N'2024-09-23T15:05:28.633' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8443, 378, NULL, 3065, N'1,2,3,4,5', 378, CAST(N'2024-10-04T12:01:06.030' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.347' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8444, 378, NULL, 3064, N'1,2,3,4,5', 378, CAST(N'2024-10-04T12:01:06.113' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.407' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8445, 382, NULL, 2, N'4', 378, CAST(N'2025-01-31T07:47:05.557' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8446, 382, NULL, 10, N'1,2,3,4,5', 378, CAST(N'2025-01-31T07:47:05.770' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8447, 382, NULL, 48, N'1,2,3,4,5', 378, CAST(N'2025-01-31T07:47:05.780' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8448, 382, NULL, 28, N'4', 378, CAST(N'2025-01-31T07:47:05.787' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8449, 367, NULL, 47, N'1,2,3,4,5', 378, CAST(N'2025-03-25T15:01:30.463' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8450, 367, NULL, 48, N'1,2,3,4,5', 378, CAST(N'2025-03-25T15:01:30.500' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8451, 367, NULL, 3065, N'1,2,3,4,5', 378, CAST(N'2025-03-25T15:01:30.500' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8452, 367, NULL, 1058, N'1,2,3,4,5', 378, CAST(N'2025-03-25T15:01:30.513' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8453, 367, NULL, 1055, N'1,2,3,4,5', 378, CAST(N'2025-03-25T15:01:30.527' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8454, 367, NULL, 2056, N'1,2,3,4,5', 378, CAST(N'2025-03-25T15:01:30.527' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8455, 367, NULL, 1056, N'4', 378, CAST(N'2025-03-25T15:01:30.610' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8456, 367, NULL, 2060, N'1,2,3,4,5', 378, CAST(N'2025-03-25T15:01:30.610' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8457, 367, NULL, 3064, N'1,2,3,4,5', 378, CAST(N'2025-03-25T15:01:30.627' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8458, 367, NULL, 2057, N'1,2,3,4,5', 378, CAST(N'2025-03-25T15:01:30.627' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8459, 367, NULL, 2058, N'1,2,3,4,5', 378, CAST(N'2025-03-25T15:01:30.627' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8460, 367, NULL, 2059, N'1,2,3,4,5', 378, CAST(N'2025-03-25T15:01:30.627' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8461, 367, NULL, 3062, N'4', 378, CAST(N'2025-03-25T15:01:30.627' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8462, 367, NULL, 3063, N'1,2,3,4,5', 378, CAST(N'2025-03-25T15:01:30.643' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (8463, 381, NULL, 3065, N'1,2,3,4,5', 378, CAST(N'2025-03-31T12:46:56.350' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (9463, 378, NULL, 3067, N'1,2,3,4,5', 378, CAST(N'2025-06-24T11:14:55.580' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.340' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (9464, 378, NULL, 3068, N'1,2,3,4,5', 378, CAST(N'2025-07-07T10:53:02.667' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.383' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (9465, 378, NULL, 3069, N'1,2,3,4,5', 378, CAST(N'2025-07-07T12:19:38.003' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.383' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10464, 378, NULL, 4068, N'1,2,3,4,5', 378, CAST(N'2025-07-07T13:22:30.170' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.393' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10465, 378, NULL, 4069, N'1,2,3,4,5', 378, CAST(N'2025-07-07T14:10:07.943' AS DateTime), 378, CAST(N'2025-07-08T13:12:48.387' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10466, NULL, 1, 1, N'4', 378, CAST(N'2025-07-08T09:32:17.007' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.817' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10467, NULL, 1, 5, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.020' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.823' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10468, NULL, 1, 2, N'4', 378, CAST(N'2025-07-08T09:32:17.020' AS DateTime), 1, CAST(N'2025-07-08T09:59:03.257' AS DateTime), 1, CAST(N'2025-07-08T16:56:00.370' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10469, NULL, 1, 11, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.020' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.833' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10470, NULL, 1, 12, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.020' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.840' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10471, NULL, 1, 14, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.037' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.893' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10472, NULL, 1, 3, N'4', 378, CAST(N'2025-07-08T09:32:17.037' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.830' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10473, NULL, 1, 55, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.037' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.903' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10474, NULL, 1, 16, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.037' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.903' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10475, NULL, 1, 1058, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.053' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.827' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10476, NULL, 1, 17, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.057' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.907' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10477, NULL, 1, 13, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.060' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.910' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10478, NULL, 1, 3067, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.063' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.840' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10479, NULL, 1, 45, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.063' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10480, NULL, 1, 3065, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.067' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10481, NULL, 1, 35, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.067' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.853' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10482, NULL, 1, 1055, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.067' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.920' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10483, NULL, 1, 2056, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.080' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.920' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10484, NULL, 1, 3060, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.083' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.857' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10485, NULL, 1, 36, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.083' AS DateTime), 1, CAST(N'2025-07-08T16:56:00.267' AS DateTime), 1, CAST(N'2025-07-09T13:59:05.160' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10486, NULL, 1, 37, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.093' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.893' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10487, NULL, 1, 38, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.093' AS DateTime), 1, CAST(N'2025-07-08T16:56:00.270' AS DateTime), 1, CAST(N'2025-07-09T13:59:05.160' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10488, NULL, 1, 41, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.100' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.930' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10489, NULL, 1, 49, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.103' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.860' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10490, NULL, 1, 42, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.103' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.933' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10491, NULL, 1, 46, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.110' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.860' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10492, NULL, 1, 50, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.110' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.867' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10493, NULL, 1, 51, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.120' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10494, NULL, 1, 54, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.120' AS DateTime), 1, CAST(N'2025-07-08T09:59:03.353' AS DateTime), 1, CAST(N'2025-07-08T16:56:00.370' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10495, NULL, 1, 4, N'4', 378, CAST(N'2025-07-08T09:32:17.120' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.873' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10496, NULL, 1, 23, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.120' AS DateTime), 1, CAST(N'2025-09-09T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10497, NULL, 1, 3068, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.130' AS DateTime), 1, CAST(N'2025-09-09T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10498, NULL, 1, 3069, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.130' AS DateTime), 1, CAST(N'2025-09-09T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10499, NULL, 1, 4069, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.130' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.877' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10500, NULL, 1, 27, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.130' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.877' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10501, NULL, 1, 4068, N'1,2,3,4,5', 378, CAST(N'2025-07-08T09:32:17.147' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.880' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10502, NULL, 1, 28, N'4', 1, CAST(N'2025-07-08T09:59:03.383' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10503, 378, NULL, 4070, N'4', 378, CAST(N'2025-07-08T13:12:48.417' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10504, 378, NULL, 4071, N'4', 378, CAST(N'2025-07-08T13:12:48.427' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10505, NULL, 1, 4070, N'4', 1, CAST(N'2025-07-08T16:56:00.313' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.887' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10506, NULL, 1, 4071, N'4', 1, CAST(N'2025-07-08T16:56:00.330' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.900' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10507, NULL, 1, 4072, N'1,2,3,4,5', 1, CAST(N'2025-07-09T13:59:05.143' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.927' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10508, 1432, NULL, 2, N'4', 1, CAST(N'2025-07-30T11:23:24.280' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10509, 1432, NULL, 10, N'1,2,3,4,5', 1, CAST(N'2025-07-30T11:23:24.300' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10510, 1432, NULL, 48, N'1,2,3,4,5', 1, CAST(N'2025-07-30T11:23:24.303' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10511, 1432, NULL, 28, N'4', 1, CAST(N'2025-07-30T11:23:24.307' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10512, NULL, 1, 4073, N'1,2,3,4,5', 1, CAST(N'2025-08-04T12:48:52.833' AS DateTime), NULL, NULL, 1, CAST(N'2025-08-13T11:57:14.160' AS DateTime))
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10513, NULL, 1, 4074, N'1,2,3,4,5', 1, CAST(N'2025-08-13T11:57:14.107' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.913' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10514, NULL, 1, 4075, N'1,2,3,4,5', 1, CAST(N'2025-09-08T10:25:11.403' AS DateTime), 1, CAST(N'2025-09-09T17:21:38.923' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10515, 406, NULL, 2, N'4', 1, CAST(N'2025-09-08T12:47:36.243' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10516, 406, NULL, 10, N'1,2,3,4,5', 1, CAST(N'2025-09-08T12:47:36.257' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10517, 406, NULL, 48, N'1,2,3,4,5', 1, CAST(N'2025-09-08T12:47:36.260' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10518, 406, NULL, 28, N'4', 1, CAST(N'2025-09-08T12:47:36.263' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10519, 1429, NULL, 2, N'4', 1, CAST(N'2025-09-09T12:56:27.877' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10520, 1429, NULL, 10, N'1,2,3,4,5', 1, CAST(N'2025-09-09T12:56:27.927' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10521, 1429, NULL, 48, N'1,2,3,4,5', 1, CAST(N'2025-09-09T12:56:27.963' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10522, 1429, NULL, 28, N'4', 1, CAST(N'2025-09-09T12:56:28.000' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10523, 1429, NULL, 1056, N'4', 1, CAST(N'2025-09-09T12:56:28.027' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10524, 1429, NULL, 2057, N'1,2,3,4,5', 1, CAST(N'2025-09-09T12:56:28.060' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10525, 1436, NULL, 2, N'4', 1, CAST(N'2025-09-09T13:27:40.167' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10526, 1436, NULL, 10, N'1,2,3,4,5', 1, CAST(N'2025-09-09T13:27:40.177' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10527, 1436, NULL, 48, N'1,2,3,4,5', 1, CAST(N'2025-09-09T13:27:40.180' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Mst_UserRight] ([URAID], [EmpID], [UserID], [MenuID], [RID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedBy], [DeletedOn]) VALUES (10528, 1436, NULL, 28, N'4', 1, CAST(N'2025-09-09T13:27:40.183' AS DateTime), NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Mst_UserRight] OFF
GO
