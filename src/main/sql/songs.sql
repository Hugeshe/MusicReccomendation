use musicRSDB;

CREATE TABLE songs(
  song_id int NOT NULL AUTO_INCREMENT COMMENT '歌曲id',
  songname VARCHAR(50) NOT NULL COMMENT '歌名',
  singer VARCHAR(50) COMMENT '歌手',
  album VARCHAR(6) COMMENT '专辑',
  PRIMARY KEY (song_id)
)ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT '歌曲表';

INSERT INTO songs(songname, singer, album) VALUES
  ("song1","singer1","album1");

ALTER TABLE songs CHANGE album album VARCHAR(100);

ALTER TABLE songs CHANGE songname songname VARCHAR(100);