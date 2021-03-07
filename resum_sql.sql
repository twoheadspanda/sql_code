USE sql_course_info;

--  for all colums
-- 如果想对每项课程的费用打八折 
-- SELECT 
-- 	锘縰ser_id AS user_id,
--     sci.price,
-- 	sci.price * 0.8 AS new_price
-- SELECT sci.course_join_date, sci.course_join_time
-- 如果想查询所有课程的定价 
-- SELECT DISTINCT
-- 	sci.price 
-- SELECT 
-- 	锘縰ser_id AS user_id,
--     sci.course_id,
--     sci.price
-- FROM sql_course_info sci
-- SELECT *
-- FROM sql_course_info sci
-- check info about a course
-- WHERE sci.course_id = 106 

-- order by sci.course_join_date
-- LIMIT 5

-- WHERE price >= 100
-- 查找学院在2020年后加入课程的情况
-- WHERE sci.course_join_date >= '2020'
-- WHERE sci.course_join_date >= '2020' AND sci.price >= 100
-- WHERE 锘縰ser_id in (3,4)
-- WHERE price BETWEEN 200 AND 300
-- WHERE price LIKE '_9'
-- WHERE price REGEXP '9'
-- WHERE price IS NULL

-- 多表查询
-- 数据库之间复合表单
-- JOIN sql_user.sql_user su 
-- 	ON sci.锘縰ser_id = su.锘縰ser_id
-- outer join
SELECT 
	锘縰ser_id AS user_id,
    course_join_date,
    'active' AS status
    
FROM sql_course_info sci
-- JOIN sql_user.sql_user su
-- 	ON sci.锘縰ser_id = su.锘縰ser_id
-- combine rows为不同年份的数据打标签2020年后的数据为活跃数据
WHERE sci.course_join_date >= '2020/00/00'
UNION
SELECT 
	锘縰ser_id AS user_id,
    course_join_date,
    'old-data' AS status
FROM sql_course_info sci
WHERE sci.course_join_date < '2020/00/00'
