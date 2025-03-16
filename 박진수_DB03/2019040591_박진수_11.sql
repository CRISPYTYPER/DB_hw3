SELECT COUNT(DISTINCT C.c_id) cnt_customer
FROM customer C
JOIN comment_to CT1 ON C.c_id = CT1.c_id
JOIN comment_to CT2 ON C.c_id = CT2.c_id
WHERE CT1.write_date < CT2.write_date
	AND CT2.write_date - CT1.write_date >= INTERVAL '3 days';