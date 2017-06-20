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
					<form class="mTB10 mL10 mR10" name="form2" action="" method="post">
						<div class="titleBar bgGrass lineB">
							<div class="fLeftNoForm">
								<strong>添加菜单</strong>
							</div>
							<div class="fRight titSecondary white" style="margin-top:5px;"></div>
						</div>
						<table cellspacing="1" class="submit">
							<tbody>
								<tr>
									<td align="right" valign="top"><span class="tdl">菜单名称：</span></td>
									<td><input name="title" type="text" id="title" size="20"
										class="text" /> <span style="color:red;">*</span></td>
								</tr>
								<tr>
									<td align="right" valign="top"><span class="tdl">分类：</span></td>
									<td><select name="catid" id="select">

											<option value="5">快餐</option>

									</select></td>
								</tr>
								<tr>
									<td align="right" valign="top"><span class="tdl">缩略图：</span></td>
									<td><input name="thumb" type="text" id="thumb" size="20" />
										<a href="#"
										onclick="javascript:ShowIframe('上传缩略图','system/modules/company/upload.php?filename=thumb','340','80')">上
											传</a></td>
								</tr>
								<tr>
									<td align="right" valign="top"><span class="tdl">价格：</span></td>
									<td><input name="prices" type="text" class="w80"
										id="prices" size="20" />元</td>
								</tr>
								<tr>
									<td align="right" valign="top"><span class="tdl">详细介绍：</span></td>
									<td><textarea name="content" id="content" cols="45"
											rows="5"></textarea></td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td height="45">&nbsp;</td>
									<td height="45">&nbsp;
										<button class="button2" type="submit">确认</button>
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