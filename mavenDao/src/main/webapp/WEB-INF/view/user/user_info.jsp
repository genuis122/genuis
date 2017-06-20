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
								<strong>基本资料</strong>
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
									<td width="15%" align="right" valign="top">手机号码：</td>
									<td>15912345678</td>
								</tr>
								<tr>
									<td align="right" valign="top"><span class="tdl">姓名：</span></td>
									<td><input name="truename" id="truename" size="12"
										value="" /></td>
								</tr>
								<tr>
									<td align="right" valign="top"><span class="tdl">性别：</span></td>
									<td><input type="radio" value="男" name="sex"
										checked="checked" /> 男 <input type="radio" value="女"
										name="sex" /> 女 <input type="radio" value="保密" name="sex" />
										保密</td>
								</tr>
								<tr>
									<td align="right" valign="top"><span class="tdl">安全邮箱：</span></td>
									<td><input name="email" id="email" size="30" value="" /></td>
								</tr>
								<tr>
									<td align="right" valign="top"><span class="tdl">联系地址：</span></td>
									<td><input name="address" id="address" size="40"
										value="少城大厦" /></td>
								</tr>

							</tbody>
							<tfoot>
								<tr>
									<td height="45">&nbsp;</td>
									<td height="45">&nbsp;<input name="gourl" type="hidden"
										value="" />
										<button class="button2" type="submit">更新</button></td>
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