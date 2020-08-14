$ CREATE DATABASE rdb;
$ USE rdb;

-- 저자
$ CREATE TABLE author(
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(15) NOT NULL,
  profile VARCHAR(100) NOT NULL,
  created DATETIME NOT NULL,
  PRIMARY KEY(id)
);

-- 글
$ CREATE TABLE topic(
  id INT(11) NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  description TEXT NOT NULL,
  created DATETIME NOT NULL,
  PRIMARY KEY(id)
);

-- 댓글
$ CREATE TABLE comment(
  id INT(11) NOT NULL AUTO_INCREMENT,
  description TEXT NOT NULL,
  created DATETIME NOT NULL,
  author_id INT(11) NOT NULL,
  topic_id INT(11) NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY(author_id) REFERENCES author(id),
  FOREIGN KEY(topic_id) REFERENCES topic(id)
);

-- 휴면
$ CREATE TABLE dormant(
  author_id INT(11) NOT NULL,
  created DATETIME NOT NULL,
  PRIMARY KEY(author_id),
  FOREIGN KEY(author_id) REFERENCES author(id)
);

-- 매핑
$ CREATE TABLE mapping(
  author_id INT(11) NOT NULL,
  topic_id INT(11) NOT NULL,
  created DATETIME NOT NULL,
  PRIMARY KEY(author_id, topic_id),
  FOREIGN KEY(author_id) REFERENCES author(id),
  FOREIGN KEY(topic_id) REFERENCES topic(id)
);