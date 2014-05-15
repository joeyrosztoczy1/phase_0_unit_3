# U3.W7: Modeling a Real-World Database (SOLO CHALLENGE)

## Release 0: Users Fields
<!-- Identify the fields Twitter collects data for -->

Tweets
Replies
Following
Followers
Favorites
Name
Biography
Location
Website
Theme_Color 



## Release 1: Tweet Fields
<!-- Identify the fields Twitter uses to represent/display a tweet. What are you required or allowed to enter? -->

Text
Photo
Location
Time
User


## Release 2: Explain the relationship
The relationship between `users` and `tweets` is: 
<!-- one user to many tweets -->

## Release 3: Schema Design
<!-- Include your image (inline) of your schema -->
![alt tweet_schema_image](week_7/imgs/solo_challenge.png "Tweet_Schema")


## Release 4: SQL Statements
<!-- Include your SQL Statements. How can you make markdown files show blocks of code? -->

```SQL 
SELECT tweets FROM Users JOIN Tweets ON Tweets_ID = tweets.id WHERE Users.id = 1
SELECT tweets FROM Users JOIN Tweets ON Tweets_ID = tweets.id WHERE Users.id = 1 AND created_at > 05/07/2014 
SELECT tweets FROM Users JOIN Tweets ON Tweets_ID = tweets.id WHERE name = 'insert_handle'
SELECT name FROM Users JOIN Tweets ON Tweets_ID = tweets.id WHERE Tweets.id = 1
```


## Release 5: Reflection
<!-- Be sure to add your reflection here!!! -->
This solo challenge was significantly simpler than the quizes and querying we did from SQLZoo. It would have been an easier transition learning by doing this first as all the SQL Queries can be accomplished by a simple JOIN. (I think... I have been querying SQL for work, but maybe my statements up there don't work and I thought it was easier than it really is). I think visualizing db's with an editor like the one from Socrates can be beneficial if we are using large interacting systems like dozens of tables with dozens of fields. For most basic stuff though it seems to slow development down quite a bit.