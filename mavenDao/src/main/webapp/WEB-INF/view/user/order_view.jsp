<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html >
<html>
<head>
<base href="${base}/" />
<title>会员中心</title>
<link href="<c:url value='css/center.css' />" rel="stylesheet" type="text/css" />
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
					<form class="mTB10 mL10 mR10">
						<div class="titleBar bgGrass lineB">
							<div class="fLeftNoForm">
								<strong>订单明细</strong>
							</div>
							<div class="fRight titSecondary white" style="margin-top:5px;"></div>
						</div>
						<table width="100%" cellspacing="1" class="submit">
							<tbody>
								<tr>
									<td width="21%" align="right"><span class="tdl">订单编号：</span></td>
									<td width="79%">XD412017221113939</td>
								</tr>
								<tr>
									<td align="right"><span class="tdl">店铺名称：</span></td>
									<td>旭东快餐店</td>
								</tr>
								<tr>
									<td align="right"><span class="tdl">订餐明细：</span></td>
									<td>香菇鸡肉[1份]、红烧牛肉[2份]、</td>
								</tr>
								<tr>
									<td align="right"><span class="tdl">总价：</span></td>
									<td>100.00 元</td>
								</tr>
								<tr>
									<td align="right"><span class="tdl">订餐时间：</span></td>
									<td>2017-02-21 11:39:39</td>
								</tr>
								<tr>
									<td align="right"><span class="tdl">联系人：</span></td>
									<td>谭岚</td>
								</tr>
								<tr>
									<td align="right"><span class="tdl">联系电话：</span></td>
									<td>15912345678</td>
								</tr>
								<tr>
									<td align="right"><span class="tdl">送餐地址：</span></td>
									<td>少城大厦</td>
								</tr>
								<tr>
									<td align="right"><span class="tdl">备注：</span></td>
									<td></td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td height="45">&nbsp;</td>
									<td height="45">&nbsp;
										<button class="button2" type="button" onclick="history.go(-1)">返回</button>
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