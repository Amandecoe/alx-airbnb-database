SELECT name_, description_,location_,pricepernight, rating FROM property LEFT JOIN
review ON property.property_id = review.property_id
WHERE AVG(review.rating) >= 4.0
ORDER BY property.property_id, review.rating DESC;
