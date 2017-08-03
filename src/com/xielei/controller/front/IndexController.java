package com.xielei.controller.front;

import java.io.File;

import com.jfinal.core.Controller;
import com.xielei.common.Admin;
import com.xielei.common.Article;

public class IndexController extends Controller{
	
	static Article service = new Article();
	
	public void index(){
		int pageNumber = getParaToInt("pageNumber",1);
		setAttr("list", service.paginate(pageNumber, 10));
		render("/web/index.jsp");
		//render("/web/index2.jsp");
	}
	
	public void download(){ 
		int id = getParaToInt(0);
		System.out.println("id"+id);
		Admin admin = Admin.dao.findById(id);
		File file = new File("D:\\"+admin.getStr("nickname")+".txt");
		if(file.exists()){
			renderFile(file); 
			return ;
		}
		index();
	}
}
