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
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Change Password</title>
<style>
.pass_show {
	position: relative
}

.pass_show .ptxt {
	position: absolute;
	top: 50%;
	right: 10px;
	z-index: 1;
	color: #f36c01;
	margin-top: -10px;
	cursor: pointer;
	transition: .3s ease all;
}

.pass_show .ptxt:hover {
	color: #333333;
}

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
				<li><a href="SSearchBooks.jsp" class="nav-link text-white"> Search Books </a>
				</li>
				<li><hr class="dropdown-divider"></li>
				<li><a href="SIssueBooks.jsp" class="nav-link text-white"> Issued Books </a>
				</li>
				<li><hr class="dropdown-divider"></li>
				<li><a href="SBookhistory.jsp" class="nav-link text-white"> Books History
				</a></li>
				<li><hr class="dropdown-divider"></li>
				<li><a href="SChangePassword.jsp" class="nav-link text-white active"> Change
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
					<h3 class="text-center">Change Password</h3>
					<hr class="dropdown divider">
					<div class="card card-bordered"
						style="width: 32rem; margin-left: 425px; box-shadow: 2px 4px 4px 3px rgba(0, 0, 0, 0.5);">
						<div class="card-body ">
							<div class="row">
								<div class="col">
								<form action="Schange.jsp">
									<label>Current Password</label>
									<div class="form-group pass_show">
										<input type="password" class="form-control"
											name="current" placeholder="Current Password">
									</div>
									<label>New Password</label>
									<div class="form-group pass_show">
										<input type="password" class="form-control"
											name="new" placeholder="New Password">
									</div>
									<label>Confirm Password</label>
									<div class="form-group pass_show">
										<input type="password" class="form-control"
											name="confirm" placeholder="Confirm Password">
									</div>
									<div class="form-group pass_show text-right">
										<button class="btn btn-primary">Update Password</button>
									</div>
								</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
</body>
</html>