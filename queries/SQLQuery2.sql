SELECT nomer_dogovir AS '������', kod_vkladnuk AS '��������', kod_prog AS '��������', sum_vklad AS '����'
FROM dbo.dogovir
WHERE sum_vklad between 10000 and 50000