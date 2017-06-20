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
								<strong>商家资料</strong>
							</div>
							<div class="fRight titSecondary white" style="margin-top:5px;"></div>
						</div>
						<table cellspacing="1" class="submit">
							<tbody>
								<tr>
									<td align="right" valign="top"><span class="tdl">商家名称：</span></td>
									<td><input name="companyname" type="text" id="companyname"
										size="20" class="text" value="我的店铺(卖包子)" /> <span
										style="color:red;">*</span></td>
								</tr>
								<tr>
									<td align="right" valign="top"><span class="tdl">Logo：</span></td>
									<td><input name="logo" type="text" id="logo" size="20"
										class="text" value="" /> <a href="#"
										onclick="javascript:ShowIframe('上传缩略图','system/modules/company/upload.php?filename=logo','340','80')">上
											传</a></td>
								</tr>
								<tr>
									<td align="right" valign="top"><span class="tdl">外送费用：</span></td>
									<td><input name="sendprice" type="text" class="w80"
										id="sendprice" value="12" size="20" /> 元</td>
								</tr>
								<tr>
									<td align="right" valign="top"><span class="tdl">送餐时间：</span></td>
									<td><input name="totime" type="text" class="w80"
										id="totime" value="0.5" size="20" /> 小时</td>
								</tr>
								<tr>
									<td align="right" valign="top"><span class="tdl">起送价格：</span></td>
									<td><input name="prices" type="text" class="w80"
										id="prices" value="10" size="20" /> 元</td>
								</tr>
								<tr>
									<td align="right" valign="top"><span class="tdl">上午营业时间：</span></td>
									<td><input name="morning1" type="text" class="w80"
										id="morning1" value="1" size="20" /> - <input name="morning2"
										type="text" class="w80" id="morning2" value="12" size="20" />
										点</td>
								</tr>
								<tr>
									<td align="right" valign="top"><span class="tdl">下午营业时间：</span></td>
									<td><input name="afternoon1" type="text" class="w80"
										id="afternoon1" value="12" size="20" /> - <input
										name="afternoon2" type="text" class="w80" id="afternoon2"
										value="24" size="20" /> 点</td>
								</tr>
								<tr>
									<td align="right" valign="top"><span class="tdl">送餐电话：</span></td>
									<td><input name="phone" type="text" id="phone" size="12"
										value="15912345678" /> <span style="color:red;">*</span></td>
								</tr>
								<tr>
									<td align="right" valign="top"><span class="tdl">经营地址：</span></td>
									<td><input name="address" type="text" id="address"
										size="20" value="少城大厦" /> <span style="color:red;">*</span></td>
								</tr>
								<tr>
									<td align="right" valign="top"><span class="tdl">主营产品：</span></td>
									<td>
										<ul>

											<li><input name="products" type="checkbox" value="11"
												checked="checked" />快餐</li>

											<li><input name="products" type="checkbox" value="12"
												checked="checked" />小炒</li>

											<li><input name="products" type="checkbox" value="14" />西餐</li>

											<li><input name="products" type="checkbox" value="13"
												checked="checked" />套餐</li>

										</ul>
									</td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td height="45">&nbsp;</td>
									<td height="45">&nbsp;
										<button class="button2" type="submit">更新</button> <input
										name="userid" type="hidden" value="4" />
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