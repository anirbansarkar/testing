<!DOCTYPE html>
<%@page import="java.util.*"%>
<%@page import="Anirban.CheckThreshold"%>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Manager Page</title>
	<link rel="shortcut icon" href="images/icon.ico" />
	<link rel="stylesheet" href="css/managerstyle.css" />
	<link rel="stylesheet" href="css/rightpane.css" />
</head>
<body>
	<%
    if (session.getAttribute("uname") == null || session.getAttribute("pass") == null || session.getAttribute("role") == null
    || !(session.getAttribute("uname").equals("alok")) || !(session.getAttribute("pass").equals("1234")) 
    	|| !(session.getAttribute("role").equals("man"))) {
	%>
	<p>You are not logged in<br/></p>
	<a href="sign_in_page.html">Please Login</a>
	<%} else {
	%>
	<header>
		<div class="container">
			<div class = "leftpane">
				<div class = "dp">
					<img src="images/dp.jpg" alt="">
				</div>
				<div class = "welcome_text">
					<h1>Welcome Alok!</h1>
				</div>
				<div class = "button_list">
					<button type="button" onclick="home()">Home</button>
					<button type="button" onclick="current_status()">View Current Status</button>
					<button type="button" onclick="assign()">Assign Routines</button>
					<button type="button" onclick="view_routine()">View Routines</button>
					<button type="button" onclick="order()">Order</button>					
					<a href = "logout.jsp"><button type="button" id="logout">Logout</button></a>
				</div>
			</div>
			<div class  = "rightpane" id = "display">
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
		</div>
	</header>
    <%}
	%>
<script>
	function home() {
		  var xhttp = new XMLHttpRequest();
		  xhttp.onreadystatechange = function() {
		    if (this.readyState == 4 && this.status == 200) {
		      document.getElementById("display").innerHTML =
		      this.responseText;
		    }
		  };
		  xhttp.open("GET", "manager_home.jsp", true);
		  xhttp.send();
	}
	function current_status() {
		  var xhttp = new XMLHttpRequest();
		  xhttp.onreadystatechange = function() {
		    if (this.readyState == 4 && this.status == 200) {
		      document.getElementById("display").innerHTML =
		      this.responseText;
		    }
		  };
		  xhttp.open("GET", "current_status.jsp", true);
		  xhttp.send();
	}
	function assign() {
		  var xhttp = new XMLHttpRequest();
		  xhttp.onreadystatechange = function() {
		    if (this.readyState == 4 && this.status == 200) {
		      document.getElementById("display").innerHTML =
		      this.responseText;
		    }
		  };
		  xhttp.open("GET", "assign.jsp", true);
		  xhttp.send();
	}
	function order() {
		  var xhttp = new XMLHttpRequest();
		  xhttp.onreadystatechange = function() {
		    if (this.readyState == 4 && this.status == 200) {
		      document.getElementById("display").innerHTML =
		      this.responseText;
		    }
		  };
		  xhttp.open("GET", "order.jsp", true);
		  xhttp.send();
	}
	function view_routine() {
		  var xhttp = new XMLHttpRequest();
		  xhttp.onreadystatechange = function() {
		    if (this.readyState == 4 && this.status == 200) {
		      document.getElementById("display").innerHTML =
		      this.responseText;
		    }
		  };
		  xhttp.open("GET", "viewroutine.jsp", true);
		  xhttp.send();
	}
</script>
</body>
</html>