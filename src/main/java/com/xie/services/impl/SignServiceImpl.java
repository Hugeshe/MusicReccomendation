package com.xie.services.impl;

import com.xie.DAO.UserDAO;
import com.xie.DTO.SignResult;
import com.xie.beans.User;
import com.xie.services.SignService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SignServiceImpl implements SignService {

    @Autowired
    private UserDAO userDAO;

    @Override
    public SignResult signIn(User user) {
        User trueUser = userDAO.selectByName(user.getUsername());
        if(trueUser == null){
            return new SignResult(false, "user not exists");
        }else{
            if (user.getPassword().equals(trueUser.getPassword())) {
                return new SignResult(true, "login success");
            }else {
                return new SignResult(false, "wrong password");
            }
        }
    }

    @Override
    public SignResult signUp(User user) {
        User check = userDAO.selectByName(user.getUsername());
        if(check != null){
            return new SignResult(false, "The user name is already in use");
        }
        int insertCount = userDAO.insertUser(user);
        if(insertCount == 1){
            return new SignResult(true, "sign up success");
        }else{
            return new SignResult(false, "something wrong, please try again");
        }
    }
}
