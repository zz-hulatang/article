package com.xiaozhu.article.dao;

import com.xiaozhu.article.bean.User;
import org.apache.ibatis.annotations.Param;

import java.util.Map;

/**
 * Created by 罗高杨 on 2017-11-5.
 */
public interface UserMapper extends BaseMapper<User>{
    User findByEmailAndPassword(@Param("email") String email,@Param("password") String password);
    void updateLoginDate(Map<String, Object> map);
}
