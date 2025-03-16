SELECT C.c_name
FROM customer C
JOIN watch W ON W.c_id = C.c_id
JOIN movie M ON M.m_id = W.m_id
JOIN classify CF ON CF.m_id = M.m_id
JOIN genre G ON G.gr_id = CF.gr_id
WHERE G.gr_name IN ('Drama', 'Mystery', 'Crime')
GROUP BY C.c_id, C.c_name
HAVING COUNT(DISTINCT G.gr_name) = 3;