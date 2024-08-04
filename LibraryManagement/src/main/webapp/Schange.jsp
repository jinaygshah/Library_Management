<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String currentPassword=request.getParameter("current");
String Newpass=request.getParameter("new");
String conpass=request.getParameter("confirm");
String connurl = "jdbc:mysql://localhost:3306/LIBRARY";
Connection con=null;
String pass="";
String id="";
try{
Class.forName("com.mysql.cj.jdbc.Driver"); 
con = DriverManager.getConnection(connurl, "root", "Jinay#0410");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from STUDENT where password='"+currentPassword+"'");
while(rs.next()){
id=rs.getString(1);
pass=rs.getString(6);
}
System.out.println(id+ " "+pass);
if(pass.equals(currentPassword)){
Statement st1=con.createStatement();
int i=st1.executeUpdate("update STUDENT set password='"+Newpass+"' where id='"+id+"'");
response.sendRedirect("SChangePassword.jsp");
st1.close();
con.close();
}
else{
out.println("Invalid Current Password");
}
}
catch(Exception e){
out.println(e);
}
%>