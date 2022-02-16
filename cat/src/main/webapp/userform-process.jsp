<%@page import="java.io.*, java.util.*, java.sql.*"%>
<%@page import="javax.servlet.http. *, javax.servlet.*"%>


<%@page import="java.sql.*,java.util.*"%>
<%
String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String email=request.getParameter("email");
String phonenumber=request.getParameter("phonenumber");
String pickup=request.getParameter("pickup");
String droploc=request.getParameter("droploc");
String address=request.getParameter("address");
String pickdate=request.getParameter("pickdate");
String dropdate=request.getParameter("dropdate");
String weight=request.getParameter("weight");
String str="";



try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookings", "root", "83Lm30@#$");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into Book(firstname,lastname,email,phonenumber,pickup,droploc,address,pickdate,dropdate,weight) values('"+firstname+"','"+lastname+"','"+email+"','"+phonenumber+"','"+pickup+"','"+droploc+"','"+address+"','"+pickdate+"','"+dropdate+"','"+weight+"')"); //sql insert query
out.println("sucessfully inserted");
%> <a href="landingpage.html"><button> click here </button></a><%

}
catch(Exception e)
{
	out.println(e);
}
%>
