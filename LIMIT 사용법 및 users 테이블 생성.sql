USE spring;

SELECT * FROM freeboard;

SELECT COUNT(*) FROM freeboard;

SELECT * FROM freeboard
ORDER BY bno DESC
LIMIT 0, 10;

CREATE TABLE users (
	user_id VARCHAR(50) PRIMARY KEY,
    user_pw VARCHAR(50) NOT NULL,
    user_name VARCHAR(50) NOT NULL,
    user_phone1 VARCHAR(50),
    user_phone2 VARCHAR(50),
    user_email1 VARCHAR(50),
    user_email2 VARCHAR(50),
    addr_basic VARCHAR(300),
    addr_detail VARCHAR(300),
    addr_zip_num VARCHAR(50),
    reg_date DATETIME DEFAULT CURRENT_TIMESTAMP
);
