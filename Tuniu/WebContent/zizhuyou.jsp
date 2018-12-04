<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//System.out.print(request.getAttribute("comboList"));
	//判断有没有用户列表数据，如果没有这跳转到 user.s?op=query
	if( request.getAttribute("comboList2") == null ){
		request.getRequestDispatcher("combo.s?op=add").forward(request, response);
	} 
%>
<!DOCTYPE html>
<html>
<script type="text/javascript" src="./static/js/jquery-1.8.3-min.js"></script>
<%@ include file="/public/head.jsp" %> 
<body>
<%@ include file="/public/Body.jsp" %>
<div class="width-box">
    <div class="price-box">
      <div class="price-nav transform-box">
        <ol class="price-ul">
          <li class="price-li active"><a title="">热门景点推荐</a></li>
        </ol>
      </div>
      <div class="price-cut">
        <ul class="active">
        <c:forEach items="${comboList2 }" var="c">
          <li>
            <a href="youinfo.html" title="海口到三亚三天两晚品牌游" target='_self'>
              <img class="lazyloadx" src='${c.tphoto }' alt="海口到三亚三天两晚品牌游">
              <span >${c.tname }</span>
        <font>${c.price }</font>
            </a>
          </li>
        </c:forEach>
        </ul>
      </div>
    </div>
分割
  <div class="width-box">
  <div class="advert-box">
    <a href="http://www.baidu.com" title="旅游景点旅行社网站" target='_self'>
    <img class="lazyloads" data-size="1170_120" data-original="./static/image/1506075016.jpg" alt="旅游景点旅行社网站">
    </a>
  </div>
  </div>
分割
  

<div class="box_list">
<ul>
<c:forEach items="${comboList2 }" var="c">
	<li id="line_4517293">
		<div class="tu">
			<a href="https://www.cncn.com/xianlu/659544517293" target="_blank"  onClick="xx_event(['xx1', 'www_list', '4517293', '3']);" >
				<img src='${c.tphoto }' width="120" height="90" alt="衡阳出发到北海旅游 北海银滩、百年老街、涠洲岛双高休闲4天">
			</a>
			<a href="#?" class="btn_add"></a>
		</div>
		<div class="xl_con">
			<div class="xl_type">
				<div class="title">
					<i class="i0"></i>
					<a href="https://www.cncn.com/xianlu/659544517293" target="_blank" data="4517293"  onClick="xx_event(['xx1', 'www_list', '4517293', '3']);" >${c.tname }</a>
					<s class="s2" title="支持支付宝在线支付"></s>
					<s class="s3" title="游客保障：该旅行社已签署游客保障协议，并交纳1000元保证金，承诺如实描述、诚信经营、品质服务，在线预订有保障！"></s>
				</div>
				<div class="xl_jd">
					<dl>
					<dt>行程概览:</dt>
					<dd>
						<span>衡阳出发</span>
						<em>></em><span>北海</span>
						<em>></em><span>涠洲岛</span>
						<em>></em><span>冠头岭</span>
						<em>></em><span>五彩滩</span>
						<em>></em><span>银滩</span>
						<em>></em><span>北海老街</span>
						<em>></em><span>海底世界</span>
						<em>></em><span>北海老城</span>
						<em>></em><span>海滩公园</span>...
					</dd>
					</dl>
				</div>
				<div class="lxs">
					<i></i>
					<a href="https://lxs.cncn.com/65954" target="_blank">衡阳新康辉国际旅行社高新区光辉街服务网点</a>
				</div>
				</div>
				<div class="xl_num1"> 
					<span class="price">&yen;<em>${c.price }</em>起<del>省<b>100</b>元</del></span> 
					<a href="order.jsp?id=${c.id }" class="btn_go"    >去看看</a>
					<span class="guanzhu">&nbsp;&nbsp;269人关注</span>
				</div>
		</div>
		<div class="xl_other">
			<span><em>行程天数</em>${c.arrange }</span>
			<span><em>出发日期</em>12/03、12/04...<a href="https://www.cncn.com/xianlu/659544517293" target="_blank">更多</a></span>
			<span><em>往返交通</em>高铁去高铁回</span>
			<span class="bd0 red"><em>行程提示</em>有购物 有自费</span>
		</div>
	</li>
	</c:forEach>
	</ul>
	</div>
</div>	

<%@ include file="/public/foot.jsp" %>
<%@ include file="/public/wxbox.jsp" %>
<button type="button" class="btn btn-icon btn-primary btn-squared met-scroll-top hide"><i class="icon wb-chevron-up" aria-hidden="true"></i></button>
<script src="./static/js/shop_lang_cn.js"></script>
<script src="./static/js/style.js"></script>
</body>
</html>