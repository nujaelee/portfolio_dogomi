package com.bitstudy.app.controller;

import com.bitstudy.app.service.TcService;
import com.bitstudy.app.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainPageController {
    @Autowired
    TcService tcService;

    @Autowired
    UserService userService;

//    @GetMapping("")
}
