prompt Question 5 - fessehay

SELECT  U.email,name, COUNT(P.pur_id) as cp, SUM(O.price) as sp
FROM  users U,offers O,purchases P,ads A
WHERE U.email = A.poster
AND A.aid = P.aid
AND P.ono = O.ono
GROUP BY (U.email,name)
HAVING COUNT(P.pur_id) = (select max(cp) from (select COUNT(P.pur_id) as cp
				  from users U,offers O,purchases P,ads A
				  WHERE U.email = A.poster
	  			  AND A.aid = P.aid
				  AND P.ono = O.ono
				  group by (U.email,name)));

