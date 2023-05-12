
# 해당 계정이 어떤 데이터베이스를 사용할 지 명시하는 문장
USE spring;

CREATE TABLE scores (
    stu_id INT PRIMARY KEY AUTO_INCREMENT,
    stu_name VARCHAR(30) NOT NULL,
    kor INT DEFAULT 0,
    eng INT DEFAULT 0,
    math INT DEFAULT 0,
    total INT DEFAULT 0,
    average DECIMAL(5 , 2)
);

SELECT 
    *
FROM
    scores;

CREATE TABLE jdbc_board(
	board_no INT PRIMARY KEY AUTO_INCREMENT,
    writer VARCHAR(30) NOT NULL,
    title VARCHAR(100) NOT NULL,
    content VARCHAR(2000),
    reg_date DATETIME DEFAULT current_timestamp
);