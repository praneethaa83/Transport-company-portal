<%@page import="java.io.*, java.util.*, java.sql.*"%>
<%@page import="javax.servlet.http. *, javax.servlet.*"%>


<%@page import="java.sql.*,java.util.*"%>
<%

String name=request.getParameter("name");
String type=request.getParameter("type");
String vehiclenumber=request.getParameter("vehiclenumber");
String place=request.getParameter("place");
String year=request.getParameter("year");


String str="";



try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookings", "root", "83Lm30@#$");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into vehicle(name,type,vehiclenumber,place,year) values('"+name+"','"+type+"','"+vehiclenumber+"','"+place+"','"+year+"')"); //sql insert query
out.println("sucessfully inserted");
%> <a href="index.jsp"><button> click here </button></a><%
}
catch(Exception e)
{
	out.println(e);
}
%>
