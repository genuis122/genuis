<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>会员注册</title>
<link href="css/member.css" rel="stylesheet" type="text/css" />
</head>
	<script type="text/javascript" src="js/jquery-1.9.0.js"></script>
<script type="text/javascript">
/* 	function chink(){
	$("#vdimgck").attr("src","<c:url value='/verificationCode/"+new Date().getTime()+"'/>");
	} */
	function chink(){
		var img = document.getElementById("vdimgck");
		img.src = "<c:url value='/verificationCode/" + (new Date()).getTime()+"'/>";
	}
	
	function chick_uname(){
		var uname=$("#uname").val();
		if(uname==null||uname==""){
			$("#_userid").html("请输入正确格式的用户名");
			return false;
		}else if(uname.length<5){
			$("#_userid").html("请输入正确格式的用户名");
			return false;
		}else{
			$.ajax({
				type:"GET",
				url:"findByName",
				data:"uname="+uname,
				success:function(tt){
				if(tt=="1"){
					$("#_userid").html("用户名已存在，请重新输入");
					return false;
					}else if(tt!="1"){
				$("#_userid").html("");
				return true;
				}}});
				$("#_userid").html("");
				return true;
				}
				}
	function chick_password(){
		var password=$("#password").val();
		if(password.length<6||password.lenth>24){
			$("#_userpasswoed").html("请输入6~24位的字符");
			return false;
		}else{
			$("#_userpasswoed").html("");
			return true;
		}
	}
	function chinck_password2(){
		var password=$("#password").val();
		var password2=$("#password2").val();
		if(password!=password2){
			$("#_userpwdok").html("两次密码不一致，请重新输入");
			return false;
		}else{
			$("#_userpwdok").html("");
			return true;
		}
	}
	function chinck_card(){
		var card=$("#card").val();
		if(card.length!=18){
			$("#_usercard").html("请输入18八位的身份证号码");
			return false;
		}else{
		$.ajax({
		type:"GET",
		url:"findByCard",
		data:"card="+card,
		success:function(tt){
		if(tt=="1"){
			$("#_usercard").html("亲爱的用户，你的身份证已被注册，请去前去登录");
			return false;
			
		}else if(tt!="1"){
			$("#_usercard").html("");
			return true;
		}
		}
		});
		$("#_usercard").html("");
			return true;
		}
	}
	function check_phone(){
		var phone =$("#phone").val();
		if(phone.length!=11){
			$("#_userphone").html("手机格式不对，请重新输入")
			return false;
		}else if(phone.length==11){
			$("#_userphone").html("")
			return true;
		}
	}
	function check_email() {
		var email = $("#email").val();
		var reg = new RegExp("\^[A-Za-z0-9]+\@[A-Za-z0-9]+\.[A-Za-z]{2,4}");
		if (reg.test(email)) {
				$("#_emailid").html("");
			return true;
		} else {
			$("#_emailid").html("邮箱格式不对");
			return false;
		}
	}
	function check_form(){
		var form = $("#regUser");
		if(chick_uname()&&chick_password()&&chinck_password2()
		&&chinck_card()&&check_phone()&&check_email()
		&&document.getElementById("agree").checked){
			form.submit();
		}
		}
</script>
<body>
	<div class="topz">
		<div class="logo">
			<img src="images/member/logo.gif" width="357" height="97" />
		</div>
		<div class="userinfo">
			您好！您现在是<span>游客</span>身份，尚不能订购！欢迎您<a href="register.jsp">注册</a>或<a
				href="login.jsp">登录</a>本站。
		</div>
	</div>

	<div class="m-zc">
		<div class="m-zct">
			<span><a href="login.jsp">已有帐号，我要登录！</a></span> (带 *
			号的表示为必填项目，用户名必须大于5位小于20位，密码必须大于5位)
		</div>
		<p>${message }</p>
		<form name="form2" id="regUser" action="addUser" method="POST">
			<ul class="registerform">
				<li>
					<div>用 户 名：</div>
					<input name="uname" type="text" id="uname" class="text" onblur="chick_uname();" value="${user.uname }"/>
					<i class="red">*</i>
					<em id="_userid">(必须大于5位，但禁止除[@][.]以外的特殊符号)</em>
				</li>
				<li>
					<div>登陆密码：</div>
					<input name="password" type="password" id="password" class="text" onblur="chick_password();"/>
					<i class="red">*</i>
					<em id="_userpasswoed">(请输入6~24位的字符串)</em>
				</li>
				<li>
					<div>确认密码：</div>
					<input name="password2" type="password" id="password2" value="" size="20" class="text" onblur="chinck_password2();" />
					<i class="red">*</i>
					<em id="_userpwdok"></em>
				</li>
				<li>
					<div>姓名：</div>
					<input name="name" id="truename" size="40" value="${user.name }" />
				</li>
				<li>
					<div>身份号码：</div>
					<input name="card" id="card" class="text" value="${user.card }" onblur="chinck_card();" />
					<i class="red">*</i>
					<em id="_usercard"></em>
				</li>
				<li>
					<div>联系地址：</div>
					<input name="address" id="address" size="40" value="${user.address }" />
				</li>
				<li>
					<div>手机号码：</div>
					<input name="phone" type="text" id="phone" class="text" onblur="check_phone();" value="${user.phone }"/>
					<i class="red">*</i>
					<em id="_userphone">(请输入11位手机号码)</em>
					
				</li>
				<li>
					<div>邮箱：</div>
					<input name="email" type="text" id="email" class="text" onblur="check_email();" value="${user.email }"/>
					<i class="red">*</i>
					<em id="_emailid">(请输入正确的邮箱)</em>
				</li>
				<li>
					<div>验 证 码：</div>
					<input name="verifycode" type="text" id="verifycode" style='width:50px;' class="text" />
					<img src="verificationCode/1" border="0" alt="验证码,看不清楚?请点击刷新验证码" onClick="chink();" class="codeimage" id="vdimgck" align="absmiddle" style="cursor:pointer" />
					<a href="javascript:chink();">看不清楚?请点击刷新验证码</a>
					<span style="color: red;">${text1 }</span>
				</li>
			</ul>
			<div class="xy">
				<span>注册协议：</span>
				<div class="xyrr">
					1、在本站注册的会员，必须遵守《互联网电子公告服务管理规定》，不得在本站发表诽谤他人，侵犯他人隐私，侵犯他人知识产权，传播病毒，政治言论，商业讯息等信息。
					<br />
					2、在所有在本站发表的文章，本站都具有最终编辑权，并且保留用于印刷或向第三方发表的权利，如果你的资料不齐全，我们将有权不作任何通知使用你在本站发布的作品。
					<br />
					3、在登记过程中，您将选择注册名和密码。注册名的选择应遵守法律法规及社会公德。您必须对您的密码保密，您将对您注册名和密码下发生的所有活动承担责任。
				</div>
			</div>
			<ul>
				<li class="zcyxx">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
					name="agree" id='agree' type="checkbox" value="1" checked />同意协议
				</li>
				<li><button class="buttonGreen142" id="btnSignCheck"
						type="button" onclick="check_form();"></button></li>
			</ul>
		</form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>