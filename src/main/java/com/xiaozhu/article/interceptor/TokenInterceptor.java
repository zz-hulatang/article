package com.xiaozhu.article.interceptor;

import com.xiaozhu.article.util.RedisCacheManager;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TokenInterceptor implements HandlerInterceptor {
    @Autowired
    private RedisCacheManager redisCacheManager;

    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        String token = httpServletRequest.getHeader("token");
        String contextPath = httpServletRequest.getContextPath();
        if(StringUtils.isBlank(token)){
            httpServletResponse.sendRedirect(contextPath + "/index.jsp");
            return false;
        }
        String id = (String) redisCacheManager.get(token);
        if(StringUtils.isBlank(id)){
            String url = httpServletRequest.getServletPath().toString();
            httpServletRequest.setAttribute("forwardUrl",url);
            httpServletRequest.getRequestDispatcher("/index.jsp").forward(httpServletRequest,httpServletResponse);
            return false;
        }
        return true;
    }

    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
