SELECT dbo.dogovir.nomer_dogovir AS '����� ��������', dbo.vkladnuk.p_vkladnuk AS '�������', dbo.vkladnuk.i_vkladnuk AS '��`�', 
dbo.vkladnuk.pb_vkladnuk AS '�� �������', dbo.dogovir.sum_vklad AS '���� ������', dbo.[dep.prog].nazva_prog AS '��������� ��������', 
dbo.valuta.kod_valuta AS '������'
FROM  dbo.dogovir 
     INNER JOIN  dbo.vkladnuk ON 
	 dbo.dogovir.kod_vkladnuk = dbo.vkladnuk.kod_vkladnuk 
	 INNER JOIN dbo.[dep.prog] ON
	 dbo.dogovir.kod_prog = dbo.[dep.prog].kod_prog
	 INNER JOIN dbo.valuta ON
	 dbo.[dep.prog].kod_valuta = dbo.valuta.kod_valuta




  