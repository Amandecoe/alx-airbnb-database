USE alxdb;
CREATE TABLE USER (
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  UUID CHAR(36) UNIQUE,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  email VARCHAR(100)NOT NULL UNIQUE, 
  password_hash VARCHAR(100) NOT NULL,
  phone_number VARCHAR(100) NULL,
  role_ ENUM('guest', 'host', 'admin') NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE PROPERTY (
    property_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name_ VARCHAR(100) NOT NULL,
    description_ TEXT,
    location_ VARCHAR(255),
    pricepernight DECIMAL(10,2),
    user_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES USER(user_id)
);
CREATE TABLE Booking (
  booking_id INT PRIMARY KEY AUTO_INCREMENT,
  property_id INT,
  user_id INT,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  total_price DECIMAL(20) NOT NULL,
  status_ ENUM('pending', 'confirmed', 'canceled') NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (property_id) REFERENCES Property(property_id),
  FOREIGN KEY (user_id) REFERENCES User(user_id) 
);
CREATE TABLE PAYMENT(
  payment_id INT PRIMARY KEY AUTO_INCREMENT,
  UUID CHAR,
  booking_id INT,
  payment_method ENUM('credit_card', 'paypal', 'stripe') NOT NULL,
  amount DECIMAL (20) NOT NULL,
  payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (booking_id) REFERENCES Booking(booking_id)
);
CREATE TABLE REVIEW(
  review_id INT PRIMARY KEY AUTO_INCREMENT,
  UUID CHAR UNIQUE,
  property_id INT,
  user_id INT,
  rating INTEGER NOT NULL CHECK (rating >=1 and rating <=5),
  comment TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (property_id) REFERENCES PROPERTY(property_id),
  FOREIGN KEY (user_id) REFERENCES USER(user_id)
);
CREATE TABLE MESSAGE(
  message_id INT PRIMARY KEY AUTO_INCREMENT,
  UUID CHAR,
  sender_id INT, 
  recipient_id INT,
  message_body TEXT NOT NULL,
  sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (sender_id) REFERENCES USER(user_id),
  FOREIGN KEY (recipient_id) REFERENCES USER (user_id)
);