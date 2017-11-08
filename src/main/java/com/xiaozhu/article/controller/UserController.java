package com.xiaozhu.article.controller;

import com.xiaozhu.article.bean.User;
import com.xiaozhu.article.service.UserService;
import com.xiaozhu.article.util.AppUtil;
import com.xiaozhu.article.util.Constants;
import com.xiaozhu.article.util.ResponseData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributesModelMap;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

/**
 * Created by 罗高杨 on 2017-11-5.
 */
@Controller
@RequestMapping("/user")
public class UserController {
  @Autowired
  private UserService userService;

  /**
   * 保存
   * @param user
   * @return
   */
  @RequestMapping(value = "/save",method = RequestMethod.POST)
  @ResponseBody
  public ResponseData saveUser(User user){
    try {
      String newPassword = AppUtil.encryptBASE64(user.getPassword().getBytes());
      user.setPassword(newPassword);
      user.setId(AppUtil.getUUID());
      int sex = user.getSex();
      if(sex == 0){
        user.setImgUrl(Constants.MALE_HEAD_IMG);
      }else if(sex == 1){
        user.setImgUrl(Constants.FEMALE_HEAD_IMG);
      }else{
        user.setImgUrl(Constants.THIRD_HEAD_IMG);
      }

      user.setCreateDate(System.currentTimeMillis());
      user.setRecentLoginDate(System.currentTimeMillis());
      userService.save(user);
      return ResponseData.ok();
    }catch (Exception e){
      return ResponseData.forbidden();
    }
  }

  /**
   * 查找
   * @param id id
   * @return
   */
  @RequestMapping(value = "/find/{id}",method = RequestMethod.GET)
  @ResponseBody
  public ResponseData findOneUser(@PathVariable String id){
    User user = userService.findOne(id);
    if(user == null){
      return ResponseData.notFound().putDataValue("user not exist","用户不存在");
    }
    return ResponseData.ok().putDataValue("user",user);
  }

  /**
   * 更改密码
   * @param id id
   * @param oldPassword 旧密码
   * @param newPassword 新密码
   * @return
   */
  @RequestMapping(value = "/password/{id}",method = RequestMethod.GET)
  @ResponseBody
  public ResponseData updatePassword(@PathVariable String id, String oldPassword, String newPassword){
    User user = userService.findOne(id);
    String str = AppUtil.encryptBASE64(oldPassword.getBytes());
    if(!str.equals(user.getPassword())){
      return ResponseData.forbidden().putDataValue("password is not true","密码不正确");
    }
    try {
      userService.updatePassword(id,AppUtil.encryptBASE64(newPassword.getBytes()));
      return ResponseData.ok().putDataValue("password is modified","密码修改成功");
    } catch (Exception e) {
      e.printStackTrace();
      return ResponseData.forbidden().putDataValue("password modified fail","密码修改失败");
    }
  }

  /**
   * 修改头像
   * @param request 请求
   * @param id id
   * @param file 文件
   * @return
   */
  @RequestMapping(value = "/updateImg/{id}",method = RequestMethod.GET)
  @ResponseBody
  public ResponseData updateImg(HttpServletRequest request,@PathVariable String id, MultipartFile file){
    String originName = file.getOriginalFilename();
    String name = System.currentTimeMillis() + originName.substring(originName.lastIndexOf(".") + 1);
    String path = request.getContextPath() + File.separator +  Constants.HEAD_IMG_PATH + name;
    String imgUrl = Constants.HEAD_IMG_PATH + name;
    File newFile = new File(path);
    try {
      file.transferTo(newFile);
      userService.updateImgUrl(id,imgUrl);
      return ResponseData.ok().putDataValue("headImg modified ok","头像修改成功");
    } catch (IOException e) {
      e.printStackTrace();
      return ResponseData.ok().putDataValue("headImg modified fail","头像修改失败");
    }
  }
}
