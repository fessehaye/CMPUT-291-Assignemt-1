SELECT U.email, count(A.aid) as Ad_count ,COUNT(DISTINCT(R.rno)) as Review_count, AVG(R.rating) as Review_Rating
FROM (users U left outer join reviews R on (R.reviewee = U.email)), ads A
WHERE U.email in (
		  SELECT U.email
		  FROM users U,ads A
		  WHERE U.email = A.poster
		  AND A.cat ='cameras')
AND U.email = A.poster
GROUP BY (U.email);
