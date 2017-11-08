package com.xiaozhu.article.util;

import java.io.File;

public class Constants {
    /**token_id过期时间*/
    public static final int TOKEN_ID_EXPIRE = 2 * 60 *60;
    /**头像存放地址*/
    public static final String HEAD_IMG_PATH = "img" + File.separator + "head" + File.separator;
    /**默认男头像*/
    public static final String MALE_HEAD_IMG = "img" + File.separator + "default" + File.separator + "male.jpg";
    /**默认女头像*/
    public static final String FEMALE_HEAD_IMG = "img" + File.separator + "default" + File.separator + "female.jpg";
    /**默认第三性别头像*/
    public static final String THIRD_HEAD_IMG = "img" + File.separator + "default" + File.separator + "pig.jpg";
}
