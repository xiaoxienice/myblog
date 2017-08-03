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
	<title>发布文章</title>
	<link rel="shortcut icon" href="${ctx }/img/favicon.ico">
	<link rel="stylesheet" href="${ctx }/css/amazeui.css" />
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="${ctx }/css/core.css" />
	<link rel="stylesheet" href="${ctx }/css/menu.css" />
	<link rel="stylesheet" href="${ctx }/css/admin.css" />
	<link rel="stylesheet" href="${ctx }/css/form.css" />
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
		        <li><a href="${ctx }/admin/article/input">发布文章</a></li>
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
			<div class="am-u-sm-12">
			  <div class="card-box">
			    <h4 class="header-title m-t-0 m-b-30">添加文章</h4>
			    <div class="am-g">
				  <div class="am-u-md-6 am-u-md-offset-3">
					<form id="dataForm" class="am-form am-text-sm" method="post" action="">
					  <input type="hidden" name="id" value="${article.id }">
					  <div class="am-form-group">
					    <div class="am-g">
						  <label class="am-u-md-2 am-md-text-right am-padding-left-0" for="doc-ipt-text-1">标题</label>
						  <input type="text" name="title" class="am-u-md-10 form-control"  id="doc-ipt-text-1" placeholder="输入标题信息" value="${article.title }">
					    </div>
					  </div>
					  <div class="am-form-group">
				    	<div class="am-g">
					      <label class="am-u-md-2 am-md-text-right am-padding-left-0" for="doc-ta-1">内容</label>
					      <textarea name="content" class="am-u-md-10 form-control" rows="5" id="doc-ta-1">${article.content }</textarea>
				    	</div>
				      </div>
				      <div class="am-form-group">
				    	<div class="am-g">
				    	  <a href="javascript:window.history.go(-1);">返回</a>
					      <button type="button" class="am-btn am-btn-default btn-submit">保存</button>
				    	</div>
				      </div>
					</form>
				  </div>
				</div>
			  </div>
			</div>
			<!-- Row end -->
		  </div>
		</div><!-- end right Content here -->
	  </div><!--</div>-->
	</div>
	<!-- navbar -->
	<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"><!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>
	<script type="text/javascript" src="${ctx }/js/jquery-2.1.0.js" ></script>
	<script type="text/javascript" src="${ctx }/js/amazeui.min.js"></script>
	<script type="text/javascript" src="${ctx }/js/blockUI.js" ></script>
	<script type="text/javascript">
	  $(document).ready(function(){
		  $(".btn-submit").click(function(){
			  $.ajax({
		          type: "post", 
		          url: "${ctx }/admin/article/save", 
		          data: $("#dataForm").serialize(),
		          dataType: "json", 
		          success: function (data) {
			          alert(data.msg);
			          if (data.code==1) {
			        	  window.location.href="${ctx }/admin/article/list";
					  }
			      }
			  }); 
		  });
	  });
	</script>
  </body>
</html>
