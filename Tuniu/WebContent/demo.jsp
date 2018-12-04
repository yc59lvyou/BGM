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
<script type="">
</script>
<%@ include file="/public/notpwd.jsp" %>
  <div class="content">
   <div class="web-width">
     <div class="for-liucheng">
      <div class="liulist for-cur"></div>
      <div class="liulist"></div>
      <div class="liulist"></div>
      <div class="liulist"></div>
      <div class="liutextbox">
       <div class="liutext for-cur"><em>1</em><br /><strong>填写账户名</strong></div>
       <div class="liutext"><em>2</em><br /><strong>验证身份</strong></div>
       <div class="liutext"><em>3</em><br /><strong>设置新密码</strong></div>
       <div class="liutext"><em>4</em><br /><strong>完成</strong></div>
      </div>
     </div><!--for-liucheng/-->
     <form action="<%= request.getContextPath()%>/CodeServlet" method="get" class="forget-pwd" onsubmit="return ck()">
       <dl>
        <dt>账户名：</dt>
        <dd><input type="text" name="account" id="account" onblur="zh()" value="${param.account }"/>
        <span id="yonghuming" style="color: red;"></span></dd>
        <div class="clears" ></div>
       </dl> 
       <dl>
        <dt>验证码：</dt>
        <dd>
         <input type="text" name="code"  id="code" style="width: 100px;"/> 
         <div class="yanzma" style="left: 120px;">
          <img alt="点击更换验证码" src="<%= request.getContextPath()%>/HelloServlet" id="img" onclick="cck()" />
         </div>
        </dd>
        <div class="clears"></div>
       </dl>
       <div class="subtijiao"><input type="button" value="提交" onclick="tj()" /></div> 
      </form><!--forget-pwd/-->
   </div><!--web-width/-->
  </div><!--content/-->
<%-- <c:if test="${not empty msg}" var="condition" scope="page">
	<script type="text/javascript">alert('${msg}')</script>
</c:if> --%>
<script type="text/javascript">
function zh(){
	 var data={};
		data.account=$('#account').val();
		
		$.post("user.s?op=Pwd1",data,
			function(data){
			var a1=document.getElementById("yonghuming");
			if(data=="yes"){
				a1.innerHTML="";
			}else if(data=="no"){
				a1.innerHTML="该用户名不存在";
			}else{
				a1.innerHTML="用户名不能为空";
			}
			}		
		);
}
function tj(){
	var data={};
	data.account=$('#account').val();
	data.code=$('#code').val();
	$.post("<%= request.getContextPath()%>/CodeServlet",data,
			function(data){
			if(data=="yk"){
				alert("用户名不能为空")
				window.location.reload();
			}else if(data=="yb"){
				alert("用户名不存在")
				window.location.reload();
			}else if(data=="no"){
				alert("验证码错误")
				window.location.reload();
			}else if(data=="yes"){
				window.location.href='forgetPwd2.jsp';
			} 
	}
			);
}
	function cck(){
		var time=new Date().getTime();
		document.getElementById("img").src="<%= request.getContextPath()%>/HelloServlet?d="+time;
	}
</script>
</body>
</html>
