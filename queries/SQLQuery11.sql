SELECT dbo.dogovir.nomer_dogovir AS '������', dbo.dogovir.kod_vkladnuk AS '��������', dbo.dogovir.sum_vklad AS '������� ������ (1)', 
dbo.[dep.prog].vid AS '³������', dbo.[dep.prog].kod_valuta AS '������', 
(dbo.dogovir.sum_vklad*dbo.[dep.prog].vid/365*30) AS '��������� �������', 
((dbo.dogovir.sum_vklad*dbo.[dep.prog].vid/365*30)*0.195) AS '�������������', 
CASE
  WHEN dbo.dogovir.iban_vids IS NULL 
    THEN (dbo.dogovir.sum_vklad+(dbo.dogovir.sum_vklad*dbo.[dep.prog].vid/365*30)-(dbo.dogovir.sum_vklad*dbo.[dep.prog].vid/365*30)*0.195)
  ELSE dbo.dogovir.sum_vklad
END AS '������� ������ (2)'
INTO dbo.roz
FROM dbo.dogovir
     INNER JOIN dbo.[dep.prog] ON
	 dbo.dogovir.kod_prog=dbo.[dep.prog].kod_prog
