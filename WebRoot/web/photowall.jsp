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
	<link rel="shortcut icon" href="img/favicon.ico">
	<link rel="stylesheet" href="css/normalize.css" />
	<link rel="stylesheet" href="css/xiaoxie.css" />
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
	<div id="main" class="clearfix">
	    <div class="pin">
	        <div class="box">
	            <img src="img/1.jpg"/>
	        </div>
	    </div>
	    <div class="pin">
	        <div class="box">
	            <img src="img/2.jpg"/>
	        </div>
	    </div>
	    <div class="pin">
	        <div class="box">
	            <img src="img/3.jpg"/>
	        </div>
	    </div>
	    <div class="pin">
	        <div class="box">
	            <img src="img/4.jpg"/>
	        </div>
	    </div>
	    <div class="pin">
	        <div class="box">
	            <img src="img/5.jpg"/>
	        </div>
	    </div>
	    <div class="pin">
	        <div class="box">
	            <img src="img/6.jpg"/>
	        </div>
	    </div>
	    <div class="pin">
	        <div class="box">
	            <img src="img/7.jpg"/>
	        </div>
	    </div>
	    <div class="pin">
	        <div class="box">
	            <img src="img/8.jpg"/>
	        </div>
	    </div>
	    <div class="pin">
	        <div class="box">
	            <img src="img/9.jpg"/>
	        </div>
	    </div>
	    <div class="pin">
	        <div class="box">
	            <img src="img/10.jpg"/>
	        </div>
	    </div>
	    <div class="pin">
	        <div class="box">
	            <img src="img/11.jpg"/>
	        </div>
	    </div>
	    <div class="pin">
	        <div class="box">
	            <img src="img/12.jpg"/>
	        </div>
	    </div>
	    <div class="pin">
	        <div class="box">
	            <img src="img/13.jpg"/>
	        </div>
	    </div>
	    <div class="pin">
	        <div class="box">
	            <img src="img/14.jpg"/>
	        </div>
	    </div>
	    <div class="pin">
	        <div class="box">
	            <img src="img/15.jpg"/>
	        </div>
	    </div>
	    <div class="pin">
	        <div class="box">
	            <img src="img/16.jpg"/>
	        </div>
	    </div>
	    <div class="pin">
	        <div class="box">
	            <img src="img/17.jpg"/>
	        </div>
	    </div>
	    <div class="pin">
	        <div class="box">
	            <img src="img/18.jpg"/>
	        </div>
	    </div>
	    <div class="pin">
	        <div class="box">
	            <img src="img/19.jpg"/>
	        </div>
	    </div>
	    <div class="pin">
	        <div class="box">
	            <img src="img/20.jpg"/>
	        </div>
	    </div>
	    <div class="pin">
	        <div class="box">
	            <img src="img/21.jpg"/>
	        </div>
	    </div>
	</div>
	<footer>
	Copyright © 2013-2017 菜鸟教程  runoob.com All Rights Reserved. 备案号：闽ICP备15012807号-1
	</footer>
	<button class="back-to-top">返回顶部</button>
	<script type="text/javascript" src="js/jquery2.2.3.min.js" ></script>
	<script type="text/javascript" src="js/xiaoxie.js" ></script>
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