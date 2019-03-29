package com.xie.services;

import com.xie.DTO.SignResult;
import com.xie.beans.User;

public interface SignService {
    public SignResult signIn(User user);

    public SignResult signUp(User user);

    public User refreshUser(User user);
}
