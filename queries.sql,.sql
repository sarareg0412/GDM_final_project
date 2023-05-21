select person_id, min(time_stamp) as min,
 max(time_stamp) as max, max(time_stamp) - min(time_stamp) as duration
from example_trajectory_students
group by person_idcreate table join_table as (	select u._uid_, u.geom, u.id, u.person_id, u.time_stamp::timestamp, u.x, u.y	from user_27 as u join proximity_27 as p on u.id = p.id)