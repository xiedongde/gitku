<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>prodct</title>
<link rel="stylesheet" href="css/portalCss/style.css" type="text/css"></link>
<link rel="stylesheet" href="css/portalCss/prodct.css" type="text/css"></link>
<link rel="stylesheet" href="css/portalCss/magiczoomplus.css" type="text/css"></link>
<link rel="stylesheet" href="css/portalCss/zzsc.css" type="text/css"></link>
</head>

<body>
	<c:if test="${empty users }">
			<jsp:forward page="userLogin.jsp"></jsp:forward>
	</c:if>
	<div class="header">
		<div class="header_left float_left">
			<ul style="margin-left: 20px;">
				<li><a href="javascript:;">华为官网</a></li>
				<li class="li">|</li>
				<li><a href="javascript:;">华为官网</a></li>
				<li class="li">|</li>
				<li><a href="javascript:;">华为官网</a></li>
				<li class="li">|</li>
				<li><a href="javascript:;">华为官网</a></li>
				<li class="li">|</li>
				<li><a href="javascript:;">华为官网</a></li>
			</ul>
		</div>
		<div class="header_right float_right">
			<ul style="margin-right: 20px;">
				<c:if test="${users ==null }">
					<li><a class="li1" href="jsp/portalJsp/userLogin.jsp">登录</a>
					</li>
					<li><a class="li1" href="jsp/portalJsp/register.jsp">注册</a>
					</li>
				</c:if>
				<c:if test="${users.role==1 }">
					<li><span>欢迎,</span> <a class="li1" href="javascript:;">${users.username }</a></li>
					<li><a class="li1" href="users/exit">退出</a></li>
				</c:if>
				<li class="li">|</li>
				<li><a href="javascript:;">华为官网</a></li>
				<li class="li">|</li>
				<li><a href="cart/cartList">购物车</a></li>
				<li class="li">|</li>
				<li><a href="javascript:;">华为官网</a></li>
			</ul>
		</div>
	</div>
	<div class="header_seek">
		<div class="logo float_left">
			<a href="javascript:;"><img src="img/portalImg/button/logo.png" />
			</a>
		</div>
		<div class="seek float_left">
			<div class="seek_box">
				<form action="product/likeName">
					<input class="seek_text float_left" type="text" name="likeName" value="${likeName }"
						placeholder="请输入商品关键字" />
					<button class="seek_submit float_right" type="submit"></button>
				</form>
			</div>
		</div>
		<div class="shopping_cart float_right">
			<div class="shoppingcart float_left">
				<ul>
					<li class="li1">
						<div class="li1_a">
							<a class="float_left" href="javascript:;">我的商城</a> <i class="i"></i>
						</div>
						<div class="shopping_box">
							<c:if test="${users.role==1 }">
							<div class="shopping_box_1">
								<span style="margin-left: -20px;">你好，&nbsp;</span> <a
									href="jsp/portalJsp/userLogin.jsp">${users.username }</a> <span>|</span> <a
									href="users/exit">退出</a>
							</div>
							</c:if>
							<c:if test="${users ==null }">
							<div class="shopping_box_1">
								<span style="margin-left: -20px;">你好，请&nbsp;</span> <a
									href="jsp/portalJsp/userLogin.jsp">登录</a> <span>|</span> <a
									href="jsp/portalJsp/register.jsp">注册</a>
							</div>
							</c:if>
							<ul>
								<li><a href="cart/cartList">我的订单</a> <span>|</span> <a
									href="javascript:;">待支付</a></li>
								<li><a href="javascript:;">待评论</a> <span>|</span> <a
									href="javascript:;">优惠券</a></li>
								<li><a href="javascript:;">站内信</a> <span>|</span> <a
									href="javascript:;"></a></li>
							</ul>
						</div></li>
					<li class="li">|</li>
					<li class="li2">
						<div class="li2_div1">
							<a class="float_left" href="cart/cartList">我的购物车</a>
							<i class="i"></i>
						</div>
						<div class="li2_div2 clear_both">
							<input id="cart" value="${cart }"/>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="nva">
		<div class="nva_left float_left" >
			<span>全部商品</span> <i class="i"></i>
			<div class="nva_box">
				<ul class="nva_box_ul">
					<%--  一级菜单<c:forEach items="${categoryList}"></c:forEach> --%>
					<c:forEach items="${categoryList }" var="y">
					<li class="li1" value="${y.id }">
						<div class="nva_box_a">
							<a class="a" href="${y.parentUrl }">${y.name }</a>
						</div> <%-- 
								<div class="nva_box_b">
									<a class="a1" href="javascript:;">荣耀</a>
									<a class="a2" href="javascript:;">HUAWEI P系列</a>
								</div>
								 <%--  二级菜单 --%>
						<div class="nva_box_c1" style="top:-59px">
							<ul class="nva_box_c1_ul">
							<%-- 
								<li><a href="javascript:;">荣耀</a></li>
								<li><a href="javascript:;">HUAWEI P系列</a></li>
								<li><a href="javascript:;">畅玩</a></li>
								<li><a href="javascript:;">HUAWEI Mate系列</a></li>
								<li><a href="javascript:;">HUAWEI nova系列</a></li>
								--%>
							</ul>
						</div>
					</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="nva_right float_left">
			<ul>
				<li><a href="users/index">首页</a></li>
				<li><a href="product/categoryFiltrate?hotProduct=15">畅销</a></li>
				<li><a href="product/categoryFiltrate?dateDay=-20">新品</a></li>
				<li><a href="product/categoryFiltrate?phone=10010">手机</a></li>
				<li><a href="product/categoryFiltrate?computer=10011">电脑</a></li>
				<li><a href="product/categoryFiltrate?clothing=10012">服饰</a></li>
			</ul>
		</div>
	</div>
	<!--商品详情-->
		<div class="title">
			<span>首页</span>
			<i class="i"></i>
			<span>${product.subtitle }</span>
		</div>

		<div class="mian">
			<div class="main_left float_left">
				<div class="box">
					<div class="left-pro">
						<div class="t2">
							<a href="img/portalImg/index_main/${product.mainImage }" id="zoom1" class="MagicZoom MagicThumb">
								<img src="img/portalImg/index_main/${product.mainImage }" id="main_img" class="main_img" style="width:400px; height:400px;" />
							</a>
						</div>
						<div class="t1 clear_both">
							<div class="go_box">
								<img src="img/portalImg/images/goright.png" style="width:12px;height: 12px;margin-top: 38px;" id="gotop" />
							</div>
							<div id="showArea" class="float_left">
								<c:forEach items="${productImg }" var="p">
								<a href="img/portalImg/images/${p.maxImg }" rel="zoom1" rev="img/portalImg/images/${p.maxImg }">
									<img src="img/portalImg/images/${p.minImg }" />
								</a>
								</c:forEach>
							</div>
							<div class="go_box">
								<img src="img/portalImg/images/goleft.png"  style="width:12px;height: 12px;margin-top: 39px;margin-left: -10px;" id="gobottom" />
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="mian_right float_right">
				<div class="mian_right_top">
					<div class="mian_right_top_box">
						<h2>${product.subtitle }</h2>
						<span>${product.name }</span>
					</div>
				</div>
				<div class="mian_right_mian">
					<ul>
						<li>
							<span>价&nbsp;&nbsp;格&nbsp;&nbsp;为：</span><span class="jiage">￥${product.price }</span><br />
						</li>
						<li>
							<span>商品积分：</span><span>${product.productIntegral }</span>
						</li>
						<li>
							<span>商品评分：</span>
							<span>共&nbsp;2650&nbsp;条评论</span>
						</li>
						<li>
							<span>运&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;费：</span>
							<span style="color:red;">满&nbsp;99&nbsp;免运费</span>
						</li>
						<li>
							<span>浏览次数：</span>
							<span>${product.viewCount }</span>
						</li>
						<li>
							<span>销&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;量：</span>
							<span>${product.salesVolume }</span>
						</li>
					</ul>
				</div>
				<div class="mian_right_bot">
					<form action="cart/addCart">
						<ul>
							<li>
								<span class="float_left">选择颜色：</span>
								<div class="sku_box">
									<a href="javascript:;">樱语粉</a>
								</div>
							</li>
							<li>
								<span class="float_left">商品重量：</span>
								<div class="sku_box">
									<a href="javascript:;">${product.weight }</a>
								</div>
							</li>
							<li>
								<c:if test="${product.categoryId ==10010 }">
									<span class="float_left">选择容量：</span>
								</c:if>
								<c:if test="${product.categoryId ==10011 }">
									<span class="float_left">选择容量：</span>
								</c:if>
								<c:if test="${product.categoryId ==10012}">
									<span class="float_left">选择尺码：</span>
								</c:if>
								<c:if test="${product.categoryId ==10013}">
									<span class="float_left">选择口味：</span>
								</c:if>
								<div class="sku_box">
									<a href="javascript:;">${product.flavor }</a>
								</div>
							</li>
							<li>
								<span class="float_left">商品场地：</span>
								<div class="sku_box">
									<a href="javascript:;">${product.site }</a>
								</div>
							</li>
							<li>
								<span id="jian" class="span_box">-</span>
								<input type="text" name="quantity" value="1" id="num" />
								<input type="text" name="productId" value="${product.id}" style="display: none;" id="productId"/>
								<span id="addnum" class="span_box">+</span>
							</li>
						</ul>
						<div class="but_box clear_both">
							<a href="javascript:;" id="addCart">
								<span class="clear_both"><i></i>加入购物车</span>
							</a>
							<input type="submit" value="立即下单" />
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="bottom">
			<h1>商品详情</h1>
			<div class="bottom_box">
				<img src="img/portalImg/xiangqing/201703170925378733278.jpg"></img>
				<img src="img/portalImg/xiangqing/201702220950493791839.jpg" />
				<img src="img/portalImg/xiangqing/201703281521449712215.jpg" />
				<img src="img/portalImg/xiangqing/201703281521448981426.jpg" />
				<img src="img/portalImg/xiangqing/201703281521449165369.jpg" />
				<img src="img/portalImg/xiangqing/201703281521462153325.jpg" />
				<img src="img/portalImg/xiangqing/20170328152146785539.jpg" />
				<img src="img/portalImg/xiangqing/201703281521463819127.jpg" />
				<img src="img/portalImg/xiangqing/201703281521471003820.jpg" />
				<img src="img/portalImg/xiangqing/20170328152147671240.jpg" />
				<img src="img/portalImg/xiangqing/201703281521469398380.jpg" />
				<img src="img/portalImg/xiangqing/201703281521476634634.jpg" />
				<img src="img/portalImg/xiangqing/201703281521478168681.jpg" />
				<img src="img/portalImg/xiangqing/201704011714342457172.png" />
				<img src="img/portalImg/xiangqing/201706200933514510767.jpg" />
			</div>
		</div>
	<script type="text/javascript" src="js/portalJs/jquery-2.0.3.min.js"></script>
	<script type="text/javascript" src="js/portalJs/mzp-packed.js"></script>
	<script type="text/javascript" src="js/portalJs/zzsc.js"></script>
	<script type="text/javascript">
		//异步 ： 加入购物车
		$(function(){
			$("#addCart").on("click",function(){
				var productId = $("#productId").val();
				var quantity = $("#num").val();
				//var cart = $("#cart").val();
				//$("#cart").attr("value", cart+1);
				$.ajax({
					url:"cart/addCart?productId="+productId,
					success:function(data){
						$("#cart").attr("value", data);
						alert("添加商品成功！");
					}
				});
			});
		});
		//导航 
		$(function(){
		$(".nva_box .li1").hover(function(){
			var index = $(".nva_box .li1").index($(this));
			$(this).find(".nva_box_c1").css("display", "block");
			$(this).find(".nva_box_c1").css("margin-top",-70 * index + "px");
			var categoryId = $(this).val();
			$.ajax({
				url:"users/product?categoryId=" + categoryId,
				success:function(data){
					$(".nva_box_c1_ul").empty();
					var obj = JSON.parse(data);
					for ( var i = 0; i < obj.length; i++) {
						$(".nva_box_c1_ul").append("<li><a href='"+ obj[i]['parentUrl']+"'>"
							+ obj[i]['name']+ "</a></li>");
					}
				}
			});
			
		},function(){
			$(this).find(".nva_box_c1").css("display", "none");
		});
		});
		//加减商品
		$(function() {
				$("#jian").on("click", function() {
					var num = $("#num").val();
					var inp = $("#num");
					if(num > 1) {
						num = num - 1;
						inp.attr("value", num);
					}
				});
				$("#addnum").on("click", function() {
					var num = $("#num").val();
					var inp = $("#num");
					if(num < 100) {
						num = Number(num);
						num = num + 1;
						inp.attr("value", num);
					}
				});

			});			
	</script>
</body>

</html>
