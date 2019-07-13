<%@page import="Anirban.DailyRoutine"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="css/rightpane.css" />
</head>
<body>
	<jsp:useBean id="ob" class="Anirban.DailyRoutine"/>
	<div class = "container">
		<div class = "heading">
			<h1>Daily Routine Schedule : </h1>
		</div>
		<div class = "tabledetails">
			<table>
				<tr><th>Day</th><th>Gap Scan</th><th>Gap Fill</th></tr>
				<%
					ArrayList<DailyRoutine> arr = ob.getRoutines();
					for(DailyRoutine a : arr) {
						%>
						<tr><td><%=a.getDay()%></td>
						<td><%=a.getGapscan()%></td>
						<td><%=a.getGapfill() %></td>
						</tr>
						<%
					}
				%>
			</table>
		</div>
	</div>
</body>
</html>