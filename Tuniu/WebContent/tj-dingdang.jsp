<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String a=request.getParameter("id");
	String pan=request.getParameter("pan");	
	if( request.getAttribute("comboList") == null ){
		request.getRequestDispatcher("combo.s?op=coadd&id="+a+"&pan="+pan).forward(request, response);
	} 
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en"   xmlns="http://www.w3.org/1999/xhtml" >
    <meta charset="utf-8" />
    <title>订单页面</title>
	<link rel="stylesheet" href="static/css/layui.css">
    <link rel="stylesheet" href="static/css/msg.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="static/layui.js"></script>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<head>

</head>
<body>
<div class="container">
    <div class="content">
        <div class="row">
            <div class="login-form">
				<h2>保险</h2>
                <form class="layui-form" action="" method="post">
					<fieldset>
					<div class="info-panel">
						 <div class="info-tips-box">
							<ul>
								<li>
									<input type="checkbox" name="" title="保险1">
								</li>
								<li>
									<input type="checkbox" name="" title="保险2">
								</li>
								<li>
									<input type="checkbox" name="" title="保险3">
								</li>
                            
							</ul>
						</div>
					</div>
					</fieldset>	
                </form>   
						
                <h2>预定人信息</h2>
                <form class="layui-form" action="" method="post">
                    <fieldset>

                        <div class="input-group input-group-lg">
							<span class="input-group-addon">姓名</span>
							 <input type="text" class="form-control" placeholder="姓名" id="truename" name="truename" onchange="javascript:if(!/^[\u4e00-\u9fa5]+$/gi.test(this.value))alert('请输入正确的姓名');"/>
						</div>
                        <br>
                        <div class="input-group input-group-lg">
							<span class="input-group-addon">手机</span>
							 <input type="text" class="form-control" placeholder="手机" id="dtel" name="dtel" />
						</div>
                        <br>
                        <div class="input-group input-group-lg">
							<span class="input-group-addon">人数</span>
							<input type="email" class="form-control" placeholder="人数" id="number" name="number" />
						</div>
						
                		<br>
				        <div class="input-group input-group-lg">
							<span class="input-group-addon">出发地址</span>
							<input type="text" class="form-control" placeholder="请填写地址" id="address" name="address">
						</div>
				
                    </fieldset>
                </form>
            </div>
        </div>
    </div>

				<h2>备注信息（用于接收订单反馈）</h2>
                <form class="layui-form" action="" method="post">
					<fieldset>
						<div class="panel-heading">		
							<div class="input-group">
								<span class="input-group-addon">备注信息</span>
								<textarea rows="5" cols="30" class="form-control"  placeholder="注意事项等" id="dshow" name="dshow"></textarea>
							</div>
						</div>
						
					</fieldset>	
                </form>  
				<div class="panel panel-default">
					<div class="panel-heading">
						优惠信息
					</div>
					<div class="panel-body">
						<div class="s-label">
                        	 <span>途牛抵10%</span>
							 <span>代金券抵10%</span>
                    	</div>
					</div>
				</div>
				
				<div class="info-panel">
                    		预订须知
                    <div class="info-tips-box">
                        <span>此产品需要二次确认，商家将在18个工作小时内（工作日9:00-18:00）核实是否有位!</span>
                    </div>
                </div>
				
				 
				<input type="checkbox">我已阅读并同意
				<a href="#" class="btn">《途牛交易平台协议》</a>
				<a href="#" class="btn">旅游安全须知</a>
				<div class="action-panel">
                    <div class="item-price total">
                        <em>￥</em>
                        
                        <!-- 套餐费加5块钱手续费 -->
                        <strong id="dprice">${combo[0].price +5}</strong>
                        
                    </div>
                    <span class="buy">
                    	<button type="button"  style="background-color: orange;height: 55px;width: 100px;" onclick="yuding()">
                    		提交订单
                    	</button>
                     
                    </span>
                </div>
						
</div> <!-- /container -->
<script>
    //Demo
    layui.use('form', function(){
        var form = layui.form;

        //监听提交
        form.on('submit(formDemo)', function(data){
            layer.msg(JSON.stringify(data.field));
            return false;
        });
    });
    // 提交订单点击事件
    function yuding() {
		var data={}
		data.truename = $('#truename').val();
		data.dtel = $('#dtel').val();
		data.number = $('#number').val();
		data.address = $('#address').val();
		data.dshow = $("#dshow").val();
		data.stattime=${param.date };
		data.cid=${comboList[0].id };
		data.dprice=${comboList[0].price };
		$.post("comboorder.s?op=add",data,
			function(data){
			window.location.href="tj-dingdang.jsp";
				
			});
		
	}
</script>
</body>
</html>