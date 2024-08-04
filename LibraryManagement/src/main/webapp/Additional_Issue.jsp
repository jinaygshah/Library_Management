
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<title>Issue Books</title>
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
				<li><a href="AdminIssuedBook.jsp" class="nav-link text-white active"> Issue Books </a></li>
				<li><hr class="dropdown-divider"></li>

				<li><a href="AdminUserList.jsp" class="nav-link text-white"> Users </a></li>
				<li><hr class="dropdown-divider"></li>
				<li><a href="ALibraryReports.jsp" class="nav-link text-white"> Reports </a></li>
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
					
					<%
							String id=request.getParameter("books_id");
					System.out.println("Id is "+id);
							String stu_id=request.getParameter("stu_id");
							Class.forName("com.mysql.cj.jdbc.Driver"); 
							Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/LIBRARY","root","Jinay#0410"); 
							Statement st=con.createStatement(); 
							Statement st1=con.createStatement(); 
							String student_name = "";
							
							String bookname = "";
							
							ResultSet rst=st1.executeQuery("Select BOOK_NAME from BOOKS where books_id = "+id);
							while(rst.next()){
								bookname = rst.getString(1);
							}
							
							ResultSet rs=st.executeQuery("Select concat(firstname, ' ', lastname) as stu_name from student where id = "+stu_id);
							while(rs.next()){
								student_name = rs.getString(1);
							}
						%>
					
					<h3 class="text-center">Issue Books</h3>
					<hr class="dropdown divider">
					<div class="card card-bordered "
						style="width: 29rem; margin-left: 425px; box-shadow: 2px 4px 4px 3px rgba(0, 0, 0, 0.5);">
						<div class="card-body ">
							<form class="row g-3" method="POST" action="IssueBook">
								<div class="col-auto">
									<label for="staticEmail2" class="form-control-plaintext">Book
										Id</label>
								</div>
								<div class="col-auto" style="margin-left:6%">
									<input type="number" class="form-control" id="inputPassword2"
										placeholder="Type Book Id" name="book_id" value="<%= id %>">
								</div>
								<div class="col-auto">
									<button type="submit" class="btn btn-outline-primary mb-3" disabled>Search</button>
								</div>
								<div class="col-auto">
									<label for="staticEmail2" class="form-control-plaintext">Book
										Name</label>
								</div>
								<div class="col-auto">
									<input type="text" class="form-control disabled" id="inputPassword2" disabled readonly value="<%= bookname %>">
								</div>
							
							
								<div class="col-auto mt-3">
									<label for="staticEmail2" class="form-control-plaintext">Student
										Id</label>
								</div>
								<div class="col-auto mt-3" style="margin-left:2%">
									<input type="number" class="form-control" id="inputPassword2"
										placeholder="Type Student Id" name="stu_id" value="<%= stu_id %>">
								</div>
								<div class="col-auto mt-3">
									<button type="submit" class="btn btn-outline-primary mb-3" disabled>Search</button>
								</div>
							
								<div class="col-auto">
									<label for="staticEmail2" class="form-control-plaintext">Student
										Name</label>
								</div>
								<div class="col-auto" style="margin-left:-4%">
									<input type="text" class="form-control disabled"  id="inputPassword2" readonly value="<%= student_name %>">
								</div>
								<div class="col-auto mt-2" style="margin-left:70%">
									<input type="submit" value="Issue Book" class="btn btn-outline-primary">	
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>