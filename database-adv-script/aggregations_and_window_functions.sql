SELECT user.user_id, COUNT(booking.booking_id) AS booking_count 
FROM USER LEFT JOIN booking ON user.user_id = booking.user_id
GROUP BY user.user_id;

SELECT user.user_id, COUNT(booking.booking_id) AS booking_count, ROW_NUMBER() over (ORDER BY booking_count DESC), 
RANK() over (ORDER BY booking_count DESC)  
FROM USER LEFT JOIN booking ON user.user_id = booking.user_id