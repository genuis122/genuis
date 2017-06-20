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
					<form class="mTB10 mL10 mR10" name="form2"
						action="" method="post">
						<ul class="range_title">
							<li class="hover" id="range1" onmousemove="">青羊区</li>
							<li id="range2" onmousemove="">锦江区</li>
							<li id="range3" onmousemove="">高新区</li>
						</ul>
						<br />
						<div class="range_button">
							<button class="button2" type="submit">更新</button>
						</div>
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