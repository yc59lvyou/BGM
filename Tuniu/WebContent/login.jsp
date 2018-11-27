<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<form method="post" action="">
			<input type="hidden" name="gourl" value="" />
			<div class="form-group">
				<input type="text" name="username" required class="form-control" placeholder="用户名/邮箱/手机"
				data-bv-notempty="true"
				data-bv-notempty-message="此项不能为空"
				>
			</div>
			<div class="form-group">
				<input type="password" name="password" required class="form-control" placeholder="密码" 
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

<footer class="container met-footer">
	<p>企业网站管理系统</p>

</footer>
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
</body>
</html>