package com.xiaozhu.article.controller;

import com.xiaozhu.article.bean.Topic;
import com.xiaozhu.article.service.TopicService;
import com.xiaozhu.article.util.AppUtil;
import com.xiaozhu.article.util.ResponseData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/group")
public class GroupController {

    @Autowired
    private TopicService topicService;

    @RequestMapping(value = "/save",method = RequestMethod.POST)
    @ResponseBody
    public ResponseData save(Topic topic){
        try {
            topic.setId(AppUtil.getUUID());
            topicService.save(topic);
            return ResponseData.ok().putDataValue("topic save success","保存成功");
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseData.forbidden().putDataValue("topic save fail","保存失败");
        }
    }

}
