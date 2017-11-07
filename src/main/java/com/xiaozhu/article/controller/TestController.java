package com.xiaozhu.article.controller;

import com.xiaozhu.article.util.RedisCacheManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller
public class TestController {

    @Autowired
    private RedisTemplate<String, Object> redisTemplate;
    @Autowired
    private RedisCacheManager redisCacheManager;

    @RequestMapping("/login")
//    @ResponseBody
    public String login(){
//        redisTemplate.boundValueOps("a").set("罗小筑");
//        redisTemplate.boundValueOps("b").set("luoxiaozhu");
//        redisTemplate.opsForValue().set("d","hahaha");
        redisCacheManager.set("e","小筑");
        return "a";
    }

    @RequestMapping(value = "/login222",method = RequestMethod.GET,produces = "application/json; charset=utf-8")
    @ResponseBody
    public String login222(String name){
        String value = (String) redisCacheManager.get("e");
        //return value;
        System.out.println(value);
        return value;
    }
}
