SELECT  TOP 5 p_vkladnuk AS 'Прізвище', i_vkladnuk AS 'Ім`я', sum_vklad AS 'Сума'
FROM dbo.dogovir
     INNER JOIN dbo.vkladnuk ON
	 dbo.dogovir.kod_vkladnuk= dbo.vkladnuk.kod_vkladnuk
ORDER BY sum_vklad DESC