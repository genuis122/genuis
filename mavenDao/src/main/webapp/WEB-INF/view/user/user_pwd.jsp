<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<base href="${base}/" />
<title>会员中心</title>
<link href="css/center.css" rel="stylesheet" type="text/css" />
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
					<jsp:include page="nav.jsp"></jsp:include>
					<form class="mTB10 mL10 mR10" name="form2" action="" method="post">
						<div class="titleBar bgGrass lineB">
							<div class="fLeftNoForm">
								<strong>修改密码</strong>
							</div>
							<div class="fRight titSecondary white" style="margin-top:5px;"></div>
						</div>
						<table cellspacing="1" class="submit">
							<tbody>
								<tr>
									<td width="15%" align="right" valign="top">用户名：</td>
									<td>tanlan</td>
								</tr>
								<tr>
									<td align="right" valign="top"><span class="tdl">原登录密码：</span></td>
									<td><input name="oldpassword" type="password"
										id="oldpassword" size="20" class="text" /> <span
										style="color:red;">*</span></td>
								</tr>
								<tr>
									<td align="right" valign="top"><span class="tdl">新密码：</span></td>
									<td><input name="password" type="password" id="password"
										size="20" class="text" /> <span style="color:red;">*</span></td>
								</tr>
								<tr>
									<td align="right" valign="top"><span class="tdl">确认新密码：</span></td>
									<td><input name="password2" type="password" id="password2"
										size="20" class="text" /> <span style="color:red;">*</span></td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td height="45">&nbsp;</td>
									<td height="45">&nbsp;
										<button class="button2" type="submit">更新</button>
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