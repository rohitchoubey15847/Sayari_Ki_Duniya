<%@page import="org.apache.catalina.startup.Catalina"%>
<%@ page import="java.sql.*" %>
<%@page import="Controll.Logic"%>
<%ResultSet resultset =null;%>

<HTML>
<HEAD>
    <TITLE>Select element drop down box</TITLE>
</HEAD>

<BODY BGCOLOR=red>
<form action="test.jsp" method="post">
<%
try{
    	Connection con=Logic.conn();
       Statement statement = con.createStatement() ;
       resultset =statement.executeQuery("select * from sayraikidhuniyatable") ;
%>

<center>
    <h1> Drop down box or select element</h1>
        <select name="category" onchange="this.form.submit();">
         <option >---None---</option>
        <%  while(resultset.next()){
        	String rs=resultset.getString(2).toLowerCase();
        	%>
            <option value="<%=rs%>"><%=rs%></option>
        <% } %>
        </select>
</center>

<%
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
</form>

<%
if(request.getParameter("category")!=null)  {
    try {
    	System.out.println(request.getParameter("category"));
    	Connection con=Logic.conn();
      	 Statement statement = con.createStatement() ;
      	 resultset =statement.executeQuery("select * from " +request.getParameter("category"));	
 		 while(resultset.next()){
	  // "insert into "+ category +" (sayari) values(?);"
%>
<table>
	<tr>
		<h2><th>sayari</th></h2>
	</tr>
	<tr>
		<td><%=resultset.getString("Sayari")%></td>
	</tr>
</table>
<%

   }
    }
 
 catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
}
%>

	
</BODY>
</HTML>