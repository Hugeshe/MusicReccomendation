package com.xie.DAO;

import com.xie.beans.User;

public interface UserDAO {
    public User selectById(int userId);

    public User selectByName(String username);

    public int insertUser(User user);
}
