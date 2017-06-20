<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="nav">
	<ul class="main">
		<li class="home"><a href="">首页</a></li>
		<li class="no"><a href="<c:url value='order_list?uid=${sessionScope.user.id }'/>">我的订单</a></li>
	</ul>
</div>