<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<%
String id = request.getParameter("id");
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/LIBRARY", "root", "Jinay#0410");
	Statement st = conn.createStatement();
	int i = st.executeUpdate("DELETE FROM BOOKS WHERE BOOKS_ID=" + id);
	RequestDispatcher rd=request.getRequestDispatcher("AdminBooks.jsp");
	rd.forward(request, response);

} catch (Exception e) {
	e.printStackTrace();
}
%>