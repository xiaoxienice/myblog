package com.xielei.config;

import com.jfinal.config.*;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.druid.DruidPlugin;
import com.jfinal.render.ViewType;
import com.jfinal.template.Engine;
import com.xielei.common._MappingKit;

public class Config extends JFinalConfig {
	/**
	 * 配置常量
	 */
	public void configConstant(Constants me) {
		// 加载少量必要配置，随后可用PropKit.get(...)获取值
		//me.setDevMode(PropKit.getBoolean("devMode", true));
		me.setDevMode(true);
		me.setViewType(ViewType.JSP);
		//me.setError500View("/wechat/common/500.jsp");
		//me.setError404View("/wechat/common/404.jsp");
		//me.setUrlParaSeparator("-");参数分隔符
		//me.setBaseDownloadPath("E:\\ceshi\bb.txt");
	}
	
	/**
	 * 配置路由
	 */
	public void configRoute(Routes me) {
		/*前端*/
		me.add(new FrontRoutes());
		/*后台*/
		me.add(new AdminRoutes());
		
	}
	
	/**
	 * 配置模板文件
	 */
	public void configEngine(Engine me) {}
	
	/**
	 * 创建数据库链接
	 * @return
	 */
	public static DruidPlugin createDruidPlugin() {
		//PropKit.use("config.properties");
		return new DruidPlugin(PropKit.use("config.properties").get("jdbcUrl"), PropKit.use("config.properties").get("user"), PropKit.use("config.properties").get("password").trim());
	}
	
	/**
	 * 配置插件
	 */
	public void configPlugin(Plugins me) {
		// 配置C3p0数据库连接池插件
		DruidPlugin druidPlugin = createDruidPlugin();
		me.add(druidPlugin);
		
		// 配置ActiveRecord插件
		ActiveRecordPlugin arp = new ActiveRecordPlugin(druidPlugin);
		// 所有映射在 MappingKit 中自动化搞定
		_MappingKit.mapping(arp);
		me.add(arp);
		//显示SQL
		arp.setShowSql(true);
	}
	
	/**
	 * 配置全局拦截器
	 */
	public void configInterceptor(Interceptors me) {}
	
	/**
	 * 配置处理器
	 */
	public void configHandler(Handlers me) {}
	
	/**
	 * JFinal开始之后做些什么
	 */
	public void afterJFinalStart(){
		System.out.println("jfinal开始运行！");
	}
	
	/**
	 * JFinal结束之前做些什么
	 */
	public void beforeJFinalStop(){
		System.out.println("jfinal结束运行！");
	}
}
