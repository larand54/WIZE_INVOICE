if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_DeliveryShipmentDeliveryMessageReference_DeliveryMessageShipment]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[DeliveryShipmentDeliveryMessageReference] DROP CONSTRAINT FK_DeliveryShipmentDeliveryMessageReference_DeliveryMessageShipment
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_ProductIdentifier_DeliveryMessageShipment]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[ProductIdentifier] DROP CONSTRAINT FK_ProductIdentifier_DeliveryMessageShipment
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Transportpackageinformation_DeliveryMessageShipment]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Transportpackageinformation] DROP CONSTRAINT FK_Transportpackageinformation_DeliveryMessageShipment
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_DeliveryMessageReference_DeliveryMessageWoodHeader]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[DeliveryMessageReference] DROP CONSTRAINT FK_DeliveryMessageReference_DeliveryMessageWoodHeader
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_DeliveryMessageShipment_DeliveryMessageWoodHeader]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[DeliveryMessageShipment] DROP CONSTRAINT FK_DeliveryMessageShipment_DeliveryMessageWoodHeader
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_NameAddress_DeliveryMessageWoodHeader]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[NameAddress] DROP CONSTRAINT FK_NameAddress_DeliveryMessageWoodHeader
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_PartyIdentifier_DeliveryMessageWoodHeader]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[PartyIdentifier] DROP CONSTRAINT FK_PartyIdentifier_DeliveryMessageWoodHeader
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_CommonContact_NameAddress]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[CommonContact] DROP CONSTRAINT FK_CommonContact_NameAddress
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_InformationalQuantity_Transportpackageinformation]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[InformationalQuantity] DROP CONSTRAINT FK_InformationalQuantity_Transportpackageinformation
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_LengthSpecification_Transportpackageinformation]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[LengthSpecification] DROP CONSTRAINT FK_LengthSpecification_Transportpackageinformation
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CommonContact]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[CommonContact]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DeliveryMessageReference]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DeliveryMessageReference]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DeliveryMessageShipment]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DeliveryMessageShipment]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DeliveryMessageWoodHeader]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DeliveryMessageWoodHeader]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DeliveryShipmentDeliveryMessageReference]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DeliveryShipmentDeliveryMessageReference]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[InformationalQuantity]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[InformationalQuantity]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[LengthSpecification]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[LengthSpecification]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[NameAddress]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[NameAddress]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PartyIdentifier]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PartyIdentifier]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ProductIdentifier]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[ProductIdentifier]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Transportpackageinformation]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Transportpackageinformation]
GO

CREATE TABLE [dbo].[CommonContact] (
	[DeliveryMessageNumber] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[PartyType] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[CommonContactNo] [int] NOT NULL ,
	[ContactType] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ContactName] [varchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Telephone] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MobilePhone] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Email] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Fax] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DeliveryMessageReference] (
	[DeliveryMessageNumber] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[DeliveryMessageReference] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[DeliveryMessageReferenceType] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DeliveryMessageShipment] (
	[DeliveryMessageNumber] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[ShipmentID] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ShipmentIDType] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ProductGroupID] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ProductGroupIDType] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DeliveryShipmentLineItemNumber] [int] NOT NULL ,
	[ProductIdentifier] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ProductIdentifierType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Agency] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ProductDescription] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SpeciesType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[GradingRule] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[GradeCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[GradeName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[WidthValue] [decimal](18, 1) NULL ,
	[WidthUOM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ThicknessValue] [decimal](18, 1) NULL ,
	[ThicknessUOM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ManufacturingProcessType] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ExlogValue] [image] NULL ,
	[ExlogUOM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[DeliveryMessageWoodHeader] (
	[DeliveryMessageType] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DeliveryMessageStatusType] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Reissued] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Language] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DeliveryMessageNumber] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[DeliveryMessageDate] [datetime] NULL ,
	[IncoTermsLocation] [varchar] (45) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[IncoTerms] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[AdditionalText] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TotalNumberOfShipments] [int] NULL ,
	[TotalQuantityQuantityType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TotalQuantityValue] [decimal](18, 3) NULL ,
	[TotalQuantityUOM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DeliveryShipmentDeliveryMessageReference] (
	[DeliveryMessageNumber] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[DeliveryShipmentLineItemNumber] [int] NOT NULL ,
	[DeliveryMessageReference] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[DeliveryMessageReferenceType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[InformationalQuantity] (
	[DeliveryMessageNumber] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[DeliveryShipmentLineItemNumber] [int] NOT NULL ,
	[Identifier] [varchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[InformationalQuantityType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[InformationalQuantityValue] [decimal](18, 3) NULL ,
	[InformationalQuantityUOM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[LengthSpecification] (
	[DeliveryMessageNumber] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[DeliveryShipmentLineItemNumber] [int] NOT NULL ,
	[Identifier] [varchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[LengthCategory] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[TotalNumberOfUnitsValue] [decimal](18, 3) NULL ,
	[TotalNumberOfUnitsUOM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[NameAddress] (
	[DeliveryMessageNumber] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[PartyType] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Name1] [varchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Name2] [varchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Name3] [varchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Address1] [varchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Address2] [varchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Address3] [varchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Address4] [varchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[City] [varchar] (45) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[County] [varchar] (45) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[StateOrProvince] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PostalCode] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Country] [varchar] (72) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ISOcountryCode] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PartyIdentifier] (
	[DeliveryMessageNumber] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[PartyType] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[PartyIdentifier] [varchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[PartyIdentifierType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ProductIdentifier] (
	[DeliveryMessageNumber] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[DeliveryShipmentLineItemNumber] [int] NOT NULL ,
	[ProductIdentifier] [varchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[ProductIdentifierType] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Agency] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Transportpackageinformation] (
	[DeliveryMessageNumber] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[DeliveryShipmentLineItemNumber] [int] NOT NULL ,
	[PackageType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Identifier] [varchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[IdentifierCodeType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[IdentifierType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ItemCountValue] [decimal](18, 1) NULL ,
	[ItemCountUOM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[QuantityType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[QuantityValue] [decimal](18, 3) NULL ,
	[QuantityUOM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CommonContact] WITH NOCHECK ADD 
	CONSTRAINT [PK_CommonContact] PRIMARY KEY  CLUSTERED 
	(
		[DeliveryMessageNumber],
		[PartyType],
		[CommonContactNo]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DeliveryMessageReference] WITH NOCHECK ADD 
	CONSTRAINT [PK_DeliveryMessageReference] PRIMARY KEY  CLUSTERED 
	(
		[DeliveryMessageNumber],
		[DeliveryMessageReference]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DeliveryMessageShipment] WITH NOCHECK ADD 
	CONSTRAINT [PK_DeliveryMessageShipment] PRIMARY KEY  CLUSTERED 
	(
		[DeliveryMessageNumber],
		[DeliveryShipmentLineItemNumber]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DeliveryMessageWoodHeader] WITH NOCHECK ADD 
	CONSTRAINT [PK_DeliveryMessageWoodHeader] PRIMARY KEY  CLUSTERED 
	(
		[DeliveryMessageNumber]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DeliveryShipmentDeliveryMessageReference] WITH NOCHECK ADD 
	CONSTRAINT [PK_DeliveryShipmentDeliveryMessageReference] PRIMARY KEY  CLUSTERED 
	(
		[DeliveryMessageNumber],
		[DeliveryShipmentLineItemNumber],
		[DeliveryMessageReference]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[InformationalQuantity] WITH NOCHECK ADD 
	CONSTRAINT [PK_InformationalQuantity] PRIMARY KEY  CLUSTERED 
	(
		[DeliveryMessageNumber],
		[DeliveryShipmentLineItemNumber],
		[Identifier],
		[InformationalQuantityType]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[LengthSpecification] WITH NOCHECK ADD 
	CONSTRAINT [PK_LengthSpecification] PRIMARY KEY  CLUSTERED 
	(
		[DeliveryMessageNumber],
		[DeliveryShipmentLineItemNumber],
		[Identifier],
		[LengthCategory]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[NameAddress] WITH NOCHECK ADD 
	CONSTRAINT [PK_NameAddress] PRIMARY KEY  CLUSTERED 
	(
		[DeliveryMessageNumber],
		[PartyType]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PartyIdentifier] WITH NOCHECK ADD 
	CONSTRAINT [PK_PartyIdentifier] PRIMARY KEY  CLUSTERED 
	(
		[DeliveryMessageNumber],
		[PartyType],
		[PartyIdentifier],
		[PartyIdentifierType]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[ProductIdentifier] WITH NOCHECK ADD 
	CONSTRAINT [PK_ProductIdentifier] PRIMARY KEY  CLUSTERED 
	(
		[DeliveryMessageNumber],
		[DeliveryShipmentLineItemNumber],
		[ProductIdentifier],
		[ProductIdentifierType],
		[Agency]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Transportpackageinformation] WITH NOCHECK ADD 
	CONSTRAINT [PK_Transportpackageinformation] PRIMARY KEY  CLUSTERED 
	(
		[DeliveryMessageNumber],
		[DeliveryShipmentLineItemNumber],
		[Identifier]
	)  ON [PRIMARY] 
GO

 CREATE  INDEX [IX_DeliveryMessageShipment] ON [dbo].[DeliveryMessageShipment]([DeliveryShipmentLineItemNumber]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CommonContact] ADD 
	CONSTRAINT [FK_CommonContact_NameAddress] FOREIGN KEY 
	(
		[DeliveryMessageNumber],
		[PartyType]
	) REFERENCES [dbo].[NameAddress] (
		[DeliveryMessageNumber],
		[PartyType]
	) ON DELETE CASCADE 
GO

ALTER TABLE [dbo].[DeliveryMessageReference] ADD 
	CONSTRAINT [FK_DeliveryMessageReference_DeliveryMessageWoodHeader] FOREIGN KEY 
	(
		[DeliveryMessageNumber]
	) REFERENCES [dbo].[DeliveryMessageWoodHeader] (
		[DeliveryMessageNumber]
	) ON DELETE CASCADE 
GO

ALTER TABLE [dbo].[DeliveryMessageShipment] ADD 
	CONSTRAINT [FK_DeliveryMessageShipment_DeliveryMessageWoodHeader] FOREIGN KEY 
	(
		[DeliveryMessageNumber]
	) REFERENCES [dbo].[DeliveryMessageWoodHeader] (
		[DeliveryMessageNumber]
	) ON DELETE CASCADE 
GO

ALTER TABLE [dbo].[DeliveryShipmentDeliveryMessageReference] ADD 
	CONSTRAINT [FK_DeliveryShipmentDeliveryMessageReference_DeliveryMessageShipment] FOREIGN KEY 
	(
		[DeliveryMessageNumber],
		[DeliveryShipmentLineItemNumber]
	) REFERENCES [dbo].[DeliveryMessageShipment] (
		[DeliveryMessageNumber],
		[DeliveryShipmentLineItemNumber]
	) ON DELETE CASCADE 
GO

ALTER TABLE [dbo].[InformationalQuantity] ADD 
	CONSTRAINT [FK_InformationalQuantity_Transportpackageinformation] FOREIGN KEY 
	(
		[DeliveryMessageNumber],
		[DeliveryShipmentLineItemNumber],
		[Identifier]
	) REFERENCES [dbo].[Transportpackageinformation] (
		[DeliveryMessageNumber],
		[DeliveryShipmentLineItemNumber],
		[Identifier]
	) ON DELETE CASCADE 
GO

ALTER TABLE [dbo].[LengthSpecification] ADD 
	CONSTRAINT [FK_LengthSpecification_Transportpackageinformation] FOREIGN KEY 
	(
		[DeliveryMessageNumber],
		[DeliveryShipmentLineItemNumber],
		[Identifier]
	) REFERENCES [dbo].[Transportpackageinformation] (
		[DeliveryMessageNumber],
		[DeliveryShipmentLineItemNumber],
		[Identifier]
	) ON DELETE CASCADE 
GO

ALTER TABLE [dbo].[NameAddress] ADD 
	CONSTRAINT [FK_NameAddress_DeliveryMessageWoodHeader] FOREIGN KEY 
	(
		[DeliveryMessageNumber]
	) REFERENCES [dbo].[DeliveryMessageWoodHeader] (
		[DeliveryMessageNumber]
	) ON DELETE CASCADE 
GO

ALTER TABLE [dbo].[PartyIdentifier] ADD 
	CONSTRAINT [FK_PartyIdentifier_DeliveryMessageWoodHeader] FOREIGN KEY 
	(
		[DeliveryMessageNumber]
	) REFERENCES [dbo].[DeliveryMessageWoodHeader] (
		[DeliveryMessageNumber]
	) ON DELETE CASCADE 
GO

ALTER TABLE [dbo].[ProductIdentifier] ADD 
	CONSTRAINT [FK_ProductIdentifier_DeliveryMessageShipment] FOREIGN KEY 
	(
		[DeliveryMessageNumber],
		[DeliveryShipmentLineItemNumber]
	) REFERENCES [dbo].[DeliveryMessageShipment] (
		[DeliveryMessageNumber],
		[DeliveryShipmentLineItemNumber]
	) ON DELETE CASCADE 
GO

ALTER TABLE [dbo].[Transportpackageinformation] ADD 
	CONSTRAINT [FK_Transportpackageinformation_DeliveryMessageShipment] FOREIGN KEY 
	(
		[DeliveryMessageNumber],
		[DeliveryShipmentLineItemNumber]
	) REFERENCES [dbo].[DeliveryMessageShipment] (
		[DeliveryMessageNumber],
		[DeliveryShipmentLineItemNumber]
	) ON DELETE CASCADE 
GO

