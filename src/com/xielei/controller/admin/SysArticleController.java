package com.xielei.controller.admin;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;
import com.xielei.common.Article;

public class SysArticleController extends Controller{
	static Article service = new Article();
	/**
	 * 文章列表
	 */
	public void list(){
		int pageNumber = getParaToInt("pageNumber",1);
		setAttr("pagelist", service.paginate(pageNumber, 10));
		render("/admin/article/list.jsp");
	}
	
	/**
	 * 编辑页面
	 */
	public void input(){
		int id = getParaToInt("id",0);
		Record article = Db.findFirst("select * from article where id = ? ",id);
		//Article article = service.findById(id);
		setAttr("article", article);
		render("/admin/article/input.jsp");
	}
	
	/**
	 * 保存页面
	 */
	public void save(){
		String code="0",msg="";
		Map<String,Object> result = new HashMap<String,Object>();
		try{
			String title = getPara("title","");
			String content = getPara("content","");
			Record article = new Record();
			article.set("title", title);
			article.set("content", content);
			article.set("like", 0);
			article.set("addtime", new Date());
			boolean isSave = Db.save("article", article);
			if(isSave){
				msg = "添加成功！"; code = "1";
			}else{
				msg = "系统繁忙，请稍后再试！";
			}
		}catch(Exception e){
			e.printStackTrace();
			msg = "系统繁忙，请稍后再试！";
		}finally {
			result.put("msg", msg);
			result.put("code", code);
			renderJson(result);
		}
	}
	
	/**
	 * 删除页面
	 */
	public void del(){
		
	}
}
