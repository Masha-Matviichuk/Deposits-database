SELECT dbo.[dep.prog].kod_valuta  AS 'Валюта', COUNT(dbo.[dep.prog].kod_valuta) AS 'Кількість договорів', 
SUM(dbo.dogovir.sum_vklad) AS 'Сума'
FROM dbo.dogovir
	 INNER JOIN dbo.[dep.prog] ON
	 dbo.dogovir.kod_prog=dbo.[dep.prog].kod_prog
WHERE sum_vklad IN 
             (SELECT sum_vklad
			 FROM dbo.dogovir
			 WHERE data_ukl between '2021-05-19' AND '2021-08-20')
GROUP BY dbo.[dep.prog].kod_valuta