select * from freereply;

UPDATE freereply
SET update_date = '2023-05-24 00:11:32'
WHERE rno = 8;

SELECT f.*,
(SELECT COUNT(*) FROM freereply WHERE bno = f.bno) AS reply_cnt
FROM freeboard f
ORDER BY bno DESC
LIMIT 0, 10;

SELECT
	f.*,
	r.reply_cnt
FROM freeboard f
LEFT JOIN
(SELECT bno, COUNT(*) AS reply_cnt
FROM freereply GROUP BY bno) r
ON f.bno = r.bno
ORDER BY bno DESC
LIMIT 0, 10;