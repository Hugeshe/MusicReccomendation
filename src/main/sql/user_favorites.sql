use musicRSDB;

CREATE TABLE user_favorites(
  user_id int NOT NULL ,
  song_id int NOT NULL ,
  score int NOT NULL COMMENT '用户评分',
  change_time TIMESTAMP DEFAULT current_timestamp COMMENT '时间戳',
  FOREIGN KEY (user_id) REFERENCES users (user_id),
  FOREIGN KEY (song_id) REFERENCES songs (song_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '用户收藏歌曲表';

INSERT INTO user_favorites(user_id, song_id, score) VALUES