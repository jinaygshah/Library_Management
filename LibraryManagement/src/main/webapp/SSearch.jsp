<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
try{ 
		String search=request.getParameter("search");
		Class.forName("com.mysql.cj.jdbc.Driver"); 
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/LIBRARY","root","Jinay#0410"); 
		PreparedStatement ps=con.prepareStatement("select * from BOOKS where BOOK_NAME LIKE '%"+search+"%'");
		ResultSet rs = null;
		rs = ps.executeQuery();
		while(rs.next()){
			System.out.println("Data fetched is " +rs.getString(2));
		}
		RequestDispatcher rd=request.getRequestDispatcher("SSearchBooks.jsp");
		rd.forward(request,response);
}
catch(Exception e){
	e.printStackTrace();
}
 %>