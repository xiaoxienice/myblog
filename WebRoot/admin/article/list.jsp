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
	<title>文章列表</title>
	<link rel="shortcut icon" href="${ctx }/img/favicon.ico">
	<link rel="stylesheet" href="${ctx }/css/amazeui.css" />
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="${ctx }/css/core.css" />
	<link rel="stylesheet" href="${ctx }/css/menu.css" />
	<link rel="stylesheet" href="${ctx }/css/admin.css" />
	<style>
		.newadd{ color: #000;}
	</style>
  </head>
  <body>
	<!-- Begin page -->
	<header class="am-topbar am-topbar-fixed-top">		
	  <div class="am-topbar-left am-hide-sm-only">
        <a href="index.html" class="logo"><span>Admin<span>to</span></span><i class="zmdi zmdi-layers"></i></a>
      </div>
	  <div class="contain">
		<ul class="am-nav am-navbar-nav am-navbar-left">
		  <li><h4 class="page-title">文章列表</h4></li>
		</ul>
		<ul class="am-nav am-navbar-nav am-navbar-right">
		  <li class="inform"><i class="am-icon-bell-o" aria-hidden="true"></i></li>
		  <li class="hidden-xs am-hide-sm-only">
            <form role="search" class="app-search">
              <input type="text" placeholder="Search..." class="form-control">
              <a href=""><img src="${ctx }/img/search.png"></a>
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
              <img src="${ctx }/img/avatar-1.jpg" alt="user-img" title="Mat Helme" class="img-circle img-thumbnail img-responsive">
            </div>
            <h5><a href="#">Mat Helme</a> </h5>
          </div>
          <!-- End User -->
		  <ul class="am-list admin-sidebar-list">
		    <!-- <li><a href="../index.html"><span class="am-icon-home"></span> 首页</a></li>
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
		    </li> -->
			<li class="admin-parent">
		      <a class="am-cf" data-am-collapse="{target: '#collapse-nav6'}"><span class="am-icon-file"></span> 文章发布 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
		      <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav6">
		        <li><a href="${ctx }/admin/article/list">文章列表</a></li>
		        <li><a href="${ctx }/admin/article/input" class="am-cf">发布文章</a></li>
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
		  <div class="card-box">
			<!-- Row start -->
			<div class="am-g">
			  <div class="am-u-sm-12 am-u-md-6">
		        <div class="am-btn-toolbar">
		          <div class="am-btn-group am-btn-group-xs">
		            <button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span><a href="${ctx }/admin/article/input" class="newadd">	新增</a></button>
		            <button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 保存</button>
		            <button type="button" class="am-btn am-btn-default"><span class="am-icon-archive"></span> 审核</button>
		            <button type="button" class="am-btn am-btn-default"><span class="am-icon-trash-o"></span> 删除</button>
		          </div>
		        </div>
		      </div>	
			  <div class="am-u-sm-12 am-u-md-3">
		        <div class="am-input-group am-input-group-sm">
		          <input type="text" class="am-form-field">
		          <span class="am-input-group-btn">
		            <button class="am-btn am-btn-default" type="button">搜索</button>
		          </span>
		        </div>
		      </div>
		    </div>
			<!-- Row end -->
			<!-- Row start -->
			<div class="am-g">
		      <div class="am-u-sm-12">
	          <form class="am-form" method="post" action="${ctx }/admin/article/list">
	            <table class="am-table am-table-striped am-table-hover table-main">
	              <thead>
	              <tr>
	                <th class="table-check"><input type="checkbox" /></th>
	                <th class="table-id">序号</th>
	                <th class="table-title">标题</th>
	                <th class="table-type">浏览量</th>
	                <th class="table-date am-hide-sm-only">发布日期</th>
	                <th class="table-set">操作</th>
	              </tr>
	              </thead>
	              <tbody>
	              <c:forEach items="${pagelist.list }" var="item" varStatus="i">
	              <tr>
	                <td><input type="checkbox" /></td>
	                <td>${(list.pageNumber-1)*(list.pageSize)+i.index+1}</td>
	                <td><a href="#">${item.title }</a></td>
	                <td class="am-hide-sm-only">${item.like }</td>
	                <td>${item.addtime }</td>
	                <td>
	                  <div class="am-btn-toolbar">
	                    <div class="am-btn-group am-btn-group-xs">
	                      <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><a href="${ctx }/admin/article/input?id=${item.id}" class="newadd"><span class="am-icon-pencil-square-o"></span> 编辑</a></button>
	                      <button class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 复制</button>
	                      <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
	                      <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑1</button>
	                    </div>
	                  </div>
	                </td>
	              </tr>
	              </c:forEach>
	              </tbody>
	            </table>
	            <div class="am-cf">
	              	共 ${pagelist.totalRow }条记录
	              <div class="am-fr">
	                <ul class="am-pagination">
	                  <li class="am-disabled"><a href="#">«</a></li>
	                  <li class="am-active"><a href="#">1</a></li>
	                  <li><a href="#">2</a></li>
	                  <li><a href="#">3</a></li>
	                  <li><a href="#">4</a></li>
	                  <li><a href="#">5</a></li>
	                  <li><a href="#">»</a></li>
	                </ul>
	              </div>
	            </div>
	            <hr />
	            <p>注：.....</p>
	          </form>
		        </div>
		    </div>
			<!-- Row end -->
		</div>
		</div>
	</div>
	</div>
	<!-- end right Content here -->
		
		<!-- navbar -->
		<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"><!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>
		
		<script type="text/javascript" src="${ctx }/js/jquery-2.1.0.js" ></script>
		<script type="text/javascript" src="${ctx }/js/amazeui.min.js"></script>
	</body>
	
</html>
