package com.xiaozhu.article.bean;

import java.io.Serializable;

/**
 * Created by 罗高杨 on 2017-11-5.
 */
public class Topic implements Serializable{
  private String id;
  private String name;

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }
}
