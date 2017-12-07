package com.xiaozhu.article.util;

import java.io.File;

public class Constants {
    /**每页多少条数据*/
    public static final int PAGE_NUM = 20;
    /**article存储的键，article:id*/
    public static final String ARTICLE_ID = "article:";
    /**user存储的键，user:id*/
    public static final String USER_ID = "user:";
    /**token_id过期时间*/
    public static final int TOKEN_ID_EXPIRE = 2 * 60 * 60;
    /**头像存放地址*/
    public static final String HEAD_IMG_PATH = "img" + File.separator + "head" + File.separator;
    /**默认男头像*/
    public static final String MALE_HEAD_IMG = "img" + File.separator + "default" + File.separator + "male.jpg";
    /**默认女头像*/
    public static final String FEMALE_HEAD_IMG = "img" + File.separator + "default" + File.separator + "female.jpg";
    /**默认第三性别头像*/
    public static final String THIRD_HEAD_IMG = "img" + File.separator + "default" + File.separator + "pig.jpg";
    /**时间排序*/
    public static final String ARTICLE_LIST_SORT_CREATEDATE = "createDate";
    /**赞成数排序*/
    public static final String ARTICLE_LIST_SORT_ASSENTNUM = "assentNum";
    /**反对数排序*/
    public static final String ARTICLE_LIST_SORT_AGAINSTNUM = "againstNum";
    /**赞成人列表*/
    public static final String ASSENT_USER_LIST = "assent:";
    /**反对人列表*/
    public static final String AGAINST_USER_LIST = "against:";
}
