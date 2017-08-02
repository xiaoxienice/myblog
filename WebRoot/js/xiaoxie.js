//回到顶部
$(document).ready(function(){
	var backButton = $(".back-to-top");
	backButton.on("click",function(){
		$("html,body").animate({scrollTop:0},800);
	});
	$(window).on("scroll",function(){
		if($(window).scrollTop() > $(window).height()){
			backButton.fadeIn();
		}else{
			backButton.fadeOut();
		}
	});
	//$(window).trigger("scroll");
	$(window).scroll(); //初始化就触发scroll事件，让返回顶部的按钮在开始的时候不存在
});
