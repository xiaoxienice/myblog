package com.xielei.controller.front;

import java.io.File;

import com.jfinal.core.Controller;
import com.xielei.common.Admin;

public class IndexController extends Controller{
	
	public void index(){
		render("/web/index2.jsp");
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
