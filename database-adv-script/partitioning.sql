CREATE TABLE partitioned_table(
  booking_id INT AUTO_INCREMENT,
  property_id INT,
  user_id INT,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  total_price DECIMAL(20) NOT NULL,
  status_ ENUM('pending', 'confirmed', 'canceled') NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (booking_id, start_date)
)
PARTITION BY RANGE(TO_DAYS(start_date)) (
  PARTITION p0 VALUES LESS THAN (TO_DAYS('2026-01-01'))
);
--created a partitioned table for bookings based on start_date.

INSERT INTO partitioned_table (property_id, user_id, start_date, end_date, total_price, status_)
VALUES (1, 1, '2025-01-01', '2025-01-10', 1800.0, 'confirmed');

EXPLAIN SELECT * FROM partitioned_table WHERE start_date = '2025-01-01';

EXPLAIN SELECT * FROM booking
DROP TABLE partitioned_table;

SET profiling = 1;
SELECT * FROM USER WHERE user_id = 1;
SHOW PROFILES;