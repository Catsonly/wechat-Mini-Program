﻿<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>

<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	
</script>


</head>

<body style="background:#f0f9fd;">
	
    
    <dl class="leftmenu">
        
    <dd>
    <div class="title">
    <span><img src="images/leftico01.png" /></span>管理操作
    </div>
    	<ul class="menuson">
        <li class="active"><cite></cite><a href="my_homepage.jsp" target="rightFrame">我的首页</a><i></i></li>
        <li ><cite></cite><a href="HT_sp_list.jsp" target="rightFrame">产品列表</a><i></i></li>
        <li ><cite></cite><a href="HT_xw_list.jsp" target="rightFrame">新闻列表</a><i></i></li>
        <% String haha=request.getSession().getAttribute("yh_name").toString(); %>
        <% if(haha.equals("admin")){%>
         <li ><cite></cite><a href="HT_yh_list.html" target="rightFrame">用户列表</a><i></i></li>
         <%}%>
        <li ><cite></cite><a href="HT_gywm.html" target="rightFrame">关于我们</a><i></i></li>
        <li ><cite></cite><a href="HT_lxfs.html" target="rightFrame">联系方式</a><i></i></li>
        <li ><cite></cite><a href="HT_wzdt.html" target="rightFrame">网站地图</a><i></i></li>
        </ul>    
    </dd>
        
    

    
    

    
    
    
    
    </dl>
</body>
</html>
