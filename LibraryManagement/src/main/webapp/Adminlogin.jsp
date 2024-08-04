<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>Admin Login Page</title>
<style>
.divider:after,
.divider:before {
content: "";
flex: 1;
height: 1px;
background: #eee;
}
body{
opacity:0.97;
background-image:url(https://media.gettyimages.com/id/169993375/photo/bookshelf-inside-stockholm-public-library.jpg?s=612x612&w=gi&k=20&c=sPIF6oLuAoIoIbfVBNKIQfniIKBYbGqEJRbbQl0lDmk=);
background-repeat:no-repeat;
background-size:cover;
}
</style>
</head>
<body>
<section class="vh-100">
  <div class="container py-5 h-100">
    <div class="row d-flex align-items-center justify-content-center h-100">       
      <div class="col-md-12 col-lg-12 col-xl-5 offset-xl-1" style="margin-left:60%; margin-top:5%;">
      <h1 class="fw-bold mb-2 text-uppercase text-primary" style="text-align:center;">Admin Login</h1>
        <form action="Adminlogin.jsp" method="post" name="myForm">
          <!-- Email input -->
          <div class="form-outline mb-4">
            <input type="email" id="form1Example13" name="emailadd" class="form-control form-control-lg" placeholder="abc@gmail.com"/>
            <label class="form-label text-light" for="form1Example13">Email address</label>
          </div>

          <!-- Password input -->
          <div class="form-outline mb-4">
            <input type="password" id="form1Example23" name="passwd" class="form-control form-control-lg" placeholder="password"/>
            <label class="form-label text-light" for="form1Example23">Password</label>
          </div>

          <!-- Submit button -->
          <button type="submit" class="btn btn-primary btn-lg btn-block">Login</button>
        </form>
      </div>
    </div>
  </div>
</section>
<%
 	String sign=request.getParameter("emailadd");
     if(sign!=null){ 
      	String email=request.getParameter("emailadd"); 
     	String pass=request.getParameter("passwd"); 
      	try{ 
      		Class.forName("com.mysql.cj.jdbc.Driver"); 
   			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/LIBRARY","root","Jinay#0410"); 
     		Statement st=con.createStatement(); 
      		ResultSet rs=st.executeQuery("Select * from admin where email='"+email+"' and password='"+pass+"'"); 
      		if(rs.next()){ 
      			response.sendRedirect("AdminDashboard.jsp");
      		} 
     		else{ 
     	 		out.println("<script type=\"text/javascript\">");
     			out.println("alert('Emailaddress and password don't match');");
     			out.println("location='Adminlogin.jsp");
     			out.println("</script>");
      		} 
      	}
      	catch(Exception e){ 
      	     		System.out.println("Error Che aa Code maa"); 
      		out.println(e);
     	} 
      } 
  %>  
</body>
</html>