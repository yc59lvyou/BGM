<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--[if lte IE 8]>
  <div class="text-center padding-top-50 padding-bottom-50 bg-blue-grey-100">
  <p class="browserupgrade font-size-18">你正在使用一个<strong>过时</strong>的浏览器。请<a href="http://browsehappy.com/" target="_blank">升级您的浏览器</a>，以提高您的体验。</p>
  </div>
<![endif]-->
<div class="load-box"></div>
<header>
  <div class="head-box">
    <div class="width-box">
      <div class="logo-box">
        <a href="" title="旅游景点旅行社网站">

      <img src="./static/image/1506052119.png" alt="旅游景点旅行社网站">

          <h2>海南旅游</h2>

          <h4>400 000 0000</h4>

        </a>
      </div> 


<!-- 登录成功，登录注册按钮消失变为您好，加登录名 -->
<c:set var="a" value='${loginedUser }' ></c:set>
	<c:if test="${a==null }">
		<div class="login-box">
		  <a href="login.jsp">登录</a>
		  <a href="register.jsp">注册</a> 
		</div>  
	</c:if>
	

	<c:if test="${a!=null }">
		<div class="login-box">
			<h3 style="color: orange;">您好，${loginedUser.name }</h3>
		</div>
	</c:if>


    </div>
  </div>
</header>
<nav>
  <div class="nav-box">
    <div class="width-box">
      <div class="nav-cut">
        <ul class="nav-ul">

          <li class="nav-li "><a href="index.jsp" title="旅游景点旅行社网站">首页</a></li>

          <li class="nav-li active navs margin-left-"><a href="gentuanyou.jsp" title="跟团游" >跟团游</a></li>

          <li class="nav-li  navs margin-left-"><a href="gentuanyou.jsp" title="自助游" >自助游</a></li>

          <li class="nav-li  navs margin-left-"><a href="gentuanyou.jsp" title="自驾游" >自驾游</a></li>

          <li class="nav-li  navs margin-left-"><a href="gentuanyou.jsp" title="酒店" >酒店</a></li>

          <li class="nav-li   margin-left-"><a href="gentuanyou.jsp" title="景点" >景点</a></li>

          <li class="nav-li   margin-left-"><a href="gonglue.jsp" title="攻略" >攻略</a></li>

          <li class="nav-li   margin-left-"><a href="gonglue.jsp" title="交通" >交通</a></li>

        </ul>
      </div>

      <div class="search-cut">
        <div class="search-button"></div>
        <div class="search-box">

          <form method="get" action="gonglue.html">
        <input type="hidden" name="lang" value="cn">

      <input type="hidden" name="class1" value="10001">

            <input type="text" placeholder="请输入搜索关键词！" name="searchword" value="">
            <button type="submit"></button>
          </form>

        </div>
      </div>
    </div>
  </div>
</nav>
  