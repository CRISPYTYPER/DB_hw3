SELECT c_id, AVG(rating) avg_rating
FROM comment_to
WHERE c_id IN (
	SELECT W.c_id
	FROM watch W
	GROUP BY W.c_id
	HAVING COUNT(*) >= 2
)
GROUP BY c_id;

