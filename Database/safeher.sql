CREATE TABLE users(

user_id INT PRIMARY KEY AUTO_INCREMENT,

name VARCHAR(50),

email VARCHAR(50),

password VARCHAR(100),

phone VARCHAR(15)

);
CREATE TABLE contacts(

contact_id INT PRIMARY KEY AUTO_INCREMENT,

user_id INT,

contact_name VARCHAR(50),

contact_phone VARCHAR(15),

relationship VARCHAR(30),

FOREIGN KEY(user_id)
REFERENCES users(user_id)

);
CREATE TABLE sos_alerts(

alert_id INT PRIMARY KEY AUTO_INCREMENT,

user_id INT,

latitude VARCHAR(30),

longitude VARCHAR(30),

alert_time DATETIME,

FOREIGN KEY(user_id)
REFERENCES users(user_id)

);
CREATE TABLE safety_tips(

tip_id INT PRIMARY KEY AUTO_INCREMENT,

title VARCHAR(100),

description TEXT

);
