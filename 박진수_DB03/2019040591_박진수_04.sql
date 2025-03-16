SELECT C.c_name
FROM customer C, watch W
WHERE W.c_id = C.c_id
GROUP BY C.c_id
HAVING COUNT(*) >= 2;