UPDATE dbo.View_3
SET ³������ = CASE
      WHEN ����� >= 100000 AND ����� < 1000000 AND ������ = 'UAN' THEN ³������+0.5
	  WHEN ����� >= 100000 AND ����� < 1000000 AND (������ = 'USD' OR ������ = 'EUR') THEN ³������+0.1
	  WHEN ����� >= 1000000 AND ������ = 'UAN' THEN ³������+1.25
	  WHEN ����� >= 1000000 AND (������ = 'USD' OR ������ = 'EUR') THEN ³������+0.3
	  ELSE ³������
	  END