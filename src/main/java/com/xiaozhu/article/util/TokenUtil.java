package com.xiaozhu.article.util;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import org.apache.commons.lang.StringUtils;

import java.util.HashMap;
import java.util.Map;

public class TokenUtil {
    private static final Map<String,Object> heard = new HashMap<String, Object>(2);
    private static final String secret = "luoxiaozhu";
    private static String payLoad;
    static{
        heard.put("typ","JWT");
        heard.put("alg","HS256");
    }

    /**
     * 使用用户id生成token
     * @param id 用户id
     * @return
     */
    public static String getToken(String id){
        payLoad = "{\"id\":\""+ id +"\"}";
        SignatureAlgorithm alg = SignatureAlgorithm.HS256;
        String token = Jwts.builder().setHeader(heard).setPayload(payLoad).signWith(alg,secret).compact();
        return token;
    }

    /**
     * 获取token中的信息
     * @param token token
     * @param property 属性
     * @return
     */
    public static String parseToken(String token,String property){
        Jws<Claims> jws = Jwts.parser().setSigningKey(secret).parseClaimsJws(token);
        Claims claims = jws.getBody();
        String value = (String) claims.get(property);
        return value;
    }
}
