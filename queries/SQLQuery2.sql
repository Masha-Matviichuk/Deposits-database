SELECT nomer_dogovir AS 'Договір', kod_vkladnuk AS 'Вкладник', kod_prog AS 'Програма', sum_vklad AS 'Сума'
FROM dbo.dogovir
WHERE sum_vklad between 10000 and 50000