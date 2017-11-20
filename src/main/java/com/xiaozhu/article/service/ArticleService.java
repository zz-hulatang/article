package com.xiaozhu.article.service;

import com.xiaozhu.article.bean.Article;
import com.xiaozhu.article.bean.ArticleTopic;
import com.xiaozhu.article.dao.ArticleTopicMapper;
import com.xiaozhu.article.dao.ArticleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by 罗高杨 on 2017-11-5.
 */
@Service
public class ArticleService {

    @Autowired
    private ArticleMapper articleMapper;
    @Autowired
    private ArticleTopicMapper articleTopicMapper;

    @Transactional(rollbackFor = Exception.class)
    public void save(Article article, List<ArticleTopic> list) throws Exception{
        articleMapper.save(article);
        articleTopicMapper.saveList(list);
    }

    public Article findOne(String id){
        return articleMapper.findOne(id);
    }

    @Transactional(rollbackFor = Exception.class)
    public void updateAssentNum(String id) throws Exception{
        articleMapper.updateAssentNum(id);
    }

    @Transactional(rollbackFor = Exception.class)
    public void updateAgainstNum(String id) throws Exception{
        articleMapper.updateAgainstNum(id);
    }

    public List<Article> findList(List<String> ids,String orderBy){
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("list",ids);
        map.put("orderBy",orderBy);
        return articleMapper.findList(map);
    }
}
