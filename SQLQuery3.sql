--A) Marketing Analysis:
--1) Identify the five oldest users on Instagram from the provided database.

select top 5 * from users
order by created_at 

--2) Identify users who have never posted a single photo on Instagram.

 select * from users, photos

 select u.id, username from users u left join photos p on u.id=p.user_id where image_url is null order by id

 --3) Determine the winner of the contest and provide their details to the team.

 select * from likes
 select * from photos
 select * from users

 select top 1 u.username, l.photo_id, count(l.user_id)[No. of Likes] from likes l join photos p on l.photo_id=p.id
 join users u on p.user_id=u.id
 group by u.username, l.photo_id 
 order by count(l.user_id) desc

 --4)  Identify and suggest the top five most commonly used hashtags on the platform.

 select * from tags
 select * from photo_tags

 select top 5 t.tag_name, count(p.photo_id)[Times] from tags t join photo_tags p on t.id=p.tag_id
 group by t.tag_name
 order by count(p.photo_id) desc

 --5) Determine the day of the week when most users register on Instagram. Provide insights on when to schedule an ad campaign.

 select * from users
 select DATENAME(weekday,created_at)[DayName], count(username)[Times] from users
 group by DATENAME(weekday,created_at)
 order by count(username) desc

 --B) Investor Metrics

 --1) Calculate the average number of posts per user on Instagram. Also, provide the total number of photos on Instagram divided by the total number of users.


 with cte1 as (
 select u.id as userID,count(p.id)as PhotoID from users u left join photos p on u.id=p.user_id
 group by u.id
 )

 select
 SUM(photoID) [Total Photos],
 COUNT(userID) [Total Users],
 SUM(photoID) / COUNT(userID) AS photoperuser
 from cte1

 --2) Identify users (potential bots) who have liked every single photo on the site, as this is not typically possible for a normal user.

 select u.id AS userID, u.username, count(l.photo_id)[Likes] from users u join likes l on u.id = l.user_id
group by u.id, u.username
having COUNT(distinct l.photo_id) = (select COUNT(*) from photos)
order by u.username
