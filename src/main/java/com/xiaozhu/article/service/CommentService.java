package com.xiaozhu.article.service;

import com.xiaozhu.article.bean.Comment;
import com.xiaozhu.article.dao.CommentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by 罗高杨 on 2017-11-5.
 */
@Service
public class CommentService {
    @Autowired
    private CommentMapper commentMapper;

    public void save(Comment comment) throws Exception{
        commentMapper.save(comment);
    }

    @Transactional(rollbackFor = Exception.class)
    public void delete(String id) throws Exception{
        commentMapper.delete(id);
    }

    /**
     * 评论列表
     * @param id articleId
     * @return
     */
    public List<Comment> findCommentsByArticleId(String id){
        return commentMapper.findCommentsByArticleId(id);
    }
}
