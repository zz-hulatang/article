package com.xiaozhu.article.controller;

import com.xiaozhu.article.bean.Article;
import com.xiaozhu.article.bean.ArticleTopic;
import com.xiaozhu.article.bean.Comment;
import com.xiaozhu.article.bean.Topic;
import com.xiaozhu.article.service.ArticleService;
import com.xiaozhu.article.util.AppUtil;
import com.xiaozhu.article.util.Constants;
import com.xiaozhu.article.util.RedisCacheManager;
import com.xiaozhu.article.util.ResponseData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Controller
@RequestMapping("/article")
public class ArticleController {

    @Autowired
    private ArticleService articleService;
    @Autowired
    private RedisCacheManager redisCacheManager;

    @RequestMapping(value = "/save",method = RequestMethod.POST)
    @ResponseBody
    public ResponseData saveArticle(@RequestBody Article article){
        try {
            String id = AppUtil.getUUID();
            article.setId(id);
            article.setCreateDate(System.currentTimeMillis());
            String[] topics = article.getTopics2();
            List<ArticleTopic> list = null;
            if(topics.length > 0){
                list = new ArrayList<ArticleTopic>();
                for(String topic : topics){
                    ArticleTopic articleTopic = new ArticleTopic(AppUtil.getUUID(),id, topic);
                    list.add(articleTopic);
                }
            }
            articleService.save(article,list);
            //在缓存中插入信息
            //按照创建日期
            redisCacheManager.zAdd(Constants.ARTICLE_LIST_SORT_CREATEDATE,Constants.ARTICLE_ID + article.getId(),article.getCreateDate());
            //按照赞成数
            redisCacheManager.zAdd(Constants.ARTICLE_LIST_SORT_ASSENTNUM,Constants.ARTICLE_ID + article.getId(),0);
            //按照反对数
            redisCacheManager.zAdd(Constants.ARTICLE_LIST_SORT_AGAINSTNUM,Constants.ARTICLE_ID + article.getId(),0);
            return ResponseData.ok().putDataValue("msg","保存成功");
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseData.forbidden().putDataValue("msg","保存失败");
        }
    }

    @RequestMapping(value = "/find/{id}",method = RequestMethod.GET)
    @ResponseBody
    public ResponseData findOneArticle(@PathVariable String id){
        Article article = articleService.findOne(id);
        if(article == null){
            return ResponseData.notFound().putDataValue("msg","文章不存在");
        }
        return ResponseData.ok().putDataValue("article",article);
    }

    /**
     * 更新赞成或反对人数
     * @param type
     *             assent：赞成，against：反对
     * @param id
     *           articleId
     * @param userId
     *               userId
     * @return
     */
    @RequestMapping(value = "/num/{type}/{id}/{userId}",method = RequestMethod.GET)
    @ResponseBody
    public ResponseData updateAssentNumOrAgainstNum(@PathVariable String type,@PathVariable String id,@PathVariable String userId){
        double res;
        try {
            if("assent".equals(type)){
                long result = redisCacheManager.sSet(Constants.ASSENT_USER_LIST + id,userId);
                if(result == 0){
                    return ResponseData.forbidden().putDataValue("msg","已经投过票了");
                }
                //赞成
                articleService.updateAssentNum(id);
                res = redisCacheManager.zOpsScore(Constants.ARTICLE_LIST_SORT_ASSENTNUM,Constants.ARTICLE_ID + id,1);

            }else{
                long result = redisCacheManager.sSet(Constants.AGAINST_USER_LIST + id,userId);
                if(result == 0){
                    return ResponseData.forbidden().putDataValue("msg","已经投过票了");
                }
                //反对
                articleService.updateAgainstNum(id);
                res = redisCacheManager.zOpsScore(Constants.ARTICLE_LIST_SORT_AGAINSTNUM,Constants.ARTICLE_ID + id,1);

            }
            return ResponseData.ok().putDataValue("score",res);
        }catch (Exception e){
            e.printStackTrace();
            return ResponseData.forbidden().putDataValue("msg","投票失败");
        }
    }

    /**
     * 文章列表
     * @param page
     *             当前页
     * @param orderBy
     *                排序字段，createDate，assent，against
     * @param sort
     *             排序，asc，desc
     * @return
     */
    @RequestMapping(value = "/list/{page}/{orderBy}/{sort}",method = RequestMethod.GET)
    @ResponseBody
    public ResponseData articleList(@PathVariable int page,@PathVariable String orderBy,@PathVariable String sort){
        //开始索引
        long start = (page - 1) * Constants.PAGE_NUM;
        //结束索引
        long end = page * Constants.PAGE_NUM - 1;
        //总条数
        long totalNum;
        Set<Object> set;
        if("createDate".equals(orderBy)){
            //按照创建时间
            totalNum = redisCacheManager.zCard(Constants.ARTICLE_LIST_SORT_CREATEDATE);
            set = redisCacheManager.zRange(Constants.ARTICLE_LIST_SORT_CREATEDATE,start,end,sort);
        }else if("assent".equals(orderBy)){
            //按照赞同人数排序
            totalNum = redisCacheManager.zCard(Constants.ARTICLE_LIST_SORT_ASSENTNUM);
            set = redisCacheManager.zRange(Constants.ARTICLE_LIST_SORT_ASSENTNUM,start,end,sort);
        }else{
            //按照反对人数排序
            totalNum = redisCacheManager.zCard(Constants.ARTICLE_LIST_SORT_AGAINSTNUM);
            set = redisCacheManager.zRange(Constants.ARTICLE_LIST_SORT_AGAINSTNUM,start,end,sort);
        }
        //取余数
        int remainder = (int) totalNum % Constants.PAGE_NUM;
        int pageCount = (int) ((remainder == 0) ? (totalNum / Constants.PAGE_NUM) : (totalNum / Constants.PAGE_NUM) + 1);
        List<String> ids = new ArrayList<String>();
        List<Article> list = new ArrayList<Article>();
        if(set.size() > 0){
            for(Object obj : set){
                String id = ((String) obj).substring(Constants.ARTICLE_ID.length());
                ids.add(id);
            }
            list = articleService.findList(ids,orderBy);
        }
        return ResponseData.ok().putDataValue("pageCount",pageCount).putDataValue("list",list);
    }

}
