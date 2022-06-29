USE [DEPOSITS]
GO
/****** Object:  Trigger [dbo].[zaborona_delete]    Script Date: 14.05.2021 13:26:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER TRIGGER [dbo].[zaborona_delete] 
   ON  [dbo].[dogovir] 
   AFTER DELETE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	if (SELECT data_zak from deleted) <= '2021-11-21'
	rollback
	print 'Видалення заборонено'
    -- Insert statements for trigger here

END
