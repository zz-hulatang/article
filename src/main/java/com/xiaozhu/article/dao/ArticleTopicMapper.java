package com.xiaozhu.article.dao;

import com.xiaozhu.article.bean.ArticleTopic;

import java.util.List;

/**
 * Created by 罗高杨 on 2017-11-5.
 */
public interface ArticleTopicMapper extends BaseMapper<ArticleTopic>{
    void saveList(List<ArticleTopic> list);
}
