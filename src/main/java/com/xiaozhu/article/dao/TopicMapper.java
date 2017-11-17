package com.xiaozhu.article.dao;

import com.xiaozhu.article.bean.Topic;

import java.util.List;

/**
 * Created by 罗高杨 on 2017-11-5.
 */
public interface TopicMapper extends BaseMapper<Topic>{
    List<Topic> topicList();
}
