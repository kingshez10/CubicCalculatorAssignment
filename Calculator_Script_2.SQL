USE [CalculatorDianostic]
GO
/****** Object:  Table [dbo].[Diagnostic]    Script Date: 20/08/2019 1:19:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Diagnostic](
	[DiagnosticId] [int] IDENTITY(1,1) NOT NULL,
	[Message] [varchar](max) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Diagnostic] PRIMARY KEY CLUSTERED 
(
	[DiagnosticId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[usp_SaveDiagnosticMessage]    Script Date: 20/08/2019 1:19:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_SaveDiagnosticMessage] 
	@DiagnoisticMessage varchar(max)
AS
BEGIN
     INSERT INTO Diagnostic(Message,CreatedOn)
	 VALUES(@DiagnoisticMessage,GETUTCDATE())
END

GO
