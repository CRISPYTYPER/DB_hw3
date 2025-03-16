SELECT m_name
FROM genre G, classify C, movie M
WHERE C.m_id = M.m_id AND C.gr_id = G.gr_id AND G.gr_name = 'Drama';