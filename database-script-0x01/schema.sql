USE alxdb;
DROP TABLE USER;
CREATE TABLE USER(
  user_id INT PRIMARY KEY,
  UUID CHAR(36) UNIQUE,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  email VARCHAR(100)NOT NULL UNIQUE, 
  password_hash VARCHAR(100) NOT NULL,
  phone_number VARCHAR(100) NULL,
  role_ ENUM('guest', 'host', 'admin') NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

