<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<base href="${base}/" />
<title>商家列表</title>
<link href="<c:url value='/css/main.css'/>" rel="stylesheet" type="text/css" />
</head>
<body>
	<jsp:include page="top.jsp"></jsp:include>
	<jsp:include page="nav.jsp"></jsp:include>
	<div id="company_list_t" class="main"></div>
	<div id="company_list_bg" class="main">
		<div class="company_list">
			<div class="company_list_add">
				<div class="home">
					<a href="/">&nbsp;&nbsp;&nbsp;</a>
				</div>
				<div class="ge">></div>
				<div>
					可送至<b>地王大厦</b>的店铺
				</div>
			</div>
			<div class="company_list_class">
				<ul>
					<li><b>起送价格</b> <a href="" class="on">全部</a> <a href="">10元及以下</a>
						<a href="">20元及以下</a> <a href="">30元及以下</a> <a href="">50元及以下</a>
						<a href="">80元及以下</a></li>
					<li><b>外卖类型</b> <a href="" class="on">全部</a> <a href="">快餐</a>
						<a href="">小炒</a> <a href="">西餐</a> <a href="">套餐</a></li>
				</ul>
			</div>
			<div class="company_list_class_bottom">
				<b>排序</b><a href=""><img src="<c:url value='/images/sort_0.jpg'/>" /></a><a href=""><img
					src="<c:url value='/images/sort_1.jpg'/>" /></a></a>
			</div>

			<dl>
				<dt class="company_logo">
					<img src="<c:url value='/images/nopic.gif'/>" />
				</dt>
				<dt class="company">
					<h3>天天快餐</h3>
					<ul>
						<li><div class="price">20元起送</div>
							<div class="values">外送费0元</div>
							<div class="times">0.5小时左右到达</div></li>
						<li><div class="pay">餐到付款</div>
							<div class="tel">电话：0771-2626231</div></li>
						<li><div class="weight">
								加盟<b>175</b>天&nbsp;&nbsp;&nbsp;&nbsp;地址：成都市
							</div></li>
					</ul>
				</dt>
				<dt class="order">
					<a href="<c:url value='/cart'/>" target="_blank"><img src="<c:url value='/images/order_big.jpg'/>" /></a>
				</dt>
			</dl>

			<dl>
				<dt class="company_logo">
					<img src="<c:url value='/images/nopic.gif'/> " />
				</dt>
				<dt class="company">
					<h3>旭东快餐店</h3>
					<ul>
						<li><div class="price">40元起送</div>
							<div class="values">外送费0.5元</div>
							<div class="times">1小时左右到达</div></li>
						<li><div class="pay">餐到付款</div>
							<div class="tel">电话：0823-323437</div></li>
						<li><div class="weight">
								加盟<b>1731</b>天&nbsp;&nbsp;&nbsp;&nbsp;地址：少城大厦
							</div></li>
					</ul>
				</dt>
				<dt class="order">
					<a href="<c:url value='/cart' />" target="_blank"><img src="<c:url value='/images/order_big.jpg'/> " /></a>
				</dt>
			</dl>

			<div id="pages">
				<div class="pages">
					<a>总计:2条 每页20条 当前第:1页</a> <a>首页</a> <a>上一页</a> <a>下一页</a> <a>尾页</a>
				</div>
			</div>
		</div>
	</div>
	<div id="company_list_b" class="main"></div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>