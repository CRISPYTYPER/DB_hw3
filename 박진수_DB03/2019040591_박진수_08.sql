SELECT M.m_name, COUNT(G.gr_id) gr_count
FROM movie M, classify C, genre G
WHERE C.m_id = M.m_id AND C.gr_id = G.gr_id
GROUP BY M.m_id
HAVING COUNT(G.gr_id) = (
	SELECT MAX(genre_count)
	FROM (
		SELECT M2.m_name, COUNT(G2.gr_id) genre_count
		FROM movie M2, classify C2, genre G2
		WHERE C2.m_id = M2.m_id AND C2.gr_id = G2.gr_id
		GROUP BY M2.m_id
	) AS genre_counts
);