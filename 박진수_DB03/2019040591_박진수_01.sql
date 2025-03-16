SELECT C.c_name
FROM movie M, watch W, customer C
WHERE W.m_id = M.m_id AND W.c_id = C.c_id AND M.m_name='Gukyeongi';