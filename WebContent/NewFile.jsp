<%@page import="Controll.Logic"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<%
	String None=request.getParameter("None");
	String category=request.getParameter("category");
	String text=request.getParameter("text");
	String title=request.getParameter("title");
	try {
			Connection con=Logic.conn();
			PreparedStatement ps=con.prepareStatement("insert into "+ category +" (sayari,title) values(?,?);");
		//	ps.setString(1,category);
			ps.setString(1,text);
			ps.setString(2,title);
			ps.executeUpdate();
			out.println("Sayari is successfully inserted!");
			RequestDispatcher req = request.getRequestDispatcher("/LogIn.jsp");
			req.include(request,response);
		
	}
	catch(Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
%>