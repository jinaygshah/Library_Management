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
				<li><a href="AdminReturnBook.jsp" class="nav-link text-white "> Return Books </a></li>
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
					<h3 class="text-center">Issue Books</h3>
					<hr class="dropdown divider">
					<div class="card card-bordered"
						style="width: 28rem; margin-left: 425px; box-shadow: 2px 4px 4px 3px rgba(0, 0, 0, 0.5);">
						<div class="card-body ">
							<form action="AdditionalIssue.jsp" class="row g-3">
								<div class="col-auto">
									<label for="staticEmail2" class="form-control-plaintext">Book
										Id</label>
								</div>
								<div class="col-auto">
									<input type="number" class="form-control" name="book_id" id="inputPassword2"
										placeholder="Type Book Id">
								</div>
								<div class="col-auto">
									<input type="submit" class="btn btn-outline-primary mb-3" Value="Search">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>