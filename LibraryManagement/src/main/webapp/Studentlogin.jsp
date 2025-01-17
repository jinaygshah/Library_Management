<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>Student Login Page</title>
<style>
.divider:after,
.divider:before {
content: "";
flex: 1;
height: 1px;
background: #eee;
}
body{
background-image:url(data:image/jpeg;base64,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);
background-repeat:no-repeat;
background-size:cover;
}
</style>
</head>
<body>
<section class="vh-100">
  <div class="container py-5 h-100">
    <div class="row d-flex align-items-center justify-content-center h-100">
      
      <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1" style="margin-left:60%; margin-top:3%;">
      <h1 class="fw-bold mb-2 text-uppercase" style="text-align:center;">Student Login</h1>
        <form action="Studentlogin.jsp" method="POST">
          <!-- Email input -->
          <div class="form-outline mb-4">
            <input type="email" name="emailadd" id="form1Example13" class="form-control form-control-lg" placeholder="abc@gmail.com" />
            <label class="form-label" for="form1Example13">Email address</label>
          </div>

          <!-- Password input -->
          <div class="form-outline mb-4">
            <input type="password" name="passwd" id="form1Example23" class="form-control form-control-lg" placeholder="password"/>
            <label class="form-label" for="form1Example23">Password</label>
          </div>

          <div class="d-flex justify-content-around align-items-center mb-4 btn btn-ouline-primary bordered">
            
          <a href="Studentsignup.jsp" class="text-dark" style="font-weight:bold;">Sign Up</a>
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
 		ResultSet rs=st.executeQuery("Select * from STUDENT where email='"+email+"' and password='"+pass+"'"); 
 		if(rs.next()){
 			session.setAttribute("user_id", rs.getInt(1));
 			response.sendRedirect("StudentDashboard.jsp");
 		} 
		else{ 
	 		out.println("<script type=\"text/javascript\">");
			out.println("alert('Emailaddress and password don't match');");
			out.println("location='Adminlogin.jsp");
			out.println("</script>");
 		} 
 	}
 	catch(Exception e){  
 		out.println(e);
	} 
 }
%>
</body>
</html>