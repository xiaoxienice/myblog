package com.xielei.controller.front;


import com.jfinal.core.Controller;
import com.xielei.common.Article;

public class ArticleController extends Controller{
	
	static Article service = new Article();
	/**
	 * 文章列表
	 */
	public void list(){
		int pageNumber = getParaToInt("pageNumber",1);
		setAttr("list", service.paginate(pageNumber, 10));
//		String word = getPara("word")==null?"":getPara("word");
//		StringBuffer where = new StringBuffer("FROM article where 1=1 ");
//		List<Object> whereList = new LinkedList<Object>();
//		if(!word.equals("")){ where.append("AND title LIKE ?  ");whereList.add("%"+word+"%");}
//		Object[] whereArray = new Object[whereList.size()];
//		for(int i=0;i<whereList.size();i++){whereArray[i] = whereList.get(i);}
//		where.append("ORDER BY addtime DESC");
//		Page<Record> pageList = Db.paginate(pageNumber, 10, "SELECT * ", where.toString(),whereArray);
//		setAttr("pageList",pageList);
		render("/web/index.jsp");
	}
	
	/**
	 * 文章详情
	 */
	public void detail(){
		int id = getParaToInt("id");
		setAttr("item", service.findById1(id));
		render("/web/article.jsp");
	}
}
