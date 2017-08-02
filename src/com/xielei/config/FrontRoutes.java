package com.xielei.config;

import com.jfinal.config.Routes;
import com.xielei.controller.front.ArticleController;
import com.xielei.controller.front.IndexController;
import com.xielei.controller.front.PhotoWallController;

public class FrontRoutes extends Routes{

	@Override
	public void config() {
		/*前端*/
		add("/front/index", IndexController.class);
		add("/front/article", ArticleController.class);
		add("/front/photowall", PhotoWallController.class);
	}
	
}
