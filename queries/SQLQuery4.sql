SELECT dbo.dogovir.nomer_dogovir AS 'Номер договору', dbo.vkladnuk.p_vkladnuk AS 'Прізвище', dbo.vkladnuk.i_vkladnuk AS 'Ім`я', 
dbo.vkladnuk.pb_vkladnuk AS 'По батькові', dbo.dogovir.sum_vklad AS 'Сума вкладу', dbo.[dep.prog].nazva_prog AS 'Депозитна програма', 
dbo.valuta.kod_valuta AS 'Валюта'
FROM  dbo.dogovir 
     INNER JOIN  dbo.vkladnuk ON 
	 dbo.dogovir.kod_vkladnuk = dbo.vkladnuk.kod_vkladnuk 
	 INNER JOIN dbo.[dep.prog] ON
	 dbo.dogovir.kod_prog = dbo.[dep.prog].kod_prog
	 INNER JOIN dbo.valuta ON
	 dbo.[dep.prog].kod_valuta = dbo.valuta.kod_valuta




  