SELECT * FROM BOOKING LEFT JOIN USER ON BOOKING.user_id = USER.user_id
LEFT JOIN PROPERTY ON BOOKING.property_id = PROPERTY.property_id
WHERE USER.user_id = 1
AND booking_id = 1;