<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="c-left">
	<div class="c-leftt"></div>
	<div class="c-leftmu">
		<a href="user/order_list.jsp" class="fabu">我的订单</a>
	</div>
	<div class="mu2">
		<ul>
			<li><a href="user/user_info.jsp">资料管理</a></li>
			<li><a href="user/deliver_area.jsp">配送范围</a></li>
			<li><a href="user/menu_list.jsp">菜单管理</a></li>
			<li><a href="user/category_list.jsp">菜单分类</a></li>
		</ul>
	</div>
	<div class="left-d">
		<img src="<c:url value='/images/member/c-leftd.gif'/>" width="159" height="14" />
	</div>
</div>