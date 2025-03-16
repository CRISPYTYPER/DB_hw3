SELECT c_name
FROM (
	SELECT C.c_id, C.c_name
	FROM customer C
	EXCEPT
	SELECT DISTINCT C.c_id, C.c_name
	FROM customer C, prefer P, genre G
	WHERE C.c_id = P.c_id AND G.gr_id = P.gr_id AND gr_name = 'Drama'
) AS non_drama_customers
ORDER BY c_id;
