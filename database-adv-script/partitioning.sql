SELECT booking_id, start_date, end_date, user_id, property_id, 
COUNT(booking_id) OVER(PARTITION BY start_date) as Partitionedcount FROM booking