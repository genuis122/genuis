<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html >
<html>
<head>
<base href="${base}/" />
<title>会员中心</title>
<link href="<c:url value='/css/center.css' />" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="header mB10">
		<div class="wrapper">
			<jsp:include page="header.jsp"></jsp:include>
		</div>
	</div>
	<div class="wrapper lineT">
		<div class="mainBox">
			<div class="main">
				<jsp:include page="left.jsp"></jsp:include>
				<div class="cmsMain">
					<div class="location">
						<span class="fLeft">我的订单 <b>[注：下单5分钟内您可取消订单]</b></span>
					</div>
					<form name="form2" class="mL10 mR10 mTB10">
					<input type="hidden" name="uid" value="${sessionScope.user.id }">
						<table cellspacing="1" class="list">
							<thead>
								<tr>德尔格
									<th>订单编号</th>
									<th width="15%">价格(元)</th>
									<th width="20%">下单时间</th>
									<th width="20%">操作</th>
								</tr>
							</thead>
							<tbody>

								<tr>
									<td><span class="titDot icon16 fLeft"></span>XD412017221113939</td>
									<td align="center">100.00</td>
									<td align="center">2017-02-21 11:39:39</td>
									<td align="center"><font color="#ff0000">送餐中</font> | <a
										href="user/order_view.jsp">查看</a> | 取消</td>
								</tr>
							</tbody>
							<c:forEach items="${pageBean.orderList }" var="orders">
								<tbody>
									<tr>
										<td><span class="titDot icon16 fLeft"></span>${orders.orderID }</td>
										<td align="center">${orders.orderdetail.price }</td>
										<td align="center">${orders.orderTime }</td>
										<td align="center"><font color="#ff0000">${orders.state }</font> | <a
											href="user/order_view.jsp">查看</a> | 取消</td>
									</tr>
								</tbody>
							</c:forEach>
							<tfoot>
								<tr>
									<td colspan="4" align="center">
										<div class="pages">
												<a>总计:${pageTotal }条 每页20条 当前第:${pageCode }页</a>
												<a href="<c:url value='order_list?pageCode=${0 }'/>">首页</a>
												<a href="<c:url value='order_list?pageCode=${pageCode-1 }'/>">上一页</a>
												<c:forEach begin="1" end="${pageNumber }" var="i">
													<a href="<c:url value='order_list?pageCode=${i }'/>">【i】</a>
												</c:forEach>
												<a href="<c:url value='order_list?pageCode=${pageCode+1 }'/>">下一页</a>
												<a href="<c:url value='order_list?pageCode=${pageNumber }'/>">尾页</a>
										</div>
									</td>
								</tr>
							</tfoot>
						</table>

					</form>
				</div>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>