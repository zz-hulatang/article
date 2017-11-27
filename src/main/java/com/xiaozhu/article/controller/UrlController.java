package com.xiaozhu.article.controller;

import com.xiaozhu.article.util.RedisCacheManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

@Controller
@RequestMapping("/url")
public class UrlController {
    @Autowired
    private RedisCacheManager redisCacheManager;

    @RequestMapping("/success")
    public String success(){
        return "success";
    }

    @RequestMapping("/addArticle")
    public String addArticle(){
        return "add_article";
    }

    @RequestMapping("/myArticle")
    public String myArticle(){
        return "my_article";
    }

    @RequestMapping("/testRedis")
    @ResponseBody
    public Object testRedis(){
        Map<String,String> map = new HashMap<String, String>();
        map.put("name","小筑");
        map.put("email","328949691@qq.com");
        map.put("tel","13162063274");
        redisCacheManager.zAdd("user",map,90);
        return map;
    }

    @RequestMapping("/testRedis2")
    @ResponseBody
    public Object testRedis2(){
        Set set = redisCacheManager.zRange("user",0,-1,"asc");
        return set;
    }
}
