<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
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

.nav-scroller {
	position: relative;
	z-index: 1;
	height: 2.75rem;
	overflow-y: hidden;
}

.nav-scroller .nav {
	display: flex;
	flex-wrap: nowrap;
	padding-bottom: 1rem;
	margin-top: -1px;
	overflow-x: auto;
	text-align: center;
	white-space: nowrap;
	-webkit-overflow-scrolling: touch;
}
</style>
<link href="sidebars.css" rel="stylesheet">
<title>Library Reports</title>
</head>
<body>
	<main class="d-flex flex">
		<div class="d-flex flex-column flex-shrink-0 p-3 bg-dark"
			style="width: 280px;">
			<a href="/"
				class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
				<img class="ml-3"
				src="https://www.freepnglogos.com/uploads/student-png/student-png-sammilani-mahavidyalaya-undergraduate-and-24.png"
				width="220" height="140">
			</a>
			<hr class="dropdown-divider">
			<h3 class="text-light text-center">Administrator</h3>
			<ul class="nav nav-pills flex-column mb-auto">
				<li><hr class="dropdown-divider"></li>
				<li class="nav-item"><a href="AdminDashboard.jsp" class="nav-link text-white"
					aria-current="page"> Home </a></li>
				<li><hr class="dropdown-divider"></li>
				<li><a href="AdminBooks.jsp" class="nav-link text-white">
						Books </a></li>
				<li><hr class="dropdown-divider"></li>
				<li><a href="AdminIssuedBook.jsp" class="nav-link text-white"> Issue Books </a></li>
				<li><hr class="dropdown-divider"></li>
				
				<li><a href="AdminUserList.jsp" class="nav-link text-white"> Users </a></li>
				<li><hr class="dropdown-divider"></li>
				<li><a href="ALibraryReports.jsp" class="nav-link text-white active"> Reports </a></li>
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
						<a class="navbar-brand" href="#">Admin Role Portal</a>
						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
					</nav>
					<h3 class="text-center">Library Reports</h3>
					<hr class="dropdown divider">
					<table class="table table-bordered table-striped">
						<thead class="table-dark">
							<tr>
								<th scope="col">Date</th>
								<th scope="col">Book Id</th>
								<th scope="col">Book Name</th>
								<th scope="col">Author</th>
								<th scope="col">Student Id</th>
								<th scope="col">Student Name</th>
								<th scope="col">Issue/Return</th>
							</tr>
						</thead>
						<%
				      	try{ 
				      		Class.forName("com.mysql.cj.jdbc.Driver"); 
				   			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/LIBRARY","root","Jinay#0410"); 
				     		Statement st=con.createStatement(); 
				      		ResultSet rs=st.executeQuery("Select curdate(),books_id,book_name,author,s.id,concat(firstname,' ',lastname) as name from issued_book i Inner Join BOOKS b on i.book_id=b.BOOKS_Id inner join student s on s.id=i.stu_id");
							while(rs.next()){	      	
				     	%>	
						<tbody class="text-center">
						<tr>
							<td><%= rs.getString(1) %></td>
							<td><%= rs.getString(2) %></td>
							<td><%= rs.getString(3) %></td>
							<td><%= rs.getString(4) %></td>
							<td><%= rs.getString(5) %></td>
							<td><%= rs.getString(6) %></td>
							<td>Issued</td>
						</tr>
						</tbody>
						<%}
							}
							catch(Exception e){
								e.printStackTrace();
							}
						%>
					</table>
				</div>
			</div>
		</div>
</body>
</html>