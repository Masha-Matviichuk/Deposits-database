SELECT dbo.dogovir.nomer_dogovir AS 'Договір', dbo.dogovir.kod_vkladnuk AS 'Вкладник', dbo.dogovir.sum_vklad AS 'Залишок вкладу (1)', 
dbo.[dep.prog].vid AS 'Відсоток', dbo.[dep.prog].kod_valuta AS 'Валюта', 
(dbo.dogovir.sum_vklad*dbo.[dep.prog].vid/365*30) AS 'Нараховані відсотки', 
((dbo.dogovir.sum_vklad*dbo.[dep.prog].vid/365*30)*0.195) AS 'Оподаткування', 
CASE
  WHEN dbo.dogovir.iban_vids IS NULL 
    THEN (dbo.dogovir.sum_vklad+(dbo.dogovir.sum_vklad*dbo.[dep.prog].vid/365*30)-(dbo.dogovir.sum_vklad*dbo.[dep.prog].vid/365*30)*0.195)
  ELSE dbo.dogovir.sum_vklad
END AS 'Залишок вкладу (2)'
INTO dbo.roz
FROM dbo.dogovir
     INNER JOIN dbo.[dep.prog] ON
	 dbo.dogovir.kod_prog=dbo.[dep.prog].kod_prog
