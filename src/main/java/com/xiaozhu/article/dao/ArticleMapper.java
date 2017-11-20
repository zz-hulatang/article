package com.xiaozhu.article.dao;

import com.xiaozhu.article.bean.Article;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * Created by 罗高杨 on 2017-11-5.
 */
public interface ArticleMapper extends BaseMapper<Article>{
    void updateAssentNum(String id);
    void updateAgainstNum(String id);
    List<Article> findList(Map<String,Object> map);
}
