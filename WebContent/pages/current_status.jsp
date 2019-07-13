<%@page import="Anirban.ProductShelf"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="css/rightpane.css" />
</head>
<body>
	<jsp:useBean id="ob" class="Anirban.ProductShelf"/>
	<div class = "container">
		<div class = "heading">
			<h1>Currently available stock : </h1>
		</div>
		<div class = "tabledetails">
			<table>
				<tr><th>Product Name</th><th>Available Quantity</th></tr>
				<%
					ArrayList<ProductShelf> arr = ob.getdetails();
					for(ProductShelf a : arr) {
						%>
						<tr><td><%=a.getPid()%></td>
						<td><%=a.getQuantity()%></td>
						</tr>
						<%
					}
				%>
			</table>
		</div>
	</div>
</body>
</html>