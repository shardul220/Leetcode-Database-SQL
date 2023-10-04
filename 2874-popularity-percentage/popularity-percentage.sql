# # Write your MySQL query statement below


WITH  cte as( SELECT user1 user, user2 friend
FROM friends
UNION
SELECT user2 user, user1 friend
FROM friends)

SELECT user user1, ROUND(100*COUNT(*)/COUNT(friend) OVER(),2) percentage_popularity
FROM cte 
group by 1 
order by 1





























# with fcte as(
# SELECT user1 user, user2 friend
# FROM friends
# UNION
# SELECT user2 user, user1 friend
# FROM friends)


# select user user1,  ROUND(100*(count(*)/count(*) over()),2)  percentage_popularity
# from fcte
# group by 1 order by 1

