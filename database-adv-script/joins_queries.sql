SELECT booking.booking_id, user.user_id FROM booking INNER JOIN user
ON booking.booking_id = user.user_id;