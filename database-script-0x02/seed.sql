UPDATE USER
SET  first_name = 'Amanuel',
 last_name = 'Behailu',
  email = 'Amanuelbehailu556@gmail.com',
   password_hash = 'aman123',
    phone_number= '0967934788', 
    role_ = 'guest',
    UUID = UUID() 
WHERE user_id= 1;
UPDATE PROPERTY
SET name_ = 'room123',
 description_='rent',
  location_='2nd floor', 
  pricepernight='1000.0'
  WHERE property_id=0;
  INSERT INTO PROPERTY (
    name_, description_, location_,pricepernight
  )
  VALUES('Room 23', 'Rented', 'Third floor', 1600.0);

INSERT INTO PROPERTY(
  name_, description_, location_, pricepernight
)
VALUES ('Room 22', 'Rented', 'Second floor', 1100.0);

INSERT INTO USER(
  first_name ,last_name ,email  ,password_hash ,phone_number ,role_ )
VALUES('Biruk','Daniel','birukdaniel22@gmail.com','birukddd',0911726639,'guest');

INSERT INTO booking(
  booking_id , property_id, user_id, total_price,  status_
)
VALUES(01, 1, 1, 1800.0, 'confirmed' )

INSERT INTO REVIEW(
   property_id,  user_id, rating,comment
)
VALUES(1,1,5,'Great place to stay');
INSERT INTO MESSAGE(
  sender_id, recipient_id, message_body
)
VALUES(1,1,'HI CAN I ORDER ROOM SERVICE')

INSERT INTO PROPERTY
(
  name_, description_, location_, pricepernight, user_id
)
VALUES('Room 24', 'Cozy and comfortable', 'First floor', 1200.0, 1);

INSERT INTO USER(
  first_name, last_name, email, password_hash, phone_number, role_,user_id,UUID
)
VALUES('John', 'Doe', 'JOHN@123', 12349,'0912345678', 'admin',2,UUID
());

INSERT INTO property(
  name_, description_, location_, pricepernight, user_id
)
VALUES('Room 25', 'Spacious and well-lit', 'Second floor', 1400.0, 2);

INSERT INTO booking(
  property_id, user_id, start_date, end_date, total_price, status_
)
VALUES(2, 2, '2023-10-01', '2023-10-05', 7000.0, 'confirmed');
INSERT INTO REVIEW(
  review_id,property_id, user_id, rating, comment
)
VALUES(2,2, 2, 4, 'Very nice place, enjoyed my stay');
