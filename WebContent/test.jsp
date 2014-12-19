<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>演示：超酷的页面滚动效果</title>
<link rel="stylesheet" type="text/css" href="../css/main.css" />
<style type="text/css">
.base{width:410px; height:36px; position:fixed; bottom:1px; margin-left:250px;  z-index:1999; background:#f0f0f0; border: 1px solid #ccc;
  -webkit-border-radius: 6px;-moz-border-radius: 6px;border-radius: 6px;
  -webkit-box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.2);-moz-box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.2);box-shadow: 2px 2px 5px 2px rgba(0, 0, 0, 0.2);}
.base li{height:36px; line-height:36px; float:left; padding:0 8px; border-right:1px solid #d3d3d3; text-align:center; cursor:pointer}
.base li a{display:block; height:34px;font-size:16px;}
.base li a:hover{background:#f9f9f9; text-decoration:none}
.base li:last-child{border-right:none}
.base li a.cur{color:#f60}
.box{height:800px; margin: 0 10px}
.box h3{height:32px; line-height:32px; padding-left:20px; font-size:14px}
.box p{line-height:30px; margin:20px; text-align:center; font-size:28px}
.box p span{margin:10px}
#pro,#ser{background:url(img/bg.jpg)}
#news,#con{background:url(img/bg2.gif)}
</style>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript" src="jquery.easing.min.js"></script>
<script type="text/javascript">
/* $(function(){
	var pro_top = $("#pro").offset().top;
	var news_top = $("#news").offset().top;
	var ser_top = $("#ser").offset().top;
	var con_top = $("#con").offset().top;
	var job_top = $("#job").offset().top;
	//alert(tops);
	$(window).scroll(function(){
		var scroH = $(this).scrollTop();
		if(scroH>=job_top){
			set_cur(".job");
		}else if(scroH>=con_top){
			set_cur(".con");
		}else if(scroH>=ser_top){
			set_cur(".ser");
		}else if(scroH>=news_top){
			set_cur(".news");
		}else if(scroH>=pro_top){
			set_cur(".pro");
		}
	});
	$(".nav li a").click(function() {
		var el = $(this).attr('class');
		$('html, body').animate({
		 	scrollTop: $("#"+el).offset().top
			},{
         	easing: 'easeOutSine',
         	duration: 300,
         	complete:function(){
			}
	 	});
 	});
}); */

function set_cur(n){
	if($(".nav a").hasClass("cur")){
		$(".nav a").removeClass("cur");
	}
	$(".nav a"+n).addClass("cur");
}
</script>
</head>

<body>
<div id="header">
   <div id="logo"><h1><a href="http://www.helloweba.com" title="返回helloweba首页">helloweba</a></h1></div>
</div>



<div id="main">
<!--   <h2 class="top_title"><a href="http://www.helloweba.com/view-blog-213.html">超酷的页面滚动效果</a></h2> -->
  <ul class="base">
   	<li><a class="pro">产品展示</a></li>
   	<li><a class="news">新闻中心</a></li>
   	<li><a class="ser">服务支持</a></li>
   	<li><a class="con">联系我们</a></li>
   	<li><a class="job">人才招聘</a></li>
  </ul>
    <!--  <div id="pro" class="box">
        <h3>产品展示</h3>
        <p><span><a href="index.html">效果1</a></span><span><a href="index2.html">效果2</a></span><span>效果3</span></p>
        <br/>
        <div class="ad_demo"><script src="/js/ad_js/ad_demo.js" type="text/javascript"></script></div>
     </div>
     <div id="news" class="box">
        <h3>新闻中心</h3>
        <div style="width:250px; height:300px; margin:0 auto"><script src="/js/ad_js/bd_250250.js" type="text/javascript"></script></div>
     </div>
     <div id="ser" class="box">
        <h3>服务支持</h3>
     </div>
     <div id="con" class="box">
        <h3>联系我们</h3>
     </div>
     <div id="job" class="box" style="height:680px">
        <h3>人才招聘</h3>
     </div>
	 <div class="ad_demo"><script src="/js/ad_js/ad_demo.js" type="text/javascript"></script></div> -->
</div>
<div id="footer">
    <p>Powered by helloweba.com  允许转载、修改和使用本站的DEMO，但请注明出处：<a href="http://www.helloweba.com">www.helloweba.com</a></p>
</div>
<!-- <p id="stat"><script type="text/javascript" src="http://js.tongji.linezing.com/1870888/tongji.js"></script></p> -->
</body>
</html>
