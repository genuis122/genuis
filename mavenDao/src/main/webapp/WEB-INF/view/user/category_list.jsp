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
					<div class="location">
						<span class="fLeft">分类列表</span><span
							class="fRight mR10 titPublish icon"><a
							href='user/category_add.jsp'>添加分类</a></span>
					</div>
					<form name="form2" class="mL10 mR10 mTB10">
						<table cellspacing="1" class="list">
							<thead>
								<tr>
									<th>分类名称</th>
									<th>菜品数</th>
									<th width="15%">操作</th>
								</tr>
							</thead>
							<tbody>

								<tr>
									<td><span class="titDot icon16 fLeft"></span>快餐</td>
									<td align="center">1</td>
									<td align="center"><a href="user/category_edit.jsp">修改</a>
										| <a href="">删除</a></td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td colspan="4" align="center"><div class="pages">
											总计:1条 每页20条 当前第1页&nbsp; <a>首页</a> <a>上一页</a> <a>下一页</a> <a>尾页</a>
										</div></td>
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