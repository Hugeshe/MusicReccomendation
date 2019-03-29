package com.xie.DAO;

import com.xie.beans.Song;
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
public class SongDAOTest {

    @Autowired
    private SongDAO songDAO;

    @Test
    public void selectById() throws Exception {
        Song song = songDAO.selectById(100);
        System.out.println(song);
    }

    @Test
    public void selectByName() throws Exception {
        Song song = songDAO.selectByName("song");
        System.out.println(song);
    }

    @Test
    public void listByName() throws Exception {
        List<Song> songs = songDAO.listByName("song");
        for(Song song:songs){
            System.out.println(song);
        }
    }

    @Test
    public void listFavorites() throws Exception{
        List<Song> songs = songDAO.listFavorites(255262227L);
        for(Song song:songs){
            System.out.println(song);
        }
    }
}