<%@page import="Anirban.AssignRoutine"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<html>
<head>
	<link rel="stylesheet" href="css/style.css" />
</head>
<body>
	<%
	Date date = new Date();
	SimpleDateFormat ft = new SimpleDateFormat ("EEEE");
   	String day = ft.format(date);
   	String gs = (String)request.getParameter("gapscan");
   	String gf = (String)request.getParameter("gapfill");
   	int gapscan = 0,gapfill = 0;
   	if (gs != null) {
   		gapscan = 1;
   	}
   	if (gf != null) {
   		gapfill = 1;
   	}
   	%>
   	<jsp:useBean id="ob" class="Anirban.AssignRoutine"/>
	<%ob.update(day,gapscan,gapfill); %>
	<script>
		alert("Routine Assigned Successfully! Check View Routines Section!")
		window.location.href = "manager.jsp";
	</script>
</body>
</html>