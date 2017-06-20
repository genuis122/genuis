<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<base href="${base}/" />
<title>商家列表</title>
<link href="css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<jsp:include page="top.jsp"></jsp:include>
	<jsp:include page="nav.jsp"></jsp:include>
	<div id="company_list_t" class="main"></div>
	<div id="company_list_bg" class="main">
		<div class="company_list">
			<div class="company_list_add">
				<div class="home"></div>
				<div class="ge"></div>
				<div></div>
				<div class="ge"></div>
				<div>订单信息</div>
			</div>
			<table width="90%" border="0" align="center" cellpadding="1"
				cellspacing="1" class="cart_list t20">
				<tr>
					<th colspan="2">送餐地址</th>
				</tr>
				<tr>
					<td width="18%">姓名：</td>
					<td width="82%">谭岚</td>
				</tr>
				<tr>
					<td>手机号码：</td>
					<td>15912345678</td>
				</tr>
				<tr>
					<td>送餐地址：</td>
					<td>少城大厦</td>
				</tr>
			</table>
			<div class="cart_list_title">
				<a href="###" onclick="history.go(-1)">返回购物车修改</a>订餐清单
			</div>
			<form name="form1" action="user/order_list.jsp" method='post'>
				<table width="90%" border="0" align="center" cellpadding="1"
					cellspacing="1" class="cart_list">
					<tr>
						<th width="66%">菜单名称</th>
						<th width="17%">单价</th>
						<th width="17%">菜单数量</th>
					</tr>

					<tr>
						<td>麻辣牛肉饭<input name="cartid" type="hidden" value="6" /></td>
						<td class="red">￥15.00</td>
						<td>1</td>
					</tr>

					<tr>
						<td>经典烧鸭饭<input name="cartid" type="hidden" value="7" /></td>
						<td class="red">￥13.00</td>
						<td>2</td>
					</tr>

					<tr>
						<td colspan="3">订单备注：<input name="note" type="text" size="30" /></td>
					</tr>
					<tr>
						<td colspan="3">点餐总价格：￥41</td>
					</tr>
					<tr>
						<td colspan="3" class="cart_sumbit"><input type="image"
							src="images/cart_sumbit.gif" /></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<div id="company_list_b" class="main"></div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>