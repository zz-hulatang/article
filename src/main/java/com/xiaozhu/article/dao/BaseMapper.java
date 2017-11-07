package com.xiaozhu.article.dao;

import org.apache.ibatis.annotations.Param;

/**
 * Created by 罗高杨 on 2017-11-5.
 */
public interface BaseMapper<T> {
  void save(T t);
  T findOne(@Param("id") String id);
}
