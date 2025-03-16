SELECT M.m_id, M.m_name
FROM movie M
JOIN classify C1 ON M.m_id = C1.m_id
JOIN genre G1 ON C1.gr_id = G1.gr_id AND G1.gr_name= 'Comedy'
JOIN classify C2 ON M.m_id = C2.m_id
JOIN genre G2 ON C2.gr_id = G2.gr_id AND G2.gr_name= 'Action';