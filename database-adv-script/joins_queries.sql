SELECT booking.booking_id, user.user_id FROM booking INNER JOIN user
ON booking.booking_id = user.user_id;

SELECT name_, description_, location_, pricepernight, rating,comment FROM property
LEFT JOIN review ON property.property_id = review.property_id
ORDER BY property.property_id, review.rating DESC;

SELECT user.first_name, user.last_name, booking.start_date, booking.end_date FROM user
FULL OUTER JOIN booking ON user.user_id = booking.user_id;