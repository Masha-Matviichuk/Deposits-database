USE [DEPOSITS]
GO
/****** Object:  Trigger [dbo].[obmez_suma]    Script Date: 14.05.2021 13:59:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER TRIGGER [dbo].[obmez_suma] 
   ON  [dbo].[dogovir] 
   FOR INSERT
AS 
IF @@ROWCOUNT=1
BEGIN
  IF EXISTS(SELECT *
      FROM inserted
      WHERE inserted.sum_vklad  <ALL(SELECT
        min_suma  
    FROM dbo.[dep.prog]
	INNER JOIN dbo.dogovir ON
	dbo.dogovir.kod_prog=dbo.[dep.prog].kod_prog))
    BEGIN
      ROLLBACK TRAN
    PRINT 
	  'Відмінa: сума менша мінімальної суми вкладу'

    END
END