package com.xiaozhu.article.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/url")
public class UrlController {

    @RequestMapping("/success")
    public String success(){
        return "success";
    }

}
