package com.xie.services.impl;

import com.xie.DAO.SongDAO;
import com.xie.beans.Song;
import com.xie.beans.User;
import com.xie.services.SongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SongServiceImpl implements SongService {

    @Autowired
    private SongDAO songDAO;
    @Override
    public List<Song> recommendSongs(User user) {
        return songDAO.listRecommends(user.getUserId());
    }

    @Override
    public List<Song> hotSongs() {
        return songDAO.listHottest();
    }

    @Override
    public List<Song> favoriteSongs(long uid) {
        return songDAO.listFavorites(uid);
    }
}
