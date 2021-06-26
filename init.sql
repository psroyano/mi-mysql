set global local_infile=true;
USE mydatabase;
CREATE TABLE reviews (
	id INT AUTO_INCREMENT PRIMARY KEY, 
	clothingId INT, 
	age INT, 
	title  VARCHAR(50),
	review TINYTEXT,
	rating INT,
	recommended TINYINT,
	positiveFeedback INT,
	division VARCHAR(20),
	department VARCHAR(20),
	className VARCHAR(20));
LOAD DATA LOCAL INFILE '/dataset/WCECReviews.csv' 
	INTO TABLE reviews
	FIELDS TERMINATED BY ',' 
	ENCLOSED BY '"' 
	LINES TERMINATED BY '\n' 
	IGNORE 1 ROWS;
