
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 07/08/2018 08:52:45
-- Generated from EDMX file: F:\Y2项目\T115syyx\bdqn.T115\bdqn.T115\dbqn.T115OA.Model\DataModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [aaaaaaa];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_DepartmentActionInfo_Department]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DepartmentActionInfo] DROP CONSTRAINT [FK_DepartmentActionInfo_Department];
GO
IF OBJECT_ID(N'[dbo].[FK_DepartmentActionInfo_ActionInfo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DepartmentActionInfo] DROP CONSTRAINT [FK_DepartmentActionInfo_ActionInfo];
GO
IF OBJECT_ID(N'[dbo].[FK_RoleActionInfo_Role]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RoleActionInfo] DROP CONSTRAINT [FK_RoleActionInfo_Role];
GO
IF OBJECT_ID(N'[dbo].[FK_RoleActionInfo_ActionInfo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RoleActionInfo] DROP CONSTRAINT [FK_RoleActionInfo_ActionInfo];
GO
IF OBJECT_ID(N'[dbo].[FK_MenuInfoActionInfo_MenuInfo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MenuInfoActionInfo] DROP CONSTRAINT [FK_MenuInfoActionInfo_MenuInfo];
GO
IF OBJECT_ID(N'[dbo].[FK_MenuInfoActionInfo_ActionInfo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MenuInfoActionInfo] DROP CONSTRAINT [FK_MenuInfoActionInfo_ActionInfo];
GO
IF OBJECT_ID(N'[dbo].[FK_UserRole_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserRole] DROP CONSTRAINT [FK_UserRole_User];
GO
IF OBJECT_ID(N'[dbo].[FK_UserRole_Role]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserRole] DROP CONSTRAINT [FK_UserRole_Role];
GO
IF OBJECT_ID(N'[dbo].[FK_UserActionInfo_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserActionInfo] DROP CONSTRAINT [FK_UserActionInfo_User];
GO
IF OBJECT_ID(N'[dbo].[FK_UserActionInfo_ActionInfo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserActionInfo] DROP CONSTRAINT [FK_UserActionInfo_ActionInfo];
GO
IF OBJECT_ID(N'[dbo].[FK_Consulteducation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Consult] DROP CONSTRAINT [FK_Consulteducation];
GO
IF OBJECT_ID(N'[dbo].[FK_SourceConsult]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Consult] DROP CONSTRAINT [FK_SourceConsult];
GO
IF OBJECT_ID(N'[dbo].[FK_StudentFamily]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Family] DROP CONSTRAINT [FK_StudentFamily];
GO
IF OBJECT_ID(N'[dbo].[FK_payStudent]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Student] DROP CONSTRAINT [FK_payStudent];
GO
IF OBJECT_ID(N'[dbo].[FK_ClassManagementStudent]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Student] DROP CONSTRAINT [FK_ClassManagementStudent];
GO
IF OBJECT_ID(N'[dbo].[FK_educationStudent]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Student] DROP CONSTRAINT [FK_educationStudent];
GO
IF OBJECT_ID(N'[dbo].[FK_ConsultDepartment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Consult] DROP CONSTRAINT [FK_ConsultDepartment];
GO
IF OBJECT_ID(N'[dbo].[FK_GradeSubject]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Subject] DROP CONSTRAINT [FK_GradeSubject];
GO
IF OBJECT_ID(N'[dbo].[FK_SubjectResultInfo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ResultInfo] DROP CONSTRAINT [FK_SubjectResultInfo];
GO
IF OBJECT_ID(N'[dbo].[FK_StudentFileResultInfo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ResultInfo] DROP CONSTRAINT [FK_StudentFileResultInfo];
GO
IF OBJECT_ID(N'[dbo].[FK_UserSalaryInfo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SalaryInfo] DROP CONSTRAINT [FK_UserSalaryInfo];
GO
IF OBJECT_ID(N'[dbo].[FK_PostInfoUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[User] DROP CONSTRAINT [FK_PostInfoUser];
GO
IF OBJECT_ID(N'[dbo].[FK_UserAttendanceInfo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AttendanceInfo] DROP CONSTRAINT [FK_UserAttendanceInfo];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[ActionInfo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ActionInfo];
GO
IF OBJECT_ID(N'[dbo].[Department]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Department];
GO
IF OBJECT_ID(N'[dbo].[Role]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Role];
GO
IF OBJECT_ID(N'[dbo].[MenuInfo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MenuInfo];
GO
IF OBJECT_ID(N'[dbo].[User]', 'U') IS NOT NULL
    DROP TABLE [dbo].[User];
GO
IF OBJECT_ID(N'[dbo].[Consult]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Consult];
GO
IF OBJECT_ID(N'[dbo].[education]', 'U') IS NOT NULL
    DROP TABLE [dbo].[education];
GO
IF OBJECT_ID(N'[dbo].[Family]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Family];
GO
IF OBJECT_ID(N'[dbo].[pay]', 'U') IS NOT NULL
    DROP TABLE [dbo].[pay];
GO
IF OBJECT_ID(N'[dbo].[Source]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Source];
GO
IF OBJECT_ID(N'[dbo].[Student]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Student];
GO
IF OBJECT_ID(N'[dbo].[ClassManagement]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ClassManagement];
GO
IF OBJECT_ID(N'[dbo].[Result]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Result];
GO
IF OBJECT_ID(N'[dbo].[ResultInfo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ResultInfo];
GO
IF OBJECT_ID(N'[dbo].[Subject]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Subject];
GO
IF OBJECT_ID(N'[dbo].[Grade]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Grade];
GO
IF OBJECT_ID(N'[dbo].[AttendanceInfo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AttendanceInfo];
GO
IF OBJECT_ID(N'[dbo].[SalaryInfo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SalaryInfo];
GO
IF OBJECT_ID(N'[dbo].[PostInfo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PostInfo];
GO
IF OBJECT_ID(N'[dbo].[DepartmentActionInfo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DepartmentActionInfo];
GO
IF OBJECT_ID(N'[dbo].[RoleActionInfo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RoleActionInfo];
GO
IF OBJECT_ID(N'[dbo].[MenuInfoActionInfo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MenuInfoActionInfo];
GO
IF OBJECT_ID(N'[dbo].[UserRole]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserRole];
GO
IF OBJECT_ID(N'[dbo].[UserActionInfo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserActionInfo];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'ActionInfo'
CREATE TABLE [dbo].[ActionInfo] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ActionName] nvarchar(max)  NOT NULL,
    [Url] nvarchar(max)  NOT NULL,
    [HttpMeThod] nvarchar(max)  NOT NULL,
    [Remark] nvarchar(max)  NULL,
    [SubTime] datetime  NOT NULL,
    [SubBy] int  NOT NULL,
    [State] int  NOT NULL
);
GO

-- Creating table 'Department'
CREATE TABLE [dbo].[Department] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [DepartmentName] nvarchar(max)  NOT NULL,
    [ParentId] int  NOT NULL,
    [TreePath] nvarchar(max)  NOT NULL,
    [Level] int  NOT NULL,
    [IsLeat] int  NOT NULL,
    [Remark] nvarchar(max)  NULL,
    [SubTime] datetime  NOT NULL,
    [State] int  NOT NULL,
    [SubBy] int  NOT NULL
);
GO

-- Creating table 'Role'
CREATE TABLE [dbo].[Role] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [RoleName] nvarchar(max)  NOT NULL,
    [Remark] nvarchar(max)  NULL,
    [SubTime] datetime  NOT NULL,
    [SubBy] int  NOT NULL,
    [State] int  NOT NULL
);
GO

-- Creating table 'MenuInfo'
CREATE TABLE [dbo].[MenuInfo] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [MenuName] nvarchar(max)  NOT NULL,
    [Icon] nvarchar(max)  NOT NULL,
    [Remark] nvarchar(max)  NULL,
    [State] int  NOT NULL,
    [SubBy] int  NOT NULL,
    [SubTime] datetime  NOT NULL,
    [ActionInfoId] int  NOT NULL,
    [Level] int  NOT NULL
);
GO

-- Creating table 'User'
CREATE TABLE [dbo].[User] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UserName] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [Mail] nvarchar(max)  NOT NULL,
    [Telphone] nvarchar(max)  NOT NULL,
    [State] int  NOT NULL,
    [SubBy] int  NOT NULL,
    [SubTime] datetime  NOT NULL,
    [Remark] nvarchar(max)  NULL,
    [DepartmentId] int  NOT NULL,
    [Identification] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [PostInfoId] int  NOT NULL
);
GO

-- Creating table 'Consult'
CREATE TABLE [dbo].[Consult] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [SourceId] int  NOT NULL,
    [remark] nvarchar(max)  NULL,
    [DelFlag] smallint  NULL,
    [SubBy] int  NULL,
    [subTiem] datetime  NULL,
    [stuName] nvarchar(max)  NULL,
    [sex] nvarchar(max)  NULL,
    [phone] nvarchar(max)  NULL,
    [address] nvarchar(max)  NULL,
    [major] nvarchar(max)  NULL,
    [industry] nvarchar(max)  NULL,
    [basis] nvarchar(max)  NULL,
    [FavoriteIndusery] nvarchar(max)  NULL,
    [FavoriteJob] nvarchar(max)  NULL,
    [CurrentSchool] nvarchar(max)  NULL,
    [grade] nvarchar(max)  NULL,
    [hope] bit  NULL,
    [DepartmentId] int  NOT NULL,
    [Statedoor] nvarchar(max)  NULL,
    [referrer] nvarchar(max)  NULL,
    [education_Id] int  NOT NULL
);
GO

-- Creating table 'education'
CREATE TABLE [dbo].[education] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Family'
CREATE TABLE [dbo].[Family] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [StudentId] int  NOT NULL,
    [relaction] nvarchar(max)  NOT NULL,
    [phone] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'pay'
CREATE TABLE [dbo].[pay] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [payName] nvarchar(max)  NOT NULL,
    [Time] datetime  NOT NULL
);
GO

-- Creating table 'Source'
CREATE TABLE [dbo].[Source] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [SourceName] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Student'
CREATE TABLE [dbo].[Student] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [payId] int  NOT NULL,
    [ClassManagementId] int  NOT NULL,
    [educationId] int  NOT NULL,
    [Registrationtime] nvarchar(max)  NULL,
    [Name] nvarchar(max)  NULL,
    [Namepinyin] nvarchar(max)  NULL,
    [Sex] nvarchar(max)  NULL,
    [Dateofbirth] datetime  NULL,
    [Nation] nvarchar(max)  NULL,
    [IDnumber] nvarchar(max)  NULL,
    [IDaddress] nvarchar(max)  NULL,
    [XAddress] nvarchar(max)  NULL,
    [ISaccommodation] bit  NULL,
    [PhoNumber] nvarchar(max)  NULL,
    [Sourcesofcost] float  NULL,
    [QQ] nvarchar(max)  NULL,
    [Guardianname] nvarchar(max)  NULL,
    [GuardianPhone] nvarchar(max)  NULL,
    [Wechat] nvarchar(max)  NULL,
    [Interest] nvarchar(max)  NULL,
    [Speciality] nvarchar(max)  NULL,
    [OWEP] nvarchar(max)  NULL,
    [Other] nvarchar(max)  NULL,
    [Programming] nvarchar(max)  NULL,
    [Intrnet] nvarchar(max)  NULL,
    [correation] nvarchar(max)  NULL,
    [operation] nvarchar(max)  NULL,
    [Readingstate] nvarchar(max)  NULL,
    [manage] bit  NULL,
    [school] nvarchar(max)  NULL,
    [inclass] nvarchar(max)  NULL,
    [TimeGroad] datetime  NULL,
    [recommend] bit  NULL,
    [remark] nvarchar(max)  NULL,
    [DelFlag] int  NULL,
    [SubBy] int  NULL,
    [subTiem] datetime  NULL,
    [entranceState] nvarchar(max)  NULL
);
GO

-- Creating table 'ClassManagement'
CREATE TABLE [dbo].[ClassManagement] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ClassId] nvarchar(max)  NOT NULL,
    [subTiem] datetime  NOT NULL,
    [SubBy] int  NOT NULL,
    [DelFlag] int  NOT NULL,
    [remark] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Result'
CREATE TABLE [dbo].[Result] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'ResultInfo'
CREATE TABLE [dbo].[ResultInfo] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [StudentResult] int  NOT NULL,
    [subTiem] datetime  NOT NULL,
    [SubjectId] int  NOT NULL,
    [StudentFileId] int  NOT NULL
);
GO

-- Creating table 'Subject'
CREATE TABLE [dbo].[Subject] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [SubjectName] nvarchar(max)  NOT NULL,
    [ClassHour] int  NOT NULL,
    [GradeId] int  NOT NULL
);
GO

-- Creating table 'Grade'
CREATE TABLE [dbo].[Grade] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [GradeName] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'AttendanceInfo'
CREATE TABLE [dbo].[AttendanceInfo] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [DataTime] datetime  NOT NULL,
    [Days] nvarchar(max)  NOT NULL,
    [Qwork] nvarchar(max)  NOT NULL,
    [Qabsent] nvarchar(max)  NOT NULL,
    [Qearly] nvarchar(max)  NOT NULL,
    [Qover] nvarchar(max)  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'SalaryInfo'
CREATE TABLE [dbo].[SalaryInfo] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [WorkTime] datetime  NOT NULL,
    [BaseMoney] decimal(18,0)  NOT NULL,
    [BonusMoney] decimal(18,0)  NOT NULL,
    [AmerceMoney] decimal(18,0)  NOT NULL,
    [LaborageMoney] decimal(18,0)  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'PostInfo'
CREATE TABLE [dbo].[PostInfo] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [PostName] nvarchar(max)  NOT NULL,
    [SalaryMoney] decimal(18,0)  NOT NULL
);
GO

-- Creating table 'DepartmentActionInfo'
CREATE TABLE [dbo].[DepartmentActionInfo] (
    [Department_Id] int  NOT NULL,
    [ActionInfo_Id] int  NOT NULL
);
GO

-- Creating table 'RoleActionInfo'
CREATE TABLE [dbo].[RoleActionInfo] (
    [Role_Id] int  NOT NULL,
    [ActionInfo_Id] int  NOT NULL
);
GO

-- Creating table 'MenuInfoActionInfo'
CREATE TABLE [dbo].[MenuInfoActionInfo] (
    [MenuInfo_Id] int  NOT NULL,
    [ActionInfo_Id] int  NOT NULL
);
GO

-- Creating table 'UserRole'
CREATE TABLE [dbo].[UserRole] (
    [User_Id] int  NOT NULL,
    [Role_Id] int  NOT NULL
);
GO

-- Creating table 'UserActionInfo'
CREATE TABLE [dbo].[UserActionInfo] (
    [User_Id] int  NOT NULL,
    [ActionInfo_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'ActionInfo'
ALTER TABLE [dbo].[ActionInfo]
ADD CONSTRAINT [PK_ActionInfo]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Department'
ALTER TABLE [dbo].[Department]
ADD CONSTRAINT [PK_Department]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Role'
ALTER TABLE [dbo].[Role]
ADD CONSTRAINT [PK_Role]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'MenuInfo'
ALTER TABLE [dbo].[MenuInfo]
ADD CONSTRAINT [PK_MenuInfo]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'User'
ALTER TABLE [dbo].[User]
ADD CONSTRAINT [PK_User]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Consult'
ALTER TABLE [dbo].[Consult]
ADD CONSTRAINT [PK_Consult]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'education'
ALTER TABLE [dbo].[education]
ADD CONSTRAINT [PK_education]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Family'
ALTER TABLE [dbo].[Family]
ADD CONSTRAINT [PK_Family]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'pay'
ALTER TABLE [dbo].[pay]
ADD CONSTRAINT [PK_pay]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Source'
ALTER TABLE [dbo].[Source]
ADD CONSTRAINT [PK_Source]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Student'
ALTER TABLE [dbo].[Student]
ADD CONSTRAINT [PK_Student]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ClassManagement'
ALTER TABLE [dbo].[ClassManagement]
ADD CONSTRAINT [PK_ClassManagement]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Result'
ALTER TABLE [dbo].[Result]
ADD CONSTRAINT [PK_Result]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ResultInfo'
ALTER TABLE [dbo].[ResultInfo]
ADD CONSTRAINT [PK_ResultInfo]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Subject'
ALTER TABLE [dbo].[Subject]
ADD CONSTRAINT [PK_Subject]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Grade'
ALTER TABLE [dbo].[Grade]
ADD CONSTRAINT [PK_Grade]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AttendanceInfo'
ALTER TABLE [dbo].[AttendanceInfo]
ADD CONSTRAINT [PK_AttendanceInfo]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SalaryInfo'
ALTER TABLE [dbo].[SalaryInfo]
ADD CONSTRAINT [PK_SalaryInfo]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PostInfo'
ALTER TABLE [dbo].[PostInfo]
ADD CONSTRAINT [PK_PostInfo]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Department_Id], [ActionInfo_Id] in table 'DepartmentActionInfo'
ALTER TABLE [dbo].[DepartmentActionInfo]
ADD CONSTRAINT [PK_DepartmentActionInfo]
    PRIMARY KEY CLUSTERED ([Department_Id], [ActionInfo_Id] ASC);
GO

-- Creating primary key on [Role_Id], [ActionInfo_Id] in table 'RoleActionInfo'
ALTER TABLE [dbo].[RoleActionInfo]
ADD CONSTRAINT [PK_RoleActionInfo]
    PRIMARY KEY CLUSTERED ([Role_Id], [ActionInfo_Id] ASC);
GO

-- Creating primary key on [MenuInfo_Id], [ActionInfo_Id] in table 'MenuInfoActionInfo'
ALTER TABLE [dbo].[MenuInfoActionInfo]
ADD CONSTRAINT [PK_MenuInfoActionInfo]
    PRIMARY KEY CLUSTERED ([MenuInfo_Id], [ActionInfo_Id] ASC);
GO

-- Creating primary key on [User_Id], [Role_Id] in table 'UserRole'
ALTER TABLE [dbo].[UserRole]
ADD CONSTRAINT [PK_UserRole]
    PRIMARY KEY CLUSTERED ([User_Id], [Role_Id] ASC);
GO

-- Creating primary key on [User_Id], [ActionInfo_Id] in table 'UserActionInfo'
ALTER TABLE [dbo].[UserActionInfo]
ADD CONSTRAINT [PK_UserActionInfo]
    PRIMARY KEY CLUSTERED ([User_Id], [ActionInfo_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Department_Id] in table 'DepartmentActionInfo'
ALTER TABLE [dbo].[DepartmentActionInfo]
ADD CONSTRAINT [FK_DepartmentActionInfo_Department]
    FOREIGN KEY ([Department_Id])
    REFERENCES [dbo].[Department]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ActionInfo_Id] in table 'DepartmentActionInfo'
ALTER TABLE [dbo].[DepartmentActionInfo]
ADD CONSTRAINT [FK_DepartmentActionInfo_ActionInfo]
    FOREIGN KEY ([ActionInfo_Id])
    REFERENCES [dbo].[ActionInfo]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DepartmentActionInfo_ActionInfo'
CREATE INDEX [IX_FK_DepartmentActionInfo_ActionInfo]
ON [dbo].[DepartmentActionInfo]
    ([ActionInfo_Id]);
GO

-- Creating foreign key on [Role_Id] in table 'RoleActionInfo'
ALTER TABLE [dbo].[RoleActionInfo]
ADD CONSTRAINT [FK_RoleActionInfo_Role]
    FOREIGN KEY ([Role_Id])
    REFERENCES [dbo].[Role]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ActionInfo_Id] in table 'RoleActionInfo'
ALTER TABLE [dbo].[RoleActionInfo]
ADD CONSTRAINT [FK_RoleActionInfo_ActionInfo]
    FOREIGN KEY ([ActionInfo_Id])
    REFERENCES [dbo].[ActionInfo]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_RoleActionInfo_ActionInfo'
CREATE INDEX [IX_FK_RoleActionInfo_ActionInfo]
ON [dbo].[RoleActionInfo]
    ([ActionInfo_Id]);
GO

-- Creating foreign key on [MenuInfo_Id] in table 'MenuInfoActionInfo'
ALTER TABLE [dbo].[MenuInfoActionInfo]
ADD CONSTRAINT [FK_MenuInfoActionInfo_MenuInfo]
    FOREIGN KEY ([MenuInfo_Id])
    REFERENCES [dbo].[MenuInfo]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ActionInfo_Id] in table 'MenuInfoActionInfo'
ALTER TABLE [dbo].[MenuInfoActionInfo]
ADD CONSTRAINT [FK_MenuInfoActionInfo_ActionInfo]
    FOREIGN KEY ([ActionInfo_Id])
    REFERENCES [dbo].[ActionInfo]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_MenuInfoActionInfo_ActionInfo'
CREATE INDEX [IX_FK_MenuInfoActionInfo_ActionInfo]
ON [dbo].[MenuInfoActionInfo]
    ([ActionInfo_Id]);
GO

-- Creating foreign key on [User_Id] in table 'UserRole'
ALTER TABLE [dbo].[UserRole]
ADD CONSTRAINT [FK_UserRole_User]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[User]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Role_Id] in table 'UserRole'
ALTER TABLE [dbo].[UserRole]
ADD CONSTRAINT [FK_UserRole_Role]
    FOREIGN KEY ([Role_Id])
    REFERENCES [dbo].[Role]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserRole_Role'
CREATE INDEX [IX_FK_UserRole_Role]
ON [dbo].[UserRole]
    ([Role_Id]);
GO

-- Creating foreign key on [User_Id] in table 'UserActionInfo'
ALTER TABLE [dbo].[UserActionInfo]
ADD CONSTRAINT [FK_UserActionInfo_User]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[User]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ActionInfo_Id] in table 'UserActionInfo'
ALTER TABLE [dbo].[UserActionInfo]
ADD CONSTRAINT [FK_UserActionInfo_ActionInfo]
    FOREIGN KEY ([ActionInfo_Id])
    REFERENCES [dbo].[ActionInfo]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserActionInfo_ActionInfo'
CREATE INDEX [IX_FK_UserActionInfo_ActionInfo]
ON [dbo].[UserActionInfo]
    ([ActionInfo_Id]);
GO

-- Creating foreign key on [education_Id] in table 'Consult'
ALTER TABLE [dbo].[Consult]
ADD CONSTRAINT [FK_Consulteducation]
    FOREIGN KEY ([education_Id])
    REFERENCES [dbo].[education]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Consulteducation'
CREATE INDEX [IX_FK_Consulteducation]
ON [dbo].[Consult]
    ([education_Id]);
GO

-- Creating foreign key on [SourceId] in table 'Consult'
ALTER TABLE [dbo].[Consult]
ADD CONSTRAINT [FK_SourceConsult]
    FOREIGN KEY ([SourceId])
    REFERENCES [dbo].[Source]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SourceConsult'
CREATE INDEX [IX_FK_SourceConsult]
ON [dbo].[Consult]
    ([SourceId]);
GO

-- Creating foreign key on [StudentId] in table 'Family'
ALTER TABLE [dbo].[Family]
ADD CONSTRAINT [FK_StudentFamily]
    FOREIGN KEY ([StudentId])
    REFERENCES [dbo].[Student]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_StudentFamily'
CREATE INDEX [IX_FK_StudentFamily]
ON [dbo].[Family]
    ([StudentId]);
GO

-- Creating foreign key on [payId] in table 'Student'
ALTER TABLE [dbo].[Student]
ADD CONSTRAINT [FK_payStudent]
    FOREIGN KEY ([payId])
    REFERENCES [dbo].[pay]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_payStudent'
CREATE INDEX [IX_FK_payStudent]
ON [dbo].[Student]
    ([payId]);
GO

-- Creating foreign key on [ClassManagementId] in table 'Student'
ALTER TABLE [dbo].[Student]
ADD CONSTRAINT [FK_ClassManagementStudent]
    FOREIGN KEY ([ClassManagementId])
    REFERENCES [dbo].[ClassManagement]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ClassManagementStudent'
CREATE INDEX [IX_FK_ClassManagementStudent]
ON [dbo].[Student]
    ([ClassManagementId]);
GO

-- Creating foreign key on [educationId] in table 'Student'
ALTER TABLE [dbo].[Student]
ADD CONSTRAINT [FK_educationStudent]
    FOREIGN KEY ([educationId])
    REFERENCES [dbo].[education]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_educationStudent'
CREATE INDEX [IX_FK_educationStudent]
ON [dbo].[Student]
    ([educationId]);
GO

-- Creating foreign key on [DepartmentId] in table 'Consult'
ALTER TABLE [dbo].[Consult]
ADD CONSTRAINT [FK_ConsultDepartment]
    FOREIGN KEY ([DepartmentId])
    REFERENCES [dbo].[Department]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ConsultDepartment'
CREATE INDEX [IX_FK_ConsultDepartment]
ON [dbo].[Consult]
    ([DepartmentId]);
GO

-- Creating foreign key on [GradeId] in table 'Subject'
ALTER TABLE [dbo].[Subject]
ADD CONSTRAINT [FK_GradeSubject]
    FOREIGN KEY ([GradeId])
    REFERENCES [dbo].[Grade]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_GradeSubject'
CREATE INDEX [IX_FK_GradeSubject]
ON [dbo].[Subject]
    ([GradeId]);
GO

-- Creating foreign key on [SubjectId] in table 'ResultInfo'
ALTER TABLE [dbo].[ResultInfo]
ADD CONSTRAINT [FK_SubjectResultInfo]
    FOREIGN KEY ([SubjectId])
    REFERENCES [dbo].[Subject]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SubjectResultInfo'
CREATE INDEX [IX_FK_SubjectResultInfo]
ON [dbo].[ResultInfo]
    ([SubjectId]);
GO

-- Creating foreign key on [StudentFileId] in table 'ResultInfo'
ALTER TABLE [dbo].[ResultInfo]
ADD CONSTRAINT [FK_StudentFileResultInfo]
    FOREIGN KEY ([StudentFileId])
    REFERENCES [dbo].[Student]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_StudentFileResultInfo'
CREATE INDEX [IX_FK_StudentFileResultInfo]
ON [dbo].[ResultInfo]
    ([StudentFileId]);
GO

-- Creating foreign key on [UserId] in table 'SalaryInfo'
ALTER TABLE [dbo].[SalaryInfo]
ADD CONSTRAINT [FK_UserSalaryInfo]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[User]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserSalaryInfo'
CREATE INDEX [IX_FK_UserSalaryInfo]
ON [dbo].[SalaryInfo]
    ([UserId]);
GO

-- Creating foreign key on [PostInfoId] in table 'User'
ALTER TABLE [dbo].[User]
ADD CONSTRAINT [FK_PostInfoUser]
    FOREIGN KEY ([PostInfoId])
    REFERENCES [dbo].[PostInfo]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PostInfoUser'
CREATE INDEX [IX_FK_PostInfoUser]
ON [dbo].[User]
    ([PostInfoId]);
GO

-- Creating foreign key on [UserId] in table 'AttendanceInfo'
ALTER TABLE [dbo].[AttendanceInfo]
ADD CONSTRAINT [FK_UserAttendanceInfo]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[User]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserAttendanceInfo'
CREATE INDEX [IX_FK_UserAttendanceInfo]
ON [dbo].[AttendanceInfo]
    ([UserId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------