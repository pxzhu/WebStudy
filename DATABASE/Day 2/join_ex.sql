$ SELECT * FROM topic;
+-----+------------+------------------+-----------+
| tid | title      | description      | author_id |
+-----+------------+------------------+-----------+
|   1 | HTML       | HTML is ...      | 1         |
|   2 | CSS        | CSS is ...       | 2         |
|   3 | JavaScript | JavaScript is .. | 1         |
|   4 | Database   | Database is ...  | NULL      |
+-----+------------+------------------+-----------+

$ SELECT * FROM topic LEFT JOIN author ON topic.author_id = author.aid;
+-----+------------+------------------+-----------+------+-------+-------+------------+
| tid | title      | description      | author_id | aid  | name  | city  | profile_id |
+-----+------------+------------------+-----------+------+-------+-------+------------+
|   1 | HTML       | HTML is ...      | 1         |    1 | pxzhu | seoul |          1 |
|   2 | CSS        | CSS is ...       | 2         |    2 | phs   | jeju  |          2 |
|   3 | JavaScript | JavaScript is .. | 1         |    1 | pxzhu | seoul |          1 |
|   4 | Database   | Database is ...  | NULL      | NULL | NULL  | NULL  |       NULL |
+-----+------------+------------------+-----------+------+-------+-------+------------+

$ SELECT * FROM topic LEFT JOIN author ON topic.author_id = author.aid LEFT JOIN profile ON author.profile_id = profile.pid;
+-----+------------+------------------+-----------+------+-------+-------+------------+------+-----------+------------------+
| tid | title      | description      | author_id | aid  | name  | city  | profile_id | pid  | title     | description      |
+-----+------------+------------------+-----------+------+-------+-------+------------+------+-----------+------------------+
|   1 | HTML       | HTML is ...      | 1         |    1 | pxzhu | seoul |          1 |    1 | developer | developer is ... |
|   2 | CSS        | CSS is ...       | 2         |    2 | phs   | jeju  |          2 |    2 | designer  | designer is ..   |
|   3 | JavaScript | JavaScript is .. | 1         |    1 | pxzhu | seoul |          1 |    1 | developer | developer is ... |
|   4 | Database   | Database is ...  | NULL      | NULL | NULL  | NULL  |       NULL | NULL | NULL      | NULL             |
+-----+------------+------------------+-----------+------+-------+-------+------------+------+-----------+------------------+

$ SELECT tid, topic.title, author_id, name, profile.title AS job_title FROM topic LEFT JOIN author ON topic.author_id = author.aid LEFT JOIN profile ON author.profile_id = profile.pid;
+-----+------------+-----------+-------+-----------+
| tid | title      | author_id | name  | job_title |
+-----+------------+-----------+-------+-----------+
|   1 | HTML       | 1         | pxzhu | developer |
|   2 | CSS        | 2         | phs   | designer  |
|   3 | JavaScript | 1         | pxzhu | developer |
|   4 | Database   | NULL      | NULL  | NULL      |
+-----+------------+-----------+-------+-----------+

$ SELECT tid, topic.title, author_id, name, profile.title AS job_title FROM topic LEFT JOIN author ON topic.author_id = author.aid LEFT JOIN profile ON author.profile_id = profile.pid WHERE aid = 1;
+-----+------------+-----------+-------+-----------+
| tid | title      | author_id | name  | job_title |
+-----+------------+-----------+-------+-----------+
|   1 | HTML       | 1         | pxzhu | developer |
|   3 | JavaScript | 1         | pxzhu | developer |
+-----+------------+-----------+-------+-----------+

$ SELECT * FROM topic INNER JOIN author ON topic.author_id = author.aid;
+-----+------------+------------------+-----------+-----+-------+-------+------------+
| tid | title      | description      | author_id | aid | name  | city  | profile_id |
+-----+------------+------------------+-----------+-----+-------+-------+------------+
|   1 | HTML       | HTML is ...      | 1         |   1 | pxzhu | seoul |          1 |
|   2 | CSS        | CSS is ...       | 2         |   2 | phs   | jeju  |          2 |
|   3 | JavaScript | JavaScript is .. | 1         |   1 | pxzhu | seoul |          1 |
+-----+------------+------------------+-----------+-----+-------+-------+------------+

$ SELECT * FROM topic INNER JOIN author ON topic.author_id = author.aid INNER JOIN profile ON profile.pid = author.profile_id;
+-----+------------+------------------+-----------+-----+-------+-------+------------+-----+-----------+------------------+
| tid | title      | description      | author_id | aid | name  | city  | profile_id | pid | title     | description      |
+-----+------------+------------------+-----------+-----+-------+-------+------------+-----+-----------+------------------+
|   1 | HTML       | HTML is ...      | 1         |   1 | pxzhu | seoul |          1 |   1 | developer | developer is ... |
|   2 | CSS        | CSS is ...       | 2         |   2 | phs   | jeju  |          2 |   2 | designer  | designer is ..   |
|   3 | JavaScript | JavaScript is .. | 1         |   1 | pxzhu | seoul |          1 |   1 | developer | developer is ... |
+-----+------------+------------------+-----------+-----+-------+-------+------------+-----+-----------+------------------+

$ (SELECT * FROM topic LEFT JOIN author ON topic.author_id = author.aid) UNION (SELECT * FROM topic RIGHT JOIN author ON topic.author_id = author.aid);
+------+------------+------------------+-----------+------+-------+--------+------------+
| tid  | title      | description      | author_id | aid  | name  | city   | profile_id |
+------+------------+------------------+-----------+------+-------+--------+------------+
|    1 | HTML       | HTML is ...      | 1         |    1 | pxzhu | seoul  |          1 |
|    2 | CSS        | CSS is ...       | 2         |    2 | phs   | jeju   |          2 |
|    3 | JavaScript | JavaScript is .. | 1         |    1 | pxzhu | seoul  |          1 |
|    4 | Database   | Database is ...  | NULL      | NULL | NULL  | NULL   |       NULL |
| NULL | NULL       | NULL             | NULL      |    3 | Matt  | namhae |          3 |
+------+------------+------------------+-----------+------+-------+--------+------------+

$ SELECT * FROM topic LEFT JOIN author ON topic.author_id = author.aid WHERE author.aid is NULL;
+-----+----------+-----------------+-----------+------+------+------+------------+
| tid | title    | description     | author_id | aid  | name | city | profile_id |
+-----+----------+-----------------+-----------+------+------+------+------------+
|   4 | Database | Database is ... | NULL      | NULL | NULL | NULL |       NULL |
+-----+----------+-----------------+-----------+------+------+------+------------+