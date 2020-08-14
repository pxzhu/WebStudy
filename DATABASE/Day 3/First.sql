$ CREATE DATABASE firstnormal;
$ USE firstnormal;

$ CREATE TABLE topic(
  title VARCHAR(50) NOT NULL,
  type VARCHAR(30) NOT NULL,
  description TEXT NOT NULL,
  created INT(5) NOT NULL,
  author_id INT(11) NOT NULL,
  author_name VARCHAR(30) NOT NULL,
  author_profile VARCHAR(30) NOT NULL,
  price INT(11) NOT NULL
);

$ CREATE TABLE tag(
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  PRIMARY KEY(id)
);

$ CREATE TABLE topic_tag_relation(
  topic_title VARCHAR(50) NOT NULL,
  tag_id INT(11) NOT NULL
);

$ INSERT INTO topic(title, type, description, created, author_id, author_name, author_profile, price)
VALUE ('MySQL', 'paper', 'MySQL is ...', 2011, 1, 'kim', 'developer', 10000);
$ INSERT INTO topic(title, type, description, created, author_id, author_name, author_profile, price)
VALUE ('MySQL', 'online', 'MySQL is ...', 2011, 1, 'kim', 'developer', 0);
$ INSERT INTO topic(title, type, description, created, author_id, author_name, author_profile, price)
VALUE ('ORACLE', 'online', 'ORACLE is ...', 2012, 1, 'kim', 'developer', 0);

$ INSERT INTO tag(id, name)
VALUE (1, 'rdb');
$ INSERT INTO tag(id, name)
VALUE (2, 'free');
$ INSERT INTO tag(id, name)
VALUE (3, 'commercial');

$ INSERT INTO topic_tag_relation(topic_title, tag_id)
VALUE ('MySQL', 1);
$ INSERT INTO topic_tag_relation(topic_title, tag_id)
VALUE ('MySQL', 2);
$ INSERT INTO topic_tag_relation(topic_title, tag_id)
VALUE ('ORACLE', 1);
$ INSERT INTO topic_tag_relation(topic_title, tag_id)
VALUE ('ORACLE', 2);

$ SELECT * FROM topic;
+--------+--------+---------------+---------+-----------+-------------+----------------+-------+
| title  | type   | description   | created | author_id | author_name | author_profile | price |    
+--------+--------+---------------+---------+-----------+-------------+----------------+-------+    
| MySQL  | paper  | MySQL is ...  |    2011 |         1 | kim         | developer      | 10000 |    
| MySQL  | online | MySQL is ...  |    2011 |         1 | kim         | developer      |     0 |    
| ORACLE | online | ORACLE is ... |    2012 |         1 | kim         | developer      |     0 |    
+--------+--------+---------------+---------+-----------+-------------+----------------+-------+ 

$ SELECT * FROM tag;
+----+------------+
| id | name       |
+----+------------+
|  1 | rdb        |
|  2 | free       |
|  3 | commercial |
+----+------------+

$ SELECT * FROM topic_tag_relation;
+-------------+--------+
| topic_title | tag_id |
+-------------+--------+
| MySQL       |      1 |
| MySQL       |      2 |
| ORACLE      |      1 |
| ORACLE      |      2 |
+-------------+--------+

$ SELECT title, type, description, created, author_id, author_name, author_profile, price, tt.tag_id, tag.name
FROM topic 
JOIN topic_tag_relation AS tt 
ON tt.topic_title = topic.title 
JOIN tag 
ON tag.id = tt.tag_id;
+--------+--------+---------------+---------+-----------+-------------+----------------+-------+--------+------+
| title  | type   | description   | created | author_id | author_name | author_profile | price | tag_id | name |
+--------+--------+---------------+---------+-----------+-------------+----------------+-------+--------+------+
| MySQL  | paper  | MySQL is ...  |    2011 |         1 | kim         | developer      | 10000 |      1 | rdb  |
| MySQL  | online | MySQL is ...  |    2011 |         1 | kim         | developer      |     0 |      1 | rdb  |
| MySQL  | paper  | MySQL is ...  |    2011 |         1 | kim         | developer      | 10000 |      2 | free |
| MySQL  | online | MySQL is ...  |    2011 |         1 | kim         | developer      |     0 |      2 | free |
| ORACLE | online | ORACLE is ... |    2012 |         1 | kim         | developer      |     0 |      1 | rdb  |
| ORACLE | online | ORACLE is ... |    2012 |         1 | kim         | developer      |     0 |      2 | free |
+--------+--------+---------------+---------+-----------+-------------+----------------+-------+--------+------+