<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	//System.out.print(request.getAttribute("comboList"));
	//判断有没有用户列表数据，如果没有这跳转到 user.s?op=query
	if( request.getAttribute("comboList2") == null ){
		request.getRequestDispatcher("combo.s?op=queryOnetour").forward(request, response);
	} 
%> 

<html>
<head>
<title>一日游-旅游景点旅行社网站</title>
<meta name="renderer" content="webkit">
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="applicable-device" content="pc,mobile">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta name="generator" content=""  data-variable="https://breeze.cn/muban/M1156012/359/,cn,103,,3,M1156012" />
<meta name="description" content="" />
<meta name="keywords" content="旅游景点|境内旅游" />
<link rel='stylesheet' href='./static/css/style.css?2017070701901'>
</head>
<body>
	<%@ include file="/public/Body.jsp" %>
	<%@ include file="/public/gentuanyouimg.jsp" %>
	
	<section class="main">
		<div class="width-box">

    <div class="column-box ">
      <div class="column-nav transform-box">
        <ol class="column-ul">

          <li class="column-li active">
		    <a href="gentuanyou.jsp" title="跟团游" >热门推荐</a>
		  </li>

          <li class="column-li ">
		    <a href="yiriyou.jsp" title="一日游" >一日游</a>
		  </li>

          <li class="column-li  ">
		    <a href="../gent/product.php?lang=cn&class2=111" title="二日游" >二日游</a>
		  </li>

          <li class="column-li  ">
		    <a href="../gent/product.php?lang=cn&class2=112" title="三日游" >三日游</a>
		  </li> 

          <!-- <li class="column-li  ">
		    <a href="../gent/product.php?lang=cn&class2=113" title="四日游" >四日游</a>
		  </li> -->

          <li class="column-li  ">
		    <a href="../gent/product.php?lang=cn&class2=114" title="五日游" >五日游</a>
		  </li>

          <!-- <li class="column-li  ">
		    <a href="../gent/product.php?lang=cn&class2=115" title="六日游" >六日游</a>
		  </li> -->

          <li class="column-li  ">
		    <a href="../gent/product.php?lang=cn&class2=116" title="七日游" >七日游</a>
		  </li>

        </ol>
      </div>
  
    </div>

<div class="met-product animsition type-1">
	<div class="container">
        <ul class="blocks-2 blocks-sm-2 blocks-md-3 blocks-xlg-3  met-page-ajax met-grid" id="met-grid" data-scale='0.66666666666667'>

		<c:forEach items="${comboList2 }" var="c">
		
				<li class=" shown">
					<div class="widget widget-shadow">
						<figure class="widget-header cover">
							<a href="gonglueinfo.jsp" title="海口到三亚三天两晚品牌游" target='_self'>
								<img class="cover-image" name="tphoto" src='${c.tphoto }' alt="海口到三亚三天两晚品牌游" style='height:200px;'>
							</a>
						</figure>
						<h4 class="widget-title">
							<a href="gonglueinfo.jsp" title="海口到三亚三天两晚品牌游" target='_self' name="tname">${c.tname }</a>
							<p class='margin-bottom-0 margin-top-0 red-600' name="price">${c.price }</p>
						</h4>
					</div>
				</li>
				
		</c:forEach>
	</section>
	
<%@ include file="/public/foot.jsp" %>

<button type="button" class="btn btn-icon btn-primary btn-squared met-scroll-top hide"><i class="icon wb-chevron-up" aria-hidden="true"></i></button>
	
<script src="./static/js/shop_lang_cn.js"></script>

<script src="./static/js/style.js"></script>

<script src="./static/js/shop_v3.js"></script>
</body>
</html>