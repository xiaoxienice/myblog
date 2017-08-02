<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="blog 博客 生活 技术 java html css struts Hibernate spring Python">
		<meta name="author" content="谢磊">
		<meta name="keyword" content="blog 博客 生活 技术 java html css struts Hibernate spring Python">
		<title>后台首页</title>
		<link rel="stylesheet" href="css/amazeui.css" />
		<link rel="stylesheet" href="css/core.css" />
		<link rel="stylesheet" href="css/menu.css" />
		<link rel="stylesheet" href="css/admin.css" />
		<link rel="stylesheet" href="css/component.css" />
	</head>
	<body>
		<!-- Begin page -->
		<header class="am-topbar am-topbar-fixed-top">		
			<div class="am-topbar-left am-hide-sm-only">
                <a href="index.html" class="logo"><span>Admin</span><i class="zmdi zmdi-layers"></i></a>
            </div>
			<div class="contain">
				<ul class="am-nav am-navbar-nav am-navbar-left">
					<li><h4 class="page-title">主页</h4></li>
				</ul>
				
				<ul class="am-nav am-navbar-nav am-navbar-right">
					<li class="inform"><i class="am-icon-bell-o" aria-hidden="true"></i></li>
					<li class="hidden-xs am-hide-sm-only">
                        <form role="search" class="app-search">
                            <input type="text" placeholder="Search..." class="form-control">
                            <a href=""><img src="img/search.png"></a>
                        </form>
                    </li>
				</ul>
			</div>
		</header>
		<!-- end page -->
		<div class="admin">
			<!-- sidebar start -->
			<div class="admin-sidebar am-offcanvas  am-padding-0" id="admin-offcanvas">
				<div class="am-offcanvas-bar admin-offcanvas-bar">
			    	<!-- User -->
					<div class="user-box am-hide-sm-only">
                        <div class="user-img">
                            <img src="img/avatar-1.jpg" alt="user-img" title="Mat Helme" class="img-circle img-thumbnail img-responsive">
                        </div>
                        <h5><a href="#">Mat Helme</a></h5>
                    </div>
                    <!-- End User -->
					<ul class="am-list admin-sidebar-list">
					    <li><a href="index.html"><span class="am-icon-home"></span> 首页</a></li>
					    <li class="admin-parent">
					      <a class="am-cf" data-am-collapse="{target: '#collapse-nav1'}"><span class="am-icon-table"></span> 表格 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
					      <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav1">
					        <li><a href="table_basic.html" class="am-cf"> 基本表格</span></a></li>
					        <li><a href="table_complete.html">完整表格</a></li>
					      </ul>
					    </li>
					    <li class="admin-parent">
					      <a class="am-cf" data-am-collapse="{target: '#collapse-nav2'}"><i class="am-icon-line-chart" aria-hidden="true"></i> 统计图表 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
					      <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav2">
					        <li><a href="chart_line.html" class="am-cf"> 折线图</span></a></li>
					        <li><a href="chart_columnar.html" class="am-cf"> 柱状图</span></a></li>
					        <li><a href="chart_pie.html" class="am-cf"> 饼状图</span></a></li>
					      </ul>
					    </li>
					    <li class="admin-parent">
					      <a class="am-cf" data-am-collapse="{target: '#collapse-nav5'}"><span class="am-icon-file"></span> 表单 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
					      <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav5">
					        <li><a href="form_basic.html" class="am-cf"> 基本表单</a></li>
					        <li><a href="form_validate.html">表单验证</a></li>   
					      </ul>
					    </li>
					    <li class="admin-parent">
					      <a class="am-cf" data-am-collapse="{target: '#collapse-nav6'}"><span class="am-icon-file"></span> 文章发布 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
					      <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav6">
					        <li><a href="table_complete.html">文章列表</a></li>
					        <li><a href="form_basic.html" class="am-cf">发布文章</span></a></li>
					      </ul>
					    </li>
					</ul>
				</div>
			</div>
			<!-- sidebar end -->
			<!-- Start right Content here -->
			<div class="content-page">
				<!-- Start content -->
				<div class="content">
					<div class="am-g">
						<!-- Row start -->
						<div class="am-u-md-3">
							<div class="card-box">
								<h4 class="header-title m-t-0 m-b-30">总收入</h4>
								<div class="widget-chart-1 am-cf">
	                                <div id="widget-chart-box-1" style="height: 110px;width: 110px;float: left;">
	                                </div>
	
	                                <div class="widget-detail-1" style="float: right;">
	                                    <h2 class="p-t-10 m-b-0"> 256 </h2>
	                                    <p class="text-muted">今日收入</p>
	                                </div>
	                            </div>
							</div>
						</div>
						<!-- col end -->
						<div class="am-u-md-3">
							<div class="card-box">
								<h4 class="header-title m-t-0 m-b-30">销售分析</h4>
								<div class="widget-box-2">
	                                <div class="widget-detail-2">
	                                    <span class="badge  pull-left m-t-20  am-round" style="color: #fff; background: #0e90d2;">32% <i class="zmdi zmdi-trending-up"></i> </span>
	                                    <h2 class="m-b-0"> 8451 </h2>
	                                    <p class="text-muted m-b-25">Revenue today</p>
	                                </div>
	                                <div class="am-progress am-progress-xs am-margin-bottom-0">
									    <div class="am-progress-bar" style="width: 80%"></div>
									</div>
	                            </div>
							</div>
						</div>
						<!-- col end -->
						<div class="am-u-md-3">
							<div class="card-box">
								<h4 class="header-title m-t-0 m-b-30">总收入</h4>
								<div class="widget-chart-1 am-cf">
	                                <div id="widget-chart-box-2" style="height: 110px;width: 110px;float: left;">
	                                </div>
	
	                                <div class="widget-detail-1" style="float: right;">
	                                    <h2 class="p-t-10 m-b-0"> 256 </h2>
	                                    <p class="text-muted">今日收入</p>
	                                </div>
	                            </div>
							</div>
						</div>
						<!-- col end -->
						<div class="am-u-md-3">
							<div class="card-box">
								<h4 class="header-title m-t-0 m-b-30">销售分析</h4>
								<div class="widget-box-2">
	                                <div class="widget-detail-2">
	                                    <span class="badge  pull-left m-t-20  am-round progress-bar-pink" style="color: #fff;">32% <i class="zmdi zmdi-trending-up"></i> </span>
	                                    <h2 class="m-b-0"> 8451 </h2>
	                                    <p class="text-muted m-b-25">Revenue today</p>
	                                </div>
	                                <div class="am-progress am-progress-xs am-margin-bottom-0" style="background: rgba(255, 138, 204, 0.2);">
									    <div class="am-progress-bar progress-bar-pink" style="width: 80%"></div>
									</div>
	                            </div>
							</div>
						</div>
						<!-- Row end -->
					</div>
					
					<div class="am-g">
						<!-- Row start -->
						<div class="am-u-md-4">
							<div class="card-box">
								<h4 class="header-title m-t-0">环形图</h4>
								<div id="index-pie-1" style="height: 345px;height: 300px;"></div>
							</div>
						</div>
						
						<div class="am-u-md-4">
							<div class="card-box">
								<h4 class="header-title m-t-0">环形图</h4>
								<div id="index-bar-1" style="height: 345px;height: 300px;"></div>
							</div>
						</div>
						
						<div class="am-u-md-4">
							<div class="card-box">
								<h4 class="header-title m-t-0">环形图</h4>
								<div id="index-line-1" style="height: 345px;height: 300px;"></div>
							</div>
						</div>
						<!-- Row end -->
					</div>
					
				</div>
			</div>
			<!-- end right Content here -->
		</div>
		
		<!-- navbar -->
		<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"><!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>
		<script type="text/javascript" src="js/jquery-2.1.0.js" ></script>
		<script type="text/javascript" src="js/amazeui.min.js" ></script>
		<script type="text/javascript" src="js/blockUI.js" ></script>
		<script type="text/javascript" src="js/charts/echarts.min.js" ></script>
		<script type="text/javascript" src="js/charts/indexChart.js" ></script>
	</body>
</html>
