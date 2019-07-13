<!DOCTYPE html>
<%@page import="java.util.*"%>
<%@page import="Anirban.CheckThreshold"%>
<html>
<head>
	<link rel="stylesheet" href="css/rightpane.css" />
</head>
<body>
	<div class = "container">
		<div class = "heading">
			<h1>Welcome Manager!</h1>
		</div>
		<div class = "alertbox">
			<div class = "box">
				<div class = "alert">
					<h1>Alert :</h1>
				</div>
				<div class = "product_alert">
					<jsp:useBean id="ob" class="Anirban.CheckThreshold"/>
					<%
						ArrayList<CheckThreshold> arr = ob.getList();
						if (arr.size() == 0) { %>
							<h2>No Products are out of stock!</h2><br/>
							<h2>Assign Some Store Routine!</h2>
						<%}
						else {%>
							<h2>The following products are out of stock : </h2>
							<ul>
							<%
								for(CheckThreshold a : arr) {
							%>
									<li><%=a.getPid()%></li>
							<%} %>
							</ul><br/>
							<h2>Order them as early as possible!</h2>
						<%}
					%>
				</div>
			</div>
		</div>
	</div>	
</body>
</html>