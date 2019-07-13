<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Employee Page</title>
	<link rel="shortcut icon" href="images/icon.ico" />
	<link rel="stylesheet" href="css/userstyle.css" />
</head>
<body>
	<%
	if (!(session.getAttribute("uname").equals("anirban")) || !(session.getAttribute("pass").equals("siliguri")) 
	    	|| !(session.getAttribute("role").equals("emp"))) {
	%>
	<p>You are not logged in<br/></p>
	<a href="sign_in_page.html">Please Login</a>
	<%} else {
	%>
	<p>Welcome <%=session.getAttribute("uname")%></p>
    <%}
	%>
</body>
</html>