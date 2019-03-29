package com.xie.services;

import com.xie.DAO.SongDAO;
import com.xie.beans.Song;
import com.xie.beans.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

public interface SongService {
    public List<Song> recommendSongs(User user);

    public List<Song> hotSongs();

    public List<Song> favoriteSongs(long uid);


}
