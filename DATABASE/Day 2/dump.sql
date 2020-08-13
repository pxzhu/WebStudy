CREATE DATABASE join_ex;
USE join_ex;

DROP TABLE IF EXISTS author;
CREATE TABLE author (
  aid int(11) NOT NULL,
  name varchar(10) DEFAULT NULL,
  city varchar(10) DEFAULT NULL,
  profile_id int(11) DEFAULT NULL,
  PRIMARY KEY (aid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

$ DESC author;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| aid        | int         | NO   | PRI | NULL    |       |
| name       | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(10) | YES  |     | NULL    |       |
| profile_id | int         | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+

INSERT INTO author VALUES (1,'pxzhu','seoul',1),(2,'phs','jeju',2),(3,'Matt','namhae',3);

$ SELECT * FROM author;
+-----+-------+--------+------------+
| aid | name  | city   | profile_id |
+-----+-------+--------+------------+
|   1 | pxzhu | seoul  |          1 |
|   2 | phs   | jeju   |          2 |
|   3 | Matt  | namhae |          3 |
+-----+-------+--------+------------+


DROP TABLE IF EXISTS profile;
CREATE TABLE profile (
  pid int(11) NOT NULL,
  title varchar(10) DEFAULT NULL,
  description tinytext,
  PRIMARY KEY (pid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

$ DESC profile;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| pid         | int         | NO   | PRI | NULL    |       |
| title       | varchar(10) | YES  |     | NULL    |       |
| description | tinytext    | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+

INSERT INTO profile VALUES (1,'developer','developer is ...'),(2,'designer','designer is ..'),(3,'DBA','DBA is ...');

$ SELECT * FROM profile;
+-----+-----------+------------------+
| pid | title     | description      |
+-----+-----------+------------------+
|   1 | developer | developer is ... |
|   2 | designer  | designer is ..   |
|   3 | DBA       | DBA is ...       |
+-----+-----------+------------------+


DROP TABLE IF EXISTS topic;
CREATE TABLE topic (
  tid int(11) NOT NULL,
  title varchar(45) DEFAULT NULL,
  description tinytext,
  author_id varchar(45) DEFAULT NULL,
  PRIMARY KEY (tid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

$ DESC topic;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| tid         | int         | NO   | PRI | NULL    |       |
| title       | varchar(45) | YES  |     | NULL    |       |
| description | tinytext    | YES  |     | NULL    |       |
| author_id   | varchar(45) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+

INSERT INTO topic VALUES (1,'HTML','HTML is ...','1'),(2,'CSS','CSS is ...','2'),(3,'JavaScript','JavaScript is ..','1'),(4,'Database','Database is ...',NULL);

$ SELECT * FROM topic;
+-----+------------+------------------+-----------+
| tid | title      | description      | author_id |
+-----+------------+------------------+-----------+
|   1 | HTML       | HTML is ...      | 1         |
|   2 | CSS        | CSS is ...       | 2         |
|   3 | JavaScript | JavaScript is .. | 1         |
|   4 | Database   | Database is ...  | NULL      |
+-----+------------+------------------+-----------+