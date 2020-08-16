$ CREATE TABLE topic(
  id INT(11) NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  description TEXT NULL,
  created DATETIME NOT NULL,
  author_id INT(11) NULL,
  PRIMARY KEY(id)
);

$ CREATE TABLE author(
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(20) NOT NULL,
  profile VARCHAR(200) DEFAULT NULL,
  PRIMARY KEY(id)
);

$ INSERT INTO author(id, name, profile)
VALUES(1, 'pxzhu', 'developer');
$ INSERT INTO author(id, name, profile)
VALUES(2, 'phs', 'database administrator');
$ INSERT INTO author(id, name, profile)
VALUES(3, 'Matt', 'data scientist, developer');

$ INSERT INTO topic(id, title, description, created, author_id)
VALUES(1, 'MySQL', 'MySQL is ...', '2020-08-01 18:02:55', 1);
$ INSERT INTO topic(id, title, description, created, author_id)
VALUES(2, 'Oracle', 'Oracle is ...', '2020-08-03 12:22:13', 1);
$ INSERT INTO topic(id, title, description, created, author_id)
VALUES(3, 'SQL Server', 'SQL Server is ...', '2020-08-04 07:52:10', 2);
$ INSERT INTO topic(id, title, description, created, author_id)
VALUES(4, 'PostgreSQL', 'PostgreSQL is ...', '2020-08-09 20:31:03', 3);
$ INSERT INTO topic(id, title, description, created, author_id)
VALUES(5, 'MongoDB', 'MongoDB is ...', '2020-08-11 10:01:39', 1);

$ SELECT * FROM topic LEFT JOIN author ON topic.author_id = author.id;
$ SELECT topic.id, title, description, created, name, profile FROM topic LEFT JOIN author ON topic.author_id = author.id;
$ SELECT topic.id AS topic_id, title, description, created, name, profile FROM topic LEFT JOIN author ON topic.author_id = author.id;