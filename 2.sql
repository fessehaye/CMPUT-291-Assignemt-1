prompt Question 2 - fessehay

SELECT ads.aid
FROM ads
WHERE (ads.title like '%snowmobile%' or ads.descr like '%snowmobile%')
AND (ads.descr NOT like '%broken%' AND ads.descr NOT like '%repair%')
ORDER BY ads.pdate DESC;
