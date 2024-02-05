select max(num) as num from 
(select num from MyNumbers group by num having count(num)=1) as unique_num


-- SELECT num FROM (
--     SELECT num 
--     FROM MyNumbers 
--     GROUP BY num 
--     HAVING COUNT(num) = 1
--     union all
--     select null
-- ) AS unique_nums
-- ORDER BY num DESC
-- LIMIT 1
