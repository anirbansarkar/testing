<%@page import="Anirban.CheckThreshold"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="css/rightpane.css" />
</head>
<body>
	<jsp:useBean id="ob" class="Anirban.CheckThreshold"/>
	<div class = "container">
		<div class = "heading">
			<h1>Order the following products : </h1>
		</div>
		<div class = "tabledetails">
			<form method = "POST" action = "orderedproduct.jsp">
				<table>
					<tr><th>Product Name</th><th>Quantity</th></tr>
					<%
						ArrayList<CheckThreshold> arr = ob.getList();
						for(CheckThreshold a : arr) {
							%>
							<tr><td><%=a.getPid()%></td>
							<%
								String qname = "quantity" + a.getPid();
							%>
							<td><input type = "text" name = <%=qname %> placeholder="0" required></td>
							</tr>
							<%
						}
					%>
				</table>
				<input type = "submit" value = "Submit" id="submit">
			</form>
		</div>
	</div>
</body>
</html>