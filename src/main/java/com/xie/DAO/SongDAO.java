package com.xie.DAO;

import com.xie.beans.Song;

import java.util.List;

public interface SongDAO {
    public Song selectById(long songId);

    public Song selectByName(String songname);

    public List<Song> listByName(String songname);

    public List<Song> listFavorites(long uid);

    public List<Song> listRecommends(long uid);

    public List<Song> listHottest();
}
