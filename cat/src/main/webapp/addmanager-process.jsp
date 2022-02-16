<%@page import="java.io.*, java.util.*, java.sql.*"%>
<%@page import="javax.servlet.http. *, javax.servlet.*"%>


<%@page import="java.sql.*,java.util.*"%>
<%

String name=request.getParameter("name");
String age=request.getParameter("age");
String designation=request.getParameter("designation");
String salary=request.getParameter("salary");
String qualification=request.getParameter("qualification");
String address=request.getParameter("address");
String id=request.getParameter("id");
String number=request.getParameter("number");

String str="";



try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookings", "root", "83Lm30@#$");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into manager(name,age,designation,salary,qualification,address,id,number) values('"+name+"','"+age+"','"+designation+"','"+salary+"','"+qualification+"','"+address+"','"+id+"','"+number+"')"); //sql insert query
out.println("sucessfully inserted");
%> <a href="index.jsp"><button> click here </button></a><%
}
catch(Exception e)
{
	out.println(e);
}
%>
