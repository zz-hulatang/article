package com.xiaozhu.article.controller;

import com.xiaozhu.article.bean.Article;
import com.xiaozhu.article.bean.ArticleTopic;
import com.xiaozhu.article.bean.Topic;
import com.xiaozhu.article.service.ArticleService;
import com.xiaozhu.article.util.AppUtil;
import com.xiaozhu.article.util.ResponseData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/article")
public class ArticleController {

    @Autowired
    private ArticleService articleService;

    @RequestMapping(value = "/save",method = RequestMethod.POST)
    @ResponseBody
    public ResponseData saveArticle(@RequestBody Article article){
        try {
            String id = AppUtil.getUUID();
            article.setId(id);
            article.setCreateDate(System.currentTimeMillis());
            List<Topic> topics = article.getTopics();
            List<ArticleTopic> list = null;
            if(topics.size() > 0){
                list = new ArrayList<ArticleTopic>();
                for(Topic topic : topics){
                    ArticleTopic articleTopic = new ArticleTopic(AppUtil.getUUID(),id, topic.getId());
                    list.add(articleTopic);
                }
            }
            articleService.save(article,list);
            return ResponseData.ok().putDataValue("article save success","保存成功");
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseData.forbidden().putDataValue("article save fail","保存失败");
        }
    }

    @RequestMapping(value = "/find/{id}",method = RequestMethod.GET)
    @ResponseBody
    public ResponseData findOneArticle(@PathVariable String id){
        Article article = articleService.findOne(id);
        if(article == null){
            return ResponseData.notFound().putDataValue("article not found","文章不存在");
        }
        return ResponseData.ok().putDataValue("article",article);
    }
}
