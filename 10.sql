prompt Question 10 - fessehay

SELECT U.email, COUNT(U.email) as ta,AVG(P.pageno) as average, STDDEV(P.pageno) as std,
	(CASE 
       	WHEN U.email IN (Select Y.email
			 from users Y,purchases P,ads A
			 where P.aid = A.aid and A.poster = Y.email) THEN 'Y'
    	 ELSE 'N'
  	 END) pur_offer
FROM users U ,plist P
WHERE U.email = P.email
GROUP BY U.email
ORDER BY  count(*) DESC;


