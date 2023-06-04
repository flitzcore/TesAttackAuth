CREATE TABLE users (
  id CHAR(50) NOT NULL,
  username VARCHAR(255) NULL,
  email VARCHAR(255) NOT NULL,
  password TEXT NOT NULL,
  quota INT NOT NULL DEFAULT 5,
  PRIMARY KEY (id)
);
CREATE TABLE exercises (
  id CHAR(50) NOT NULL,
  title VARCHAR(255) NOT NULL,
  img_url VARCHAR(255) NOT NULL,
  type VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  PRIMARY KEY (id)
);
CREATE TABLE schedule (
  id CHAR(50) NOT NULL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  type VARCHAR(20) NOT NULL,
  date VARCHAR(20) NOT NULL,
  start_time VARCHAR(20) NOT NULL,
  end_time VARCHAR(20) NOT NULL,
  description TEXT NOT NULL,
  uid CHAR(50) NOT NULL,
  FOREIGN KEY (uid) REFERENCES users(id)
);

INSERT INTO `exercises` (`id`, `title`, `img_url`, `type`, `description`) 
VALUES (CONCAT('exercise-', UUID()), 
'Push Up'
, 'https://i.ibb.co/LSscmwk/Google-G-Logo-svg.png', 
'Hard', 
'Push Up 500 Kali, bagai Saitama');
