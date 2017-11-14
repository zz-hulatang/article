package com.xiaozhu.article.dao;

import com.xiaozhu.article.bean.Comment;

import java.util.List;

/**
 * Created by 罗高杨 on 2017-11-5.
 */
public interface CommentMapper extends BaseMapper<Comment>{
    List<Comment> findCommentsByArticleId(String articleId);
    void delete(String id);
}
