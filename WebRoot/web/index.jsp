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
		<a href="index.html">首页</a>
		<a href="article.html">文章</a>
		<a href="photowall.html">摄影</a>
		<a href="aboutme.html">关于我</a>
	  </nav>
	</header>
	<div class="wapper">
	  <div class="main clearfix">
		<div class="left">
		  <c:forEach items="${list.list }" var="item" varStatus="index">
		    <article onclick="goDetails(${item.id})">
			  <h3>${item.title }</h3>
			  <p>${item.content }</p>
			  <span>发布时间:&nbsp;&nbsp;${item.addtime }</span>
			  <span>浏览量:&nbsp;&nbsp;${item.like }</span>
			</article>
		  </c:forEach>
		</div>
		<div class="right">
		  <div class="block">
		    <span>热点文章</span>
			<ul>
			  <li><a href="">1111</a></li>
			  <li><a href="">2222</a></li>
			  <li><a href="">3333</a></li>
			  <li><a href="">4444</a></li>
			  <li><a href="">5555</a></li>
			</ul>
		  </div>
		  <div class="block">
			<span>友情链接</span>
			<ul>
			  <li><a href="">1111</a></li>
			  <li><a href="">2222</a></li>
			  <li><a href="">3333</a></li>
			  <li><a href="">4444</a></li>
			  <li><a href="">5555</a></li>
			</ul>
		  </div>
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
			window.location.href="${ctx }/front/article/detail?id="+id;
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