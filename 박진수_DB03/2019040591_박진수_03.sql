SELECT COUNT(*) hotmail_user_count
FROM customer C
WHERE C.email ~ '.*@hotmail.com';