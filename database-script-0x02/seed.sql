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