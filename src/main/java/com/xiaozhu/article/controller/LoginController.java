package com.xiaozhu.article.controller;

import com.xiaozhu.article.bean.User;
import com.xiaozhu.article.service.UserService;
import com.xiaozhu.article.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {
    @Autowired
    private UserService userService;
    @Autowired
    private RedisCacheManager redisCacheManager;

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    @ResponseBody
    public ResponseData login(String email,String password){
        User user = userService.findByEmailAndPassword(email,AppUtil.encryptBASE64(password.getBytes()));
        if(user == null){
            return ResponseData.forbidden();
        }
        String id = user.getId();
        //更新登录时间
        userService.updateLoginDate(System.currentTimeMillis(),id);
        //生成token，放入redis缓存
        String token = TokenUtil.getToken(id);
        redisCacheManager.set(token,id, Constants.TOKEN_ID_EXPIRE);
        return ResponseData.ok().putDataValue("token",token).putDataValue("id",id);
    }

    @RequestMapping(value = "/test",method = RequestMethod.GET)
    @ResponseBody
    public ResponseData test(){
        return ResponseData.ok().putDataValue("name","七楼的南瓜饼子店");
    }
}
