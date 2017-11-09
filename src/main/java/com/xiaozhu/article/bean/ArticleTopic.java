package com.xiaozhu.article.bean;

/**
 * Created by 罗高杨 on 2017-11-5.
 */
public class ArticleTopic {
  /**id*/
  private String id;
  /**articleId*/
  private String articleId;
  /**topicId*/
  private String topicId;

  public ArticleTopic() {
  }

  public ArticleTopic(String id, String articleId, String topicId) {
    this.id = id;
    this.articleId = articleId;
    this.topicId = topicId;
  }

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

  public String getTopicId() {
    return topicId;
  }

  public void setTopicId(String topicId) {
    this.topicId = topicId;
  }
}
