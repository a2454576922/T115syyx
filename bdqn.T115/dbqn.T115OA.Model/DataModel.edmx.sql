
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 07/04/2018 16:21:40
-- Generated from EDMX file: C:\Users\Administrator\Documents\Visual Studio 2013\Projects\bdqn.T115学校管理系统\dbqn.T115OA.Model\DataModel.edmx
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


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


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
    [DepartmentId] int  NOT NULL
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

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------