package com.xiaozhu.article.controller;

import com.xiaozhu.article.bean.User;
import com.xiaozhu.article.service.UserService;
import com.xiaozhu.article.util.CoderUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * Created by 罗高杨 on 2017-11-5.
 */
@Controller
public class UserController {
  @Autowired
  private UserService userService;

  @RequestMapping(value = "/save",method = RequestMethod.POST)
  @ResponseBody
  public String saveUser(@RequestBody User user){
    try {
      if(user == null){
        return "error";
      }
      String newPassword = CoderUtil.encryptBASE64(user.getPassword().getBytes());
      user.setPassword(newPassword);
      user.setId("aaaaaaaaa");
      user.setCreateDate(System.currentTimeMillis());
      user.setRecentLoginDate(System.currentTimeMillis());
      userService.save(user);
      return "success";
    }catch (Exception e){
      return "error";
    }
  }

  @RequestMapping(value = "/find/{id}",method = RequestMethod.GET)
  @ResponseBody
  public User findOneUser(@PathVariable String id){
    User user = userService.findOne(id);
    return user;
  }
}
