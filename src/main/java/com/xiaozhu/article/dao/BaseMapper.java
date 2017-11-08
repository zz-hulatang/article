package com.xiaozhu.article.dao;

/**
 * Created by 罗高杨 on 2017-11-5.
 */
public interface BaseMapper<T> {
  void save(T t);
  T findOne(String id);
  T update(T t);
}
