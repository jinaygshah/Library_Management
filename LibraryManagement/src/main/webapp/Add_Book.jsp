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
<title>Add Book</title>
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
				<li class="nav-item"><a href="AdminDashboard.jsp"
					class="nav-link text-white " aria-current="page"> Home </a></li>
				<li><hr class="dropdown-divider"></li>
				<li><a href="AdminBooks.jsp" class="nav-link text-white active">
						Books </a></li>
				<li><hr class="dropdown-divider"></li>
				<li><a href="AdminIssuedBook.jsp" class="nav-link text-white">
						Issue Books </a></li>
				<li><hr class="dropdown-divider"></li>

				<li><a href="AdminUserList.jsp" class="nav-link text-white">
						Users </a></li>
				<li><hr class="dropdown-divider"></li>
				<li><a href="ALibraryReports.jsp" class="nav-link text-white">
						Reports </a></li>
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
					<h3 class="text-center">Add Book</h3>
					<hr class="dropdown divider">
					<form action="Add_Book.jsp">
						<table width=100%>
							
							<tr>
								<td><label for="exampleFormControlInput2" class="form-label">Book Name</label></td>
								<td></td>
								<td><label for="exampleFormControlInput1" class="form-label">Book Author</label></td>
							</tr>
							<tr>
								<td><input type="text" name="bname" class="form-control p-3" id="exampleFormControlInput2" placeholder="Enter Book Name" required></td>
								<td></td>
								<td><input type="text" name="aname" class="form-control p-3" id="exampleFormControlInput3" placeholder="Enter Author Name" required></td>
							</tr>
							<tr>
							</tr>
							<tr>
								<td><label for="exampleFormControlInput4" class="form-label">Publisher</label></td>
								<td></td>
								<td><label for="exampleFormControlInput5" class="form-label">Price</label></td>
							</tr>
							<tr>
								<td><input type="text" name="pname" class="form-control p-3" id="exampleFormControlInput4" placeholder="Enter Publisher Name" required></td>
								<td></td>
								<td><input type="number" name="price"class="form-control p-3" id="exampleFormControlInput5" placeholder="Enter Price" required></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td align="right"><input type="Submit" class="btn btn-outline-primary btn-md" value="Add Book"></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</main>
	<%
		String bname=request.getParameter("bname");
	 	String aname=request.getParameter("aname"); 
	 	String pname=request.getParameter("pname");
		String price=request.getParameter("price"); 
	 	try{
	 		System.out.println("Hello World");
	 		Class.forName("com.mysql.cj.jdbc.Driver"); 
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/LIBRARY","root","Jinay#0410"); 
			Statement st=con.createStatement(); 
	 		int k=st.executeUpdate("insert into BOOKS(BOOK_NAME,AUTHOR,PUBLISHER,PRICE) values('"+bname+"','"+aname+"','"+pname+"','"+price+"')");
	 		response.sendRedirect("AdminBooks.jsp");
	 	}
	 	catch(Exception e){ 
 	     		System.out.println("Error Che aa Code maa"); 
	 		out.println(e);
		} 
	%>
	<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

	<script src="sidebars.js"></script>
</body>
</html>