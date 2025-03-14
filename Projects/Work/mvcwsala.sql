USE [MVCWala]
GO
/****** Object:  StoredProcedure [dbo].[InsertInfo]    Script Date: 12/18/2019 6:31:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertInfo]
	@Name nvarchar(max),
	@Desc nvarchar(max),
	@Type nvarchar(max)
AS
	INSERT INTO Info VALUES (@Name,@Desc,@Type,1)
RETURN 0

GO
/****** Object:  Table [dbo].[Info]    Script Date: 12/18/2019 6:31:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Info](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Info] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
