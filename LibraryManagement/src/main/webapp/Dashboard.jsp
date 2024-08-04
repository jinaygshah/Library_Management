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
<title>Dashboard Page</title>
<style>
*{
	background-image:url()
}
.col-sm-6{
position:relative;
}
.card-img-top{
opacity:1;
display:inline-block;
width:100%;
transition:.5 ease;
backface-visibility:hidden	;
}
.middle{
  transition: .5s ease;
  opacity: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  text-align: center;
}
.col-sm-6:hover .card-img-top{
	opacity:0.3;
}
.col-sm-6:hover .middle{
	opacity:1;
}
.text{
  background-color: #7c7c7d;
  color: white;
  font-size: 15px;
  font-weight:bolder;
  padding: 16px 32px;
}	
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-secondary">
		<div class="container-fluid text-center">
			<a class="navbar-brand text-light" href="#" style="margin-left:42%">Smart Tech Library</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-sm-6">
				<div class="card mt-5 my-5 ml-5 mx-5" style="width: 18rem; ">
					<div class="card-body">
						<a href="Adminlogin.jsp">
						<img src="https://www.freepnglogos.com/uploads/student-png/student-png-sammilani-mahavidyalaya-undergraduate-and-24.png"
							width="246" height="284" class="card-img-top" alt="Admin Login">
							</a>
						<div class="middle">
							<div class="text">ADMIN LOGIN</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="card mt-5 my-5 ml-5 mx-5" style="width: 18rem;">
					<div class="card-body">
						<a href="Studentlogin.jsp">
						<img src="https://www.freepnglogos.com/uploads/student-png/student-png-pollpath-27.png" 
							width=246 height=284 class="card-img-top" alt="Student Login">
						</a>
						<div class="middle">
							<div class="text">STUDENT LOGIN</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>