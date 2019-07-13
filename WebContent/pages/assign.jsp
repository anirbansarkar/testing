<%@page import="Anirban.ProductShelf"%>
<%@page import="java.util.*"%>
<%@ page import="java.text.*" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="css/rightpane.css" />
</head>
<body>
	<div class = "container" id = "container">
		<div class = "heading">
			<h1>Assign Routines : </h1>
		</div>
		<div class = "tabledetails">
			<form name="routineschedule" id="form" method = "POST" action="routineassigned.jsp">
				<table>
					<tr><th>Day</th><th>Gap Scan</th><th>Gap Fill</th></tr>
					<tr><td><%
         				Date date = new Date();
						SimpleDateFormat ft = new SimpleDateFormat ("EEEE");
         				String day = ft.format(date);
      					%><%=day%></td>
      					<td><input type="checkbox" name="gapscan" value="1" checked></td>
      					<td><input type="checkbox" name="gapfill" value="1"></td>
      				</tr>
				</table><br/>
				<input type="submit" value="Submit" id="submit">	
			</form>
		</div>
	</div>
</body>
</html>