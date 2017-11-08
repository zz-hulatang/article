package com.xiaozhu.article.util;

import sun.misc.BASE64Encoder;

import java.util.UUID;

public class AppUtil {
    /**
     * 密码加密
     * @param key
     * @return
     */
    public static String encryptBASE64(byte[] key){
        return (new BASE64Encoder()).encodeBuffer(key).replaceAll("(\r\n|\r|\n|\n\r)", "");
    }

    /**
     * 生成id
     * @return
     */
    public static String getUUID() {
        return UUID.randomUUID().toString();
    }
}
