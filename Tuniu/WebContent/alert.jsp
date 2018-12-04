<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>rua！</title>
    <link rel="stylesheet" href="static/css/layui.css">
    <link rel="stylesheet" href="static/css/alert.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="static/layui.js"></script>
</head>
<body>

<div class="layui-tab">
    <ul class="layui-tab-title">
        <li class="layui-this">热门推荐</li>
        <li>一日游</li>
        <li>二日游</li>
        <li>三日游</li>
        <li>四日游</li>
        <li>五日游</li>
        <li>六日游</li>
        <li>七日游</li>
    </ul>
    <div class="layui-tab-content">
        <!--热门推荐-->
        <div class="layui-tab-item layui-show">
            <div class="layui-row  layui-col-space10">

                <!--开始循环卡片-->
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('${卡片名称}','${卡片地址}此处会报错');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>第一个仅做参考，url会报错并导向404</span>
                        <p>null￥</p>
                    </a>
                </div>
                <!--结束循环卡片-->
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
            </div>
        </div>
        <!--一日游-->
        <div class="layui-tab-item">
            <div class="layui-row  layui-col-space10">
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>阿萨德阿萨德</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
            </div>
        </div>
        <!--二日游-->
        <div class="layui-tab-item">
            <div class="layui-row  layui-col-space10">
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>阿萨德阿萨德</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
            </div>
        </div>
        <!--三日游-->
        <div class="layui-tab-item">
            <div class="layui-row  layui-col-space10">
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>阿萨德阿萨德</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
            </div>
        </div>
        <!--四日游-->
        <div class="layui-tab-item">
            <div class="layui-row  layui-col-space10">
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>阿萨德阿萨德</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
            </div>
        </div>
        <!--五日游-->
        <div class="layui-tab-item">
            <div class="layui-row  layui-col-space10">
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>阿萨德阿萨德</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
            </div>
        </div>
        <!--六日游-->
        <div class="layui-tab-item">
            <div class="layui-row  layui-col-space10">
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>阿萨德阿萨德</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
            </div>
        </div>
        <!--七日游-->
        <div class="layui-tab-item">
            <div class="layui-row  layui-col-space10">
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>阿萨德阿萨德</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
                <div class="layui-col-md3 font-center">
                    <a href="javascript:;" onclick="x_admin_show('巴拉巴拉','msg.html');" >
                        <img src="static/imgs/1.jpg" width="100%"/>
                        <span>巴拉巴拉</span>
                        <p>123￥</p>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(function () {
        //加载弹出层
        layui.use(['form','element'],
            function() {
                layer = layui.layer;
                element = layui.element;
            });
    })
    function x_admin_show(title,url,w,h){
        if (title == null || title == '') {
            title=false;
        }
        if (url == null || url == '') {
            url="404.html";
        }
        if (w == null || w == '') {
            w=($(window).width()*0.9);
        }
        if (h == null || h == '') {
            h=($(window).height() - 50);
        }
        layer.open({
            type: 2,
            area: [w+'px', h +'px'],
            fix: false,
            maxmin: true,
            shadeClose: true,
            shade:0.4,
            title: title,
            content: url
        });
    }

</script>
</body>
</html>
