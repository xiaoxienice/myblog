<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html>
<html>
  <head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>首页</title>
	<meta name="keywords" content="">
	<meta name="description" content="">
	<link rel="shortcut icon" href="${ctx }/img/favicon.ico">
	<link rel="stylesheet" href="${ctx }/css/normalize.css" />
	<link rel="stylesheet" href="${ctx }/css/xiaoxie.css" />
	<!--[if lt IE 9]>
	  <script src="http://cdn.static.runoob.com/libs/html5shiv/3.7/html5shiv.min.js"></script>
	<![endif]-->
  </head>
  <body>
	<header>
	  <nav>
		<a href="${ctx }/front/article/list">首页</a>
		<a href="${ctx }/front/article/list">文章</a>
		<a href="${ctx }/front/article/list">摄影</a>
		<a href="${ctx }/front/article/list">关于我</a>
	  </nav>
	</header>
	<div class="wapper">
	  <div class="main clearfix">
	    <div style="width: 780px;margin: 0 auto;">
		  <article>
			<h3 class="center">${item.title }</h3>
			<div class="center">
			  <span>发布时间:&nbsp;&nbsp;<fmt:formatDate type="both" value="${item.addtime }" /></span>
			  <span>浏览量:&nbsp;&nbsp;${item.like }</span>
			</div>
			<p class="pt20 pl20 pr20">
			${item.content }
			</p>
		</article>
	    </div>
	  </div>
	</div>
	<footer>
	Copyright © 2013-2017 菜鸟教程  runoob.com All Rights Reserved. 备案号：闽ICP备15012807号-1
	</footer>
	<button class="back-to-top">返回顶部</button>
	<script type="text/javascript" src="${ctx }/js/jquery2.2.3.min.js" ></script>
	<script type="text/javascript" src="${ctx }/js/xiaoxie.js" ></script>
	<script>
		function goDetails(id){
			alert("xx");
			window.location.href="${ctx }/xxx?id="+id;
//			$.ajax({ 
//		        type: "post", 
//		        url: "${ctx}/order/tuikuan", 
//		        data: { id: thisBtn.attr("data-id"),},
//		        dataType: "json", 
//		        success: function (data) {
//		        	alert(data.msg);
//		        	if (data.code==1) {
//		        		 window.location.reload();
//					}
//		        }
//			});
		}
	</script>
  </body>
</html>