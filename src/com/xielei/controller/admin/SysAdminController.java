package com.xielei.controller.admin;

import com.jfinal.core.Controller;
import com.xielei.common.Admin;

public class SysAdminController extends Controller{
	
	static Admin service = new Admin();
	
	public void index(){
		render("/admin/login.jsp");
	}
	
	public void login(){
		String nickname = getPara("nickname","");
		String password = getPara("password","");
		if(service.login(nickname, password)!=null){
			render("/admin/main.jsp");
		}
	}
}
