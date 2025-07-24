CREATE DATABASE quiz_app;
USE quiz_app;

CREATE TABLE user_details (
    user_id INT NOT NULL AUTO_INCREMENT,
    user_name VARCHAR(45) NULL,
    user_email VARCHAR(45) NULL,
    user_password VARCHAR(45) NULL,
    PRIMARY KEY (user_id)
);

CREATE TABLE result (
    result_id INT NOT NULL AUTO_INCREMENT,
    quiz_name VARCHAR(45) NULL,
    quiz_score VARCHAR(45) NULL,
    result_email VARCHAR(45) NULL,
    PRIMARY KEY (result_id)
);
ALTER TABLE user_details 
ADD CONSTRAINT unique_user_email UNIQUE (user_email);

ALTER TABLE result 
ADD CONSTRAINT result_user_details_fk 
FOREIGN KEY (result_email) 
REFERENCES user_details(user_email);


