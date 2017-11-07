package com.xiaozhu.article.bean;

/**
 * Created by 罗高杨 on 2017-11-5.
 */
public class Comment {
  private String id;
  private String articleId;
  private String userId;
  private String comment;
  private int createDate;

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getArticleId() {
    return articleId;
  }

  public void setArticleId(String articleId) {
    this.articleId = articleId;
  }

  public String getUserId() {
    return userId;
  }

  public void setUserId(String userId) {
    this.userId = userId;
  }

  public String getComment() {
    return comment;
  }

  public void setComment(String comment) {
    this.comment = comment;
  }

  public int getCreateDate() {
    return createDate;
  }

  public void setCreateDate(int createDate) {
    this.createDate = createDate;
  }
}
