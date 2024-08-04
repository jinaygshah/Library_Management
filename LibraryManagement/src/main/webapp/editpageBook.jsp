<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>


<%
	String id = request.getParameter("id");
	String bname=request.getParameter("bname");
	String aname=request.getParameter("aname"); 
	String pname=request.getParameter("pname");
	String price=request.getParameter("price"); 
  	try{ 
  		Class.forName("com.mysql.cj.jdbc.Driver"); 
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/LIBRARY","root","Jinay#0410"); 
		String sql="Update BOOKS SET BOOK_NAME=?,AUTHOR=?,PUBLISHER=?,PRICE=? where BOOKS_ID="+id;
 		PreparedStatement st=con.prepareStatement(sql); 
 		st.setString(1,bname);
 		st.setString(2,aname);
 		st.setString(3,pname);
 		st.setString(4,price);
 		int i = st.executeUpdate();
//   		int i=0;
		RequestDispatcher rd=request.getRequestDispatcher("AdminBooks.jsp");
		rd.forward(request, response);
		}
	catch(Exception e){
		e.printStackTrace();
	}
%>