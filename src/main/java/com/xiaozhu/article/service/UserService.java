package com.xiaozhu.article.service;

import com.xiaozhu.article.bean.User;
import com.xiaozhu.article.dao.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by 罗高杨 on 2017-11-5.
 */

@Service
public class UserService {
  @Autowired
  private UserMapper userMapper;

  @Transactional
  public void save(User user) throws Exception{
    userMapper.save(user);
  }

  public User findOne(String id){
    return userMapper.findOne(id);
  }

  public User findByEmailAndPassword(String email,String password){
    return userMapper.findByEmailAndPassword(email,password);
  }

  @Transactional
  public void updateLoginDate(long loginDate,String id){
    Map<String,Object> map = new HashMap<String,Object>(2);
    map.put("recentLoginDate",loginDate);
    map.put("id",id);
    userMapper.updateLoginDate(map);
  }

  @Transactional
  public void updatePassword(String id,String password) throws Exception{
    userMapper.updatePassword(id,password);
  }

  @Transactional
  public void updateImgUrl(String id,String imgUrl){
    Map<String,Object> map = new HashMap<String,Object>(2);
    map.put("imgUrl",imgUrl);
    map.put("id",id);
    userMapper.updateImgUrl(map);
  }
}
