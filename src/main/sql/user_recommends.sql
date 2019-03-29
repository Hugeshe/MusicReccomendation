use musicRSDB;

CREATE TABLE user_recommends(
  user_id int NOT NULL COMMENT '用户id',
  song_id int NOT NULL COMMENT '歌曲id1',
  PRIMARY KEY (user_id, song_id),
  FOREIGN KEY (user_id) REFERENCES users (user_id),
  FOREIGN KEY (song_id) REFERENCES songs (song_id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT '用户推荐歌曲表'


