package com.xiaozhu.article.controller;

import com.xiaozhu.article.bean.Comment;
import com.xiaozhu.article.service.CommentService;
import com.xiaozhu.article.util.AppUtil;
import com.xiaozhu.article.util.ResponseData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/comment")
public class CommentController {

    @Autowired
    private CommentService commentService;

    @RequestMapping(value = "/save",method = RequestMethod.POST)
    @ResponseBody
    public ResponseData saveComment(@RequestBody Comment comment){
        try{
            comment.setId(AppUtil.getUUID());
            comment.setCreateDate(System.currentTimeMillis());
            commentService.save(comment);
            return ResponseData.ok().putDataValue("msg","评论成功");
        }catch (Exception e){
            e.printStackTrace();
            return ResponseData.forbidden().putDataValue("msg","评论失败");
        }
    }

    @RequestMapping(value = "/delete",method = RequestMethod.GET)
    @ResponseBody
    public ResponseData deleteComment(@PathVariable String id){
        try {
            commentService.delete(id);
            return ResponseData.ok().putDataValue("msg","删除成功");
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseData.forbidden().putDataValue("msg","删除失败");
        }
    }

    @RequestMapping(value = "/comments",method = RequestMethod.GET)
    @ResponseBody
    public ResponseData commentList(@PathVariable String articleId){
        List<Comment> list = commentService.findCommentsByArticleId(articleId);
        return ResponseData.ok().putDataValue("comments",list);
    }
}
