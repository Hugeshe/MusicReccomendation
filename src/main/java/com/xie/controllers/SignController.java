package com.xie.controllers;

import com.xie.DTO.SignResult;
import com.xie.beans.User;
import com.xie.services.SignService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/user")
public class SignController {

    @Autowired
    private SignService signService;


    @RequestMapping(value = "/signIn", method = RequestMethod.POST)
    public String signIn(User user, HttpServletRequest request){
        SignResult signResult = signService.signIn(user);
        if(signResult.isState()) {
            return "index";
        }else{
            request.setAttribute("message", signResult.getStateInfo());
            return "signIn";
        }
    }

    @RequestMapping(value = "/signUp", method = RequestMethod.POST)
    public String signUp(User user, HttpServletRequest request){
        SignResult signResult = signService.signUp(user);
        if(signResult.isState()) {
            return "signIn";
        }else{
            request.setAttribute("message", signResult.getStateInfo());
            return "signUp";
        }
    }
}
