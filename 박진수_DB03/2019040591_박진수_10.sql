SELECT p_name
FROM(
	SELECT PT.p_name, PT.p_id
	FROM participant PT
	
	EXCEPT
	
	SELECT DISTINCT PT.p_name, PT.p_id
	FROM participant PT, participate PE, movie M
	WHERE PT.p_id = PE.p_id AND PE.m_id = M.m_id AND PE.casting IS NOT NULL
) AS participant_With_no_casting
ORDER BY p_id;