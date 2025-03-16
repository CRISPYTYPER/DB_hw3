SELECT
	M.m_name,
	((COALESCE(M.m_rating * M.votes, 0) + COALESCE(SUM(CT.rating), 0)) / 
	NULLIF(M.votes + COALESCE(COUNT(CT.c_id), 0), 0)) recalculated_avg_rating
FROM movie M
LEFT OUTER JOIN comment_to CT ON M.m_id = CT.m_id
GROUP BY M.m_id, M.m_name, M.m_rating, M.votes;