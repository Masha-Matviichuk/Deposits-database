SELECT  TOP 5 p_vkladnuk AS '�������', i_vkladnuk AS '��`�', sum_vklad AS '����'
FROM dbo.dogovir
     INNER JOIN dbo.vkladnuk ON
	 dbo.dogovir.kod_vkladnuk= dbo.vkladnuk.kod_vkladnuk
ORDER BY sum_vklad DESC