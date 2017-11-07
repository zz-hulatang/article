package com.xiaozhu.article.bean;

/**
 * Created by 罗高杨 on 2017-11-5.
 */
public class User {
  private String id;
  private String email;
  private String nickname;
  private String tel;
  private String password;
  private int sex;
  private long recentLoginDate;
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
}
