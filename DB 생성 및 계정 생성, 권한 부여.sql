
CREATE DATABASE spring;

CREATE USER 'spring'@'localhost' 
IDENTIFIED BY 'spring';

GRANT ALL PRIVILEGES ON spring.* 
TO 'spring'@'localhost';

# 주석이에용
/*
문장 주석이에용
*/
