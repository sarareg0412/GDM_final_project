select person_id, min(time_stamp) as min,
 max(time_stamp) as max, max(time_stamp) - min(time_stamp) as duration
from example_trajectory_students
group by person_id