<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<base href="${base}/" />
<title>会员登录</title>
<link href="<c:url value='/css/member.css'/>" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<c:url value='/js/jquery-1.9.0.js'/>"></script>
</head>
<script type="text/javascript">
	/* function check_frme(){
		var form=document.getElementById("vdimgck")
		from.src="<c:url value='/verificationCode/"+new Date().getTime()+"'/>";
	} */
	
	function change(){
		$("#vdimgck").attr("src","<c:url value='/verificationCode/"+new Date().getTime()+"'/>");
	}
</script>
<body>
	<div class="top">
		<div class="topz">
			<div class="logo">
			 <img src="<c:url value='/images/member/logo.gif'/>" width="357" height="97" />
			</div>
			<div class="userinfo">
				您好！您现在是<span>游客</span>身份，尚不能订购！欢迎您 <a href="<c:url value='/register.action'/>">注册</a>或<a href="">登陆</a>本站。
			</div>
		</div>
	</div>
	<div class="login">
		<div class="login-left">
		<span style="color: red;font-size:5px">${massge }</span>	
		<span style="color: red">${maeeges }</span>
			<form name='loginByUser' method="post" action="<c:url value='/loginByUser'/>"> 
				<ul>
					<li>
							<span>用户名：</span>
							<input name="uname" type="text" class="text" id="txtUsername" size="30" value="${uname }"/>
							
					</li>
					<li>
							<span>密&nbsp;&nbsp;&nbsp;码：</span>
							<input name="password" type="password" class="text" id="txtPassword" size="30" value="${password }" /></li>
					<li>	<span>验证码：</span>
							<input name="verifycode" type="text" id="vdcode" style='width:70px;' class="text" />
							<img src="<c:url value='/verificationCode/1'/>" border="0" alt="验证码,看不清楚?请点击刷新验证码" 
							onClick="check_frme();" class="codeimage" 
						id="vdimgck" align="absmiddle" style="cursor:pointer" />
						<a href="javascript:change();">看不清，换一张</a>
					</li>
					<button class="button2" id="btnSignCheck" type="submit"></button>
				</ul>
			</form>
		</div>
		<div class="lonin-r">
			<a href="register.jsp" class="login-zc"></a>
			<div class="login-fh">
				<a href="">糗~走错了！我要返回首页</a>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>