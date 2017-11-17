package com.xiaozhu.article.service;

import com.xiaozhu.article.bean.Topic;
import com.xiaozhu.article.dao.TopicMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 罗高杨 on 2017-11-5.
 */
@Service
public class TopicService {

    @Autowired
    private TopicMapper topicMapper;

    public void save(Topic topic) throws Exception{
        topicMapper.save(topic);
    }

    public List<Topic> topicList(){
        return topicMapper.topicList();
    }
}
