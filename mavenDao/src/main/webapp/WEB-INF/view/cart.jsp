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
					<a href="">&nbsp;&nbsp;&nbsp;</a>
				</div>
				<div class="ge">></div>
				<div>天天快餐</div>
			</div>
			<div class="left">
				<div class="company_title">
					<h3>天天快餐</h3>
					<div class="company_title_r"></div>
				</div>
				<div class="company_about">
					<div class="company_logo">
						<img src="<c:url value='/images/nopic.gif'/>" />
					</div>
					<div class="company_about_c">
						<table width="380" border="0" cellpadding="1" cellspacing="1"
							bgcolor="#E1E1E1">
							<tr>
								<td bgcolor="#F9F9F9">外送费</td>
								<td bgcolor="#F9F9F9">起送价格</td>
								<td bgcolor="#F9F9F9">送餐时间</td>
							</tr>
							<tr>
								<td bgcolor="#FFFFFF">0元</td>
								<td bgcolor="#FFFFFF">￥20</td>
								<td bgcolor="#FFFFFF">0.5小时左右</td>
							</tr>
						</table>
						<div class="hours">
							<b>营业时间</b>
							<p>上午:1:00-12:00</p>
							<p>下午:12:00-24:00</p>
						</div>
						<h4>
							<a href="menu_search.jsp">返回重新搜索看看其它店铺>></a>
						</h4>
					</div>
				</div>

				<div class="clear"></div>
				<div class="products">
					<div class="products_t">
						<b>套餐</b>
					</div>
					<ul id="imgmove">

						<li><input type="image" src="<c:url value='/images/order.jpg' />" name='btnBuy'
							value="6" /><span>￥13</span>
							<div>
								<img src="<c:url value='/images/nopic.gif' />" />
							</div>经典烧鸭饭</li>

						<li><input type="image" src="<c:url value='/images/order.jpg' />" name='btnBuy'
							value="5" /><span>￥15</span>
							<div>
								<img src="<c:url value='/images/nopic.gif'/>" />
							</div>麻辣牛肉饭</li>

						<li><input type="image" src="<c:url value='/images/order.jpg' />" name='btnBuy'
							value="4" /><span>￥8</span>
							<div>
								<img src="<c:url value='/images/nopic.gif'/> " />
							</div>红烧茄子饭</li>

					</ul>
				</div>

			</div>
			<div class="right">
				<div class="cart" id="cart">
					<div class="cart_t"></div>
					<ul>
						<li id="6"><div>
								<span><a href="javascript:void(0);" title="减一"
									style="margin-right:2px;"><img src="<c:url value='/images/bag_close.gif' />"
										name="minus"></a><input type="text" name="quantity"
									maxlength="4" value="1"><a href="javascript:void(0);"
									title="加一" style="margin-left:2px;"><img
										src="<c:url value='/images/bag_open.gif'/>" name="add"></a></span>
							</div>
							<div>￥15.00</div> <input name="delete" type="checkbox"
							id="checkbox" checked="checked">麻辣牛肉饭</li>
						<li id="7"><div>
								<span><a href="javascript:void(0);" title="减一"
									style="margin-right:2px;"><img src="<c:url value='/images/bag_close.gif' /> "
										name="minus"></a><input type="text" name="quantity"
									maxlength="4" value="2"><a href="javascript:void(0);"
									title="加一" style="margin-left:2px;"><img
										src="<c:url value='/images/bag_open.gif' />" name="add"></a></span>
							</div>
							<div>￥13.00</div> <input name="delete" type="checkbox"
							id="checkbox" checked="checked">经典烧鸭饭</li>
					</ul>
					<div class="cart_b"></div>
					<div class="cart_submit">
						<div>
							总价<span>￥41</span>
						</div>
						<div>
							<a href="order_add.jsp"><button type="button"
									class="cart_button"></button></a>
						</div>
					</div>
					<div class="cart_footer"></div>
				</div>
			</div>
		</div>
	</div>
	<div id="company_list_b" class="main"></div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>