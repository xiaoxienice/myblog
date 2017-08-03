package com.xielei.config;

import com.jfinal.config.Routes;
import com.xielei.controller.admin.SysAdminController;
import com.xielei.controller.admin.SysArticleController;

public class AdminRoutes extends Routes{

	@Override
	public void config() {
		// TODO Auto-generated method stub
		/*后台*/
		add("/admin", SysAdminController.class);
		add("/admin/article", SysArticleController.class);
	}

}
