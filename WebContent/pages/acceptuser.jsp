<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Anirban.ValidateUser"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>User Page</title>
	<link rel="shortcut icon" href="images/icon.ico" />
	<link rel="stylesheet" href="css/userstyle.css" />
</head>
<body>
	<jsp:useBean id="ob" class="Anirban.ValidateUser"/>

	<jsp:setProperty name="ob" property="uname"/>
	<jsp:setProperty name="ob" property="pass"/>
	<jsp:setProperty name="ob" property="role"/>

	<%
	String uname = ob.getUname();
	String pass = ob.getPass();
	String role = ob.getRole();
	if(ob.validate()==1) {
		session.setAttribute("uname", uname);
		session.setAttribute("pass",pass);
		session.setAttribute("role",role);
		response.sendRedirect("manager.jsp");
	}
	else if(ob.validate()==2){
		session.setAttribute("uname", uname);
		session.setAttribute("pass",pass);
		session.setAttribute("role",role);
		response.sendRedirect("employee.jsp");
	} 
	else if(ob.validate()==3){%>
		<p>Unable to connect to database!</p>		
	<%}
	else{%>
		<script>
		alert("Invalid User!")
		window.location.href = "sign_in_page.html";</script>
		<%
	}
	%>
</body>
</html>