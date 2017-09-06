Tylers-MacBook-Pro:~ tylermay$ psql todolistdb
psql (9.6.5)
Type "help" for help.

todolistdb=# select * from todolist
todolistdb-# select * form todos
todolistdb-# select * from todos;
ERROR:  syntax error at or near "select"
LINE 2: select * form todos
        ^
todolistdb=# SELECT * FROM todolist;
ERROR:  relation "todolist" does not exist
LINE 1: SELECT * FROM todolist;
                      ^
todolistdb=# \dt;
         List of relations
 Schema | Name  | Type  |  Owner
--------+-------+-------+----------
 public | todos | table | tylermay
(1 row)

todolistdb=# select * from todos;
 id |     title     |              details               | priority |         created_at         |        completed_at
----+---------------+------------------------------------+----------+----------------------------+----------------------------
  2 | Feed Dog      | Put food in bowl                   |        1 | 2017-09-05 13:53:49.784062 |
  4 | Wash the car  | Use new soap                       |        3 | 2017-09-05 13:58:27.319026 |
  5 | Kiss the wife | Put your lips to hers              |        4 | 2017-09-05 13:59:21.805336 |
  6 | Drink beer    | Put beer in your mouth and swallon |        5 | 2017-09-05 14:00:12.307691 | 2017-09-05 14:18:27.360266
  3 | Play with Zoe | Take her to the park               |        2 | 2017-09-05 13:57:49.337514 | 2017-09-05 14:39:22.473012
(5 rows)

todolistdb=# INSERT INTO todos(title,detail,priority,created_at) VALUES('Watch TV','Chelsea game',6,current_timestamp);
ERROR:  column "detail" of relation "todos" does not exist
LINE 1: INSERT INTO todos(title,detail,priority,created_at) VALUES('...
                                ^
todolistdb=# INSERT INTO todos(title,details,priority,created_at) VALUES('Watch TV','Chelsea game',6,current_timestamp);
INSERT 0 1
todolistdb=# select * from todos;
 id |     title     |              details               | priority |         created_at         |        completed_at
----+---------------+------------------------------------+----------+----------------------------+----------------------------
  2 | Feed Dog      | Put food in bowl                   |        1 | 2017-09-05 13:53:49.784062 |
  4 | Wash the car  | Use new soap                       |        3 | 2017-09-05 13:58:27.319026 |
  5 | Kiss the wife | Put your lips to hers              |        4 | 2017-09-05 13:59:21.805336 |
  6 | Drink beer    | Put beer in your mouth and swallon |        5 | 2017-09-05 14:00:12.307691 | 2017-09-05 14:18:27.360266
  3 | Play with Zoe | Take her to the park               |        2 | 2017-09-05 13:57:49.337514 | 2017-09-05 14:39:22.473012
  9 | Watch TV      | Chelsea game                       |        6 | 2017-09-06 10:58:03.873284 |
(6 rows)

todolistdb=# INSERT INTO todos(title,details,priority,created_at) VALUES('Groceries','list of things needed',7,current_timestamp);
INSERT 0 1
todolistdb=# INSERT INTO todos(title,details,priority,created_at) VALUES('walk the dog','arond the block',8,current_timestamp);
INSERT 0 1
todolistdb=# INSERT INTO todos(title,details,priority,created_at) VALUES('video games','poker',9,current_timestamp);
INSERT 0 1
todolistdb=# INSERT INTO todos(title,details,priority,created_at) VALUES('getting ready for b day','get all the beer',10,current_timestamp);
INSERT 0 1
todolistdb=# select * from todos;
 id |          title          |              details               | priority |         created_at         |        completed_at
----+-------------------------+------------------------------------+----------+----------------------------+----------------------------
  2 | Feed Dog                | Put food in bowl                   |        1 | 2017-09-05 13:53:49.784062 |
  4 | Wash the car            | Use new soap                       |        3 | 2017-09-05 13:58:27.319026 |
  5 | Kiss the wife           | Put your lips to hers              |        4 | 2017-09-05 13:59:21.805336 |
  6 | Drink beer              | Put beer in your mouth and swallon |        5 | 2017-09-05 14:00:12.307691 | 2017-09-05 14:18:27.360266
  3 | Play with Zoe           | Take her to the park               |        2 | 2017-09-05 13:57:49.337514 | 2017-09-05 14:39:22.473012
  9 | Watch TV                | Chelsea game                       |        6 | 2017-09-06 10:58:03.873284 |
 10 | Groceries               | list of things needed              |        7 | 2017-09-06 10:58:38.304176 |
 11 | walk the dog            | arond the block                    |        8 | 2017-09-06 10:59:12.327187 |
 12 | video games             | poker                              |        9 | 2017-09-06 11:00:11.989399 |
 13 | getting ready for b day | get all the beer                   |       10 | 2017-09-06 11:01:08.723696 |
(10 rows)

todolistdb=# INSERT INTO todos(title,details,priority,created_at) VALUES('finish homework','learn SQL',11,current_timestamp);
INSERT 0 1
todolistdb=# INSERT INTO todos(title,details,priority,created_at) VALUES('plan vacations','go to colorado',12,current_timestamp);
INSERT 0 1
todolistdb=# INSERT INTO todos(title,details,priority,created_at) VALUES('update resume','add new coding skills',13,current_timestamp);
INSERT 0 1
todolistdb=# INSERT INTO todos(title,details,priority,created_at) VALUES('apply for jobs','google and such',14,current_timestamp);
INSERT 0 1
todolistdb=# INSERT INTO todos(title,details,priority,created_at) VALUES('go to a meetup','Houston startups',15,current_timestamp);
INSERT 0 1
todolistdb=# INSERT INTO todos(title,details,priority,created_at) VALUES('Get 2nd nursury together','get all the shit out of the room to set up',16,current_timestamp);
INSERT 0 1
todolistdb=# INSERT INTO todos(title,details,priority,created_at) VALUES('Brew NEIPA','dry hop with 3 days left not 3 days in',17,current_timestamp);
INSERT 0 1
todolistdb=# INSERT INTO todos(title,details,priority,created_at) VALUES('Buy more sanatizer','starsan from homebrew store',18,current_timestamp);
INSERT 0 1
todolistdb=# INSERT INTO todos(title,details,priority,created_at) VALUES('grow your own hops','get info from dakota',19,current_timestamp);
INSERT 0 1
todolistdb=# INSERT INTO todos(title,details,priority,created_at) VALUES('finish list','complete all tasks',20,current_timestamp);
INSERT 0 1
todolistdb=# select * from todos;
 id |          title           |                  details                   | priority |         created_at         |        completed_at
----+--------------------------+--------------------------------------------+----------+----------------------------+----------------------------
  2 | Feed Dog                 | Put food in bowl                           |        1 | 2017-09-05 13:53:49.784062 |
  4 | Wash the car             | Use new soap                               |        3 | 2017-09-05 13:58:27.319026 |
  5 | Kiss the wife            | Put your lips to hers                      |        4 | 2017-09-05 13:59:21.805336 |
  6 | Drink beer               | Put beer in your mouth and swallon         |        5 | 2017-09-05 14:00:12.307691 | 2017-09-05 14:18:27.360266
  3 | Play with Zoe            | Take her to the park                       |        2 | 2017-09-05 13:57:49.337514 | 2017-09-05 14:39:22.473012
  9 | Watch TV                 | Chelsea game                               |        6 | 2017-09-06 10:58:03.873284 |
 10 | Groceries                | list of things needed                      |        7 | 2017-09-06 10:58:38.304176 |
 11 | walk the dog             | arond the block                            |        8 | 2017-09-06 10:59:12.327187 |
 12 | video games              | poker                                      |        9 | 2017-09-06 11:00:11.989399 |
 13 | getting ready for b day  | get all the beer                           |       10 | 2017-09-06 11:01:08.723696 |
 14 | finish homework          | learn SQL                                  |       11 | 2017-09-06 11:02:03.769978 |
 15 | plan vacations           | go to colorado                             |       12 | 2017-09-06 11:02:55.368432 |
 16 | update resume            | add new coding skills                      |       13 | 2017-09-06 11:03:22.399473 |
 17 | apply for jobs           | google and such                            |       14 | 2017-09-06 11:04:00.070446 |
 18 | go to a meetup           | Houston startups                           |       15 | 2017-09-06 11:04:29.34157  |
 19 | Get 2nd nursury together | get all the shit out of the room to set up |       16 | 2017-09-06 11:05:21.644007 |
 20 | Brew NEIPA               | dry hop with 3 days left not 3 days in     |       17 | 2017-09-06 11:06:04.322692 |
 21 | Buy more sanatizer       | starsan from homebrew store                |       18 | 2017-09-06 11:06:45.185295 |
 22 | grow your own hops       | get info from dakota                       |       19 | 2017-09-06 11:07:17.672368 |
 23 | finish list              | complete all tasks                         |       20 | 2017-09-06 11:07:47.095556 |
(20 rows)

todolistdb=# SELECT * todos WHERE priority = 3;
ERROR:  syntax error at or near "todos"
LINE 1: SELECT * todos WHERE priority = 3;
                 ^
todolistdb=# SELECT * titles WHERE priority = 3;
ERROR:  syntax error at or near "titles"
LINE 1: SELECT * titles WHERE priority = 3;
                 ^
todolistdb=# SELECT title FROM todos WHERE priority = 3;
    title
--------------
 Wash the car
(1 row)

todolistdb=# SELECT title FROM todos WHERE priority = 5 AND completed_at IS NULL;
 title
-------
(0 rows)

todolistdb=# SELECT title FROM todos WHERE priority = 10 AND created_at IS NULL;
 title
-------
(0 rows)

todolistdb=# SELECT title FROM todos WHERE priority = 3 AND completed_at IS NULL;
    title
--------------
 Wash the car
(1 row)

todolistdb=# SELECT * FROM todos WHERE priority = 3;
 id |    title     |   details    | priority |         created_at         | completed_at
----+--------------+--------------+----------+----------------------------+--------------
  4 | Wash the car | Use new soap |        3 | 2017-09-05 13:58:27.319026 |
(1 row)

todolistdb=# SELECT * FROM todos WHERE completed_at IS NULL BY priority;
ERROR:  syntax error at or near "BY"
LINE 1: SELECT * FROM todos WHERE completed_at IS NULL BY priority;
                                                       ^
todolistdb=# SELECT * FROM todos WHERE completed_at IS NULL ORDER BY priority;
 id |          title           |                  details                   | priority |         created_at         | completed_at
----+--------------------------+--------------------------------------------+----------+----------------------------+--------------
  2 | Feed Dog                 | Put food in bowl                           |        1 | 2017-09-05 13:53:49.784062 |
  4 | Wash the car             | Use new soap                               |        3 | 2017-09-05 13:58:27.319026 |
  5 | Kiss the wife            | Put your lips to hers                      |        4 | 2017-09-05 13:59:21.805336 |
  9 | Watch TV                 | Chelsea game                               |        6 | 2017-09-06 10:58:03.873284 |
 10 | Groceries                | list of things needed                      |        7 | 2017-09-06 10:58:38.304176 |
 11 | walk the dog             | arond the block                            |        8 | 2017-09-06 10:59:12.327187 |
 12 | video games              | poker                                      |        9 | 2017-09-06 11:00:11.989399 |
 13 | getting ready for b day  | get all the beer                           |       10 | 2017-09-06 11:01:08.723696 |
 14 | finish homework          | learn SQL                                  |       11 | 2017-09-06 11:02:03.769978 |
 15 | plan vacations           | go to colorado                             |       12 | 2017-09-06 11:02:55.368432 |
 16 | update resume            | add new coding skills                      |       13 | 2017-09-06 11:03:22.399473 |
 17 | apply for jobs           | google and such                            |       14 | 2017-09-06 11:04:00.070446 |
 18 | go to a meetup           | Houston startups                           |       15 | 2017-09-06 11:04:29.34157  |
 19 | Get 2nd nursury together | get all the shit out of the room to set up |       16 | 2017-09-06 11:05:21.644007 |
 20 | Brew NEIPA               | dry hop with 3 days left not 3 days in     |       17 | 2017-09-06 11:06:04.322692 |
 21 | Buy more sanatizer       | starsan from homebrew store                |       18 | 2017-09-06 11:06:45.185295 |
 22 | grow your own hops       | get info from dakota                       |       19 | 2017-09-06 11:07:17.672368 |
 23 | finish list              | complete all tasks                         |       20 | 2017-09-06 11:07:47.095556 |
(18 rows)

todolistdb=# SELECT * FROM todos WHERE completed_at IS NULL ORDER BY priority BETWEEN '2017-09-07';
ERROR:  syntax error at or near ";"
LINE 1: ...completed_at IS NULL ORDER BY priority BETWEEN '2017-09-07';
                                                                      ^
todolistdb=# SELECT * FROM todos WHERE created_at '2017-08-06' AND '2017-09-07' AND compelted_at IS NULL ORDER BY priority;
ERROR:  type "created_at" does not exist
LINE 1: SELECT * FROM todos WHERE created_at '2017-08-06' AND '2017-...
                                  ^
todolistdb=# SELECT * FROM todos WHERE created_at BETWEEN '2017-08-06' AND '2017-09-07' AND compelted_at IS NULL ORDER BY priority;
ERROR:  column "compelted_at" does not exist
LINE 1: ...ated_at BETWEEN '2017-08-06' AND '2017-09-07' AND compelted_...
                                                             ^
HINT:  Perhaps you meant to reference the column "todos.completed_at".
todolistdb=# SELECT * FROM todos WHERE created_at BETWEEN '2017-08-06' AND '2017-09-07' AND completed_at IS NULL ORDER BY priority;
 id |          title           |                  details                   | priority |         created_at         | completed_at
----+--------------------------+--------------------------------------------+----------+----------------------------+--------------
  2 | Feed Dog                 | Put food in bowl                           |        1 | 2017-09-05 13:53:49.784062 |
  4 | Wash the car             | Use new soap                               |        3 | 2017-09-05 13:58:27.319026 |
  5 | Kiss the wife            | Put your lips to hers                      |        4 | 2017-09-05 13:59:21.805336 |
  9 | Watch TV                 | Chelsea game                               |        6 | 2017-09-06 10:58:03.873284 |
 10 | Groceries                | list of things needed                      |        7 | 2017-09-06 10:58:38.304176 |
 11 | walk the dog             | arond the block                            |        8 | 2017-09-06 10:59:12.327187 |
 12 | video games              | poker                                      |        9 | 2017-09-06 11:00:11.989399 |
 13 | getting ready for b day  | get all the beer                           |       10 | 2017-09-06 11:01:08.723696 |
 14 | finish homework          | learn SQL                                  |       11 | 2017-09-06 11:02:03.769978 |
 15 | plan vacations           | go to colorado                             |       12 | 2017-09-06 11:02:55.368432 |
 16 | update resume            | add new coding skills                      |       13 | 2017-09-06 11:03:22.399473 |
 17 | apply for jobs           | google and such                            |       14 | 2017-09-06 11:04:00.070446 |
 18 | go to a meetup           | Houston startups                           |       15 | 2017-09-06 11:04:29.34157  |
 19 | Get 2nd nursury together | get all the shit out of the room to set up |       16 | 2017-09-06 11:05:21.644007 |
 20 | Brew NEIPA               | dry hop with 3 days left not 3 days in     |       17 | 2017-09-06 11:06:04.322692 |
 21 | Buy more sanatizer       | starsan from homebrew store                |       18 | 2017-09-06 11:06:45.185295 |
 22 | grow your own hops       | get info from dakota                       |       19 | 2017-09-06 11:07:17.672368 |
 23 | finish list              | complete all tasks                         |       20 | 2017-09-06 11:07:47.095556 |
(18 rows)

todolistdb=# SELECT id FROM todos WHERE priority = 1;
 id
----
  2
(1 row)

todolistdb=# SELECT MIN FROM todos WHERE created_at IS NULL AND MIN priority = 1;
ERROR:  syntax error at or near "priority"
LINE 1: ...T MIN FROM todos WHERE created_at IS NULL AND MIN priority =...
                                                             ^
todolistdb=# SELECT MIN FROM todos WHERE created_at IS NULL AND MIN priority = 1;
ERROR:  syntax error at or near "priority"
LINE 1: ...T MIN FROM todos WHERE created_at IS NULL AND MIN priority =...
                                                             ^
todolistdb=# SELECT MIN(created_at FROM todos WHERE created_at IS NULL AND MIN priority = 1;
todolistdb(# ;
todolistdb(# SELECT * FROM todos;
todolistdb(# ^Z
[3]+  Stopped                 psql todolistdb
Tylers-MacBook-Pro:~ tylermay$ psql todolistdb;
psql (9.6.5)
Type "help" for help.

todolistdb=# SELECT * FROM todos WHERE priority = 1 ORDER BY created_at LIMIT 1;
 id |  title   |     details      | priority |         created_at         | completed_at
----+----------+------------------+----------+----------------------------+--------------
  2 | Feed Dog | Put food in bowl |        1 | 2017-09-05 13:53:49.784062 |
(1 row)

todolistdb=# 
