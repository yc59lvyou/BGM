﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>怀玉乡旅游订单填写</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes"/>
<meta name="full-screen" content="yes">
<meta name="browsermode" content="application">
<meta name="x5-fullscreen" content="true">
<meta name="x5-page-mode" content="app">
<link rel="stylesheet" type="text/css" href="./static/css/lxs_index.css"/>
<link rel="stylesheet" type="text/css" href="./static/css/lxsHeadFoot.css">
<link rel="stylesheet" type="text/css" href="./static/css/order_new.css"/>
<script src="./static/js/jquery-2.1.4.min.js"></script>
<script src="./static/js/lxs_index00.js"></script>
<script></script>
</head>
<body>

<div class="content">
	<div class="headTop">
		<a href="javascript:history.go(-1)" class="back"><i class="iconBack"></i></a><span>订单填写</span><a class="more"><i class="iconDian"></i><i class="iconDian"></i><i class="iconDian"></i></a>
	</div>
</div>


<div class="j_main m-main">
	<div class="o_logo">
		<span>登录预订更便捷</span><a href="" rel="nofollow">马上登录</a>
	</div>
	<form action="" method="post" name="form_1">
		
		<div class="tit">
			<i></i>填写出游信息
		</div>
		<div class="txt">
			<dl>
				<dt>线路名称</dt>
				<dd class="line30">怀玉乡红色旅游基地纯玩3晚4日游【景点门票全含】</dd>
			</dl>
			<dl>
				<dt>线路类型</dt>
				<dd class="line30">跟团游</dd>
			</dl>
			<dl>
				<dt>游玩日期</dt>
				<dd>2018-09-10</dd>
			</dl>
			<dl class="J_price">
				<dt>成人</dt>
				<dd class="box-flex-1 price pd0" id="adult_price_span"><span>￥ <span id="price_d">620</span></span></dd><dd class="box-flex-2"><span class="subadd j_num"><span class="sub" data-type="adults"></span><input id="j_price_d_num" type="number" min="1" max="99" class="text_num" value="1" name="adult_num"><span class="add" data-type="adults"></span></span></dd>
			</dl>
			<dl class="J_price">
				<dt>儿童</dt>
				<dd class="box-flex-1 price pd0" id="adult_price_span"><span>￥ <span id="price_child_d">0</span></span></dd><dd class="box-flex-2"><span class="subadd j_num"><span class="sub" data-type="adults"></span><input id="j_price_child_d_num" type="number" min="0" max="99" class="text_num" value="0" name="child_num"><span class="add" data-type="adults"></span></span></dd>
			</dl>
		</div>
		<div class="tit">
			<i></i>保险信息<br>
			<span>注：购买保险需如实填写被保险人姓名与身份证号</span>
		</div>
		<div class="txt txt2 J_baoxian">
		</div>
		<script type="text" id="j_baoxian_con"> <dl> <dt> <a href="javascript:;" class="j_baoxian_tit J_baoxian_info">*title*</a> <input type="hidden" name="*name1*" value="*id*" /> <input type="hidden" name="*name2*" value="*price*" /> </dt> <dd> <font><span class="j_baoxian_c">*price_c*</span><i class="more"></i></font> </dd> </dl> </script>
		<script></script>
		<div class="tit">
			<i></i>填写联系人信息
		</div>
		<div class="txt">
			<dl>
				<dt>联系人</dt>
				<dd><input maxlength="20" type="text" name="truename" class="o_man" placeholder="真实姓名（必填）" value=""></dd>
			</dl>
			<dl>
				<dt>手机号码</dt>
				<dd class="pd0"><input type="tel" name="mobiletel" id="n_mobiletel" class="o_number" maxlength="11" placeholder="手机号码（必填）" value=""></dd><dd style="width:8rem;-webkit-box-flex:inherit">
				<p>
					<span class="mobile_code">获取验证码</span>
				</p>
				</dd>
			</dl>
			<dl>
				<dt>验证码</dt>
				<dd class="o_yanzhengNo"><input type="text" id="code" name="code" class="o_yz" placeholder="短信验证码（必填）" maxlength="6">
				<div class="o_yzTrips">
				</div>
				</dd>
			</dl>
		</div>
		<div class="tourist_box j_youke_main">
			<div class="tit">
				<i></i>填写游客信息
			</div>
			<div class="txt" id="j_kehu_list">
			</div>
		</div>
		<script type="text" id="j_kehu_c"> <dl class="j_kehu_open"> <dt> <span>游客*i*</span> <div class="none"> <input maxlength="20" type="hidden" class="o_man tourist_name" name="insurance_username[]" placeholder="游客姓名（必填）"> <input type="hidden" class="o_man tourist_phone_number" name="phone_number[]" placeholder="手机号码（选填）"> <input type="hidden" class="o_man tourist_identity_card" name="idcard_no[]" placeholder="身份证号码（必填）">  </div> </dt> <dd> <font class="corBlue"><span>填写信息</span><i class="more fr"></i></font> </dd> </dl> </script>
		<script></script>
		<div class="txt txt2">
			<dl>
				<dt>国庆满减活动</dt>
				<dd class="box-flex-2"><span class="gq_type"></span></dd>
			</dl>
		</div>
		<div class="coupon_con" id="j_youhui">
			<div class="coupon_txt">
				<dl data-coupon-id="" data-amount="">
					<dd><money>&yen;1253</money>
					<p>
						优惠券
					</p>
					</dd>
					<dt><i class="checkbox"></i></dt>
				</dl>
			</div>
		</div>
		<div class="booking_notes">
			<label><i class="on"></i>我已阅读并同意此产品的</label><a href="javascript:;" class="btn_notes">预订须知</a>
			<p>
				温馨提示：为了保障您的出游权益，请务必在线支付订单。
			</p>
		</div>
	</form>
	<div class="submintFix">
		<dl>
			<dt>
			<div class="price">
				订单总额 <span>￥<em class="j_all_money">620</em></span>
			</div>
			</dt>
			<dd class="sbmFix"><button type="button" id="save">提交订单</button></dd>
		</dl>
	</div>
</div>
<div id="j_baoxian" class="content" style="display:none;">
	<div class="headTop">
		<a href="javascript:history.go(-1)" class="back"><i class="iconBack"></i></a><span>保险信息</span><a href="javascript:history.go(-1)" class="btn">确定</a>
	</div>
	<div class="coupon_txt">
		<dl>
			<dd><money>&yen;25.00</money>
			<p class="j_baoxian_name">
				众安趣神州（计划一）<span>20万意外</span>
			</p>
			</dd>
			<dt><i class="checkbox on J_baoxian_one"><input class="j_baoxian_check J_default" type="checkbox" data-name1="finance_safe[]" data-name2="finance_price[]" data-price="25.00" data-id="ff633ad8736f60f0b50faf90394dae1623deb9ea6c" data-title="众安趣神州（计划一）" data-daynum=""></i></dt>
		</dl>
		<div class="more_con">
			<div class="con">
				<b>保险详情</b>
				<table>
				<tbody>
				<tr>
					<td>
						医疗补偿（其中境内旅行的疾病医疗补偿赔偿限额：RMB 1,000）
					</td>
					<td>
						20000
					</td>
					<td>
						医疗补偿（其中境内旅行的疾病医疗补偿赔偿限额：RMB 1,000）
					</td>
				</tr>
				<tr>
					<td>
						意外身故及伤残（扩展承保高风险运动）
					</td>
					<td>
						200000
					</td>
					<td>
						意外身故及伤残（扩展承保高风险运动）
					</td>
				</tr>
				<tr>
					<td>
						个人责任
					</td>
					<td>
						80000
					</td>
					<td>
						个人责任
					</td>
				</tr>
				<tr>
					<td>
						公共交通意外伤害双倍给付（不适用于未成年人）
					</td>
					<td>
						200000
					</td>
					<td>
						公共交通意外伤害双倍给付（不适用于未成年人）
					</td>
				</tr>
				<tr>
					<td>
						紧急医疗运送和送返
					</td>
					<td>
						50000
					</td>
					<td>
						紧急医疗运送和送返
					</td>
				</tr>
				<tr>
					<td>
						银行卡盗刷（不适用于未成年人）
					</td>
					<td>
						5000
					</td>
					<td>
						银行卡盗刷（不适用于未成年人）
					</td>
				</tr>
				</tbody>
				</table>
				<div class="baoxian_info mt10">
					<b>投保须知</b>
					<p>
						1、产品名称：众安趣神州境内旅行保障<br>
						【本产品由众安在线财产保险股份有限公司（简称“众安保险”）承保，面向全国区域进行销售。】
					</p>
					<p>
						2、投保人：参团旅游的游客，年龄在18周岁至80周岁的旅行者和随团提供服务的导游、领队队员、司机、均可作为本保险的投保人；若被保险人是未成年人，则投保人须为其法定监护人。
					</p>
					<p>
						3、被保险人：年龄在2岁至80周岁的旅行者和随团提供服务的导游、领队队员、司机、均可作为本保险的被保险人。
					</p>
					<p>
						4、投保限制：每人限制投保1份。
					</p>
					<p>
						5、保险期间：<br>
						单次旅行最长承保天数45天
					</p>
					<p>
						6、保险条款：
					</p>
					<table>
					<tr>
						<td>
							境内旅行意外伤害保险条款
						</td>
						<td>
							众安备-意外【2015】主13号
						</td>
					</tr>
					<tr>
						<td>
							附加公共交通工具意外伤害双倍给付保险条款
						</td>
						<td>
							众安备-意外【2015】附5号
						</td>
					</tr>
					<tr>
						<td>
							附加突发急性疾病身故保险条款
						</td>
						<td>
							众安备-健康【2015】附206号
						</td>
					</tr>
					<tr>
						<td>
							附加旅行医疗保险条款
						</td>
						<td>
							众安备-健康【2015】附202号
						</td>
					</tr>
					<tr>
						<td>
							附加旅行住院津贴保险条款
						</td>
						<td>
							众安备-健康【2015】附205号
						</td>
					</tr>
					<tr>
						<td>
							附加旅行紧急医疗运送和送返保险条款
						</td>
						<td>
							众安备-健康【2015】附7号
						</td>
					</tr>
					<tr>
						<td>
							附加旅行身故遗体送返保险条款
						</td>
						<td>
							众安备-健康【2015】附8号
						</td>
					</tr>
					<tr>
						<td>
							附加旅行慰问探访保险条款
						</td>
						<td>
							众安备-其他【2015】附201号
						</td>
					</tr>
					<tr>
						<td>
							附加未成年人送返费用补偿保险条款
						</td>
						<td>
							众安备-其他【2015】附208号
						</td>
					</tr>
					<tr>
						<td>
							附加旅程延误保险条款
						</td>
						<td>
							众安备-其他【2015】附197号
						</td>
					</tr>
					<tr>
						<td>
							附加托运行李延误保险条款
						</td>
						<td>
							众安备-家财【2015】附207号
						</td>
					</tr>
					<tr>
						<td>
							附加个人随身物品损失保险条款
						</td>
						<td>
							众安备-家财【2015】附4号
						</td>
					</tr>
					<tr>
						<td>
							附加旅行银行卡盗刷保险条款
						</td>
						<td>
							众安备-家财【2015】附203号
						</td>
					</tr>
					<tr>
						<td>
							附加旅行个人责任保险条款
						</td>
						<td>
							众安备-责任【2015】附199号
						</td>
					</tr>
					<tr>
						<td>
							附加高风险运动意外伤害保险条款
						</td>
						<td>
							众安备-意外【2015】附13号
						</td>
					</tr>
					</table>
					<p>
						8、保费及赔偿限额
					</p>
					<ol>
						<li>每一游客具体投保金额及相应的保费，按照投保项目确定计收。</li>
						<li>71岁至80周岁的被保险人，其“意外身故及伤残”、“突发急性病身故”和“公共交通工具意外伤害双倍给付”保险责任的保险金额为产品方案所载金额的一半，保险费不变。</li>
					</ol>
					<p>
						9、本保险产品不承保前往处于战争状态或已被宣布为紧急状态的国家或地区，除非本本合同另有约定；
					</p>
					<p>
						10、 退保：客户在保单生效前可提出退保，退保由渠道登录投保系统进行退保指令。
					</p>
					<p>
						11、发票：提供保险定额发票以作报销。保险定额发票仅作报销凭证，不是保单凭证。（因“营改增”导致的变化，以众安保险公司统一变化为准。）
					</p>
					<p>
						12、购买完成后，可通过以下方式查询保单
					</p>
					<ol>
						<li>通过登陆众安官网www.zhongan.com查询保单状态</li>
						<li>拨打众安热线4009999595</li>
					</ol>
					<p>
						13、 理赔：
					</p>
					<ol>
						<li>拨打众安客服热线【400-999-9595】</li>
						<li>准备证明保险事故的相关材料 </li>
						<li>理赔材料提供方式：【网络提供、自动理赔、寄送】 </li>
					</ol>
					<p>
						14、众安保险客服热线：1010-9955或400-999-9595；众安保险官网：www.zhongan.com
					</p>
					<p class="last">
						详细信息请见 “<a href="" target="_blank">众安趣神州境内旅行保障保险条款（及备案号）</a>”和其中的免除责任
					</p>
					<p style="color:#999">
						本产品由众安在线财产保险股份有限公司承保，由深圳腾邦保险经纪有限公司提供销售、协助理赔等服务。<a href="javascript:;" class="btn_close">收起</a>
					</p>
				</div>
			</div>
			<div class="more j_down_more">
				<i></i>
			</div>
		</div>
		<dl>
			<dd>
			<p>
				我不需要保险
			</p>
			</dd>
			<dt><i class="checkbox"><input class="j_baoxian_check j_baoxian_not" type="checkbox" data-price="-1" data-title="我不需要保险"/></i></dt>
		</dl>
	</div>
</div>
<div class="j_kehu_window m-main" style="display:none;">
	<div class="headTop">
		<a href="javascript:history.go(-1)" class="back"><i class="iconBack"></i></a><span>添加游客信息</span><a class="btn"></a>
	</div>
	<div class="txt">
		<div class="txt_menu js_txt_menu" data-id="1">
			<dl>
				<dt class="w100">游客姓名</dt>
				<dd><input type="text" maxlength="20" class="m_input" j_name="insurance_username" placeholder="与证件姓名一致" value=""></dd>
			</dl>
			<dl>
				<dt class="w100">手机号码</dt>
				<dd><input type="tel" maxlength="11" class="m_input" j_name="phone_number" placeholder="输入手机号(选填)" value=""></dd>
			</dl>
			<dl class="id_code">
				<dt class="w100">身份证号码</dt>
				<dd><input type="text" class="m_input" j_name="idcard_no" placeholder="投保必填项(必填)" value=""></dd>
			</dl>
		</div>
	</div>
	<div class="txt_btn j_txt_btn_bc">
		<a href="javascript:;">保存</a>
	</div>
	<div class="com_one_popup js_toufang_box a-bouncein">
		<div class="com_popup_head">
			选择证件类型<i class="close"></i>
		</div>
		<div class="com_one_popup_box">
			<ul>
				<li class="on">身份证 <i class="on"></i></li>
				<li>军官证 <i></i></li>
				<li>台胞证 <i></i></li>
				<li>护照 <i></i></li>
				<li>其他 <i></i></li>
			</ul>
		</div>
	</div>
</div>
<div class="notes_con" id="contentWrapper">
	<div class="text_con" id="contentScroller">
		<strong>零售平台预订须知 （免责条款）</strong><b>第一条.特别须知</b>
		<p>
			怀玉乡旅游网代理预订平台展示的旅游产品由具备相关资质的合作商家直接提供，怀玉乡旅游网仅作为网络预订平台。合作商家充分借用怀玉乡旅游网预订平台，推出全方位的旅游产品，并负责产品销售、资源确认、合同签署、发票开具、行程安排等全部环节的旅游服务。怀玉乡旅游网作为旅游产品的展示平台，您对本协议的接受并不意味着怀玉乡旅游网成为旅游产品交易的参与者，对前述交易怀玉乡旅游网仅提供技术支持，不对合作商家行为的合法性、有效性及旅游产品的真实性、合法性及有效性作任何明示或暗示的担保。
		</p>
		<p>
			在预订开始前，请仔细阅读本须知，产品页面中的附件条款也作为协议的补充内容。当您开始预订该产品时，表明您已仔细阅读并接受协议中的所有条款。
		</p>
		<b>第二条.部分词语解释</b>
		<p>
			1. 合作商家：怀玉乡旅游网代理预订平台展示旅游产品的具有合法资质的的旅行社。
	  </p>
		<p>
			2. 怀玉乡旅游网代理预订平台：由怀玉乡旅游网提供系统平台技术，合作商家自行进行产品上线及售卖服务的第三方服务平台。
	  </p>
		<b>第三条.预订产品内容与价格 </b>
		<p>
			怀玉乡旅游网展示的产品价格仅为参考价格，由于旅游产品价格的波动性，合作商家可能因为机票、酒店的价格变动而适度调整其在怀玉乡旅游网上已公布的旅游产品的价格。您预订的所有旅游产品的价格及产品价格包含的内容，以合作商家与您最后确认为准。非特别标明，产品价格不包含办理护照、入台证、签证或签注费、行李物品的保管及超重费、个人消费、航空人身意外保险费及您应自行投保的其它保险费用。
	  </p>
		<b>第四条.订单生效与合同生效条件</b>
		<p>
			您在怀玉乡旅游网预订产品成功后，合作商家会给您关于订单的确认，您应在与合作商家约定的付款期前及时付清供应商给您确认的应付款，您确认的订单才生效。但如您未及时付清相关费用，而此时旅游产品的价格、内容或标准等有发生变化，怀玉乡旅游网及其合作商家对此不承担任何责任。待您付款成功，并且合作商家给予您最终确认后，合作商家与您之间的合同生效。
	  </p>
		<b>第五条.因合作商家原因变更或取消已生效订单 </b>
		<p>
			在您按要求付清应付费用并经合作商家最终确认后，如因合作商家原因，致使您的旅游产品不能成行或内容发生更改的，合作商家会第一时间通知您，并无条件退返您已支付的所有或部分费用。或在经您同意后，调整产品中的行程内容或接待标准，退还差额费用。如调整后的产品价格高于原来价格，您须补足多出的相应差额。
		</p>
		<b>第六条.您主动更改或取消已生效订单 </b>
		<p>
			订单生效后，您若需要更改或取消该订单内的任何项目，请务必在行程开始前通知合作商家更改或取消需求。合作商家会尽量满足您的需求，但您必须全额承担因变更或取消带来的损失及可能增加的费用，包括但不限于签证或签注费、订房损失费、机票费及其它车船交通费用等。若您所预订的产品在目的地停留的日期部分或全部处在国家法定节假日或其它部分国际性、国家性、地方性重大节日期间，鉴于资源的特殊状况，已生效订单如进行更改或取消将产生全额损失。
		</p>
		<b>第七条.第三方责任 </b>
		<p>
			由于出入境管理局、各国领馆、航空公司、保险公司、及其他有权机构等不可控制的第三方、原因导致您人身、财产权益受到损害的，包括但不限于，航班延误或取消、护照延期、签证拒签或未按时出签、不得出入境等，应由您方自行协商解决，必要时请及时联系合作商家协助处理。
		</p>
		<p>
			由于其他第三方侵权导致您的人身、财产损失，请您积极主动向侵权方追偿，我们会竭力配合，为您争取权益。
		</p>
		<b>第八条.安全事项 </b>
		<p>
			您应确保出行人身体条件适合本次外出旅游度假，如出行人为孕妇或有心脏病、高血压、呼吸系统疾病等病史，请在征得医院专业医生同意后出行。
			<p>
				<p>
					您保证提供的证件、通讯联络方式、配送地址等相关资料均真实有效。
				</p>
				<p>
					您应尊重当地的法律法规、宗教信仰、民族习惯和风土人情，自觉保护当地自然环境。
				</p>
				<p>
					您在旅行中应注意人身财产安全，妥善保管自己的证件及行李物品，如果发生人身意外、伤害或随身携带行李物品遗失、被盗、被抢等情况，由您自行承担。
				</p>
				<p>
					您在旅游过程中如对旅游产品合作商家的服务质量有异议，应积极与旅游产品合作商家沟通积极争取在旅游过程中解决。
				</p>
				<p>
					其他事宜可参照中国旅游局、地方各级旅游部门发出的文明旅游公约等系列文件。
				</p>
			</div>
			<a href="javascript:;" class="close"></a>
		</div>

<script src="./static/js/min_com.js"></script>
<script src="./static/js/order_xianlu.js"></script>
<script>
var is_dijie = '0'; /*预定须知弹窗*/
 var cart_type_num = 0;
 var myScroll;
 var mobiletel_regexp = /^1[3|4|5|7|8|9][0-9]\d{8}$/;

 function loaded() {
 	myScroll = new iScroll('contentWrapper');
 }
 function bodyscroll(e) {
 	e.preventDefault();
 }
 document.addEventListener('DOMContentLoaded', function() {
 	setTimeout(loaded, 200);
 }, false);
 $('.btn_notes').click(function() {
 	$('.notes_con').show();
 	setTimeout(loaded, 300);
 	document.addEventListener('touchmove', bodyscroll, false);
 });
 $('.notes_con').click(function() {
 	$(this).hide();
 	document.removeEventListener('touchmove', bodyscroll, false);
 }); /*60秒倒计时*/
 var wait = 60;

 function time_d(t) {
 	if (wait == 0) {
 		$(t).removeAttr("disabled").html("获取验证码");
 		wait = 60;
 	} else {
 		$(t).attr("disabled", "disabled").html(wait + '秒后重新发送').addClass('disable');
 		wait--;
 		setTimeout(function() {
 			time_d(t);
 		}, 1000);
 	}
 } /*游客信息检测*/


 function tourist_check() {
 	var tourist_list = $(".j_kehu_open"),
 		type = 1;
 	for (var j = 0; j < tourist_list.length; j++) {
 		var tr = tourist_list.eq(j);
 		if (!tr.data('full')) {
 			alert('请填写<b style="color:#FFF000">游客' + (j + 1) + '</b>的信息');
 			type = 0;
 			break;
 		}
 	};
 	return type ? true : false;
 }; /*异步核对验证码*/


 function mobiletel_code_check() {
 	var ajax_url = '/order/checkCode',
 		code = $('input[name="code"]').val(),
 		mobiletel = $('input[name="mobiletel"]').val();
 	if (mobiletel == '') {
 		alert('请输入手机号码');
 		return false;
 	} else if (!checkMobile(mobiletel)) {
 		alert('请输入正确的手机号码');
 		return false;
 	} else if (code == '' || code.length != 6) {
 		alert('请输入6位验证码');
 		return false;
 	}
 	$('#save').addClass('not');
 	$.ajax({
 		url: ajax_url,
 		type: 'post',
 		data: {
 			mobiletel: mobiletel,
 			code: code,
 			inajax: 1
 		},
 		dataType: 'json',
 		success: function(data) { /*console.log(data);*/
 			if (data == '1') {
 				alert('手机验证完毕');
 				document.form_1.submit();
 			} else {
 				$('#save').removeClass('not');
 				if (data == '-1') {
 					alert('手机号码错误');
 					return false;
 				} else if (data == '-2') {
 					alert('验证码错误');
 					return false;
 				} else {
 					alert('意外错误');
 					return false;
 				}
 			}
 		},
 		error: function() {
 			$('#save').removeClass('not');
 			alert('意外错误');
 			return false
 		}
 	});
 }
 $(function() { /*表单提交*/
 	$('#save').click(function(e) {
 		e.stopPropagation();
 		if ($('#save').hasClass('not')) return false;
 		var uid = parseInt($("#uid").val()); /*检测游客填写的身份信息*/
 		if (!tourist_check()) {
 			return false;
 		}
 		var true_name = $('input[name="truename"]').val(),
 			mobiletel = $('input[name="mobiletel"]').val();
 		if (true_name == '') {
 			alert('联系人为必须填写项');
 			return false;
 		} else if (true_name.length < 2) {
 			alert('联系人过短，请重新输入');
 			return false;
 		} else if (true_name.length > 10) {
 			alert('联系人长度仅限10个字符，请重新输入');
 			return false;
 		} else if (mobiletel == '') {
 			alert('手机号码为必须填写项');
 			return false;
 		} else if (mobiletel.length != 11 || !mobiletel_regexp.test(mobiletel)) {
 			alert('手机号码不正确，请重新输入');
 			return false;
 		}
 		if (!$('.booking_notes i').hasClass('on')) {
 			alert('请阅读并同意此产品的预订须知');
 			return false;
 		}
 		if (uid == 0) {
 			mobiletel_code_check();
 		} else {
 			$('#save').addClass('not');
 			document.form_1.submit();
 		}
 	}); /*发送手机验证码*/
 	$(".mobile_code").click(function() {
 		var th = $(this),
 			tel = $("#n_mobiletel").val(),
 			r_url = '/account/getcode?inajax=1&mobiletel=' + tel + '&idtype=4';
 		if (tel == '') {
 			alert('请先输入手机号码');
 			return false;
 		}
 		if (tel.length != 11 || !mobiletel_regexp.test(tel)) {
 			alert('手机号码不正确，请您重新输入');
 			return false
 		}
 		if (th.hasClass('not')) {
 			return false;
 		}
 		th.addClass('not');
 		setTimeout(function() {
 			th.removeClass('not');
 		}, 60000);
 		$.get(r_url, function(data) {
 			if (data == '1') {
 				alert('短信已发送，请查看');
 			} else if (data == '-1') {
 				alert('获取失败，手机号码不能为空');
 			} else if (data == '-2') {
 				alert('获取失败，手机号码错误');
 			} else if (data == '-3') {
 				alert('获取失败，该手机已被注册');
 			} else if (data == '-4') {
 				alert('您的操作太频繁，请稍候再试');
 			} else if (data == '-8') {
 				alert('同一ip一天最多10条短信');
 			} else if (data == '-5') {
 				alert('同一手机一个月最多5条短信');
 			} else if (data == '-6') {
 				alert('获取失败，获取验证时间间隔60秒');
 			} else {
 				alert('获取失败');
 			}
 		});
 	}); /*改变证件类型事件*/
 	$('#j_kehu_list').on('change', '.tourist_box .certificate_type', function() {
 		
 		placeholder = mark + '号码（必填）';
 		cur.closest('dl').next('dl').find('dt').html(mark).siblings('dd').find('input[type="text"]').attr('placeholder', placeholder);
 	});
 });

 function guoqing_yh() {

 }
</script>
		</body>
		</html>