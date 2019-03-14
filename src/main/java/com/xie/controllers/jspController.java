package com.xie.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/jsp")
public class jspController {

    @RequestMapping(value = "index")
    public String index(){
        return "index";
    }

    @RequestMapping(value = "signIn_page")
    public String signInPage(){
        return "signIn";
    }

    @RequestMapping(value = "signUp_page")
    public String signUpPage(){
        return "signUp";
    }
}
