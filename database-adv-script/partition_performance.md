# Performance update after partitioning

When selecting query from a partitioned table it uses extras like where because we did give it a date range and it is far more faster than running the whole table and then finding it using a date range so it is better to partition your table when data gets larger.
