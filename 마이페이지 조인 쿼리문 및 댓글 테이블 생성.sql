select * from users;

SELECT
	user_name, user_phone1, user_phone2,
    user_email1, user_email2, addr_basic,
    addr_detail, addr_zip_num,
    f.bno,
    f.title,
    f.reg_date
FROM users u
LEFT JOIN freeboard f
ON u.user_id = f.writer
WHERE u.user_id = 'park4321'
ORDER BY f.bno DESC
LIMIT 0, 10;

CREATE TABLE freereply(
	rno INT PRIMARY KEY AUTO_INCREMENT,
    bno INT,
    
    FOREIGN KEY (bno)
    REFERENCES freeboard(bno)
    ON DELETE CASCADE,
    
    reply VARCHAR(1000),
    reply_id VARCHAR(50),
    reply_pw VARCHAR(50),
    reply_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    update_date DATETIME DEFAULT NULL
);
