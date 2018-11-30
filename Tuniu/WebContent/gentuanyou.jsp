<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	//System.out.print(request.getAttribute("comboList"));
	//判断有没有用户列表数据，如果没有这跳转到 user.s?op=query
	if( request.getAttribute("comboList") == null ){
		request.getRequestDispatcher("combo.s?op=queryRecommend").forward(request, response);
	} 
%> 
<!doctype html>
<html lang="zh-CN">
<html>
<head>
<title>跟团游-旅游景点旅行社网站</title>
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
<section>
  <div class="width-box">
	<div class="banner-box transform-box">
	  <div class="met-banner banner-ny-h" data-height='' style=''>

		<div class="slick-slide">
        
			<img class="cover-image" data-size="1170_100" src="./static/image/1506069811.jpg" srcset='' sizes="(max-width: 767px) 767px" alt="">
   
        </div>  

      </div>
    </div>
  </div>
</section>

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

		<c:forEach items="${comboList }" var="c">
		
				<li class=" shown">
					<div class="widget widget-shadow">
						<figure class="widget-header cover">
							<a href="comboInfo.jsp?arrange=${c.arrange }&description=${c.description}" title="海口到三亚三天两晚品牌游" target='_self'>
								<img class="cover-image" name="tphoto" src='${c.tphoto }' alt="海口到三亚三天两晚品牌游" style='height:200px;'>
							</a>
						</figure>
						<h4 class="widget-title">
							<a href="comboInfo.jsp?arrange=${c.arrange }description=${c.description}" title="海口到三亚三天两晚品牌游" target='_self' name="tname">${c.tname }</a>
							<p class='margin-bottom-0 margin-top-0 red-600' name="price">${c.price }</p>
						</h4>
					</div>
				</li>
				
		</c:forEach>
		
		
				<!-- <li class=" shown">
					<div class="widget widget-shadow">
						<figure class="widget-header cover">
							<a href="gonglueinfo.jsp" title="三亚-西沙三日游精华线" target='_self'>
								<img class="cover-image" src='./static/image/1506321574.jpg' alt="三亚-西沙三日游精华线" style='height:200px;'>
							</a>
						</figure>
						<h4 class="widget-title">
							<a href="gonglueinfo.jsp" title="三亚-西沙三日游精华线" target='_self'>三亚-西沙三日游精华线</a>
							<p class='margin-bottom-0 margin-top-0 red-600'>1280.00元</p>
						</h4>
					</div>
				</li>

				<li class=" shown">
					<div class="widget widget-shadow">
						<figure class="widget-header cover">
							<a href="gonglueinfo.jsp" title="豪华游轮 西沙七日游" target='_self'>
								<img class="cover-image" src='./static/image/1506321623.jpg' alt="豪华游轮 西沙七日游" style='height:200px;'>
							</a>
						</figure>
						<h4 class="widget-title">
							<a href="gonglueinfo.jsp" title="豪华游轮 西沙七日游" target='_self'>豪华游轮 西沙七日游</a>
							<p class='margin-bottom-0 margin-top-0 red-600'>4999.00元</p>
						</h4>
					</div>
				</li>

				<li class=" shown">
					<div class="widget widget-shadow">
						<figure class="widget-header cover">
							<a href="gonglueinfo.jsp" title="海南三亚-西沙六日游" target='_self'>
								<img class="cover-image" src='./static/image/1506321389.jpg' alt="海南三亚-西沙六日游" style='height:200px;'>
							</a>
						</figure>
						<h4 class="widget-title">
							<a href="gonglueinfo.jsp" title="海南三亚-西沙六日游" target='_self'>海南三亚-西沙六日游</a>
							<p class='margin-bottom-0 margin-top-0 red-600'>3880.00元</p>
						</h4>
					</div>
				</li>

				<li class=" shown">
					<div class="widget widget-shadow">
						<figure class="widget-header cover">
							<a href="gonglueinfo.jsp" title="三亚一地5天4晚“岛人行岛”豪华游" target='_self'>
								<img class="cover-image" data-original='./static/image/1506321153.jpg' alt="三亚一地5天4晚“岛人行岛”豪华游" style='height:200px;'>
							</a>
						</figure>
						<h4 class="widget-title">
							<a href="gonglueinfo.jsp" title="三亚一地5天4晚“岛人行岛”豪华游" target='_self'>三亚一地5天4晚“岛人行岛”豪华游</a>
							<p class='margin-bottom-0 margin-top-0 red-600'>3680.00元</p>
						</h4>
					</div>
				</li>

				<li class=" shown">
					<div class="widget widget-shadow">
						<figure class="widget-header cover">
							<a href="gonglueinfo.jsp" title="天堂森林公园-亚龙湾沙滩1日游" target='_self'>
								<img class="cover-image" data-original='./static/image/1506307339.jpg' alt="天堂森林公园-亚龙湾沙滩1日游" style='height:200px;'>
							</a>
						</figure>
						<h4 class="widget-title">
							<a href="gonglueinfo.jsp" title="天堂森林公园-亚龙湾沙滩1日游" target='_self'>天堂森林公园-亚龙湾沙滩1日游</a>
							<p class='margin-bottom-0 margin-top-0 red-600'>145.00元</p>
						</h4>
					</div>
				</li>

				<li class=" shown">
					<div class="widget widget-shadow">
						<figure class="widget-header cover">
							<a href="gonglueinfo.jsp" title="【南海之梦号邮轮】西沙群岛4天3晚游" target='_self'>
								<img class="cover-image" data-original='./static/image/1506319633.jpg' alt="【南海之梦号邮轮】西沙群岛4天3晚游" style='height:200px;'>
							</a>
						</figure>
						<h4 class="widget-title">
							<a href="gonglueinfo.jsp" title="【南海之梦号邮轮】西沙群岛4天3晚游" target='_self'>【南海之梦号邮轮】西沙群岛4天3晚游</a>
							<p class='margin-bottom-0 margin-top-0 red-600'>1680.00元</p>
						</h4>
					</div>
				</li>

				<li class=" shown">
					<div class="widget widget-shadow">
						<figure class="widget-header cover">
							<a href="gonglueinfo.jsp" title="（2天精品A线）绝美蜈支洲2日游" target='_self'>
								<img class="cover-image" data-original='./static/image/1506310281.jpg' alt="（2天精品A线）绝美蜈支洲2日游" style='height:200px;'>
							</a>
						</figure>
						<h4 class="widget-title">
							<a href="gonglueinfo.jsp" title="（2天精品A线）绝美蜈支洲2日游" target='_self'>（2天精品A线）绝美蜈支洲2日游</a>
							<p class='margin-bottom-0 margin-top-0 red-600'>225.00元</p>
						</h4>
					</div>
				</li> -->


        </ul>


<div class="hidden-xs">
		    <div class='met_pager'>
			<span class='PreSpan'><</span><a href=../gent/ class='Ahover'>1</a><span class='NextSpan'>></span>
			    <span class='PageText'>转至第</span>
			    <input type='text' id='metPageT' data-pageurl='product.php?lang=cn&class1=103&page=||1' value='1' />
			    <input type='button' id='metPageB' value='页' />
		    </div>
		</div>
<div class="met-page-ajax-body visible-xs-block invisible" data-plugin="appear" data-animate="slide-bottom" data-repeat="false">
	<button type="button" class="btn btn-default btn-block btn-squared ladda-button" id="met-page-btn" data-style="slide-left" data-url="/muban/M1156012/359/gent/?lang=cn&class1=103&class2=0&class3=0&mbpagelist=1" data-page="1"><i class="icon wb-chevron-down margin-right-5" aria-hidden="true"></i>更多产品</button>
</div>

	</div>
</div>

  </div>
</section>
<%@ include file="/public/foot.jsp" %>

<button type="button" class="btn btn-icon btn-primary btn-squared met-scroll-top hide"><i class="icon wb-chevron-up" aria-hidden="true"></i></button>



<script src="./static/js/shop_lang_cn.js"></script>

<script src="./static/js/style.js"></script>

<script src="./static/js/shop_v3.js"></script>

</body>
</html>