<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html >
<html>
<head>
<base href="${base}/" />
<title>会员中心</title>
<link href="<c:url value='/css/center.css'/>" rel="stylesheet" type="text/css" />
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
				<div class="c-r">
					<div class="c-rt">
						<img src="<c:url value='/images/member/r-t.gif'/> ">
					</div>
					<div class="c-cen">
						<div class="c-info">
							<a href="#" class="tx"><img src="<c:url value='/images/member/nopic.gif'/>"
								width="100" height="100" alt="您的形象" border="0" /></a>
							<div class="c-userinfo">
								<div class="c-yhm">
									<strong>tanlan</strong>欢迎来到xdcms
								</div>
								<div class="c-kjinfo">
									<span>积分：100</span><span>您已经是第4次登录我们网站了</span><span>您的注册时间：2017-02-21</span>
								</div>
							</div>
						</div>
						<div class="c-t">最新订单</div>
						<div class="c-news">
							<ul>

							</ul>
						</div>
					</div>
					<div class="c-rd">
						<img src="<c:url value='/images/member/c-d.gif'/>">
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>