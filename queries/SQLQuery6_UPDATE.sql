UPDATE dbo.View_3
SET Відсоток = CASE
      WHEN Вклад >= 100000 AND Вклад < 1000000 AND Валюта = 'UAN' THEN Відсоток+0.5
	  WHEN Вклад >= 100000 AND Вклад < 1000000 AND (Валюта = 'USD' OR Валюта = 'EUR') THEN Відсоток+0.1
	  WHEN Вклад >= 1000000 AND Валюта = 'UAN' THEN Відсоток+1.25
	  WHEN Вклад >= 1000000 AND (Валюта = 'USD' OR Валюта = 'EUR') THEN Відсоток+0.3
	  ELSE Відсоток
	  END