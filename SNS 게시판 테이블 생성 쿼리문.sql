
# SNS 게시판
CREATE TABLE snsboard (
	bno INT PRIMARY KEY AUTO_INCREMENT,
    writer VARCHAR(50) NOT NULL,
    upload_path VARCHAR(100) NOT NULL,
    file_loca VARCHAR(100) NOT NULL,
    file_name VARCHAR(50) NOT NULL,
    file_real_name VARCHAR(50) NOT NULL,
    content VARCHAR(2000),
    reg_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM snsboard;