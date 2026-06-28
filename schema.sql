CREATE DATABASE game_store;
USE game_store;

CREATE TABLE Players (
player_id INT PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(25),
email VARCHAR(25),
wallet_balance DECIMAL(8,2),
date_joined DATE,
last_login DATE,
total_hours_played INT
);

CREATE TABLE Developers (
dev_id INT PRIMARY KEY AUTO_INCREMENT,
dev_name VARCHAR(25),
dev_country VARCHAR(25),
number_of_games INT,
website VARCHAR(30)
);

CREATE TABLE Games (
game_id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(25),
genre VARCHAR(25),
platform VARCHAR(25),
rice DECIMAL(6,2),
dev_id INT,
FOREIGN KEY (dev_id) REFERENCES Developers(dev_id)
);

CREATE TABLE Purchases (
purchase_id INT PRIMARY KEY AUTO_INCREMENT,
player_id INT,
game_id INT,
price DECIMAL(6,2),
purchase_date DATE,
FOREIGN KEY (player_id) REFERENCES Players(player_id),
FOREIGN KEY (game_id) REFERENCES Games(game_id)
);

CREATE TABLE Reviews (
review_id INT PRIMARY KEY AUTO_INCREMENT,
player_id INT,
game_id INT,
rating INT,
FOREIGN KEY (player_id) REFERENCES Players(player_id),
FOREIGN KEY (game_id) REFERENCES Games(game_id)
);
