package com.xiaozhu.article.controller;

import com.xiaozhu.article.bean.Article;
import com.xiaozhu.article.bean.Topic;
import com.xiaozhu.article.bean.User;
import com.xiaozhu.article.service.ArticleService;
import com.xiaozhu.article.service.UserService;
import com.xiaozhu.article.util.Constants;
import com.xiaozhu.article.util.RedisCacheManager;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

@Controller
@RequestMapping("/url")
public class UrlController {
    @Autowired
    private RedisCacheManager redisCacheManager;
    @Autowired
    private ArticleService articleService;
    @Autowired
    private UserService userService;

    @RequestMapping("/success")
    public String success(){
        return "success";
    }

    @RequestMapping("/op/{op}")
    public String addArticle(@PathVariable String op,String id,Model model){
        if(StringUtils.isNotBlank(id)){
            Article article = articleService.findOne(id);
            model.addAttribute("article",article);
            List<Topic> topics = article.getTopics();
            int size = topics.size();
            if(topics != null && size > 0){
                StringBuilder builder1 = new StringBuilder();
                StringBuilder builder2 = new StringBuilder();
                for(int i = 0; i < size; i++){
                    if(i < (size - 1)){
                        builder1.append(topics.get(i).getName() + ",");
                        builder2.append(topics.get(i).getId() + ",");
                    }else{
                        builder1.append(topics.get(i).getName());
                        builder2.append(topics.get(i).getId());
                    }
                }
                model.addAttribute("topics",builder1.toString());
                model.addAttribute("topicIds",builder2.toString());
            }
        }
        model.addAttribute("op",op);
        return "add_article";
    }

    @RequestMapping("/myArticle")
    public String myArticle(){
        return "my_article";
    }

    @RequestMapping("/article/{id}")
    public String article(@PathVariable String id, Model model){
        Article article = articleService.findOne(id);
        model.addAttribute("article",article);
        String userId = article.getUserId();
        if(StringUtils.isNotBlank(userId)){
            User user = (User) redisCacheManager.get(Constants.USER_ID + userId);
            if(user == null){
                user = userService.findOne(userId);
            }
            model.addAttribute("user",user);
        }
        return "article_detail";
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
