CREATE INDEX user_id_index ON USER(user_id);
CREATE INDEX property_id_index ON PROPERTY(property_id);
CREATE INDEX booking_id_index ON Booking(booking_id);

SHOW INDEX FROM USER;
SELECT * FROM USER WHERE user_id = 1;
