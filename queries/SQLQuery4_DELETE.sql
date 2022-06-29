DELETE FROM dbo.dogovir
WHERE kod_vkladnuk IN
(SELECT kod_vkladnuk
FROM dbo.dogovir
WHERE (data_zak<'2021-11-19'))