SELECT c_id, m_id, rating, comment, write_date
FROM comment_to
WHERE c_id IN (
	SELECT c_id
	FROM comment_to
	GROUP BY c_id
	HAVING COUNT(*) = (
		SELECT MAX(comment_cnt)
		FROM(
			SELECT c_id, COUNT(*) comment_cnt
			FROM comment_to
			GROUP BY c_id
		)  AS CustomerCommentCounts
	)
);