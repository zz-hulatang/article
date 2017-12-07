package com.xiaozhu.article.bean;

import java.io.Serializable;

/**
 * Created by 罗高杨 on 2017-11-5.
 */
public class User implements Serializable{
  /**id*/
  private String id;
  /**账号*/
  private String email;
  /**昵称*/
  private String nickname;
  /**电话*/
  private String tel;
  /**密码*/
  private String password;
  /**头像*/
  private String imgUrl;
  /**简介*/
  private String introduction;
  /**性别，性别，0：男，1：女，2：第三性别*/
  private int sex;
  /**最近登录时间*/
  private long recentLoginDate;
  /**创建时间*/
  private long createDate;

  public User(){}

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getNickname() {
    return nickname;
  }

  public void setNickname(String nickname) {
    this.nickname = nickname;
  }

  public String getTel() {
    return tel;
  }

  public void setTel(String tel) {
    this.tel = tel;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public int getSex() {
    return sex;
  }

  public void setSex(int sex) {
    this.sex = sex;
  }

  public long getRecentLoginDate() {
    return recentLoginDate;
  }

  public void setRecentLoginDate(long recentLoginDate) {
    this.recentLoginDate = recentLoginDate;
  }

  public long getCreateDate() {
    return createDate;
  }

  public void setCreateDate(long createDate) {
    this.createDate = createDate;
  }

  public String getImgUrl() {
    return imgUrl;
  }

  public void setImgUrl(String imgUrl) {
    this.imgUrl = imgUrl;
  }

  public String getIntroduction() {
    return introduction;
  }

  public void setIntroduction(String introduction) {
    this.introduction = introduction;
  }
}
