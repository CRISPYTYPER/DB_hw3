SELECT M.m_name, COUNT(G.gr_id) gr_count
FROM movie M, classify C, genre G
WHERE C.m_id = M.m_id AND C.gr_id = G.gr_id
GROUP BY M.m_id;