<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
		/* Class.forName("com.mysql.cj.jdbc.Driver"); 
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/LIBRARY","root","Jinay#0410"); 
		String search=request.getParameter("search");
		Statement st=con.createStatement(); 
		String sqlquery="Select * from BOOKS";
		ResultSet rs=st.executeQuery(sqlquery); */
		
		Class.forName("com.mysql.cj.jdbc.Driver"); 
		PreparedStatement ps = null;
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/LIBRARY","root","Jinay#0410"); 
		
		if("POST".equalsIgnoreCase(request.getMethod())){
			String search =  request.getParameter("search");
			ps=con.prepareStatement("select * from BOOKS where BOOK_NAME LIKE '%"+search+"%'");
		}else{
			ps=con.prepareStatement("select * from BOOKS");
		}
		
		ResultSet rs = null;
		rs = ps.executeQuery();
		
		System.out.println("settes user id is " + session.getAttribute("user_id"));
		
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.bi {
	vertical-align: -.125em;
	fill: currentColor;
}

/* .nav-scroller { */
/* 	position: relative; */
/* 	z-index: 1; */
/* 	height: 2.75rem; */
/* 	overflow-y: hidden; */
/* } */

/* .nav-scroller .nav { */
/* 	display: flex; */
/* 	flex-wrap: nowrap; */
/* 	padding-bottom: 1rem; */
/* 	margin-top: -1px; */
/* 	overflow-x: auto; */
/* 	text-align: center; */
/* 	white-space: nowrap; */
/* 	-webkit-overflow-scrolling: touch; */
/* } */
</style>
<link href="sidebars.css" rel="stylesheet">
<title>Search Books</title>
</head>
<body>
	<main class="d-flex flex-nowrap">
		<div class="d-flex flex-column flex-shrink-0 p-3 bg-dark"
			style="width: 280px;">
			<a href="/"
				class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
				<img class="ml-3"
				src="https://www.freepnglogos.com/uploads/student-png/student-png-pollpath-27.png"
				width="220" height="140">
			</a>
			<hr class="dropdown-divider">
			<h3 class="text-light text-center">Student</h3>
			<ul class="nav nav-pills flex-column mb-auto">
				<li><hr class="dropdown-divider"></li>
				<li class="nav-item"><a href="StudentDashboard.jsp" class="nav-link text-white"
					aria-current="page"> Home </a></li>
				<li><hr class="dropdown-divider"></li>
				<li><a href="SSearchBooks.jsp" class="nav-link text-white active"> Search Books </a>
				</li>
				<li><hr class="dropdown-divider"></li>
				<li><a href="SIssueBooks.jsp" class="nav-link text-white"> Issued Books </a>
				</li>
				<li><hr class="dropdown-divider"></li>
				<li><a href="SBookhistory.jsp" class="nav-link text-white"> Books History
				</a></li>
				<li><hr class="dropdown-divider"></li>
				<li><a href="SChangePassword.jsp" class="nav-link text-white"> Change
						Password </a></li>
				<li><hr class="dropdown-divider"></li>
				<li><a href="Dashboard.jsp" class="nav-link text-white">
						Logout </a></li>
				<li><hr class="dropdown-divider"></li>
			</ul>
			<hr>
			<hr>
			<hr>
			<hr>
		</div>
		<div class="container-fluid m-0 p-0">
			<div class="row">
				<div class="col-md-12">
					<nav
						class="navbar justify-content-center navbar-expand-lg navbar-dark bg-dark">
						<a class="navbar-brand" href="#">Student Role Portal</a>
						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
					</nav>
					<h3 class="text-center">Check Book Availability</h3>
					<hr class="dropdown divider">
					<form action="SSearchBooks.jsp" class="d-flex" role="search" method="POST">
						<input class="form-control me-5 mr-2" type="search"
							placeholder="Search Book" name="search" aria-label="Search"
							style="width: 25%; margin-left: 425px;">
						<input class="btn btn-primary mx-2" type="submit" value="Search">
						<a class="btn btn-primary"href="/LibraryManagement/SSearchBooks.jsp">Clear</a>
					</form>
					
					
					<table class="table table-bordered table-striped mt-4">
						<thead class="table-dark">
							<tr>
								<th scope="col">Book Id</th>
								<th scope="col">Book Name</th>
								<th scope="col">Author</th>
								<th scope="col">Publisher</th>
								<th scope="col">Price</th>
							</tr>
						</thead>
						<%
					int i=0;
					while(rs.next()){	      	
		     %>
						<tbody>
							<tr>
								<td scope="row"><%= ++i %></td>
								<td><%= rs.getString(2) %></td>
								<td><%= rs.getString(3) %></td>
								<td><%= rs.getString(4) %></td>
								<td><%= rs.getString(5) %></td> 	
							</tr>
						</tbody>
						<% }
		      		
					%>
					</table>
				</div>
			</div>
		</div>
	</main>
</body>
</html>