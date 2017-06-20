<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>订餐网站</title>
<link rel="stylesheet" type="text/css" href="css/main.css" />
<script type="text/javascript">
	function openLogin() {
		document.getElementById("ContentboxTab").style.display = "";
	}
	function closeLogin() {
		document.getElementById("ContentboxTab").style.display = "none";
	}
</script>
</head>

<body>
	<jsp:include page="top.jsp"></jsp:include>
	<jsp:include page="nav.jsp"></jsp:include>
	<div id="order" class="main">
		<div class="order_left">
			<div id="example">
				<div id="slides">
					<div class="slides_container">
						<div class="slide">
							<a href=""><img src="images/upload/index/hh.jpg" height="300"
								width="430" /></a>
						</div>

						<div class="slide">
							<a href=""><img src="images/upload/index/jj.jpg" height="300"
								width="430" /></a>
						</div>

						<div class="slide">
							<a href=""><img src="images/upload/index/ll.jpg" height="300"
								width="430" /></a>
						</div>

					</div>
					<a href="#" class="prev"></a> <a href="#" class="next"></a>
				</div>
			</div>
			<!--/轮播图片-->
		</div>
		<div class="order_right">
			<div class="top_place order_right_place">
				<input name="" type="text" class="top_place_text_1 add_mybname"
					value="您还未选择您附近地址，请选择" id="place_text" readonly="readonly"
					onclick=openLogin(); />
			</div>
			<div class="index_nav_search">
				<ul>
					<li class="index_nav_search_li"><input name="" id="tbkey2"
						type="text" class="mysearchnav2 index_nav_search_text "
						value="请输入您要找的餐品/商家名称" /></li>
					<li class="index_nav_search_li" id="index_nav_search_select"><span>找店名</span>
						<ul id="index_nav_search_select_sub">
							<li>找店名</li>
							<li>找菜名</li>
						</ul></li>
					<li class="index_nav_search_li">
					<a class="index_nav_search_go" href="###" onclick="location.href='search'"></a></li>
				</ul>
			</div>
		</div>
	</div>
	<div id="index_content_t" class="main t10"></div>
	<div id="index_content" class="main">
		<jsp:include page="about.jsp"></jsp:include>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>

	<div id="tabpopup1"
		style="display: none;position: absolute;width: 702px;margin-left: 0px; border: 6px solid #666;background-color: rgb(255, 255, 255);-moz-border-radius:6px;-webkit-border-radius:6px;border-radius:6px;left: 450px;top: 280px;background: #fff;z-index:111;">

		<div
			style="height: 30px; line-height: 30px; background: #fe9724; border-bottom:1px solid #985307;border-top:1px solid #985307;">
			<span
				style="float: right; margin-top:5px;*margin-top:0px;_margin-top:5px; margin-right:5px; width:23px; height:18px;"><a
				href="javascript:void(0)"
				onclick="$('#windownbg').hide();$('#tabpopup1').hide(); $('#tabpopup1').css({ 'left': '450px','top':'280px','margin-left':'0px','margin-top':'0px'});return false;"><img
					src="images/xx.gif" /> </a></span><span
				style="padding-left: 20px; color:#FFF;">请选择您所在或者附近的标志建筑、小区或街道，以便我们辨别这些店铺能否送到您所在的区域。</span>
		</div>

		<div class="serach_OfficeBuilding">
			<script src="system/templates/dccms/js/seach.js"
				type="text/javascript"></script>
			<script type="text/javascript"
				src="system/templates/dccms/js/seachbox.js"></script>
			<form id="formkeyword" name="formkeyword" method="get"
				action="index.php" target="_top">
				<div class="serach_OfficeBuilding_left">
					<input name="keyword" type="text" class="inputBorder" id="keyword"
						value="" /> <input type="submit" name="button" id="button"
						value="" onclick=" return getkeyFix(1);" class="search_bul" /> <input
						id="m" name="m" type="hidden" value="company" />
				</div>
				<div class="serach_OfficeBuilding_right"
					style="height: 57px; width: 212px; "></div>
			</form>
		</div>
		<div class="MenuboxTab clear" id="section">
			<ul>
				<li id="range1" onmousemove="setTab('range',1,4)" class="hover"><span>全部</span></li>

				<li id="range2" onmousemove="setTab('range',2,4)"><span>青秀区</span></li>

				<li id="range3" onmousemove="setTab('range',3,4)"><span>兴宁区</span></li>

				<li id="range4" onmousemove="setTab('range',4,4)"><span>江南区</span></li>

			</ul>
		</div>

		<div class="ContentboxTab">
			<div id="con_range_1">
				<ul>
					<li><a
						href="index.php?m=company&keyword=%B5%D8%CD%F5%B4%F3%CF%C3">地王大厦</a></li>

					<li><a
						href="index.php?m=company&keyword=%C8%D9%BA%CD%D6%D0%D1%EB%B9%AB%D4%B0">荣和中央公园</a></li>

					<li><a href="index.php?m=company&keyword=%BD%F0%D4%B4CBD">金源CBD</a></li>

					<li><a
						href="index.php?m=company&keyword=%C8%D9%BA%CD%C9%BD%CB%AE%C3%C0%B5%D8">荣和山水美地</a></li>

					<li><a
						href="index.php?m=company&keyword=%BC%CE%BA%CD%D7%D4%D3%C9%BF%D5%BC%E4">嘉和自由空间</a></li>

					<li><a
						href="index.php?m=company&keyword=%B6%AB%B8%F0%B4%F3%CF%C3">东葛大厦</a></li>

					<li><a
						href="index.php?m=company&keyword=%C7%E0%D0%E3%B4%F3%CF%C3">青秀大厦</a></li>

					<li><a
						href="index.php?m=company&keyword=%D1%F4%B9%E2%D0%C2%B6%BC">阳光新都</a></li>

					<li><a
						href="index.php?m=company&keyword=%B6%BC%CA%D0%BB%AA%CD%A5">都市华庭</a></li>

					<li><a
						href="index.php?m=company&keyword=%B6%BC%CA%D0%CE%EF%D3%EF">都市物语</a></li>

					<li><a
						href="index.php?m=company&keyword=%C3%F7%C0%FB%B4%F3%CF%C3">明利大厦</a></li>

					<li><a
						href="index.php?m=company&keyword=%C8%D9%B1%A6%BB%AA%D0%A1%C7%F8">荣宝华小区</a></li>

				</ul>
			</div>

			<div id="con_range_2">
				<ul>

					<li><a
						href="index.php?m=company&keyword=%B5%D8%CD%F5%B4%F3%CF%C3">地王大厦</a></li>

					<li><a
						href="index.php?m=company&keyword=%C8%D9%BA%CD%D6%D0%D1%EB%B9%AB%D4%B0">荣和中央公园</a></li>

					<li><a href="index.php?m=company&keyword=%BD%F0%D4%B4CBD">金源CBD</a></li>

					<li><a
						href="index.php?m=company&keyword=%C8%D9%BA%CD%C9%BD%CB%AE%C3%C0%B5%D8">荣和山水美地</a></li>

					<li><a
						href="index.php?m=company&keyword=%BC%CE%BA%CD%D7%D4%D3%C9%BF%D5%BC%E4">嘉和自由空间</a></li>

					<li><a
						href="index.php?m=company&keyword=%B6%AB%B8%F0%B4%F3%CF%C3">东葛大厦</a></li>

					<li><a
						href="index.php?m=company&keyword=%C7%E0%D0%E3%B4%F3%CF%C3">青秀大厦</a></li>

				</ul>
			</div>

			<div id="con_range_3">
				<ul>

					<li><a
						href="index.php?m=company&keyword=%D1%F4%B9%E2%D0%C2%B6%BC">阳光新都</a></li>

					<li><a
						href="index.php?m=company&keyword=%B6%BC%CA%D0%BB%AA%CD%A5">都市华庭</a></li>

					<li><a
						href="index.php?m=company&keyword=%B6%BC%CA%D0%CE%EF%D3%EF">都市物语</a></li>

				</ul>
			</div>

			<div id="con_range_4">
				<ul>

					<li><a
						href="index.php?m=company&keyword=%C3%F7%C0%FB%B4%F3%CF%C3">明利大厦</a></li>

					<li><a
						href="index.php?m=company&keyword=%C8%D9%B1%A6%BB%AA%D0%A1%C7%F8">荣宝华小区</a></li>
				</ul>
			</div>

		</div>
	</div>

</body>
</html>
