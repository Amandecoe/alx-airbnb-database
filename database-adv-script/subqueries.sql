SELECT name_, description_,location_,pricepernight, rating FROM property LEFT JOIN
review ON property.property_id = review.property_id
WHERE property.property_id IN
(SELECT property_id 
        FROM review 
        GROUP BY property_id
         HAVING AVG(review.rating) >= 4.0) 
ORDER BY property.property_id, review.rating DESC;

SELECT  first_name , last_name, phone_number, booking.booking_id,booking.user_id AS booking_user_id 
  FROM user LEFT JOIN booking ON
user.user_id = booking.user_id
WHERE user.user_id IN(SELECT user_id 
        FROM booking 
        GROUP BY user_id 
        HAVING COUNT(*) > 3.0)
        ORDER BY user.user_id, booking.booking_id;