<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div id="top">
	<div class="main">
	<c:choose>
		<c:when test="${sessionScope.user eq null }">
					您好，欢迎来订餐 <a href="login">[请登录]</a> <a href="register">[免费注册]</a>
		</c:when>
		<c:otherwise>
			亲爱的：${user.uname }用户，欢迎你来到XDcms平台订餐
			<span style="margin-left: 500px"><a href="userIndex">个人中心</a></span>
			<span style="margin-left: 10px"><a href="order_list">我的订单</a></span>
			<c:if test="${user.rols eq 1 }">
				<span style="margin-left: 10px"><a href="store">后台管理</a></span>
			</c:if>
			<span style="margin-left: 10px"><a href="exit">退出登录</a></span>
		</c:otherwise>
	</c:choose>
	</div>
</div>
<div id="logo" class="main">
	<a href=""><img src="<c:url value='/images/logo.jpg'/> " /></a>
</div>