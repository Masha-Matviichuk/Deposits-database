-- ================================================
-- Template generated from Template Explorer using:
-- Create Trigger (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- See additional Create Trigger templates for more
-- examples of different Trigger statements.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER obmez_suma 
   ON  dbo.dogovir 
   FOR INSERT
AS 
IF @@ROWCOUNT=1
BEGIN
  IF NOT EXISTS(SELECT *
      FROM inserted
      WHERE -inserted.sum_vklad  <ALL(SELECT
        dbo.[dep.prog].min_suma  
    FROM  dbo.[dep.prog]))
    BEGIN
      ROLLBACK TRAN
    PRINT 
	  'Відмінa: сума менша мінімальної суми вкладу'

    END
END