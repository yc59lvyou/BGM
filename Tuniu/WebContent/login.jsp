<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<%@ include file="/public/huiyuanhead.jsp" %>
<body>
<div class="container met-head">

			<div class="row">
				<div class="col-xs-6 col-sm-6 logo">
	<ul class="list-none">
		<li><a href="" class="met-logo"><img src="./static/image/1506052119.png" /></a></li>

		<li>会员登录</li>

	</ul>
				</div>

				<div class="col-xs-6 col-sm-6 user-info">
					<ol class="breadcrumb pull-right">

					  <li><a href="index.jsp" title="返回首页">返回首页</a></li>
					</ol>
				</div>
			</div>

</div>

<div class="login_index met-member">
	<div class="container">
		<form method="post" action="user.s">
			<input type="hidden" name="op" value="login" />
			${msg }
			<div class="form-group">
				<input type="text" name="username"  class="form-control" placeholder="用户名/邮箱/手机"
				data-bv-notempty="true"
				data-bv-notempty-message="此项不能为空"
				value="${param.username }"
				>
			</div>
			<div class="form-group">
				<input type="password" name="userpwd" class="form-control" placeholder="密码" 
				data-bv-notempty="true"
				data-bv-notempty-message="此项不能为空"
				
				>
			</div>

			<div class="login_link"><a href="">忘记密码？</a></div>
			<button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>


			<a class="btn btn-lg btn-info btn-block" href="">没有账号？现在去注册</a> 
			
		</form>
	</div>
</div>

<%@ include file="/public/foot.jsp" %>
<script src="./static/js/seajs.js"></script>
<script>
	var pub = './',
		tem = './',
		page_type = 'login';
	seajs.config({
	  paths: {
		'pub': pub.substring(0,pub.length-1),
		'tem': tem.substring(0,tem.length-1)
	  },
	  alias: {
		"jquery": "jquery_seajs.js"
	  }
	});
	//seajs.use("tem/js/own"); //载入入口模块
</script>

<!-- jstl -->
<c:if test="${!empty msg}">
	<script type="text/javascript">
		alert('${msg}')
	</script>
</c:if>  

</body>
</html>