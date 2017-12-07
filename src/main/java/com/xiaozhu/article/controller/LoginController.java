package com.xiaozhu.article.controller;

import com.xiaozhu.article.bean.User;
import com.xiaozhu.article.service.UserService;
import com.xiaozhu.article.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
public class LoginController {
    @Autowired
    private UserService userService;
    @Autowired
    private RedisCacheManager redisCacheManager;

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    @ResponseBody
    public ResponseData login(@RequestBody Map<String ,String > map){
        User user = userService.findByEmailAndPassword(map.get("email"),AppUtil.encryptBASE64(map.get("password").getBytes()));
        if(user == null){
            return ResponseData.forbidden();
        }
        String id = user.getId();
        //更新登录时间
        userService.updateLoginDate(System.currentTimeMillis(),id);
        //生成token，放入redis缓存
        String token = TokenUtil.getToken(id);
        boolean res = redisCacheManager.set(token,id, Constants.TOKEN_ID_EXPIRE);
        if(res == true){
            redisCacheManager.set(Constants.USER_ID + id,user);
            return ResponseData.ok().putDataValue("token",token).putDataValue("id",id);
        }
        return ResponseData.serverInternalError();
    }

    @RequestMapping(value = "/logout",method = RequestMethod.GET)
    @ResponseBody
    public ResponseData logout(HttpServletRequest request){
        String token = request.getHeader("token");
        redisCacheManager.del(token);
        return ResponseData.ok();
    }
}
