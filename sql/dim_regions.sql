CREATE OR REPLACE TABLE `project-5b789320-5896-42d2-820.Explosives.dim_regions` AS
SELECT 'Vinnytsia Oblast' AS admin_unit, 'UA-05' AS admin_code, 'UA.VI' AS map_key, 'Ukraine' AS country
UNION ALL SELECT 'Volyn Oblast', 'UA-07', 'UA.VO', 'Ukraine'
UNION ALL SELECT 'Dnipropetrovsk Oblast', 'UA-12', 'UA.DP', 'Ukraine'
UNION ALL SELECT 'Donetsk Oblast', 'UA-14', 'UA.DT', 'Ukraine'
UNION ALL SELECT 'Zhytomyr Oblast', 'UA-18', 'UA.ZH', 'Ukraine'
UNION ALL SELECT 'Zakarpattia Oblast', 'UA-21', 'UA.ZK', 'Ukraine'
UNION ALL SELECT 'Zaporizhzhia Oblast', 'UA-23', 'UA.ZP', 'Ukraine'
UNION ALL SELECT 'Ivano-Frankivsk Oblast', 'UA-26', 'UA.IF', 'Ukraine'
UNION ALL SELECT 'Kyiv Oblast', 'UA-32', 'UA.KV', 'Ukraine'
UNION ALL SELECT 'Kirovohrad Oblast', 'UA-35', 'UA.KI', 'Ukraine'
UNION ALL SELECT 'Luhansk Oblast', 'UA-44', 'UA.LH', 'Ukraine'
UNION ALL SELECT 'Lviv Oblast', 'UA-46', 'UA.LV', 'Ukraine'
UNION ALL SELECT 'Mykolaiv Oblast', 'UA-48', 'UA.MY', 'Ukraine'
UNION ALL SELECT 'Odesa Oblast', 'UA-51', 'UA.OD', 'Ukraine'
UNION ALL SELECT 'Poltava Oblast', 'UA-53', 'UA.PL', 'Ukraine'
UNION ALL SELECT 'Rivne Oblast', 'UA-56', 'UA.RV', 'Ukraine'
UNION ALL SELECT 'Sumy Oblast', 'UA-59', 'UA.SM', 'Ukraine'
UNION ALL SELECT 'Ternopil Oblast', 'UA-61', 'UA.TP', 'Ukraine'
UNION ALL SELECT 'Kharkiv Oblast', 'UA-63', 'UA.KK', 'Ukraine'
UNION ALL SELECT 'Kherson Oblast', 'UA-65', 'UA.KS', 'Ukraine'
UNION ALL SELECT 'Khmelnytskyi Oblast', 'UA-68', 'UA.KM', 'Ukraine'
UNION ALL SELECT 'Cherkasy Oblast', 'UA-71', 'UA.CK', 'Ukraine'
UNION ALL SELECT 'Chernivtsi Oblast', 'UA-73', 'UA.CV', 'Ukraine'
UNION ALL SELECT 'Chernihiv Oblast', 'UA-74', 'UA.CH', 'Ukraine'
UNION ALL SELECT 'Crimea', 'UA-43', 'UA.KR', 'Ukraine'
UNION ALL SELECT 'Kyiv', 'UA-30', 'UA.KC', 'Ukraine';
select *
from `project-5b789320-5896-42d2-820.Explosives.dim_regions`
