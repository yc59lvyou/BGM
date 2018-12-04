<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>rua！</title>
    <link rel="stylesheet" href="static/css/layui.css">
    <link rel="stylesheet" href="static/css/msg.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="static/layui.js"></script>
</head>
<body>
<div class="layui-container">
    <form class="layui-form" action="">
        <div class="layui-row layui-col-space20">
            <div class="layui-col-md6">
                <div class="layui-carousel" id="test1">
                    <div carousel-item>
                        <div>
                            <img src="static/imgs/1.jpg" width="100%"/></div>
                        <div>
                            <img src="static/imgs/1.jpg" width="100%"/></div>
                        <div>
                            <img src="static/imgs/1.jpg" width="100%"/></div>
                        <div>
                            <img src="static/imgs/1.jpg" width="100%"/></div>
                        <div>
                            <img src="static/imgs/1.jpg" width="100%"/></div>
                    </div>
                </div>
                <div id="test2"></div>
                <!--仅为了保存时间-->
                <input type="hidden" name="date" id="testView">
            </div>
            <div class="layui-col-md6">
                <div class="title">
                    <span class="shop-icon">店铺</span>
                    <h1>早鸟优惠【歌诗达邮轮赛琳娜号】上海往返日本6天5晚邮轮之旅(日本免签游+海上狂欢)</h1>
                    <div class="s-label">
                        <span>免签证之旅</span>
                        <span>美食之旅</span>
                    </div>
                </div>
                <div class="price-panel">
                    <ul>
                        <li class="item-price">
                            <em>￥</em>
                            <strong>1270~7000</strong>
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
                    <span class="label">套餐类型</span>
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
                        <strong>1270~7000</strong>
                    </div>
                    <span class="buy">
                        <a href="#" class="btn">立即购买</a>
                    </span>
                </div>
            </div>
        </div>
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
</body>
</html>