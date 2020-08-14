$ CREATE DATABASE unnormal;
$ USE unnormal;

$ CREATE TABLE topic(
  title VARCHAR(50) NOT NULL,
  type VARCHAR(30) NOT NULL,
  description TEXT NOT NULL,
  created INT(5) NOT NULL,
  author_id INT(11) NOT NULL,
  author_name VARCHAR(30) NOT NULL,
  author_profile VARCHAR(30) NOT NULL,
  price INT(11) NOT NULL,
  tag VARCHAR(50) NOT NULL
);

$ INSERT INTO topic(title, type, description, created, author_id, author_name, author_profile, price, tag)
VALUE ('MySQL', 'paper', 'MySQL is ...', 2011, 1, 'kim', 'developer', 10000, 'rdb, free');
$ INSERT INTO topic(title, type, description, created, author_id, author_name, author_profile, price, tag)
VALUE ('MySQL', 'online', 'MySQL is ...', 2011, 1, 'kim', 'developer', 0, 'rdb, free');
$ INSERT INTO topic(title, type, description, created, author_id, author_name, author_profile, price, tag)
VALUE ('ORACLE', 'online', 'ORACLE is ...', 2012, 1, 'kim', 'developer', 0, 'rdb, commercial');

$ SELECT * FROM topic;
+--------+--------+---------------+---------+-----------+-------------+----------------+-------+-----------------+
| title  | type   | description   | created | author_id | author_name | author_profile | price | tag             |
+--------+--------+---------------+---------+-----------+-------------+----------------+-------+-----------------+
| MySQL  | paper  | MySQL is ...  |    2011 |         1 | kim         | developer      | 10000 | rdb, free       |
| MySQL  | online | MySQL is ...  |    2011 |         1 | kim         | developer      |     0 | rdb, free       |
| ORACLE | online | ORACLE is ... |    2012 |         1 | kim         | developer      |     0 | rdb, commercial |
+--------+--------+---------------+---------+-----------+-------------+----------------+-------+-----------------+