package com.xie.controllers;

import com.xie.beans.Song;
import com.xie.beans.User;
import com.xie.services.SongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping(value = "/song")
public class SongController {

    @Autowired
    private SongService songService;

    @RequestMapping(value = "/recommends", method = RequestMethod.GET)
    public String recommend(HttpServletRequest request, HttpSession session){
        User user = (User)session.getAttribute("user");
        List<Song> songs = songService.recommendSongs(user);
        request.setAttribute("songs", songs);
        request.setAttribute("title", "Daily Recommend Songs");
        return "listSongs";
    }

    @RequestMapping(value = "/hot", method = RequestMethod.GET)
    public String hot(HttpServletRequest request){
        List<Song> songs = songService.hotSongs();
        request.setAttribute("songs", songs);
        request.setAttribute("title", "Daily Hottest Songs");
        return "listSongs";
    }

    @RequestMapping(value = "/favorites", method = RequestMethod.GET)
    public String favorites(HttpServletRequest request, HttpSession session){
        User user = (User)session.getAttribute("user");
        List<Song> songs = songService.favoriteSongs(user.getUserId());
        request.setAttribute("songs", songs);
        request.setAttribute("title", "Your Favorite Songs");
        return "listSongs";
    }

}
