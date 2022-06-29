SELECT dbo.dogovir.kod_prog AS '����� ��������', dbo.[dep.prog].nazva_prog AS '����� ��������', 
COUNT(dbo.dogovir.kod_prog) AS 'ʳ������ ��������', SUM(dbo.dogovir.sum_vklad) AS '���� � USD'
FROM dbo.dogovir
     INNER JOIN dbo.vkladnuk ON
	 dbo.dogovir.kod_vkladnuk=dbo.vkladnuk.kod_vkladnuk
	 INNER JOIN dbo.[dep.prog] ON
	 dbo.dogovir.kod_prog=dbo.[dep.prog].kod_prog
	 INNER JOIN dbo.valuta ON
	 dbo.[dep.prog].kod_valuta=dbo.valuta.kod_valuta
WHERE (dbo.valuta.kod_valuta= 'USD')
GROUP BY dbo.dogovir.kod_prog, dbo.[dep.prog].nazva_prog