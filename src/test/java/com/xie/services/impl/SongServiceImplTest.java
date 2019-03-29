package com.xie.services.impl;

import com.xie.DAO.SongDAO;
import com.xie.DAO.UserDAO;
import com.xie.beans.Song;
import com.xie.beans.User;
import com.xie.services.SongService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({
        "classpath:/spring/spring-*.xml"
})
public class SongServiceImplTest {

    @Autowired
    private SongService songService;

    @Autowired
    private UserDAO userDAO;

    @Test
    public void recommendSongs() throws Exception {
        User user = userDAO.selectByName("xie");
        List<Song> songs = songService.recommendSongs(user);
        for(Song song : songs){
            System.out.println(song);
        }
    }

    @Test
    public void hotSongs() throws Exception {
        List<Song> songs = songService.hotSongs();
        for(Song song : songs){
            System.out.println(song);
        }
    }

    @Test
    public void favoriteSongs() throws Exception {
        List<Song> songs = songService.favoriteSongs(255262227L);
        for(Song song : songs){
            System.out.println(song);
        }
    }
}