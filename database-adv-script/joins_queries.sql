SELECT booking.booking_id, user.user_id FROM booking INNER JOIN user
ON booking.booking_id = user.user_id;

SELECT name_, description_, location_, pricepernight, rating,comment FROM property
LEFT JOIN review ON property.property_id = review.property_id
WHERE property.property_id = 1;