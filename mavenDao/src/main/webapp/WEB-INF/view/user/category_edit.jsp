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
					<form class="mTB10 mL10 mR10" name="form2"
						action="index.php?m=company&c=product&f=category_edit_save"
						method="post">
						<div class="titleBar bgGrass lineB">
							<div class="fLeftNoForm">
								<strong>编辑分类</strong>
							</div>
							<div class="fRight titSecondary white" style="margin-top:5px;"></div>
						</div>
						<table cellspacing="1" class="submit">
							<tbody>
								<tr>
									<td align="right" valign="top"><span class="tdl">分类名称：</span></td>
									<td><input name="catname" type="text" id="catname"
										size="20" class="text" value="快餐" /> <span style="color:red;">*</span></td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td height="45">&nbsp;</td>
									<td height="45">&nbsp;
										<button class="button2" type="submit">保存</button>
										<input name="catid" type="hidden" value="5" />
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