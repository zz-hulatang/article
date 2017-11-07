package com.xiaozhu.article.bean;

/**
 * Created by 罗高杨 on 2017-11-5.
 */
public class Article {
  private String id;
  private String userId;
  private String title;
  private String content;
  private int assentNum;
  private int againstNum;
  private int createDate;

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getUserId() {
    return userId;
  }

  public void setUserId(String userId) {
    this.userId = userId;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
  }

  public int getAssentNum() {
    return assentNum;
  }

  public void setAssentNum(int assentNum) {
    this.assentNum = assentNum;
  }

  public int getAgainstNum() {
    return againstNum;
  }

  public void setAgainstNum(int againstNum) {
    this.againstNum = againstNum;
  }

  public int getCreateDate() {
    return createDate;
  }

  public void setCreateDate(int createDate) {
    this.createDate = createDate;
  }
}
