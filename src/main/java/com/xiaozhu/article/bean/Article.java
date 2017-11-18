package com.xiaozhu.article.bean;

import java.io.Serializable;
import java.util.List;

/**
 * Created by 罗高杨 on 2017-11-5.
 */
public class Article implements Serializable{
  /**id*/
  private String id;
  /**创建人id*/
  private String userId;
  /**标题*/
  private String title;
  /**正文*/
  private String content;
  /**评论量*/
  private int commentNum;
  /**赞成数*/
  private int assentNum;
  /**反对数*/
  private int againstNum;
  /**创建时间*/
  private long createDate;
  /**所属分类*/
  private List<Topic> topics;
  private String[] topics2;
  /**创建人*/
  private User user;

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

  public long getCreateDate() {
    return createDate;
  }

  public void setCreateDate(long createDate) {
    this.createDate = createDate;
  }

  public List<Topic> getTopics() {
    return topics;
  }

  public void setTopics(List<Topic> topics) {
    this.topics = topics;
  }

  public User getUser() {
    return user;
  }

  public void setUser(User user) {
    this.user = user;
  }

  public int getCommentNum() {
    return commentNum;
  }

  public void setCommentNum(int commentNum) {
    this.commentNum = commentNum;
  }

  public String[] getTopics2() {
    return topics2;
  }

  public void setTopics2(String[] topics2) {
    this.topics2 = topics2;
  }
}
