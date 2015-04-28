prompt Question 7 - fessehay

SELECT U.email
FROM users U
WHERE U.email in (
		  SELECT U.email
		  FROM ads A
		  WHERE U.email = A.poster
		  GROUP BY U.email
		  HAVING COUNT(A.aid)/(SELECT COUNT(*) FROM ads) > .1);


