<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Author" contect="http://www.webqin.net" />
<title>忘记密码</title>
<link rel="shortcut icon" href="images/favicon.ico" />
<link type="text/css" href="./static/css/css.css" rel="stylesheet" />
<script type="text/javascript" src="./static/js/jquery-1.8.3-min.js"></script>
</head>

<%@ include file="/public/huiyuanhead.jsp" %>
<body>
<%@ include file="/public/notpwd.jsp" %>

  <div class="content">
   <div class="web-width">
     <div class="for-liucheng">
      <div class="liulist for-cur"></div>
      <div class="liulist for-cur"></div>
      <div class="liulist for-cur"></div>
      <div class="liulist"></div>
      <div class="liutextbox">
       <div class="liutext for-cur"><em>1</em><br /><strong>填写账户名</strong></div>
       <div class="liutext for-cur"><em>2</em><br /><strong>验证身份</strong></div>
       <div class="liutext for-cur"><em>3</em><br /><strong>设置新密码</strong></div>
       <div class="liutext"><em>4</em><br /><strong>完成</strong></div>
      </div>
     </div><!--for-liucheng/-->
     <form action="" method="get" class="forget-pwd">
      <input type="hidden" name="mailbox" id="mailbox" value="${param.emdis }" />
       <%-- <dl>
        <dt>手机号：</dt>
        <dd><input type="text" name="mailbox" value="${param.emdis }"/></dd>
        <div class="clears"></div>
       </dl> --%>
       <dl>
        <dt>新密码：</dt>
        <dd><input type="password" name="pwd" id="pwd"/></dd>
        <div class="clears"></div>
       </dl> 
       <dl>
        <dt>确认密码：</dt>
        <dd><input type="password" name="uppwd" id="uppwd"/></dd>
        <div class="clears"></div>
       </dl> 
       <div class="subtijiao"><input type="button" value="提交" onclick="ck()"/></div> 
      </form><!--forget-pwd/-->
   </div><!--web-width/-->
  </div><!--content/-->
<script type="text/javascript">
function ck(){
	 var data={};
	 	data.pwd=$('#pwd').val();
		data.mailbox=$('#mailbox').val();
		data.uppwd=$('#uppwd').val();
		$.post("user.s?op=Pwd3",data,
			function(data){
			if(data=="yes"){
				window.location.href='forgetPwd4.jsp';//自动刷新本页面
			}else if(data=="no"){
				alert("两次输入密码不一致");
				window.location.reload();
			}
			}		
		);
}
</script>
</body>
</html>
