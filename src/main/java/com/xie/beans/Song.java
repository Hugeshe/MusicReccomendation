package com.xie.beans;

public class Song {
    private long songId;
    private String songname;
    private String singer;
    private String album;
    private String picUrl;

    public String getPicUrl() {
        return picUrl;
    }

    public void setPicUrl(String picUrl) {
        this.picUrl = picUrl;
    }

    @Override

    public String toString() {
        return "Song{" +
                "songId=" + songId +
                ", songname='" + songname + '\'' +
                ", singer='" + singer + '\'' +
                ", album='" + album + '\'' +
                '}';
    }

    public long getSongId() {
        return songId;
    }

    public void setSongId(long songId) {
        this.songId = songId;
    }

    public String getSongname() {
        return songname;
    }

    public void setSongname(String songname) {
        this.songname = songname;
    }

    public String getSinger() {
        return singer;
    }

    public void setSinger(String singer) {
        this.singer = singer;
    }

    public String getAlbum() {
        return album;
    }

    public void setAlbum(String album) {
        this.album = album;
    }
}
