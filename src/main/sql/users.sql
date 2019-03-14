use musicRSDB;

CREATE TABLE users(
  user_id int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  username VARCHAR(50) NOT NULL COMMENT '用户名',
  password VARCHAR(50) NOT NULL COMMENT '登陆密码',
  identity VARCHAR(6) DEFAULT 'user' NOT NULL COMMENT 'admin or user',
  gender VARCHAR(10) COMMENT '用户性别',
  birthday TIMESTAMP COMMENT '出生年月',
  PRIMARY KEY (user_id)
)ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT '用户表';

INSERT INTO users(username, password, identity, gender, birthday)
    VALUES ('admin','admin','admin','male','1997-01-01 00:00:00');

#添加username的UNIQUE约束
ALTER TABLE users
    ADD UNIQUE (username);

#添加username索引
ALTER TABLE users
  ADD INDEX index_name (username);