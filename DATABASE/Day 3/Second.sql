$ CREATE DATABASE secondnormal;
$ USE secondnormal;

$ CREATE TABLE topic(
  title VARCHAR(50) NOT NULL,
  description TEXT NOT NULL,
  created INT(5) NOT NULL,
  author_id INT(11) NOT NULL,
  author_name VARCHAR(30) NOT NULL,
  author_profile VARCHAR(30) NOT NULL
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

$ CREATE TABLE topic_type(
  title VARCHAR(50) NOT NULL,
  type VARCHAR(30) NOT NULL,
  price INT(11) NOT NULL
);

$ INSERT INTO topic(title, description, created, author_id, author_name, author_profile)
VALUE ('MySQL', 'MySQL is ...', 2011, 1, 'kim', 'developer');
$ INSERT INTO topic(title, description, created, author_id, author_name, author_profile)
VALUE ('ORACLE', 'ORACLE is ...', 2012, 1, 'kim', 'developer');

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

$ INSERT INTO topic_type(title, type, price)
VALUE ('MySQL', 'paper', 10000);
$ INSERT INTO topic_type(title, type, price)
VALUE ('MySQL', 'online', 0);
$ INSERT INTO topic_type(title, type, price)
VALUE ('ORACLE', 'online', 0);

$ SELECT * FROM topic;
+--------+---------------+---------+-----------+-------------+----------------+
| title  | description   | created | author_id | author_name | author_profile |
+--------+---------------+---------+-----------+-------------+----------------+
| MySQL  | MySQL is ...  |    2011 |         1 | kim         | developer      |
| ORACLE | ORACLE is ... |    2012 |         1 | kim         | developer      |
+--------+---------------+---------+-----------+-------------+----------------+

$ SELECT * FROM topic_type;
+--------+--------+-------+
| title  | type   | price |
+--------+--------+-------+
| MySQL  | paper  | 10000 |
| MySQL  | online |     0 |
| ORACLE | online |     0 |
+--------+--------+-------+

$ SELECT topic.title, ty.type, description, created, author_id, author_name, author_profile, ty.price, tt.tag_id, tag.name
FROM topic 
JOIN topic_tag_relation AS tt 
ON tt.topic_title = topic.title 
JOIN tag 
ON tag.id = tt.tag_id
JOIN topic_type AS ty
ON ty.title = topic.title;
+--------+--------+---------------+---------+-----------+-------------+----------------+-------+--------+------+
| title  | type   | description   | created | author_id | author_name | author_profile | price | tag_id | name |
+--------+--------+---------------+---------+-----------+-------------+----------------+-------+--------+------+
| MySQL  | paper  | MySQL is ...  |    2011 |         1 | kim         | developer      | 10000 |      1 | rdb  |
| MySQL  | paper  | MySQL is ...  |    2011 |         1 | kim         | developer      | 10000 |      2 | free |
| MySQL  | online | MySQL is ...  |    2011 |         1 | kim         | developer      |     0 |      1 | rdb  |
| MySQL  | online | MySQL is ...  |    2011 |         1 | kim         | developer      |     0 |      2 | free |
| ORACLE | online | ORACLE is ... |    2012 |         1 | kim         | developer      |     0 |      1 | rdb  |
| ORACLE | online | ORACLE is ... |    2012 |         1 | kim         | developer      |     0 |      2 | free |
+--------+--------+---------------+---------+-----------+-------------+----------------+-------+--------+------+