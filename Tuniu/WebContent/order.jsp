<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String a=request.getParameter("id");
	if( request.getAttribute("scList") == null ){
		request.getRequestDispatcher("combo.s?op=scadd&id="+a).forward(request, response);
	}else if( request.getAttribute("comboList") == null ){
		request.getRequestDispatcher("combo.s?op=coadd&id="+a).forward(request, response);
	} 
%>
<!DOCTYPE html>
<html>
<link href="./static/css/index-nav-menu.css" rel="stylesheet"/>
<link href="./static/css/self-tour.css" rel="stylesheet" />
<link rel="stylesheet" href="static/css/layui.css">
<link rel="stylesheet" href="static/css/msg.css">
<script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="static/layui.js"></script>
<script type="text/javascript" src="./static/js/jquery-1.8.3-min.js"></script>
<%@ include file="/public/head.jsp" %> 
<body>
<%@ include file="/public/Body.jsp" %>

<div class="layui-container">
    <form class="layui-form" action="">
 <c:forEach items="${comboList }" var="c">
        <div class="layui-row layui-col-space20">
            <div class="layui-col-md6">
	<div class="resource-gallery">
        <div class="gallery" id="J_Gallery">
            <div class="gallery-display">
                <ul class="gallery-display-box">
            <c:forEach items="${scList }" var="t">
                     <li class="gallery-photo gallery-photo-active" data-src="picture/cii-vvmvhzyichfaaags41qxx-eaaa46gopw5maaaz7857_w500_h280_c1_t0.jpg" data-thumb="picture/cii-vvmvhzyichfaaags41qxx-eaaa46gopw5maaaz7857_w640_h320_c1_t0.jpg">
                         <img src="${t.photo }" style="width:500px;height: 280px; ">
                     </li>
            </c:forEach>
                </ul>
            </div>
            
            <div class="gallery-nav">
                <div class="gallery-prev" mm="点击_头部区_基本信息_切换头图"><i class="icon"></i></div>
                <div class="gallery-next" mm="点击_头部区_基本信息_切换头图"><i class="icon"></i></div>
                <div class="gallery-thumbs">
                    <div class="gallery-mask"></div>
                    <div class="gallery-nav-box">
                        <ul class="gallery-nav-list">
                     <c:forEach items="${scList }" var="t">
                             <li class="gallery-thumb" mm="点击_头部区_基本信息_切换头图">
                                 <img src="${t.photo }">
                             </li>
                    </c:forEach>
                        </ul>
                    </div>
                	</div>
            	</div>
        	</div>
		</div>

                <div id="test2"></div>
                <!--仅为了保存时间-->
                <input type="text" name="date" id="testView">
                <input type="text" value="">
            </div>
            <div class="layui-col-md6">
                <div class="title">
                    <span class="shop-icon">景点</span>
                    <h1>${c.tname }</h1>
                    <div class="s-label">
                        <span>免签证之旅</span>
                        <span>美食之旅</span>
                    </div>
                </div>
                <div class="price-panel">
                    <ul>
                        <li class="item-price">
                            <em>￥</em>
                            <strong>${c.price }</strong>
                            <span>
                                <a href="javascript:;">价格说明</a>
                            </span>
                            <span>已售491</span>
                        </li>
                    </ul>
                </div>
                <div class="info-panel">
                    <span class="label">优惠信息</span>
                    <div class="promo-bd">
                        <span>蜂蜜抵10%</span>
                    </div>
                </div>
                <div class="info-panel">
                    <span class="label">预订须知</span>
                    <div class="info-tips-box">
                        <span>此产品需要二次确认，商家将在18个工作小时内（工作日9:00-18:00）核实是否有位!</span>
                    </div>
                </div>
                <hr>
                <div class="info-panel">
                    <span class="label">${c.type }</span>
                    <div class="info-tips-box">
                        <ul>
                            <li>
                                <input type="checkbox" name="" title="内舱房 4人间">
                            </li>
                            <li>
                                <input type="checkbox" name="" title="内舱房 4人间">
                            </li>
                            <li>
                                <input type="checkbox" name="" title="内舱房 4人间">
                            </li>
                            <li>
                                <input type="checkbox" name="" title="内舱房 4人间">
                            </li>
                            <li>
                                <input type="checkbox" name="" title="内舱房 4人间">
                            </li>
                            <li>
                                <input type="checkbox" name="" title="内舱房 4人间">
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="action-panel">
                    <div class="item-price total">
                        <em>￥</em>
                        <strong>${c.price }</strong>
                    </div>
                    
                    <!-- style="widows: 100px;height: 50px;background-color: red; float: right; border: 1px solid red;" -->
                    <div class="editor-button">
        				<a href="tj-dingdang.jsp?id=${c.id }&date=2018-12-19" title="报名咨询" target='_self'>
      						<img class="lazyloads" data-size="19_17" data-original="./static/image/geek_5.png">
     						 报名咨询
    					</a>
      				</div>
                    
                </div>
            </div>
        </div>
        </c:forEach>
    </form>
</div>

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
    layui.use('carousel', function(){
        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem: '#test1'
            ,width: '100%' //设置容器宽度
            ,arrow: 'always' //始终显示箭头
        });
    });
    layui.use('laydate', function(){
        var laydate = layui.laydate;
        laydate.render({
            elem: '#test2'
            ,position: 'static'
            ,calendar: true
            ,change: function(value, date){ //监听日期被切换
                lay('#testView').val(value);
            }
        })
    });
</script>
<script src="./static/js/global.min.js"></script>
<script src="./static/js/polyfill.js"></script>
<script src="./static/js/self-tour.js"></script>
</body>
</html>