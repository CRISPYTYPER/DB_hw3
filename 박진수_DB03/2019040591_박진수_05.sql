SELECT W2.m_id, W2.c_id, W2.watch_date, W2.pause_time
FROM watch W2
WHERE W2.c_id IN
	(SELECT C.c_id
	FROM customer C, watch W
	WHERE W.c_id = C.c_id
	GROUP BY C.c_id
	HAVING COUNT(*) >= 2);