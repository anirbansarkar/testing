<%@page import="Anirban.OrderProduct"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<html>
<head>
	<link rel="stylesheet" href="css/style.css" />
</head>
<body>
	<%
	int quantity[] = new int[9];
	int i;
	for (i = 0; i < 9; i++) {
		String name = "quantityP" + (i+1);
		String q = (String)request.getParameter(name);
		quantity[i] = 0;
		if (q != null) {
			quantity[i] = Integer.parseInt(q);
		}
	}
   	%>
   	<jsp:useBean id="ob" class="Anirban.OrderProduct"/>
   	<%ob.order(quantity); %>
	<script>
		alert("Ordered Placed Successfully!")
		window.location.href = "manager.jsp";
	</script>
</body>
</html>