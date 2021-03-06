/*
   October 15, 201615:56:08
   User: DavidCashion
   Server: davidcashioncore.database.windows.net
   Database: DavidCashionCoreDB
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.UserInformation
	(
	UserID uniqueidentifier NOT NULL,
	LastName nchar(30) NOT NULL,
	FirstName nchar(30) NOT NULL,
	LockedOut int NOT NULL,
	CanReset int NOT NULL,
	Picture image NULL,
	EmailAddress nchar(128) NULL,
	CellCountry nchar(10) NOT NULL,
	CellAreaCode nchar(10) NOT NULL,
	CellPrefix nchar(10) NOT NULL,
	CellNumber nchar(10) NOT NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
DECLARE @v sql_variant 
SET @v = N'Website User Information Table'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'UserInformation', NULL, NULL
GO
ALTER TABLE dbo.UserInformation ADD CONSTRAINT
	PK_UserInformation PRIMARY KEY CLUSTERED 
	(
	UserID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.UserInformation SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
